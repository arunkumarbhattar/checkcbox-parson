/* This file is Auto-Generated Using CheckMate.
 Please Do Not Directly Modify.
 */ 

#include <stddef.h>   /* size_t */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>
enum json_value_type {
    JSONError   = -1,
    JSONNull    = 1,
    JSONString  = 2,
    JSONNumber  = 3,
    JSONObject  = 4,
    JSONArray   = 5,
    JSONBoolean = 6
};

enum json_result_t {
    JSONSuccess = 0,
    JSONFailure = -1
};

typedef int JSON_Value_Type;

typedef int JSON_Status;

typedef  struct json_object_t_t TJSON_Object;

typedef  struct json_array_t_t  TJSON_Array;

typedef  struct json_value_t_t  TJSON_Value;
extern char *    process_string(const char * input , size_t len);

int                 verify_utf8_sequence(const unsigned char* string, int* len);
int                 is_decimal(const char* string , size_t length);
JSON_Status       json_object_addn(TJSON_Object* object, const char* name, size_t name_len, TJSON_Value* value);
JSON_Status       json_object_resize(TJSON_Object* object, size_t new_capacity);
TJSON_Value *      json_object_getn_value(const TJSON_Object* object, const char* name, size_t name_len);
JSON_Status       json_object_remove_internal(TJSON_Object* object, const char* name, int free_value);
JSON_Status       json_object_dotremove_internal(TJSON_Object* object, const char* name, int free_value);
void json_object_free(TJSON_Object* object);
int parse_utf16(const char** unprocessed , char** processed);
char * get_quoted_string(const char **string, 
char * (*process_string)(const char * input,size_t len));
TJSON_Value* parse_number_value(const char** string);
TJSON_Value* parse_null_value(const char** string);
TJSON_Object* json_object_init(TJSON_Value* wrapping_value);
void json_value_free(TJSON_Value * value);
 TJSON_Value * json_value_init_null   (void);
 void        json_free_serialized_string(const char * string);
 TJSON_Value *json_object_get_wrapping_value(const TJSON_Object *object);
 TJSON_Value * json_value_init_number (double number);
 TJSON_Object * json_value_get_object(const TJSON_Value * value);
 size_t      json_serialization_size_pretty(const TJSON_Value * value);
 TJSON_Value * json_object_get_value(const TJSON_Object *object, const char *name);
 JSON_Value_Type json_value_get_type(const TJSON_Value *value); 
 size_t json_object_get_count(const TJSON_Object *object);
 JSON_Status skip_quotes(const char **string); 
 TJSON_Array * json_array_init(TJSON_Value * wrapping_value);
   size_t json_array_get_count  (const TJSON_Array * array);
   TJSON_Value * json_array_get_value  (const TJSON_Array * array, size_t index);
   char * tainted_parson_strndup(const char * string , size_t n);
   char * tainted_parson_strndup(const char * string , size_t n);
   JSON_Status   json_object_add(TJSON_Object *object, const char *name, TJSON_Value *value);
   TJSON_Value * parse_object_value(const char **string, size_t nesting,
                char *(*process_string)(const char *input, size_t len),
                TJSON_Value * (*parse_value)(const char **string, size_t nesting));
   JSON_Status json_array_add(TJSON_Array *array, TJSON_Value *value);
   JSON_Status json_array_resize(TJSON_Array *array, size_t new_capacity);
   TJSON_Value * json_array_get_wrapping_value(const TJSON_Array *array);
   TJSON_Value * parse_array_value(const char **string, size_t nesting, TJSON_Value* (*parse_value)(const char **string, size_t nesting));
   TJSON_Value * json_value_init_string_no_copy(char *string);
   TJSON_Value * parse_string_value(const char **string, char * (*process_string)(const char * input,size_t len));
