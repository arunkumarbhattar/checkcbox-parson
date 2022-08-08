#pragma TLIB_SCOPE push
#pragma TLIB_SCOPE on


unsigned int w2c_parson_string_tainted_malloc (void* sandbox, unsigned long int arg_1) ;


unsigned int w2c_tainted_parson_strndup (void* sandbox, unsigned int arg_1,
unsigned long int arg_2) ;


unsigned int w2c_tainted_parson_strdup (void* sandbox, unsigned int arg_1) ;


unsigned long int w2c_verify_utf8_sequence (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned long int w2c_is_decimal (void* sandbox, unsigned int arg_1,
unsigned long int arg_2) ;


unsigned int w2c_read_file (void* sandbox, unsigned int arg_1) ;


unsigned int w2c_json_object_init (void* sandbox, unsigned int arg_1) ;


unsigned long int w2c_json_object_addn (void* sandbox, unsigned int arg_1,
unsigned int arg_2,
unsigned long int arg_3,
unsigned int arg_4) ;


unsigned long int w2c_json_object_resize (void* sandbox, unsigned int arg_1,
unsigned long int arg_2) ;


unsigned long int w2c_json_object_remove_internal (void* sandbox, unsigned int arg_1,
unsigned int arg_2,
unsigned long int arg_3) ;


unsigned long int w2c_json_object_dotremove_internal (void* sandbox, unsigned int arg_1,
unsigned int arg_2,
unsigned long int arg_3) ;


unsigned int w2c_json_object_free (void* sandbox, unsigned int arg_1) ;


unsigned int w2c_json_array_init (void* sandbox, unsigned int arg_1) ;


unsigned int w2c_json_value_init_string_no_copy (void* sandbox, unsigned int arg_1) ;


unsigned long int w2c_parse_utf16 (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned int w2c_get_quoted_string (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned int w2c_parse_string_value (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned int w2c_parse_boolean_value (void* sandbox, unsigned int arg_1) ;


unsigned int w2c_parse_number_value (void* sandbox, unsigned int arg_1) ;


unsigned long int w2c_json_serialize_to_buffer_r (void* sandbox, unsigned int arg_1,
unsigned int arg_2,
unsigned long int arg_3,
unsigned long int arg_4,
unsigned int arg_5,
unsigned int arg_6,
unsigned long int arg_7) ;


unsigned long int w2c_json_serialize_string (void* sandbox, unsigned int arg_1,
unsigned int arg_2,
unsigned int arg_3,
unsigned long int arg_4) ;


unsigned int w2c_json_parse_file_with_comments (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned int w2c_json_parse_string_with_comments (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned long int w2c_json_value_get_type_tainted (void* sandbox, unsigned int arg_1) ;


unsigned int w2c_json_value_get_object_tainted (void* sandbox, unsigned int arg_1) ;


unsigned int w2c_json_value_init_object(void* sandbox);


unsigned int w2c_json_value_init_array(void* sandbox);


unsigned int w2c_json_value_init_number (void* sandbox, double arg_1) ;


unsigned int w2c_json_value_init_null(void* sandbox);


unsigned long int w2c_json_serialize_to_buffer_pretty (void* sandbox, unsigned int arg_1,
unsigned int arg_2,
unsigned long int arg_3) ;


unsigned long int w2c_json_serialization_size_pretty (void* sandbox, unsigned int arg_1) ;


unsigned long int w2c_json_serialize_to_file_pretty (void* sandbox, unsigned int arg_1,
unsigned int arg_2) ;


unsigned int w2c_json_serialize_to_string_pretty (void* sandbox, unsigned int arg_1) ;


unsigned long int w2c_json_array_remove (void* sandbox, unsigned int arg_1,
unsigned long int arg_2) ;


unsigned long int w2c_json_object_clear (void* sandbox, unsigned int arg_1) ;
unsigned int process_string_trampoline (unsigned int arg_1,
unsigned long int arg_2); 
#pragma TLIB_SCOPE pop
