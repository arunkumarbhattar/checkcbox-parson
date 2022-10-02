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

#ifndef parson_parson_h
#define parson_parson_h

#ifdef __cplusplus
extern "C"
{
#endif

#pragma CHECKED_SCOPE push
#pragma CHECKED_SCOPE on

#include <stddef.h>   /* size_t */

/* Types and enums */
typedef struct json_object_t JSON_Object;
typedef struct json_array_t  JSON_Array;
typedef struct json_value_t  JSON_Value;

/* Tstruct versions*/
typedef _Tainted Tstruct json_object_t_t TJSON_Object;
typedef _Tainted Tstruct json_array_t_t  TJSON_Array;
typedef _Tainted Tstruct json_value_t_t  TJSON_Value;

_Tainted const enum json_value_type {
    JSONError   = -1,
    JSONNull    = 1,
    JSONString  = 2,
    JSONNumber  = 3,
    JSONObject  = 4,
    JSONArray   = 5,
    JSONBoolean = 6
};
typedef int JSON_Value_Type;

_Tainted const enum json_result_t {
    JSONSuccess = 0,
    JSONFailure = -1
};
typedef int JSON_Status;

_Tainted int verify_utf8_sequence(_TNt_array_ptr<const unsigned char> s, _TPtr<int> len); // len is set after, not a constraint on string
_Tainted JSON_Status       json_object_resize(_TPtr<TJSON_Object> object, size_t new_capacity);
_Tainted _TNt_array_ptr<char> get_quoted_string(_TNt_array_ptr<const char> string,
_TPtr<_TNt_array_ptr<char>(_TNt_array_ptr<const char> input : count(len), size_t len)> process_string);
_Tainted int _Unchecked parse_utf16(_TNt_array_ptr<const char> unprocessed, _TNt_array_ptr<char> processed);
_Tainted JSON_Status       json_object_remove_internal(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, int free_value);
_Tainted JSON_Status       json_object_dotremove_internal(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, int free_value);
/* JSON Value */
static _TPtr<TJSON_Value> json_value_init_string_no_copy(_TNt_array_ptr<char> string);
_Tainted JSON_Status       json_object_addn(_TPtr<TJSON_Object> object,
_TNt_array_ptr<const char> name : count(name_len),
        size_t name_len,
_TPtr<TJSON_Value> value);
_Tainted _Unchecked _TPtr<TJSON_Value> parse_number_value(_TNt_array_ptr<const char> string);
_Tainted _TPtr<TJSON_Value> parse_string_value(_TNt_array_ptr<const char> string,
_TPtr<_TNt_array_ptr<char>(_TNt_array_ptr<const char> input : count(len),
        size_t len)> process_string);
static _TPtr<TJSON_Value>       parse_boolean_value(_TNt_array_ptr<const char> string);
_Tainted _TNt_array_ptr<char> string_tainted_malloc(size_t sz) : count(sz);
/* Call only once, before calling any other function from parson API. If not called, malloc and free
   from stdlib will be used for all allocations */
_Itype_for_any(T)  void json_set_allocation_functions(_TPtr<_TPtr<T>(size_t s)>malloc_fun,
                                   _TPtr< void (_TPtr<T>)> free_fun);
/* Sets if slashes should be escaped or not when serializing JSON. By default slashes are escaped.
 This function sets a global setting and is not thread safe. */
void json_set_escape_slashes(int escape_slashes);

/* Parses first JSON value in a file, returns NULL in case of error */
_TPtr<TJSON_Value> json_parse_file(_Nt_array_ptr<const char> filename);

/* Parses first JSON value in a file and ignores comments (/ * * / and //),
   returns NULL in case of error */
_TPtr<TJSON_Value> json_parse_file_with_comments(_Nt_array_ptr<const char> filename,
_TPtr<_TPtr<TJSON_Value>(_TNt_array_ptr<const char>, size_t)>parse_value);

/*  Parses first JSON value in a string, returns NULL in case of error */
_Tainted _TPtr<TJSON_Value> json_parse_string(_TNt_array_ptr<const char> string);

/*  Parses first JSON value in a string and ignores comments (/ * * / and //),
    returns NULL in case of error */
_Callback _TPtr<TJSON_Value>       parse_value(_TNt_array_ptr<const char> string, size_t nesting);
_Tainted _TPtr<TJSON_Value> json_parse_string_with_comments(_TNt_array_ptr<const char> string,
_TPtr<_TPtr<TJSON_Value>(_TNt_array_ptr<const char>, size_t)>parse_value);

/* Serialization */
size_t      json_serialization_size(_TPtr<const TJSON_Value> value); /* returns 0 on fail */
JSON_Status json_serialize_to_buffer(_TPtr<const TJSON_Value> value, _TNt_array_ptr<char> buf : byte_count(buf_size_in_bytes), size_t buf_size_in_bytes);
JSON_Status json_serialize_to_file(_TPtr<const TJSON_Value> value, _Nt_array_ptr<char> filename);
_TNt_array_ptr<char>      json_serialize_to_string(_TPtr<const TJSON_Value> value);

/* Pretty serialization */
_Tainted size_t      json_serialization_size_pretty(_TPtr<const TJSON_Value> value); /* returns 0 on fail */
JSON_Status json_serialize_to_buffer_pretty(_TPtr<const TJSON_Value> value, _TNt_array_ptr<char> buf : byte_count(buf_size_in_bytes), size_t buf_size_in_bytes);
JSON_Status json_serialize_to_file_pretty(_TPtr<const TJSON_Value> value, _Nt_array_ptr<const char> filename);
_Tainted _TNt_array_ptr<char> json_serialize_to_string_pretty(_TPtr<const TJSON_Value> value);

_Mirror void        json_free_serialized_string(_TNt_array_ptr<const char> string); /* frees string from json_serialize_to_string and json_serialize_to_string_pretty */

/* Comparing */
int  json_value_equals(_TPtr<const TJSON_Value> a, _TPtr<const TJSON_Value> b);

/* Validation
   This is *NOT* JSON Schema. It validates json by checking if object have identically
   named fields with matching types.
   For example schema {"name":"", "age":0} will validate
   {"name":"Joe", "age":25} and {"name":"Joe", "age":25, "gender":"m"},
   but not {"name":"Joe"} or {"name":"Joe", "age":"Cucumber"}.
   In case of arrays, only first value in schema is checked against all values in tested array.
   Empty objects ({}) validate all objects, empty arrays ([]) validate all arrays,
   null validates values of every type.
 */
JSON_Status json_validate(_TPtr<const TJSON_Value> schema , _TPtr<const TJSON_Value> value);

/*
 * JSON Object
 */
_Mirror _TPtr<TJSON_Value> json_object_get_value  (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name);
_TNt_array_ptr<const char> json_object_get_string (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name);
_TPtr<TJSON_Object> json_object_get_object (_TPtr<const TJSON_Object> object , _TNt_array_ptr<const char> name);
_TPtr<TJSON_Array> json_object_get_array  (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name);
double        json_object_get_number (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name); /* returns 0 on fail */
int           json_object_get_boolean(_TPtr<const TJSON_Object>, _TNt_array_ptr<const char> name); /* returns -1 on fail */

/* dotget functions enable addressing values with dot notation in nested objects,
 just like in structs or c++/java/c# objects (e.g. objectA.objectB.value).
 Because valid names in JSON can contain dots, some values may be inaccessible
 this way. */
_TPtr<TJSON_Value> json_object_dotget_value  (_TPtr<const TJSON_Object> object , _TNt_array_ptr<const char> name);
_TNt_array_ptr<const char> json_object_dotget_string (_TPtr<const TJSON_Object> object , _TNt_array_ptr<const char> name);
_TPtr<TJSON_Object> json_object_dotget_object (_TPtr<const TJSON_Object> object , _TNt_array_ptr<const char> name);
_Mirror _TPtr<TJSON_Array> json_object_dotget_array  (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name );
_Mirror double        json_object_dotget_number (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name); /* returns 0 on fail */
_Mirror int           json_object_dotget_boolean(_TPtr<const TJSON_Object> object , _TNt_array_ptr<const char> name); /* returns -1 on fail */

/* Functions to get available names */
_Mirror size_t        json_object_get_count   (_TPtr<const TJSON_Object>object);
_Mirror _TNt_array_ptr<const char> json_object_get_name    (_TPtr<const TJSON_Object> object, size_t index);
_TPtr<TJSON_Value> json_object_get_value_at(_TPtr<const TJSON_Object> object, size_t index);
_Mirror _TPtr<TJSON_Value> json_object_get_wrapping_value(_TPtr<const TJSON_Object> object);


/* Various */
static _Nt_array_ptr<char> read_file(_Nt_array_ptr<const char> filename) ;
_Mirror static void remove_comments(_Nt_array_ptr<char> string, _Nt_array_ptr<const char> start_token, _Nt_array_ptr<const char> end_token);
_Mirror static int                 hex_char_to_int(char c);
static int _Unchecked      parse_utf16_hex(const char* string, unsigned int* result);
static int                 num_bytes_in_utf8_sequence(unsigned char c);
_Tainted int verify_utf8_sequence(_TNt_array_ptr<const unsigned char> s, _TPtr<int> len); // len is set after, not a constraint on string
static int is_valid_utf8(_TNt_array_ptr<const char> string : bounds(string, string + string_len), size_t string_len);
_Tainted int                 is_decimal(_TNt_array_ptr<const char> string : count(length), size_t length);

/* JSON Object */
_Tainted _TPtr<TJSON_Object> json_object_init(_TPtr<TJSON_Value> wrapping_value);
static JSON_Status       json_object_add(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, _TPtr<TJSON_Value> value);
_Tainted JSON_Status       json_object_addn(_TPtr<TJSON_Object> object,
_TNt_array_ptr<const char> name : count(name_len),
        size_t name_len,
_TPtr<TJSON_Value> value);
_Tainted JSON_Status       json_object_resize(_TPtr<TJSON_Object> object, size_t new_capacity);
_Mirror static _TPtr<TJSON_Value>      json_object_getn_value(_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name : count(name_len), size_t name_len);
_Tainted JSON_Status       json_object_remove_internal(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, int free_value);
_Tainted JSON_Status       json_object_dotremove_internal(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, int free_value);
_Tainted void              json_object_free(_TPtr<TJSON_Object> object);

/* JSON Array */
static _TPtr<TJSON_Array> json_array_init(_TPtr<TJSON_Value> wrapping_value);
static JSON_Status      json_array_add(_TPtr<TJSON_Array> array, _TPtr<TJSON_Value> value);
static JSON_Status      json_array_resize(_TPtr<TJSON_Array> array, size_t new_capacity);
_Mirror static void             json_array_free(_TPtr<TJSON_Array> array);

/* JSON Value */
static _TPtr<TJSON_Value> json_value_init_string_no_copy(_TNt_array_ptr<char> string);

/* Parser */
static JSON_Status            skip_quotes(_TNt_array_ptr<const char> string);
_Tainted int _Unchecked parse_utf16(_TNt_array_ptr<const char> unprocessed, _TNt_array_ptr<char> processed);
_Callback static _TNt_array_ptr<char>    process_string(_TNt_array_ptr<const char> input : count(len), size_t len);
/*
 * It does not matter if the function pointer (callback) does not bear tainted pointers
 *
 */
_Tainted _TNt_array_ptr<char> get_quoted_string(_TNt_array_ptr<const char> string,
_TPtr<_TNt_array_ptr<char>(_TNt_array_ptr<const char> input : count(len), size_t len)> process_string);
static _TPtr<TJSON_Value>       parse_object_value(_TNt_array_ptr<const char> string, size_t nesting);
static _TPtr<TJSON_Value>       parse_array_value(_TNt_array_ptr<const char> string, size_t nesting);
static _TPtr<TJSON_Value>       parse_boolean_value(_TNt_array_ptr<const char> string);
_Tainted _TPtr<TJSON_Value> parse_number_value(_TNt_array_ptr<const char> string);
static _TPtr<TJSON_Value>       parse_null_value(_TNt_array_ptr<const char> string);


/* Serialization */
_Tainted int   json_serialize_to_buffer_r(_TPtr<const TJSON_Value> value, _TNt_array_ptr<char> buf : bounds(buf_start, buf_start + buf_len), int level, int is_pretty, _TNt_array_ptr<char> num_buf, _TNt_array_ptr<char> buf_start : byte_count(buf_len), size_t buf_len);
_Tainted int            json_serialize_string(_TNt_array_ptr<const char> string, _TNt_array_ptr<char> buf : bounds(buf_start, buf_start + buf_len), _TNt_array_ptr<char> buf_start : byte_count(buf_len), size_t buf_len);
static int _Mirror _Unchecked append_indent(_TNt_array_ptr<char> buf : bounds(buf_start, buf_start + buf_len),
int level, _TNt_array_ptr<char> buf_start : byte_count(buf_len), size_t buf_len);
static int _Mirror _Unchecked append_string(_TNt_array_ptr<char> buf : bounds(buf_start, buf_start + buf_len),
const char* string, _TNt_array_ptr<char> buf_start : byte_count(buf_len), size_t buf_len);

/* Functions to check if object has a value with a specific name. Returned value is 1 if object has
 * a value and 0 if it doesn't. dothas functions behave exactly like dotget functions. */
int json_object_has_value        (_TPtr<const TJSON_Object>object , _TNt_array_ptr<const char> name);
int json_object_has_value_of_type(_TPtr<const TJSON_Object>object, _TNt_array_ptr<const char> name , JSON_Value_Type type);

int json_object_dothas_value        (_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name);
int json_object_dothas_value_of_type(_TPtr<const TJSON_Object> object, _TNt_array_ptr<const char> name, JSON_Value_Type type);

/* Creates new name-value pair or frees and replaces old value with a new one.
 * json_object_set_value does not copy passed value so it shouldn't be freed afterwards. */
JSON_Status json_object_set_value(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, _TPtr<TJSON_Value> value);
JSON_Status json_object_set_string(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, _TNt_array_ptr<const char> string);
JSON_Status json_object_set_number(_TPtr<TJSON_Object>object , _TNt_array_ptr<const char> name, double number);
JSON_Status json_object_set_boolean(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name, int boolean);
JSON_Status json_object_set_null(_TPtr<TJSON_Object> object , _TNt_array_ptr<const char> name );

/* Works like dotget functions, but creates whole hierarchy if necessary.
 * json_object_dotset_value does not copy passed value so it shouldn't be freed afterwards. */
JSON_Status json_object_dotset_value(_TPtr<TJSON_Object> object , _TNt_array_ptr<const char> name, _TPtr<TJSON_Value>value);
JSON_Status json_object_dotset_string(_TPtr<TJSON_Object> object , _TNt_array_ptr<const char> name, _TNt_array_ptr<const char> string);
JSON_Status json_object_dotset_number(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name , double number);
JSON_Status json_object_dotset_boolean(_TPtr<TJSON_Object> object , _TNt_array_ptr<const char> name , int boolean);
JSON_Status json_object_dotset_null(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name);

/* Frees and removes name-value pair */
JSON_Status json_object_remove(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name);

/* Works like dotget function, but removes name-value pair only on exact match. */
JSON_Status json_object_dotremove(_TPtr<TJSON_Object> object, _TNt_array_ptr<const char> name) ;

/* Removes all name-value pairs in object */
_Tainted JSON_Status json_object_clear(_TPtr<TJSON_Object> object);

/*
 *JSON Array
 */
_Mirror _TPtr<TJSON_Value> json_array_get_value  (_TPtr<const TJSON_Array> array, size_t index);
_TNt_array_ptr<const char> json_array_get_string (_TPtr<const TJSON_Array> array, size_t index);
_TPtr<TJSON_Object>  json_array_get_object (_TPtr<const TJSON_Array> array, size_t index);
_TPtr<TJSON_Array> json_array_get_array  (_TPtr<const TJSON_Array> array , size_t index);
double        json_array_get_number (_TPtr<const TJSON_Array>array, size_t index); /* returns 0 on fail */
int           json_array_get_boolean(_TPtr<const TJSON_Array>array, size_t index); /* returns -1 on fail */
_Mirror size_t        json_array_get_count  (_TPtr<const TJSON_Array> array);
_TPtr<TJSON_Value> json_array_get_wrapping_value(_TPtr<const TJSON_Array>array);

/* Frees and removes value at given index, does nothing and returns JSONFailure if index doesn't exist.
 * Order of values in array may change during execution.  */
JSON_Status json_array_remove(_TPtr<TJSON_Array> array, size_t ix);

/* Frees and removes from array value at given index and replaces it with given one.
 * Does nothing and returns JSONFailure if index doesn't exist.
 * json_array_replace_value does not copy passed value so it shouldn't be freed afterwards. */
JSON_Status json_array_replace_value(_TPtr<TJSON_Array>array, size_t i, _TPtr<TJSON_Value> value);
JSON_Status json_array_replace_string(_TPtr<TJSON_Array> array, size_t i, _TNt_array_ptr<const char> string);
JSON_Status json_array_replace_number(_TPtr<TJSON_Array> array , size_t i, double number);
JSON_Status json_array_replace_boolean(_TPtr<TJSON_Array> array, size_t i, int boolean);
JSON_Status json_array_replace_null(_TPtr<TJSON_Array> array, size_t i);

/* Frees and removes all values from array */
JSON_Status json_array_clear(_TPtr<TJSON_Array> array );

/* Appends new value at the end of array.
 * json_array_append_value does not copy passed value so it shouldn't be freed afterwards. */
JSON_Status json_array_append_value(_TPtr<TJSON_Array> array, _TPtr<TJSON_Value> value);
JSON_Status json_array_append_string(_TPtr<TJSON_Array> array, _TNt_array_ptr<const char> string);
JSON_Status json_array_append_number(_TPtr<TJSON_Array> array, double number);
JSON_Status json_array_append_boolean(_TPtr<TJSON_Array> array, int boolean);
JSON_Status json_array_append_null(_TPtr<TJSON_Array> array);

/*
 *JSON Value
 */
_Tainted _TPtr<TJSON_Value> json_value_init_object (void);
_Tainted _TPtr<TJSON_Value> json_value_init_array  (void);
_TPtr<TJSON_Value> json_value_init_string (_TNt_array_ptr<const char> string); /* copies passed string */
_Tainted _TPtr<TJSON_Value> json_value_init_number (double number);
_Mirror _TPtr<TJSON_Value> json_value_init_boolean(int boolean);
_Tainted _TPtr<TJSON_Value> json_value_init_null   (void);
_TPtr<TJSON_Value> json_value_deep_copy   (_TPtr<const TJSON_Value> value);
_Tainted void         json_value_free        (_TPtr<TJSON_Value> value);

_Mirror JSON_Value_Type json_value_get_type   (_TPtr<const TJSON_Value> value);
_Mirror _TPtr<TJSON_Object>   json_value_get_object (_TPtr<const TJSON_Value>value);
_Tainted _TPtr<TJSON_Object> json_value_get_object_tainted(_TPtr<const TJSON_Value> value);
_Tainted JSON_Value_Type json_value_get_type_tainted   (const _TPtr<const TJSON_Value>value);
_Mirror _TPtr<TJSON_Array>   json_value_get_array  (_TPtr<const TJSON_Value> value);
_Mirror _TNt_array_ptr<const char>json_value_get_string (_TPtr<const TJSON_Value> value);
_Mirror double          json_value_get_number (_TPtr<const TJSON_Value> value);
_Mirror int             json_value_get_boolean(_TPtr<const TJSON_Value> value);
_TPtr<TJSON_Value>   json_value_get_parent (_TPtr<const TJSON_Value> value);

/* Same as above, but shorter */
JSON_Value_Type json_type   (_TPtr<const TJSON_Value> value);
_TPtr<TJSON_Object>   json_object (_TPtr<const TJSON_Value> value);
_TPtr<TJSON_Array>   json_array  (_TPtr<const TJSON_Value> value);
_TNt_array_ptr<const char> json_string (_TPtr<const TJSON_Value> value);
double          json_number (_TPtr<const TJSON_Value> value);
int             json_boolean(_TPtr<const TJSON_Value> value);

#pragma CHECKED_SCOPE pop

#ifdef __cplusplus
}
#endif

#endif
