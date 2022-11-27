#include "Taintedparson.h"
#include <stdint.h> 
#include <errno.h>
/* This file is Auto-Generated Using CheckMate.
 Please Do Not Directly Modify.
 */ 

#define APPEND_INDENT(level) do { written = append_indent(buf, (level), buf_start, buf_len);\
                                  if (written < 0) { return -1; }\
                                  if (buf != NULL) { buf += written; }\
                                  written_total += written; } while(0)

#define APPEND_STRING(str) do { written = append_string(buf, (str), buf_start, buf_len);\
                                if (written < 0) { return -1; }\
                                if (buf != NULL) { buf += written; }\
                                written_total += written; } while(0)

#define IS_CONT(b) (((unsigned char)(b) & 0xC0) == 0x80) /* is utf-8 continuation byte */

#define IS_NUMBER_INVALID(x) (((x) * 0.0) != 0.0)

#define MAX(a, b)             ((a) > (b) ? (a) : (b))

#define SIZEOF_TOKEN(a)       (sizeof(a) - 1)

#define SKIP_CHAR(str)        ((*str)++)

#define SKIP_WHITESPACES(str) while (isspace((unsigned char)(**str))) { SKIP_CHAR(str); }

#define parson_free(p)   (free(p))

#define parson_free_unchecked(t, buf) (free(buf))

#define parson_malloc(t, sz) (malloc(sz))

#define parson_tainted_free(t, p)   (free((t *)p))

#define parson_tainted_malloc(t, sz) (malloc(sz))

#define STARTING_CAPACITY 16
#define MAX_NESTING       1000
#define NUM_BUF_SIZE 64
#define FLOAT_FORMAT "%1.17g" 

typedef  struct json_value_value_t_t {
char * string;
double       number;
TJSON_Object * object;
TJSON_Array * array;
int          boolean;
int          null;
} TJSON_Value_Value;

struct json_value_t_t {
TJSON_Value * parent;
JSON_Value_Type  type;
TJSON_Value_Value value;
};

struct json_object_t_t {
TJSON_Value * wrapping_value;
char * * names ;
TJSON_Value * * values  ;
unsigned int       count;
unsigned int       capacity;
};

struct json_array_t_t {
TJSON_Value * wrapping_value;
TJSON_Value **items;
unsigned int      count;
unsigned int       capacity;
};

int parson_escape_slashes = 1;


char *    process_string(const char * input , size_t len);
TJSON_Value * parse_value(const char **string, size_t nesting);
 char * parson_string_tainted_malloc(size_t sz)  {
if(sz >= SIZE_MAX)
return NULL;
char * p  = (char *)malloc(sz + 1);
if (p != NULL)
p[sz] = 0;
return (char *)p;
}

int   append_indent(char * buf ,
int level, char * buf_start , size_t buf_len);

int   append_string(char * buf ,
const char* string, char * buf_start , size_t buf_len);

char * tainted_parson_strndup(const char * string , size_t n) {
char * output_string  = parson_string_tainted_malloc(n);
if (!output_string) {
return NULL;
}
output_string[n] = '\0';
strncpy((char*)output_string,(char*) string, n);
return output_string;
}

 char * tainted_parson_strdup(const char * string) {
size_t len = strlen((const char *)string);
const char * str_with_len  = NULL;
 {
str_with_len = (const char *)string;
}
return tainted_parson_strndup(str_with_len, len);
}

 static int hex_char_to_int(char c)  {
if (c >= '0' && c <= '9') {
return c - '0';
} else if (c >= 'a' && c <= 'f') {
return c - 'a' + 10;
} else if (c >= 'A' && c <= 'F') {
return c - 'A' + 10;
}
return -1;
}

 static int  parse_utf16_hex(const char* s, unsigned int* result) {
    int x1, x2, x3, x4;
    if (s[0] == '\0' || s[1] == '\0' || s[2] == '\0' || s[3] == '\0') {
        return 0;
    }
    x1 = hex_char_to_int(s[0]);
    x2 = hex_char_to_int(s[1]);
    x3 = hex_char_to_int(s[2]);
    x4 = hex_char_to_int(s[3]);
    if (x1 == -1 || x2 == -1 || x3 == -1 || x4 == -1)  {
        return 0;
    }
    *result = (unsigned int)((x1 << 12) | (x2 << 8) | (x3 << 4) | x4);
    return 1;
}

 static int num_bytes_in_utf8_sequence(unsigned char c) {
    if (c == 0xC0 || c == 0xC1 || c > 0xF4 || IS_CONT(c)) {
        return 0;
    } else if ((c & 0x80) == 0) {    /* 0xxxxxxx */
        return 1;
    } else if ((c & 0xE0) == 0xC0) { /* 110xxxxx */
        return 2;
    } else if ((c & 0xF0) == 0xE0){ /* 1110xxxx */
        return 3;
    } else if ((c & 0xF8) == 0xF0)  { /* 11110xxx */
        return 4;
    }
    return 0; /* won't happen */
}

 int verify_utf8_sequence(const unsigned char * s, int * len) {
    unsigned int cp = 0;
    *len = num_bytes_in_utf8_sequence(s[0]);
    // TODO: Requires bounds widening, so left unchecked.
     {
        const unsigned char* string = (const unsigned char*)s;
        if (*len == 1) {
            cp = string[0];
        } else if (*len == 2 && IS_CONT(string[1])) {
            cp = string[0] & 0x1F;
            cp = (cp << 6) | (string[1] & 0x3F);
        } else if (*len == 3 && IS_CONT(string[1]) && IS_CONT(string[2])) {
            cp = ((unsigned char)string[0]) & 0xF;
            cp = (cp << 6) | (string[1] & 0x3F);
            cp = (cp << 6) | (string[2] & 0x3F);
        } else if (*len == 4 && IS_CONT(string[1]) && IS_CONT(string[2]) && IS_CONT(string[3])) {
            cp = string[0] & 0x7;
            cp = (cp << 6) | (string[1] & 0x3F);
            cp = (cp << 6) | (string[2] & 0x3F);
            cp = (cp << 6) | (string[3] & 0x3F);
        } else {
            return 0;
        }
    }

    //    /* overlong encodings */
    if ((cp < 0x80    && *len > 1) ||
        (cp < 0x800   && *len > 2) ||
        (cp < 0x10000 && *len > 3)) {
        return 0;
    }

//    /* invalid unicode */
    if (cp > 0x10FFFF) {
        return 0;
    }

//    /* surrogate halves */
    if (cp >= 0xD800 && cp <= 0xDFFF) {
        return 0;
    }

    return 1;
}

 int is_decimal(const char * string , size_t length) {
if (length > 1 && string[0] == '0' && string[1] != '.') {
return 0;
}
// The following dynamic bounds cast should not be needed; length > 2 > 0
if (length > 2 && !strncmp((const char *)string, "-0", 2) && string[2] != '.') {
return 0;
}
while (length--) {
if (strchr("xX", string[length])) {
return 0;
}
}
return 1;
}

 static void remove_comments(char * string, const char * start_token, const char * end_token)  {
int in_string = 0, escaped = 0;
size_t i;
char current_char;
size_t start_token_len = strlen(start_token);
size_t end_token_len = strlen(end_token);
if (start_token_len == 0 || end_token_len == 0) {
return;
}
while ((current_char = *string) != '\0') {
if (current_char == '\\' && !escaped) {
escaped = 1;
string++;
continue;
} else if (current_char == '\"' && !escaped) {
in_string = !in_string;
// TODO: Can't prove this
} else {
 {
char* unchecked_string = (char*)string;
if (!in_string && strncmp(unchecked_string, start_token, start_token_len) == 0) {
for(i = 0; i < start_token_len; i++) {
unchecked_string[i] = ' ';
}
unchecked_string = unchecked_string + start_token_len;
char* ptr_ = strstr(unchecked_string, end_token);
if (!ptr_) {
return;
}
for (i = 0; i < (ptr_ - unchecked_string) + end_token_len; i++) {
unchecked_string[i] = ' ';
}

string = (char *)ptr_ +end_token_len -1;
}
} // end _Unchecked
}
escaped = 0;
string++;
}
}

 JSON_Status json_object_addn(TJSON_Object * object,
const char * name ,
        size_t name_len,
TJSON_Value * value) {
size_t index = 0;
if (object == NULL || name == NULL || value == NULL) {
return JSONFailure;
}
if (json_object_getn_value(object, name, name_len) != NULL) {
return JSONFailure;
}
if (object->count >= object->capacity) {
size_t new_capacity = MAX(object->capacity * 2, STARTING_CAPACITY);
if (json_object_resize(object, new_capacity) == JSONFailure) {
return JSONFailure;
}
}
index = object->count;
object->names[index] = tainted_parson_strndup(name, name_len);
if (object->names[index] == NULL) {
return JSONFailure;
}
value->parent = json_object_get_wrapping_value(object);
object->values[index] = value;
object->count++;
return JSONSuccess;
}

JSON_Status json_object_resize(TJSON_Object *object, size_t new_capacity) {
    char **temp_names = NULL;
    TJSON_Value **temp_values = NULL;

    if ((object->names == NULL && object->values != NULL) ||
        (object->names != NULL && object->values == NULL) ||
        new_capacity == 0) {
            return JSONFailure; /* Shouldn't happen */
    }
    temp_names = (char**)malloc(new_capacity * sizeof(char*));
    if (temp_names == NULL) {
        return JSONFailure;
    }
    temp_values = (TJSON_Value**)malloc(new_capacity * sizeof(TJSON_Value*));
    if (temp_values == NULL) {
        free(temp_names);
        return JSONFailure;
    }
    if (object->names != NULL && object->values != NULL && object->count > 0) {
        memcpy(temp_names, object->names, object->count * sizeof(char*));
        memcpy(temp_values, object->values, object->count * sizeof(TJSON_Value*));
    }
    free(object->names);
    free(object->values);
    object->names = temp_names;
    object->values = temp_values;
    object->capacity = new_capacity;
    return JSONSuccess;
}

TJSON_Value * json_object_getn_value(const TJSON_Object *object, const char *name, size_t name_len) {
    size_t i, name_length;
    for (i = 0; i < json_object_get_count(object); i++) {
        name_length = strlen(object->names[i]);
        if (name_length != name_len) {
            continue;
        }
        if (strncmp(object->names[i], name, name_len) == 0) {
            return object->values[i];
        }
    }
    return NULL;
}

JSON_Status json_object_remove_internal(TJSON_Object *object, const char *name, int free_value) {
    size_t i = 0, last_item_index = 0;
    if (object == NULL || json_object_get_value(object, name) == NULL) {
        return JSONFailure;
    }
    last_item_index = json_object_get_count(object) - 1;
    for (i = 0; i < json_object_get_count(object); i++) {
        if (strcmp(object->names[i], name) == 0) {
            free(object->names[i]);
            if (free_value) {
                json_value_free(object->values[i]);
            }
            if (i != last_item_index) { /* Replace key value pair with one from the end */
                object->names[i] = object->names[last_item_index];
                object->values[i] = object->values[last_item_index];
            }
            object->count -= 1;
            return JSONSuccess;
        }
    }
    return JSONFailure; /* No execution path should end here */
}

JSON_Status json_object_dotremove_internal(TJSON_Object *object, const char *name, int free_value) {
    TJSON_Value *temp_value = NULL;
    TJSON_Object *temp_object = NULL;
    const char *dot_pos = strchr(name, '.');
    if (dot_pos == NULL) {
        return json_object_remove_internal(object, name, free_value);
    }
    temp_value = json_object_getn_value(object, name, dot_pos - name);
    if (json_value_get_type(temp_value) != JSONObject) {
        return JSONFailure;
    }
    temp_object = json_value_get_object(temp_value);
    return json_object_dotremove_internal(temp_object, dot_pos + 1, free_value);
}

void json_object_free(TJSON_Object *object) {
    size_t i;
    for (i = 0; i < object->count; i++) {
	    parson_free(object->names[i]);
	    json_value_free(object->values[i]);
    }
    parson_free(object->names);
    parson_free(object->values);
    parson_free(object);
}

void json_array_free(TJSON_Array *array) {
    size_t i;
    for (i = 0; i < array->count; i++) {
        json_value_free(array->items[i]);
    }
    parson_free(array->items);
    parson_free(array);
}

int parse_utf16(const char **unprocessed, char **processed) {
    unsigned int cp, lead, trail;
    int parse_succeeded = 0;
    char *processed_ptr = *processed;
    const char *unprocessed_ptr = *unprocessed;
    unprocessed_ptr++; /* skips u */
    parse_succeeded = parse_utf16_hex(unprocessed_ptr, &cp);
    if (!parse_succeeded) {
        return JSONFailure;
    }
    if (cp < 0x80) {
        processed_ptr[0] = (char)cp; /* 0xxxxxxx */
    } else if (cp < 0x800) {
        processed_ptr[0] = ((cp >> 6) & 0x1F) | 0xC0; /* 110xxxxx */
        processed_ptr[1] = ((cp)      & 0x3F) | 0x80; /* 10xxxxxx */
        processed_ptr += 1;
    } else if (cp < 0xD800 || cp > 0xDFFF) {
        processed_ptr[0] = ((cp >> 12) & 0x0F) | 0xE0; /* 1110xxxx */
        processed_ptr[1] = ((cp >> 6)  & 0x3F) | 0x80; /* 10xxxxxx */
        processed_ptr[2] = ((cp)       & 0x3F) | 0x80; /* 10xxxxxx */
        processed_ptr += 2;
    } else if (cp >= 0xD800 && cp <= 0xDBFF) { /* lead surrogate (0xD800..0xDBFF) */
        lead = cp;
        unprocessed_ptr += 4; /* should always be within the buffer, otherwise previous sscanf would fail */
        if (*unprocessed_ptr++ != '\\' || *unprocessed_ptr++ != 'u') {
            return JSONFailure;
        }
        parse_succeeded = parse_utf16_hex(unprocessed_ptr, &trail);
        if (!parse_succeeded || trail < 0xDC00 || trail > 0xDFFF) { /* valid trail surrogate? (0xDC00..0xDFFF) */
            return JSONFailure;
        }
        cp = ((((lead - 0xD800) & 0x3FF) << 10) | ((trail - 0xDC00) & 0x3FF)) + 0x010000;
        processed_ptr[0] = (((cp >> 18) & 0x07) | 0xF0); /* 11110xxx */
        processed_ptr[1] = (((cp >> 12) & 0x3F) | 0x80); /* 10xxxxxx */
        processed_ptr[2] = (((cp >> 6)  & 0x3F) | 0x80); /* 10xxxxxx */
        processed_ptr[3] = (((cp)       & 0x3F) | 0x80); /* 10xxxxxx */
        processed_ptr += 3;
    } else { /* trail surrogate before lead surrogate */
        return JSONFailure;
    }
    unprocessed_ptr += 3;
    *processed = processed_ptr;
    *unprocessed = unprocessed_ptr;
    return JSONSuccess;
}

char * get_quoted_string(const char **string,
char * (*process_string)(const char * input,size_t len)) {
    const char *string_start = *string;
    size_t string_len = 0;
    JSON_Status status = skip_quotes(string);
    if (status != JSONSuccess) {
        return NULL;
    }
    string_len = *string - string_start - 2; /* length without quotes */
    return process_string(string_start + 1, string_len);
}

TJSON_Value * parse_number_value(const char **string) {
    char *end;
    double number = 0;
    errno = 0;
    number = strtod(*string, &end);
    if (errno || !is_decimal(*string, end - *string)) {
        return NULL;
    }
    *string = end;
    return json_value_init_number(number);
}

TJSON_Value * parse_null_value(const char **string) {
    size_t token_size = SIZEOF_TOKEN("null");
    if (strncmp("null", *string, token_size) == 0) {
        *string += token_size;
        return json_value_init_null();
    }
    return NULL;
}

/* JSON Object */
TJSON_Object * json_object_init(TJSON_Value *wrapping_value) {
    TJSON_Object *new_obj = (TJSON_Object*)malloc(sizeof(TJSON_Object));
    if (new_obj == NULL) {
        return NULL;
    }
    new_obj->wrapping_value = wrapping_value;
    new_obj->names = (char**)NULL;
    new_obj->values = (TJSON_Value**)NULL;
    new_obj->capacity = 0;
    new_obj->count = 0;
    return new_obj;
}

TJSON_Object * json_value_get_object(const TJSON_Value * value)  {
return json_value_get_type(value) == JSONObject ? value->value.object : NULL;
}

 TJSON_Array * json_value_get_array  (const TJSON_Value * value)  {
return json_value_get_type(value) == JSONArray ? value->value.array : NULL;
}

 const char *json_value_get_string (const TJSON_Value * value)  {
return json_value_get_type(value) == JSONString ? value->value.string : NULL;
}

 double json_value_get_number (const TJSON_Value * value)  {
return json_value_get_type(value) == JSONNumber ? value->value.number : 0;
}

 int             json_value_get_boolean(const TJSON_Value * value) {
return json_value_get_type(value) == JSONBoolean ? value->value.boolean : -1;
}

 void json_value_free(TJSON_Value * value)  {
switch (json_value_get_type(value)) {
case JSONObject:
json_object_free(value->value.object);
break;
case JSONString:
parson_tainted_free(char *, value->value.string);
break;
case JSONArray:
json_array_free(value->value.array);
break;
default:
break;
}
parson_tainted_free(TJSON_Value, value);
}

 TJSON_Value * json_value_init_object (void) {
    TJSON_Value * new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONObject;
    new_value->value.object = json_object_init(new_value);
    if (!new_value->value.object) {
        parson_tainted_free(TJSON_Value, new_value);
        return NULL;
    }
    return new_value;
}

 TJSON_Value * json_value_init_array  (void) {
    TJSON_Value * new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONArray;
    new_value->value.array = json_array_init(new_value);
    if (!new_value->value.array) {
        parson_tainted_free(TJSON_Value, new_value);
        return NULL;
    }
    return new_value;
}

 TJSON_Value * json_value_init_number (double number) {
    TJSON_Value * new_value =  parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (IS_NUMBER_INVALID(number)) {
        return NULL;
    }
    if (new_value == NULL) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONNumber;
    new_value->value.number = number;
    return new_value;
}

 TJSON_Value * json_value_init_boolean(int boolean){
    TJSON_Value * new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONBoolean;
    new_value->value.boolean = boolean ? 1 : 0;
    return new_value;
}

 TJSON_Value * json_value_init_null   (void) {
    TJSON_Value * new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONNull;
    return new_value;
}


JSON_Status json_array_remove(TJSON_Array * array, size_t ix) {
size_t to_move_bytes = 0;
if (array == NULL || ix >= json_array_get_count(array)) {
return JSONFailure;
}
json_value_free(json_array_get_value(array, ix));
to_move_bytes = (json_array_get_count(array) - 1 - ix) * sizeof(TJSON_Value *);
// TODO: Unchecked because memmove doesn't yet take a type argument
 {
memmove((void*)(array->items + ix), (void*)(array->items + ix + 1), to_move_bytes);
}
array->count -= 1;
return JSONSuccess;
}

 JSON_Status json_object_clear(TJSON_Object * object) {
size_t i = 0;
if (object == NULL) {
return JSONFailure;
}
for (i = 0; i < json_object_get_count(object); i++) {
parson_tainted_free(char, object->names[i]);
json_value_free(object->values[i]);
}
object->count = 0;
return JSONSuccess;
}

TJSON_Value *json_object_get_wrapping_value(const TJSON_Object *object) {
    return object->wrapping_value;
}

size_t json_object_get_count(const TJSON_Object *object) {
    return object ? object->count : 0;
}

TJSON_Value * json_object_get_value(const TJSON_Object *object, const char *name) {
    if (object == NULL || name == NULL) {
        return NULL;
    }
    return json_object_getn_value(object, name, strlen(name));
}

JSON_Value_Type json_value_get_type(const TJSON_Value *value) {
    return value ? value->type : JSONError;
}

JSON_Status skip_quotes(const char **string) {
    if (**string != '\"') {
        return JSONFailure;
    }
    SKIP_CHAR(string);
    while (**string != '\"') {
        if (**string == '\0') {
            return JSONFailure;
        } else if (**string == '\\') {
            SKIP_CHAR(string);
            if (**string == '\0') {
                return JSONFailure;
            }
        }
        SKIP_CHAR(string);
    }
    SKIP_CHAR(string);
    return JSONSuccess;
}

TJSON_Array * json_array_init(TJSON_Value * wrapping_value) {
TJSON_Array * new_array = parson_tainted_malloc(TJSON_Array, sizeof(TJSON_Array));
if (new_array == NULL) {
return NULL;
}
new_array->wrapping_value = wrapping_value;
new_array->items = NULL;

{
new_array->capacity = 0;
new_array->count = 0;
};
return new_array;
}

 size_t json_array_get_count  (const TJSON_Array * array)  {
return array ? array->count : 0;
}

 TJSON_Value * json_array_get_value  (const TJSON_Array * array, size_t index)
{
if (array == NULL || index >= json_array_get_count(array)) {
return NULL;
}
return array->items[index];
}

JSON_Status json_object_add(TJSON_Object *object, const char *name, TJSON_Value *value) {
    if (name == NULL) {
        return JSONFailure;
    }
    return json_object_addn(object, name, strlen(name), value);
}

TJSON_Value * parse_object_value(const char **string, size_t nesting, 
		char* (*process_string)(const char *input, size_t len),
		TJSON_Value* (*parse_value)(const char **string, size_t nesting)) {
    TJSON_Value *output_value = NULL, *new_value = NULL;
    TJSON_Object *output_object = NULL;
    char *new_key = NULL;
    output_value = json_value_init_object();
    if (output_value == NULL) {
        return NULL;
    }
    if (**string != '{') {
        json_value_free(output_value);
        return NULL;
    }
    output_object = json_value_get_object(output_value);
    SKIP_CHAR(string);
    SKIP_WHITESPACES(string);
    if (**string == '}') { /* empty object */
        SKIP_CHAR(string);
        return output_value;
    }
    while (**string != '\0') {
        new_key = get_quoted_string(string, process_string);
        if (new_key == NULL) {
            json_value_free(output_value);
            return NULL;
        }
        SKIP_WHITESPACES(string);
        if (**string != ':') {
            parson_free(new_key);
            json_value_free(output_value);
            return NULL;
        }
        SKIP_CHAR(string);
        new_value = parse_value(string, nesting);
        if (new_value == NULL) {
            parson_free(new_key);
            json_value_free(output_value);
            return NULL;
        }
        if (json_object_add(output_object, new_key, new_value) == JSONFailure) {
            parson_free(new_key);
            json_value_free(new_value);
            json_value_free(output_value);
            return NULL;
        }
        parson_free(new_key);
        SKIP_WHITESPACES(string);
        if (**string != ',') {
            break;
        }
        SKIP_CHAR(string);
        SKIP_WHITESPACES(string);
    }
    SKIP_WHITESPACES(string);
    if (**string != '}' || /* Trim object after parsing is over */
        json_object_resize(output_object, json_object_get_count(output_object)) == JSONFailure) {
            json_value_free(output_value);
            return NULL;
    }
    SKIP_CHAR(string);
    return output_value;
}

JSON_Status json_array_add(TJSON_Array *array, TJSON_Value *value) {
    if (array->count >= array->capacity) {
        size_t new_capacity = MAX(array->capacity * 2, STARTING_CAPACITY);
        if (json_array_resize(array, new_capacity) == JSONFailure) {
            return JSONFailure;
        }
    }
    value->parent = json_array_get_wrapping_value(array);
    array->items[array->count] = value;
    array->count++;
    return JSONSuccess;
}

JSON_Status json_array_resize(TJSON_Array *array, size_t new_capacity) {
    TJSON_Value **new_items = NULL;
    if (new_capacity == 0) {
        return JSONFailure;
    }
    new_items = (TJSON_Value**)malloc(new_capacity * sizeof(TJSON_Value*));
    if (new_items == NULL) {
        return JSONFailure;
    }
    if (array->items != NULL && array->count > 0) {
        memcpy(new_items, array->items, array->count * sizeof(TJSON_Value*));
    }
    parson_free(array->items);
    array->items = new_items;
    array->capacity = new_capacity;
    return JSONSuccess;
}

TJSON_Value * json_array_get_wrapping_value(const TJSON_Array *array) {
    return array->wrapping_value;
}

TJSON_Value * parse_array_value(const char **string, size_t nesting, TJSON_Value* (*parse_value)(const char **string, size_t nesting)) {
    TJSON_Value *output_value = NULL, *new_array_value = NULL;
    TJSON_Array *output_array = NULL;
    output_value = json_value_init_array();
    if (output_value == NULL) {
        return NULL;
    }
    if (**string != '[') {
        json_value_free(output_value);
        return NULL;
    }
    output_array = json_value_get_array(output_value);
    SKIP_CHAR(string);
    SKIP_WHITESPACES(string);
    if (**string == ']') { /* empty array */
        SKIP_CHAR(string);
        return output_value;
    }
    while (**string != '\0') {
        new_array_value = parse_value(string, nesting);
        if (new_array_value == NULL) {
            json_value_free(output_value);
            return NULL;
        }
        if (json_array_add(output_array, new_array_value) == JSONFailure) {
            json_value_free(new_array_value);
            json_value_free(output_value);
            return NULL;
        }
        SKIP_WHITESPACES(string);
        if (**string != ',') {
            break;
        }
        SKIP_CHAR(string);
        SKIP_WHITESPACES(string);
    }
    SKIP_WHITESPACES(string);
    if (**string != ']' || /* Trim array after parsing is over */
        json_array_resize(output_array, json_array_get_count(output_array)) == JSONFailure) {
            json_value_free(output_value);
            return NULL;
    }
    SKIP_CHAR(string);
    return output_value;
}

TJSON_Value * json_value_init_string_no_copy(char *string) {
    TJSON_Value *new_value = (TJSON_Value*)malloc(sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONString;
    new_value->value.string = string;
    return new_value;
}

TJSON_Value * parse_string_value(const char **string, char * (*process_string)(const char * input,size_t len)) {
    TJSON_Value *value = NULL;
    char *new_string = get_quoted_string(string, process_string);
    if (new_string == NULL) {
        return NULL;
    }
    value = json_value_init_string_no_copy(new_string);
    if (value == NULL) {
        parson_free(new_string);
        return NULL;
    }
    return value;
}
