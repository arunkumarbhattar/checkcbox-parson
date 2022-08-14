/* This file is Auto-Generated Using CheckMate.
 Please Do Not Directly Modify.
 */ 

# define errno (*__t_errno_location ())

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

#define SKIP_CHAR(str)        ((str)++)

#define SKIP_WHITESPACES(str) while (isspace((unsigned char)(*str))) { SKIP_CHAR(str); }

#define STARTING_CAPACITY 16

#define parson_free_unchecked(t, buf) (free(buf))

#define parson_tainted_free(t, p)   (free((t *)p))

#define parson_tainted_malloc(t, sz) (malloc(sz))

struct json_value_value_t_t {
    char * string;
    double       number;
    TJSON_Object * object;
    TJSON_Array * array;
    int          boolean;
    int          null;
};

struct json_value_t_t {
    TJSON_Value * parent;
    JSON_Value_Type  type;
    TJSON_Value_Value value;
};

struct json_object_t_t {
    TJSON_Value * wrapping_value;
    char * * names ;
    TJSON_Value * * values  ;
    size_t       count;
    size_t       capacity;
};

struct json_array_t_t {
    TJSON_Value * wrapping_value;
    TJSON_Value * * items ;
    size_t       count;
    size_t       capacity;
};

 int parson_escape_slashes = 1;

typedef  struct json_value_value_t_t {
    char * string;
    double       number;
    TJSON_Object * object;
    TJSON_Array * array;
    int          boolean;
    int          null;
} TJSON_Value_Value;

 static char *    process_string(const char * input , size_t len);

 char * parson_string_tainted_malloc(size_t sz)  {
  if(sz >= SIZE_MAX)
    return NULL;
  char * p  = (char *)malloc(sz + 1);
  if (p != NULL)
    p[sz] = 0;
  return (char *)p;
}

 static void remove_comments(char * string, const char * start_token, const char * end_token);

 static int                 hex_char_to_int(char c);

 int                 is_decimal(const char * string , size_t length);

 TJSON_Object * json_object_init(TJSON_Value * wrapping_value);

 static TJSON_Value *      json_object_getn_value(const TJSON_Object * object, const char * name , size_t name_len);

 void              json_object_free(TJSON_Object * object);

 static void             json_array_free(TJSON_Array * array);

 TJSON_Value * parse_string_value(const char * string,
char * (*process_string)(const char * input,size_t len));

 int   json_serialize_to_buffer_r(const TJSON_Value * value, char * buf , int level, int is_pretty, char * num_buf, char * buf_start , size_t buf_len);

 int            json_serialize_string(const char * string, char * buf , char * buf_start , size_t buf_len);

static int   append_indent(char * buf ,
                                    int level, char * buf_start , size_t buf_len);

static int   append_string(char * buf ,
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

 static int hex_char_to_int(char c) {
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
    if (x1 == -1 || x2 == -1 || x3 == -1 || x4 == -1) {
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
    } else if ((c & 0xF0) == 0xE0) { /* 1110xxxx */
        return 3;
    } else if ((c & 0xF8) == 0xF0) { /* 11110xxx */
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

 char * read_file(const char * filename) {
void * fp = fopen(filename, "r");
size_t size_to_read = 0;
size_t size_read = 0;
long pos;

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
// TODO: compiler isn't constant folding when checking bounds, so we need the spurious (size_t) 1 here.
char * file_contents  = parson_string_tainted_malloc((size_t) 1 * size_to_read );
if (!file_contents) {
fclose(fp);
return NULL;
}
size_read = fread(file_contents, 1, size_to_read, fp);
if (size_read == 0 || ferror(fp)) {
fclose(fp);
parson_tainted_free(char, file_contents);
return NULL;
}
fclose(fp);
return file_contents;
}

 static void remove_comments(char * string, const char * start_token, const char * end_token) {
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

 TJSON_Object * json_object_init(TJSON_Value * wrapping_value_ip) {
    TJSON_Object * new_obj = parson_tainted_malloc(TJSON_Object, sizeof(TJSON_Object));
    int * g = parson_tainted_malloc(int, sizeof(int));
    *g = 10;
    if (new_obj == NULL) {
        return NULL;
    }
    new_obj->wrapping_value = wrapping_value_ip;
    new_obj->names = NULL;
    new_obj->values = NULL;
    new_obj->capacity = 0;
    new_obj->count = 0;
    return new_obj;
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

 JSON_Status json_object_resize(TJSON_Object * object, size_t new_capacity) {
    if ((object->names == NULL && object->values != NULL) ||
        (object->names != NULL && object->values == NULL) ||
        new_capacity == 0) {
            return JSONFailure; /* Shouldn't happen */
    }

     {
        char** temp_names = (char**)parson_tainted_malloc(char*, new_capacity * sizeof(char*));
        if (temp_names == NULL) {
            return JSONFailure;
        }
        TJSON_Value** temp_values = (TJSON_Value**)parson_tainted_malloc(TJSON_Value*, new_capacity * sizeof(TJSON_Value*));
        if (temp_values == NULL) {
            parson_free_unchecked(void, (void *)temp_names);
            return JSONFailure;
        }

        /* TODO: Memcpy functions below warn "cannot prove argument meets declared 
        * bounds" 1st arg truly won't prove unless new_capacity > object->count, 
        * which isn't checked here! It isn't exactly determined in the caller either.
        * This sort of means we can't prove the second arg either, since we
        * can't really know that count <= capacity. (Even if we could,
        * the compiler would have trouble with "<")
        *  This reasoning applies to both memcpy functions below. */
        if (object->names != NULL && object->values != NULL && object->count > 0) {
            memcpy((void *)temp_names, object->names, object->count * sizeof(char*));
            memcpy((void *)temp_values, object->values, object->count * sizeof(TJSON_Value*));
        }
        parson_tainted_free(char *, object->names);
        parson_tainted_free(TJSON_Value *, object->values);
        // TODO: The three statements below need to be changed atomically
        object->capacity = new_capacity;
        object->names = (char * *)temp_names;
        object->values = (TJSON_Value * *)temp_values;
    } // end _Unchecked

    return JSONSuccess;
}

 static TJSON_Value * json_object_getn_value(const TJSON_Object * object , const char * name , size_t name_len) {
    size_t i, name_length;
    for (i = 0; i < json_object_get_count(object); i++) {
        name_length = strlen(((const char *)object ->names [i ]));
        if (name_length != name_len) {
            continue;
        }
        if (strncmp((const char *)object ->names [i ],
                      (const char *)name, name_len) == 0) {
            return ((TJSON_Value *)object ->values [i ]);
        }
    }
    return NULL;
}

 JSON_Status json_object_remove_internal(TJSON_Object * object, const char * name, int free_value) {
    size_t i = 0, last_item_index = 0;
    if (object == NULL || json_object_get_value(object, name) == NULL) {
        return JSONFailure;
    }
    last_item_index = json_object_get_count(object) - 1;
    for (i = 0; i < json_object_get_count(object); i++) {
        if (strcmp(object->names[i], name) == 0) {
            parson_tainted_free(char, object->names[i]);
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

 JSON_Status json_object_dotremove_internal(TJSON_Object * object,
                                                  const char * name, int free_value) {
    TJSON_Value * temp_value = NULL;
    TJSON_Object * temp_object = NULL;
    const char * dot_pos = (const char *)strchr((const char *)name, '.');
    if (dot_pos == NULL) {
        return json_object_remove_internal(object, name, free_value);
    }
    const char * before_dot  = NULL;
     {
        before_dot = (const char *)name;
    }
    temp_value = (TJSON_Value *)json_object_getn_value((const TJSON_Object *)object, (const char *)before_dot, (size_t)(dot_pos - name));
    if (json_value_get_type(temp_value) != JSONObject) {
        return JSONFailure;
    }
    temp_object = (TJSON_Object *)json_value_get_object(temp_value);
    const char * after_dot = NULL;
     {
        after_dot = (const char *)dot_pos +1;
    }
    return json_object_dotremove_internal(temp_object, (const char *)after_dot, free_value);
}

 void json_object_free(TJSON_Object * object) {
    size_t i;
    for (i = 0; i < object->count; i++) {
        parson_tainted_free(char, object->names[i]);
        json_value_free(object->values[i]);
    }
    parson_tainted_free(char *, object->names);
    parson_tainted_free(TJSON_Value *, object->values);
    parson_tainted_free(TJSON_Object, object);
}

 TJSON_Array * json_array_init(TJSON_Value * wrapping_value) {
    TJSON_Array * new_array = parson_tainted_malloc(TJSON_Array, sizeof(TJSON_Array));
    if (new_array == NULL) {
        return NULL;
    }
    new_array->wrapping_value = wrapping_value;
    new_array->items = NULL;
    new_array->capacity = 0;
    new_array->count = 0;
    return new_array;
}

 static void json_array_free(TJSON_Array * array) {
    size_t i;
    for (i = 0; i < array->count; i++) {
        json_value_free(array->items[i]);
    }
    parson_tainted_free(TJSON_Value *, array->items);
    parson_tainted_free(TJSON_Array, array);
}

 TJSON_Value * json_value_init_string_no_copy(char * string) {
    TJSON_Value * new_value = (TJSON_Value *)parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONString;
    new_value->value.string = string;
    return new_value;
}

 static JSON_Status skip_quotes(const char * string) {
    if (*string != '\"') {
        return JSONFailure;
    }
    SKIP_CHAR(string);
    while (*string != '\"') {
        if (*string == '\0') {
            return JSONFailure;
        } else if (*string == '\\') {
            SKIP_CHAR(string);
            if (*string == '\0') {
                return JSONFailure;
            }
        }
        SKIP_CHAR(string);
    }
    SKIP_CHAR(string);
    return JSONSuccess;
}

 int  parse_utf16(const char * unprocessed ,
char * processed) {
    unsigned int cp, lead, trail;
    int parse_succeeded = 0;
    char* processed_ptr = (char*)(processed);
    const char* unprocessed_ptr = (const char*)(unprocessed);
    unprocessed_ptr++; /* skips u */
    parse_succeeded = parse_utf16_hex(unprocessed_ptr, (unsigned int *)&cp);
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
        if (unprocessed_ptr++ != (const char *)'\\' || unprocessed_ptr++ != (const char *)'u') {
            return JSONFailure;
        }
        parse_succeeded = parse_utf16_hex(unprocessed_ptr, (unsigned int *)&trail);
        if (!parse_succeeded || trail < 0xDC00 || trail > 0xDFFF) { /* valid trail surrogate? (0xDC00..0xDFFF) */
            return JSONFailure;
        }
        cp = ((((lead - 0xD800) & 0x3FF) << 10) | ((trail - 0xDC00) & 0x3FF)) + 0x010000;
        processed_ptr[0] = (((cp >> 18) & 0x07) | 0xF0); /* 11110xxx */
        processed_ptr[1] = (((cp >> 12) & 0x3F) | 0x80); /* 10xxxxxx */
        processed_ptr[2] = (((cp >> 6)  & 0x3F) | 0x80); /* 10xxxxxx */
        processed_ptr[3] = (((cp)       & 0x3F) | 0x80); /* 10xxxxxx */
        processed_ptr += 3;
    } else {
        return JSONFailure;
    }
    unprocessed_ptr += 3;
    processed = (char *)processed_ptr;
    unprocessed = (const char *)unprocessed_ptr;
    return JSONSuccess;
}

 char * get_quoted_string(const char * string,
char * (*process_string)(const char * input,size_t len)) {
    const char * string_start = string;

    size_t string_len = 0;
    /*
     * skip quotes is a mirror function
     */
    JSON_Status status = skip_quotes((const char *)string);
    if (status != JSONSuccess) {
        return NULL;
    }
    string_len = strlen(string) - strlen(string_start) - 2; /* length without quotes */
    // TODO: We can't figure this out dynamically
    const char * one_past_start  = NULL;
     {
        one_past_start = (const char *)string_start +1;
    }
    return (char *)process_string(one_past_start, string_len);
}

 TJSON_Value * parse_string_value(const char * string,
                                                      char * (*process_string)(const char * input,size_t len)) {
    TJSON_Value * value = NULL;
    char * new_string = get_quoted_string(string, process_string);
    if (new_string == NULL) {
        return NULL;
    }
    value = json_value_init_string_no_copy(new_string);
    if (value == NULL) {
        parson_tainted_free(char, new_string);
        return NULL;
    }
    return value;
}

 TJSON_Value * parse_boolean_value(const char * string) {
    size_t true_token_size = SIZEOF_TOKEN("true");
    size_t false_token_size = SIZEOF_TOKEN("false");
    if (strncmp("true", string, true_token_size) == 0) {
        string += true_token_size;
        return json_value_init_boolean(1);
    } else if (strncmp("false", string, false_token_size) == 0) {
        string += false_token_size;
        return json_value_init_boolean(0);
    }
    return NULL;
}

  TJSON_Value * parse_number_value(const char * string) {
    char * end = NULL;
    double number = 0;
    errno = 0;
    number = strtod((char *)string, (char * *)&end);
    if (errno || !is_decimal((char *)string, (size_t)(end - string))) {
        return NULL;
    }
    string = (const char *)end;
    return json_value_init_number(number);
}

 int json_serialize_to_buffer_r(const TJSON_Value * value,
                                               char * buf ,
                                               int level,
                                               int is_pretty,
                                               char * num_buf,
                                               char * buf_start ,
                                               size_t buf_len) {
    const char * key = NULL;
    const char * string = NULL;
    TJSON_Value * temp_value = NULL;
    TJSON_Array * array = NULL;
    TJSON_Object * object = NULL;

    size_t i = 0, count = 0;
    double num = 0.0;
    int written = -1, written_total = 0;

    switch (json_value_get_type(value)) {
        case JSONArray:

            array = json_value_get_array(value);

            count = json_array_get_count(array);
            APPEND_STRING("[");
            if (count > 0 && is_pretty) {
                APPEND_STRING("\n");
            }
            for (i = 0; i < count; i++) {
                if (is_pretty) {
                    APPEND_INDENT(level+1);
                }
                temp_value = json_array_get_value(array, i);
                written = json_serialize_to_buffer_r(temp_value, buf, level+1, is_pretty, num_buf, buf_start, buf_len);
                if (written < 0) {
                    return -1;
                }
                if (buf != NULL) {
                    buf += written;
                }
                written_total += written;
                if (i < (count - 1)) {
                    APPEND_STRING(",");
                }
                if (is_pretty) {
                    APPEND_STRING("\n");
                }
            }
            if (count > 0 && is_pretty) {
                APPEND_INDENT(level);
            }
            APPEND_STRING("]");
            return written_total;
        case JSONObject:
            object = json_value_get_object(value);
            count  = json_object_get_count(object);
            APPEND_STRING("{");
            if (count > 0 && is_pretty) {
                APPEND_STRING("\n");
            }
            for (i = 0; i < count; i++) {
                key = json_object_get_name(object, i);
                if (key == NULL) {
                    return -1;
                }
                if (is_pretty) {
                    APPEND_INDENT(level+1);
                }
                written = json_serialize_string(key,buf,buf_start, buf_len);
                if (written < 0) {
                    return -1;
                }
                if (buf != NULL) {
                    buf += written;
                }
                written_total += written;
                APPEND_STRING(":");
                if (is_pretty) {
                    APPEND_STRING(" ");
                }
                temp_value = json_object_get_value(object,key);
                written = json_serialize_to_buffer_r(temp_value, buf, level+1, is_pretty, num_buf, buf_start, buf_len);
                if (written < 0) {
                    return -1;
                }
                if (buf != NULL) {
                    buf += written;
                }
                written_total += written;
                if (i < (count - 1)) {
                    APPEND_STRING(",");
                }
                if (is_pretty) {
                    APPEND_STRING("\n");
                }
            }
            if (count > 0 && is_pretty) {
                APPEND_INDENT(level);
            }
            APPEND_STRING("}");
            return written_total;
        case JSONString:
            string = json_value_get_string(value);
            if (string == NULL) {
                return -1;
            }
            written = json_serialize_string(string, buf, buf_start, buf_len);
            if (written < 0) {
                return -1;
            }
            if (buf != NULL) {
                buf += written;
            }
            written_total += written;
            return written_total;
        case JSONBoolean:
            if (json_value_get_boolean(value)) {
                APPEND_STRING("true");
            } else {
                APPEND_STRING("false");
            }
            return written_total;
        case JSONNumber:
            num = json_value_get_number(value);
             {
                if (buf != NULL) {
                    /*
                     * DO NOT PERFORM CASTS INSIDE THE CHECKCBOX TYPE CASTS
                     * C4 CANT DETONATE
                     */
                    char * temp_buf = (char *)buf;
                    num_buf = (char *)temp_buf;
                }
                written = sprintf(num_buf, FLOAT_FORMAT, num);
            }
            if (written < 0) {
                return -1;
            }
            if (buf != NULL) {
                buf += written;
            }
            written_total += written;
            return written_total;
        case JSONNull:
            APPEND_STRING("null");
            return written_total;
        case JSONError:
            return -1;
        default:
            return -1;
    }
}

 int json_serialize_string(const char * str_unbounded,
                                 char * buf ,
                                 char * buf_start ,
                                 size_t buf_len) {
    size_t i = 0, len = strlen(str_unbounded);
    const char * string  = NULL;
     {
        string = (const char *)str_unbounded;
    }
    char c = '\0';
    int written = -1, written_total = 0;
    APPEND_STRING("\"");
    for (i = 0; i < len; i++) {
        c = string[i];
        switch (c) {
            case '\"': APPEND_STRING("\\\""); break;
            case '\\': APPEND_STRING("\\\\"); break;
            case '\b': APPEND_STRING("\\b"); break;
            case '\f': APPEND_STRING("\\f"); break;
            case '\n': APPEND_STRING("\\n"); break;
            case '\r': APPEND_STRING("\\r"); break;
            case '\t': APPEND_STRING("\\t"); break;
            case '\x00': APPEND_STRING("\\u0000"); break;
            case '\x01': APPEND_STRING("\\u0001"); break;
            case '\x02': APPEND_STRING("\\u0002"); break;
            case '\x03': APPEND_STRING("\\u0003"); break;
            case '\x04': APPEND_STRING("\\u0004"); break;
            case '\x05': APPEND_STRING("\\u0005"); break;
            case '\x06': APPEND_STRING("\\u0006"); break;
            case '\x07': APPEND_STRING("\\u0007"); break;
            case '\x0b': APPEND_STRING("\\u000b"); break;
            case '\x0e': APPEND_STRING("\\u000e"); break;
            case '\x0f': APPEND_STRING("\\u000f"); break;
            case '\x10': APPEND_STRING("\\u0010"); break;
            case '\x11': APPEND_STRING("\\u0011"); break;
            case '\x12': APPEND_STRING("\\u0012"); break;
            case '\x13': APPEND_STRING("\\u0013"); break;
            case '\x14': APPEND_STRING("\\u0014"); break;
            case '\x15': APPEND_STRING("\\u0015"); break;
            case '\x16': APPEND_STRING("\\u0016"); break;
            case '\x17': APPEND_STRING("\\u0017"); break;
            case '\x18': APPEND_STRING("\\u0018"); break;
            case '\x19': APPEND_STRING("\\u0019"); break;
            case '\x1a': APPEND_STRING("\\u001a"); break;
            case '\x1b': APPEND_STRING("\\u001b"); break;
            case '\x1c': APPEND_STRING("\\u001c"); break;
            case '\x1d': APPEND_STRING("\\u001d"); break;
            case '\x1e': APPEND_STRING("\\u001e"); break;
            case '\x1f': APPEND_STRING("\\u001f"); break;
            case '/':
                if (parson_escape_slashes) {
                    APPEND_STRING("\\/");  /* to make json embeddable in xml\/html */
                } else {
                    APPEND_STRING("/");
                }
                break;
            default:
                    if (buf != NULL) {
                        buf[0] = c;
                        buf += 1;
                    }
                written_total += 1;
                break;
        }
    }
    APPEND_STRING("\"");
    return written_total;
}

 static int append_indent(char * buf ,
                         int level,
                         char * buf_start ,
                         size_t buf_len) {
    int i;
    int written = -1, written_total = 0;
    for (i = 0; i < level; i++) {
      APPEND_STRING("    ");
    }
    return written_total;
}

  static int append_string(char * buf ,
const char* string,
                         char * buf_start ,
                         size_t buf_len) {
    size_t len = strlen(string);
    if (buf == NULL) {
        return (int) len;
    }

    // TODO: This does not go through properly if bounded string is a const char, as it should be
    char * boundedString  = NULL;
     {
        boundedString = (char *)string;
    }

    char * tainted_bounded_string  = parson_string_tainted_malloc(len*sizeof(char));
    strncpy(tainted_bounded_string, string, len);
    ;
    char * buf_tmp  = (char *)buf;
    memcpy(buf_tmp,
tainted_bounded_string,
                 len);
    buf[len] = '\0';
    return len;
}

 TJSON_Value * json_parse_file_with_comments(const char * filename,
TJSON_Value * (*parse_value)(const char * ,size_t)) {
    char * file_contents = read_file((const char *)filename);
    TJSON_Value * output_value = NULL;
    if (file_contents == NULL) {
        return NULL;
    }
    output_value = json_parse_string_with_comments(file_contents, parse_value);
    parson_tainted_free(char, file_contents);
    return output_value;
}

 TJSON_Value * json_parse_string_with_comments(const char * string,
        TJSON_Value * (*parse_value)(const char * ,size_t)) {
    TJSON_Value * result = NULL;
    char * string_mutable_copy = (char *)tainted_parson_strdup(string);
    if (string_mutable_copy == NULL) {
        return NULL;
    }
    remove_comments((char *)string_mutable_copy, "/*", "*/");
    remove_comments((char *)string_mutable_copy, "//", "\n");
//    _Unchecked {
//        const char* string_mutable_copy_ptr[1] = { NULL };
//        string_mutable_copy_ptr[0] = (const char*)string_mutable_copy;
        result = (TJSON_Value *)parse_value(string_mutable_copy, 0);
        parson_tainted_free(char, string_mutable_copy);
        return result;
  //  }
}

 TJSON_Value * json_object_get_value  (const TJSON_Object * object, const char * name) {
    if (object == NULL || name == NULL) {
        return NULL;
    }
    size_t nameLen = strlen(name);
    const char * name_with_len  = NULL;
     {
        name_with_len = (const char *)name;
    }
    return json_object_getn_value(object, name_with_len, nameLen);
}

 TJSON_Value * json_object_dotget_value  (const TJSON_Object * object , const char * name) {
    const char * dot_position = strchr(name, '.');
    if (!dot_position) {
        return json_object_get_value(object, name);
    }
    const char * after_dot  = NULL;
     {
        after_dot = (const char *)name;
    }
    object = json_value_get_object(json_object_getn_value(object, after_dot, (size_t)(dot_position - name)));
    const char * one_past_dot  = NULL;
     {
        one_past_dot = (const char *)dot_position +1;
    }
    return json_object_dotget_value(object, one_past_dot);
}

 double json_object_dotget_number (const TJSON_Object * object, const char * name) {
    return json_value_get_number(json_object_dotget_value(object, name));
}

 TJSON_Array * json_object_dotget_array  (const TJSON_Object * object, const char * name ) {
    return json_value_get_array(json_object_dotget_value(object, name));
}

 size_t json_object_get_count   (const TJSON_Object *object){
    return object ? object->count : 0;
}

 const char * json_object_get_name    (const TJSON_Object * object, size_t index) {
    if (object == NULL || index >= json_object_get_count(object)) {
        return NULL;
    }
    //int str_len = t_strlen(object->names[index]);
    //return _Tainted_Assume_bounds_cast<_TNt_array_ptr<const char>>(object->names[index], count(str_len));
    return object->names[index];
}

 TJSON_Value * json_object_get_value_at(const TJSON_Object * object, size_t index){
    if (object == NULL || index >= json_object_get_count(object)) {
        return NULL;
    }
    return (TJSON_Value *)object ->values [index ];
}

 TJSON_Value * json_object_get_wrapping_value(const TJSON_Object * object) {
    return object->wrapping_value;
}

 TJSON_Value * json_array_get_value  (const TJSON_Array * array, size_t index)
{
    if (array == NULL || index >= json_array_get_count(array)) {
        return NULL;
    }
    return array->items[index];
}

 size_t json_array_get_count  (const TJSON_Array * array) {
    return array ? array->count : 0;
}

 JSON_Value_Type json_value_get_type   (const TJSON_Value * value){
    return value ? value->type : JSONError;
}

 TJSON_Object * json_value_get_object(const TJSON_Value * value) {
    return json_value_get_type(value) == JSONObject ? value->value.object : NULL;
}

 JSON_Value_Type json_value_get_type_tainted(const const TJSON_Value * value) {
return value ? value->type : JSONError;
}

 TJSON_Object * json_value_get_object_tainted(const TJSON_Value * value) {
return json_value_get_type_tainted(value) == JSONObject ? value->value.object : NULL;
}

 TJSON_Array * json_value_get_array  (const TJSON_Value * value) {
    return json_value_get_type(value) == JSONArray ? value->value.array : NULL;
}

 const char *json_value_get_string (const TJSON_Value * value) {
    return json_value_get_type(value) == JSONString ? value->value.string : NULL;
}

 double json_value_get_number (const TJSON_Value * value) {
    return json_value_get_type(value) == JSONNumber ? value->value.number : 0;
}

 int             json_value_get_boolean(const TJSON_Value * value){
    return json_value_get_type(value) == JSONBoolean ? value->value.boolean : -1;
}

 void json_value_free(TJSON_Value * value) {
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

 JSON_Status json_serialize_to_buffer_pretty(const TJSON_Value * value, char * buf , size_t buf_size_in_bytes) {
    int written = -1;
    size_t needed_size_in_bytes = json_serialization_size_pretty(value);
    if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) {
        return JSONFailure;
    }
    written = json_serialize_to_buffer_r(value, buf, 0, 1, NULL, buf, buf_size_in_bytes);
    if (written < 0) {
        buf[0] = '\0';
        return JSONFailure;
    }
    buf[written] = '\0';
    return JSONSuccess;
}

 size_t      json_serialization_size_pretty(const TJSON_Value * value) {
    //char num_buf _Nt_checked[NUM_BUF_SIZE]; /* recursively allocating buffer on stack is a bad idea, so let's do it only once */
    /*
     * There is no seperate partition on static space for tainted memory
     */
    char * num_buf = parson_string_tainted_malloc(NUM_BUF_SIZE);
    int res = json_serialize_to_buffer_r((const TJSON_Value *)value, NULL, 0, 1, num_buf, NULL, 0);
    return res < 0 ? 0 : (size_t)(res + 1);
}

 JSON_Status json_serialize_to_file_pretty(const TJSON_Value * value, const char * filename) {
    JSON_Status return_code = JSONSuccess;
    FILE * fp = NULL;
    char * serialized_string = json_serialize_to_string_pretty(value);
    if (serialized_string == NULL) {
        return JSONFailure;
    }
    fp = fopen((char*)filename, "w");
    if (fp == NULL) {
        json_free_serialized_string(serialized_string);
        return JSONFailure;
    }
    if (fputs((const char *)serialized_string, fp) == EOF) {
        return_code = JSONFailure;
    }
    if (fclose(fp) == EOF) {
        return_code = JSONFailure;
    }
    json_free_serialized_string(serialized_string);
    return return_code;
}

 char * json_serialize_to_string_pretty(const TJSON_Value * value) {
    JSON_Status serialization_result = JSONFailure;
    size_t buf_size_bytes = json_serialization_size_pretty(value);
    char * buf  = NULL;
    if (buf_size_bytes == 0) {
        return NULL;
    }
    buf = parson_string_tainted_malloc(buf_size_bytes);
    if (buf == NULL) {
        return NULL;
    }
    serialization_result = json_serialize_to_buffer_pretty(value, buf, buf_size_bytes);
    if (serialization_result == JSONFailure) {
        json_free_serialized_string((char *)buf);
        return NULL;
    }
    return buf;
}

 void        json_free_serialized_string(const char * string) {
    parson_tainted_free(char, string);
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
#include "Taintedparson.h"
