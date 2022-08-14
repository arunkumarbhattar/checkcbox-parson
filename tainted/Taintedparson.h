/* This file is Auto-Generated Using CheckMate.
 Please Do Not Directly Modify.
 */ 

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

typedef  struct json_object_t_t TJSON_Object;

typedef  struct json_array_t_t  TJSON_Array;

typedef  struct json_value_t_t  TJSON_Value;

 TJSON_Value *       parse_value(const char * string, size_t nesting);

 int verify_utf8_sequence(const unsigned char * s, int * len);

 JSON_Status       json_object_resize(TJSON_Object * object, size_t new_capacity);

 char * get_quoted_string(const char * string,
char * (*process_string)(const char * input,size_t len));

 int  parse_utf16(const char * unprocessed, char * processed);

 JSON_Status       json_object_remove_internal(TJSON_Object * object, const char * name, int free_value);

 JSON_Status       json_object_dotremove_internal(TJSON_Object * object, const char * name, int free_value);

 JSON_Status       json_object_addn(TJSON_Object * object,
const char * name ,
        size_t name_len,
TJSON_Value * value);

  TJSON_Value * parse_number_value(const char * string);

 TJSON_Value * parse_string_value(const char * string,
char * (*process_string)(const char * input,size_t len));

 char * string_tainted_malloc(size_t sz);

 TJSON_Value * json_parse_file_with_comments(const char * filename,
TJSON_Value * (*parse_value)(const char * ,size_t));

 TJSON_Value * json_parse_string(const char * string);

 TJSON_Value * json_parse_string_with_comments(const char * string,
TJSON_Value * (*parse_value)(const char * ,size_t));

 size_t      json_serialization_size_pretty(const TJSON_Value * value);

 char * json_serialize_to_string_pretty(const TJSON_Value * value);

 void        json_free_serialized_string(const char * string);

 TJSON_Value * json_object_get_value  (const TJSON_Object * object, const char * name);

 TJSON_Array * json_object_dotget_array  (const TJSON_Object * object, const char * name );

 double        json_object_dotget_number (const TJSON_Object * object, const char * name);

 int           json_object_dotget_boolean(const TJSON_Object * object , const char * name);

 size_t        json_object_get_count   (const TJSON_Object *object);

 const char * json_object_get_name    (const TJSON_Object * object, size_t index);

 TJSON_Value * json_object_get_wrapping_value(const TJSON_Object * object);

 JSON_Status json_object_clear(TJSON_Object * object);

 TJSON_Value * json_array_get_value  (const TJSON_Array * array, size_t index);

 size_t        json_array_get_count  (const TJSON_Array * array);

 TJSON_Value * json_value_init_object (void);

 TJSON_Value * json_value_init_array  (void);

 TJSON_Value * json_value_init_number (double number);

 TJSON_Value * json_value_init_boolean(int boolean);

 TJSON_Value * json_value_init_null   (void);

 void         json_value_free        (TJSON_Value * value);

 JSON_Value_Type json_value_get_type   (const TJSON_Value * value);

 TJSON_Object *   json_value_get_object (const TJSON_Value *value);

 TJSON_Object * json_value_get_object_tainted(const TJSON_Value * value);

 JSON_Value_Type json_value_get_type_tainted   (const const TJSON_Value *value);

 TJSON_Array *   json_value_get_array  (const TJSON_Value * value);

 const char *json_value_get_string (const TJSON_Value * value);

 double          json_value_get_number (const TJSON_Value * value);

 int             json_value_get_boolean(const TJSON_Value * value);
