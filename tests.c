/*
 Checked C Parson
 Copyright (c) Microsoft Corporation. All rights reserved.
 Portions Copyright (c) 2012 - 2017 Krzysztof Gabis
 https://github.com/kgabis/parson/
 Licensed under the MIT License

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/
#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

#include "parson.h"
#include <stdint.h>
#include <stdio_checked.h>
#include <stdio_tainted.h>
#include <stdlib_checked.h>
#include <string_checked.h>
#include <math_checked.h>
#include <string_tainted.h>
#include <stdlib_tainted.h>

#define TEST(A) printf("%d %-72s-", __LINE__, #A);\
                if(A){puts(" OK");tests_passed++;}\
                else{puts(" FAIL");tests_failed++;}
#define STREQ(A, B) ((A) && (B) ? t_strcmp((A), (B)) == 0 : 0)
#define EPSILON 0.000001

void test_suite_1(void); /* Test 3 files from json.org + serialization*/
void test_suite_2(_TPtr<TJSON_Value> value); /* Test correctness of parsed values */
void test_suite_2_no_comments(void);
void test_suite_2_with_comments(void);
void test_suite_3(void); /* Test parsing valid and invalid strings */
void test_suite_4(void); /* Test deep copy function */
void test_suite_5(void); /* Test building json values from scratch */
void test_suite_6(void); /* Test value comparing verification */
void test_suite_7(void); /* Test schema validation */
void test_suite_8(void); /* Test serialization */
void test_suite_9(void); /* Test serialization (pretty) */
void test_suite_10(void); /* Testing for memory leaks */
void test_suite_11(void); /* Additional things that require testing */

void print_commits_info(_TNt_array_ptr<const char> username, _TNt_array_ptr<const char> repo);
void persistence_example(void);
void serialization_example(void);
_Callback _TPtr<TJSON_Value>       parse_value(_TNt_array_ptr<const char> string, size_t nesting);
static int malloc_count;
//static _TPtr<void> counted_malloc(size_t size);
//static void counted_free(_TPtr<void> ptr);


static char * read_file_test_suite(const char * filename);

static int tests_passed;
static int tests_failed;

_Tainted _TNt_array_ptr<char> string_malloc(size_t sz) : count(sz) _Unchecked{
if(sz >= SIZE_MAX)
return NULL;
_TArray_ptr<char> p : count(sz+1) = (_TArray_ptr<char>)t_malloc<char>(sz + 1);
if (p != NULL)
p[sz] = 0;
return _Tainted_Assume_bounds_cast<_TNt_array_ptr<char>>(p, count(sz));
}

int main() {
    /* Example functions from readme file:      */
    /*  */
    serialization_example();
    persistence_example();
    //json_set_allocation_functions(counted_malloc, counted_free);
    test_suite_1();
    test_suite_2_no_comments();
    test_suite_2_with_comments();
    test_suite_3();
    test_suite_4();
    test_suite_5();
    test_suite_6();
    test_suite_7();
    test_suite_8();
    test_suite_9();
    test_suite_10();
    test_suite_11();
    _TNt_array_ptr<char> name1 = string_malloc(10);
    _TNt_array_ptr<char> name2 = string_malloc(10);
    t_strcpy(name1, "torvalds");
    t_strcpy(name2, "linux");
   // print_commits_info(name1, name2);
    t_free(name1);
    t_free(name2);
    printf("Tests failed: %d\n", tests_failed);
    printf("Tests passed: %d\n", tests_passed);
    return 0;
}

void test_suite_1(void) {
    _TPtr<TJSON_Value> val_tainted = NULL;
    TEST((val_tainted = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt")) != NULL);
    TEST(json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted));
    TEST(json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted));
    if (val_tainted) { json_value_free(val_tainted); }
    TEST((val_tainted = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_2.txt")) == NULL); /* Over 2048 levels of nesting */
    if (val_tainted) { json_value_free(val_tainted); }
    TEST((val_tainted = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt")) != NULL);
    TEST(json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted));
    TEST(json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted));
    if (val_tainted) { json_value_free(val_tainted); }
    TEST((val_tainted = json_parse_file_with_comments("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt", &parse_value)) != NULL);
    TEST(json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted));
    TEST(json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted));
    if (val_tainted) { json_value_free(val_tainted); }
    TEST((val_tainted = json_parse_file_with_comments("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt", &parse_value)) != NULL);
    TEST(json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted));
    TEST(json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted));
    if (val_tainted) { json_value_free(val_tainted); }
}

void test_suite_2(_TPtr<TJSON_Value> root_value) {
    _TPtr<TJSON_Object> root_object = NULL;
    _TPtr<TJSON_Array> array = NULL;
    _TPtr<TJSON_Value> array_value = NULL ;
    size_t i;
    TEST(root_value);
    TEST(json_value_get_type(root_value) == JSONObject);
    root_object = json_value_get_object(root_value);

    _TNt_array_ptr<char> value_type = string_malloc(100*sizeof(char));
    t_strcpy(value_type,"string");
    TEST(json_object_has_value(root_object, value_type));
    t_strcpy(value_type,"_string");
    TEST(!json_object_has_value(root_object, value_type));
    t_strcpy(value_type,"object");
    TEST(json_object_has_value_of_type(root_object, value_type, JSONObject));
    t_strcpy(value_type,"string array");
    TEST(!json_object_has_value_of_type(root_object,value_type, JSONObject));
    t_strcpy(value_type,"string array");
    TEST(json_object_has_value_of_type(root_object,value_type , JSONArray));
    t_strcpy(value_type,"object");
    TEST(!json_object_has_value_of_type(root_object, value_type, JSONArray));
    t_strcpy(value_type,"string");
    TEST(json_object_has_value_of_type(root_object, value_type, JSONString));
    t_strcpy(value_type,"positive one");
    TEST(!json_object_has_value_of_type(root_object, value_type, JSONString));
    t_strcpy(value_type,"positive one");
    TEST(json_object_has_value_of_type(root_object, value_type, JSONNumber));
    t_strcpy(value_type,"string");
    TEST(!json_object_has_value_of_type(root_object, value_type, JSONNumber));
    t_strcpy(value_type,"boolean true");
    TEST(json_object_has_value_of_type(root_object, value_type, JSONBoolean));
    t_strcpy(value_type,"positive one");
    TEST(!json_object_has_value_of_type(root_object, value_type, JSONBoolean));
    t_strcpy(value_type,"null");
    TEST(json_object_has_value_of_type(root_object, value_type, JSONNull));
    t_strcpy(value_type,"object");
    TEST(!json_object_has_value_of_type(root_object, value_type, JSONNull));

    t_strcpy(value_type,"object.nested array");
    TEST(json_object_dothas_value(root_object, value_type));
    t_strcpy(value_type,"_object.nested array");
    TEST(!json_object_dothas_value(root_object, value_type));
    t_strcpy(value_type,"object.nested object");
    TEST(json_object_dothas_value_of_type(root_object, value_type, JSONObject));
    t_strcpy(value_type,"object.nested array");
    TEST(!json_object_dothas_value_of_type(root_object, value_type, JSONObject));
    t_strcpy(value_type,"object.nested array");
    TEST(json_object_dothas_value_of_type(root_object, value_type, JSONArray));
    t_strcpy(value_type,"object.nested object");
    TEST(!json_object_dothas_value_of_type(root_object, value_type, JSONArray));
    t_strcpy(value_type,"object.nested string");
    TEST(json_object_dothas_value_of_type(root_object, value_type, JSONString));
    t_strcpy(value_type,"object.nested number");
    TEST(!json_object_dothas_value_of_type(root_object, value_type, JSONString));
    t_strcpy(value_type,"object.nested number");
    TEST(json_object_dothas_value_of_type(root_object, value_type, JSONNumber));
    t_strcpy(value_type,"_object.nested whatever");
    TEST(!json_object_dothas_value_of_type(root_object, value_type, JSONNumber));
    t_strcpy(value_type,"object.nested true");
    TEST(json_object_dothas_value_of_type(root_object, value_type, JSONBoolean));
    t_strcpy(value_type,"object.nested number");
    TEST(!json_object_dothas_value_of_type(root_object, value_type, JSONBoolean));
    t_strcpy(value_type,"object.nested null");
    TEST(json_object_dothas_value_of_type(root_object, value_type, JSONNull));
    t_strcpy(value_type,"object.nested object");
    TEST(!json_object_dothas_value_of_type(root_object, value_type, JSONNull));
    t_strcpy(value_type,"string");
    TEST(STREQ(json_object_get_string(root_object, value_type), "lorem ipsum"));
    t_strcpy(value_type,"utf string");
    TEST(STREQ(json_object_get_string(root_object, value_type), "lorem ipsum"));
    t_strcpy(value_type,"utf-8 string");
    TEST(STREQ(json_object_get_string(root_object, value_type), "あいうえお"));
    t_strcpy(value_type, "surrogate string");
    TEST(STREQ(json_object_get_string(root_object,value_type), "lorem𝄞ipsum𝍧lorem"));

    t_strcpy(value_type,"positive one");
    TEST(json_object_get_number(root_object, value_type) == 1.0);
    t_strcpy(value_type,"negative one");
    TEST(json_object_get_number(root_object, value_type) == -1.0);
    t_strcpy(value_type,"hard to parse number");
    TEST(fabs(json_object_get_number(root_object, value_type) - (-0.000314)) < EPSILON);
    t_strcpy(value_type,"boolean true");
    TEST(json_object_get_boolean(root_object, value_type) == 1);
    t_strcpy(value_type,"boolean false");
    TEST(json_object_get_boolean(root_object, value_type) == 0);
    t_strcpy(value_type,"null");
    TEST(json_value_get_type(json_object_get_value(root_object, value_type)) == JSONNull);

    t_strcpy(value_type,"string array");
    array = json_object_get_array(root_object, value_type);
    if (array != NULL && json_array_get_count(array) > 1) {
        TEST(STREQ(json_array_get_string(array, 0), "lorem"));
        TEST(STREQ(json_array_get_string(array, 1), "ipsum"));
    } else {
        tests_failed++;
    }

    t_strcpy(value_type,"x^2 array");
    array = json_object_get_array(root_object, value_type);
    if (array != NULL) {
        for (i = 0; i < json_array_get_count(array); i++) {
            TEST(json_array_get_number(array, i) == (i * i));
        }
    } else {
        tests_failed++;
    }
    t_strcpy(value_type,"non existent array");
    TEST(json_object_get_array(root_object, value_type) == NULL);
    t_strcpy(value_type,"object.nested string");
    TEST(STREQ(json_object_dotget_string(root_object, value_type), "str"));
    t_strcpy(value_type,"object.nested true");
    TEST(json_object_dotget_boolean(root_object, value_type) == 1);
    t_strcpy(value_type,"object.nested false");
    TEST(json_object_dotget_boolean(root_object, value_type) == 0);
    t_strcpy(value_type,"object.nested null");
    TEST(json_object_dotget_value(root_object, value_type) != NULL);
    t_strcpy(value_type,"object.nested number");
    TEST(json_object_dotget_number(root_object, value_type) == 123);

    t_strcpy(value_type,"should.be.null");
    TEST(json_object_dotget_value(root_object, value_type) == NULL);
    t_strcpy(value_type,"should.be.null.");
    TEST(json_object_dotget_value(root_object, value_type) == NULL);
    t_strcpy(value_type,".");
    TEST(json_object_dotget_value(root_object, value_type) == NULL);
    t_strcpy(value_type,"");
    TEST(json_object_dotget_value(root_object, value_type) == NULL);

    t_strcpy(value_type,"object.nested array");
    array = json_object_dotget_array(root_object, value_type);
    TEST(array != NULL);
    TEST(json_array_get_count(array) > 1);
    if (array != NULL && json_array_get_count(array) > 1) {
        t_strcpy(value_type,"lorem");
        TEST(STREQ(json_array_get_string(array, 0), value_type));
        t_strcpy(value_type,"ipsum");
        TEST(STREQ(json_array_get_string(array, 1), value_type));
    }
    t_strcpy(value_type,"object.nested true");
    TEST(json_object_dotget_boolean(root_object, value_type) == 1);

    t_strcpy(value_type,"/**/");
    TEST(STREQ(json_object_get_string(root_object, value_type), "comment"));
    t_strcpy(value_type,"//");
    TEST(STREQ(json_object_get_string(root_object, value_type), "comment"));
    t_strcpy(value_type,"url");
    TEST(STREQ(json_object_get_string(root_object, value_type), "https://www.example.com/search?q=12345"));
    t_strcpy(value_type,"escaped chars");
    TEST(STREQ(json_object_get_string(root_object, value_type), "\" \\ /"));
    t_strcpy(value_type,"empty object");
    TEST(json_object_get_object(root_object, value_type) != NULL);
    t_strcpy(value_type,"empty array");
    TEST(json_object_get_array(root_object, value_type) != NULL);
    TEST(json_object_get_wrapping_value(root_object) == root_value);
    t_strcpy(value_type,"string array");
    array = json_object_get_array(root_object, value_type);
    t_strcpy(value_type,"string array");
    array_value = json_object_get_value(root_object, value_type);
    TEST(json_array_get_wrapping_value(array) == array_value);
    TEST(json_value_get_parent(array_value) == root_value);
    TEST(json_value_get_parent(root_value) == NULL);
}
void test_suite_2_no_comments(void) {
    _TPtr<TJSON_Value> val_tainted = NULL;
    _TNt_array_ptr<char> filename = string_malloc(100*sizeof(char));

    t_strcpy(filename,"/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    _TPtr<TJSON_Value> root_value = NULL;
    root_value = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    test_suite_2(root_value);
    TEST(json_value_equals(root_value, json_parse_string(json_serialize_to_string(root_value))));
    TEST(json_value_equals(root_value, json_parse_string(json_serialize_to_string_pretty(root_value))));
    json_value_free(root_value);
}

void test_suite_2_with_comments(void) {
    _TPtr<TJSON_Value> val_tainted = NULL;
    _TNt_array_ptr<char> filename = string_malloc(100*sizeof(char));
    t_strcpy(filename,"/home/twinturbo/Desktop/checkedc-parson/tests/test_2_comments.txt");
    _TPtr<TJSON_Value> root_value = NULL;
    root_value = json_parse_file_with_comments("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_comments.txt", &parse_value);
    test_suite_2(root_value);
    TEST(json_value_equals(root_value, json_parse_string(json_serialize_to_string(root_value))));
    TEST(json_value_equals(root_value, json_parse_string(json_serialize_to_string_pretty(root_value))));
    json_value_free(root_value);
    t_free(filename);
    json_value_free(root_value);
}

void test_suite_3(void) {
    _TPtr<TJSON_Value> val_tainted = NULL;
    _TNt_array_ptr<char> filename = string_malloc(100*sizeof(char));

    puts("Testing valid strings:");
    t_strcpy(filename,"{\"lorem\":\"ipsum\"}");
    TEST(json_parse_string(filename) != NULL);
    t_strcpy(filename,"[\"lorem\"]");
    TEST(json_parse_string(filename) != NULL);
    t_strcpy(filename,"null");
    TEST(json_parse_string(filename) != NULL);
    t_strcpy(filename,"true");
    TEST(json_parse_string(filename) != NULL);
    t_strcpy(filename,"false");
    TEST(json_parse_string(filename) != NULL);
    t_strcpy(filename,"\"string\"");
    TEST(json_parse_string(filename) != NULL);
    t_strcpy(filename,"123");
    TEST(json_parse_string(filename) != NULL);

    puts("Test UTF-16 parsing:");
    t_strcpy(filename,"\"\\u0024x\"");
    _TNt_array_ptr<const char> temp_string = json_string(json_parse_string(filename));
    TEST(STREQ(temp_string, "$x"));
    t_strcpy(filename,"\"\\u00A2x\"");
    temp_string = json_string(json_parse_string(filename));
    TEST(STREQ(temp_string, "¢x"));
    t_strcpy(filename,"\"\\u20ACx\"");
    temp_string = json_string(json_parse_string(filename));
    TEST(STREQ(temp_string, "€x"));
    t_strcpy(filename,"\"\\uD801\\uDC37x\"");
    temp_string = json_string(json_parse_string(filename));
    TEST(STREQ(temp_string, "𐐷x"));

    puts("Testing invalid strings:");
    malloc_count = 0;
    TEST(json_parse_string(NULL) == NULL);
    t_strcpy(filename,"");
    TEST(json_parse_string(filename) == NULL); /* empty string */
    t_strcpy(filename,"[\"lorem\",]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{\"lorem\":\"ipsum\",}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{lorem:ipsum}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[,]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[,");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{\"a\":0,\"a\":0}");
    TEST(json_parse_string(filename) == NULL); /* duplicate keys */
    t_strcpy(filename,"{:,}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{,}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{,");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{:");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"x");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{:\"no name\"}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[,\"no first value\"]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{\"key\"\"value\"}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"{\"a\"}");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[\"\\u00zz\"]");
    TEST(json_parse_string(filename) == NULL); /* invalid utf value */
    t_strcpy(filename,"[\"\\u00\"]");
    TEST(json_parse_string(filename) == NULL); /* invalid utf value */
    t_strcpy(filename,"[\"\\u\"]");
    TEST(json_parse_string(filename) == NULL); /* invalid utf value */
    t_strcpy(filename,"[\"\\\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\"\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\0\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\a\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\b\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\t\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\n\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\f\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[\"\r\"]");
    TEST(json_parse_string(filename) == NULL); /* control character */
    t_strcpy(filename,"[0x2]");
    TEST(json_parse_string(filename) == NULL);    /* hex */
    t_strcpy(filename,"[0X2]");
    TEST(json_parse_string(filename) == NULL);    /* HEX */
    t_strcpy(filename,"[07]");
    TEST(json_parse_string(filename) == NULL);     /* octals */
    t_strcpy(filename,"[0070]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[07.0]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[-07]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[-007]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[-07.0]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[\"\\uDF67\\uD834\"]");
    TEST(json_parse_string(filename) == NULL); /* wrong order surrogate pair */
    t_strcpy(filename,"[1.7976931348623157e309]");
    TEST(json_parse_string(filename) == NULL);
    t_strcpy(filename,"[-1.7976931348623157e309]");
    TEST(json_parse_string(filename) == NULL);
    TEST(malloc_count == 0);
    t_free(temp_string);
    t_free(filename);
}
void test_suite_4() {
    _TPtr<TJSON_Value> val_tainted = NULL;
    _TNt_array_ptr<char> filename = string_malloc(100*sizeof(char));
    t_strcpy(filename,"/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    _TPtr<TJSON_Value> a = NULL, a_copy = NULL;
    t_printf("Testing %s:\n", filename);
    a = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    int res = json_value_equals(a, a);
    TEST(res); /* test equality test */
    a_copy = json_value_deep_copy(a);
    TEST(a_copy != NULL);
    TEST(json_value_equals(a, a_copy));
    json_value_free(a_copy);
}
void test_suite_5(void) {
    double zero = 0.0; /* msvc is silly (workaround for error C2124) */
    _TNt_array_ptr<char> filename = string_malloc(100*sizeof(char));
    t_strcpy(filename,"/home/twinturbo/Desktop/checkedc-parson/tests/test_5.txt");
    _TPtr<TJSON_Value> val_from_file = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_5.txt");
    _TPtr<TJSON_Value> val = NULL;
    _TPtr<TJSON_Value> val_parent = NULL;
    _TPtr<TJSON_Object> obj = NULL;
    _TPtr<TJSON_Array> interests_arr = NULL;

    _TPtr<TJSON_Value> remove_test_val = NULL;
    _TPtr<TJSON_Array> remove_test_arr = NULL;

    val = json_value_init_object();
    TEST(val != NULL);

    obj = json_value_get_object(val);
    TEST(obj != NULL);

    _TNt_array_ptr<char> string_1 = string_malloc(100*sizeof(char));
    _TNt_array_ptr<char> string_2 = string_malloc(100*sizeof(char));
    t_strcpy(string_1,"first");
    t_strcpy(string_2,"John");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"last");
    t_strcpy(string_2,"Doe");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"age");
    TEST(json_object_set_number(obj, string_1, 25) == JSONSuccess);
    t_strcpy(string_1,"registered");
    TEST(json_object_set_boolean(obj, string_1, 1) == JSONSuccess);
    t_strcpy(string_1,"interests");
    TEST(json_object_set_value(obj, string_1, json_value_init_array()) == JSONSuccess);
    interests_arr = json_object_get_array(obj, string_1);
    TEST(interests_arr != NULL);
    t_strcpy(string_1,"Writing");
    TEST(json_array_append_string(interests_arr, string_1) == JSONSuccess);
    t_strcpy(string_1,"Mountain Biking");
    TEST(json_array_append_string(interests_arr, string_1) == JSONSuccess);
    t_strcpy(string_1,"Reading");
    TEST(json_array_replace_string(interests_arr, 0, string_1) == JSONSuccess);
    t_strcpy(string_1,"favorites.color");
    t_strcpy(string_2,"blue");
    TEST(json_object_dotset_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"favorites.sport");
    t_strcpy(string_2,"running");
    TEST(json_object_dotset_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"favorites.fruit");
    t_strcpy(string_2,"apple");
    TEST(json_object_dotset_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"favorites.fruit");
    TEST(json_object_dotremove(obj, string_1) == JSONSuccess);
    t_strcpy(string_1,"utf string");
    t_strcpy(string_2,"lorem ipsum");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"utf-8 string");
    t_strcpy(string_2,"あいうえお");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"surrogate string");
    t_strcpy(string_2,"lorem𝄞ipsum𝍧lorem");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"windows path");
    t_strcpy(string_2,"C:\\Windows\\Path");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    TEST(json_value_equals(val_from_file, val));

    t_strcpy(string_1,"");
    TEST(json_object_set_string(obj, NULL, string_1) == JSONFailure);
    t_strcpy(string_1,"last");
    TEST(json_object_set_string(obj, string_1, NULL) == JSONFailure);
    TEST(json_object_set_string(obj, NULL, NULL) == JSONFailure);
    TEST(json_object_set_value(obj, NULL, NULL) == JSONFailure);

    t_strcpy(string_1,"");
    TEST(json_object_dotset_string(obj, NULL, string_1) == JSONFailure);
    t_strcpy(string_1,"favorites.color");
    TEST(json_object_dotset_string(obj, string_1, NULL) == JSONFailure);
    TEST(json_object_dotset_string(obj, NULL, NULL) == JSONFailure);
    TEST(json_object_dotset_value(obj, NULL, NULL) == JSONFailure);

    t_strcpy(string_1,"lorem");
    TEST(json_array_append_string(NULL, string_1) == JSONFailure);
    TEST(json_array_append_value(interests_arr, NULL) == JSONFailure);
    TEST(json_array_append_value(NULL, NULL) == JSONFailure);
    TEST(json_array_replace_value(interests_arr, 0, NULL) == JSONFailure);
    t_strcpy(string_1,"lorem");
    TEST(json_array_replace_string(NULL, 0, string_1) == JSONFailure);
    t_strcpy(string_1,"not existing");
    TEST(json_array_replace_string(interests_arr, 100, string_1) == JSONFailure);
    t_strcpy(string_1,"interests");
    TEST(json_array_append_string(json_object_get_array(obj, string_1), NULL) == JSONFailure);

    t_strcpy(string_1,"Writing");
    TEST(json_array_append_string(interests_arr, string_1) == JSONSuccess);
    TEST(json_array_remove(interests_arr, 0) == JSONSuccess);
    TEST(json_array_remove(interests_arr, 1) == JSONSuccess);
    TEST(json_array_remove(interests_arr, 0) == JSONSuccess);
    TEST(json_array_remove(interests_arr, 0) == JSONFailure); /* should be empty by now */

    val_parent = json_value_init_null();
    t_strcpy(string_1,"x");
    TEST(json_object_set_value(obj, string_1, val_parent) == JSONSuccess);
    TEST(json_object_set_value(obj, string_1, val_parent) == JSONFailure);

    val_parent = json_value_init_null();
    TEST(json_array_append_value(interests_arr, val_parent) == JSONSuccess);
    TEST(json_array_append_value(interests_arr, val_parent) == JSONFailure);

    val_parent = json_value_init_null();
    TEST(json_array_replace_value(interests_arr, 0, val_parent) == JSONSuccess);
    TEST(json_array_replace_value(interests_arr, 0, val_parent) == JSONFailure);

    t_strcpy(string_1, "interests");
    TEST(json_object_remove(obj,string_1) == JSONSuccess);

    /* UTF-8 tests */
    t_strcpy(string_1, "correct string");
    t_strcpy(string_2, "κόσμε");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);

    t_strcpy(string_1, "boundary 1");
    t_strcpy(string_2, "\xed\x9f\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1, "boundary 2");
    t_strcpy(string_2, "\xee\x80\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"boundary 3");
    t_strcpy(string_2, "\xef\xbf\xbd");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);
    t_strcpy(string_1,"boundary 4");
    t_strcpy(string_2, "\xf4\x8f\xbf\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONSuccess);

    t_strcpy(string_1,"first continuation byte");
    t_strcpy(string_2, "\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"last continuation byte");
    t_strcpy(string_2, "\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);

    t_strcpy(string_1,"impossible sequence 1");
    t_strcpy(string_2, "\xfe");

    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"impossible sequence 2");
    t_strcpy(string_2, "\xff");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"impossible sequence 3");
    t_strcpy(string_2, "\xfe\xfe\xff\xff");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);

    t_strcpy(string_1,"overlong 1");
    t_strcpy(string_2, "\xc0\xaf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong 2");
    t_strcpy(string_2, "\xc1\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong 3");
    t_strcpy(string_2, "\xe0\x80\xaf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong 4");
    t_strcpy(string_2, "\xe0\x9f\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong 5");
    t_strcpy(string_2, "\xf0\x80\x80\xaf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong 6");
    t_strcpy(string_2, "\xf0\x8f\xbf\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong 7");
    t_strcpy(string_2, "\xf0\x8f\xbf\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);

    t_strcpy(string_1,"overlong null 1");
    t_strcpy(string_2, "\xc0\x80");

    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong null 2");
    t_strcpy(string_2, "\xe0\x80\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong null 3");
    t_strcpy(string_2, "\xf0\x80\x80\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong null 4");
    t_strcpy(string_2, "\xf8\x80\x80\x80\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"overlong null 5");
    t_strcpy(string_2, "\xfc\x80\x80\x80\x80\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);

    t_strcpy(string_1,"single surrogate 1");
    t_strcpy(string_2, "\xed\xa0\x80");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"single surrogate 2");
    t_strcpy(string_2, "\xed\xaf\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);
    t_strcpy(string_1,"single surrogate 3");
    t_strcpy(string_2, "\xed\xbf\xbf");
    TEST(json_object_set_string(obj, string_1, string_2) == JSONFailure);

    /* Testing removing values from array, order of the elements should be preserved */
    t_strcpy(string_1,"[1, 2, 3, 4, 5]");
    remove_test_val = json_parse_string(string_1);
    remove_test_arr = json_array(remove_test_val);
    json_array_remove(remove_test_arr, 2);
    t_strcpy(string_1,"[1, 2, 4, 5]");
    TEST(json_value_equals(remove_test_val, json_parse_string(string_1)));
    json_array_remove(remove_test_arr, 0);
    t_strcpy(string_1,"[2, 4, 5]");
    TEST(json_value_equals(remove_test_val, json_parse_string(string_1)));
    json_array_remove(remove_test_arr, 2);
    t_strcpy(string_1,"[2, 4]");
    TEST(json_value_equals(remove_test_val, json_parse_string(string_1)));

    /* Testing nan and inf */
    t_strcpy(string_1,"num");
    TEST(json_object_set_number(obj, string_1, 0.0 / zero) == JSONFailure);
    t_strcpy(string_1,"num");
    TEST(json_object_set_number(obj,string_1 , 1.0 / zero) == JSONFailure);
    t_free(string_1);
    t_free(string_2);
}
void test_suite_6(void) {
    _TPtr<TJSON_Value> a = NULL;
    _TPtr<TJSON_Value> b = NULL;
    a = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    b = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    TEST(json_value_equals(a, b));
    _TNt_array_ptr<char> string_1 = string_malloc(100*sizeof(char));
    _TNt_array_ptr<char> string_2 = string_malloc(100*sizeof(char));
    t_strcpy(string_1,"string");
    t_strcpy(string_2,"eki");
    json_object_set_string(json_object(a), string_1, string_2);
    TEST(!json_value_equals(a, b));
    a = json_value_deep_copy(b);
    TEST(json_value_equals(a, b));
    t_strcpy(string_1,"string array");
    json_array_append_number(json_object_get_array(json_object(b), string_1), 1337);
    TEST(!json_value_equals(a, b));
    t_free(string_1);
    t_free(string_2);
}
void test_suite_7(void) {
    _TPtr<TJSON_Value> val_from_file = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_5.txt");
    _TPtr<TJSON_Value> schema = json_value_init_object();
    _TPtr<TJSON_Object> schema_obj = json_value_get_object(schema);
    _TPtr<TJSON_Array> interests_arr = NULL;
    _TNt_array_ptr<char> string_1 = string_malloc(100*sizeof(char));
    _TNt_array_ptr<char> string_2 = string_malloc(100*sizeof(char));
    t_strcpy(string_1,"first");
    t_strcpy(string_2,"");
    json_object_set_string(schema_obj, string_1, string_2);
    t_strcpy(string_1,"last");
    t_strcpy(string_2,"");
    json_object_set_string(schema_obj, string_1, string_2);
    t_strcpy(string_1,"age");
    json_object_set_number(schema_obj, string_1, 0);
    t_strcpy(string_1,"interests");
    json_object_set_value(schema_obj, string_1, json_value_init_array());
    interests_arr = json_object_get_array(schema_obj, string_1);
    t_strcpy(string_2,"");
    json_array_append_string(interests_arr, string_2);
    t_strcpy(string_2,"favorites");
    json_object_set_null(schema_obj, string_2);
    TEST(json_validate(schema, val_from_file) == JSONSuccess);
    t_strcpy(string_1,"age");
    t_strcpy(string_2,"");
    json_object_set_string(schema_obj, string_1, string_2);
    TEST(json_validate(schema, val_from_file) == JSONFailure);
    t_free(string_1);
    t_free(string_2);
}

void test_suite_8(void) {
    _TPtr<TJSON_Value> a = NULL;
    _TPtr<TJSON_Value> b = NULL;
    _TNt_array_ptr<char> buf = NULL;
    size_t serialization_size = 0;
    a = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    TEST(json_serialize_to_file(a, "/home/twinturbo/Desktop/checkedc-parson/tests/test_2_serialized.txt") == JSONSuccess);
    b = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_serialized.txt");
    TEST(json_value_equals(a, b));
    remove("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_serialized.txt");
    serialization_size = json_serialization_size(a);
    buf = json_serialize_to_string(a);
    long buf_len = t_strlen(buf);
    const char* checkedBuf = (const char*)malloc(buf_len*sizeof(char));
    t_strcpy(checkedBuf, buf);
    TEST((strlen(checkedBuf)+1) == serialization_size);
}

void test_suite_9(void) {
    char* file_contents = NULL;
    _TNt_array_ptr<char> serialized = NULL;
    _TPtr<TJSON_Value> a = NULL;
    _TPtr<TJSON_Value> b = NULL;
    size_t serialization_size = 0;
    a = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_pretty.txt");
    TEST(json_serialize_to_file_pretty(a, "/home/twinturbo/Desktop/checkedc-parson/tests/test_2_serialized_pretty.txt") == JSONSuccess);
    b = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_serialized_pretty.txt");
    TEST(json_value_equals(a, b));
    remove("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_serialized_pretty.txt");
    serialization_size = json_serialization_size_pretty(a);
    serialized = json_serialize_to_string_pretty(a);
    TEST((t_strlen(serialized)+1) == serialization_size);

    file_contents = read_file_test_suite("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_pretty.txt");
    t_printf("The value is %d\n", t_strcmp(file_contents, serialized));
    TEST(STREQ(file_contents, serialized));
}
//
void test_suite_10(void) {
    _TPtr<TJSON_Value> val = NULL;
    _TNt_array_ptr<char> serialized = NULL;

    malloc_count = 0;

    val = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt");
    json_value_free(val);

    val = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt");
    json_value_free(val);

    val = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt");
    serialized = json_serialize_to_string_pretty(val);
    json_free_serialized_string(serialized);
    json_value_free(val);

    val = json_parse_file("/home/twinturbo/Desktop/checkedc-parson/tests/test_2_pretty.txt");
    json_value_free(val);

    TEST(malloc_count == 0);
}
//
void test_suite_11() {
    _TNt_array_ptr<char> array_with_slashes = string_malloc(100*sizeof(char));
    _TNt_array_ptr<char> array_with_escaped_slashes = string_malloc(100*sizeof(char));
    t_strcpy(array_with_slashes, "[\"a/b/c\"]");
    t_strcpy(array_with_escaped_slashes, "[\"a\\/b\\/c\"]");
    _TNt_array_ptr<char> serialized = NULL;
    /*
     * json parse string must not eat away the string
     */
    _TPtr<TJSON_Value> value = json_parse_string(array_with_slashes);

    serialized = json_serialize_to_string(value);
    TEST(t_strcmp(array_with_escaped_slashes, serialized) == 0);

    json_set_escape_slashes(0);
    serialized = json_serialize_to_string(value);
    TEST(t_strcmp(array_with_slashes, serialized) == 0);

    json_set_escape_slashes(1);
    serialized = json_serialize_to_string(value);
    TEST(t_strcmp(array_with_escaped_slashes, serialized) == 0);
}

void print_commits_info(_TNt_array_ptr<const char> username, _TNt_array_ptr<const char> repo) {
    _TPtr<TJSON_Value> root_value = NULL;
    _TPtr<TJSON_Array> commits = NULL;
    _TPtr<TJSON_Object> commit = NULL;
    size_t i;

    _TNt_array_ptr<char> curl_command = string_malloc (512*sizeof(char));
    _TNt_array_ptr<char>  cleanup_command  = string_malloc (256*sizeof(char));
    _TNt_array_ptr<char>  output_filename = string_malloc (10*sizeof(char));
    t_strcpy(output_filename, "commits.json");

    /* it ain't pretty, but it's not a libcurl tutorial */
    t_sprintf(curl_command,
        "curl -s \"https://api.github.com/repos/%s/%s/commits\" > %s",
        username, repo, output_filename);
    t_sprintf(cleanup_command, "rm -f %s", output_filename);
    t_system(curl_command);

    /* parsing json and validating output */
    _TNt_array_ptr<char> filename = string_malloc(100*sizeof(char));
    t_strcpy(filename,output_filename);

    root_value = json_parse_file("commits.json");
    if (json_value_get_type(root_value) != JSONArray) {
        t_system(cleanup_command);
        return;
    }

    /* getting array from root value and printing commit info */
    commits = json_value_get_array(root_value);
    printf("%-10.10s %-10.10s %s\n", "Date", "SHA", "Author");
    for (i = 0; i < json_array_get_count(commits); i++) {
        commit = json_array_get_object(commits, i);
        _TNt_array_ptr<char> string_1 = string_malloc(100*sizeof(char));
        t_strcpy(string_1,"commit.author.date");
        _TNt_array_ptr<char> string_2 = string_malloc(100*sizeof(char));
        t_strcpy(string_2,"sha");
        _TNt_array_ptr<char> string_3 = string_malloc(100*sizeof(char));
        t_strcpy(string_3, "commit.author.name");

        printf("%.10s %.10s %s\n",
               json_object_dotget_string(commit, string_1),
               json_object_get_string(commit, string_2),
               json_object_dotget_string(commit,string_3));
    }

    /* cleanup code */
    json_value_free(root_value);
    t_system(cleanup_command);
}

void persistence_example(void) {
    _TNt_array_ptr<char> str1 = string_malloc(100*sizeof(char));
    t_strcpy(str1,"{\"name\":\"\"}");
    _TPtr<TJSON_Value> schema = json_parse_string(str1);
    _TPtr<TJSON_Value> user_data = json_parse_file("user_data.json");
    _TNt_array_ptr<char> buf = string_malloc(256*sizeof(char));
    _TNt_array_ptr<const char> name = NULL;
    if (user_data == NULL || json_validate(schema, user_data) != JSONSuccess) {
        puts("Enter your name:");
        t_scanf("%s", buf);
        user_data = json_value_init_object();
        t_strcpy(str1,"name");
        json_object_set_string(json_object(user_data), str1, buf);
        json_serialize_to_file(user_data,"user_data.json" );
    }
    t_strcpy(str1,"name");
    name = json_object_get_string(json_object(user_data), str1);
    t_printf("Hello, %s.", name);
    json_value_free(schema);
    json_value_free(user_data);
    return;
}

void serialization_example(void) {
    _TPtr<TJSON_Value> root_value = json_value_init_object();
    _TPtr<TJSON_Object> root_object = json_value_get_object(root_value);
    _TNt_array_ptr<char> serialized_string = NULL;
    _TNt_array_ptr<char> string_1 = string_malloc(100*sizeof(char));
        t_strcpy(string_1,"name");
        _TNt_array_ptr<char> string_2 = string_malloc(100*sizeof(char));
        t_strcpy(string_2,"John Smith");
    json_object_set_string(root_object, string_1, string_2);
    t_strcpy(string_1,"age");
    json_object_set_number(root_object, string_1, 25);
    t_strcpy(string_1, "address.city");
    t_strcpy(string_2, "Cupertino");
    json_object_dotset_string(root_object, string_1, string_2);
    t_strcpy(string_1, "contact.emails");
    t_strcpy(string_2, "[\"email@example.com\", \"email2@example.com\"]");
    json_object_dotset_value(root_object,string_1,
                             json_parse_string(string_2));
    serialized_string = json_serialize_to_string_pretty(root_value);
    t_puts(serialized_string);
    json_free_serialized_string(serialized_string);
    json_value_free(root_value);
    t_free(string_1);
    t_free(string_2);
}

static char * read_file_test_suite(const char * filename) {
    FILE *fp = fopen(filename, "r");
    size_t size_to_read = 0;
    size_t size_read = 0;
    long pos;
    char *file_contents;
    if (!fp) {
        return NULL;
    }
    fseek(fp, 0L, SEEK_END);
    pos = ftell(fp);
    if (pos < 0) {
        fclose(fp);
        return NULL;
    }
    size_to_read = pos;
    rewind(fp);
    file_contents = (char*)malloc(sizeof(char) * (size_to_read + 1));
    if (!file_contents) {
        fclose(fp);
        return NULL;
    }
    size_read = fread(file_contents, 1, size_to_read, fp);
    if (size_read == 0 || ferror(fp)) {
        fclose(fp);
        free(file_contents);
        return NULL;
    }
    fclose(fp);
    file_contents[size_read] = '\0';
    return file_contents;
}

static _TArray_ptr<void> counted_malloc(size_t size) {
    _TArray_ptr<void> res = (_TArray_ptr<void> )t_malloc<void>(size);
    if (res != NULL) {
        malloc_count++;
    }
    return res;
}

static void counted_free(_TPtr<void>ptr) {
    if (ptr != NULL) {
        malloc_count--;
    }
    t_free(ptr);
}

