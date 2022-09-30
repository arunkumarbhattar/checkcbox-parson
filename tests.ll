; ModuleID = 'tests.c'
source_filename = "tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Tstruct.json_value_t_t = type opaque
%Tstruct.json_object_t_t = type opaque
%Tstruct.json_array_t_t = type opaque

@counted_malloc = internal global i8* (i64)* null, align 8
@counted_free = internal global void (i8*)* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Tests failed: %d\0A\00", align 1
@tests_failed = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Tests passed: %d\0A\00", align 1
@tests_passed = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %-72s-\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"(val_tainted = json_parse_file(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt\22)) != NULL\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" FAIL\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted)\00", align 1
@.str.8 = private unnamed_addr constant [96 x i8] c"json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted)\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"(val_tainted = json_parse_file(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_2.txt\22)) == NULL\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_1_2.txt\00", align 1
@.str.11 = private unnamed_addr constant [102 x i8] c"(val_tainted = json_parse_file(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt\22)) != NULL\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt\00", align 1
@.str.13 = private unnamed_addr constant [130 x i8] c"(val_tainted = json_parse_file_with_comments(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt\22, &parse_value)) != NULL\00", align 1
@.str.14 = private unnamed_addr constant [130 x i8] c"(val_tainted = json_parse_file_with_comments(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt\22, &parse_value)) != NULL\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"root_value\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"json_value_get_type(root_value) == JSONObject\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"json_object_has_value(root_object, value_type)\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"_string\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"!json_object_has_value(root_object, value_type)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONObject)\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"string array\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"!json_object_has_value_of_type(root_object,value_type, JSONObject)\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"json_object_has_value_of_type(root_object,value_type , JSONArray)\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONArray)\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"positive one\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.30 = private unnamed_addr constant [67 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"boolean true\00", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"object.nested array\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"json_object_dothas_value(root_object, value_type)\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"_object.nested array\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"!json_object_dothas_value(root_object, value_type)\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"object.nested object\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONObject)\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONObject)\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONArray)\00", align 1
@.str.46 = private unnamed_addr constant [70 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONArray)\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"object.nested string\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"object.nested number\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"_object.nested whatever\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"object.nested true\00", align 1
@.str.55 = private unnamed_addr constant [71 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.56 = private unnamed_addr constant [72 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"object.nested null\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.59 = private unnamed_addr constant [69 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.60 = private unnamed_addr constant [70 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22lorem ipsum\22)\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"lorem ipsum\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"utf string\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"utf-8 string\00", align 1
@.str.64 = private unnamed_addr constant [74 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22\E3\81\82\E3\81\84\E3\81\86\E3\81\88\E3\81\8A\22)\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"\E3\81\82\E3\81\84\E3\81\86\E3\81\88\E3\81\8A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"surrogate string\00", align 1
@.str.67 = private unnamed_addr constant [81 x i8] c"STREQ(json_object_get_string(root_object,value_type), \22lorem\F0\9D\84\9Eipsum\F0\9D\8D\A7lorem\22)\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"lorem\F0\9D\84\9Eipsum\F0\9D\8D\A7lorem\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"json_object_get_number(root_object, value_type) == 1.0\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"negative one\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"json_object_get_number(root_object, value_type) == -1.0\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"hard to parse number\00", align 1
@.str.73 = private unnamed_addr constant [78 x i8] c"fabs(json_object_get_number(root_object, value_type) - (-0.000314)) < EPSILON\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"json_object_get_boolean(root_object, value_type) == 1\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"boolean false\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"json_object_get_boolean(root_object, value_type) == 0\00", align 1
@.str.77 = private unnamed_addr constant [80 x i8] c"json_value_get_type(json_object_get_value(root_object, value_type)) == JSONNull\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"STREQ(json_array_get_string(array, 0), \22lorem\22)\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"lorem\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"STREQ(json_array_get_string(array, 1), \22ipsum\22)\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"ipsum\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"x^2 array\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"json_array_get_number(array, i) == (i * i)\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"non existent array\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"json_object_get_array(root_object, value_type) == NULL\00", align 1
@.str.86 = private unnamed_addr constant [65 x i8] c"STREQ(json_object_dotget_string(root_object, value_type), \22str\22)\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.88 = private unnamed_addr constant [57 x i8] c"json_object_dotget_boolean(root_object, value_type) == 1\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"object.nested false\00", align 1
@.str.90 = private unnamed_addr constant [57 x i8] c"json_object_dotget_boolean(root_object, value_type) == 0\00", align 1
@.str.91 = private unnamed_addr constant [58 x i8] c"json_object_dotget_value(root_object, value_type) != NULL\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"json_object_dotget_number(root_object, value_type) == 123\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"should.be.null\00", align 1
@.str.94 = private unnamed_addr constant [58 x i8] c"json_object_dotget_value(root_object, value_type) == NULL\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"should.be.null.\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.97 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"array != NULL\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"json_array_get_count(array) > 1\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"STREQ(json_array_get_string(array, 0), value_type)\00", align 1
@.str.101 = private unnamed_addr constant [51 x i8] c"STREQ(json_array_get_string(array, 1), value_type)\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"/**/\00", align 1
@.str.103 = private unnamed_addr constant [66 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22comment\22)\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.107 = private unnamed_addr constant [97 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22https://www.example.com/search?q=12345\22)\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"https://www.example.com/search?q=12345\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"escaped chars\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22\\\22 \\\\ /\22)\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"\22 \\ /\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"empty object\00", align 1
@.str.113 = private unnamed_addr constant [56 x i8] c"json_object_get_object(root_object, value_type) != NULL\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"empty array\00", align 1
@.str.115 = private unnamed_addr constant [55 x i8] c"json_object_get_array(root_object, value_type) != NULL\00", align 1
@.str.116 = private unnamed_addr constant [58 x i8] c"json_object_get_wrapping_value(root_object) == root_value\00", align 1
@.str.117 = private unnamed_addr constant [52 x i8] c"json_array_get_wrapping_value(array) == array_value\00", align 1
@.str.118 = private unnamed_addr constant [49 x i8] c"json_value_get_parent(array_value) == root_value\00", align 1
@.str.119 = private unnamed_addr constant [42 x i8] c"json_value_get_parent(root_value) == NULL\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt\00", align 1
@.str.121 = private unnamed_addr constant [87 x i8] c"json_value_equals(root_value, json_parse_string(json_serialize_to_string(root_value)))\00", align 1
@.str.122 = private unnamed_addr constant [94 x i8] c"json_value_equals(root_value, json_parse_string(json_serialize_to_string_pretty(root_value)))\00", align 1
@.str.123 = private unnamed_addr constant [66 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_2_comments.txt\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"Testing valid strings:\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"{\22lorem\22:\22ipsum\22}\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"json_parse_string(filename) != NULL\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"[\22lorem\22]\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"\22string\22\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"Test UTF-16 parsing:\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"\22\\u0024x\22\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"STREQ(temp_string, \22$x\22)\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"$x\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"\22\\u00A2x\22\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"STREQ(temp_string, \22\C2\A2x\22)\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"\C2\A2x\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"\22\\u20ACx\22\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"STREQ(temp_string, \22\E2\82\ACx\22)\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"\E2\82\ACx\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"\22\\uD801\\uDC37x\22\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"STREQ(temp_string, \22\F0\90\90\B7x\22)\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"\F0\90\90\B7x\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"Testing invalid strings:\00", align 1
@malloc_count = internal global i32 0, align 4
@.str.146 = private unnamed_addr constant [32 x i8] c"json_parse_string(NULL) == NULL\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"json_parse_string(filename) == NULL\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"[\22lorem\22,]\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"{\22lorem\22:\22ipsum\22,}\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"{lorem:ipsum}\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"[,]\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"[,\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"{\22a\22:0,\22a\22:0}\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"{:,}\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"{,}\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"{,\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"{:\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"{:\22no name\22}\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"[,\22no first value\22]\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"{\22key\22\22value\22}\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"{\22a\22}\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"[\22\\u00zz\22]\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"[\22\\u00\22]\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"[\22\\u\22]\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"[\22\\\22]\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"[\22\22\22]\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"[\22\00\22]\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"[\22\07\22]\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"[\22\08\22]\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"[\22\09\22]\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"[\22\0A\22]\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"[\22\0C\22]\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"[\22\0D\22]\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"[0x2]\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"[0X2]\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"[07]\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"[0070]\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"[07.0]\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"[-07]\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"[-007]\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"[-07.0]\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"[\22\\uDF67\\uD834\22]\00", align 1
@.str.188 = private unnamed_addr constant [25 x i8] c"[1.7976931348623157e309]\00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c"[-1.7976931348623157e309]\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"malloc_count == 0\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"Testing %s:\0A\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"a_copy != NULL\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"json_value_equals(a, a_copy)\00", align 1
@.str.195 = private unnamed_addr constant [57 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_5.txt\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"val != NULL\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"John\00", align 1
@.str.200 = private unnamed_addr constant [63 x i8] c"json_object_set_string(obj, string_1, string_2) == JSONSuccess\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"Doe\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.204 = private unnamed_addr constant [57 x i8] c"json_object_set_number(obj, string_1, 25) == JSONSuccess\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"registered\00", align 1
@.str.206 = private unnamed_addr constant [57 x i8] c"json_object_set_boolean(obj, string_1, 1) == JSONSuccess\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"interests\00", align 1
@.str.208 = private unnamed_addr constant [77 x i8] c"json_object_set_value(obj, string_1, json_value_init_array()) == JSONSuccess\00", align 1
@.str.209 = private unnamed_addr constant [22 x i8] c"interests_arr != NULL\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"Writing\00", align 1
@.str.211 = private unnamed_addr constant [65 x i8] c"json_array_append_string(interests_arr, string_1) == JSONSuccess\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"Mountain Biking\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"Reading\00", align 1
@.str.214 = private unnamed_addr constant [69 x i8] c"json_array_replace_string(interests_arr, 0, string_1) == JSONSuccess\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"favorites.color\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.217 = private unnamed_addr constant [66 x i8] c"json_object_dotset_string(obj, string_1, string_2) == JSONSuccess\00", align 1
@.str.218 = private unnamed_addr constant [16 x i8] c"favorites.sport\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"favorites.fruit\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.222 = private unnamed_addr constant [52 x i8] c"json_object_dotremove(obj, string_1) == JSONSuccess\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"windows path\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"C:\\Windows\\Path\00", align 1
@.str.225 = private unnamed_addr constant [38 x i8] c"json_value_equals(val_from_file, val)\00", align 1
@.str.226 = private unnamed_addr constant [59 x i8] c"json_object_set_string(obj, NULL, string_1) == JSONFailure\00", align 1
@.str.227 = private unnamed_addr constant [59 x i8] c"json_object_set_string(obj, string_1, NULL) == JSONFailure\00", align 1
@.str.228 = private unnamed_addr constant [55 x i8] c"json_object_set_string(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.229 = private unnamed_addr constant [54 x i8] c"json_object_set_value(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.230 = private unnamed_addr constant [62 x i8] c"json_object_dotset_string(obj, NULL, string_1) == JSONFailure\00", align 1
@.str.231 = private unnamed_addr constant [62 x i8] c"json_object_dotset_string(obj, string_1, NULL) == JSONFailure\00", align 1
@.str.232 = private unnamed_addr constant [58 x i8] c"json_object_dotset_string(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.233 = private unnamed_addr constant [57 x i8] c"json_object_dotset_value(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.234 = private unnamed_addr constant [56 x i8] c"json_array_append_string(NULL, string_1) == JSONFailure\00", align 1
@.str.235 = private unnamed_addr constant [60 x i8] c"json_array_append_value(interests_arr, NULL) == JSONFailure\00", align 1
@.str.236 = private unnamed_addr constant [51 x i8] c"json_array_append_value(NULL, NULL) == JSONFailure\00", align 1
@.str.237 = private unnamed_addr constant [64 x i8] c"json_array_replace_value(interests_arr, 0, NULL) == JSONFailure\00", align 1
@.str.238 = private unnamed_addr constant [60 x i8] c"json_array_replace_string(NULL, 0, string_1) == JSONFailure\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"not existing\00", align 1
@.str.240 = private unnamed_addr constant [71 x i8] c"json_array_replace_string(interests_arr, 100, string_1) == JSONFailure\00", align 1
@.str.241 = private unnamed_addr constant [84 x i8] c"json_array_append_string(json_object_get_array(obj, string_1), NULL) == JSONFailure\00", align 1
@.str.242 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 0) == JSONSuccess\00", align 1
@.str.243 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 1) == JSONSuccess\00", align 1
@.str.244 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 0) == JSONFailure\00", align 1
@.str.245 = private unnamed_addr constant [64 x i8] c"json_object_set_value(obj, string_1, val_parent) == JSONSuccess\00", align 1
@.str.246 = private unnamed_addr constant [64 x i8] c"json_object_set_value(obj, string_1, val_parent) == JSONFailure\00", align 1
@.str.247 = private unnamed_addr constant [66 x i8] c"json_array_append_value(interests_arr, val_parent) == JSONSuccess\00", align 1
@.str.248 = private unnamed_addr constant [66 x i8] c"json_array_append_value(interests_arr, val_parent) == JSONFailure\00", align 1
@.str.249 = private unnamed_addr constant [70 x i8] c"json_array_replace_value(interests_arr, 0, val_parent) == JSONSuccess\00", align 1
@.str.250 = private unnamed_addr constant [70 x i8] c"json_array_replace_value(interests_arr, 0, val_parent) == JSONFailure\00", align 1
@.str.251 = private unnamed_addr constant [48 x i8] c"json_object_remove(obj,string_1) == JSONSuccess\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"correct string\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"\CE\BA\E1\BD\B9\CF\83\CE\BC\CE\B5\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"boundary 1\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"\ED\9F\BF\00", align 1
@.str.256 = private unnamed_addr constant [11 x i8] c"boundary 2\00", align 1
@.str.257 = private unnamed_addr constant [4 x i8] c"\EE\80\80\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"boundary 3\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"boundary 4\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"\F4\8F\BF\BF\00", align 1
@.str.262 = private unnamed_addr constant [24 x i8] c"first continuation byte\00", align 1
@.str.263 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.264 = private unnamed_addr constant [63 x i8] c"json_object_set_string(obj, string_1, string_2) == JSONFailure\00", align 1
@.str.265 = private unnamed_addr constant [23 x i8] c"last continuation byte\00", align 1
@.str.266 = private unnamed_addr constant [2 x i8] c"\BF\00", align 1
@.str.267 = private unnamed_addr constant [22 x i8] c"impossible sequence 1\00", align 1
@.str.268 = private unnamed_addr constant [2 x i8] c"\FE\00", align 1
@.str.269 = private unnamed_addr constant [22 x i8] c"impossible sequence 2\00", align 1
@.str.270 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.271 = private unnamed_addr constant [22 x i8] c"impossible sequence 3\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"\FE\FE\FF\FF\00", align 1
@.str.273 = private unnamed_addr constant [11 x i8] c"overlong 1\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"\C0\AF\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"overlong 2\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"\C1\BF\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"overlong 3\00", align 1
@.str.278 = private unnamed_addr constant [4 x i8] c"\E0\80\AF\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"overlong 4\00", align 1
@.str.280 = private unnamed_addr constant [4 x i8] c"\E0\9F\BF\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"overlong 5\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"\F0\80\80\AF\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"overlong 6\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"\F0\8F\BF\BF\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"overlong 7\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"overlong null 1\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"\C0\80\00", align 1
@.str.288 = private unnamed_addr constant [16 x i8] c"overlong null 2\00", align 1
@.str.289 = private unnamed_addr constant [4 x i8] c"\E0\80\80\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"overlong null 3\00", align 1
@.str.291 = private unnamed_addr constant [5 x i8] c"\F0\80\80\80\00", align 1
@.str.292 = private unnamed_addr constant [16 x i8] c"overlong null 4\00", align 1
@.str.293 = private unnamed_addr constant [6 x i8] c"\F8\80\80\80\80\00", align 1
@.str.294 = private unnamed_addr constant [16 x i8] c"overlong null 5\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"\FC\80\80\80\80\80\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"single surrogate 1\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"\ED\A0\80\00", align 1
@.str.298 = private unnamed_addr constant [19 x i8] c"single surrogate 2\00", align 1
@.str.299 = private unnamed_addr constant [4 x i8] c"\ED\AF\BF\00", align 1
@.str.300 = private unnamed_addr constant [19 x i8] c"single surrogate 3\00", align 1
@.str.301 = private unnamed_addr constant [4 x i8] c"\ED\BF\BF\00", align 1
@.str.302 = private unnamed_addr constant [16 x i8] c"[1, 2, 3, 4, 5]\00", align 1
@.str.303 = private unnamed_addr constant [13 x i8] c"[1, 2, 4, 5]\00", align 1
@.str.304 = private unnamed_addr constant [64 x i8] c"json_value_equals(remove_test_val, json_parse_string(string_1))\00", align 1
@.str.305 = private unnamed_addr constant [10 x i8] c"[2, 4, 5]\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"[2, 4]\00", align 1
@.str.307 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.308 = private unnamed_addr constant [65 x i8] c"json_object_set_number(obj, string_1, 0.0 / zero) == JSONFailure\00", align 1
@.str.309 = private unnamed_addr constant [65 x i8] c"json_object_set_number(obj,string_1 , 1.0 / zero) == JSONFailure\00", align 1
@.str.310 = private unnamed_addr constant [24 x i8] c"json_value_equals(a, b)\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"eki\00", align 1
@.str.312 = private unnamed_addr constant [25 x i8] c"!json_value_equals(a, b)\00", align 1
@.str.313 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@.str.314 = private unnamed_addr constant [52 x i8] c"json_validate(schema, val_from_file) == JSONSuccess\00", align 1
@.str.315 = private unnamed_addr constant [52 x i8] c"json_validate(schema, val_from_file) == JSONFailure\00", align 1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @string_malloc(i64 %sz) #0 {
entry:
  %retval = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 4
  store i64 %sz, i64* %sz.addr, align 8
  %0 = load i64, i64* %sz.addr, align 8
  %cmp = icmp uge i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sz.addr, align 8
  %add = add i64 %1, 1
  %call = call i8* @t_malloc(i64 %add)
  %2 = call i32 @c_TPtoO(i8* %call)
  %3 = inttoptr i32 %2 to i8*
  %4 = ptrtoint i8* %3 to i32
  %5 = bitcast i8** %p to i32*
  store i32 %4, i32* %5, align 4
  %6 = load i8*, i8** %p, align 4
  %7 = ptrtoint i8* %6 to i32
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 4
  %9 = load i64, i64* %sz.addr, align 8
  %10 = ptrtoint i8* %8 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then2
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %9
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

_Dynamic_check.failed:                            ; preds = %if.then2
  call void @llvm.trap() #6
  unreachable

if.end3:                                          ; preds = %_Dynamic_check.succeeded, %if.end
  %13 = load i8*, i8** %p, align 4
  store i8* %13, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

declare dso_local i8* @t_malloc(i64) #1

declare i32 @c_TPtoO(i8*)

declare i8* @c_fetch_pointer_from_offset(i32)

declare i1 @c_isTaintedPointerToTaintedMem(i8*)

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i8* (i64)*, i8* (i64)** @counted_malloc, align 8
  %1 = load void (i8*)*, void (i8*)** @counted_free, align 8
  call void @json_set_allocation_functions(i8* (i64)* %0, void (i8*)* %1)
  call void @test_suite_1()
  call void @test_suite_2_no_comments()
  call void @test_suite_2_with_comments()
  call void @test_suite_3()
  call void @test_suite_4()
  call void @test_suite_5()
  call void @test_suite_6()
  call void @test_suite_7()
  %2 = load i32, i32* @tests_failed, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* @tests_passed, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  ret i32 0
}

declare dso_local void @json_set_allocation_functions(i8* (i64)*, void (i8*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_1() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 0, i32* %0, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %1 = bitcast %Tstruct.json_value_t_t* %call1 to i8*
  %2 = call i32 @c_TPtoO(i8* %1)
  %3 = inttoptr i32 %2 to %Tstruct.json_value_t_t*
  %4 = ptrtoint %Tstruct.json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 %4, i32* %5, align 4
  %6 = ptrtoint %Tstruct.json_value_t_t* %3 to i32
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %7 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %8 = load i32, i32* @tests_failed, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %10 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %13 = bitcast i8* %11 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %13)
  %14 = call i32 @c_TPtoO(i8* %call6)
  %15 = inttoptr i32 %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %17)
  %19 = bitcast %Tstruct.json_value_t_t* %call9 to i8*
  %20 = call i32 @c_TPtoO(i8* %19)
  %21 = inttoptr i32 %20 to %Tstruct.json_value_t_t*
  %22 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %23 = ptrtoint %Tstruct.json_value_t_t* %21 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %26 = bitcast i8* %24 to %Tstruct.json_value_t_t*
  %27 = ptrtoint %Tstruct.json_value_t_t* %22 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %30 = bitcast i8* %28 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %26, %Tstruct.json_value_t_t* %30)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then15, label %if.else18

if.then15:                                        ; preds = %_Dynamic_check.succeeded13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* @tests_passed, align 4
  %inc17 = add nsw i32 %31, 1
  store i32 %inc17, i32* @tests_passed, align 4
  br label %if.end21

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #6
  unreachable

if.else18:                                        ; preds = %_Dynamic_check.succeeded13
  %call19 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @tests_failed, align 4
  %inc20 = add nsw i32 %32, 1
  store i32 %inc20, i32* @tests_failed, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %33 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %34 = ptrtoint %Tstruct.json_value_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end21
  %37 = bitcast i8* %35 to %Tstruct.json_value_t_t*
  %call25 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %37)
  %38 = call i32 @c_TPtoO(i8* %call25)
  %39 = inttoptr i32 %38 to i8*
  %40 = ptrtoint i8* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %call28 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %41)
  %43 = bitcast %Tstruct.json_value_t_t* %call28 to i8*
  %44 = call i32 @c_TPtoO(i8* %43)
  %45 = inttoptr i32 %44 to %Tstruct.json_value_t_t*
  %46 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %47 = ptrtoint %Tstruct.json_value_t_t* %45 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %50 = bitcast i8* %48 to %Tstruct.json_value_t_t*
  %51 = ptrtoint %Tstruct.json_value_t_t* %46 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded30
  %54 = bitcast i8* %52 to %Tstruct.json_value_t_t*
  %call33 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %50, %Tstruct.json_value_t_t* %54)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %_Dynamic_check.succeeded32
  %call36 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* @tests_passed, align 4
  %inc37 = add nsw i32 %55, 1
  store i32 %inc37, i32* @tests_passed, align 4
  br label %if.end41

_Dynamic_check.failed23:                          ; preds = %if.end21
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #6
  unreachable

if.else38:                                        ; preds = %_Dynamic_check.succeeded32
  %call39 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32, i32* @tests_failed, align 4
  %inc40 = add nsw i32 %56, 1
  store i32 %inc40, i32* @tests_failed, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  %57 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %58 = bitcast %Tstruct.json_value_t_t* %57 to i8*
  %59 = call i32 @c_TPtoO(i8* %58)
  %60 = call i32 @c_TPtoO(i8* null)
  %tobool42 = icmp ne i32 %59, %60
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end41
  %61 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %62 = ptrtoint %Tstruct.json_value_t_t* %61 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then43
  %65 = bitcast i8* %63 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %65)
  br label %if.end46

_Dynamic_check.failed44:                          ; preds = %if.then43
  call void @llvm.trap() #6
  unreachable

if.end46:                                         ; preds = %_Dynamic_check.succeeded45, %if.end41
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  %call48 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %66 = bitcast %Tstruct.json_value_t_t* %call48 to i8*
  %67 = call i32 @c_TPtoO(i8* %66)
  %68 = inttoptr i32 %67 to %Tstruct.json_value_t_t*
  %69 = ptrtoint %Tstruct.json_value_t_t* %68 to i32
  %70 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 %69, i32* %70, align 4
  %71 = ptrtoint %Tstruct.json_value_t_t* %68 to i32
  %cmp49 = icmp eq i32 %71, 0
  br i1 %cmp49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end46
  %call51 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @tests_passed, align 4
  %inc52 = add nsw i32 %72, 1
  store i32 %inc52, i32* @tests_passed, align 4
  br label %if.end56

if.else53:                                        ; preds = %if.end46
  %call54 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @tests_failed, align 4
  %inc55 = add nsw i32 %73, 1
  store i32 %inc55, i32* @tests_failed, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then50
  %74 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %75 = bitcast %Tstruct.json_value_t_t* %74 to i8*
  %76 = call i32 @c_TPtoO(i8* %75)
  %77 = call i32 @c_TPtoO(i8* null)
  %tobool57 = icmp ne i32 %76, %77
  br i1 %tobool57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end56
  %78 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %79 = ptrtoint %Tstruct.json_value_t_t* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %if.then58
  %82 = bitcast i8* %80 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %82)
  br label %if.end61

_Dynamic_check.failed59:                          ; preds = %if.then58
  call void @llvm.trap() #6
  unreachable

if.end61:                                         ; preds = %_Dynamic_check.succeeded60, %if.end56
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 125, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.11, i64 0, i64 0))
  %call63 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  %83 = bitcast %Tstruct.json_value_t_t* %call63 to i8*
  %84 = call i32 @c_TPtoO(i8* %83)
  %85 = inttoptr i32 %84 to %Tstruct.json_value_t_t*
  %86 = ptrtoint %Tstruct.json_value_t_t* %85 to i32
  %87 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 %86, i32* %87, align 4
  %88 = ptrtoint %Tstruct.json_value_t_t* %85 to i32
  %cmp64 = icmp ne i32 %88, 0
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.end61
  %call66 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @tests_passed, align 4
  %inc67 = add nsw i32 %89, 1
  store i32 %inc67, i32* @tests_passed, align 4
  br label %if.end71

if.else68:                                        ; preds = %if.end61
  %call69 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* @tests_failed, align 4
  %inc70 = add nsw i32 %90, 1
  store i32 %inc70, i32* @tests_failed, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then65
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %91 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %92 = ptrtoint %Tstruct.json_value_t_t* %91 to i32
  %93 = call i8* @c_fetch_pointer_from_offset(i32 %92)
  %94 = call i1 @c_isTaintedPointerToTaintedMem(i8* %93)
  br i1 %94, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end71
  %95 = bitcast i8* %93 to %Tstruct.json_value_t_t*
  %call75 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %95)
  %96 = call i32 @c_TPtoO(i8* %call75)
  %97 = inttoptr i32 %96 to i8*
  %98 = ptrtoint i8* %97 to i32
  %99 = call i8* @c_fetch_pointer_from_offset(i32 %98)
  %100 = call i1 @c_isTaintedPointerToTaintedMem(i8* %99)
  br i1 %100, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded74
  %call78 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %99)
  %101 = bitcast %Tstruct.json_value_t_t* %call78 to i8*
  %102 = call i32 @c_TPtoO(i8* %101)
  %103 = inttoptr i32 %102 to %Tstruct.json_value_t_t*
  %104 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %105 = ptrtoint %Tstruct.json_value_t_t* %103 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded77
  %108 = bitcast i8* %106 to %Tstruct.json_value_t_t*
  %109 = ptrtoint %Tstruct.json_value_t_t* %104 to i32
  %110 = call i8* @c_fetch_pointer_from_offset(i32 %109)
  %111 = call i1 @c_isTaintedPointerToTaintedMem(i8* %110)
  br i1 %111, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %112 = bitcast i8* %110 to %Tstruct.json_value_t_t*
  %call83 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %108, %Tstruct.json_value_t_t* %112)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %_Dynamic_check.succeeded82
  %call86 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @tests_passed, align 4
  %inc87 = add nsw i32 %113, 1
  store i32 %inc87, i32* @tests_passed, align 4
  br label %if.end91

_Dynamic_check.failed73:                          ; preds = %if.end71
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.succeeded77
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #6
  unreachable

if.else88:                                        ; preds = %_Dynamic_check.succeeded82
  %call89 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @tests_failed, align 4
  %inc90 = add nsw i32 %114, 1
  store i32 %inc90, i32* @tests_failed, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then85
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %115 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %116 = ptrtoint %Tstruct.json_value_t_t* %115 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %if.end91
  %119 = bitcast i8* %117 to %Tstruct.json_value_t_t*
  %call95 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %119)
  %120 = call i32 @c_TPtoO(i8* %call95)
  %121 = inttoptr i32 %120 to i8*
  %122 = ptrtoint i8* %121 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded94
  %call98 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %123)
  %125 = bitcast %Tstruct.json_value_t_t* %call98 to i8*
  %126 = call i32 @c_TPtoO(i8* %125)
  %127 = inttoptr i32 %126 to %Tstruct.json_value_t_t*
  %128 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %129 = ptrtoint %Tstruct.json_value_t_t* %127 to i32
  %130 = call i8* @c_fetch_pointer_from_offset(i32 %129)
  %131 = call i1 @c_isTaintedPointerToTaintedMem(i8* %130)
  br i1 %131, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %_Dynamic_check.succeeded97
  %132 = bitcast i8* %130 to %Tstruct.json_value_t_t*
  %133 = ptrtoint %Tstruct.json_value_t_t* %128 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %_Dynamic_check.succeeded100
  %136 = bitcast i8* %134 to %Tstruct.json_value_t_t*
  %call103 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %132, %Tstruct.json_value_t_t* %136)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then105, label %if.else108

if.then105:                                       ; preds = %_Dynamic_check.succeeded102
  %call106 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* @tests_passed, align 4
  %inc107 = add nsw i32 %137, 1
  store i32 %inc107, i32* @tests_passed, align 4
  br label %if.end111

_Dynamic_check.failed93:                          ; preds = %if.end91
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded94
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed99:                          ; preds = %_Dynamic_check.succeeded97
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed101:                         ; preds = %_Dynamic_check.succeeded100
  call void @llvm.trap() #6
  unreachable

if.else108:                                       ; preds = %_Dynamic_check.succeeded102
  %call109 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i32, i32* @tests_failed, align 4
  %inc110 = add nsw i32 %138, 1
  store i32 %inc110, i32* @tests_failed, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %if.then105
  %139 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %140 = bitcast %Tstruct.json_value_t_t* %139 to i8*
  %141 = call i32 @c_TPtoO(i8* %140)
  %142 = call i32 @c_TPtoO(i8* null)
  %tobool112 = icmp ne i32 %141, %142
  br i1 %tobool112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end111
  %143 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %144 = ptrtoint %Tstruct.json_value_t_t* %143 to i32
  %145 = call i8* @c_fetch_pointer_from_offset(i32 %144)
  %146 = call i1 @c_isTaintedPointerToTaintedMem(i8* %145)
  br i1 %146, label %_Dynamic_check.succeeded115, label %_Dynamic_check.failed114

_Dynamic_check.succeeded115:                      ; preds = %if.then113
  %147 = bitcast i8* %145 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %147)
  br label %if.end116

_Dynamic_check.failed114:                         ; preds = %if.then113
  call void @llvm.trap() #6
  unreachable

if.end116:                                        ; preds = %_Dynamic_check.succeeded115, %if.end111
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 131, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.13, i64 0, i64 0))
  %call118 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  %148 = bitcast %Tstruct.json_value_t_t* %call118 to i8*
  %149 = call i32 @c_TPtoO(i8* %148)
  %150 = inttoptr i32 %149 to %Tstruct.json_value_t_t*
  %151 = ptrtoint %Tstruct.json_value_t_t* %150 to i32
  %152 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 %151, i32* %152, align 4
  %153 = ptrtoint %Tstruct.json_value_t_t* %150 to i32
  %cmp119 = icmp ne i32 %153, 0
  br i1 %cmp119, label %if.then120, label %if.else123

if.then120:                                       ; preds = %if.end116
  %call121 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @tests_passed, align 4
  %inc122 = add nsw i32 %154, 1
  store i32 %inc122, i32* @tests_passed, align 4
  br label %if.end126

if.else123:                                       ; preds = %if.end116
  %call124 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32, i32* @tests_failed, align 4
  %inc125 = add nsw i32 %155, 1
  store i32 %inc125, i32* @tests_failed, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %if.then120
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %156 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %157 = ptrtoint %Tstruct.json_value_t_t* %156 to i32
  %158 = call i8* @c_fetch_pointer_from_offset(i32 %157)
  %159 = call i1 @c_isTaintedPointerToTaintedMem(i8* %158)
  br i1 %159, label %_Dynamic_check.succeeded129, label %_Dynamic_check.failed128

_Dynamic_check.succeeded129:                      ; preds = %if.end126
  %160 = bitcast i8* %158 to %Tstruct.json_value_t_t*
  %call130 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %160)
  %161 = call i32 @c_TPtoO(i8* %call130)
  %162 = inttoptr i32 %161 to i8*
  %163 = ptrtoint i8* %162 to i32
  %164 = call i8* @c_fetch_pointer_from_offset(i32 %163)
  %165 = call i1 @c_isTaintedPointerToTaintedMem(i8* %164)
  br i1 %165, label %_Dynamic_check.succeeded132, label %_Dynamic_check.failed131

_Dynamic_check.succeeded132:                      ; preds = %_Dynamic_check.succeeded129
  %call133 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %164)
  %166 = bitcast %Tstruct.json_value_t_t* %call133 to i8*
  %167 = call i32 @c_TPtoO(i8* %166)
  %168 = inttoptr i32 %167 to %Tstruct.json_value_t_t*
  %169 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %170 = ptrtoint %Tstruct.json_value_t_t* %168 to i32
  %171 = call i8* @c_fetch_pointer_from_offset(i32 %170)
  %172 = call i1 @c_isTaintedPointerToTaintedMem(i8* %171)
  br i1 %172, label %_Dynamic_check.succeeded135, label %_Dynamic_check.failed134

_Dynamic_check.succeeded135:                      ; preds = %_Dynamic_check.succeeded132
  %173 = bitcast i8* %171 to %Tstruct.json_value_t_t*
  %174 = ptrtoint %Tstruct.json_value_t_t* %169 to i32
  %175 = call i8* @c_fetch_pointer_from_offset(i32 %174)
  %176 = call i1 @c_isTaintedPointerToTaintedMem(i8* %175)
  br i1 %176, label %_Dynamic_check.succeeded137, label %_Dynamic_check.failed136

_Dynamic_check.succeeded137:                      ; preds = %_Dynamic_check.succeeded135
  %177 = bitcast i8* %175 to %Tstruct.json_value_t_t*
  %call138 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %173, %Tstruct.json_value_t_t* %177)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.else143

if.then140:                                       ; preds = %_Dynamic_check.succeeded137
  %call141 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* @tests_passed, align 4
  %inc142 = add nsw i32 %178, 1
  store i32 %inc142, i32* @tests_passed, align 4
  br label %if.end146

_Dynamic_check.failed128:                         ; preds = %if.end126
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed131:                         ; preds = %_Dynamic_check.succeeded129
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed134:                         ; preds = %_Dynamic_check.succeeded132
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed136:                         ; preds = %_Dynamic_check.succeeded135
  call void @llvm.trap() #6
  unreachable

if.else143:                                       ; preds = %_Dynamic_check.succeeded137
  %call144 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @tests_failed, align 4
  %inc145 = add nsw i32 %179, 1
  store i32 %inc145, i32* @tests_failed, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %if.then140
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %180 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %181 = ptrtoint %Tstruct.json_value_t_t* %180 to i32
  %182 = call i8* @c_fetch_pointer_from_offset(i32 %181)
  %183 = call i1 @c_isTaintedPointerToTaintedMem(i8* %182)
  br i1 %183, label %_Dynamic_check.succeeded149, label %_Dynamic_check.failed148

_Dynamic_check.succeeded149:                      ; preds = %if.end146
  %184 = bitcast i8* %182 to %Tstruct.json_value_t_t*
  %call150 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %184)
  %185 = call i32 @c_TPtoO(i8* %call150)
  %186 = inttoptr i32 %185 to i8*
  %187 = ptrtoint i8* %186 to i32
  %188 = call i8* @c_fetch_pointer_from_offset(i32 %187)
  %189 = call i1 @c_isTaintedPointerToTaintedMem(i8* %188)
  br i1 %189, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %_Dynamic_check.succeeded149
  %call153 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %188)
  %190 = bitcast %Tstruct.json_value_t_t* %call153 to i8*
  %191 = call i32 @c_TPtoO(i8* %190)
  %192 = inttoptr i32 %191 to %Tstruct.json_value_t_t*
  %193 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %194 = ptrtoint %Tstruct.json_value_t_t* %192 to i32
  %195 = call i8* @c_fetch_pointer_from_offset(i32 %194)
  %196 = call i1 @c_isTaintedPointerToTaintedMem(i8* %195)
  br i1 %196, label %_Dynamic_check.succeeded155, label %_Dynamic_check.failed154

_Dynamic_check.succeeded155:                      ; preds = %_Dynamic_check.succeeded152
  %197 = bitcast i8* %195 to %Tstruct.json_value_t_t*
  %198 = ptrtoint %Tstruct.json_value_t_t* %193 to i32
  %199 = call i8* @c_fetch_pointer_from_offset(i32 %198)
  %200 = call i1 @c_isTaintedPointerToTaintedMem(i8* %199)
  br i1 %200, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded155
  %201 = bitcast i8* %199 to %Tstruct.json_value_t_t*
  %call158 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %197, %Tstruct.json_value_t_t* %201)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.else163

if.then160:                                       ; preds = %_Dynamic_check.succeeded157
  %call161 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %202 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %202, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed148:                         ; preds = %if.end146
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed151:                         ; preds = %_Dynamic_check.succeeded149
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed154:                         ; preds = %_Dynamic_check.succeeded152
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded155
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %_Dynamic_check.succeeded157
  %call164 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %203 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %203, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %204 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %205 = bitcast %Tstruct.json_value_t_t* %204 to i8*
  %206 = call i32 @c_TPtoO(i8* %205)
  %207 = call i32 @c_TPtoO(i8* null)
  %tobool167 = icmp ne i32 %206, %207
  br i1 %tobool167, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.end166
  %208 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %209 = ptrtoint %Tstruct.json_value_t_t* %208 to i32
  %210 = call i8* @c_fetch_pointer_from_offset(i32 %209)
  %211 = call i1 @c_isTaintedPointerToTaintedMem(i8* %210)
  br i1 %211, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.then168
  %212 = bitcast i8* %210 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %212)
  br label %if.end171

_Dynamic_check.failed169:                         ; preds = %if.then168
  call void @llvm.trap() #6
  unreachable

if.end171:                                        ; preds = %_Dynamic_check.succeeded170, %if.end166
  %call172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.14, i64 0, i64 0))
  %call173 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  %213 = bitcast %Tstruct.json_value_t_t* %call173 to i8*
  %214 = call i32 @c_TPtoO(i8* %213)
  %215 = inttoptr i32 %214 to %Tstruct.json_value_t_t*
  %216 = ptrtoint %Tstruct.json_value_t_t* %215 to i32
  %217 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 %216, i32* %217, align 4
  %218 = ptrtoint %Tstruct.json_value_t_t* %215 to i32
  %cmp174 = icmp ne i32 %218, 0
  br i1 %cmp174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.end171
  %call176 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %219 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %219, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

if.else178:                                       ; preds = %if.end171
  %call179 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %220 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %220, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 141, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %221 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %222 = ptrtoint %Tstruct.json_value_t_t* %221 to i32
  %223 = call i8* @c_fetch_pointer_from_offset(i32 %222)
  %224 = call i1 @c_isTaintedPointerToTaintedMem(i8* %223)
  br i1 %224, label %_Dynamic_check.succeeded184, label %_Dynamic_check.failed183

_Dynamic_check.succeeded184:                      ; preds = %if.end181
  %225 = bitcast i8* %223 to %Tstruct.json_value_t_t*
  %call185 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %225)
  %226 = call i32 @c_TPtoO(i8* %call185)
  %227 = inttoptr i32 %226 to i8*
  %228 = ptrtoint i8* %227 to i32
  %229 = call i8* @c_fetch_pointer_from_offset(i32 %228)
  %230 = call i1 @c_isTaintedPointerToTaintedMem(i8* %229)
  br i1 %230, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded184
  %call188 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %229)
  %231 = bitcast %Tstruct.json_value_t_t* %call188 to i8*
  %232 = call i32 @c_TPtoO(i8* %231)
  %233 = inttoptr i32 %232 to %Tstruct.json_value_t_t*
  %234 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %235 = ptrtoint %Tstruct.json_value_t_t* %233 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded190, label %_Dynamic_check.failed189

_Dynamic_check.succeeded190:                      ; preds = %_Dynamic_check.succeeded187
  %238 = bitcast i8* %236 to %Tstruct.json_value_t_t*
  %239 = ptrtoint %Tstruct.json_value_t_t* %234 to i32
  %240 = call i8* @c_fetch_pointer_from_offset(i32 %239)
  %241 = call i1 @c_isTaintedPointerToTaintedMem(i8* %240)
  br i1 %241, label %_Dynamic_check.succeeded192, label %_Dynamic_check.failed191

_Dynamic_check.succeeded192:                      ; preds = %_Dynamic_check.succeeded190
  %242 = bitcast i8* %240 to %Tstruct.json_value_t_t*
  %call193 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %238, %Tstruct.json_value_t_t* %242)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.else198

if.then195:                                       ; preds = %_Dynamic_check.succeeded192
  %call196 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %243 = load i32, i32* @tests_passed, align 4
  %inc197 = add nsw i32 %243, 1
  store i32 %inc197, i32* @tests_passed, align 4
  br label %if.end201

_Dynamic_check.failed183:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed186:                         ; preds = %_Dynamic_check.succeeded184
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed189:                         ; preds = %_Dynamic_check.succeeded187
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed191:                         ; preds = %_Dynamic_check.succeeded190
  call void @llvm.trap() #6
  unreachable

if.else198:                                       ; preds = %_Dynamic_check.succeeded192
  %call199 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %244 = load i32, i32* @tests_failed, align 4
  %inc200 = add nsw i32 %244, 1
  store i32 %inc200, i32* @tests_failed, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.else198, %if.then195
  %call202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %245 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %246 = ptrtoint %Tstruct.json_value_t_t* %245 to i32
  %247 = call i8* @c_fetch_pointer_from_offset(i32 %246)
  %248 = call i1 @c_isTaintedPointerToTaintedMem(i8* %247)
  br i1 %248, label %_Dynamic_check.succeeded204, label %_Dynamic_check.failed203

_Dynamic_check.succeeded204:                      ; preds = %if.end201
  %249 = bitcast i8* %247 to %Tstruct.json_value_t_t*
  %call205 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %249)
  %250 = call i32 @c_TPtoO(i8* %call205)
  %251 = inttoptr i32 %250 to i8*
  %252 = ptrtoint i8* %251 to i32
  %253 = call i8* @c_fetch_pointer_from_offset(i32 %252)
  %254 = call i1 @c_isTaintedPointerToTaintedMem(i8* %253)
  br i1 %254, label %_Dynamic_check.succeeded207, label %_Dynamic_check.failed206

_Dynamic_check.succeeded207:                      ; preds = %_Dynamic_check.succeeded204
  %call208 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %253)
  %255 = bitcast %Tstruct.json_value_t_t* %call208 to i8*
  %256 = call i32 @c_TPtoO(i8* %255)
  %257 = inttoptr i32 %256 to %Tstruct.json_value_t_t*
  %258 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %259 = ptrtoint %Tstruct.json_value_t_t* %257 to i32
  %260 = call i8* @c_fetch_pointer_from_offset(i32 %259)
  %261 = call i1 @c_isTaintedPointerToTaintedMem(i8* %260)
  br i1 %261, label %_Dynamic_check.succeeded210, label %_Dynamic_check.failed209

_Dynamic_check.succeeded210:                      ; preds = %_Dynamic_check.succeeded207
  %262 = bitcast i8* %260 to %Tstruct.json_value_t_t*
  %263 = ptrtoint %Tstruct.json_value_t_t* %258 to i32
  %264 = call i8* @c_fetch_pointer_from_offset(i32 %263)
  %265 = call i1 @c_isTaintedPointerToTaintedMem(i8* %264)
  br i1 %265, label %_Dynamic_check.succeeded212, label %_Dynamic_check.failed211

_Dynamic_check.succeeded212:                      ; preds = %_Dynamic_check.succeeded210
  %266 = bitcast i8* %264 to %Tstruct.json_value_t_t*
  %call213 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %262, %Tstruct.json_value_t_t* %266)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.else218

if.then215:                                       ; preds = %_Dynamic_check.succeeded212
  %call216 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %267 = load i32, i32* @tests_passed, align 4
  %inc217 = add nsw i32 %267, 1
  store i32 %inc217, i32* @tests_passed, align 4
  br label %if.end221

_Dynamic_check.failed203:                         ; preds = %if.end201
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed206:                         ; preds = %_Dynamic_check.succeeded204
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed209:                         ; preds = %_Dynamic_check.succeeded207
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed211:                         ; preds = %_Dynamic_check.succeeded210
  call void @llvm.trap() #6
  unreachable

if.else218:                                       ; preds = %_Dynamic_check.succeeded212
  %call219 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %268 = load i32, i32* @tests_failed, align 4
  %inc220 = add nsw i32 %268, 1
  store i32 %inc220, i32* @tests_failed, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else218, %if.then215
  %269 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %270 = bitcast %Tstruct.json_value_t_t* %269 to i8*
  %271 = call i32 @c_TPtoO(i8* %270)
  %272 = call i32 @c_TPtoO(i8* null)
  %tobool222 = icmp ne i32 %271, %272
  br i1 %tobool222, label %if.then223, label %if.end226

if.then223:                                       ; preds = %if.end221
  %273 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %274 = ptrtoint %Tstruct.json_value_t_t* %273 to i32
  %275 = call i8* @c_fetch_pointer_from_offset(i32 %274)
  %276 = call i1 @c_isTaintedPointerToTaintedMem(i8* %275)
  br i1 %276, label %_Dynamic_check.succeeded225, label %_Dynamic_check.failed224

_Dynamic_check.succeeded225:                      ; preds = %if.then223
  %277 = bitcast i8* %275 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %277)
  br label %if.end226

_Dynamic_check.failed224:                         ; preds = %if.then223
  call void @llvm.trap() #6
  unreachable

if.end226:                                        ; preds = %_Dynamic_check.succeeded225, %if.end221
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2_no_comments() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %root_value = alloca %Tstruct.json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 0, i32* %0, align 4
  %call = call i8* @string_malloc(i64 100)
  %1 = call i32 @c_TPtoO(i8* %call)
  %2 = inttoptr i32 %1 to i8*
  %3 = ptrtoint i8* %2 to i32
  %4 = bitcast i8** %filename to i32*
  store i32 %3, i32* %4, align 4
  %5 = load i8*, i8** %filename, align 4
  %6 = ptrtoint i8* %5 to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i8* @t_strcpy(i8* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  %8 = call i32 @c_TPtoO(i8* %call1)
  %9 = inttoptr i32 %8 to i8*
  %10 = bitcast %Tstruct.json_value_t_t** %root_value to i32*
  store i32 0, i32* %10, align 4
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  %11 = bitcast %Tstruct.json_value_t_t* %call2 to i8*
  %12 = call i32 @c_TPtoO(i8* %11)
  %13 = inttoptr i32 %12 to %Tstruct.json_value_t_t*
  %14 = ptrtoint %Tstruct.json_value_t_t* %13 to i32
  %15 = bitcast %Tstruct.json_value_t_t** %root_value to i32*
  store i32 %14, i32* %15, align 4
  %16 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %17 = ptrtoint %Tstruct.json_value_t_t* %16 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %20 = bitcast i8* %18 to %Tstruct.json_value_t_t*
  call void @test_suite_2(%Tstruct.json_value_t_t* %20)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 317, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.121, i64 0, i64 0))
  %21 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %22 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %23 = ptrtoint %Tstruct.json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %26 = bitcast i8* %24 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %26)
  %27 = call i32 @c_TPtoO(i8* %call6)
  %28 = inttoptr i32 %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %30)
  %32 = bitcast %Tstruct.json_value_t_t* %call9 to i8*
  %33 = call i32 @c_TPtoO(i8* %32)
  %34 = inttoptr i32 %33 to %Tstruct.json_value_t_t*
  %35 = ptrtoint %Tstruct.json_value_t_t* %21 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %38 = bitcast i8* %36 to %Tstruct.json_value_t_t*
  %39 = ptrtoint %Tstruct.json_value_t_t* %34 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %42 = bitcast i8* %40 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %38, %Tstruct.json_value_t_t* %42)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded13
  %call15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* @tests_failed, align 4
  %inc17 = add nsw i32 %44, 1
  store i32 %inc17, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.122, i64 0, i64 0))
  %45 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %46 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %47 = ptrtoint %Tstruct.json_value_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %50 = bitcast i8* %48 to %Tstruct.json_value_t_t*
  %call21 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %50)
  %51 = call i32 @c_TPtoO(i8* %call21)
  %52 = inttoptr i32 %51 to i8*
  %53 = ptrtoint i8* %52 to i32
  %54 = call i8* @c_fetch_pointer_from_offset(i32 %53)
  %55 = call i1 @c_isTaintedPointerToTaintedMem(i8* %54)
  br i1 %55, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %call24 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %54)
  %56 = bitcast %Tstruct.json_value_t_t* %call24 to i8*
  %57 = call i32 @c_TPtoO(i8* %56)
  %58 = inttoptr i32 %57 to %Tstruct.json_value_t_t*
  %59 = ptrtoint %Tstruct.json_value_t_t* %45 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded23
  %62 = bitcast i8* %60 to %Tstruct.json_value_t_t*
  %63 = ptrtoint %Tstruct.json_value_t_t* %58 to i32
  %64 = call i8* @c_fetch_pointer_from_offset(i32 %63)
  %65 = call i1 @c_isTaintedPointerToTaintedMem(i8* %64)
  br i1 %65, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %66 = bitcast i8* %64 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %62, %Tstruct.json_value_t_t* %66)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %67, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed19:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %68, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %69 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %70 = ptrtoint %Tstruct.json_value_t_t* %69 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %73 = bitcast i8* %71 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %73)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2_with_comments() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %root_value = alloca %Tstruct.json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 0, i32* %0, align 4
  %call = call i8* @string_malloc(i64 100)
  %1 = call i32 @c_TPtoO(i8* %call)
  %2 = inttoptr i32 %1 to i8*
  %3 = ptrtoint i8* %2 to i32
  %4 = bitcast i8** %filename to i32*
  store i32 %3, i32* %4, align 4
  %5 = load i8*, i8** %filename, align 4
  %6 = ptrtoint i8* %5 to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i8* @t_strcpy(i8* %7, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0))
  %8 = call i32 @c_TPtoO(i8* %call1)
  %9 = inttoptr i32 %8 to i8*
  %10 = bitcast %Tstruct.json_value_t_t** %root_value to i32*
  store i32 0, i32* %10, align 4
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  %11 = bitcast %Tstruct.json_value_t_t* %call2 to i8*
  %12 = call i32 @c_TPtoO(i8* %11)
  %13 = inttoptr i32 %12 to %Tstruct.json_value_t_t*
  %14 = ptrtoint %Tstruct.json_value_t_t* %13 to i32
  %15 = bitcast %Tstruct.json_value_t_t** %root_value to i32*
  store i32 %14, i32* %15, align 4
  %16 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %17 = ptrtoint %Tstruct.json_value_t_t* %16 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %20 = bitcast i8* %18 to %Tstruct.json_value_t_t*
  call void @test_suite_2(%Tstruct.json_value_t_t* %20)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.121, i64 0, i64 0))
  %21 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %22 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %23 = ptrtoint %Tstruct.json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %26 = bitcast i8* %24 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %26)
  %27 = call i32 @c_TPtoO(i8* %call6)
  %28 = inttoptr i32 %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %30)
  %32 = bitcast %Tstruct.json_value_t_t* %call9 to i8*
  %33 = call i32 @c_TPtoO(i8* %32)
  %34 = inttoptr i32 %33 to %Tstruct.json_value_t_t*
  %35 = ptrtoint %Tstruct.json_value_t_t* %21 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %38 = bitcast i8* %36 to %Tstruct.json_value_t_t*
  %39 = ptrtoint %Tstruct.json_value_t_t* %34 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %42 = bitcast i8* %40 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %38, %Tstruct.json_value_t_t* %42)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded13
  %call15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* @tests_failed, align 4
  %inc17 = add nsw i32 %44, 1
  store i32 %inc17, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.122, i64 0, i64 0))
  %45 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %46 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %47 = ptrtoint %Tstruct.json_value_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %50 = bitcast i8* %48 to %Tstruct.json_value_t_t*
  %call21 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %50)
  %51 = call i32 @c_TPtoO(i8* %call21)
  %52 = inttoptr i32 %51 to i8*
  %53 = ptrtoint i8* %52 to i32
  %54 = call i8* @c_fetch_pointer_from_offset(i32 %53)
  %55 = call i1 @c_isTaintedPointerToTaintedMem(i8* %54)
  br i1 %55, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %call24 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %54)
  %56 = bitcast %Tstruct.json_value_t_t* %call24 to i8*
  %57 = call i32 @c_TPtoO(i8* %56)
  %58 = inttoptr i32 %57 to %Tstruct.json_value_t_t*
  %59 = ptrtoint %Tstruct.json_value_t_t* %45 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded23
  %62 = bitcast i8* %60 to %Tstruct.json_value_t_t*
  %63 = ptrtoint %Tstruct.json_value_t_t* %58 to i32
  %64 = call i8* @c_fetch_pointer_from_offset(i32 %63)
  %65 = call i1 @c_isTaintedPointerToTaintedMem(i8* %64)
  br i1 %65, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %66 = bitcast i8* %64 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %62, %Tstruct.json_value_t_t* %66)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %67, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed19:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %68, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %69 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %70 = ptrtoint %Tstruct.json_value_t_t* %69 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %73 = bitcast i8* %71 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %73)
  %74 = load i8*, i8** %filename, align 4
  %75 = ptrtoint i8* %74 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %_Dynamic_check.succeeded39
  call void @t_free(i8* %76)
  %78 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %79 = ptrtoint %Tstruct.json_value_t_t* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded41
  %82 = bitcast i8* %80 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %82)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed40:                          ; preds = %_Dynamic_check.succeeded39
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded41
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_3() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %temp_string = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 0, i32* %0, align 4
  %call = call i8* @string_malloc(i64 100)
  %1 = call i32 @c_TPtoO(i8* %call)
  %2 = inttoptr i32 %1 to i8*
  %3 = ptrtoint i8* %2 to i32
  %4 = bitcast i8** %filename to i32*
  store i32 %3, i32* %4, align 4
  %call1 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.124, i64 0, i64 0))
  %5 = load i8*, i8** %filename, align 4
  %6 = ptrtoint i8* %5 to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call2 = call i8* @t_strcpy(i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i64 0, i64 0))
  %8 = call i32 @c_TPtoO(i8* %call2)
  %9 = inttoptr i32 %8 to i8*
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 342, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %10 = load i8*, i8** %filename, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call4 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %12)
  %14 = bitcast %Tstruct.json_value_t_t* %call4 to i8*
  %15 = call i32 @c_TPtoO(i8* %14)
  %16 = inttoptr i32 %15 to %Tstruct.json_value_t_t*
  %17 = ptrtoint %Tstruct.json_value_t_t* %16 to i32
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %call5 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded
  %call6 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32, i32* @tests_failed, align 4
  %inc7 = add nsw i32 %19, 1
  store i32 %inc7, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i8*, i8** %filename, align 4
  %21 = ptrtoint i8* %20 to i64
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %21)
  %call8 = call i8* @t_strcpy(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i64 0, i64 0))
  %23 = call i32 @c_TPtoO(i8* %call8)
  %24 = inttoptr i32 %23 to i8*
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %25 = load i8*, i8** %filename, align 4
  %26 = ptrtoint i8* %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.end
  %call12 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %27)
  %29 = bitcast %Tstruct.json_value_t_t* %call12 to i8*
  %30 = call i32 @c_TPtoO(i8* %29)
  %31 = inttoptr i32 %30 to %Tstruct.json_value_t_t*
  %32 = ptrtoint %Tstruct.json_value_t_t* %31 to i32
  %cmp13 = icmp ne i32 %32, 0
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %_Dynamic_check.succeeded11
  %call15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* @tests_passed, align 4
  %inc16 = add nsw i32 %33, 1
  store i32 %inc16, i32* @tests_passed, align 4
  br label %if.end20

_Dynamic_check.failed10:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else17:                                        ; preds = %_Dynamic_check.succeeded11
  %call18 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* @tests_failed, align 4
  %inc19 = add nsw i32 %34, 1
  store i32 %inc19, i32* @tests_failed, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then14
  %35 = load i8*, i8** %filename, align 4
  %36 = ptrtoint i8* %35 to i64
  %37 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %36)
  %call21 = call i8* @t_strcpy(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %38 = call i32 @c_TPtoO(i8* %call21)
  %39 = inttoptr i32 %38 to i8*
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 346, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %40 = load i8*, i8** %filename, align 4
  %41 = ptrtoint i8* %40 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end20
  %call25 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %42)
  %44 = bitcast %Tstruct.json_value_t_t* %call25 to i8*
  %45 = call i32 @c_TPtoO(i8* %44)
  %46 = inttoptr i32 %45 to %Tstruct.json_value_t_t*
  %47 = ptrtoint %Tstruct.json_value_t_t* %46 to i32
  %cmp26 = icmp ne i32 %47, 0
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %_Dynamic_check.succeeded24
  %call28 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @tests_passed, align 4
  %inc29 = add nsw i32 %48, 1
  store i32 %inc29, i32* @tests_passed, align 4
  br label %if.end33

_Dynamic_check.failed23:                          ; preds = %if.end20
  call void @llvm.trap() #6
  unreachable

if.else30:                                        ; preds = %_Dynamic_check.succeeded24
  %call31 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* @tests_failed, align 4
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* @tests_failed, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27
  %50 = load i8*, i8** %filename, align 4
  %51 = ptrtoint i8* %50 to i64
  %52 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %51)
  %call34 = call i8* @t_strcpy(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0))
  %53 = call i32 @c_TPtoO(i8* %call34)
  %54 = inttoptr i32 %53 to i8*
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %55 = load i8*, i8** %filename, align 4
  %56 = ptrtoint i8* %55 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %if.end33
  %call38 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %57)
  %59 = bitcast %Tstruct.json_value_t_t* %call38 to i8*
  %60 = call i32 @c_TPtoO(i8* %59)
  %61 = inttoptr i32 %60 to %Tstruct.json_value_t_t*
  %62 = ptrtoint %Tstruct.json_value_t_t* %61 to i32
  %cmp39 = icmp ne i32 %62, 0
  br i1 %cmp39, label %if.then40, label %if.else43

if.then40:                                        ; preds = %_Dynamic_check.succeeded37
  %call41 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @tests_passed, align 4
  %inc42 = add nsw i32 %63, 1
  store i32 %inc42, i32* @tests_passed, align 4
  br label %if.end46

_Dynamic_check.failed36:                          ; preds = %if.end33
  call void @llvm.trap() #6
  unreachable

if.else43:                                        ; preds = %_Dynamic_check.succeeded37
  %call44 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* @tests_failed, align 4
  %inc45 = add nsw i32 %64, 1
  store i32 %inc45, i32* @tests_failed, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  %65 = load i8*, i8** %filename, align 4
  %66 = ptrtoint i8* %65 to i64
  %67 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %66)
  %call47 = call i8* @t_strcpy(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i64 0, i64 0))
  %68 = call i32 @c_TPtoO(i8* %call47)
  %69 = inttoptr i32 %68 to i8*
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 350, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %70 = load i8*, i8** %filename, align 4
  %71 = ptrtoint i8* %70 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %if.end46
  %call51 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %72)
  %74 = bitcast %Tstruct.json_value_t_t* %call51 to i8*
  %75 = call i32 @c_TPtoO(i8* %74)
  %76 = inttoptr i32 %75 to %Tstruct.json_value_t_t*
  %77 = ptrtoint %Tstruct.json_value_t_t* %76 to i32
  %cmp52 = icmp ne i32 %77, 0
  br i1 %cmp52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %_Dynamic_check.succeeded50
  %call54 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @tests_passed, align 4
  %inc55 = add nsw i32 %78, 1
  store i32 %inc55, i32* @tests_passed, align 4
  br label %if.end59

_Dynamic_check.failed49:                          ; preds = %if.end46
  call void @llvm.trap() #6
  unreachable

if.else56:                                        ; preds = %_Dynamic_check.succeeded50
  %call57 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* @tests_failed, align 4
  %inc58 = add nsw i32 %79, 1
  store i32 %inc58, i32* @tests_failed, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then53
  %80 = load i8*, i8** %filename, align 4
  %81 = ptrtoint i8* %80 to i64
  %82 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %81)
  %call60 = call i8* @t_strcpy(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i64 0, i64 0))
  %83 = call i32 @c_TPtoO(i8* %call60)
  %84 = inttoptr i32 %83 to i8*
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 352, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %85 = load i8*, i8** %filename, align 4
  %86 = ptrtoint i8* %85 to i32
  %87 = call i8* @c_fetch_pointer_from_offset(i32 %86)
  %88 = call i1 @c_isTaintedPointerToTaintedMem(i8* %87)
  br i1 %88, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %if.end59
  %call64 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %87)
  %89 = bitcast %Tstruct.json_value_t_t* %call64 to i8*
  %90 = call i32 @c_TPtoO(i8* %89)
  %91 = inttoptr i32 %90 to %Tstruct.json_value_t_t*
  %92 = ptrtoint %Tstruct.json_value_t_t* %91 to i32
  %cmp65 = icmp ne i32 %92, 0
  br i1 %cmp65, label %if.then66, label %if.else69

if.then66:                                        ; preds = %_Dynamic_check.succeeded63
  %call67 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @tests_passed, align 4
  %inc68 = add nsw i32 %93, 1
  store i32 %inc68, i32* @tests_passed, align 4
  br label %if.end72

_Dynamic_check.failed62:                          ; preds = %if.end59
  call void @llvm.trap() #6
  unreachable

if.else69:                                        ; preds = %_Dynamic_check.succeeded63
  %call70 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i32, i32* @tests_failed, align 4
  %inc71 = add nsw i32 %94, 1
  store i32 %inc71, i32* @tests_failed, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then66
  %95 = load i8*, i8** %filename, align 4
  %96 = ptrtoint i8* %95 to i64
  %97 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %96)
  %call73 = call i8* @t_strcpy(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i64 0, i64 0))
  %98 = call i32 @c_TPtoO(i8* %call73)
  %99 = inttoptr i32 %98 to i8*
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 354, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %100 = load i8*, i8** %filename, align 4
  %101 = ptrtoint i8* %100 to i32
  %102 = call i8* @c_fetch_pointer_from_offset(i32 %101)
  %103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %102)
  br i1 %103, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %if.end72
  %call77 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %102)
  %104 = bitcast %Tstruct.json_value_t_t* %call77 to i8*
  %105 = call i32 @c_TPtoO(i8* %104)
  %106 = inttoptr i32 %105 to %Tstruct.json_value_t_t*
  %107 = ptrtoint %Tstruct.json_value_t_t* %106 to i32
  %cmp78 = icmp ne i32 %107, 0
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %_Dynamic_check.succeeded76
  %call80 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @tests_passed, align 4
  %inc81 = add nsw i32 %108, 1
  store i32 %inc81, i32* @tests_passed, align 4
  br label %if.end85

_Dynamic_check.failed75:                          ; preds = %if.end72
  call void @llvm.trap() #6
  unreachable

if.else82:                                        ; preds = %_Dynamic_check.succeeded76
  %call83 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @tests_failed, align 4
  %inc84 = add nsw i32 %109, 1
  store i32 %inc84, i32* @tests_failed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %call86 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i64 0, i64 0))
  %110 = load i8*, i8** %filename, align 4
  %111 = ptrtoint i8* %110 to i64
  %112 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %111)
  %call87 = call i8* @t_strcpy(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0))
  %113 = call i32 @c_TPtoO(i8* %call87)
  %114 = inttoptr i32 %113 to i8*
  %115 = load i8*, i8** %filename, align 4
  %116 = ptrtoint i8* %115 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded89, label %_Dynamic_check.failed88

_Dynamic_check.succeeded89:                       ; preds = %if.end85
  %call90 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %117)
  %119 = bitcast %Tstruct.json_value_t_t* %call90 to i8*
  %120 = call i32 @c_TPtoO(i8* %119)
  %121 = inttoptr i32 %120 to %Tstruct.json_value_t_t*
  %122 = ptrtoint %Tstruct.json_value_t_t* %121 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.succeeded89
  %125 = bitcast i8* %123 to %Tstruct.json_value_t_t*
  %call93 = call i8* @json_string(%Tstruct.json_value_t_t* %125)
  %126 = call i32 @c_TPtoO(i8* %call93)
  %127 = inttoptr i32 %126 to i8*
  %128 = ptrtoint i8* %127 to i32
  %129 = bitcast i8** %temp_string to i32*
  store i32 %128, i32* %129, align 4
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i64 0, i64 0))
  %130 = load i8*, i8** %temp_string, align 4
  %131 = call i32 @c_TPtoO(i8* %130)
  %132 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %131, %132
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded92
  %133 = call i32 @c_TPtoO(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i64 0, i64 0))
  %134 = call i32 @c_TPtoO(i8* null)
  %tobool95 = icmp ne i32 %133, %134
  br i1 %tobool95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %135 = load i8*, i8** %temp_string, align 4
  %136 = ptrtoint i8* %135 to i64
  %137 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %136)
  %call96 = call i32 @t_strcmp(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i64 0, i64 0))
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.else101

cond.false:                                       ; preds = %land.lhs.true, %_Dynamic_check.succeeded92
  br i1 false, label %if.then98, label %if.else101

if.then98:                                        ; preds = %cond.false, %cond.true
  %call99 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* @tests_passed, align 4
  %inc100 = add nsw i32 %138, 1
  store i32 %inc100, i32* @tests_passed, align 4
  br label %if.end104

_Dynamic_check.failed88:                          ; preds = %if.end85
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.succeeded89
  call void @llvm.trap() #6
  unreachable

if.else101:                                       ; preds = %cond.false, %cond.true
  %call102 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @tests_failed, align 4
  %inc103 = add nsw i32 %139, 1
  store i32 %inc103, i32* @tests_failed, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %if.then98
  %140 = load i8*, i8** %filename, align 4
  %141 = ptrtoint i8* %140 to i64
  %142 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %141)
  %call105 = call i8* @t_strcpy(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i64 0, i64 0))
  %143 = call i32 @c_TPtoO(i8* %call105)
  %144 = inttoptr i32 %143 to i8*
  %145 = load i8*, i8** %filename, align 4
  %146 = ptrtoint i8* %145 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded107, label %_Dynamic_check.failed106

_Dynamic_check.succeeded107:                      ; preds = %if.end104
  %call108 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %147)
  %149 = bitcast %Tstruct.json_value_t_t* %call108 to i8*
  %150 = call i32 @c_TPtoO(i8* %149)
  %151 = inttoptr i32 %150 to %Tstruct.json_value_t_t*
  %152 = ptrtoint %Tstruct.json_value_t_t* %151 to i32
  %153 = call i8* @c_fetch_pointer_from_offset(i32 %152)
  %154 = call i1 @c_isTaintedPointerToTaintedMem(i8* %153)
  br i1 %154, label %_Dynamic_check.succeeded110, label %_Dynamic_check.failed109

_Dynamic_check.succeeded110:                      ; preds = %_Dynamic_check.succeeded107
  %155 = bitcast i8* %153 to %Tstruct.json_value_t_t*
  %call111 = call i8* @json_string(%Tstruct.json_value_t_t* %155)
  %156 = call i32 @c_TPtoO(i8* %call111)
  %157 = inttoptr i32 %156 to i8*
  %158 = ptrtoint i8* %157 to i32
  %159 = bitcast i8** %temp_string to i32*
  store i32 %158, i32* %159, align 4
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 362, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i64 0, i64 0))
  %160 = load i8*, i8** %temp_string, align 4
  %161 = call i32 @c_TPtoO(i8* %160)
  %162 = call i32 @c_TPtoO(i8* null)
  %tobool113 = icmp ne i32 %161, %162
  br i1 %tobool113, label %land.lhs.true114, label %cond.false119

land.lhs.true114:                                 ; preds = %_Dynamic_check.succeeded110
  %163 = call i32 @c_TPtoO(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0))
  %164 = call i32 @c_TPtoO(i8* null)
  %tobool115 = icmp ne i32 %163, %164
  br i1 %tobool115, label %cond.true116, label %cond.false119

cond.true116:                                     ; preds = %land.lhs.true114
  %165 = load i8*, i8** %temp_string, align 4
  %166 = ptrtoint i8* %165 to i64
  %167 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %166)
  %call117 = call i32 @t_strcmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0))
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.then120, label %if.else123

cond.false119:                                    ; preds = %land.lhs.true114, %_Dynamic_check.succeeded110
  br i1 false, label %if.then120, label %if.else123

if.then120:                                       ; preds = %cond.false119, %cond.true116
  %call121 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i32, i32* @tests_passed, align 4
  %inc122 = add nsw i32 %168, 1
  store i32 %inc122, i32* @tests_passed, align 4
  br label %if.end126

_Dynamic_check.failed106:                         ; preds = %if.end104
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed109:                         ; preds = %_Dynamic_check.succeeded107
  call void @llvm.trap() #6
  unreachable

if.else123:                                       ; preds = %cond.false119, %cond.true116
  %call124 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32, i32* @tests_failed, align 4
  %inc125 = add nsw i32 %169, 1
  store i32 %inc125, i32* @tests_failed, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %if.then120
  %170 = load i8*, i8** %filename, align 4
  %171 = ptrtoint i8* %170 to i64
  %172 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %171)
  %call127 = call i8* @t_strcpy(i8* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i64 0, i64 0))
  %173 = call i32 @c_TPtoO(i8* %call127)
  %174 = inttoptr i32 %173 to i8*
  %175 = load i8*, i8** %filename, align 4
  %176 = ptrtoint i8* %175 to i32
  %177 = call i8* @c_fetch_pointer_from_offset(i32 %176)
  %178 = call i1 @c_isTaintedPointerToTaintedMem(i8* %177)
  br i1 %178, label %_Dynamic_check.succeeded129, label %_Dynamic_check.failed128

_Dynamic_check.succeeded129:                      ; preds = %if.end126
  %call130 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %177)
  %179 = bitcast %Tstruct.json_value_t_t* %call130 to i8*
  %180 = call i32 @c_TPtoO(i8* %179)
  %181 = inttoptr i32 %180 to %Tstruct.json_value_t_t*
  %182 = ptrtoint %Tstruct.json_value_t_t* %181 to i32
  %183 = call i8* @c_fetch_pointer_from_offset(i32 %182)
  %184 = call i1 @c_isTaintedPointerToTaintedMem(i8* %183)
  br i1 %184, label %_Dynamic_check.succeeded132, label %_Dynamic_check.failed131

_Dynamic_check.succeeded132:                      ; preds = %_Dynamic_check.succeeded129
  %185 = bitcast i8* %183 to %Tstruct.json_value_t_t*
  %call133 = call i8* @json_string(%Tstruct.json_value_t_t* %185)
  %186 = call i32 @c_TPtoO(i8* %call133)
  %187 = inttoptr i32 %186 to i8*
  %188 = ptrtoint i8* %187 to i32
  %189 = bitcast i8** %temp_string to i32*
  store i32 %188, i32* %189, align 4
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.140, i64 0, i64 0))
  %190 = load i8*, i8** %temp_string, align 4
  %191 = call i32 @c_TPtoO(i8* %190)
  %192 = call i32 @c_TPtoO(i8* null)
  %tobool135 = icmp ne i32 %191, %192
  br i1 %tobool135, label %land.lhs.true136, label %cond.false141

land.lhs.true136:                                 ; preds = %_Dynamic_check.succeeded132
  %193 = call i32 @c_TPtoO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0))
  %194 = call i32 @c_TPtoO(i8* null)
  %tobool137 = icmp ne i32 %193, %194
  br i1 %tobool137, label %cond.true138, label %cond.false141

cond.true138:                                     ; preds = %land.lhs.true136
  %195 = load i8*, i8** %temp_string, align 4
  %196 = ptrtoint i8* %195 to i64
  %197 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %196)
  %call139 = call i32 @t_strcmp(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0))
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.else145

cond.false141:                                    ; preds = %land.lhs.true136, %_Dynamic_check.succeeded132
  br i1 false, label %if.then142, label %if.else145

if.then142:                                       ; preds = %cond.false141, %cond.true138
  %call143 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %198 = load i32, i32* @tests_passed, align 4
  %inc144 = add nsw i32 %198, 1
  store i32 %inc144, i32* @tests_passed, align 4
  br label %if.end148

_Dynamic_check.failed128:                         ; preds = %if.end126
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed131:                         ; preds = %_Dynamic_check.succeeded129
  call void @llvm.trap() #6
  unreachable

if.else145:                                       ; preds = %cond.false141, %cond.true138
  %call146 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %199 = load i32, i32* @tests_failed, align 4
  %inc147 = add nsw i32 %199, 1
  store i32 %inc147, i32* @tests_failed, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else145, %if.then142
  %200 = load i8*, i8** %filename, align 4
  %201 = ptrtoint i8* %200 to i64
  %202 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %201)
  %call149 = call i8* @t_strcpy(i8* %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.142, i64 0, i64 0))
  %203 = call i32 @c_TPtoO(i8* %call149)
  %204 = inttoptr i32 %203 to i8*
  %205 = load i8*, i8** %filename, align 4
  %206 = ptrtoint i8* %205 to i32
  %207 = call i8* @c_fetch_pointer_from_offset(i32 %206)
  %208 = call i1 @c_isTaintedPointerToTaintedMem(i8* %207)
  br i1 %208, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %if.end148
  %call152 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %207)
  %209 = bitcast %Tstruct.json_value_t_t* %call152 to i8*
  %210 = call i32 @c_TPtoO(i8* %209)
  %211 = inttoptr i32 %210 to %Tstruct.json_value_t_t*
  %212 = ptrtoint %Tstruct.json_value_t_t* %211 to i32
  %213 = call i8* @c_fetch_pointer_from_offset(i32 %212)
  %214 = call i1 @c_isTaintedPointerToTaintedMem(i8* %213)
  br i1 %214, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %_Dynamic_check.succeeded151
  %215 = bitcast i8* %213 to %Tstruct.json_value_t_t*
  %call155 = call i8* @json_string(%Tstruct.json_value_t_t* %215)
  %216 = call i32 @c_TPtoO(i8* %call155)
  %217 = inttoptr i32 %216 to i8*
  %218 = ptrtoint i8* %217 to i32
  %219 = bitcast i8** %temp_string to i32*
  store i32 %218, i32* %219, align 4
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0))
  %220 = load i8*, i8** %temp_string, align 4
  %221 = call i32 @c_TPtoO(i8* %220)
  %222 = call i32 @c_TPtoO(i8* null)
  %tobool157 = icmp ne i32 %221, %222
  br i1 %tobool157, label %land.lhs.true158, label %cond.false163

land.lhs.true158:                                 ; preds = %_Dynamic_check.succeeded154
  %223 = call i32 @c_TPtoO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i64 0, i64 0))
  %224 = call i32 @c_TPtoO(i8* null)
  %tobool159 = icmp ne i32 %223, %224
  br i1 %tobool159, label %cond.true160, label %cond.false163

cond.true160:                                     ; preds = %land.lhs.true158
  %225 = load i8*, i8** %temp_string, align 4
  %226 = ptrtoint i8* %225 to i64
  %227 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %226)
  %call161 = call i32 @t_strcmp(i8* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i64 0, i64 0))
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then164, label %if.else167

cond.false163:                                    ; preds = %land.lhs.true158, %_Dynamic_check.succeeded154
  br i1 false, label %if.then164, label %if.else167

if.then164:                                       ; preds = %cond.false163, %cond.true160
  %call165 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i32, i32* @tests_passed, align 4
  %inc166 = add nsw i32 %228, 1
  store i32 %inc166, i32* @tests_passed, align 4
  br label %if.end170

_Dynamic_check.failed150:                         ; preds = %if.end148
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed153:                         ; preds = %_Dynamic_check.succeeded151
  call void @llvm.trap() #6
  unreachable

if.else167:                                       ; preds = %cond.false163, %cond.true160
  %call168 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %229 = load i32, i32* @tests_failed, align 4
  %inc169 = add nsw i32 %229, 1
  store i32 %inc169, i32* @tests_failed, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.else167, %if.then164
  %call171 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i64 0, i64 0))
  store i32 0, i32* @malloc_count, align 4
  %call172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 372, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0))
  %230 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %231 = call i1 @c_isTaintedPointerToTaintedMem(i8* %230)
  br i1 %231, label %_Dynamic_check.succeeded174, label %_Dynamic_check.failed173

_Dynamic_check.succeeded174:                      ; preds = %if.end170
  %call175 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %230)
  %232 = bitcast %Tstruct.json_value_t_t* %call175 to i8*
  %233 = call i32 @c_TPtoO(i8* %232)
  %234 = inttoptr i32 %233 to %Tstruct.json_value_t_t*
  %235 = ptrtoint %Tstruct.json_value_t_t* %234 to i32
  %cmp176 = icmp eq i32 %235, 0
  br i1 %cmp176, label %if.then177, label %if.else180

if.then177:                                       ; preds = %_Dynamic_check.succeeded174
  %call178 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %236 = load i32, i32* @tests_passed, align 4
  %inc179 = add nsw i32 %236, 1
  store i32 %inc179, i32* @tests_passed, align 4
  br label %if.end183

_Dynamic_check.failed173:                         ; preds = %if.end170
  call void @llvm.trap() #6
  unreachable

if.else180:                                       ; preds = %_Dynamic_check.succeeded174
  %call181 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %237 = load i32, i32* @tests_failed, align 4
  %inc182 = add nsw i32 %237, 1
  store i32 %inc182, i32* @tests_failed, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.else180, %if.then177
  %238 = load i8*, i8** %filename, align 4
  %239 = ptrtoint i8* %238 to i64
  %240 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %239)
  %call184 = call i8* @t_strcpy(i8* %240, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %241 = call i32 @c_TPtoO(i8* %call184)
  %242 = inttoptr i32 %241 to i8*
  %call185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %243 = load i8*, i8** %filename, align 4
  %244 = ptrtoint i8* %243 to i32
  %245 = call i8* @c_fetch_pointer_from_offset(i32 %244)
  %246 = call i1 @c_isTaintedPointerToTaintedMem(i8* %245)
  br i1 %246, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %if.end183
  %call188 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %245)
  %247 = bitcast %Tstruct.json_value_t_t* %call188 to i8*
  %248 = call i32 @c_TPtoO(i8* %247)
  %249 = inttoptr i32 %248 to %Tstruct.json_value_t_t*
  %250 = ptrtoint %Tstruct.json_value_t_t* %249 to i32
  %cmp189 = icmp eq i32 %250, 0
  br i1 %cmp189, label %if.then190, label %if.else193

if.then190:                                       ; preds = %_Dynamic_check.succeeded187
  %call191 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %251 = load i32, i32* @tests_passed, align 4
  %inc192 = add nsw i32 %251, 1
  store i32 %inc192, i32* @tests_passed, align 4
  br label %if.end196

_Dynamic_check.failed186:                         ; preds = %if.end183
  call void @llvm.trap() #6
  unreachable

if.else193:                                       ; preds = %_Dynamic_check.succeeded187
  %call194 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %252 = load i32, i32* @tests_failed, align 4
  %inc195 = add nsw i32 %252, 1
  store i32 %inc195, i32* @tests_failed, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.else193, %if.then190
  %253 = load i8*, i8** %filename, align 4
  %254 = ptrtoint i8* %253 to i64
  %255 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %254)
  %call197 = call i8* @t_strcpy(i8* %255, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i64 0, i64 0))
  %256 = call i32 @c_TPtoO(i8* %call197)
  %257 = inttoptr i32 %256 to i8*
  %call198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %258 = load i8*, i8** %filename, align 4
  %259 = ptrtoint i8* %258 to i32
  %260 = call i8* @c_fetch_pointer_from_offset(i32 %259)
  %261 = call i1 @c_isTaintedPointerToTaintedMem(i8* %260)
  br i1 %261, label %_Dynamic_check.succeeded200, label %_Dynamic_check.failed199

_Dynamic_check.succeeded200:                      ; preds = %if.end196
  %call201 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %260)
  %262 = bitcast %Tstruct.json_value_t_t* %call201 to i8*
  %263 = call i32 @c_TPtoO(i8* %262)
  %264 = inttoptr i32 %263 to %Tstruct.json_value_t_t*
  %265 = ptrtoint %Tstruct.json_value_t_t* %264 to i32
  %cmp202 = icmp eq i32 %265, 0
  br i1 %cmp202, label %if.then203, label %if.else206

if.then203:                                       ; preds = %_Dynamic_check.succeeded200
  %call204 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* @tests_passed, align 4
  %inc205 = add nsw i32 %266, 1
  store i32 %inc205, i32* @tests_passed, align 4
  br label %if.end209

_Dynamic_check.failed199:                         ; preds = %if.end196
  call void @llvm.trap() #6
  unreachable

if.else206:                                       ; preds = %_Dynamic_check.succeeded200
  %call207 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %267 = load i32, i32* @tests_failed, align 4
  %inc208 = add nsw i32 %267, 1
  store i32 %inc208, i32* @tests_failed, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.else206, %if.then203
  %268 = load i8*, i8** %filename, align 4
  %269 = ptrtoint i8* %268 to i64
  %270 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %269)
  %call210 = call i8* @t_strcpy(i8* %270, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.149, i64 0, i64 0))
  %271 = call i32 @c_TPtoO(i8* %call210)
  %272 = inttoptr i32 %271 to i8*
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %273 = load i8*, i8** %filename, align 4
  %274 = ptrtoint i8* %273 to i32
  %275 = call i8* @c_fetch_pointer_from_offset(i32 %274)
  %276 = call i1 @c_isTaintedPointerToTaintedMem(i8* %275)
  br i1 %276, label %_Dynamic_check.succeeded213, label %_Dynamic_check.failed212

_Dynamic_check.succeeded213:                      ; preds = %if.end209
  %call214 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %275)
  %277 = bitcast %Tstruct.json_value_t_t* %call214 to i8*
  %278 = call i32 @c_TPtoO(i8* %277)
  %279 = inttoptr i32 %278 to %Tstruct.json_value_t_t*
  %280 = ptrtoint %Tstruct.json_value_t_t* %279 to i32
  %cmp215 = icmp eq i32 %280, 0
  br i1 %cmp215, label %if.then216, label %if.else219

if.then216:                                       ; preds = %_Dynamic_check.succeeded213
  %call217 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %281 = load i32, i32* @tests_passed, align 4
  %inc218 = add nsw i32 %281, 1
  store i32 %inc218, i32* @tests_passed, align 4
  br label %if.end222

_Dynamic_check.failed212:                         ; preds = %if.end209
  call void @llvm.trap() #6
  unreachable

if.else219:                                       ; preds = %_Dynamic_check.succeeded213
  %call220 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %282 = load i32, i32* @tests_failed, align 4
  %inc221 = add nsw i32 %282, 1
  store i32 %inc221, i32* @tests_failed, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.else219, %if.then216
  %283 = load i8*, i8** %filename, align 4
  %284 = ptrtoint i8* %283 to i64
  %285 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %284)
  %call223 = call i8* @t_strcpy(i8* %285, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i64 0, i64 0))
  %286 = call i32 @c_TPtoO(i8* %call223)
  %287 = inttoptr i32 %286 to i8*
  %call224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 380, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %288 = load i8*, i8** %filename, align 4
  %289 = ptrtoint i8* %288 to i32
  %290 = call i8* @c_fetch_pointer_from_offset(i32 %289)
  %291 = call i1 @c_isTaintedPointerToTaintedMem(i8* %290)
  br i1 %291, label %_Dynamic_check.succeeded226, label %_Dynamic_check.failed225

_Dynamic_check.succeeded226:                      ; preds = %if.end222
  %call227 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %290)
  %292 = bitcast %Tstruct.json_value_t_t* %call227 to i8*
  %293 = call i32 @c_TPtoO(i8* %292)
  %294 = inttoptr i32 %293 to %Tstruct.json_value_t_t*
  %295 = ptrtoint %Tstruct.json_value_t_t* %294 to i32
  %cmp228 = icmp eq i32 %295, 0
  br i1 %cmp228, label %if.then229, label %if.else232

if.then229:                                       ; preds = %_Dynamic_check.succeeded226
  %call230 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %296 = load i32, i32* @tests_passed, align 4
  %inc231 = add nsw i32 %296, 1
  store i32 %inc231, i32* @tests_passed, align 4
  br label %if.end235

_Dynamic_check.failed225:                         ; preds = %if.end222
  call void @llvm.trap() #6
  unreachable

if.else232:                                       ; preds = %_Dynamic_check.succeeded226
  %call233 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %297 = load i32, i32* @tests_failed, align 4
  %inc234 = add nsw i32 %297, 1
  store i32 %inc234, i32* @tests_failed, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.else232, %if.then229
  %298 = load i8*, i8** %filename, align 4
  %299 = ptrtoint i8* %298 to i64
  %300 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %299)
  %call236 = call i8* @t_strcpy(i8* %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i64 0, i64 0))
  %301 = call i32 @c_TPtoO(i8* %call236)
  %302 = inttoptr i32 %301 to i8*
  %call237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 382, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %303 = load i8*, i8** %filename, align 4
  %304 = ptrtoint i8* %303 to i32
  %305 = call i8* @c_fetch_pointer_from_offset(i32 %304)
  %306 = call i1 @c_isTaintedPointerToTaintedMem(i8* %305)
  br i1 %306, label %_Dynamic_check.succeeded239, label %_Dynamic_check.failed238

_Dynamic_check.succeeded239:                      ; preds = %if.end235
  %call240 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %305)
  %307 = bitcast %Tstruct.json_value_t_t* %call240 to i8*
  %308 = call i32 @c_TPtoO(i8* %307)
  %309 = inttoptr i32 %308 to %Tstruct.json_value_t_t*
  %310 = ptrtoint %Tstruct.json_value_t_t* %309 to i32
  %cmp241 = icmp eq i32 %310, 0
  br i1 %cmp241, label %if.then242, label %if.else245

if.then242:                                       ; preds = %_Dynamic_check.succeeded239
  %call243 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %311 = load i32, i32* @tests_passed, align 4
  %inc244 = add nsw i32 %311, 1
  store i32 %inc244, i32* @tests_passed, align 4
  br label %if.end248

_Dynamic_check.failed238:                         ; preds = %if.end235
  call void @llvm.trap() #6
  unreachable

if.else245:                                       ; preds = %_Dynamic_check.succeeded239
  %call246 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %312 = load i32, i32* @tests_failed, align 4
  %inc247 = add nsw i32 %312, 1
  store i32 %inc247, i32* @tests_failed, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.else245, %if.then242
  %313 = load i8*, i8** %filename, align 4
  %314 = ptrtoint i8* %313 to i64
  %315 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %314)
  %call249 = call i8* @t_strcpy(i8* %315, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.152, i64 0, i64 0))
  %316 = call i32 @c_TPtoO(i8* %call249)
  %317 = inttoptr i32 %316 to i8*
  %call250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 384, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %318 = load i8*, i8** %filename, align 4
  %319 = ptrtoint i8* %318 to i32
  %320 = call i8* @c_fetch_pointer_from_offset(i32 %319)
  %321 = call i1 @c_isTaintedPointerToTaintedMem(i8* %320)
  br i1 %321, label %_Dynamic_check.succeeded252, label %_Dynamic_check.failed251

_Dynamic_check.succeeded252:                      ; preds = %if.end248
  %call253 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %320)
  %322 = bitcast %Tstruct.json_value_t_t* %call253 to i8*
  %323 = call i32 @c_TPtoO(i8* %322)
  %324 = inttoptr i32 %323 to %Tstruct.json_value_t_t*
  %325 = ptrtoint %Tstruct.json_value_t_t* %324 to i32
  %cmp254 = icmp eq i32 %325, 0
  br i1 %cmp254, label %if.then255, label %if.else258

if.then255:                                       ; preds = %_Dynamic_check.succeeded252
  %call256 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %326 = load i32, i32* @tests_passed, align 4
  %inc257 = add nsw i32 %326, 1
  store i32 %inc257, i32* @tests_passed, align 4
  br label %if.end261

_Dynamic_check.failed251:                         ; preds = %if.end248
  call void @llvm.trap() #6
  unreachable

if.else258:                                       ; preds = %_Dynamic_check.succeeded252
  %call259 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %327 = load i32, i32* @tests_failed, align 4
  %inc260 = add nsw i32 %327, 1
  store i32 %inc260, i32* @tests_failed, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.else258, %if.then255
  %328 = load i8*, i8** %filename, align 4
  %329 = ptrtoint i8* %328 to i64
  %330 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %329)
  %call262 = call i8* @t_strcpy(i8* %330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0))
  %331 = call i32 @c_TPtoO(i8* %call262)
  %332 = inttoptr i32 %331 to i8*
  %call263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %333 = load i8*, i8** %filename, align 4
  %334 = ptrtoint i8* %333 to i32
  %335 = call i8* @c_fetch_pointer_from_offset(i32 %334)
  %336 = call i1 @c_isTaintedPointerToTaintedMem(i8* %335)
  br i1 %336, label %_Dynamic_check.succeeded265, label %_Dynamic_check.failed264

_Dynamic_check.succeeded265:                      ; preds = %if.end261
  %call266 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %335)
  %337 = bitcast %Tstruct.json_value_t_t* %call266 to i8*
  %338 = call i32 @c_TPtoO(i8* %337)
  %339 = inttoptr i32 %338 to %Tstruct.json_value_t_t*
  %340 = ptrtoint %Tstruct.json_value_t_t* %339 to i32
  %cmp267 = icmp eq i32 %340, 0
  br i1 %cmp267, label %if.then268, label %if.else271

if.then268:                                       ; preds = %_Dynamic_check.succeeded265
  %call269 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %341 = load i32, i32* @tests_passed, align 4
  %inc270 = add nsw i32 %341, 1
  store i32 %inc270, i32* @tests_passed, align 4
  br label %if.end274

_Dynamic_check.failed264:                         ; preds = %if.end261
  call void @llvm.trap() #6
  unreachable

if.else271:                                       ; preds = %_Dynamic_check.succeeded265
  %call272 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %342 = load i32, i32* @tests_failed, align 4
  %inc273 = add nsw i32 %342, 1
  store i32 %inc273, i32* @tests_failed, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.else271, %if.then268
  %343 = load i8*, i8** %filename, align 4
  %344 = ptrtoint i8* %343 to i64
  %345 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %344)
  %call275 = call i8* @t_strcpy(i8* %345, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0))
  %346 = call i32 @c_TPtoO(i8* %call275)
  %347 = inttoptr i32 %346 to i8*
  %call276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 388, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %348 = load i8*, i8** %filename, align 4
  %349 = ptrtoint i8* %348 to i32
  %350 = call i8* @c_fetch_pointer_from_offset(i32 %349)
  %351 = call i1 @c_isTaintedPointerToTaintedMem(i8* %350)
  br i1 %351, label %_Dynamic_check.succeeded278, label %_Dynamic_check.failed277

_Dynamic_check.succeeded278:                      ; preds = %if.end274
  %call279 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %350)
  %352 = bitcast %Tstruct.json_value_t_t* %call279 to i8*
  %353 = call i32 @c_TPtoO(i8* %352)
  %354 = inttoptr i32 %353 to %Tstruct.json_value_t_t*
  %355 = ptrtoint %Tstruct.json_value_t_t* %354 to i32
  %cmp280 = icmp eq i32 %355, 0
  br i1 %cmp280, label %if.then281, label %if.else284

if.then281:                                       ; preds = %_Dynamic_check.succeeded278
  %call282 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %356 = load i32, i32* @tests_passed, align 4
  %inc283 = add nsw i32 %356, 1
  store i32 %inc283, i32* @tests_passed, align 4
  br label %if.end287

_Dynamic_check.failed277:                         ; preds = %if.end274
  call void @llvm.trap() #6
  unreachable

if.else284:                                       ; preds = %_Dynamic_check.succeeded278
  %call285 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %357 = load i32, i32* @tests_failed, align 4
  %inc286 = add nsw i32 %357, 1
  store i32 %inc286, i32* @tests_failed, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.else284, %if.then281
  %358 = load i8*, i8** %filename, align 4
  %359 = ptrtoint i8* %358 to i64
  %360 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %359)
  %call288 = call i8* @t_strcpy(i8* %360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i64 0, i64 0))
  %361 = call i32 @c_TPtoO(i8* %call288)
  %362 = inttoptr i32 %361 to i8*
  %call289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 390, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %363 = load i8*, i8** %filename, align 4
  %364 = ptrtoint i8* %363 to i32
  %365 = call i8* @c_fetch_pointer_from_offset(i32 %364)
  %366 = call i1 @c_isTaintedPointerToTaintedMem(i8* %365)
  br i1 %366, label %_Dynamic_check.succeeded291, label %_Dynamic_check.failed290

_Dynamic_check.succeeded291:                      ; preds = %if.end287
  %call292 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %365)
  %367 = bitcast %Tstruct.json_value_t_t* %call292 to i8*
  %368 = call i32 @c_TPtoO(i8* %367)
  %369 = inttoptr i32 %368 to %Tstruct.json_value_t_t*
  %370 = ptrtoint %Tstruct.json_value_t_t* %369 to i32
  %cmp293 = icmp eq i32 %370, 0
  br i1 %cmp293, label %if.then294, label %if.else297

if.then294:                                       ; preds = %_Dynamic_check.succeeded291
  %call295 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %371 = load i32, i32* @tests_passed, align 4
  %inc296 = add nsw i32 %371, 1
  store i32 %inc296, i32* @tests_passed, align 4
  br label %if.end300

_Dynamic_check.failed290:                         ; preds = %if.end287
  call void @llvm.trap() #6
  unreachable

if.else297:                                       ; preds = %_Dynamic_check.succeeded291
  %call298 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %372 = load i32, i32* @tests_failed, align 4
  %inc299 = add nsw i32 %372, 1
  store i32 %inc299, i32* @tests_failed, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.else297, %if.then294
  %373 = load i8*, i8** %filename, align 4
  %374 = ptrtoint i8* %373 to i64
  %375 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %374)
  %call301 = call i8* @t_strcpy(i8* %375, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0))
  %376 = call i32 @c_TPtoO(i8* %call301)
  %377 = inttoptr i32 %376 to i8*
  %call302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %378 = load i8*, i8** %filename, align 4
  %379 = ptrtoint i8* %378 to i32
  %380 = call i8* @c_fetch_pointer_from_offset(i32 %379)
  %381 = call i1 @c_isTaintedPointerToTaintedMem(i8* %380)
  br i1 %381, label %_Dynamic_check.succeeded304, label %_Dynamic_check.failed303

_Dynamic_check.succeeded304:                      ; preds = %if.end300
  %call305 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %380)
  %382 = bitcast %Tstruct.json_value_t_t* %call305 to i8*
  %383 = call i32 @c_TPtoO(i8* %382)
  %384 = inttoptr i32 %383 to %Tstruct.json_value_t_t*
  %385 = ptrtoint %Tstruct.json_value_t_t* %384 to i32
  %cmp306 = icmp eq i32 %385, 0
  br i1 %cmp306, label %if.then307, label %if.else310

if.then307:                                       ; preds = %_Dynamic_check.succeeded304
  %call308 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %386 = load i32, i32* @tests_passed, align 4
  %inc309 = add nsw i32 %386, 1
  store i32 %inc309, i32* @tests_passed, align 4
  br label %if.end313

_Dynamic_check.failed303:                         ; preds = %if.end300
  call void @llvm.trap() #6
  unreachable

if.else310:                                       ; preds = %_Dynamic_check.succeeded304
  %call311 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %387 = load i32, i32* @tests_failed, align 4
  %inc312 = add nsw i32 %387, 1
  store i32 %inc312, i32* @tests_failed, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.else310, %if.then307
  %388 = load i8*, i8** %filename, align 4
  %389 = ptrtoint i8* %388 to i64
  %390 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %389)
  %call314 = call i8* @t_strcpy(i8* %390, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i64 0, i64 0))
  %391 = call i32 @c_TPtoO(i8* %call314)
  %392 = inttoptr i32 %391 to i8*
  %call315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %393 = load i8*, i8** %filename, align 4
  %394 = ptrtoint i8* %393 to i32
  %395 = call i8* @c_fetch_pointer_from_offset(i32 %394)
  %396 = call i1 @c_isTaintedPointerToTaintedMem(i8* %395)
  br i1 %396, label %_Dynamic_check.succeeded317, label %_Dynamic_check.failed316

_Dynamic_check.succeeded317:                      ; preds = %if.end313
  %call318 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %395)
  %397 = bitcast %Tstruct.json_value_t_t* %call318 to i8*
  %398 = call i32 @c_TPtoO(i8* %397)
  %399 = inttoptr i32 %398 to %Tstruct.json_value_t_t*
  %400 = ptrtoint %Tstruct.json_value_t_t* %399 to i32
  %cmp319 = icmp eq i32 %400, 0
  br i1 %cmp319, label %if.then320, label %if.else323

if.then320:                                       ; preds = %_Dynamic_check.succeeded317
  %call321 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %401 = load i32, i32* @tests_passed, align 4
  %inc322 = add nsw i32 %401, 1
  store i32 %inc322, i32* @tests_passed, align 4
  br label %if.end326

_Dynamic_check.failed316:                         ; preds = %if.end313
  call void @llvm.trap() #6
  unreachable

if.else323:                                       ; preds = %_Dynamic_check.succeeded317
  %call324 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %402 = load i32, i32* @tests_failed, align 4
  %inc325 = add nsw i32 %402, 1
  store i32 %inc325, i32* @tests_failed, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.else323, %if.then320
  %403 = load i8*, i8** %filename, align 4
  %404 = ptrtoint i8* %403 to i64
  %405 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %404)
  %call327 = call i8* @t_strcpy(i8* %405, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0))
  %406 = call i32 @c_TPtoO(i8* %call327)
  %407 = inttoptr i32 %406 to i8*
  %call328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %408 = load i8*, i8** %filename, align 4
  %409 = ptrtoint i8* %408 to i32
  %410 = call i8* @c_fetch_pointer_from_offset(i32 %409)
  %411 = call i1 @c_isTaintedPointerToTaintedMem(i8* %410)
  br i1 %411, label %_Dynamic_check.succeeded330, label %_Dynamic_check.failed329

_Dynamic_check.succeeded330:                      ; preds = %if.end326
  %call331 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %410)
  %412 = bitcast %Tstruct.json_value_t_t* %call331 to i8*
  %413 = call i32 @c_TPtoO(i8* %412)
  %414 = inttoptr i32 %413 to %Tstruct.json_value_t_t*
  %415 = ptrtoint %Tstruct.json_value_t_t* %414 to i32
  %cmp332 = icmp eq i32 %415, 0
  br i1 %cmp332, label %if.then333, label %if.else336

if.then333:                                       ; preds = %_Dynamic_check.succeeded330
  %call334 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %416 = load i32, i32* @tests_passed, align 4
  %inc335 = add nsw i32 %416, 1
  store i32 %inc335, i32* @tests_passed, align 4
  br label %if.end339

_Dynamic_check.failed329:                         ; preds = %if.end326
  call void @llvm.trap() #6
  unreachable

if.else336:                                       ; preds = %_Dynamic_check.succeeded330
  %call337 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %417 = load i32, i32* @tests_failed, align 4
  %inc338 = add nsw i32 %417, 1
  store i32 %inc338, i32* @tests_failed, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.else336, %if.then333
  %418 = load i8*, i8** %filename, align 4
  %419 = ptrtoint i8* %418 to i64
  %420 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %419)
  %call340 = call i8* @t_strcpy(i8* %420, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i64 0, i64 0))
  %421 = call i32 @c_TPtoO(i8* %call340)
  %422 = inttoptr i32 %421 to i8*
  %call341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %423 = load i8*, i8** %filename, align 4
  %424 = ptrtoint i8* %423 to i32
  %425 = call i8* @c_fetch_pointer_from_offset(i32 %424)
  %426 = call i1 @c_isTaintedPointerToTaintedMem(i8* %425)
  br i1 %426, label %_Dynamic_check.succeeded343, label %_Dynamic_check.failed342

_Dynamic_check.succeeded343:                      ; preds = %if.end339
  %call344 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %425)
  %427 = bitcast %Tstruct.json_value_t_t* %call344 to i8*
  %428 = call i32 @c_TPtoO(i8* %427)
  %429 = inttoptr i32 %428 to %Tstruct.json_value_t_t*
  %430 = ptrtoint %Tstruct.json_value_t_t* %429 to i32
  %cmp345 = icmp eq i32 %430, 0
  br i1 %cmp345, label %if.then346, label %if.else349

if.then346:                                       ; preds = %_Dynamic_check.succeeded343
  %call347 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %431 = load i32, i32* @tests_passed, align 4
  %inc348 = add nsw i32 %431, 1
  store i32 %inc348, i32* @tests_passed, align 4
  br label %if.end352

_Dynamic_check.failed342:                         ; preds = %if.end339
  call void @llvm.trap() #6
  unreachable

if.else349:                                       ; preds = %_Dynamic_check.succeeded343
  %call350 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %432 = load i32, i32* @tests_failed, align 4
  %inc351 = add nsw i32 %432, 1
  store i32 %inc351, i32* @tests_failed, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.else349, %if.then346
  %433 = load i8*, i8** %filename, align 4
  %434 = ptrtoint i8* %433 to i64
  %435 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %434)
  %call353 = call i8* @t_strcpy(i8* %435, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0))
  %436 = call i32 @c_TPtoO(i8* %call353)
  %437 = inttoptr i32 %436 to i8*
  %call354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 400, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %438 = load i8*, i8** %filename, align 4
  %439 = ptrtoint i8* %438 to i32
  %440 = call i8* @c_fetch_pointer_from_offset(i32 %439)
  %441 = call i1 @c_isTaintedPointerToTaintedMem(i8* %440)
  br i1 %441, label %_Dynamic_check.succeeded356, label %_Dynamic_check.failed355

_Dynamic_check.succeeded356:                      ; preds = %if.end352
  %call357 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %440)
  %442 = bitcast %Tstruct.json_value_t_t* %call357 to i8*
  %443 = call i32 @c_TPtoO(i8* %442)
  %444 = inttoptr i32 %443 to %Tstruct.json_value_t_t*
  %445 = ptrtoint %Tstruct.json_value_t_t* %444 to i32
  %cmp358 = icmp eq i32 %445, 0
  br i1 %cmp358, label %if.then359, label %if.else362

if.then359:                                       ; preds = %_Dynamic_check.succeeded356
  %call360 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %446 = load i32, i32* @tests_passed, align 4
  %inc361 = add nsw i32 %446, 1
  store i32 %inc361, i32* @tests_passed, align 4
  br label %if.end365

_Dynamic_check.failed355:                         ; preds = %if.end352
  call void @llvm.trap() #6
  unreachable

if.else362:                                       ; preds = %_Dynamic_check.succeeded356
  %call363 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %447 = load i32, i32* @tests_failed, align 4
  %inc364 = add nsw i32 %447, 1
  store i32 %inc364, i32* @tests_failed, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.else362, %if.then359
  %448 = load i8*, i8** %filename, align 4
  %449 = ptrtoint i8* %448 to i64
  %450 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %449)
  %call366 = call i8* @t_strcpy(i8* %450, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i64 0, i64 0))
  %451 = call i32 @c_TPtoO(i8* %call366)
  %452 = inttoptr i32 %451 to i8*
  %call367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 402, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %453 = load i8*, i8** %filename, align 4
  %454 = ptrtoint i8* %453 to i32
  %455 = call i8* @c_fetch_pointer_from_offset(i32 %454)
  %456 = call i1 @c_isTaintedPointerToTaintedMem(i8* %455)
  br i1 %456, label %_Dynamic_check.succeeded369, label %_Dynamic_check.failed368

_Dynamic_check.succeeded369:                      ; preds = %if.end365
  %call370 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %455)
  %457 = bitcast %Tstruct.json_value_t_t* %call370 to i8*
  %458 = call i32 @c_TPtoO(i8* %457)
  %459 = inttoptr i32 %458 to %Tstruct.json_value_t_t*
  %460 = ptrtoint %Tstruct.json_value_t_t* %459 to i32
  %cmp371 = icmp eq i32 %460, 0
  br i1 %cmp371, label %if.then372, label %if.else375

if.then372:                                       ; preds = %_Dynamic_check.succeeded369
  %call373 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %461 = load i32, i32* @tests_passed, align 4
  %inc374 = add nsw i32 %461, 1
  store i32 %inc374, i32* @tests_passed, align 4
  br label %if.end378

_Dynamic_check.failed368:                         ; preds = %if.end365
  call void @llvm.trap() #6
  unreachable

if.else375:                                       ; preds = %_Dynamic_check.succeeded369
  %call376 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %462 = load i32, i32* @tests_failed, align 4
  %inc377 = add nsw i32 %462, 1
  store i32 %inc377, i32* @tests_failed, align 4
  br label %if.end378

if.end378:                                        ; preds = %if.else375, %if.then372
  %463 = load i8*, i8** %filename, align 4
  %464 = ptrtoint i8* %463 to i64
  %465 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %464)
  %call379 = call i8* @t_strcpy(i8* %465, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0))
  %466 = call i32 @c_TPtoO(i8* %call379)
  %467 = inttoptr i32 %466 to i8*
  %call380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %468 = load i8*, i8** %filename, align 4
  %469 = ptrtoint i8* %468 to i32
  %470 = call i8* @c_fetch_pointer_from_offset(i32 %469)
  %471 = call i1 @c_isTaintedPointerToTaintedMem(i8* %470)
  br i1 %471, label %_Dynamic_check.succeeded382, label %_Dynamic_check.failed381

_Dynamic_check.succeeded382:                      ; preds = %if.end378
  %call383 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %470)
  %472 = bitcast %Tstruct.json_value_t_t* %call383 to i8*
  %473 = call i32 @c_TPtoO(i8* %472)
  %474 = inttoptr i32 %473 to %Tstruct.json_value_t_t*
  %475 = ptrtoint %Tstruct.json_value_t_t* %474 to i32
  %cmp384 = icmp eq i32 %475, 0
  br i1 %cmp384, label %if.then385, label %if.else388

if.then385:                                       ; preds = %_Dynamic_check.succeeded382
  %call386 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %476 = load i32, i32* @tests_passed, align 4
  %inc387 = add nsw i32 %476, 1
  store i32 %inc387, i32* @tests_passed, align 4
  br label %if.end391

_Dynamic_check.failed381:                         ; preds = %if.end378
  call void @llvm.trap() #6
  unreachable

if.else388:                                       ; preds = %_Dynamic_check.succeeded382
  %call389 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %477 = load i32, i32* @tests_failed, align 4
  %inc390 = add nsw i32 %477, 1
  store i32 %inc390, i32* @tests_failed, align 4
  br label %if.end391

if.end391:                                        ; preds = %if.else388, %if.then385
  %478 = load i8*, i8** %filename, align 4
  %479 = ptrtoint i8* %478 to i64
  %480 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %479)
  %call392 = call i8* @t_strcpy(i8* %480, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.163, i64 0, i64 0))
  %481 = call i32 @c_TPtoO(i8* %call392)
  %482 = inttoptr i32 %481 to i8*
  %call393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 406, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %483 = load i8*, i8** %filename, align 4
  %484 = ptrtoint i8* %483 to i32
  %485 = call i8* @c_fetch_pointer_from_offset(i32 %484)
  %486 = call i1 @c_isTaintedPointerToTaintedMem(i8* %485)
  br i1 %486, label %_Dynamic_check.succeeded395, label %_Dynamic_check.failed394

_Dynamic_check.succeeded395:                      ; preds = %if.end391
  %call396 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %485)
  %487 = bitcast %Tstruct.json_value_t_t* %call396 to i8*
  %488 = call i32 @c_TPtoO(i8* %487)
  %489 = inttoptr i32 %488 to %Tstruct.json_value_t_t*
  %490 = ptrtoint %Tstruct.json_value_t_t* %489 to i32
  %cmp397 = icmp eq i32 %490, 0
  br i1 %cmp397, label %if.then398, label %if.else401

if.then398:                                       ; preds = %_Dynamic_check.succeeded395
  %call399 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %491 = load i32, i32* @tests_passed, align 4
  %inc400 = add nsw i32 %491, 1
  store i32 %inc400, i32* @tests_passed, align 4
  br label %if.end404

_Dynamic_check.failed394:                         ; preds = %if.end391
  call void @llvm.trap() #6
  unreachable

if.else401:                                       ; preds = %_Dynamic_check.succeeded395
  %call402 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %492 = load i32, i32* @tests_failed, align 4
  %inc403 = add nsw i32 %492, 1
  store i32 %inc403, i32* @tests_failed, align 4
  br label %if.end404

if.end404:                                        ; preds = %if.else401, %if.then398
  %493 = load i8*, i8** %filename, align 4
  %494 = ptrtoint i8* %493 to i64
  %495 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %494)
  %call405 = call i8* @t_strcpy(i8* %495, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i64 0, i64 0))
  %496 = call i32 @c_TPtoO(i8* %call405)
  %497 = inttoptr i32 %496 to i8*
  %call406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 408, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %498 = load i8*, i8** %filename, align 4
  %499 = ptrtoint i8* %498 to i32
  %500 = call i8* @c_fetch_pointer_from_offset(i32 %499)
  %501 = call i1 @c_isTaintedPointerToTaintedMem(i8* %500)
  br i1 %501, label %_Dynamic_check.succeeded408, label %_Dynamic_check.failed407

_Dynamic_check.succeeded408:                      ; preds = %if.end404
  %call409 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %500)
  %502 = bitcast %Tstruct.json_value_t_t* %call409 to i8*
  %503 = call i32 @c_TPtoO(i8* %502)
  %504 = inttoptr i32 %503 to %Tstruct.json_value_t_t*
  %505 = ptrtoint %Tstruct.json_value_t_t* %504 to i32
  %cmp410 = icmp eq i32 %505, 0
  br i1 %cmp410, label %if.then411, label %if.else414

if.then411:                                       ; preds = %_Dynamic_check.succeeded408
  %call412 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %506 = load i32, i32* @tests_passed, align 4
  %inc413 = add nsw i32 %506, 1
  store i32 %inc413, i32* @tests_passed, align 4
  br label %if.end417

_Dynamic_check.failed407:                         ; preds = %if.end404
  call void @llvm.trap() #6
  unreachable

if.else414:                                       ; preds = %_Dynamic_check.succeeded408
  %call415 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %507 = load i32, i32* @tests_failed, align 4
  %inc416 = add nsw i32 %507, 1
  store i32 %inc416, i32* @tests_failed, align 4
  br label %if.end417

if.end417:                                        ; preds = %if.else414, %if.then411
  %508 = load i8*, i8** %filename, align 4
  %509 = ptrtoint i8* %508 to i64
  %510 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %509)
  %call418 = call i8* @t_strcpy(i8* %510, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0))
  %511 = call i32 @c_TPtoO(i8* %call418)
  %512 = inttoptr i32 %511 to i8*
  %call419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %513 = load i8*, i8** %filename, align 4
  %514 = ptrtoint i8* %513 to i32
  %515 = call i8* @c_fetch_pointer_from_offset(i32 %514)
  %516 = call i1 @c_isTaintedPointerToTaintedMem(i8* %515)
  br i1 %516, label %_Dynamic_check.succeeded421, label %_Dynamic_check.failed420

_Dynamic_check.succeeded421:                      ; preds = %if.end417
  %call422 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %515)
  %517 = bitcast %Tstruct.json_value_t_t* %call422 to i8*
  %518 = call i32 @c_TPtoO(i8* %517)
  %519 = inttoptr i32 %518 to %Tstruct.json_value_t_t*
  %520 = ptrtoint %Tstruct.json_value_t_t* %519 to i32
  %cmp423 = icmp eq i32 %520, 0
  br i1 %cmp423, label %if.then424, label %if.else427

if.then424:                                       ; preds = %_Dynamic_check.succeeded421
  %call425 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %521 = load i32, i32* @tests_passed, align 4
  %inc426 = add nsw i32 %521, 1
  store i32 %inc426, i32* @tests_passed, align 4
  br label %if.end430

_Dynamic_check.failed420:                         ; preds = %if.end417
  call void @llvm.trap() #6
  unreachable

if.else427:                                       ; preds = %_Dynamic_check.succeeded421
  %call428 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %522 = load i32, i32* @tests_failed, align 4
  %inc429 = add nsw i32 %522, 1
  store i32 %inc429, i32* @tests_failed, align 4
  br label %if.end430

if.end430:                                        ; preds = %if.else427, %if.then424
  %523 = load i8*, i8** %filename, align 4
  %524 = ptrtoint i8* %523 to i64
  %525 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %524)
  %call431 = call i8* @t_strcpy(i8* %525, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i64 0, i64 0))
  %526 = call i32 @c_TPtoO(i8* %call431)
  %527 = inttoptr i32 %526 to i8*
  %call432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %528 = load i8*, i8** %filename, align 4
  %529 = ptrtoint i8* %528 to i32
  %530 = call i8* @c_fetch_pointer_from_offset(i32 %529)
  %531 = call i1 @c_isTaintedPointerToTaintedMem(i8* %530)
  br i1 %531, label %_Dynamic_check.succeeded434, label %_Dynamic_check.failed433

_Dynamic_check.succeeded434:                      ; preds = %if.end430
  %call435 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %530)
  %532 = bitcast %Tstruct.json_value_t_t* %call435 to i8*
  %533 = call i32 @c_TPtoO(i8* %532)
  %534 = inttoptr i32 %533 to %Tstruct.json_value_t_t*
  %535 = ptrtoint %Tstruct.json_value_t_t* %534 to i32
  %cmp436 = icmp eq i32 %535, 0
  br i1 %cmp436, label %if.then437, label %if.else440

if.then437:                                       ; preds = %_Dynamic_check.succeeded434
  %call438 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %536 = load i32, i32* @tests_passed, align 4
  %inc439 = add nsw i32 %536, 1
  store i32 %inc439, i32* @tests_passed, align 4
  br label %if.end443

_Dynamic_check.failed433:                         ; preds = %if.end430
  call void @llvm.trap() #6
  unreachable

if.else440:                                       ; preds = %_Dynamic_check.succeeded434
  %call441 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %537 = load i32, i32* @tests_failed, align 4
  %inc442 = add nsw i32 %537, 1
  store i32 %inc442, i32* @tests_failed, align 4
  br label %if.end443

if.end443:                                        ; preds = %if.else440, %if.then437
  %538 = load i8*, i8** %filename, align 4
  %539 = ptrtoint i8* %538 to i64
  %540 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %539)
  %call444 = call i8* @t_strcpy(i8* %540, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.167, i64 0, i64 0))
  %541 = call i32 @c_TPtoO(i8* %call444)
  %542 = inttoptr i32 %541 to i8*
  %call445 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %543 = load i8*, i8** %filename, align 4
  %544 = ptrtoint i8* %543 to i32
  %545 = call i8* @c_fetch_pointer_from_offset(i32 %544)
  %546 = call i1 @c_isTaintedPointerToTaintedMem(i8* %545)
  br i1 %546, label %_Dynamic_check.succeeded447, label %_Dynamic_check.failed446

_Dynamic_check.succeeded447:                      ; preds = %if.end443
  %call448 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %545)
  %547 = bitcast %Tstruct.json_value_t_t* %call448 to i8*
  %548 = call i32 @c_TPtoO(i8* %547)
  %549 = inttoptr i32 %548 to %Tstruct.json_value_t_t*
  %550 = ptrtoint %Tstruct.json_value_t_t* %549 to i32
  %cmp449 = icmp eq i32 %550, 0
  br i1 %cmp449, label %if.then450, label %if.else453

if.then450:                                       ; preds = %_Dynamic_check.succeeded447
  %call451 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %551 = load i32, i32* @tests_passed, align 4
  %inc452 = add nsw i32 %551, 1
  store i32 %inc452, i32* @tests_passed, align 4
  br label %if.end456

_Dynamic_check.failed446:                         ; preds = %if.end443
  call void @llvm.trap() #6
  unreachable

if.else453:                                       ; preds = %_Dynamic_check.succeeded447
  %call454 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %552 = load i32, i32* @tests_failed, align 4
  %inc455 = add nsw i32 %552, 1
  store i32 %inc455, i32* @tests_failed, align 4
  br label %if.end456

if.end456:                                        ; preds = %if.else453, %if.then450
  %553 = load i8*, i8** %filename, align 4
  %554 = ptrtoint i8* %553 to i64
  %555 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %554)
  %call457 = call i8* @t_strcpy(i8* %555, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i64 0, i64 0))
  %556 = call i32 @c_TPtoO(i8* %call457)
  %557 = inttoptr i32 %556 to i8*
  %call458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 416, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %558 = load i8*, i8** %filename, align 4
  %559 = ptrtoint i8* %558 to i32
  %560 = call i8* @c_fetch_pointer_from_offset(i32 %559)
  %561 = call i1 @c_isTaintedPointerToTaintedMem(i8* %560)
  br i1 %561, label %_Dynamic_check.succeeded460, label %_Dynamic_check.failed459

_Dynamic_check.succeeded460:                      ; preds = %if.end456
  %call461 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %560)
  %562 = bitcast %Tstruct.json_value_t_t* %call461 to i8*
  %563 = call i32 @c_TPtoO(i8* %562)
  %564 = inttoptr i32 %563 to %Tstruct.json_value_t_t*
  %565 = ptrtoint %Tstruct.json_value_t_t* %564 to i32
  %cmp462 = icmp eq i32 %565, 0
  br i1 %cmp462, label %if.then463, label %if.else466

if.then463:                                       ; preds = %_Dynamic_check.succeeded460
  %call464 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %566 = load i32, i32* @tests_passed, align 4
  %inc465 = add nsw i32 %566, 1
  store i32 %inc465, i32* @tests_passed, align 4
  br label %if.end469

_Dynamic_check.failed459:                         ; preds = %if.end456
  call void @llvm.trap() #6
  unreachable

if.else466:                                       ; preds = %_Dynamic_check.succeeded460
  %call467 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %567 = load i32, i32* @tests_failed, align 4
  %inc468 = add nsw i32 %567, 1
  store i32 %inc468, i32* @tests_failed, align 4
  br label %if.end469

if.end469:                                        ; preds = %if.else466, %if.then463
  %568 = load i8*, i8** %filename, align 4
  %569 = ptrtoint i8* %568 to i64
  %570 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %569)
  %call470 = call i8* @t_strcpy(i8* %570, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i64 0, i64 0))
  %571 = call i32 @c_TPtoO(i8* %call470)
  %572 = inttoptr i32 %571 to i8*
  %call471 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 418, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %573 = load i8*, i8** %filename, align 4
  %574 = ptrtoint i8* %573 to i32
  %575 = call i8* @c_fetch_pointer_from_offset(i32 %574)
  %576 = call i1 @c_isTaintedPointerToTaintedMem(i8* %575)
  br i1 %576, label %_Dynamic_check.succeeded473, label %_Dynamic_check.failed472

_Dynamic_check.succeeded473:                      ; preds = %if.end469
  %call474 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %575)
  %577 = bitcast %Tstruct.json_value_t_t* %call474 to i8*
  %578 = call i32 @c_TPtoO(i8* %577)
  %579 = inttoptr i32 %578 to %Tstruct.json_value_t_t*
  %580 = ptrtoint %Tstruct.json_value_t_t* %579 to i32
  %cmp475 = icmp eq i32 %580, 0
  br i1 %cmp475, label %if.then476, label %if.else479

if.then476:                                       ; preds = %_Dynamic_check.succeeded473
  %call477 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %581 = load i32, i32* @tests_passed, align 4
  %inc478 = add nsw i32 %581, 1
  store i32 %inc478, i32* @tests_passed, align 4
  br label %if.end482

_Dynamic_check.failed472:                         ; preds = %if.end469
  call void @llvm.trap() #6
  unreachable

if.else479:                                       ; preds = %_Dynamic_check.succeeded473
  %call480 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %582 = load i32, i32* @tests_failed, align 4
  %inc481 = add nsw i32 %582, 1
  store i32 %inc481, i32* @tests_failed, align 4
  br label %if.end482

if.end482:                                        ; preds = %if.else479, %if.then476
  %583 = load i8*, i8** %filename, align 4
  %584 = ptrtoint i8* %583 to i64
  %585 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %584)
  %call483 = call i8* @t_strcpy(i8* %585, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i64 0, i64 0))
  %586 = call i32 @c_TPtoO(i8* %call483)
  %587 = inttoptr i32 %586 to i8*
  %call484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %588 = load i8*, i8** %filename, align 4
  %589 = ptrtoint i8* %588 to i32
  %590 = call i8* @c_fetch_pointer_from_offset(i32 %589)
  %591 = call i1 @c_isTaintedPointerToTaintedMem(i8* %590)
  br i1 %591, label %_Dynamic_check.succeeded486, label %_Dynamic_check.failed485

_Dynamic_check.succeeded486:                      ; preds = %if.end482
  %call487 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %590)
  %592 = bitcast %Tstruct.json_value_t_t* %call487 to i8*
  %593 = call i32 @c_TPtoO(i8* %592)
  %594 = inttoptr i32 %593 to %Tstruct.json_value_t_t*
  %595 = ptrtoint %Tstruct.json_value_t_t* %594 to i32
  %cmp488 = icmp eq i32 %595, 0
  br i1 %cmp488, label %if.then489, label %if.else492

if.then489:                                       ; preds = %_Dynamic_check.succeeded486
  %call490 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %596 = load i32, i32* @tests_passed, align 4
  %inc491 = add nsw i32 %596, 1
  store i32 %inc491, i32* @tests_passed, align 4
  br label %if.end495

_Dynamic_check.failed485:                         ; preds = %if.end482
  call void @llvm.trap() #6
  unreachable

if.else492:                                       ; preds = %_Dynamic_check.succeeded486
  %call493 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %597 = load i32, i32* @tests_failed, align 4
  %inc494 = add nsw i32 %597, 1
  store i32 %inc494, i32* @tests_failed, align 4
  br label %if.end495

if.end495:                                        ; preds = %if.else492, %if.then489
  %598 = load i8*, i8** %filename, align 4
  %599 = ptrtoint i8* %598 to i64
  %600 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %599)
  %call496 = call i8* @t_strcpy(i8* %600, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i64 0, i64 0))
  %601 = call i32 @c_TPtoO(i8* %call496)
  %602 = inttoptr i32 %601 to i8*
  %call497 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 422, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %603 = load i8*, i8** %filename, align 4
  %604 = ptrtoint i8* %603 to i32
  %605 = call i8* @c_fetch_pointer_from_offset(i32 %604)
  %606 = call i1 @c_isTaintedPointerToTaintedMem(i8* %605)
  br i1 %606, label %_Dynamic_check.succeeded499, label %_Dynamic_check.failed498

_Dynamic_check.succeeded499:                      ; preds = %if.end495
  %call500 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %605)
  %607 = bitcast %Tstruct.json_value_t_t* %call500 to i8*
  %608 = call i32 @c_TPtoO(i8* %607)
  %609 = inttoptr i32 %608 to %Tstruct.json_value_t_t*
  %610 = ptrtoint %Tstruct.json_value_t_t* %609 to i32
  %cmp501 = icmp eq i32 %610, 0
  br i1 %cmp501, label %if.then502, label %if.else505

if.then502:                                       ; preds = %_Dynamic_check.succeeded499
  %call503 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %611 = load i32, i32* @tests_passed, align 4
  %inc504 = add nsw i32 %611, 1
  store i32 %inc504, i32* @tests_passed, align 4
  br label %if.end508

_Dynamic_check.failed498:                         ; preds = %if.end495
  call void @llvm.trap() #6
  unreachable

if.else505:                                       ; preds = %_Dynamic_check.succeeded499
  %call506 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %612 = load i32, i32* @tests_failed, align 4
  %inc507 = add nsw i32 %612, 1
  store i32 %inc507, i32* @tests_failed, align 4
  br label %if.end508

if.end508:                                        ; preds = %if.else505, %if.then502
  %613 = load i8*, i8** %filename, align 4
  %614 = ptrtoint i8* %613 to i64
  %615 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %614)
  %call509 = call i8* @t_strcpy(i8* %615, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i64 0, i64 0))
  %616 = call i32 @c_TPtoO(i8* %call509)
  %617 = inttoptr i32 %616 to i8*
  %call510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 424, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %618 = load i8*, i8** %filename, align 4
  %619 = ptrtoint i8* %618 to i32
  %620 = call i8* @c_fetch_pointer_from_offset(i32 %619)
  %621 = call i1 @c_isTaintedPointerToTaintedMem(i8* %620)
  br i1 %621, label %_Dynamic_check.succeeded512, label %_Dynamic_check.failed511

_Dynamic_check.succeeded512:                      ; preds = %if.end508
  %call513 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %620)
  %622 = bitcast %Tstruct.json_value_t_t* %call513 to i8*
  %623 = call i32 @c_TPtoO(i8* %622)
  %624 = inttoptr i32 %623 to %Tstruct.json_value_t_t*
  %625 = ptrtoint %Tstruct.json_value_t_t* %624 to i32
  %cmp514 = icmp eq i32 %625, 0
  br i1 %cmp514, label %if.then515, label %if.else518

if.then515:                                       ; preds = %_Dynamic_check.succeeded512
  %call516 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %626 = load i32, i32* @tests_passed, align 4
  %inc517 = add nsw i32 %626, 1
  store i32 %inc517, i32* @tests_passed, align 4
  br label %if.end521

_Dynamic_check.failed511:                         ; preds = %if.end508
  call void @llvm.trap() #6
  unreachable

if.else518:                                       ; preds = %_Dynamic_check.succeeded512
  %call519 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %627 = load i32, i32* @tests_failed, align 4
  %inc520 = add nsw i32 %627, 1
  store i32 %inc520, i32* @tests_failed, align 4
  br label %if.end521

if.end521:                                        ; preds = %if.else518, %if.then515
  %628 = load i8*, i8** %filename, align 4
  %629 = ptrtoint i8* %628 to i64
  %630 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %629)
  %call522 = call i8* @t_strcpy(i8* %630, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i64 0, i64 0))
  %631 = call i32 @c_TPtoO(i8* %call522)
  %632 = inttoptr i32 %631 to i8*
  %call523 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 426, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %633 = load i8*, i8** %filename, align 4
  %634 = ptrtoint i8* %633 to i32
  %635 = call i8* @c_fetch_pointer_from_offset(i32 %634)
  %636 = call i1 @c_isTaintedPointerToTaintedMem(i8* %635)
  br i1 %636, label %_Dynamic_check.succeeded525, label %_Dynamic_check.failed524

_Dynamic_check.succeeded525:                      ; preds = %if.end521
  %call526 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %635)
  %637 = bitcast %Tstruct.json_value_t_t* %call526 to i8*
  %638 = call i32 @c_TPtoO(i8* %637)
  %639 = inttoptr i32 %638 to %Tstruct.json_value_t_t*
  %640 = ptrtoint %Tstruct.json_value_t_t* %639 to i32
  %cmp527 = icmp eq i32 %640, 0
  br i1 %cmp527, label %if.then528, label %if.else531

if.then528:                                       ; preds = %_Dynamic_check.succeeded525
  %call529 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %641 = load i32, i32* @tests_passed, align 4
  %inc530 = add nsw i32 %641, 1
  store i32 %inc530, i32* @tests_passed, align 4
  br label %if.end534

_Dynamic_check.failed524:                         ; preds = %if.end521
  call void @llvm.trap() #6
  unreachable

if.else531:                                       ; preds = %_Dynamic_check.succeeded525
  %call532 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %642 = load i32, i32* @tests_failed, align 4
  %inc533 = add nsw i32 %642, 1
  store i32 %inc533, i32* @tests_failed, align 4
  br label %if.end534

if.end534:                                        ; preds = %if.else531, %if.then528
  %643 = load i8*, i8** %filename, align 4
  %644 = ptrtoint i8* %643 to i64
  %645 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %644)
  %call535 = call i8* @t_strcpy(i8* %645, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i64 0, i64 0))
  %646 = call i32 @c_TPtoO(i8* %call535)
  %647 = inttoptr i32 %646 to i8*
  %call536 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 428, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %648 = load i8*, i8** %filename, align 4
  %649 = ptrtoint i8* %648 to i32
  %650 = call i8* @c_fetch_pointer_from_offset(i32 %649)
  %651 = call i1 @c_isTaintedPointerToTaintedMem(i8* %650)
  br i1 %651, label %_Dynamic_check.succeeded538, label %_Dynamic_check.failed537

_Dynamic_check.succeeded538:                      ; preds = %if.end534
  %call539 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %650)
  %652 = bitcast %Tstruct.json_value_t_t* %call539 to i8*
  %653 = call i32 @c_TPtoO(i8* %652)
  %654 = inttoptr i32 %653 to %Tstruct.json_value_t_t*
  %655 = ptrtoint %Tstruct.json_value_t_t* %654 to i32
  %cmp540 = icmp eq i32 %655, 0
  br i1 %cmp540, label %if.then541, label %if.else544

if.then541:                                       ; preds = %_Dynamic_check.succeeded538
  %call542 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %656 = load i32, i32* @tests_passed, align 4
  %inc543 = add nsw i32 %656, 1
  store i32 %inc543, i32* @tests_passed, align 4
  br label %if.end547

_Dynamic_check.failed537:                         ; preds = %if.end534
  call void @llvm.trap() #6
  unreachable

if.else544:                                       ; preds = %_Dynamic_check.succeeded538
  %call545 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %657 = load i32, i32* @tests_failed, align 4
  %inc546 = add nsw i32 %657, 1
  store i32 %inc546, i32* @tests_failed, align 4
  br label %if.end547

if.end547:                                        ; preds = %if.else544, %if.then541
  %658 = load i8*, i8** %filename, align 4
  %659 = ptrtoint i8* %658 to i64
  %660 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %659)
  %call548 = call i8* @t_strcpy(i8* %660, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i64 0, i64 0))
  %661 = call i32 @c_TPtoO(i8* %call548)
  %662 = inttoptr i32 %661 to i8*
  %call549 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %663 = load i8*, i8** %filename, align 4
  %664 = ptrtoint i8* %663 to i32
  %665 = call i8* @c_fetch_pointer_from_offset(i32 %664)
  %666 = call i1 @c_isTaintedPointerToTaintedMem(i8* %665)
  br i1 %666, label %_Dynamic_check.succeeded551, label %_Dynamic_check.failed550

_Dynamic_check.succeeded551:                      ; preds = %if.end547
  %call552 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %665)
  %667 = bitcast %Tstruct.json_value_t_t* %call552 to i8*
  %668 = call i32 @c_TPtoO(i8* %667)
  %669 = inttoptr i32 %668 to %Tstruct.json_value_t_t*
  %670 = ptrtoint %Tstruct.json_value_t_t* %669 to i32
  %cmp553 = icmp eq i32 %670, 0
  br i1 %cmp553, label %if.then554, label %if.else557

if.then554:                                       ; preds = %_Dynamic_check.succeeded551
  %call555 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %671 = load i32, i32* @tests_passed, align 4
  %inc556 = add nsw i32 %671, 1
  store i32 %inc556, i32* @tests_passed, align 4
  br label %if.end560

_Dynamic_check.failed550:                         ; preds = %if.end547
  call void @llvm.trap() #6
  unreachable

if.else557:                                       ; preds = %_Dynamic_check.succeeded551
  %call558 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %672 = load i32, i32* @tests_failed, align 4
  %inc559 = add nsw i32 %672, 1
  store i32 %inc559, i32* @tests_failed, align 4
  br label %if.end560

if.end560:                                        ; preds = %if.else557, %if.then554
  %673 = load i8*, i8** %filename, align 4
  %674 = ptrtoint i8* %673 to i64
  %675 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %674)
  %call561 = call i8* @t_strcpy(i8* %675, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i64 0, i64 0))
  %676 = call i32 @c_TPtoO(i8* %call561)
  %677 = inttoptr i32 %676 to i8*
  %call562 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 432, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %678 = load i8*, i8** %filename, align 4
  %679 = ptrtoint i8* %678 to i32
  %680 = call i8* @c_fetch_pointer_from_offset(i32 %679)
  %681 = call i1 @c_isTaintedPointerToTaintedMem(i8* %680)
  br i1 %681, label %_Dynamic_check.succeeded564, label %_Dynamic_check.failed563

_Dynamic_check.succeeded564:                      ; preds = %if.end560
  %call565 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %680)
  %682 = bitcast %Tstruct.json_value_t_t* %call565 to i8*
  %683 = call i32 @c_TPtoO(i8* %682)
  %684 = inttoptr i32 %683 to %Tstruct.json_value_t_t*
  %685 = ptrtoint %Tstruct.json_value_t_t* %684 to i32
  %cmp566 = icmp eq i32 %685, 0
  br i1 %cmp566, label %if.then567, label %if.else570

if.then567:                                       ; preds = %_Dynamic_check.succeeded564
  %call568 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %686 = load i32, i32* @tests_passed, align 4
  %inc569 = add nsw i32 %686, 1
  store i32 %inc569, i32* @tests_passed, align 4
  br label %if.end573

_Dynamic_check.failed563:                         ; preds = %if.end560
  call void @llvm.trap() #6
  unreachable

if.else570:                                       ; preds = %_Dynamic_check.succeeded564
  %call571 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %687 = load i32, i32* @tests_failed, align 4
  %inc572 = add nsw i32 %687, 1
  store i32 %inc572, i32* @tests_failed, align 4
  br label %if.end573

if.end573:                                        ; preds = %if.else570, %if.then567
  %688 = load i8*, i8** %filename, align 4
  %689 = ptrtoint i8* %688 to i64
  %690 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %689)
  %call574 = call i8* @t_strcpy(i8* %690, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i64 0, i64 0))
  %691 = call i32 @c_TPtoO(i8* %call574)
  %692 = inttoptr i32 %691 to i8*
  %call575 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 434, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %693 = load i8*, i8** %filename, align 4
  %694 = ptrtoint i8* %693 to i32
  %695 = call i8* @c_fetch_pointer_from_offset(i32 %694)
  %696 = call i1 @c_isTaintedPointerToTaintedMem(i8* %695)
  br i1 %696, label %_Dynamic_check.succeeded577, label %_Dynamic_check.failed576

_Dynamic_check.succeeded577:                      ; preds = %if.end573
  %call578 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %695)
  %697 = bitcast %Tstruct.json_value_t_t* %call578 to i8*
  %698 = call i32 @c_TPtoO(i8* %697)
  %699 = inttoptr i32 %698 to %Tstruct.json_value_t_t*
  %700 = ptrtoint %Tstruct.json_value_t_t* %699 to i32
  %cmp579 = icmp eq i32 %700, 0
  br i1 %cmp579, label %if.then580, label %if.else583

if.then580:                                       ; preds = %_Dynamic_check.succeeded577
  %call581 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %701 = load i32, i32* @tests_passed, align 4
  %inc582 = add nsw i32 %701, 1
  store i32 %inc582, i32* @tests_passed, align 4
  br label %if.end586

_Dynamic_check.failed576:                         ; preds = %if.end573
  call void @llvm.trap() #6
  unreachable

if.else583:                                       ; preds = %_Dynamic_check.succeeded577
  %call584 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %702 = load i32, i32* @tests_failed, align 4
  %inc585 = add nsw i32 %702, 1
  store i32 %inc585, i32* @tests_failed, align 4
  br label %if.end586

if.end586:                                        ; preds = %if.else583, %if.then580
  %703 = load i8*, i8** %filename, align 4
  %704 = ptrtoint i8* %703 to i64
  %705 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %704)
  %call587 = call i8* @t_strcpy(i8* %705, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0))
  %706 = call i32 @c_TPtoO(i8* %call587)
  %707 = inttoptr i32 %706 to i8*
  %call588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %708 = load i8*, i8** %filename, align 4
  %709 = ptrtoint i8* %708 to i32
  %710 = call i8* @c_fetch_pointer_from_offset(i32 %709)
  %711 = call i1 @c_isTaintedPointerToTaintedMem(i8* %710)
  br i1 %711, label %_Dynamic_check.succeeded590, label %_Dynamic_check.failed589

_Dynamic_check.succeeded590:                      ; preds = %if.end586
  %call591 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %710)
  %712 = bitcast %Tstruct.json_value_t_t* %call591 to i8*
  %713 = call i32 @c_TPtoO(i8* %712)
  %714 = inttoptr i32 %713 to %Tstruct.json_value_t_t*
  %715 = ptrtoint %Tstruct.json_value_t_t* %714 to i32
  %cmp592 = icmp eq i32 %715, 0
  br i1 %cmp592, label %if.then593, label %if.else596

if.then593:                                       ; preds = %_Dynamic_check.succeeded590
  %call594 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %716 = load i32, i32* @tests_passed, align 4
  %inc595 = add nsw i32 %716, 1
  store i32 %inc595, i32* @tests_passed, align 4
  br label %if.end599

_Dynamic_check.failed589:                         ; preds = %if.end586
  call void @llvm.trap() #6
  unreachable

if.else596:                                       ; preds = %_Dynamic_check.succeeded590
  %call597 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %717 = load i32, i32* @tests_failed, align 4
  %inc598 = add nsw i32 %717, 1
  store i32 %inc598, i32* @tests_failed, align 4
  br label %if.end599

if.end599:                                        ; preds = %if.else596, %if.then593
  %718 = load i8*, i8** %filename, align 4
  %719 = ptrtoint i8* %718 to i64
  %720 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %719)
  %call600 = call i8* @t_strcpy(i8* %720, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i64 0, i64 0))
  %721 = call i32 @c_TPtoO(i8* %call600)
  %722 = inttoptr i32 %721 to i8*
  %call601 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 438, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %723 = load i8*, i8** %filename, align 4
  %724 = ptrtoint i8* %723 to i32
  %725 = call i8* @c_fetch_pointer_from_offset(i32 %724)
  %726 = call i1 @c_isTaintedPointerToTaintedMem(i8* %725)
  br i1 %726, label %_Dynamic_check.succeeded603, label %_Dynamic_check.failed602

_Dynamic_check.succeeded603:                      ; preds = %if.end599
  %call604 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %725)
  %727 = bitcast %Tstruct.json_value_t_t* %call604 to i8*
  %728 = call i32 @c_TPtoO(i8* %727)
  %729 = inttoptr i32 %728 to %Tstruct.json_value_t_t*
  %730 = ptrtoint %Tstruct.json_value_t_t* %729 to i32
  %cmp605 = icmp eq i32 %730, 0
  br i1 %cmp605, label %if.then606, label %if.else609

if.then606:                                       ; preds = %_Dynamic_check.succeeded603
  %call607 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %731 = load i32, i32* @tests_passed, align 4
  %inc608 = add nsw i32 %731, 1
  store i32 %inc608, i32* @tests_passed, align 4
  br label %if.end612

_Dynamic_check.failed602:                         ; preds = %if.end599
  call void @llvm.trap() #6
  unreachable

if.else609:                                       ; preds = %_Dynamic_check.succeeded603
  %call610 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %732 = load i32, i32* @tests_failed, align 4
  %inc611 = add nsw i32 %732, 1
  store i32 %inc611, i32* @tests_failed, align 4
  br label %if.end612

if.end612:                                        ; preds = %if.else609, %if.then606
  %733 = load i8*, i8** %filename, align 4
  %734 = ptrtoint i8* %733 to i64
  %735 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %734)
  %call613 = call i8* @t_strcpy(i8* %735, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i64 0, i64 0))
  %736 = call i32 @c_TPtoO(i8* %call613)
  %737 = inttoptr i32 %736 to i8*
  %call614 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %738 = load i8*, i8** %filename, align 4
  %739 = ptrtoint i8* %738 to i32
  %740 = call i8* @c_fetch_pointer_from_offset(i32 %739)
  %741 = call i1 @c_isTaintedPointerToTaintedMem(i8* %740)
  br i1 %741, label %_Dynamic_check.succeeded616, label %_Dynamic_check.failed615

_Dynamic_check.succeeded616:                      ; preds = %if.end612
  %call617 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %740)
  %742 = bitcast %Tstruct.json_value_t_t* %call617 to i8*
  %743 = call i32 @c_TPtoO(i8* %742)
  %744 = inttoptr i32 %743 to %Tstruct.json_value_t_t*
  %745 = ptrtoint %Tstruct.json_value_t_t* %744 to i32
  %cmp618 = icmp eq i32 %745, 0
  br i1 %cmp618, label %if.then619, label %if.else622

if.then619:                                       ; preds = %_Dynamic_check.succeeded616
  %call620 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %746 = load i32, i32* @tests_passed, align 4
  %inc621 = add nsw i32 %746, 1
  store i32 %inc621, i32* @tests_passed, align 4
  br label %if.end625

_Dynamic_check.failed615:                         ; preds = %if.end612
  call void @llvm.trap() #6
  unreachable

if.else622:                                       ; preds = %_Dynamic_check.succeeded616
  %call623 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %747 = load i32, i32* @tests_failed, align 4
  %inc624 = add nsw i32 %747, 1
  store i32 %inc624, i32* @tests_failed, align 4
  br label %if.end625

if.end625:                                        ; preds = %if.else622, %if.then619
  %748 = load i8*, i8** %filename, align 4
  %749 = ptrtoint i8* %748 to i64
  %750 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %749)
  %call626 = call i8* @t_strcpy(i8* %750, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i64 0, i64 0))
  %751 = call i32 @c_TPtoO(i8* %call626)
  %752 = inttoptr i32 %751 to i8*
  %call627 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 442, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %753 = load i8*, i8** %filename, align 4
  %754 = ptrtoint i8* %753 to i32
  %755 = call i8* @c_fetch_pointer_from_offset(i32 %754)
  %756 = call i1 @c_isTaintedPointerToTaintedMem(i8* %755)
  br i1 %756, label %_Dynamic_check.succeeded629, label %_Dynamic_check.failed628

_Dynamic_check.succeeded629:                      ; preds = %if.end625
  %call630 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %755)
  %757 = bitcast %Tstruct.json_value_t_t* %call630 to i8*
  %758 = call i32 @c_TPtoO(i8* %757)
  %759 = inttoptr i32 %758 to %Tstruct.json_value_t_t*
  %760 = ptrtoint %Tstruct.json_value_t_t* %759 to i32
  %cmp631 = icmp eq i32 %760, 0
  br i1 %cmp631, label %if.then632, label %if.else635

if.then632:                                       ; preds = %_Dynamic_check.succeeded629
  %call633 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %761 = load i32, i32* @tests_passed, align 4
  %inc634 = add nsw i32 %761, 1
  store i32 %inc634, i32* @tests_passed, align 4
  br label %if.end638

_Dynamic_check.failed628:                         ; preds = %if.end625
  call void @llvm.trap() #6
  unreachable

if.else635:                                       ; preds = %_Dynamic_check.succeeded629
  %call636 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %762 = load i32, i32* @tests_failed, align 4
  %inc637 = add nsw i32 %762, 1
  store i32 %inc637, i32* @tests_failed, align 4
  br label %if.end638

if.end638:                                        ; preds = %if.else635, %if.then632
  %763 = load i8*, i8** %filename, align 4
  %764 = ptrtoint i8* %763 to i64
  %765 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %764)
  %call639 = call i8* @t_strcpy(i8* %765, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i64 0, i64 0))
  %766 = call i32 @c_TPtoO(i8* %call639)
  %767 = inttoptr i32 %766 to i8*
  %call640 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 444, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %768 = load i8*, i8** %filename, align 4
  %769 = ptrtoint i8* %768 to i32
  %770 = call i8* @c_fetch_pointer_from_offset(i32 %769)
  %771 = call i1 @c_isTaintedPointerToTaintedMem(i8* %770)
  br i1 %771, label %_Dynamic_check.succeeded642, label %_Dynamic_check.failed641

_Dynamic_check.succeeded642:                      ; preds = %if.end638
  %call643 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %770)
  %772 = bitcast %Tstruct.json_value_t_t* %call643 to i8*
  %773 = call i32 @c_TPtoO(i8* %772)
  %774 = inttoptr i32 %773 to %Tstruct.json_value_t_t*
  %775 = ptrtoint %Tstruct.json_value_t_t* %774 to i32
  %cmp644 = icmp eq i32 %775, 0
  br i1 %cmp644, label %if.then645, label %if.else648

if.then645:                                       ; preds = %_Dynamic_check.succeeded642
  %call646 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %776 = load i32, i32* @tests_passed, align 4
  %inc647 = add nsw i32 %776, 1
  store i32 %inc647, i32* @tests_passed, align 4
  br label %if.end651

_Dynamic_check.failed641:                         ; preds = %if.end638
  call void @llvm.trap() #6
  unreachable

if.else648:                                       ; preds = %_Dynamic_check.succeeded642
  %call649 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %777 = load i32, i32* @tests_failed, align 4
  %inc650 = add nsw i32 %777, 1
  store i32 %inc650, i32* @tests_failed, align 4
  br label %if.end651

if.end651:                                        ; preds = %if.else648, %if.then645
  %778 = load i8*, i8** %filename, align 4
  %779 = ptrtoint i8* %778 to i64
  %780 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %779)
  %call652 = call i8* @t_strcpy(i8* %780, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.183, i64 0, i64 0))
  %781 = call i32 @c_TPtoO(i8* %call652)
  %782 = inttoptr i32 %781 to i8*
  %call653 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 446, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %783 = load i8*, i8** %filename, align 4
  %784 = ptrtoint i8* %783 to i32
  %785 = call i8* @c_fetch_pointer_from_offset(i32 %784)
  %786 = call i1 @c_isTaintedPointerToTaintedMem(i8* %785)
  br i1 %786, label %_Dynamic_check.succeeded655, label %_Dynamic_check.failed654

_Dynamic_check.succeeded655:                      ; preds = %if.end651
  %call656 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %785)
  %787 = bitcast %Tstruct.json_value_t_t* %call656 to i8*
  %788 = call i32 @c_TPtoO(i8* %787)
  %789 = inttoptr i32 %788 to %Tstruct.json_value_t_t*
  %790 = ptrtoint %Tstruct.json_value_t_t* %789 to i32
  %cmp657 = icmp eq i32 %790, 0
  br i1 %cmp657, label %if.then658, label %if.else661

if.then658:                                       ; preds = %_Dynamic_check.succeeded655
  %call659 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %791 = load i32, i32* @tests_passed, align 4
  %inc660 = add nsw i32 %791, 1
  store i32 %inc660, i32* @tests_passed, align 4
  br label %if.end664

_Dynamic_check.failed654:                         ; preds = %if.end651
  call void @llvm.trap() #6
  unreachable

if.else661:                                       ; preds = %_Dynamic_check.succeeded655
  %call662 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %792 = load i32, i32* @tests_failed, align 4
  %inc663 = add nsw i32 %792, 1
  store i32 %inc663, i32* @tests_failed, align 4
  br label %if.end664

if.end664:                                        ; preds = %if.else661, %if.then658
  %793 = load i8*, i8** %filename, align 4
  %794 = ptrtoint i8* %793 to i64
  %795 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %794)
  %call665 = call i8* @t_strcpy(i8* %795, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.184, i64 0, i64 0))
  %796 = call i32 @c_TPtoO(i8* %call665)
  %797 = inttoptr i32 %796 to i8*
  %call666 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %798 = load i8*, i8** %filename, align 4
  %799 = ptrtoint i8* %798 to i32
  %800 = call i8* @c_fetch_pointer_from_offset(i32 %799)
  %801 = call i1 @c_isTaintedPointerToTaintedMem(i8* %800)
  br i1 %801, label %_Dynamic_check.succeeded668, label %_Dynamic_check.failed667

_Dynamic_check.succeeded668:                      ; preds = %if.end664
  %call669 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %800)
  %802 = bitcast %Tstruct.json_value_t_t* %call669 to i8*
  %803 = call i32 @c_TPtoO(i8* %802)
  %804 = inttoptr i32 %803 to %Tstruct.json_value_t_t*
  %805 = ptrtoint %Tstruct.json_value_t_t* %804 to i32
  %cmp670 = icmp eq i32 %805, 0
  br i1 %cmp670, label %if.then671, label %if.else674

if.then671:                                       ; preds = %_Dynamic_check.succeeded668
  %call672 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %806 = load i32, i32* @tests_passed, align 4
  %inc673 = add nsw i32 %806, 1
  store i32 %inc673, i32* @tests_passed, align 4
  br label %if.end677

_Dynamic_check.failed667:                         ; preds = %if.end664
  call void @llvm.trap() #6
  unreachable

if.else674:                                       ; preds = %_Dynamic_check.succeeded668
  %call675 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %807 = load i32, i32* @tests_failed, align 4
  %inc676 = add nsw i32 %807, 1
  store i32 %inc676, i32* @tests_failed, align 4
  br label %if.end677

if.end677:                                        ; preds = %if.else674, %if.then671
  %808 = load i8*, i8** %filename, align 4
  %809 = ptrtoint i8* %808 to i64
  %810 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %809)
  %call678 = call i8* @t_strcpy(i8* %810, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i64 0, i64 0))
  %811 = call i32 @c_TPtoO(i8* %call678)
  %812 = inttoptr i32 %811 to i8*
  %call679 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 450, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %813 = load i8*, i8** %filename, align 4
  %814 = ptrtoint i8* %813 to i32
  %815 = call i8* @c_fetch_pointer_from_offset(i32 %814)
  %816 = call i1 @c_isTaintedPointerToTaintedMem(i8* %815)
  br i1 %816, label %_Dynamic_check.succeeded681, label %_Dynamic_check.failed680

_Dynamic_check.succeeded681:                      ; preds = %if.end677
  %call682 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %815)
  %817 = bitcast %Tstruct.json_value_t_t* %call682 to i8*
  %818 = call i32 @c_TPtoO(i8* %817)
  %819 = inttoptr i32 %818 to %Tstruct.json_value_t_t*
  %820 = ptrtoint %Tstruct.json_value_t_t* %819 to i32
  %cmp683 = icmp eq i32 %820, 0
  br i1 %cmp683, label %if.then684, label %if.else687

if.then684:                                       ; preds = %_Dynamic_check.succeeded681
  %call685 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %821 = load i32, i32* @tests_passed, align 4
  %inc686 = add nsw i32 %821, 1
  store i32 %inc686, i32* @tests_passed, align 4
  br label %if.end690

_Dynamic_check.failed680:                         ; preds = %if.end677
  call void @llvm.trap() #6
  unreachable

if.else687:                                       ; preds = %_Dynamic_check.succeeded681
  %call688 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %822 = load i32, i32* @tests_failed, align 4
  %inc689 = add nsw i32 %822, 1
  store i32 %inc689, i32* @tests_failed, align 4
  br label %if.end690

if.end690:                                        ; preds = %if.else687, %if.then684
  %823 = load i8*, i8** %filename, align 4
  %824 = ptrtoint i8* %823 to i64
  %825 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %824)
  %call691 = call i8* @t_strcpy(i8* %825, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.186, i64 0, i64 0))
  %826 = call i32 @c_TPtoO(i8* %call691)
  %827 = inttoptr i32 %826 to i8*
  %call692 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 452, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %828 = load i8*, i8** %filename, align 4
  %829 = ptrtoint i8* %828 to i32
  %830 = call i8* @c_fetch_pointer_from_offset(i32 %829)
  %831 = call i1 @c_isTaintedPointerToTaintedMem(i8* %830)
  br i1 %831, label %_Dynamic_check.succeeded694, label %_Dynamic_check.failed693

_Dynamic_check.succeeded694:                      ; preds = %if.end690
  %call695 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %830)
  %832 = bitcast %Tstruct.json_value_t_t* %call695 to i8*
  %833 = call i32 @c_TPtoO(i8* %832)
  %834 = inttoptr i32 %833 to %Tstruct.json_value_t_t*
  %835 = ptrtoint %Tstruct.json_value_t_t* %834 to i32
  %cmp696 = icmp eq i32 %835, 0
  br i1 %cmp696, label %if.then697, label %if.else700

if.then697:                                       ; preds = %_Dynamic_check.succeeded694
  %call698 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %836 = load i32, i32* @tests_passed, align 4
  %inc699 = add nsw i32 %836, 1
  store i32 %inc699, i32* @tests_passed, align 4
  br label %if.end703

_Dynamic_check.failed693:                         ; preds = %if.end690
  call void @llvm.trap() #6
  unreachable

if.else700:                                       ; preds = %_Dynamic_check.succeeded694
  %call701 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %837 = load i32, i32* @tests_failed, align 4
  %inc702 = add nsw i32 %837, 1
  store i32 %inc702, i32* @tests_failed, align 4
  br label %if.end703

if.end703:                                        ; preds = %if.else700, %if.then697
  %838 = load i8*, i8** %filename, align 4
  %839 = ptrtoint i8* %838 to i64
  %840 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %839)
  %call704 = call i8* @t_strcpy(i8* %840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.187, i64 0, i64 0))
  %841 = call i32 @c_TPtoO(i8* %call704)
  %842 = inttoptr i32 %841 to i8*
  %call705 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 454, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %843 = load i8*, i8** %filename, align 4
  %844 = ptrtoint i8* %843 to i32
  %845 = call i8* @c_fetch_pointer_from_offset(i32 %844)
  %846 = call i1 @c_isTaintedPointerToTaintedMem(i8* %845)
  br i1 %846, label %_Dynamic_check.succeeded707, label %_Dynamic_check.failed706

_Dynamic_check.succeeded707:                      ; preds = %if.end703
  %call708 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %845)
  %847 = bitcast %Tstruct.json_value_t_t* %call708 to i8*
  %848 = call i32 @c_TPtoO(i8* %847)
  %849 = inttoptr i32 %848 to %Tstruct.json_value_t_t*
  %850 = ptrtoint %Tstruct.json_value_t_t* %849 to i32
  %cmp709 = icmp eq i32 %850, 0
  br i1 %cmp709, label %if.then710, label %if.else713

if.then710:                                       ; preds = %_Dynamic_check.succeeded707
  %call711 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %851 = load i32, i32* @tests_passed, align 4
  %inc712 = add nsw i32 %851, 1
  store i32 %inc712, i32* @tests_passed, align 4
  br label %if.end716

_Dynamic_check.failed706:                         ; preds = %if.end703
  call void @llvm.trap() #6
  unreachable

if.else713:                                       ; preds = %_Dynamic_check.succeeded707
  %call714 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %852 = load i32, i32* @tests_failed, align 4
  %inc715 = add nsw i32 %852, 1
  store i32 %inc715, i32* @tests_failed, align 4
  br label %if.end716

if.end716:                                        ; preds = %if.else713, %if.then710
  %853 = load i8*, i8** %filename, align 4
  %854 = ptrtoint i8* %853 to i64
  %855 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %854)
  %call717 = call i8* @t_strcpy(i8* %855, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.188, i64 0, i64 0))
  %856 = call i32 @c_TPtoO(i8* %call717)
  %857 = inttoptr i32 %856 to i8*
  %call718 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 456, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %858 = load i8*, i8** %filename, align 4
  %859 = ptrtoint i8* %858 to i32
  %860 = call i8* @c_fetch_pointer_from_offset(i32 %859)
  %861 = call i1 @c_isTaintedPointerToTaintedMem(i8* %860)
  br i1 %861, label %_Dynamic_check.succeeded720, label %_Dynamic_check.failed719

_Dynamic_check.succeeded720:                      ; preds = %if.end716
  %call721 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %860)
  %862 = bitcast %Tstruct.json_value_t_t* %call721 to i8*
  %863 = call i32 @c_TPtoO(i8* %862)
  %864 = inttoptr i32 %863 to %Tstruct.json_value_t_t*
  %865 = ptrtoint %Tstruct.json_value_t_t* %864 to i32
  %cmp722 = icmp eq i32 %865, 0
  br i1 %cmp722, label %if.then723, label %if.else726

if.then723:                                       ; preds = %_Dynamic_check.succeeded720
  %call724 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %866 = load i32, i32* @tests_passed, align 4
  %inc725 = add nsw i32 %866, 1
  store i32 %inc725, i32* @tests_passed, align 4
  br label %if.end729

_Dynamic_check.failed719:                         ; preds = %if.end716
  call void @llvm.trap() #6
  unreachable

if.else726:                                       ; preds = %_Dynamic_check.succeeded720
  %call727 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %867 = load i32, i32* @tests_failed, align 4
  %inc728 = add nsw i32 %867, 1
  store i32 %inc728, i32* @tests_failed, align 4
  br label %if.end729

if.end729:                                        ; preds = %if.else726, %if.then723
  %868 = load i8*, i8** %filename, align 4
  %869 = ptrtoint i8* %868 to i64
  %870 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %869)
  %call730 = call i8* @t_strcpy(i8* %870, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.189, i64 0, i64 0))
  %871 = call i32 @c_TPtoO(i8* %call730)
  %872 = inttoptr i32 %871 to i8*
  %call731 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 458, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %873 = load i8*, i8** %filename, align 4
  %874 = ptrtoint i8* %873 to i32
  %875 = call i8* @c_fetch_pointer_from_offset(i32 %874)
  %876 = call i1 @c_isTaintedPointerToTaintedMem(i8* %875)
  br i1 %876, label %_Dynamic_check.succeeded733, label %_Dynamic_check.failed732

_Dynamic_check.succeeded733:                      ; preds = %if.end729
  %call734 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %875)
  %877 = bitcast %Tstruct.json_value_t_t* %call734 to i8*
  %878 = call i32 @c_TPtoO(i8* %877)
  %879 = inttoptr i32 %878 to %Tstruct.json_value_t_t*
  %880 = ptrtoint %Tstruct.json_value_t_t* %879 to i32
  %cmp735 = icmp eq i32 %880, 0
  br i1 %cmp735, label %if.then736, label %if.else739

if.then736:                                       ; preds = %_Dynamic_check.succeeded733
  %call737 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %881 = load i32, i32* @tests_passed, align 4
  %inc738 = add nsw i32 %881, 1
  store i32 %inc738, i32* @tests_passed, align 4
  br label %if.end742

_Dynamic_check.failed732:                         ; preds = %if.end729
  call void @llvm.trap() #6
  unreachable

if.else739:                                       ; preds = %_Dynamic_check.succeeded733
  %call740 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %882 = load i32, i32* @tests_failed, align 4
  %inc741 = add nsw i32 %882, 1
  store i32 %inc741, i32* @tests_failed, align 4
  br label %if.end742

if.end742:                                        ; preds = %if.else739, %if.then736
  %call743 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 459, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.190, i64 0, i64 0))
  %883 = load i32, i32* @malloc_count, align 4
  %cmp744 = icmp eq i32 %883, 0
  br i1 %cmp744, label %if.then745, label %if.else748

if.then745:                                       ; preds = %if.end742
  %call746 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %884 = load i32, i32* @tests_passed, align 4
  %inc747 = add nsw i32 %884, 1
  store i32 %inc747, i32* @tests_passed, align 4
  br label %if.end751

if.else748:                                       ; preds = %if.end742
  %call749 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %885 = load i32, i32* @tests_failed, align 4
  %inc750 = add nsw i32 %885, 1
  store i32 %inc750, i32* @tests_failed, align 4
  br label %if.end751

if.end751:                                        ; preds = %if.else748, %if.then745
  %886 = load i8*, i8** %temp_string, align 4
  %887 = ptrtoint i8* %886 to i32
  %888 = call i8* @c_fetch_pointer_from_offset(i32 %887)
  %889 = call i1 @c_isTaintedPointerToTaintedMem(i8* %888)
  br i1 %889, label %_Dynamic_check.succeeded753, label %_Dynamic_check.failed752

_Dynamic_check.succeeded753:                      ; preds = %if.end751
  call void @t_free(i8* %888)
  %890 = load i8*, i8** %filename, align 4
  %891 = ptrtoint i8* %890 to i32
  %892 = call i8* @c_fetch_pointer_from_offset(i32 %891)
  %893 = call i1 @c_isTaintedPointerToTaintedMem(i8* %892)
  br i1 %893, label %_Dynamic_check.succeeded755, label %_Dynamic_check.failed754

_Dynamic_check.succeeded755:                      ; preds = %_Dynamic_check.succeeded753
  call void @t_free(i8* %892)
  ret void

_Dynamic_check.failed752:                         ; preds = %if.end751
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed754:                         ; preds = %_Dynamic_check.succeeded753
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_4() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %a = alloca %Tstruct.json_value_t_t*, align 4
  %a_copy = alloca %Tstruct.json_value_t_t*, align 4
  %res = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t** %val_tainted to i32*
  store i32 0, i32* %0, align 4
  %call = call i8* @string_malloc(i64 100)
  %1 = call i32 @c_TPtoO(i8* %call)
  %2 = inttoptr i32 %1 to i8*
  %3 = ptrtoint i8* %2 to i32
  %4 = bitcast i8** %filename to i32*
  store i32 %3, i32* %4, align 4
  %5 = load i8*, i8** %filename, align 4
  %6 = ptrtoint i8* %5 to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i8* @t_strcpy(i8* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  %8 = call i32 @c_TPtoO(i8* %call1)
  %9 = inttoptr i32 %8 to i8*
  %10 = bitcast %Tstruct.json_value_t_t** %a to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.json_value_t_t** %a_copy to i32*
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %filename, align 4
  %13 = ptrtoint i8* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call2 = call i32 (i8*, ...) @t_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i64 0, i64 0), i8* %14)
  %call3 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  %16 = bitcast %Tstruct.json_value_t_t* %call3 to i8*
  %17 = call i32 @c_TPtoO(i8* %16)
  %18 = inttoptr i32 %17 to %Tstruct.json_value_t_t*
  %19 = ptrtoint %Tstruct.json_value_t_t* %18 to i32
  %20 = bitcast %Tstruct.json_value_t_t** %a to i32*
  store i32 %19, i32* %20, align 4
  %21 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %22 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %23 = ptrtoint %Tstruct.json_value_t_t* %21 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %26 = bitcast i8* %24 to %Tstruct.json_value_t_t*
  %27 = ptrtoint %Tstruct.json_value_t_t* %22 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %30 = bitcast i8* %28 to %Tstruct.json_value_t_t*
  %call8 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %26, %Tstruct.json_value_t_t* %30)
  store i32 %call8, i32* %res, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 471, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0))
  %31 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded7
  %call10 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded7
  %call11 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32, i32* @tests_failed, align 4
  %inc12 = add nsw i32 %33, 1
  store i32 %inc12, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %34 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %35 = ptrtoint %Tstruct.json_value_t_t* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end
  %38 = bitcast i8* %36 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %38)
  %39 = bitcast %Tstruct.json_value_t_t* %call15 to i8*
  %40 = call i32 @c_TPtoO(i8* %39)
  %41 = inttoptr i32 %40 to %Tstruct.json_value_t_t*
  %42 = ptrtoint %Tstruct.json_value_t_t* %41 to i32
  %43 = bitcast %Tstruct.json_value_t_t** %a_copy to i32*
  store i32 %42, i32* %43, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 473, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.193, i64 0, i64 0))
  %44 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 4
  %45 = ptrtoint %Tstruct.json_value_t_t* %44 to i32
  %cmp = icmp ne i32 %45, 0
  br i1 %cmp, label %if.then17, label %if.else20

if.then17:                                        ; preds = %_Dynamic_check.succeeded14
  %call18 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @tests_passed, align 4
  %inc19 = add nsw i32 %46, 1
  store i32 %inc19, i32* @tests_passed, align 4
  br label %if.end23

_Dynamic_check.failed13:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else20:                                        ; preds = %_Dynamic_check.succeeded14
  %call21 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* @tests_failed, align 4
  %inc22 = add nsw i32 %47, 1
  store i32 %inc22, i32* @tests_failed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then17
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 474, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.194, i64 0, i64 0))
  %48 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %49 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 4
  %50 = ptrtoint %Tstruct.json_value_t_t* %48 to i32
  %51 = call i8* @c_fetch_pointer_from_offset(i32 %50)
  %52 = call i1 @c_isTaintedPointerToTaintedMem(i8* %51)
  br i1 %52, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %if.end23
  %53 = bitcast i8* %51 to %Tstruct.json_value_t_t*
  %54 = ptrtoint %Tstruct.json_value_t_t* %49 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %57 = bitcast i8* %55 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %53, %Tstruct.json_value_t_t* %57)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %58, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed25:                          ; preds = %if.end23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %59, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %60 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 4
  %61 = ptrtoint %Tstruct.json_value_t_t* %60 to i32
  %62 = call i8* @c_fetch_pointer_from_offset(i32 %61)
  %63 = call i1 @c_isTaintedPointerToTaintedMem(i8* %62)
  br i1 %63, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %64 = bitcast i8* %62 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %64)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_5() #3 {
entry:
  %zero = alloca double, align 8
  %filename = alloca i8*, align 4
  %val_from_file = alloca %Tstruct.json_value_t_t*, align 4
  %val = alloca %Tstruct.json_value_t_t*, align 4
  %val_parent = alloca %Tstruct.json_value_t_t*, align 4
  %obj = alloca %Tstruct.json_object_t_t*, align 4
  %interests_arr = alloca %Tstruct.json_array_t_t*, align 4
  %remove_test_val = alloca %Tstruct.json_value_t_t*, align 4
  %remove_test_arr = alloca %Tstruct.json_array_t_t*, align 4
  %string_1 = alloca i8*, align 4
  %string_2 = alloca i8*, align 4
  store double 0.000000e+00, double* %zero, align 8
  %call = call i8* @string_malloc(i64 100)
  %0 = call i32 @c_TPtoO(i8* %call)
  %1 = inttoptr i32 %0 to i8*
  %2 = ptrtoint i8* %1 to i32
  %3 = bitcast i8** %filename to i32*
  store i32 %2, i32* %3, align 4
  %4 = load i8*, i8** %filename, align 4
  %5 = ptrtoint i8* %4 to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i8* @t_strcpy(i8* %6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.195, i64 0, i64 0))
  %7 = call i32 @c_TPtoO(i8* %call1)
  %8 = inttoptr i32 %7 to i8*
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.195, i64 0, i64 0))
  %9 = bitcast %Tstruct.json_value_t_t* %call2 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = inttoptr i32 %10 to %Tstruct.json_value_t_t*
  %12 = ptrtoint %Tstruct.json_value_t_t* %11 to i32
  %13 = bitcast %Tstruct.json_value_t_t** %val_from_file to i32*
  store i32 %12, i32* %13, align 4
  %14 = bitcast %Tstruct.json_value_t_t** %val to i32*
  store i32 0, i32* %14, align 4
  %15 = bitcast %Tstruct.json_value_t_t** %val_parent to i32*
  store i32 0, i32* %15, align 4
  %16 = bitcast %Tstruct.json_object_t_t** %obj to i32*
  store i32 0, i32* %16, align 4
  %17 = bitcast %Tstruct.json_array_t_t** %interests_arr to i32*
  store i32 0, i32* %17, align 4
  %18 = bitcast %Tstruct.json_value_t_t** %remove_test_val to i32*
  store i32 0, i32* %18, align 4
  %19 = bitcast %Tstruct.json_array_t_t** %remove_test_arr to i32*
  store i32 0, i32* %19, align 4
  %call3 = call %Tstruct.json_value_t_t* @json_value_init_object()
  %20 = bitcast %Tstruct.json_value_t_t* %call3 to i8*
  %21 = call i32 @c_TPtoO(i8* %20)
  %22 = inttoptr i32 %21 to %Tstruct.json_value_t_t*
  %23 = ptrtoint %Tstruct.json_value_t_t* %22 to i32
  %24 = bitcast %Tstruct.json_value_t_t** %val to i32*
  store i32 %23, i32* %24, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 491, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i64 0, i64 0))
  %25 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 4
  %26 = ptrtoint %Tstruct.json_value_t_t* %25 to i32
  %cmp = icmp ne i32 %26, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32, i32* @tests_failed, align 4
  %inc7 = add nsw i32 %28, 1
  store i32 %inc7, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 4
  %30 = ptrtoint %Tstruct.json_value_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %33 = bitcast i8* %31 to %Tstruct.json_value_t_t*
  %call8 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %33)
  %34 = bitcast %Tstruct.json_object_t_t* %call8 to i8*
  %35 = call i32 @c_TPtoO(i8* %34)
  %36 = inttoptr i32 %35 to %Tstruct.json_object_t_t*
  %37 = ptrtoint %Tstruct.json_object_t_t* %36 to i32
  %38 = bitcast %Tstruct.json_object_t_t** %obj to i32*
  store i32 %37, i32* %38, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 494, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0))
  %39 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %40 = ptrtoint %Tstruct.json_object_t_t* %39 to i32
  %cmp10 = icmp ne i32 %40, 0
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %_Dynamic_check.succeeded
  %call12 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %41 = load i32, i32* @tests_passed, align 4
  %inc13 = add nsw i32 %41, 1
  store i32 %inc13, i32* @tests_passed, align 4
  br label %if.end17

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else14:                                        ; preds = %_Dynamic_check.succeeded
  %call15 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32, i32* @tests_failed, align 4
  %inc16 = add nsw i32 %42, 1
  store i32 %inc16, i32* @tests_failed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11
  %call18 = call i8* @string_malloc(i64 100)
  %43 = call i32 @c_TPtoO(i8* %call18)
  %44 = inttoptr i32 %43 to i8*
  %45 = ptrtoint i8* %44 to i32
  %46 = bitcast i8** %string_1 to i32*
  store i32 %45, i32* %46, align 4
  %call19 = call i8* @string_malloc(i64 100)
  %47 = call i32 @c_TPtoO(i8* %call19)
  %48 = inttoptr i32 %47 to i8*
  %49 = ptrtoint i8* %48 to i32
  %50 = bitcast i8** %string_2 to i32*
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %string_1, align 4
  %52 = ptrtoint i8* %51 to i64
  %53 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %52)
  %call20 = call i8* @t_strcpy(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.198, i64 0, i64 0))
  %54 = call i32 @c_TPtoO(i8* %call20)
  %55 = inttoptr i32 %54 to i8*
  %56 = load i8*, i8** %string_2, align 4
  %57 = ptrtoint i8* %56 to i64
  %58 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %57)
  %call21 = call i8* @t_strcpy(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i64 0, i64 0))
  %59 = call i32 @c_TPtoO(i8* %call21)
  %60 = inttoptr i32 %59 to i8*
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 500, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %61 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %62 = load i8*, i8** %string_1, align 4
  %63 = load i8*, i8** %string_2, align 4
  %64 = ptrtoint %Tstruct.json_object_t_t* %61 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end17
  %67 = bitcast i8* %65 to %Tstruct.json_object_t_t*
  %68 = ptrtoint i8* %62 to i32
  %69 = call i8* @c_fetch_pointer_from_offset(i32 %68)
  %70 = call i1 @c_isTaintedPointerToTaintedMem(i8* %69)
  br i1 %70, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %71 = ptrtoint i8* %63 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %call29 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %67, i8* %69, i8* %72)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %74, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed23:                          ; preds = %if.end17
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %75, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %76 = load i8*, i8** %string_1, align 4
  %77 = ptrtoint i8* %76 to i64
  %78 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %77)
  %call38 = call i8* @t_strcpy(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0))
  %79 = call i32 @c_TPtoO(i8* %call38)
  %80 = inttoptr i32 %79 to i8*
  %81 = load i8*, i8** %string_2, align 4
  %82 = ptrtoint i8* %81 to i64
  %83 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %82)
  %call39 = call i8* @t_strcpy(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i64 0, i64 0))
  %84 = call i32 @c_TPtoO(i8* %call39)
  %85 = inttoptr i32 %84 to i8*
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 503, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %86 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %87 = load i8*, i8** %string_1, align 4
  %88 = load i8*, i8** %string_2, align 4
  %89 = ptrtoint %Tstruct.json_object_t_t* %86 to i32
  %90 = call i8* @c_fetch_pointer_from_offset(i32 %89)
  %91 = call i1 @c_isTaintedPointerToTaintedMem(i8* %90)
  br i1 %91, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %if.end37
  %92 = bitcast i8* %90 to %Tstruct.json_object_t_t*
  %93 = ptrtoint i8* %87 to i32
  %94 = call i8* @c_fetch_pointer_from_offset(i32 %93)
  %95 = call i1 @c_isTaintedPointerToTaintedMem(i8* %94)
  br i1 %95, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded42
  %96 = ptrtoint i8* %88 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded44
  %call47 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %92, i8* %94, i8* %97)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.else52

if.then49:                                        ; preds = %_Dynamic_check.succeeded46
  %call50 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* @tests_passed, align 4
  %inc51 = add nsw i32 %99, 1
  store i32 %inc51, i32* @tests_passed, align 4
  br label %if.end55

_Dynamic_check.failed41:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #6
  unreachable

if.else52:                                        ; preds = %_Dynamic_check.succeeded46
  %call53 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @tests_failed, align 4
  %inc54 = add nsw i32 %100, 1
  store i32 %inc54, i32* @tests_failed, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then49
  %101 = load i8*, i8** %string_1, align 4
  %102 = ptrtoint i8* %101 to i64
  %103 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %102)
  %call56 = call i8* @t_strcpy(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.203, i64 0, i64 0))
  %104 = call i32 @c_TPtoO(i8* %call56)
  %105 = inttoptr i32 %104 to i8*
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 505, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.204, i64 0, i64 0))
  %106 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %107 = load i8*, i8** %string_1, align 4
  %108 = ptrtoint %Tstruct.json_object_t_t* %106 to i32
  %109 = call i8* @c_fetch_pointer_from_offset(i32 %108)
  %110 = call i1 @c_isTaintedPointerToTaintedMem(i8* %109)
  br i1 %110, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %if.end55
  %111 = bitcast i8* %109 to %Tstruct.json_object_t_t*
  %112 = ptrtoint i8* %107 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded59
  %call62 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %111, i8* %113, double 2.500000e+01)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.else67

if.then64:                                        ; preds = %_Dynamic_check.succeeded61
  %call65 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* @tests_passed, align 4
  %inc66 = add nsw i32 %115, 1
  store i32 %inc66, i32* @tests_passed, align 4
  br label %if.end70

_Dynamic_check.failed58:                          ; preds = %if.end55
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded59
  call void @llvm.trap() #6
  unreachable

if.else67:                                        ; preds = %_Dynamic_check.succeeded61
  %call68 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* @tests_failed, align 4
  %inc69 = add nsw i32 %116, 1
  store i32 %inc69, i32* @tests_failed, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then64
  %117 = load i8*, i8** %string_1, align 4
  %118 = ptrtoint i8* %117 to i64
  %119 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %118)
  %call71 = call i8* @t_strcpy(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i64 0, i64 0))
  %120 = call i32 @c_TPtoO(i8* %call71)
  %121 = inttoptr i32 %120 to i8*
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 507, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.206, i64 0, i64 0))
  %122 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %123 = load i8*, i8** %string_1, align 4
  %124 = ptrtoint %Tstruct.json_object_t_t* %122 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end70
  %127 = bitcast i8* %125 to %Tstruct.json_object_t_t*
  %128 = ptrtoint i8* %123 to i32
  %129 = call i8* @c_fetch_pointer_from_offset(i32 %128)
  %130 = call i1 @c_isTaintedPointerToTaintedMem(i8* %129)
  br i1 %130, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %_Dynamic_check.succeeded74
  %call77 = call i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %127, i8* %129, i32 1)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %_Dynamic_check.succeeded76
  %call80 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* @tests_passed, align 4
  %inc81 = add nsw i32 %131, 1
  store i32 %inc81, i32* @tests_passed, align 4
  br label %if.end85

_Dynamic_check.failed73:                          ; preds = %if.end70
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed75:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #6
  unreachable

if.else82:                                        ; preds = %_Dynamic_check.succeeded76
  %call83 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* @tests_failed, align 4
  %inc84 = add nsw i32 %132, 1
  store i32 %inc84, i32* @tests_failed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %133 = load i8*, i8** %string_1, align 4
  %134 = ptrtoint i8* %133 to i64
  %135 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %134)
  %call86 = call i8* @t_strcpy(i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.207, i64 0, i64 0))
  %136 = call i32 @c_TPtoO(i8* %call86)
  %137 = inttoptr i32 %136 to i8*
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 509, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.208, i64 0, i64 0))
  %138 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %139 = load i8*, i8** %string_1, align 4
  %call88 = call %Tstruct.json_value_t_t* @json_value_init_array()
  %140 = bitcast %Tstruct.json_value_t_t* %call88 to i8*
  %141 = call i32 @c_TPtoO(i8* %140)
  %142 = inttoptr i32 %141 to %Tstruct.json_value_t_t*
  %143 = ptrtoint %Tstruct.json_object_t_t* %138 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded90, label %_Dynamic_check.failed89

_Dynamic_check.succeeded90:                       ; preds = %if.end85
  %146 = bitcast i8* %144 to %Tstruct.json_object_t_t*
  %147 = ptrtoint i8* %139 to i32
  %148 = call i8* @c_fetch_pointer_from_offset(i32 %147)
  %149 = call i1 @c_isTaintedPointerToTaintedMem(i8* %148)
  br i1 %149, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.succeeded90
  %150 = ptrtoint %Tstruct.json_value_t_t* %142 to i32
  %151 = call i8* @c_fetch_pointer_from_offset(i32 %150)
  %152 = call i1 @c_isTaintedPointerToTaintedMem(i8* %151)
  br i1 %152, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %_Dynamic_check.succeeded92
  %153 = bitcast i8* %151 to %Tstruct.json_value_t_t*
  %call95 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %146, i8* %148, %Tstruct.json_value_t_t* %153)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.else100

if.then97:                                        ; preds = %_Dynamic_check.succeeded94
  %call98 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @tests_passed, align 4
  %inc99 = add nsw i32 %154, 1
  store i32 %inc99, i32* @tests_passed, align 4
  br label %if.end103

_Dynamic_check.failed89:                          ; preds = %if.end85
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.succeeded90
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed93:                          ; preds = %_Dynamic_check.succeeded92
  call void @llvm.trap() #6
  unreachable

if.else100:                                       ; preds = %_Dynamic_check.succeeded94
  %call101 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32, i32* @tests_failed, align 4
  %inc102 = add nsw i32 %155, 1
  store i32 %inc102, i32* @tests_failed, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then97
  %156 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %157 = load i8*, i8** %string_1, align 4
  %158 = ptrtoint %Tstruct.json_object_t_t* %156 to i32
  %159 = call i8* @c_fetch_pointer_from_offset(i32 %158)
  %160 = call i1 @c_isTaintedPointerToTaintedMem(i8* %159)
  br i1 %160, label %_Dynamic_check.succeeded105, label %_Dynamic_check.failed104

_Dynamic_check.succeeded105:                      ; preds = %if.end103
  %161 = bitcast i8* %159 to %Tstruct.json_object_t_t*
  %162 = ptrtoint i8* %157 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded107, label %_Dynamic_check.failed106

_Dynamic_check.succeeded107:                      ; preds = %_Dynamic_check.succeeded105
  %call108 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %161, i8* %163)
  %165 = bitcast %Tstruct.json_array_t_t* %call108 to i8*
  %166 = call i32 @c_TPtoO(i8* %165)
  %167 = inttoptr i32 %166 to %Tstruct.json_array_t_t*
  %168 = ptrtoint %Tstruct.json_array_t_t* %167 to i32
  %169 = bitcast %Tstruct.json_array_t_t** %interests_arr to i32*
  store i32 %168, i32* %169, align 4
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 511, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.209, i64 0, i64 0))
  %170 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %171 = ptrtoint %Tstruct.json_array_t_t* %170 to i32
  %cmp110 = icmp ne i32 %171, 0
  br i1 %cmp110, label %if.then111, label %if.else114

if.then111:                                       ; preds = %_Dynamic_check.succeeded107
  %call112 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %172 = load i32, i32* @tests_passed, align 4
  %inc113 = add nsw i32 %172, 1
  store i32 %inc113, i32* @tests_passed, align 4
  br label %if.end117

_Dynamic_check.failed104:                         ; preds = %if.end103
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed106:                         ; preds = %_Dynamic_check.succeeded105
  call void @llvm.trap() #6
  unreachable

if.else114:                                       ; preds = %_Dynamic_check.succeeded107
  %call115 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32, i32* @tests_failed, align 4
  %inc116 = add nsw i32 %173, 1
  store i32 %inc116, i32* @tests_failed, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.else114, %if.then111
  %174 = load i8*, i8** %string_1, align 4
  %175 = ptrtoint i8* %174 to i64
  %176 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %175)
  %call118 = call i8* @t_strcpy(i8* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i64 0, i64 0))
  %177 = call i32 @c_TPtoO(i8* %call118)
  %178 = inttoptr i32 %177 to i8*
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 513, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %179 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %180 = load i8*, i8** %string_1, align 4
  %181 = ptrtoint %Tstruct.json_array_t_t* %179 to i32
  %182 = call i8* @c_fetch_pointer_from_offset(i32 %181)
  %183 = call i1 @c_isTaintedPointerToTaintedMem(i8* %182)
  br i1 %183, label %_Dynamic_check.succeeded121, label %_Dynamic_check.failed120

_Dynamic_check.succeeded121:                      ; preds = %if.end117
  %184 = bitcast i8* %182 to %Tstruct.json_array_t_t*
  %185 = ptrtoint i8* %180 to i32
  %186 = call i8* @c_fetch_pointer_from_offset(i32 %185)
  %187 = call i1 @c_isTaintedPointerToTaintedMem(i8* %186)
  br i1 %187, label %_Dynamic_check.succeeded123, label %_Dynamic_check.failed122

_Dynamic_check.succeeded123:                      ; preds = %_Dynamic_check.succeeded121
  %call124 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %184, i8* %186)
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then126, label %if.else129

if.then126:                                       ; preds = %_Dynamic_check.succeeded123
  %call127 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %188 = load i32, i32* @tests_passed, align 4
  %inc128 = add nsw i32 %188, 1
  store i32 %inc128, i32* @tests_passed, align 4
  br label %if.end132

_Dynamic_check.failed120:                         ; preds = %if.end117
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed122:                         ; preds = %_Dynamic_check.succeeded121
  call void @llvm.trap() #6
  unreachable

if.else129:                                       ; preds = %_Dynamic_check.succeeded123
  %call130 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* @tests_failed, align 4
  %inc131 = add nsw i32 %189, 1
  store i32 %inc131, i32* @tests_failed, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.else129, %if.then126
  %190 = load i8*, i8** %string_1, align 4
  %191 = ptrtoint i8* %190 to i64
  %192 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %191)
  %call133 = call i8* @t_strcpy(i8* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.212, i64 0, i64 0))
  %193 = call i32 @c_TPtoO(i8* %call133)
  %194 = inttoptr i32 %193 to i8*
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %195 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %196 = load i8*, i8** %string_1, align 4
  %197 = ptrtoint %Tstruct.json_array_t_t* %195 to i32
  %198 = call i8* @c_fetch_pointer_from_offset(i32 %197)
  %199 = call i1 @c_isTaintedPointerToTaintedMem(i8* %198)
  br i1 %199, label %_Dynamic_check.succeeded136, label %_Dynamic_check.failed135

_Dynamic_check.succeeded136:                      ; preds = %if.end132
  %200 = bitcast i8* %198 to %Tstruct.json_array_t_t*
  %201 = ptrtoint i8* %196 to i32
  %202 = call i8* @c_fetch_pointer_from_offset(i32 %201)
  %203 = call i1 @c_isTaintedPointerToTaintedMem(i8* %202)
  br i1 %203, label %_Dynamic_check.succeeded138, label %_Dynamic_check.failed137

_Dynamic_check.succeeded138:                      ; preds = %_Dynamic_check.succeeded136
  %call139 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %200, i8* %202)
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.else144

if.then141:                                       ; preds = %_Dynamic_check.succeeded138
  %call142 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %204 = load i32, i32* @tests_passed, align 4
  %inc143 = add nsw i32 %204, 1
  store i32 %inc143, i32* @tests_passed, align 4
  br label %if.end147

_Dynamic_check.failed135:                         ; preds = %if.end132
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed137:                         ; preds = %_Dynamic_check.succeeded136
  call void @llvm.trap() #6
  unreachable

if.else144:                                       ; preds = %_Dynamic_check.succeeded138
  %call145 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %205 = load i32, i32* @tests_failed, align 4
  %inc146 = add nsw i32 %205, 1
  store i32 %inc146, i32* @tests_failed, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then141
  %206 = load i8*, i8** %string_1, align 4
  %207 = ptrtoint i8* %206 to i64
  %208 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %207)
  %call148 = call i8* @t_strcpy(i8* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i64 0, i64 0))
  %209 = call i32 @c_TPtoO(i8* %call148)
  %210 = inttoptr i32 %209 to i8*
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 517, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.214, i64 0, i64 0))
  %211 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %212 = load i8*, i8** %string_1, align 4
  %213 = ptrtoint %Tstruct.json_array_t_t* %211 to i32
  %214 = call i8* @c_fetch_pointer_from_offset(i32 %213)
  %215 = call i1 @c_isTaintedPointerToTaintedMem(i8* %214)
  br i1 %215, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %if.end147
  %216 = bitcast i8* %214 to %Tstruct.json_array_t_t*
  %217 = ptrtoint i8* %212 to i32
  %218 = call i8* @c_fetch_pointer_from_offset(i32 %217)
  %219 = call i1 @c_isTaintedPointerToTaintedMem(i8* %218)
  br i1 %219, label %_Dynamic_check.succeeded153, label %_Dynamic_check.failed152

_Dynamic_check.succeeded153:                      ; preds = %_Dynamic_check.succeeded151
  %call154 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %216, i64 0, i8* %218)
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then156, label %if.else159

if.then156:                                       ; preds = %_Dynamic_check.succeeded153
  %call157 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %220 = load i32, i32* @tests_passed, align 4
  %inc158 = add nsw i32 %220, 1
  store i32 %inc158, i32* @tests_passed, align 4
  br label %if.end162

_Dynamic_check.failed150:                         ; preds = %if.end147
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed152:                         ; preds = %_Dynamic_check.succeeded151
  call void @llvm.trap() #6
  unreachable

if.else159:                                       ; preds = %_Dynamic_check.succeeded153
  %call160 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %221 = load i32, i32* @tests_failed, align 4
  %inc161 = add nsw i32 %221, 1
  store i32 %inc161, i32* @tests_failed, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.else159, %if.then156
  %222 = load i8*, i8** %string_1, align 4
  %223 = ptrtoint i8* %222 to i64
  %224 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %223)
  %call163 = call i8* @t_strcpy(i8* %224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.215, i64 0, i64 0))
  %225 = call i32 @c_TPtoO(i8* %call163)
  %226 = inttoptr i32 %225 to i8*
  %227 = load i8*, i8** %string_2, align 4
  %228 = ptrtoint i8* %227 to i64
  %229 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %228)
  %call164 = call i8* @t_strcpy(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.216, i64 0, i64 0))
  %230 = call i32 @c_TPtoO(i8* %call164)
  %231 = inttoptr i32 %230 to i8*
  %call165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 520, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %232 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %233 = load i8*, i8** %string_1, align 4
  %234 = load i8*, i8** %string_2, align 4
  %235 = ptrtoint %Tstruct.json_object_t_t* %232 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded167, label %_Dynamic_check.failed166

_Dynamic_check.succeeded167:                      ; preds = %if.end162
  %238 = bitcast i8* %236 to %Tstruct.json_object_t_t*
  %239 = ptrtoint i8* %233 to i32
  %240 = call i8* @c_fetch_pointer_from_offset(i32 %239)
  %241 = call i1 @c_isTaintedPointerToTaintedMem(i8* %240)
  br i1 %241, label %_Dynamic_check.succeeded169, label %_Dynamic_check.failed168

_Dynamic_check.succeeded169:                      ; preds = %_Dynamic_check.succeeded167
  %242 = ptrtoint i8* %234 to i32
  %243 = call i8* @c_fetch_pointer_from_offset(i32 %242)
  %244 = call i1 @c_isTaintedPointerToTaintedMem(i8* %243)
  br i1 %244, label %_Dynamic_check.succeeded171, label %_Dynamic_check.failed170

_Dynamic_check.succeeded171:                      ; preds = %_Dynamic_check.succeeded169
  %call172 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %238, i8* %240, i8* %243)
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then174, label %if.else177

if.then174:                                       ; preds = %_Dynamic_check.succeeded171
  %call175 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %245 = load i32, i32* @tests_passed, align 4
  %inc176 = add nsw i32 %245, 1
  store i32 %inc176, i32* @tests_passed, align 4
  br label %if.end180

_Dynamic_check.failed166:                         ; preds = %if.end162
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed168:                         ; preds = %_Dynamic_check.succeeded167
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed170:                         ; preds = %_Dynamic_check.succeeded169
  call void @llvm.trap() #6
  unreachable

if.else177:                                       ; preds = %_Dynamic_check.succeeded171
  %call178 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %246 = load i32, i32* @tests_failed, align 4
  %inc179 = add nsw i32 %246, 1
  store i32 %inc179, i32* @tests_failed, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.else177, %if.then174
  %247 = load i8*, i8** %string_1, align 4
  %248 = ptrtoint i8* %247 to i64
  %249 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %248)
  %call181 = call i8* @t_strcpy(i8* %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.218, i64 0, i64 0))
  %250 = call i32 @c_TPtoO(i8* %call181)
  %251 = inttoptr i32 %250 to i8*
  %252 = load i8*, i8** %string_2, align 4
  %253 = ptrtoint i8* %252 to i64
  %254 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %253)
  %call182 = call i8* @t_strcpy(i8* %254, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i64 0, i64 0))
  %255 = call i32 @c_TPtoO(i8* %call182)
  %256 = inttoptr i32 %255 to i8*
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %257 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %258 = load i8*, i8** %string_1, align 4
  %259 = load i8*, i8** %string_2, align 4
  %260 = ptrtoint %Tstruct.json_object_t_t* %257 to i32
  %261 = call i8* @c_fetch_pointer_from_offset(i32 %260)
  %262 = call i1 @c_isTaintedPointerToTaintedMem(i8* %261)
  br i1 %262, label %_Dynamic_check.succeeded185, label %_Dynamic_check.failed184

_Dynamic_check.succeeded185:                      ; preds = %if.end180
  %263 = bitcast i8* %261 to %Tstruct.json_object_t_t*
  %264 = ptrtoint i8* %258 to i32
  %265 = call i8* @c_fetch_pointer_from_offset(i32 %264)
  %266 = call i1 @c_isTaintedPointerToTaintedMem(i8* %265)
  br i1 %266, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded185
  %267 = ptrtoint i8* %259 to i32
  %268 = call i8* @c_fetch_pointer_from_offset(i32 %267)
  %269 = call i1 @c_isTaintedPointerToTaintedMem(i8* %268)
  br i1 %269, label %_Dynamic_check.succeeded189, label %_Dynamic_check.failed188

_Dynamic_check.succeeded189:                      ; preds = %_Dynamic_check.succeeded187
  %call190 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %263, i8* %265, i8* %268)
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.then192, label %if.else195

if.then192:                                       ; preds = %_Dynamic_check.succeeded189
  %call193 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %270 = load i32, i32* @tests_passed, align 4
  %inc194 = add nsw i32 %270, 1
  store i32 %inc194, i32* @tests_passed, align 4
  br label %if.end198

_Dynamic_check.failed184:                         ; preds = %if.end180
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed186:                         ; preds = %_Dynamic_check.succeeded185
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed188:                         ; preds = %_Dynamic_check.succeeded187
  call void @llvm.trap() #6
  unreachable

if.else195:                                       ; preds = %_Dynamic_check.succeeded189
  %call196 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i32, i32* @tests_failed, align 4
  %inc197 = add nsw i32 %271, 1
  store i32 %inc197, i32* @tests_failed, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.else195, %if.then192
  %272 = load i8*, i8** %string_1, align 4
  %273 = ptrtoint i8* %272 to i64
  %274 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %273)
  %call199 = call i8* @t_strcpy(i8* %274, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.220, i64 0, i64 0))
  %275 = call i32 @c_TPtoO(i8* %call199)
  %276 = inttoptr i32 %275 to i8*
  %277 = load i8*, i8** %string_2, align 4
  %278 = ptrtoint i8* %277 to i64
  %279 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %278)
  %call200 = call i8* @t_strcpy(i8* %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i64 0, i64 0))
  %280 = call i32 @c_TPtoO(i8* %call200)
  %281 = inttoptr i32 %280 to i8*
  %call201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %282 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %283 = load i8*, i8** %string_1, align 4
  %284 = load i8*, i8** %string_2, align 4
  %285 = ptrtoint %Tstruct.json_object_t_t* %282 to i32
  %286 = call i8* @c_fetch_pointer_from_offset(i32 %285)
  %287 = call i1 @c_isTaintedPointerToTaintedMem(i8* %286)
  br i1 %287, label %_Dynamic_check.succeeded203, label %_Dynamic_check.failed202

_Dynamic_check.succeeded203:                      ; preds = %if.end198
  %288 = bitcast i8* %286 to %Tstruct.json_object_t_t*
  %289 = ptrtoint i8* %283 to i32
  %290 = call i8* @c_fetch_pointer_from_offset(i32 %289)
  %291 = call i1 @c_isTaintedPointerToTaintedMem(i8* %290)
  br i1 %291, label %_Dynamic_check.succeeded205, label %_Dynamic_check.failed204

_Dynamic_check.succeeded205:                      ; preds = %_Dynamic_check.succeeded203
  %292 = ptrtoint i8* %284 to i32
  %293 = call i8* @c_fetch_pointer_from_offset(i32 %292)
  %294 = call i1 @c_isTaintedPointerToTaintedMem(i8* %293)
  br i1 %294, label %_Dynamic_check.succeeded207, label %_Dynamic_check.failed206

_Dynamic_check.succeeded207:                      ; preds = %_Dynamic_check.succeeded205
  %call208 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %288, i8* %290, i8* %293)
  %cmp209 = icmp eq i32 %call208, 0
  br i1 %cmp209, label %if.then210, label %if.else213

if.then210:                                       ; preds = %_Dynamic_check.succeeded207
  %call211 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %295 = load i32, i32* @tests_passed, align 4
  %inc212 = add nsw i32 %295, 1
  store i32 %inc212, i32* @tests_passed, align 4
  br label %if.end216

_Dynamic_check.failed202:                         ; preds = %if.end198
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed204:                         ; preds = %_Dynamic_check.succeeded203
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed206:                         ; preds = %_Dynamic_check.succeeded205
  call void @llvm.trap() #6
  unreachable

if.else213:                                       ; preds = %_Dynamic_check.succeeded207
  %call214 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %296 = load i32, i32* @tests_failed, align 4
  %inc215 = add nsw i32 %296, 1
  store i32 %inc215, i32* @tests_failed, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.else213, %if.then210
  %297 = load i8*, i8** %string_1, align 4
  %298 = ptrtoint i8* %297 to i64
  %299 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %298)
  %call217 = call i8* @t_strcpy(i8* %299, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.220, i64 0, i64 0))
  %300 = call i32 @c_TPtoO(i8* %call217)
  %301 = inttoptr i32 %300 to i8*
  %call218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 528, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.222, i64 0, i64 0))
  %302 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %303 = load i8*, i8** %string_1, align 4
  %304 = ptrtoint %Tstruct.json_object_t_t* %302 to i32
  %305 = call i8* @c_fetch_pointer_from_offset(i32 %304)
  %306 = call i1 @c_isTaintedPointerToTaintedMem(i8* %305)
  br i1 %306, label %_Dynamic_check.succeeded220, label %_Dynamic_check.failed219

_Dynamic_check.succeeded220:                      ; preds = %if.end216
  %307 = bitcast i8* %305 to %Tstruct.json_object_t_t*
  %308 = ptrtoint i8* %303 to i32
  %309 = call i8* @c_fetch_pointer_from_offset(i32 %308)
  %310 = call i1 @c_isTaintedPointerToTaintedMem(i8* %309)
  br i1 %310, label %_Dynamic_check.succeeded222, label %_Dynamic_check.failed221

_Dynamic_check.succeeded222:                      ; preds = %_Dynamic_check.succeeded220
  %call223 = call i32 @json_object_dotremove(%Tstruct.json_object_t_t* %307, i8* %309)
  %cmp224 = icmp eq i32 %call223, 0
  br i1 %cmp224, label %if.then225, label %if.else228

if.then225:                                       ; preds = %_Dynamic_check.succeeded222
  %call226 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %311 = load i32, i32* @tests_passed, align 4
  %inc227 = add nsw i32 %311, 1
  store i32 %inc227, i32* @tests_passed, align 4
  br label %if.end231

_Dynamic_check.failed219:                         ; preds = %if.end216
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed221:                         ; preds = %_Dynamic_check.succeeded220
  call void @llvm.trap() #6
  unreachable

if.else228:                                       ; preds = %_Dynamic_check.succeeded222
  %call229 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %312 = load i32, i32* @tests_failed, align 4
  %inc230 = add nsw i32 %312, 1
  store i32 %inc230, i32* @tests_failed, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.else228, %if.then225
  %313 = load i8*, i8** %string_1, align 4
  %314 = ptrtoint i8* %313 to i64
  %315 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %314)
  %call232 = call i8* @t_strcpy(i8* %315, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0))
  %316 = call i32 @c_TPtoO(i8* %call232)
  %317 = inttoptr i32 %316 to i8*
  %318 = load i8*, i8** %string_2, align 4
  %319 = ptrtoint i8* %318 to i64
  %320 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %319)
  %call233 = call i8* @t_strcpy(i8* %320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0))
  %321 = call i32 @c_TPtoO(i8* %call233)
  %322 = inttoptr i32 %321 to i8*
  %call234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 531, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %323 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %324 = load i8*, i8** %string_1, align 4
  %325 = load i8*, i8** %string_2, align 4
  %326 = ptrtoint %Tstruct.json_object_t_t* %323 to i32
  %327 = call i8* @c_fetch_pointer_from_offset(i32 %326)
  %328 = call i1 @c_isTaintedPointerToTaintedMem(i8* %327)
  br i1 %328, label %_Dynamic_check.succeeded236, label %_Dynamic_check.failed235

_Dynamic_check.succeeded236:                      ; preds = %if.end231
  %329 = bitcast i8* %327 to %Tstruct.json_object_t_t*
  %330 = ptrtoint i8* %324 to i32
  %331 = call i8* @c_fetch_pointer_from_offset(i32 %330)
  %332 = call i1 @c_isTaintedPointerToTaintedMem(i8* %331)
  br i1 %332, label %_Dynamic_check.succeeded238, label %_Dynamic_check.failed237

_Dynamic_check.succeeded238:                      ; preds = %_Dynamic_check.succeeded236
  %333 = ptrtoint i8* %325 to i32
  %334 = call i8* @c_fetch_pointer_from_offset(i32 %333)
  %335 = call i1 @c_isTaintedPointerToTaintedMem(i8* %334)
  br i1 %335, label %_Dynamic_check.succeeded240, label %_Dynamic_check.failed239

_Dynamic_check.succeeded240:                      ; preds = %_Dynamic_check.succeeded238
  %call241 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %329, i8* %331, i8* %334)
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then243, label %if.else246

if.then243:                                       ; preds = %_Dynamic_check.succeeded240
  %call244 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %336 = load i32, i32* @tests_passed, align 4
  %inc245 = add nsw i32 %336, 1
  store i32 %inc245, i32* @tests_passed, align 4
  br label %if.end249

_Dynamic_check.failed235:                         ; preds = %if.end231
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed237:                         ; preds = %_Dynamic_check.succeeded236
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed239:                         ; preds = %_Dynamic_check.succeeded238
  call void @llvm.trap() #6
  unreachable

if.else246:                                       ; preds = %_Dynamic_check.succeeded240
  %call247 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %337 = load i32, i32* @tests_failed, align 4
  %inc248 = add nsw i32 %337, 1
  store i32 %inc248, i32* @tests_failed, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.else246, %if.then243
  %338 = load i8*, i8** %string_1, align 4
  %339 = ptrtoint i8* %338 to i64
  %340 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %339)
  %call250 = call i8* @t_strcpy(i8* %340, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0))
  %341 = call i32 @c_TPtoO(i8* %call250)
  %342 = inttoptr i32 %341 to i8*
  %343 = load i8*, i8** %string_2, align 4
  %344 = ptrtoint i8* %343 to i64
  %345 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %344)
  %call251 = call i8* @t_strcpy(i8* %345, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0))
  %346 = call i32 @c_TPtoO(i8* %call251)
  %347 = inttoptr i32 %346 to i8*
  %call252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 534, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %348 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %349 = load i8*, i8** %string_1, align 4
  %350 = load i8*, i8** %string_2, align 4
  %351 = ptrtoint %Tstruct.json_object_t_t* %348 to i32
  %352 = call i8* @c_fetch_pointer_from_offset(i32 %351)
  %353 = call i1 @c_isTaintedPointerToTaintedMem(i8* %352)
  br i1 %353, label %_Dynamic_check.succeeded254, label %_Dynamic_check.failed253

_Dynamic_check.succeeded254:                      ; preds = %if.end249
  %354 = bitcast i8* %352 to %Tstruct.json_object_t_t*
  %355 = ptrtoint i8* %349 to i32
  %356 = call i8* @c_fetch_pointer_from_offset(i32 %355)
  %357 = call i1 @c_isTaintedPointerToTaintedMem(i8* %356)
  br i1 %357, label %_Dynamic_check.succeeded256, label %_Dynamic_check.failed255

_Dynamic_check.succeeded256:                      ; preds = %_Dynamic_check.succeeded254
  %358 = ptrtoint i8* %350 to i32
  %359 = call i8* @c_fetch_pointer_from_offset(i32 %358)
  %360 = call i1 @c_isTaintedPointerToTaintedMem(i8* %359)
  br i1 %360, label %_Dynamic_check.succeeded258, label %_Dynamic_check.failed257

_Dynamic_check.succeeded258:                      ; preds = %_Dynamic_check.succeeded256
  %call259 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %354, i8* %356, i8* %359)
  %cmp260 = icmp eq i32 %call259, 0
  br i1 %cmp260, label %if.then261, label %if.else264

if.then261:                                       ; preds = %_Dynamic_check.succeeded258
  %call262 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %361 = load i32, i32* @tests_passed, align 4
  %inc263 = add nsw i32 %361, 1
  store i32 %inc263, i32* @tests_passed, align 4
  br label %if.end267

_Dynamic_check.failed253:                         ; preds = %if.end249
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed255:                         ; preds = %_Dynamic_check.succeeded254
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed257:                         ; preds = %_Dynamic_check.succeeded256
  call void @llvm.trap() #6
  unreachable

if.else264:                                       ; preds = %_Dynamic_check.succeeded258
  %call265 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %362 = load i32, i32* @tests_failed, align 4
  %inc266 = add nsw i32 %362, 1
  store i32 %inc266, i32* @tests_failed, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.else264, %if.then261
  %363 = load i8*, i8** %string_1, align 4
  %364 = ptrtoint i8* %363 to i64
  %365 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %364)
  %call268 = call i8* @t_strcpy(i8* %365, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0))
  %366 = call i32 @c_TPtoO(i8* %call268)
  %367 = inttoptr i32 %366 to i8*
  %368 = load i8*, i8** %string_2, align 4
  %369 = ptrtoint i8* %368 to i64
  %370 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %369)
  %call269 = call i8* @t_strcpy(i8* %370, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0))
  %371 = call i32 @c_TPtoO(i8* %call269)
  %372 = inttoptr i32 %371 to i8*
  %call270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %373 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %374 = load i8*, i8** %string_1, align 4
  %375 = load i8*, i8** %string_2, align 4
  %376 = ptrtoint %Tstruct.json_object_t_t* %373 to i32
  %377 = call i8* @c_fetch_pointer_from_offset(i32 %376)
  %378 = call i1 @c_isTaintedPointerToTaintedMem(i8* %377)
  br i1 %378, label %_Dynamic_check.succeeded272, label %_Dynamic_check.failed271

_Dynamic_check.succeeded272:                      ; preds = %if.end267
  %379 = bitcast i8* %377 to %Tstruct.json_object_t_t*
  %380 = ptrtoint i8* %374 to i32
  %381 = call i8* @c_fetch_pointer_from_offset(i32 %380)
  %382 = call i1 @c_isTaintedPointerToTaintedMem(i8* %381)
  br i1 %382, label %_Dynamic_check.succeeded274, label %_Dynamic_check.failed273

_Dynamic_check.succeeded274:                      ; preds = %_Dynamic_check.succeeded272
  %383 = ptrtoint i8* %375 to i32
  %384 = call i8* @c_fetch_pointer_from_offset(i32 %383)
  %385 = call i1 @c_isTaintedPointerToTaintedMem(i8* %384)
  br i1 %385, label %_Dynamic_check.succeeded276, label %_Dynamic_check.failed275

_Dynamic_check.succeeded276:                      ; preds = %_Dynamic_check.succeeded274
  %call277 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %379, i8* %381, i8* %384)
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.then279, label %if.else282

if.then279:                                       ; preds = %_Dynamic_check.succeeded276
  %call280 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %386 = load i32, i32* @tests_passed, align 4
  %inc281 = add nsw i32 %386, 1
  store i32 %inc281, i32* @tests_passed, align 4
  br label %if.end285

_Dynamic_check.failed271:                         ; preds = %if.end267
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed273:                         ; preds = %_Dynamic_check.succeeded272
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed275:                         ; preds = %_Dynamic_check.succeeded274
  call void @llvm.trap() #6
  unreachable

if.else282:                                       ; preds = %_Dynamic_check.succeeded276
  %call283 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %387 = load i32, i32* @tests_failed, align 4
  %inc284 = add nsw i32 %387, 1
  store i32 %inc284, i32* @tests_failed, align 4
  br label %if.end285

if.end285:                                        ; preds = %if.else282, %if.then279
  %388 = load i8*, i8** %string_1, align 4
  %389 = ptrtoint i8* %388 to i64
  %390 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %389)
  %call286 = call i8* @t_strcpy(i8* %390, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i64 0, i64 0))
  %391 = call i32 @c_TPtoO(i8* %call286)
  %392 = inttoptr i32 %391 to i8*
  %393 = load i8*, i8** %string_2, align 4
  %394 = ptrtoint i8* %393 to i64
  %395 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %394)
  %call287 = call i8* @t_strcpy(i8* %395, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.224, i64 0, i64 0))
  %396 = call i32 @c_TPtoO(i8* %call287)
  %397 = inttoptr i32 %396 to i8*
  %call288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 540, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %398 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %399 = load i8*, i8** %string_1, align 4
  %400 = load i8*, i8** %string_2, align 4
  %401 = ptrtoint %Tstruct.json_object_t_t* %398 to i32
  %402 = call i8* @c_fetch_pointer_from_offset(i32 %401)
  %403 = call i1 @c_isTaintedPointerToTaintedMem(i8* %402)
  br i1 %403, label %_Dynamic_check.succeeded290, label %_Dynamic_check.failed289

_Dynamic_check.succeeded290:                      ; preds = %if.end285
  %404 = bitcast i8* %402 to %Tstruct.json_object_t_t*
  %405 = ptrtoint i8* %399 to i32
  %406 = call i8* @c_fetch_pointer_from_offset(i32 %405)
  %407 = call i1 @c_isTaintedPointerToTaintedMem(i8* %406)
  br i1 %407, label %_Dynamic_check.succeeded292, label %_Dynamic_check.failed291

_Dynamic_check.succeeded292:                      ; preds = %_Dynamic_check.succeeded290
  %408 = ptrtoint i8* %400 to i32
  %409 = call i8* @c_fetch_pointer_from_offset(i32 %408)
  %410 = call i1 @c_isTaintedPointerToTaintedMem(i8* %409)
  br i1 %410, label %_Dynamic_check.succeeded294, label %_Dynamic_check.failed293

_Dynamic_check.succeeded294:                      ; preds = %_Dynamic_check.succeeded292
  %call295 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %404, i8* %406, i8* %409)
  %cmp296 = icmp eq i32 %call295, 0
  br i1 %cmp296, label %if.then297, label %if.else300

if.then297:                                       ; preds = %_Dynamic_check.succeeded294
  %call298 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %411 = load i32, i32* @tests_passed, align 4
  %inc299 = add nsw i32 %411, 1
  store i32 %inc299, i32* @tests_passed, align 4
  br label %if.end303

_Dynamic_check.failed289:                         ; preds = %if.end285
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed291:                         ; preds = %_Dynamic_check.succeeded290
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed293:                         ; preds = %_Dynamic_check.succeeded292
  call void @llvm.trap() #6
  unreachable

if.else300:                                       ; preds = %_Dynamic_check.succeeded294
  %call301 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %412 = load i32, i32* @tests_failed, align 4
  %inc302 = add nsw i32 %412, 1
  store i32 %inc302, i32* @tests_failed, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.else300, %if.then297
  %call304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 541, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.225, i64 0, i64 0))
  %413 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_from_file, align 4
  %414 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 4
  %415 = ptrtoint %Tstruct.json_value_t_t* %413 to i32
  %416 = call i8* @c_fetch_pointer_from_offset(i32 %415)
  %417 = call i1 @c_isTaintedPointerToTaintedMem(i8* %416)
  br i1 %417, label %_Dynamic_check.succeeded306, label %_Dynamic_check.failed305

_Dynamic_check.succeeded306:                      ; preds = %if.end303
  %418 = bitcast i8* %416 to %Tstruct.json_value_t_t*
  %419 = ptrtoint %Tstruct.json_value_t_t* %414 to i32
  %420 = call i8* @c_fetch_pointer_from_offset(i32 %419)
  %421 = call i1 @c_isTaintedPointerToTaintedMem(i8* %420)
  br i1 %421, label %_Dynamic_check.succeeded308, label %_Dynamic_check.failed307

_Dynamic_check.succeeded308:                      ; preds = %_Dynamic_check.succeeded306
  %422 = bitcast i8* %420 to %Tstruct.json_value_t_t*
  %call309 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %418, %Tstruct.json_value_t_t* %422)
  %tobool = icmp ne i32 %call309, 0
  br i1 %tobool, label %if.then310, label %if.else313

if.then310:                                       ; preds = %_Dynamic_check.succeeded308
  %call311 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %423 = load i32, i32* @tests_passed, align 4
  %inc312 = add nsw i32 %423, 1
  store i32 %inc312, i32* @tests_passed, align 4
  br label %if.end316

_Dynamic_check.failed305:                         ; preds = %if.end303
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed307:                         ; preds = %_Dynamic_check.succeeded306
  call void @llvm.trap() #6
  unreachable

if.else313:                                       ; preds = %_Dynamic_check.succeeded308
  %call314 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %424 = load i32, i32* @tests_failed, align 4
  %inc315 = add nsw i32 %424, 1
  store i32 %inc315, i32* @tests_failed, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.else313, %if.then310
  %425 = load i8*, i8** %string_1, align 4
  %426 = ptrtoint i8* %425 to i64
  %427 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %426)
  %call317 = call i8* @t_strcpy(i8* %427, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %428 = call i32 @c_TPtoO(i8* %call317)
  %429 = inttoptr i32 %428 to i8*
  %call318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 544, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.226, i64 0, i64 0))
  %430 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %431 = load i8*, i8** %string_1, align 4
  %432 = ptrtoint %Tstruct.json_object_t_t* %430 to i32
  %433 = call i8* @c_fetch_pointer_from_offset(i32 %432)
  %434 = call i1 @c_isTaintedPointerToTaintedMem(i8* %433)
  br i1 %434, label %_Dynamic_check.succeeded320, label %_Dynamic_check.failed319

_Dynamic_check.succeeded320:                      ; preds = %if.end316
  %435 = bitcast i8* %433 to %Tstruct.json_object_t_t*
  %436 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %437 = call i1 @c_isTaintedPointerToTaintedMem(i8* %436)
  br i1 %437, label %_Dynamic_check.succeeded322, label %_Dynamic_check.failed321

_Dynamic_check.succeeded322:                      ; preds = %_Dynamic_check.succeeded320
  %438 = ptrtoint i8* %431 to i32
  %439 = call i8* @c_fetch_pointer_from_offset(i32 %438)
  %440 = call i1 @c_isTaintedPointerToTaintedMem(i8* %439)
  br i1 %440, label %_Dynamic_check.succeeded324, label %_Dynamic_check.failed323

_Dynamic_check.succeeded324:                      ; preds = %_Dynamic_check.succeeded322
  %call325 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %435, i8* %436, i8* %439)
  %cmp326 = icmp eq i32 %call325, -1
  br i1 %cmp326, label %if.then327, label %if.else330

if.then327:                                       ; preds = %_Dynamic_check.succeeded324
  %call328 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %441 = load i32, i32* @tests_passed, align 4
  %inc329 = add nsw i32 %441, 1
  store i32 %inc329, i32* @tests_passed, align 4
  br label %if.end333

_Dynamic_check.failed319:                         ; preds = %if.end316
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed321:                         ; preds = %_Dynamic_check.succeeded320
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed323:                         ; preds = %_Dynamic_check.succeeded322
  call void @llvm.trap() #6
  unreachable

if.else330:                                       ; preds = %_Dynamic_check.succeeded324
  %call331 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %442 = load i32, i32* @tests_failed, align 4
  %inc332 = add nsw i32 %442, 1
  store i32 %inc332, i32* @tests_failed, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.else330, %if.then327
  %443 = load i8*, i8** %string_1, align 4
  %444 = ptrtoint i8* %443 to i64
  %445 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %444)
  %call334 = call i8* @t_strcpy(i8* %445, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0))
  %446 = call i32 @c_TPtoO(i8* %call334)
  %447 = inttoptr i32 %446 to i8*
  %call335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 546, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.227, i64 0, i64 0))
  %448 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %449 = load i8*, i8** %string_1, align 4
  %450 = ptrtoint %Tstruct.json_object_t_t* %448 to i32
  %451 = call i8* @c_fetch_pointer_from_offset(i32 %450)
  %452 = call i1 @c_isTaintedPointerToTaintedMem(i8* %451)
  br i1 %452, label %_Dynamic_check.succeeded337, label %_Dynamic_check.failed336

_Dynamic_check.succeeded337:                      ; preds = %if.end333
  %453 = bitcast i8* %451 to %Tstruct.json_object_t_t*
  %454 = ptrtoint i8* %449 to i32
  %455 = call i8* @c_fetch_pointer_from_offset(i32 %454)
  %456 = call i1 @c_isTaintedPointerToTaintedMem(i8* %455)
  br i1 %456, label %_Dynamic_check.succeeded339, label %_Dynamic_check.failed338

_Dynamic_check.succeeded339:                      ; preds = %_Dynamic_check.succeeded337
  %457 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %458 = call i1 @c_isTaintedPointerToTaintedMem(i8* %457)
  br i1 %458, label %_Dynamic_check.succeeded341, label %_Dynamic_check.failed340

_Dynamic_check.succeeded341:                      ; preds = %_Dynamic_check.succeeded339
  %call342 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %453, i8* %455, i8* %457)
  %cmp343 = icmp eq i32 %call342, -1
  br i1 %cmp343, label %if.then344, label %if.else347

if.then344:                                       ; preds = %_Dynamic_check.succeeded341
  %call345 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %459 = load i32, i32* @tests_passed, align 4
  %inc346 = add nsw i32 %459, 1
  store i32 %inc346, i32* @tests_passed, align 4
  br label %if.end350

_Dynamic_check.failed336:                         ; preds = %if.end333
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed338:                         ; preds = %_Dynamic_check.succeeded337
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed340:                         ; preds = %_Dynamic_check.succeeded339
  call void @llvm.trap() #6
  unreachable

if.else347:                                       ; preds = %_Dynamic_check.succeeded341
  %call348 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %460 = load i32, i32* @tests_failed, align 4
  %inc349 = add nsw i32 %460, 1
  store i32 %inc349, i32* @tests_failed, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.else347, %if.then344
  %call351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 547, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.228, i64 0, i64 0))
  %461 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %462 = ptrtoint %Tstruct.json_object_t_t* %461 to i32
  %463 = call i8* @c_fetch_pointer_from_offset(i32 %462)
  %464 = call i1 @c_isTaintedPointerToTaintedMem(i8* %463)
  br i1 %464, label %_Dynamic_check.succeeded353, label %_Dynamic_check.failed352

_Dynamic_check.succeeded353:                      ; preds = %if.end350
  %465 = bitcast i8* %463 to %Tstruct.json_object_t_t*
  %466 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %467 = call i1 @c_isTaintedPointerToTaintedMem(i8* %466)
  br i1 %467, label %_Dynamic_check.succeeded355, label %_Dynamic_check.failed354

_Dynamic_check.succeeded355:                      ; preds = %_Dynamic_check.succeeded353
  %468 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %469 = call i1 @c_isTaintedPointerToTaintedMem(i8* %468)
  br i1 %469, label %_Dynamic_check.succeeded357, label %_Dynamic_check.failed356

_Dynamic_check.succeeded357:                      ; preds = %_Dynamic_check.succeeded355
  %call358 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %465, i8* %466, i8* %468)
  %cmp359 = icmp eq i32 %call358, -1
  br i1 %cmp359, label %if.then360, label %if.else363

if.then360:                                       ; preds = %_Dynamic_check.succeeded357
  %call361 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %470 = load i32, i32* @tests_passed, align 4
  %inc362 = add nsw i32 %470, 1
  store i32 %inc362, i32* @tests_passed, align 4
  br label %if.end366

_Dynamic_check.failed352:                         ; preds = %if.end350
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed354:                         ; preds = %_Dynamic_check.succeeded353
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed356:                         ; preds = %_Dynamic_check.succeeded355
  call void @llvm.trap() #6
  unreachable

if.else363:                                       ; preds = %_Dynamic_check.succeeded357
  %call364 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %471 = load i32, i32* @tests_failed, align 4
  %inc365 = add nsw i32 %471, 1
  store i32 %inc365, i32* @tests_failed, align 4
  br label %if.end366

if.end366:                                        ; preds = %if.else363, %if.then360
  %call367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 548, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.229, i64 0, i64 0))
  %472 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %473 = ptrtoint %Tstruct.json_object_t_t* %472 to i32
  %474 = call i8* @c_fetch_pointer_from_offset(i32 %473)
  %475 = call i1 @c_isTaintedPointerToTaintedMem(i8* %474)
  br i1 %475, label %_Dynamic_check.succeeded369, label %_Dynamic_check.failed368

_Dynamic_check.succeeded369:                      ; preds = %if.end366
  %476 = bitcast i8* %474 to %Tstruct.json_object_t_t*
  %477 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %478 = call i1 @c_isTaintedPointerToTaintedMem(i8* %477)
  br i1 %478, label %_Dynamic_check.succeeded371, label %_Dynamic_check.failed370

_Dynamic_check.succeeded371:                      ; preds = %_Dynamic_check.succeeded369
  %479 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %480 = call i1 @c_isTaintedPointerToTaintedMem(i8* %479)
  br i1 %480, label %_Dynamic_check.succeeded373, label %_Dynamic_check.failed372

_Dynamic_check.succeeded373:                      ; preds = %_Dynamic_check.succeeded371
  %481 = bitcast i8* %479 to %Tstruct.json_value_t_t*
  %call374 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %476, i8* %477, %Tstruct.json_value_t_t* %481)
  %cmp375 = icmp eq i32 %call374, -1
  br i1 %cmp375, label %if.then376, label %if.else379

if.then376:                                       ; preds = %_Dynamic_check.succeeded373
  %call377 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %482 = load i32, i32* @tests_passed, align 4
  %inc378 = add nsw i32 %482, 1
  store i32 %inc378, i32* @tests_passed, align 4
  br label %if.end382

_Dynamic_check.failed368:                         ; preds = %if.end366
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed370:                         ; preds = %_Dynamic_check.succeeded369
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed372:                         ; preds = %_Dynamic_check.succeeded371
  call void @llvm.trap() #6
  unreachable

if.else379:                                       ; preds = %_Dynamic_check.succeeded373
  %call380 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %483 = load i32, i32* @tests_failed, align 4
  %inc381 = add nsw i32 %483, 1
  store i32 %inc381, i32* @tests_failed, align 4
  br label %if.end382

if.end382:                                        ; preds = %if.else379, %if.then376
  %484 = load i8*, i8** %string_1, align 4
  %485 = ptrtoint i8* %484 to i64
  %486 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %485)
  %call383 = call i8* @t_strcpy(i8* %486, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %487 = call i32 @c_TPtoO(i8* %call383)
  %488 = inttoptr i32 %487 to i8*
  %call384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 551, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.230, i64 0, i64 0))
  %489 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %490 = load i8*, i8** %string_1, align 4
  %491 = ptrtoint %Tstruct.json_object_t_t* %489 to i32
  %492 = call i8* @c_fetch_pointer_from_offset(i32 %491)
  %493 = call i1 @c_isTaintedPointerToTaintedMem(i8* %492)
  br i1 %493, label %_Dynamic_check.succeeded386, label %_Dynamic_check.failed385

_Dynamic_check.succeeded386:                      ; preds = %if.end382
  %494 = bitcast i8* %492 to %Tstruct.json_object_t_t*
  %495 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %496 = call i1 @c_isTaintedPointerToTaintedMem(i8* %495)
  br i1 %496, label %_Dynamic_check.succeeded388, label %_Dynamic_check.failed387

_Dynamic_check.succeeded388:                      ; preds = %_Dynamic_check.succeeded386
  %497 = ptrtoint i8* %490 to i32
  %498 = call i8* @c_fetch_pointer_from_offset(i32 %497)
  %499 = call i1 @c_isTaintedPointerToTaintedMem(i8* %498)
  br i1 %499, label %_Dynamic_check.succeeded390, label %_Dynamic_check.failed389

_Dynamic_check.succeeded390:                      ; preds = %_Dynamic_check.succeeded388
  %call391 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %494, i8* %495, i8* %498)
  %cmp392 = icmp eq i32 %call391, -1
  br i1 %cmp392, label %if.then393, label %if.else396

if.then393:                                       ; preds = %_Dynamic_check.succeeded390
  %call394 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %500 = load i32, i32* @tests_passed, align 4
  %inc395 = add nsw i32 %500, 1
  store i32 %inc395, i32* @tests_passed, align 4
  br label %if.end399

_Dynamic_check.failed385:                         ; preds = %if.end382
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed387:                         ; preds = %_Dynamic_check.succeeded386
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed389:                         ; preds = %_Dynamic_check.succeeded388
  call void @llvm.trap() #6
  unreachable

if.else396:                                       ; preds = %_Dynamic_check.succeeded390
  %call397 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %501 = load i32, i32* @tests_failed, align 4
  %inc398 = add nsw i32 %501, 1
  store i32 %inc398, i32* @tests_failed, align 4
  br label %if.end399

if.end399:                                        ; preds = %if.else396, %if.then393
  %502 = load i8*, i8** %string_1, align 4
  %503 = ptrtoint i8* %502 to i64
  %504 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %503)
  %call400 = call i8* @t_strcpy(i8* %504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.215, i64 0, i64 0))
  %505 = call i32 @c_TPtoO(i8* %call400)
  %506 = inttoptr i32 %505 to i8*
  %call401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 553, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.231, i64 0, i64 0))
  %507 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %508 = load i8*, i8** %string_1, align 4
  %509 = ptrtoint %Tstruct.json_object_t_t* %507 to i32
  %510 = call i8* @c_fetch_pointer_from_offset(i32 %509)
  %511 = call i1 @c_isTaintedPointerToTaintedMem(i8* %510)
  br i1 %511, label %_Dynamic_check.succeeded403, label %_Dynamic_check.failed402

_Dynamic_check.succeeded403:                      ; preds = %if.end399
  %512 = bitcast i8* %510 to %Tstruct.json_object_t_t*
  %513 = ptrtoint i8* %508 to i32
  %514 = call i8* @c_fetch_pointer_from_offset(i32 %513)
  %515 = call i1 @c_isTaintedPointerToTaintedMem(i8* %514)
  br i1 %515, label %_Dynamic_check.succeeded405, label %_Dynamic_check.failed404

_Dynamic_check.succeeded405:                      ; preds = %_Dynamic_check.succeeded403
  %516 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %517 = call i1 @c_isTaintedPointerToTaintedMem(i8* %516)
  br i1 %517, label %_Dynamic_check.succeeded407, label %_Dynamic_check.failed406

_Dynamic_check.succeeded407:                      ; preds = %_Dynamic_check.succeeded405
  %call408 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %512, i8* %514, i8* %516)
  %cmp409 = icmp eq i32 %call408, -1
  br i1 %cmp409, label %if.then410, label %if.else413

if.then410:                                       ; preds = %_Dynamic_check.succeeded407
  %call411 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %518 = load i32, i32* @tests_passed, align 4
  %inc412 = add nsw i32 %518, 1
  store i32 %inc412, i32* @tests_passed, align 4
  br label %if.end416

_Dynamic_check.failed402:                         ; preds = %if.end399
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed404:                         ; preds = %_Dynamic_check.succeeded403
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed406:                         ; preds = %_Dynamic_check.succeeded405
  call void @llvm.trap() #6
  unreachable

if.else413:                                       ; preds = %_Dynamic_check.succeeded407
  %call414 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %519 = load i32, i32* @tests_failed, align 4
  %inc415 = add nsw i32 %519, 1
  store i32 %inc415, i32* @tests_failed, align 4
  br label %if.end416

if.end416:                                        ; preds = %if.else413, %if.then410
  %call417 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 554, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.232, i64 0, i64 0))
  %520 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %521 = ptrtoint %Tstruct.json_object_t_t* %520 to i32
  %522 = call i8* @c_fetch_pointer_from_offset(i32 %521)
  %523 = call i1 @c_isTaintedPointerToTaintedMem(i8* %522)
  br i1 %523, label %_Dynamic_check.succeeded419, label %_Dynamic_check.failed418

_Dynamic_check.succeeded419:                      ; preds = %if.end416
  %524 = bitcast i8* %522 to %Tstruct.json_object_t_t*
  %525 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %526 = call i1 @c_isTaintedPointerToTaintedMem(i8* %525)
  br i1 %526, label %_Dynamic_check.succeeded421, label %_Dynamic_check.failed420

_Dynamic_check.succeeded421:                      ; preds = %_Dynamic_check.succeeded419
  %527 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %528 = call i1 @c_isTaintedPointerToTaintedMem(i8* %527)
  br i1 %528, label %_Dynamic_check.succeeded423, label %_Dynamic_check.failed422

_Dynamic_check.succeeded423:                      ; preds = %_Dynamic_check.succeeded421
  %call424 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %524, i8* %525, i8* %527)
  %cmp425 = icmp eq i32 %call424, -1
  br i1 %cmp425, label %if.then426, label %if.else429

if.then426:                                       ; preds = %_Dynamic_check.succeeded423
  %call427 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %529 = load i32, i32* @tests_passed, align 4
  %inc428 = add nsw i32 %529, 1
  store i32 %inc428, i32* @tests_passed, align 4
  br label %if.end432

_Dynamic_check.failed418:                         ; preds = %if.end416
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed420:                         ; preds = %_Dynamic_check.succeeded419
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed422:                         ; preds = %_Dynamic_check.succeeded421
  call void @llvm.trap() #6
  unreachable

if.else429:                                       ; preds = %_Dynamic_check.succeeded423
  %call430 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %530 = load i32, i32* @tests_failed, align 4
  %inc431 = add nsw i32 %530, 1
  store i32 %inc431, i32* @tests_failed, align 4
  br label %if.end432

if.end432:                                        ; preds = %if.else429, %if.then426
  %call433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 555, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.233, i64 0, i64 0))
  %531 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %532 = ptrtoint %Tstruct.json_object_t_t* %531 to i32
  %533 = call i8* @c_fetch_pointer_from_offset(i32 %532)
  %534 = call i1 @c_isTaintedPointerToTaintedMem(i8* %533)
  br i1 %534, label %_Dynamic_check.succeeded435, label %_Dynamic_check.failed434

_Dynamic_check.succeeded435:                      ; preds = %if.end432
  %535 = bitcast i8* %533 to %Tstruct.json_object_t_t*
  %536 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %537 = call i1 @c_isTaintedPointerToTaintedMem(i8* %536)
  br i1 %537, label %_Dynamic_check.succeeded437, label %_Dynamic_check.failed436

_Dynamic_check.succeeded437:                      ; preds = %_Dynamic_check.succeeded435
  %538 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %539 = call i1 @c_isTaintedPointerToTaintedMem(i8* %538)
  br i1 %539, label %_Dynamic_check.succeeded439, label %_Dynamic_check.failed438

_Dynamic_check.succeeded439:                      ; preds = %_Dynamic_check.succeeded437
  %540 = bitcast i8* %538 to %Tstruct.json_value_t_t*
  %call440 = call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %535, i8* %536, %Tstruct.json_value_t_t* %540)
  %cmp441 = icmp eq i32 %call440, -1
  br i1 %cmp441, label %if.then442, label %if.else445

if.then442:                                       ; preds = %_Dynamic_check.succeeded439
  %call443 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %541 = load i32, i32* @tests_passed, align 4
  %inc444 = add nsw i32 %541, 1
  store i32 %inc444, i32* @tests_passed, align 4
  br label %if.end448

_Dynamic_check.failed434:                         ; preds = %if.end432
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed436:                         ; preds = %_Dynamic_check.succeeded435
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed438:                         ; preds = %_Dynamic_check.succeeded437
  call void @llvm.trap() #6
  unreachable

if.else445:                                       ; preds = %_Dynamic_check.succeeded439
  %call446 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %542 = load i32, i32* @tests_failed, align 4
  %inc447 = add nsw i32 %542, 1
  store i32 %inc447, i32* @tests_failed, align 4
  br label %if.end448

if.end448:                                        ; preds = %if.else445, %if.then442
  %543 = load i8*, i8** %string_1, align 4
  %544 = ptrtoint i8* %543 to i64
  %545 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %544)
  %call449 = call i8* @t_strcpy(i8* %545, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0))
  %546 = call i32 @c_TPtoO(i8* %call449)
  %547 = inttoptr i32 %546 to i8*
  %call450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 558, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.234, i64 0, i64 0))
  %548 = load i8*, i8** %string_1, align 4
  %549 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %550 = call i1 @c_isTaintedPointerToTaintedMem(i8* %549)
  br i1 %550, label %_Dynamic_check.succeeded452, label %_Dynamic_check.failed451

_Dynamic_check.succeeded452:                      ; preds = %if.end448
  %551 = bitcast i8* %549 to %Tstruct.json_array_t_t*
  %552 = ptrtoint i8* %548 to i32
  %553 = call i8* @c_fetch_pointer_from_offset(i32 %552)
  %554 = call i1 @c_isTaintedPointerToTaintedMem(i8* %553)
  br i1 %554, label %_Dynamic_check.succeeded454, label %_Dynamic_check.failed453

_Dynamic_check.succeeded454:                      ; preds = %_Dynamic_check.succeeded452
  %call455 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %551, i8* %553)
  %cmp456 = icmp eq i32 %call455, -1
  br i1 %cmp456, label %if.then457, label %if.else460

if.then457:                                       ; preds = %_Dynamic_check.succeeded454
  %call458 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %555 = load i32, i32* @tests_passed, align 4
  %inc459 = add nsw i32 %555, 1
  store i32 %inc459, i32* @tests_passed, align 4
  br label %if.end463

_Dynamic_check.failed451:                         ; preds = %if.end448
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed453:                         ; preds = %_Dynamic_check.succeeded452
  call void @llvm.trap() #6
  unreachable

if.else460:                                       ; preds = %_Dynamic_check.succeeded454
  %call461 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %556 = load i32, i32* @tests_failed, align 4
  %inc462 = add nsw i32 %556, 1
  store i32 %inc462, i32* @tests_failed, align 4
  br label %if.end463

if.end463:                                        ; preds = %if.else460, %if.then457
  %call464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 559, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.235, i64 0, i64 0))
  %557 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %558 = ptrtoint %Tstruct.json_array_t_t* %557 to i32
  %559 = call i8* @c_fetch_pointer_from_offset(i32 %558)
  %560 = call i1 @c_isTaintedPointerToTaintedMem(i8* %559)
  br i1 %560, label %_Dynamic_check.succeeded466, label %_Dynamic_check.failed465

_Dynamic_check.succeeded466:                      ; preds = %if.end463
  %561 = bitcast i8* %559 to %Tstruct.json_array_t_t*
  %562 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %563 = call i1 @c_isTaintedPointerToTaintedMem(i8* %562)
  br i1 %563, label %_Dynamic_check.succeeded468, label %_Dynamic_check.failed467

_Dynamic_check.succeeded468:                      ; preds = %_Dynamic_check.succeeded466
  %564 = bitcast i8* %562 to %Tstruct.json_value_t_t*
  %call469 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %561, %Tstruct.json_value_t_t* %564)
  %cmp470 = icmp eq i32 %call469, -1
  br i1 %cmp470, label %if.then471, label %if.else474

if.then471:                                       ; preds = %_Dynamic_check.succeeded468
  %call472 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %565 = load i32, i32* @tests_passed, align 4
  %inc473 = add nsw i32 %565, 1
  store i32 %inc473, i32* @tests_passed, align 4
  br label %if.end477

_Dynamic_check.failed465:                         ; preds = %if.end463
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed467:                         ; preds = %_Dynamic_check.succeeded466
  call void @llvm.trap() #6
  unreachable

if.else474:                                       ; preds = %_Dynamic_check.succeeded468
  %call475 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %566 = load i32, i32* @tests_failed, align 4
  %inc476 = add nsw i32 %566, 1
  store i32 %inc476, i32* @tests_failed, align 4
  br label %if.end477

if.end477:                                        ; preds = %if.else474, %if.then471
  %call478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 560, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.236, i64 0, i64 0))
  %567 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %568 = call i1 @c_isTaintedPointerToTaintedMem(i8* %567)
  br i1 %568, label %_Dynamic_check.succeeded480, label %_Dynamic_check.failed479

_Dynamic_check.succeeded480:                      ; preds = %if.end477
  %569 = bitcast i8* %567 to %Tstruct.json_array_t_t*
  %570 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %571 = call i1 @c_isTaintedPointerToTaintedMem(i8* %570)
  br i1 %571, label %_Dynamic_check.succeeded482, label %_Dynamic_check.failed481

_Dynamic_check.succeeded482:                      ; preds = %_Dynamic_check.succeeded480
  %572 = bitcast i8* %570 to %Tstruct.json_value_t_t*
  %call483 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %569, %Tstruct.json_value_t_t* %572)
  %cmp484 = icmp eq i32 %call483, -1
  br i1 %cmp484, label %if.then485, label %if.else488

if.then485:                                       ; preds = %_Dynamic_check.succeeded482
  %call486 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %573 = load i32, i32* @tests_passed, align 4
  %inc487 = add nsw i32 %573, 1
  store i32 %inc487, i32* @tests_passed, align 4
  br label %if.end491

_Dynamic_check.failed479:                         ; preds = %if.end477
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed481:                         ; preds = %_Dynamic_check.succeeded480
  call void @llvm.trap() #6
  unreachable

if.else488:                                       ; preds = %_Dynamic_check.succeeded482
  %call489 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %574 = load i32, i32* @tests_failed, align 4
  %inc490 = add nsw i32 %574, 1
  store i32 %inc490, i32* @tests_failed, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.else488, %if.then485
  %call492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.237, i64 0, i64 0))
  %575 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %576 = ptrtoint %Tstruct.json_array_t_t* %575 to i32
  %577 = call i8* @c_fetch_pointer_from_offset(i32 %576)
  %578 = call i1 @c_isTaintedPointerToTaintedMem(i8* %577)
  br i1 %578, label %_Dynamic_check.succeeded494, label %_Dynamic_check.failed493

_Dynamic_check.succeeded494:                      ; preds = %if.end491
  %579 = bitcast i8* %577 to %Tstruct.json_array_t_t*
  %580 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %581 = call i1 @c_isTaintedPointerToTaintedMem(i8* %580)
  br i1 %581, label %_Dynamic_check.succeeded496, label %_Dynamic_check.failed495

_Dynamic_check.succeeded496:                      ; preds = %_Dynamic_check.succeeded494
  %582 = bitcast i8* %580 to %Tstruct.json_value_t_t*
  %call497 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %579, i64 0, %Tstruct.json_value_t_t* %582)
  %cmp498 = icmp eq i32 %call497, -1
  br i1 %cmp498, label %if.then499, label %if.else502

if.then499:                                       ; preds = %_Dynamic_check.succeeded496
  %call500 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %583 = load i32, i32* @tests_passed, align 4
  %inc501 = add nsw i32 %583, 1
  store i32 %inc501, i32* @tests_passed, align 4
  br label %if.end505

_Dynamic_check.failed493:                         ; preds = %if.end491
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed495:                         ; preds = %_Dynamic_check.succeeded494
  call void @llvm.trap() #6
  unreachable

if.else502:                                       ; preds = %_Dynamic_check.succeeded496
  %call503 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %584 = load i32, i32* @tests_failed, align 4
  %inc504 = add nsw i32 %584, 1
  store i32 %inc504, i32* @tests_failed, align 4
  br label %if.end505

if.end505:                                        ; preds = %if.else502, %if.then499
  %585 = load i8*, i8** %string_1, align 4
  %586 = ptrtoint i8* %585 to i64
  %587 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %586)
  %call506 = call i8* @t_strcpy(i8* %587, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0))
  %588 = call i32 @c_TPtoO(i8* %call506)
  %589 = inttoptr i32 %588 to i8*
  %call507 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 563, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.238, i64 0, i64 0))
  %590 = load i8*, i8** %string_1, align 4
  %591 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %592 = call i1 @c_isTaintedPointerToTaintedMem(i8* %591)
  br i1 %592, label %_Dynamic_check.succeeded509, label %_Dynamic_check.failed508

_Dynamic_check.succeeded509:                      ; preds = %if.end505
  %593 = bitcast i8* %591 to %Tstruct.json_array_t_t*
  %594 = ptrtoint i8* %590 to i32
  %595 = call i8* @c_fetch_pointer_from_offset(i32 %594)
  %596 = call i1 @c_isTaintedPointerToTaintedMem(i8* %595)
  br i1 %596, label %_Dynamic_check.succeeded511, label %_Dynamic_check.failed510

_Dynamic_check.succeeded511:                      ; preds = %_Dynamic_check.succeeded509
  %call512 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %593, i64 0, i8* %595)
  %cmp513 = icmp eq i32 %call512, -1
  br i1 %cmp513, label %if.then514, label %if.else517

if.then514:                                       ; preds = %_Dynamic_check.succeeded511
  %call515 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %597 = load i32, i32* @tests_passed, align 4
  %inc516 = add nsw i32 %597, 1
  store i32 %inc516, i32* @tests_passed, align 4
  br label %if.end520

_Dynamic_check.failed508:                         ; preds = %if.end505
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed510:                         ; preds = %_Dynamic_check.succeeded509
  call void @llvm.trap() #6
  unreachable

if.else517:                                       ; preds = %_Dynamic_check.succeeded511
  %call518 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %598 = load i32, i32* @tests_failed, align 4
  %inc519 = add nsw i32 %598, 1
  store i32 %inc519, i32* @tests_failed, align 4
  br label %if.end520

if.end520:                                        ; preds = %if.else517, %if.then514
  %599 = load i8*, i8** %string_1, align 4
  %600 = ptrtoint i8* %599 to i64
  %601 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %600)
  %call521 = call i8* @t_strcpy(i8* %601, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i64 0, i64 0))
  %602 = call i32 @c_TPtoO(i8* %call521)
  %603 = inttoptr i32 %602 to i8*
  %call522 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 565, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.240, i64 0, i64 0))
  %604 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %605 = load i8*, i8** %string_1, align 4
  %606 = ptrtoint %Tstruct.json_array_t_t* %604 to i32
  %607 = call i8* @c_fetch_pointer_from_offset(i32 %606)
  %608 = call i1 @c_isTaintedPointerToTaintedMem(i8* %607)
  br i1 %608, label %_Dynamic_check.succeeded524, label %_Dynamic_check.failed523

_Dynamic_check.succeeded524:                      ; preds = %if.end520
  %609 = bitcast i8* %607 to %Tstruct.json_array_t_t*
  %610 = ptrtoint i8* %605 to i32
  %611 = call i8* @c_fetch_pointer_from_offset(i32 %610)
  %612 = call i1 @c_isTaintedPointerToTaintedMem(i8* %611)
  br i1 %612, label %_Dynamic_check.succeeded526, label %_Dynamic_check.failed525

_Dynamic_check.succeeded526:                      ; preds = %_Dynamic_check.succeeded524
  %call527 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %609, i64 100, i8* %611)
  %cmp528 = icmp eq i32 %call527, -1
  br i1 %cmp528, label %if.then529, label %if.else532

if.then529:                                       ; preds = %_Dynamic_check.succeeded526
  %call530 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %613 = load i32, i32* @tests_passed, align 4
  %inc531 = add nsw i32 %613, 1
  store i32 %inc531, i32* @tests_passed, align 4
  br label %if.end535

_Dynamic_check.failed523:                         ; preds = %if.end520
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed525:                         ; preds = %_Dynamic_check.succeeded524
  call void @llvm.trap() #6
  unreachable

if.else532:                                       ; preds = %_Dynamic_check.succeeded526
  %call533 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %614 = load i32, i32* @tests_failed, align 4
  %inc534 = add nsw i32 %614, 1
  store i32 %inc534, i32* @tests_failed, align 4
  br label %if.end535

if.end535:                                        ; preds = %if.else532, %if.then529
  %615 = load i8*, i8** %string_1, align 4
  %616 = ptrtoint i8* %615 to i64
  %617 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %616)
  %call536 = call i8* @t_strcpy(i8* %617, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.207, i64 0, i64 0))
  %618 = call i32 @c_TPtoO(i8* %call536)
  %619 = inttoptr i32 %618 to i8*
  %call537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 567, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.241, i64 0, i64 0))
  %620 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %621 = load i8*, i8** %string_1, align 4
  %622 = ptrtoint %Tstruct.json_object_t_t* %620 to i32
  %623 = call i8* @c_fetch_pointer_from_offset(i32 %622)
  %624 = call i1 @c_isTaintedPointerToTaintedMem(i8* %623)
  br i1 %624, label %_Dynamic_check.succeeded539, label %_Dynamic_check.failed538

_Dynamic_check.succeeded539:                      ; preds = %if.end535
  %625 = bitcast i8* %623 to %Tstruct.json_object_t_t*
  %626 = ptrtoint i8* %621 to i32
  %627 = call i8* @c_fetch_pointer_from_offset(i32 %626)
  %628 = call i1 @c_isTaintedPointerToTaintedMem(i8* %627)
  br i1 %628, label %_Dynamic_check.succeeded541, label %_Dynamic_check.failed540

_Dynamic_check.succeeded541:                      ; preds = %_Dynamic_check.succeeded539
  %call542 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %625, i8* %627)
  %629 = bitcast %Tstruct.json_array_t_t* %call542 to i8*
  %630 = call i32 @c_TPtoO(i8* %629)
  %631 = inttoptr i32 %630 to %Tstruct.json_array_t_t*
  %632 = ptrtoint %Tstruct.json_array_t_t* %631 to i32
  %633 = call i8* @c_fetch_pointer_from_offset(i32 %632)
  %634 = call i1 @c_isTaintedPointerToTaintedMem(i8* %633)
  br i1 %634, label %_Dynamic_check.succeeded544, label %_Dynamic_check.failed543

_Dynamic_check.succeeded544:                      ; preds = %_Dynamic_check.succeeded541
  %635 = bitcast i8* %633 to %Tstruct.json_array_t_t*
  %636 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %637 = call i1 @c_isTaintedPointerToTaintedMem(i8* %636)
  br i1 %637, label %_Dynamic_check.succeeded546, label %_Dynamic_check.failed545

_Dynamic_check.succeeded546:                      ; preds = %_Dynamic_check.succeeded544
  %call547 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %635, i8* %636)
  %cmp548 = icmp eq i32 %call547, -1
  br i1 %cmp548, label %if.then549, label %if.else552

if.then549:                                       ; preds = %_Dynamic_check.succeeded546
  %call550 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %638 = load i32, i32* @tests_passed, align 4
  %inc551 = add nsw i32 %638, 1
  store i32 %inc551, i32* @tests_passed, align 4
  br label %if.end555

_Dynamic_check.failed538:                         ; preds = %if.end535
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed540:                         ; preds = %_Dynamic_check.succeeded539
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed543:                         ; preds = %_Dynamic_check.succeeded541
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed545:                         ; preds = %_Dynamic_check.succeeded544
  call void @llvm.trap() #6
  unreachable

if.else552:                                       ; preds = %_Dynamic_check.succeeded546
  %call553 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %639 = load i32, i32* @tests_failed, align 4
  %inc554 = add nsw i32 %639, 1
  store i32 %inc554, i32* @tests_failed, align 4
  br label %if.end555

if.end555:                                        ; preds = %if.else552, %if.then549
  %640 = load i8*, i8** %string_1, align 4
  %641 = ptrtoint i8* %640 to i64
  %642 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %641)
  %call556 = call i8* @t_strcpy(i8* %642, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i64 0, i64 0))
  %643 = call i32 @c_TPtoO(i8* %call556)
  %644 = inttoptr i32 %643 to i8*
  %call557 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 570, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %645 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %646 = load i8*, i8** %string_1, align 4
  %647 = ptrtoint %Tstruct.json_array_t_t* %645 to i32
  %648 = call i8* @c_fetch_pointer_from_offset(i32 %647)
  %649 = call i1 @c_isTaintedPointerToTaintedMem(i8* %648)
  br i1 %649, label %_Dynamic_check.succeeded559, label %_Dynamic_check.failed558

_Dynamic_check.succeeded559:                      ; preds = %if.end555
  %650 = bitcast i8* %648 to %Tstruct.json_array_t_t*
  %651 = ptrtoint i8* %646 to i32
  %652 = call i8* @c_fetch_pointer_from_offset(i32 %651)
  %653 = call i1 @c_isTaintedPointerToTaintedMem(i8* %652)
  br i1 %653, label %_Dynamic_check.succeeded561, label %_Dynamic_check.failed560

_Dynamic_check.succeeded561:                      ; preds = %_Dynamic_check.succeeded559
  %call562 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %650, i8* %652)
  %cmp563 = icmp eq i32 %call562, 0
  br i1 %cmp563, label %if.then564, label %if.else567

if.then564:                                       ; preds = %_Dynamic_check.succeeded561
  %call565 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %654 = load i32, i32* @tests_passed, align 4
  %inc566 = add nsw i32 %654, 1
  store i32 %inc566, i32* @tests_passed, align 4
  br label %if.end570

_Dynamic_check.failed558:                         ; preds = %if.end555
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed560:                         ; preds = %_Dynamic_check.succeeded559
  call void @llvm.trap() #6
  unreachable

if.else567:                                       ; preds = %_Dynamic_check.succeeded561
  %call568 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %655 = load i32, i32* @tests_failed, align 4
  %inc569 = add nsw i32 %655, 1
  store i32 %inc569, i32* @tests_failed, align 4
  br label %if.end570

if.end570:                                        ; preds = %if.else567, %if.then564
  %call571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 571, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.242, i64 0, i64 0))
  %656 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %657 = ptrtoint %Tstruct.json_array_t_t* %656 to i32
  %658 = call i8* @c_fetch_pointer_from_offset(i32 %657)
  %659 = call i1 @c_isTaintedPointerToTaintedMem(i8* %658)
  br i1 %659, label %_Dynamic_check.succeeded573, label %_Dynamic_check.failed572

_Dynamic_check.succeeded573:                      ; preds = %if.end570
  %660 = bitcast i8* %658 to %Tstruct.json_array_t_t*
  %call574 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %660, i64 0)
  %cmp575 = icmp eq i32 %call574, 0
  br i1 %cmp575, label %if.then576, label %if.else579

if.then576:                                       ; preds = %_Dynamic_check.succeeded573
  %call577 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %661 = load i32, i32* @tests_passed, align 4
  %inc578 = add nsw i32 %661, 1
  store i32 %inc578, i32* @tests_passed, align 4
  br label %if.end582

_Dynamic_check.failed572:                         ; preds = %if.end570
  call void @llvm.trap() #6
  unreachable

if.else579:                                       ; preds = %_Dynamic_check.succeeded573
  %call580 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %662 = load i32, i32* @tests_failed, align 4
  %inc581 = add nsw i32 %662, 1
  store i32 %inc581, i32* @tests_failed, align 4
  br label %if.end582

if.end582:                                        ; preds = %if.else579, %if.then576
  %call583 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.243, i64 0, i64 0))
  %663 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %664 = ptrtoint %Tstruct.json_array_t_t* %663 to i32
  %665 = call i8* @c_fetch_pointer_from_offset(i32 %664)
  %666 = call i1 @c_isTaintedPointerToTaintedMem(i8* %665)
  br i1 %666, label %_Dynamic_check.succeeded585, label %_Dynamic_check.failed584

_Dynamic_check.succeeded585:                      ; preds = %if.end582
  %667 = bitcast i8* %665 to %Tstruct.json_array_t_t*
  %call586 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %667, i64 1)
  %cmp587 = icmp eq i32 %call586, 0
  br i1 %cmp587, label %if.then588, label %if.else591

if.then588:                                       ; preds = %_Dynamic_check.succeeded585
  %call589 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %668 = load i32, i32* @tests_passed, align 4
  %inc590 = add nsw i32 %668, 1
  store i32 %inc590, i32* @tests_passed, align 4
  br label %if.end594

_Dynamic_check.failed584:                         ; preds = %if.end582
  call void @llvm.trap() #6
  unreachable

if.else591:                                       ; preds = %_Dynamic_check.succeeded585
  %call592 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %669 = load i32, i32* @tests_failed, align 4
  %inc593 = add nsw i32 %669, 1
  store i32 %inc593, i32* @tests_failed, align 4
  br label %if.end594

if.end594:                                        ; preds = %if.else591, %if.then588
  %call595 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 573, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.242, i64 0, i64 0))
  %670 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %671 = ptrtoint %Tstruct.json_array_t_t* %670 to i32
  %672 = call i8* @c_fetch_pointer_from_offset(i32 %671)
  %673 = call i1 @c_isTaintedPointerToTaintedMem(i8* %672)
  br i1 %673, label %_Dynamic_check.succeeded597, label %_Dynamic_check.failed596

_Dynamic_check.succeeded597:                      ; preds = %if.end594
  %674 = bitcast i8* %672 to %Tstruct.json_array_t_t*
  %call598 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %674, i64 0)
  %cmp599 = icmp eq i32 %call598, 0
  br i1 %cmp599, label %if.then600, label %if.else603

if.then600:                                       ; preds = %_Dynamic_check.succeeded597
  %call601 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %675 = load i32, i32* @tests_passed, align 4
  %inc602 = add nsw i32 %675, 1
  store i32 %inc602, i32* @tests_passed, align 4
  br label %if.end606

_Dynamic_check.failed596:                         ; preds = %if.end594
  call void @llvm.trap() #6
  unreachable

if.else603:                                       ; preds = %_Dynamic_check.succeeded597
  %call604 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %676 = load i32, i32* @tests_failed, align 4
  %inc605 = add nsw i32 %676, 1
  store i32 %inc605, i32* @tests_failed, align 4
  br label %if.end606

if.end606:                                        ; preds = %if.else603, %if.then600
  %call607 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 574, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.244, i64 0, i64 0))
  %677 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %678 = ptrtoint %Tstruct.json_array_t_t* %677 to i32
  %679 = call i8* @c_fetch_pointer_from_offset(i32 %678)
  %680 = call i1 @c_isTaintedPointerToTaintedMem(i8* %679)
  br i1 %680, label %_Dynamic_check.succeeded609, label %_Dynamic_check.failed608

_Dynamic_check.succeeded609:                      ; preds = %if.end606
  %681 = bitcast i8* %679 to %Tstruct.json_array_t_t*
  %call610 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %681, i64 0)
  %cmp611 = icmp eq i32 %call610, -1
  br i1 %cmp611, label %if.then612, label %if.else615

if.then612:                                       ; preds = %_Dynamic_check.succeeded609
  %call613 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %682 = load i32, i32* @tests_passed, align 4
  %inc614 = add nsw i32 %682, 1
  store i32 %inc614, i32* @tests_passed, align 4
  br label %if.end618

_Dynamic_check.failed608:                         ; preds = %if.end606
  call void @llvm.trap() #6
  unreachable

if.else615:                                       ; preds = %_Dynamic_check.succeeded609
  %call616 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %683 = load i32, i32* @tests_failed, align 4
  %inc617 = add nsw i32 %683, 1
  store i32 %inc617, i32* @tests_failed, align 4
  br label %if.end618

if.end618:                                        ; preds = %if.else615, %if.then612
  %call619 = call %Tstruct.json_value_t_t* @json_value_init_null()
  %684 = bitcast %Tstruct.json_value_t_t* %call619 to i8*
  %685 = call i32 @c_TPtoO(i8* %684)
  %686 = inttoptr i32 %685 to %Tstruct.json_value_t_t*
  %687 = ptrtoint %Tstruct.json_value_t_t* %686 to i32
  %688 = bitcast %Tstruct.json_value_t_t** %val_parent to i32*
  store i32 %687, i32* %688, align 4
  %689 = load i8*, i8** %string_1, align 4
  %690 = ptrtoint i8* %689 to i64
  %691 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %690)
  %call620 = call i8* @t_strcpy(i8* %691, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0))
  %692 = call i32 @c_TPtoO(i8* %call620)
  %693 = inttoptr i32 %692 to i8*
  %call621 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 578, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.245, i64 0, i64 0))
  %694 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %695 = load i8*, i8** %string_1, align 4
  %696 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %697 = ptrtoint %Tstruct.json_object_t_t* %694 to i32
  %698 = call i8* @c_fetch_pointer_from_offset(i32 %697)
  %699 = call i1 @c_isTaintedPointerToTaintedMem(i8* %698)
  br i1 %699, label %_Dynamic_check.succeeded623, label %_Dynamic_check.failed622

_Dynamic_check.succeeded623:                      ; preds = %if.end618
  %700 = bitcast i8* %698 to %Tstruct.json_object_t_t*
  %701 = ptrtoint i8* %695 to i32
  %702 = call i8* @c_fetch_pointer_from_offset(i32 %701)
  %703 = call i1 @c_isTaintedPointerToTaintedMem(i8* %702)
  br i1 %703, label %_Dynamic_check.succeeded625, label %_Dynamic_check.failed624

_Dynamic_check.succeeded625:                      ; preds = %_Dynamic_check.succeeded623
  %704 = ptrtoint %Tstruct.json_value_t_t* %696 to i32
  %705 = call i8* @c_fetch_pointer_from_offset(i32 %704)
  %706 = call i1 @c_isTaintedPointerToTaintedMem(i8* %705)
  br i1 %706, label %_Dynamic_check.succeeded627, label %_Dynamic_check.failed626

_Dynamic_check.succeeded627:                      ; preds = %_Dynamic_check.succeeded625
  %707 = bitcast i8* %705 to %Tstruct.json_value_t_t*
  %call628 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %700, i8* %702, %Tstruct.json_value_t_t* %707)
  %cmp629 = icmp eq i32 %call628, 0
  br i1 %cmp629, label %if.then630, label %if.else633

if.then630:                                       ; preds = %_Dynamic_check.succeeded627
  %call631 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %708 = load i32, i32* @tests_passed, align 4
  %inc632 = add nsw i32 %708, 1
  store i32 %inc632, i32* @tests_passed, align 4
  br label %if.end636

_Dynamic_check.failed622:                         ; preds = %if.end618
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed624:                         ; preds = %_Dynamic_check.succeeded623
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed626:                         ; preds = %_Dynamic_check.succeeded625
  call void @llvm.trap() #6
  unreachable

if.else633:                                       ; preds = %_Dynamic_check.succeeded627
  %call634 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %709 = load i32, i32* @tests_failed, align 4
  %inc635 = add nsw i32 %709, 1
  store i32 %inc635, i32* @tests_failed, align 4
  br label %if.end636

if.end636:                                        ; preds = %if.else633, %if.then630
  %call637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 579, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.246, i64 0, i64 0))
  %710 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %711 = load i8*, i8** %string_1, align 4
  %712 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %713 = ptrtoint %Tstruct.json_object_t_t* %710 to i32
  %714 = call i8* @c_fetch_pointer_from_offset(i32 %713)
  %715 = call i1 @c_isTaintedPointerToTaintedMem(i8* %714)
  br i1 %715, label %_Dynamic_check.succeeded639, label %_Dynamic_check.failed638

_Dynamic_check.succeeded639:                      ; preds = %if.end636
  %716 = bitcast i8* %714 to %Tstruct.json_object_t_t*
  %717 = ptrtoint i8* %711 to i32
  %718 = call i8* @c_fetch_pointer_from_offset(i32 %717)
  %719 = call i1 @c_isTaintedPointerToTaintedMem(i8* %718)
  br i1 %719, label %_Dynamic_check.succeeded641, label %_Dynamic_check.failed640

_Dynamic_check.succeeded641:                      ; preds = %_Dynamic_check.succeeded639
  %720 = ptrtoint %Tstruct.json_value_t_t* %712 to i32
  %721 = call i8* @c_fetch_pointer_from_offset(i32 %720)
  %722 = call i1 @c_isTaintedPointerToTaintedMem(i8* %721)
  br i1 %722, label %_Dynamic_check.succeeded643, label %_Dynamic_check.failed642

_Dynamic_check.succeeded643:                      ; preds = %_Dynamic_check.succeeded641
  %723 = bitcast i8* %721 to %Tstruct.json_value_t_t*
  %call644 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %716, i8* %718, %Tstruct.json_value_t_t* %723)
  %cmp645 = icmp eq i32 %call644, -1
  br i1 %cmp645, label %if.then646, label %if.else649

if.then646:                                       ; preds = %_Dynamic_check.succeeded643
  %call647 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %724 = load i32, i32* @tests_passed, align 4
  %inc648 = add nsw i32 %724, 1
  store i32 %inc648, i32* @tests_passed, align 4
  br label %if.end652

_Dynamic_check.failed638:                         ; preds = %if.end636
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed640:                         ; preds = %_Dynamic_check.succeeded639
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed642:                         ; preds = %_Dynamic_check.succeeded641
  call void @llvm.trap() #6
  unreachable

if.else649:                                       ; preds = %_Dynamic_check.succeeded643
  %call650 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %725 = load i32, i32* @tests_failed, align 4
  %inc651 = add nsw i32 %725, 1
  store i32 %inc651, i32* @tests_failed, align 4
  br label %if.end652

if.end652:                                        ; preds = %if.else649, %if.then646
  %call653 = call %Tstruct.json_value_t_t* @json_value_init_null()
  %726 = bitcast %Tstruct.json_value_t_t* %call653 to i8*
  %727 = call i32 @c_TPtoO(i8* %726)
  %728 = inttoptr i32 %727 to %Tstruct.json_value_t_t*
  %729 = ptrtoint %Tstruct.json_value_t_t* %728 to i32
  %730 = bitcast %Tstruct.json_value_t_t** %val_parent to i32*
  store i32 %729, i32* %730, align 4
  %call654 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 582, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.247, i64 0, i64 0))
  %731 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %732 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %733 = ptrtoint %Tstruct.json_array_t_t* %731 to i32
  %734 = call i8* @c_fetch_pointer_from_offset(i32 %733)
  %735 = call i1 @c_isTaintedPointerToTaintedMem(i8* %734)
  br i1 %735, label %_Dynamic_check.succeeded656, label %_Dynamic_check.failed655

_Dynamic_check.succeeded656:                      ; preds = %if.end652
  %736 = bitcast i8* %734 to %Tstruct.json_array_t_t*
  %737 = ptrtoint %Tstruct.json_value_t_t* %732 to i32
  %738 = call i8* @c_fetch_pointer_from_offset(i32 %737)
  %739 = call i1 @c_isTaintedPointerToTaintedMem(i8* %738)
  br i1 %739, label %_Dynamic_check.succeeded658, label %_Dynamic_check.failed657

_Dynamic_check.succeeded658:                      ; preds = %_Dynamic_check.succeeded656
  %740 = bitcast i8* %738 to %Tstruct.json_value_t_t*
  %call659 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %736, %Tstruct.json_value_t_t* %740)
  %cmp660 = icmp eq i32 %call659, 0
  br i1 %cmp660, label %if.then661, label %if.else664

if.then661:                                       ; preds = %_Dynamic_check.succeeded658
  %call662 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %741 = load i32, i32* @tests_passed, align 4
  %inc663 = add nsw i32 %741, 1
  store i32 %inc663, i32* @tests_passed, align 4
  br label %if.end667

_Dynamic_check.failed655:                         ; preds = %if.end652
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed657:                         ; preds = %_Dynamic_check.succeeded656
  call void @llvm.trap() #6
  unreachable

if.else664:                                       ; preds = %_Dynamic_check.succeeded658
  %call665 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %742 = load i32, i32* @tests_failed, align 4
  %inc666 = add nsw i32 %742, 1
  store i32 %inc666, i32* @tests_failed, align 4
  br label %if.end667

if.end667:                                        ; preds = %if.else664, %if.then661
  %call668 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.248, i64 0, i64 0))
  %743 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %744 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %745 = ptrtoint %Tstruct.json_array_t_t* %743 to i32
  %746 = call i8* @c_fetch_pointer_from_offset(i32 %745)
  %747 = call i1 @c_isTaintedPointerToTaintedMem(i8* %746)
  br i1 %747, label %_Dynamic_check.succeeded670, label %_Dynamic_check.failed669

_Dynamic_check.succeeded670:                      ; preds = %if.end667
  %748 = bitcast i8* %746 to %Tstruct.json_array_t_t*
  %749 = ptrtoint %Tstruct.json_value_t_t* %744 to i32
  %750 = call i8* @c_fetch_pointer_from_offset(i32 %749)
  %751 = call i1 @c_isTaintedPointerToTaintedMem(i8* %750)
  br i1 %751, label %_Dynamic_check.succeeded672, label %_Dynamic_check.failed671

_Dynamic_check.succeeded672:                      ; preds = %_Dynamic_check.succeeded670
  %752 = bitcast i8* %750 to %Tstruct.json_value_t_t*
  %call673 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %748, %Tstruct.json_value_t_t* %752)
  %cmp674 = icmp eq i32 %call673, -1
  br i1 %cmp674, label %if.then675, label %if.else678

if.then675:                                       ; preds = %_Dynamic_check.succeeded672
  %call676 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %753 = load i32, i32* @tests_passed, align 4
  %inc677 = add nsw i32 %753, 1
  store i32 %inc677, i32* @tests_passed, align 4
  br label %if.end681

_Dynamic_check.failed669:                         ; preds = %if.end667
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed671:                         ; preds = %_Dynamic_check.succeeded670
  call void @llvm.trap() #6
  unreachable

if.else678:                                       ; preds = %_Dynamic_check.succeeded672
  %call679 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %754 = load i32, i32* @tests_failed, align 4
  %inc680 = add nsw i32 %754, 1
  store i32 %inc680, i32* @tests_failed, align 4
  br label %if.end681

if.end681:                                        ; preds = %if.else678, %if.then675
  %call682 = call %Tstruct.json_value_t_t* @json_value_init_null()
  %755 = bitcast %Tstruct.json_value_t_t* %call682 to i8*
  %756 = call i32 @c_TPtoO(i8* %755)
  %757 = inttoptr i32 %756 to %Tstruct.json_value_t_t*
  %758 = ptrtoint %Tstruct.json_value_t_t* %757 to i32
  %759 = bitcast %Tstruct.json_value_t_t** %val_parent to i32*
  store i32 %758, i32* %759, align 4
  %call683 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 586, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.249, i64 0, i64 0))
  %760 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %761 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %762 = ptrtoint %Tstruct.json_array_t_t* %760 to i32
  %763 = call i8* @c_fetch_pointer_from_offset(i32 %762)
  %764 = call i1 @c_isTaintedPointerToTaintedMem(i8* %763)
  br i1 %764, label %_Dynamic_check.succeeded685, label %_Dynamic_check.failed684

_Dynamic_check.succeeded685:                      ; preds = %if.end681
  %765 = bitcast i8* %763 to %Tstruct.json_array_t_t*
  %766 = ptrtoint %Tstruct.json_value_t_t* %761 to i32
  %767 = call i8* @c_fetch_pointer_from_offset(i32 %766)
  %768 = call i1 @c_isTaintedPointerToTaintedMem(i8* %767)
  br i1 %768, label %_Dynamic_check.succeeded687, label %_Dynamic_check.failed686

_Dynamic_check.succeeded687:                      ; preds = %_Dynamic_check.succeeded685
  %769 = bitcast i8* %767 to %Tstruct.json_value_t_t*
  %call688 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %765, i64 0, %Tstruct.json_value_t_t* %769)
  %cmp689 = icmp eq i32 %call688, 0
  br i1 %cmp689, label %if.then690, label %if.else693

if.then690:                                       ; preds = %_Dynamic_check.succeeded687
  %call691 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %770 = load i32, i32* @tests_passed, align 4
  %inc692 = add nsw i32 %770, 1
  store i32 %inc692, i32* @tests_passed, align 4
  br label %if.end696

_Dynamic_check.failed684:                         ; preds = %if.end681
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed686:                         ; preds = %_Dynamic_check.succeeded685
  call void @llvm.trap() #6
  unreachable

if.else693:                                       ; preds = %_Dynamic_check.succeeded687
  %call694 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %771 = load i32, i32* @tests_failed, align 4
  %inc695 = add nsw i32 %771, 1
  store i32 %inc695, i32* @tests_failed, align 4
  br label %if.end696

if.end696:                                        ; preds = %if.else693, %if.then690
  %call697 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.250, i64 0, i64 0))
  %772 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %773 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %774 = ptrtoint %Tstruct.json_array_t_t* %772 to i32
  %775 = call i8* @c_fetch_pointer_from_offset(i32 %774)
  %776 = call i1 @c_isTaintedPointerToTaintedMem(i8* %775)
  br i1 %776, label %_Dynamic_check.succeeded699, label %_Dynamic_check.failed698

_Dynamic_check.succeeded699:                      ; preds = %if.end696
  %777 = bitcast i8* %775 to %Tstruct.json_array_t_t*
  %778 = ptrtoint %Tstruct.json_value_t_t* %773 to i32
  %779 = call i8* @c_fetch_pointer_from_offset(i32 %778)
  %780 = call i1 @c_isTaintedPointerToTaintedMem(i8* %779)
  br i1 %780, label %_Dynamic_check.succeeded701, label %_Dynamic_check.failed700

_Dynamic_check.succeeded701:                      ; preds = %_Dynamic_check.succeeded699
  %781 = bitcast i8* %779 to %Tstruct.json_value_t_t*
  %call702 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %777, i64 0, %Tstruct.json_value_t_t* %781)
  %cmp703 = icmp eq i32 %call702, -1
  br i1 %cmp703, label %if.then704, label %if.else707

if.then704:                                       ; preds = %_Dynamic_check.succeeded701
  %call705 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %782 = load i32, i32* @tests_passed, align 4
  %inc706 = add nsw i32 %782, 1
  store i32 %inc706, i32* @tests_passed, align 4
  br label %if.end710

_Dynamic_check.failed698:                         ; preds = %if.end696
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed700:                         ; preds = %_Dynamic_check.succeeded699
  call void @llvm.trap() #6
  unreachable

if.else707:                                       ; preds = %_Dynamic_check.succeeded701
  %call708 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %783 = load i32, i32* @tests_failed, align 4
  %inc709 = add nsw i32 %783, 1
  store i32 %inc709, i32* @tests_failed, align 4
  br label %if.end710

if.end710:                                        ; preds = %if.else707, %if.then704
  %784 = load i8*, i8** %string_1, align 4
  %785 = ptrtoint i8* %784 to i64
  %786 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %785)
  %call711 = call i8* @t_strcpy(i8* %786, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.207, i64 0, i64 0))
  %787 = call i32 @c_TPtoO(i8* %call711)
  %788 = inttoptr i32 %787 to i8*
  %call712 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 590, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.251, i64 0, i64 0))
  %789 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %790 = load i8*, i8** %string_1, align 4
  %791 = ptrtoint %Tstruct.json_object_t_t* %789 to i32
  %792 = call i8* @c_fetch_pointer_from_offset(i32 %791)
  %793 = call i1 @c_isTaintedPointerToTaintedMem(i8* %792)
  br i1 %793, label %_Dynamic_check.succeeded714, label %_Dynamic_check.failed713

_Dynamic_check.succeeded714:                      ; preds = %if.end710
  %794 = bitcast i8* %792 to %Tstruct.json_object_t_t*
  %795 = ptrtoint i8* %790 to i32
  %796 = call i8* @c_fetch_pointer_from_offset(i32 %795)
  %797 = call i1 @c_isTaintedPointerToTaintedMem(i8* %796)
  br i1 %797, label %_Dynamic_check.succeeded716, label %_Dynamic_check.failed715

_Dynamic_check.succeeded716:                      ; preds = %_Dynamic_check.succeeded714
  %call717 = call i32 @json_object_remove(%Tstruct.json_object_t_t* %794, i8* %796)
  %cmp718 = icmp eq i32 %call717, 0
  br i1 %cmp718, label %if.then719, label %if.else722

if.then719:                                       ; preds = %_Dynamic_check.succeeded716
  %call720 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %798 = load i32, i32* @tests_passed, align 4
  %inc721 = add nsw i32 %798, 1
  store i32 %inc721, i32* @tests_passed, align 4
  br label %if.end725

_Dynamic_check.failed713:                         ; preds = %if.end710
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed715:                         ; preds = %_Dynamic_check.succeeded714
  call void @llvm.trap() #6
  unreachable

if.else722:                                       ; preds = %_Dynamic_check.succeeded716
  %call723 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %799 = load i32, i32* @tests_failed, align 4
  %inc724 = add nsw i32 %799, 1
  store i32 %inc724, i32* @tests_failed, align 4
  br label %if.end725

if.end725:                                        ; preds = %if.else722, %if.then719
  %800 = load i8*, i8** %string_1, align 4
  %801 = ptrtoint i8* %800 to i64
  %802 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %801)
  %call726 = call i8* @t_strcpy(i8* %802, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.252, i64 0, i64 0))
  %803 = call i32 @c_TPtoO(i8* %call726)
  %804 = inttoptr i32 %803 to i8*
  %805 = load i8*, i8** %string_2, align 4
  %806 = ptrtoint i8* %805 to i64
  %807 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %806)
  %call727 = call i8* @t_strcpy(i8* %807, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.253, i64 0, i64 0))
  %808 = call i32 @c_TPtoO(i8* %call727)
  %809 = inttoptr i32 %808 to i8*
  %call728 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 595, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %810 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %811 = load i8*, i8** %string_1, align 4
  %812 = load i8*, i8** %string_2, align 4
  %813 = ptrtoint %Tstruct.json_object_t_t* %810 to i32
  %814 = call i8* @c_fetch_pointer_from_offset(i32 %813)
  %815 = call i1 @c_isTaintedPointerToTaintedMem(i8* %814)
  br i1 %815, label %_Dynamic_check.succeeded730, label %_Dynamic_check.failed729

_Dynamic_check.succeeded730:                      ; preds = %if.end725
  %816 = bitcast i8* %814 to %Tstruct.json_object_t_t*
  %817 = ptrtoint i8* %811 to i32
  %818 = call i8* @c_fetch_pointer_from_offset(i32 %817)
  %819 = call i1 @c_isTaintedPointerToTaintedMem(i8* %818)
  br i1 %819, label %_Dynamic_check.succeeded732, label %_Dynamic_check.failed731

_Dynamic_check.succeeded732:                      ; preds = %_Dynamic_check.succeeded730
  %820 = ptrtoint i8* %812 to i32
  %821 = call i8* @c_fetch_pointer_from_offset(i32 %820)
  %822 = call i1 @c_isTaintedPointerToTaintedMem(i8* %821)
  br i1 %822, label %_Dynamic_check.succeeded734, label %_Dynamic_check.failed733

_Dynamic_check.succeeded734:                      ; preds = %_Dynamic_check.succeeded732
  %call735 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %816, i8* %818, i8* %821)
  %cmp736 = icmp eq i32 %call735, 0
  br i1 %cmp736, label %if.then737, label %if.else740

if.then737:                                       ; preds = %_Dynamic_check.succeeded734
  %call738 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %823 = load i32, i32* @tests_passed, align 4
  %inc739 = add nsw i32 %823, 1
  store i32 %inc739, i32* @tests_passed, align 4
  br label %if.end743

_Dynamic_check.failed729:                         ; preds = %if.end725
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed731:                         ; preds = %_Dynamic_check.succeeded730
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed733:                         ; preds = %_Dynamic_check.succeeded732
  call void @llvm.trap() #6
  unreachable

if.else740:                                       ; preds = %_Dynamic_check.succeeded734
  %call741 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %824 = load i32, i32* @tests_failed, align 4
  %inc742 = add nsw i32 %824, 1
  store i32 %inc742, i32* @tests_failed, align 4
  br label %if.end743

if.end743:                                        ; preds = %if.else740, %if.then737
  %825 = load i8*, i8** %string_1, align 4
  %826 = ptrtoint i8* %825 to i64
  %827 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %826)
  %call744 = call i8* @t_strcpy(i8* %827, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.254, i64 0, i64 0))
  %828 = call i32 @c_TPtoO(i8* %call744)
  %829 = inttoptr i32 %828 to i8*
  %830 = load i8*, i8** %string_2, align 4
  %831 = ptrtoint i8* %830 to i64
  %832 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %831)
  %call745 = call i8* @t_strcpy(i8* %832, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.255, i64 0, i64 0))
  %833 = call i32 @c_TPtoO(i8* %call745)
  %834 = inttoptr i32 %833 to i8*
  %call746 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 599, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %835 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %836 = load i8*, i8** %string_1, align 4
  %837 = load i8*, i8** %string_2, align 4
  %838 = ptrtoint %Tstruct.json_object_t_t* %835 to i32
  %839 = call i8* @c_fetch_pointer_from_offset(i32 %838)
  %840 = call i1 @c_isTaintedPointerToTaintedMem(i8* %839)
  br i1 %840, label %_Dynamic_check.succeeded748, label %_Dynamic_check.failed747

_Dynamic_check.succeeded748:                      ; preds = %if.end743
  %841 = bitcast i8* %839 to %Tstruct.json_object_t_t*
  %842 = ptrtoint i8* %836 to i32
  %843 = call i8* @c_fetch_pointer_from_offset(i32 %842)
  %844 = call i1 @c_isTaintedPointerToTaintedMem(i8* %843)
  br i1 %844, label %_Dynamic_check.succeeded750, label %_Dynamic_check.failed749

_Dynamic_check.succeeded750:                      ; preds = %_Dynamic_check.succeeded748
  %845 = ptrtoint i8* %837 to i32
  %846 = call i8* @c_fetch_pointer_from_offset(i32 %845)
  %847 = call i1 @c_isTaintedPointerToTaintedMem(i8* %846)
  br i1 %847, label %_Dynamic_check.succeeded752, label %_Dynamic_check.failed751

_Dynamic_check.succeeded752:                      ; preds = %_Dynamic_check.succeeded750
  %call753 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %841, i8* %843, i8* %846)
  %cmp754 = icmp eq i32 %call753, 0
  br i1 %cmp754, label %if.then755, label %if.else758

if.then755:                                       ; preds = %_Dynamic_check.succeeded752
  %call756 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %848 = load i32, i32* @tests_passed, align 4
  %inc757 = add nsw i32 %848, 1
  store i32 %inc757, i32* @tests_passed, align 4
  br label %if.end761

_Dynamic_check.failed747:                         ; preds = %if.end743
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed749:                         ; preds = %_Dynamic_check.succeeded748
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed751:                         ; preds = %_Dynamic_check.succeeded750
  call void @llvm.trap() #6
  unreachable

if.else758:                                       ; preds = %_Dynamic_check.succeeded752
  %call759 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %849 = load i32, i32* @tests_failed, align 4
  %inc760 = add nsw i32 %849, 1
  store i32 %inc760, i32* @tests_failed, align 4
  br label %if.end761

if.end761:                                        ; preds = %if.else758, %if.then755
  %850 = load i8*, i8** %string_1, align 4
  %851 = ptrtoint i8* %850 to i64
  %852 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %851)
  %call762 = call i8* @t_strcpy(i8* %852, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.256, i64 0, i64 0))
  %853 = call i32 @c_TPtoO(i8* %call762)
  %854 = inttoptr i32 %853 to i8*
  %855 = load i8*, i8** %string_2, align 4
  %856 = ptrtoint i8* %855 to i64
  %857 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %856)
  %call763 = call i8* @t_strcpy(i8* %857, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.257, i64 0, i64 0))
  %858 = call i32 @c_TPtoO(i8* %call763)
  %859 = inttoptr i32 %858 to i8*
  %call764 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 602, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %860 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %861 = load i8*, i8** %string_1, align 4
  %862 = load i8*, i8** %string_2, align 4
  %863 = ptrtoint %Tstruct.json_object_t_t* %860 to i32
  %864 = call i8* @c_fetch_pointer_from_offset(i32 %863)
  %865 = call i1 @c_isTaintedPointerToTaintedMem(i8* %864)
  br i1 %865, label %_Dynamic_check.succeeded766, label %_Dynamic_check.failed765

_Dynamic_check.succeeded766:                      ; preds = %if.end761
  %866 = bitcast i8* %864 to %Tstruct.json_object_t_t*
  %867 = ptrtoint i8* %861 to i32
  %868 = call i8* @c_fetch_pointer_from_offset(i32 %867)
  %869 = call i1 @c_isTaintedPointerToTaintedMem(i8* %868)
  br i1 %869, label %_Dynamic_check.succeeded768, label %_Dynamic_check.failed767

_Dynamic_check.succeeded768:                      ; preds = %_Dynamic_check.succeeded766
  %870 = ptrtoint i8* %862 to i32
  %871 = call i8* @c_fetch_pointer_from_offset(i32 %870)
  %872 = call i1 @c_isTaintedPointerToTaintedMem(i8* %871)
  br i1 %872, label %_Dynamic_check.succeeded770, label %_Dynamic_check.failed769

_Dynamic_check.succeeded770:                      ; preds = %_Dynamic_check.succeeded768
  %call771 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %866, i8* %868, i8* %871)
  %cmp772 = icmp eq i32 %call771, 0
  br i1 %cmp772, label %if.then773, label %if.else776

if.then773:                                       ; preds = %_Dynamic_check.succeeded770
  %call774 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %873 = load i32, i32* @tests_passed, align 4
  %inc775 = add nsw i32 %873, 1
  store i32 %inc775, i32* @tests_passed, align 4
  br label %if.end779

_Dynamic_check.failed765:                         ; preds = %if.end761
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed767:                         ; preds = %_Dynamic_check.succeeded766
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed769:                         ; preds = %_Dynamic_check.succeeded768
  call void @llvm.trap() #6
  unreachable

if.else776:                                       ; preds = %_Dynamic_check.succeeded770
  %call777 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %874 = load i32, i32* @tests_failed, align 4
  %inc778 = add nsw i32 %874, 1
  store i32 %inc778, i32* @tests_failed, align 4
  br label %if.end779

if.end779:                                        ; preds = %if.else776, %if.then773
  %875 = load i8*, i8** %string_1, align 4
  %876 = ptrtoint i8* %875 to i64
  %877 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %876)
  %call780 = call i8* @t_strcpy(i8* %877, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.258, i64 0, i64 0))
  %878 = call i32 @c_TPtoO(i8* %call780)
  %879 = inttoptr i32 %878 to i8*
  %880 = load i8*, i8** %string_2, align 4
  %881 = ptrtoint i8* %880 to i64
  %882 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %881)
  %call781 = call i8* @t_strcpy(i8* %882, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i64 0, i64 0))
  %883 = call i32 @c_TPtoO(i8* %call781)
  %884 = inttoptr i32 %883 to i8*
  %call782 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 605, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %885 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %886 = load i8*, i8** %string_1, align 4
  %887 = load i8*, i8** %string_2, align 4
  %888 = ptrtoint %Tstruct.json_object_t_t* %885 to i32
  %889 = call i8* @c_fetch_pointer_from_offset(i32 %888)
  %890 = call i1 @c_isTaintedPointerToTaintedMem(i8* %889)
  br i1 %890, label %_Dynamic_check.succeeded784, label %_Dynamic_check.failed783

_Dynamic_check.succeeded784:                      ; preds = %if.end779
  %891 = bitcast i8* %889 to %Tstruct.json_object_t_t*
  %892 = ptrtoint i8* %886 to i32
  %893 = call i8* @c_fetch_pointer_from_offset(i32 %892)
  %894 = call i1 @c_isTaintedPointerToTaintedMem(i8* %893)
  br i1 %894, label %_Dynamic_check.succeeded786, label %_Dynamic_check.failed785

_Dynamic_check.succeeded786:                      ; preds = %_Dynamic_check.succeeded784
  %895 = ptrtoint i8* %887 to i32
  %896 = call i8* @c_fetch_pointer_from_offset(i32 %895)
  %897 = call i1 @c_isTaintedPointerToTaintedMem(i8* %896)
  br i1 %897, label %_Dynamic_check.succeeded788, label %_Dynamic_check.failed787

_Dynamic_check.succeeded788:                      ; preds = %_Dynamic_check.succeeded786
  %call789 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %891, i8* %893, i8* %896)
  %cmp790 = icmp eq i32 %call789, 0
  br i1 %cmp790, label %if.then791, label %if.else794

if.then791:                                       ; preds = %_Dynamic_check.succeeded788
  %call792 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %898 = load i32, i32* @tests_passed, align 4
  %inc793 = add nsw i32 %898, 1
  store i32 %inc793, i32* @tests_passed, align 4
  br label %if.end797

_Dynamic_check.failed783:                         ; preds = %if.end779
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed785:                         ; preds = %_Dynamic_check.succeeded784
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed787:                         ; preds = %_Dynamic_check.succeeded786
  call void @llvm.trap() #6
  unreachable

if.else794:                                       ; preds = %_Dynamic_check.succeeded788
  %call795 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %899 = load i32, i32* @tests_failed, align 4
  %inc796 = add nsw i32 %899, 1
  store i32 %inc796, i32* @tests_failed, align 4
  br label %if.end797

if.end797:                                        ; preds = %if.else794, %if.then791
  %900 = load i8*, i8** %string_1, align 4
  %901 = ptrtoint i8* %900 to i64
  %902 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %901)
  %call798 = call i8* @t_strcpy(i8* %902, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.260, i64 0, i64 0))
  %903 = call i32 @c_TPtoO(i8* %call798)
  %904 = inttoptr i32 %903 to i8*
  %905 = load i8*, i8** %string_2, align 4
  %906 = ptrtoint i8* %905 to i64
  %907 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %906)
  %call799 = call i8* @t_strcpy(i8* %907, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0))
  %908 = call i32 @c_TPtoO(i8* %call799)
  %909 = inttoptr i32 %908 to i8*
  %call800 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 608, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %910 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %911 = load i8*, i8** %string_1, align 4
  %912 = load i8*, i8** %string_2, align 4
  %913 = ptrtoint %Tstruct.json_object_t_t* %910 to i32
  %914 = call i8* @c_fetch_pointer_from_offset(i32 %913)
  %915 = call i1 @c_isTaintedPointerToTaintedMem(i8* %914)
  br i1 %915, label %_Dynamic_check.succeeded802, label %_Dynamic_check.failed801

_Dynamic_check.succeeded802:                      ; preds = %if.end797
  %916 = bitcast i8* %914 to %Tstruct.json_object_t_t*
  %917 = ptrtoint i8* %911 to i32
  %918 = call i8* @c_fetch_pointer_from_offset(i32 %917)
  %919 = call i1 @c_isTaintedPointerToTaintedMem(i8* %918)
  br i1 %919, label %_Dynamic_check.succeeded804, label %_Dynamic_check.failed803

_Dynamic_check.succeeded804:                      ; preds = %_Dynamic_check.succeeded802
  %920 = ptrtoint i8* %912 to i32
  %921 = call i8* @c_fetch_pointer_from_offset(i32 %920)
  %922 = call i1 @c_isTaintedPointerToTaintedMem(i8* %921)
  br i1 %922, label %_Dynamic_check.succeeded806, label %_Dynamic_check.failed805

_Dynamic_check.succeeded806:                      ; preds = %_Dynamic_check.succeeded804
  %call807 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %916, i8* %918, i8* %921)
  %cmp808 = icmp eq i32 %call807, 0
  br i1 %cmp808, label %if.then809, label %if.else812

if.then809:                                       ; preds = %_Dynamic_check.succeeded806
  %call810 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %923 = load i32, i32* @tests_passed, align 4
  %inc811 = add nsw i32 %923, 1
  store i32 %inc811, i32* @tests_passed, align 4
  br label %if.end815

_Dynamic_check.failed801:                         ; preds = %if.end797
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed803:                         ; preds = %_Dynamic_check.succeeded802
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed805:                         ; preds = %_Dynamic_check.succeeded804
  call void @llvm.trap() #6
  unreachable

if.else812:                                       ; preds = %_Dynamic_check.succeeded806
  %call813 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %924 = load i32, i32* @tests_failed, align 4
  %inc814 = add nsw i32 %924, 1
  store i32 %inc814, i32* @tests_failed, align 4
  br label %if.end815

if.end815:                                        ; preds = %if.else812, %if.then809
  %925 = load i8*, i8** %string_1, align 4
  %926 = ptrtoint i8* %925 to i64
  %927 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %926)
  %call816 = call i8* @t_strcpy(i8* %927, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.262, i64 0, i64 0))
  %928 = call i32 @c_TPtoO(i8* %call816)
  %929 = inttoptr i32 %928 to i8*
  %930 = load i8*, i8** %string_2, align 4
  %931 = ptrtoint i8* %930 to i64
  %932 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %931)
  %call817 = call i8* @t_strcpy(i8* %932, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.263, i64 0, i64 0))
  %933 = call i32 @c_TPtoO(i8* %call817)
  %934 = inttoptr i32 %933 to i8*
  %call818 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 612, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %935 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %936 = load i8*, i8** %string_1, align 4
  %937 = load i8*, i8** %string_2, align 4
  %938 = ptrtoint %Tstruct.json_object_t_t* %935 to i32
  %939 = call i8* @c_fetch_pointer_from_offset(i32 %938)
  %940 = call i1 @c_isTaintedPointerToTaintedMem(i8* %939)
  br i1 %940, label %_Dynamic_check.succeeded820, label %_Dynamic_check.failed819

_Dynamic_check.succeeded820:                      ; preds = %if.end815
  %941 = bitcast i8* %939 to %Tstruct.json_object_t_t*
  %942 = ptrtoint i8* %936 to i32
  %943 = call i8* @c_fetch_pointer_from_offset(i32 %942)
  %944 = call i1 @c_isTaintedPointerToTaintedMem(i8* %943)
  br i1 %944, label %_Dynamic_check.succeeded822, label %_Dynamic_check.failed821

_Dynamic_check.succeeded822:                      ; preds = %_Dynamic_check.succeeded820
  %945 = ptrtoint i8* %937 to i32
  %946 = call i8* @c_fetch_pointer_from_offset(i32 %945)
  %947 = call i1 @c_isTaintedPointerToTaintedMem(i8* %946)
  br i1 %947, label %_Dynamic_check.succeeded824, label %_Dynamic_check.failed823

_Dynamic_check.succeeded824:                      ; preds = %_Dynamic_check.succeeded822
  %call825 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %941, i8* %943, i8* %946)
  %cmp826 = icmp eq i32 %call825, -1
  br i1 %cmp826, label %if.then827, label %if.else830

if.then827:                                       ; preds = %_Dynamic_check.succeeded824
  %call828 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %948 = load i32, i32* @tests_passed, align 4
  %inc829 = add nsw i32 %948, 1
  store i32 %inc829, i32* @tests_passed, align 4
  br label %if.end833

_Dynamic_check.failed819:                         ; preds = %if.end815
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed821:                         ; preds = %_Dynamic_check.succeeded820
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed823:                         ; preds = %_Dynamic_check.succeeded822
  call void @llvm.trap() #6
  unreachable

if.else830:                                       ; preds = %_Dynamic_check.succeeded824
  %call831 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %949 = load i32, i32* @tests_failed, align 4
  %inc832 = add nsw i32 %949, 1
  store i32 %inc832, i32* @tests_failed, align 4
  br label %if.end833

if.end833:                                        ; preds = %if.else830, %if.then827
  %950 = load i8*, i8** %string_1, align 4
  %951 = ptrtoint i8* %950 to i64
  %952 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %951)
  %call834 = call i8* @t_strcpy(i8* %952, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.265, i64 0, i64 0))
  %953 = call i32 @c_TPtoO(i8* %call834)
  %954 = inttoptr i32 %953 to i8*
  %955 = load i8*, i8** %string_2, align 4
  %956 = ptrtoint i8* %955 to i64
  %957 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %956)
  %call835 = call i8* @t_strcpy(i8* %957, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.266, i64 0, i64 0))
  %958 = call i32 @c_TPtoO(i8* %call835)
  %959 = inttoptr i32 %958 to i8*
  %call836 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 615, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %960 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %961 = load i8*, i8** %string_1, align 4
  %962 = load i8*, i8** %string_2, align 4
  %963 = ptrtoint %Tstruct.json_object_t_t* %960 to i32
  %964 = call i8* @c_fetch_pointer_from_offset(i32 %963)
  %965 = call i1 @c_isTaintedPointerToTaintedMem(i8* %964)
  br i1 %965, label %_Dynamic_check.succeeded838, label %_Dynamic_check.failed837

_Dynamic_check.succeeded838:                      ; preds = %if.end833
  %966 = bitcast i8* %964 to %Tstruct.json_object_t_t*
  %967 = ptrtoint i8* %961 to i32
  %968 = call i8* @c_fetch_pointer_from_offset(i32 %967)
  %969 = call i1 @c_isTaintedPointerToTaintedMem(i8* %968)
  br i1 %969, label %_Dynamic_check.succeeded840, label %_Dynamic_check.failed839

_Dynamic_check.succeeded840:                      ; preds = %_Dynamic_check.succeeded838
  %970 = ptrtoint i8* %962 to i32
  %971 = call i8* @c_fetch_pointer_from_offset(i32 %970)
  %972 = call i1 @c_isTaintedPointerToTaintedMem(i8* %971)
  br i1 %972, label %_Dynamic_check.succeeded842, label %_Dynamic_check.failed841

_Dynamic_check.succeeded842:                      ; preds = %_Dynamic_check.succeeded840
  %call843 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %966, i8* %968, i8* %971)
  %cmp844 = icmp eq i32 %call843, -1
  br i1 %cmp844, label %if.then845, label %if.else848

if.then845:                                       ; preds = %_Dynamic_check.succeeded842
  %call846 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %973 = load i32, i32* @tests_passed, align 4
  %inc847 = add nsw i32 %973, 1
  store i32 %inc847, i32* @tests_passed, align 4
  br label %if.end851

_Dynamic_check.failed837:                         ; preds = %if.end833
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed839:                         ; preds = %_Dynamic_check.succeeded838
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed841:                         ; preds = %_Dynamic_check.succeeded840
  call void @llvm.trap() #6
  unreachable

if.else848:                                       ; preds = %_Dynamic_check.succeeded842
  %call849 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %974 = load i32, i32* @tests_failed, align 4
  %inc850 = add nsw i32 %974, 1
  store i32 %inc850, i32* @tests_failed, align 4
  br label %if.end851

if.end851:                                        ; preds = %if.else848, %if.then845
  %975 = load i8*, i8** %string_1, align 4
  %976 = ptrtoint i8* %975 to i64
  %977 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %976)
  %call852 = call i8* @t_strcpy(i8* %977, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.267, i64 0, i64 0))
  %978 = call i32 @c_TPtoO(i8* %call852)
  %979 = inttoptr i32 %978 to i8*
  %980 = load i8*, i8** %string_2, align 4
  %981 = ptrtoint i8* %980 to i64
  %982 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %981)
  %call853 = call i8* @t_strcpy(i8* %982, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.268, i64 0, i64 0))
  %983 = call i32 @c_TPtoO(i8* %call853)
  %984 = inttoptr i32 %983 to i8*
  %call854 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 620, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %985 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %986 = load i8*, i8** %string_1, align 4
  %987 = load i8*, i8** %string_2, align 4
  %988 = ptrtoint %Tstruct.json_object_t_t* %985 to i32
  %989 = call i8* @c_fetch_pointer_from_offset(i32 %988)
  %990 = call i1 @c_isTaintedPointerToTaintedMem(i8* %989)
  br i1 %990, label %_Dynamic_check.succeeded856, label %_Dynamic_check.failed855

_Dynamic_check.succeeded856:                      ; preds = %if.end851
  %991 = bitcast i8* %989 to %Tstruct.json_object_t_t*
  %992 = ptrtoint i8* %986 to i32
  %993 = call i8* @c_fetch_pointer_from_offset(i32 %992)
  %994 = call i1 @c_isTaintedPointerToTaintedMem(i8* %993)
  br i1 %994, label %_Dynamic_check.succeeded858, label %_Dynamic_check.failed857

_Dynamic_check.succeeded858:                      ; preds = %_Dynamic_check.succeeded856
  %995 = ptrtoint i8* %987 to i32
  %996 = call i8* @c_fetch_pointer_from_offset(i32 %995)
  %997 = call i1 @c_isTaintedPointerToTaintedMem(i8* %996)
  br i1 %997, label %_Dynamic_check.succeeded860, label %_Dynamic_check.failed859

_Dynamic_check.succeeded860:                      ; preds = %_Dynamic_check.succeeded858
  %call861 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %991, i8* %993, i8* %996)
  %cmp862 = icmp eq i32 %call861, -1
  br i1 %cmp862, label %if.then863, label %if.else866

if.then863:                                       ; preds = %_Dynamic_check.succeeded860
  %call864 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %998 = load i32, i32* @tests_passed, align 4
  %inc865 = add nsw i32 %998, 1
  store i32 %inc865, i32* @tests_passed, align 4
  br label %if.end869

_Dynamic_check.failed855:                         ; preds = %if.end851
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed857:                         ; preds = %_Dynamic_check.succeeded856
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed859:                         ; preds = %_Dynamic_check.succeeded858
  call void @llvm.trap() #6
  unreachable

if.else866:                                       ; preds = %_Dynamic_check.succeeded860
  %call867 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %999 = load i32, i32* @tests_failed, align 4
  %inc868 = add nsw i32 %999, 1
  store i32 %inc868, i32* @tests_failed, align 4
  br label %if.end869

if.end869:                                        ; preds = %if.else866, %if.then863
  %1000 = load i8*, i8** %string_1, align 4
  %1001 = ptrtoint i8* %1000 to i64
  %1002 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1001)
  %call870 = call i8* @t_strcpy(i8* %1002, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.269, i64 0, i64 0))
  %1003 = call i32 @c_TPtoO(i8* %call870)
  %1004 = inttoptr i32 %1003 to i8*
  %1005 = load i8*, i8** %string_2, align 4
  %1006 = ptrtoint i8* %1005 to i64
  %1007 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1006)
  %call871 = call i8* @t_strcpy(i8* %1007, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.270, i64 0, i64 0))
  %1008 = call i32 @c_TPtoO(i8* %call871)
  %1009 = inttoptr i32 %1008 to i8*
  %call872 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 623, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1010 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1011 = load i8*, i8** %string_1, align 4
  %1012 = load i8*, i8** %string_2, align 4
  %1013 = ptrtoint %Tstruct.json_object_t_t* %1010 to i32
  %1014 = call i8* @c_fetch_pointer_from_offset(i32 %1013)
  %1015 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1014)
  br i1 %1015, label %_Dynamic_check.succeeded874, label %_Dynamic_check.failed873

_Dynamic_check.succeeded874:                      ; preds = %if.end869
  %1016 = bitcast i8* %1014 to %Tstruct.json_object_t_t*
  %1017 = ptrtoint i8* %1011 to i32
  %1018 = call i8* @c_fetch_pointer_from_offset(i32 %1017)
  %1019 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1018)
  br i1 %1019, label %_Dynamic_check.succeeded876, label %_Dynamic_check.failed875

_Dynamic_check.succeeded876:                      ; preds = %_Dynamic_check.succeeded874
  %1020 = ptrtoint i8* %1012 to i32
  %1021 = call i8* @c_fetch_pointer_from_offset(i32 %1020)
  %1022 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1021)
  br i1 %1022, label %_Dynamic_check.succeeded878, label %_Dynamic_check.failed877

_Dynamic_check.succeeded878:                      ; preds = %_Dynamic_check.succeeded876
  %call879 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1016, i8* %1018, i8* %1021)
  %cmp880 = icmp eq i32 %call879, -1
  br i1 %cmp880, label %if.then881, label %if.else884

if.then881:                                       ; preds = %_Dynamic_check.succeeded878
  %call882 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1023 = load i32, i32* @tests_passed, align 4
  %inc883 = add nsw i32 %1023, 1
  store i32 %inc883, i32* @tests_passed, align 4
  br label %if.end887

_Dynamic_check.failed873:                         ; preds = %if.end869
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed875:                         ; preds = %_Dynamic_check.succeeded874
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed877:                         ; preds = %_Dynamic_check.succeeded876
  call void @llvm.trap() #6
  unreachable

if.else884:                                       ; preds = %_Dynamic_check.succeeded878
  %call885 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1024 = load i32, i32* @tests_failed, align 4
  %inc886 = add nsw i32 %1024, 1
  store i32 %inc886, i32* @tests_failed, align 4
  br label %if.end887

if.end887:                                        ; preds = %if.else884, %if.then881
  %1025 = load i8*, i8** %string_1, align 4
  %1026 = ptrtoint i8* %1025 to i64
  %1027 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1026)
  %call888 = call i8* @t_strcpy(i8* %1027, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.271, i64 0, i64 0))
  %1028 = call i32 @c_TPtoO(i8* %call888)
  %1029 = inttoptr i32 %1028 to i8*
  %1030 = load i8*, i8** %string_2, align 4
  %1031 = ptrtoint i8* %1030 to i64
  %1032 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1031)
  %call889 = call i8* @t_strcpy(i8* %1032, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.272, i64 0, i64 0))
  %1033 = call i32 @c_TPtoO(i8* %call889)
  %1034 = inttoptr i32 %1033 to i8*
  %call890 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 626, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1035 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1036 = load i8*, i8** %string_1, align 4
  %1037 = load i8*, i8** %string_2, align 4
  %1038 = ptrtoint %Tstruct.json_object_t_t* %1035 to i32
  %1039 = call i8* @c_fetch_pointer_from_offset(i32 %1038)
  %1040 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1039)
  br i1 %1040, label %_Dynamic_check.succeeded892, label %_Dynamic_check.failed891

_Dynamic_check.succeeded892:                      ; preds = %if.end887
  %1041 = bitcast i8* %1039 to %Tstruct.json_object_t_t*
  %1042 = ptrtoint i8* %1036 to i32
  %1043 = call i8* @c_fetch_pointer_from_offset(i32 %1042)
  %1044 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1043)
  br i1 %1044, label %_Dynamic_check.succeeded894, label %_Dynamic_check.failed893

_Dynamic_check.succeeded894:                      ; preds = %_Dynamic_check.succeeded892
  %1045 = ptrtoint i8* %1037 to i32
  %1046 = call i8* @c_fetch_pointer_from_offset(i32 %1045)
  %1047 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1046)
  br i1 %1047, label %_Dynamic_check.succeeded896, label %_Dynamic_check.failed895

_Dynamic_check.succeeded896:                      ; preds = %_Dynamic_check.succeeded894
  %call897 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1041, i8* %1043, i8* %1046)
  %cmp898 = icmp eq i32 %call897, -1
  br i1 %cmp898, label %if.then899, label %if.else902

if.then899:                                       ; preds = %_Dynamic_check.succeeded896
  %call900 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1048 = load i32, i32* @tests_passed, align 4
  %inc901 = add nsw i32 %1048, 1
  store i32 %inc901, i32* @tests_passed, align 4
  br label %if.end905

_Dynamic_check.failed891:                         ; preds = %if.end887
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed893:                         ; preds = %_Dynamic_check.succeeded892
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed895:                         ; preds = %_Dynamic_check.succeeded894
  call void @llvm.trap() #6
  unreachable

if.else902:                                       ; preds = %_Dynamic_check.succeeded896
  %call903 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1049 = load i32, i32* @tests_failed, align 4
  %inc904 = add nsw i32 %1049, 1
  store i32 %inc904, i32* @tests_failed, align 4
  br label %if.end905

if.end905:                                        ; preds = %if.else902, %if.then899
  %1050 = load i8*, i8** %string_1, align 4
  %1051 = ptrtoint i8* %1050 to i64
  %1052 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1051)
  %call906 = call i8* @t_strcpy(i8* %1052, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.273, i64 0, i64 0))
  %1053 = call i32 @c_TPtoO(i8* %call906)
  %1054 = inttoptr i32 %1053 to i8*
  %1055 = load i8*, i8** %string_2, align 4
  %1056 = ptrtoint i8* %1055 to i64
  %1057 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1056)
  %call907 = call i8* @t_strcpy(i8* %1057, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i64 0, i64 0))
  %1058 = call i32 @c_TPtoO(i8* %call907)
  %1059 = inttoptr i32 %1058 to i8*
  %call908 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 630, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1060 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1061 = load i8*, i8** %string_1, align 4
  %1062 = load i8*, i8** %string_2, align 4
  %1063 = ptrtoint %Tstruct.json_object_t_t* %1060 to i32
  %1064 = call i8* @c_fetch_pointer_from_offset(i32 %1063)
  %1065 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1064)
  br i1 %1065, label %_Dynamic_check.succeeded910, label %_Dynamic_check.failed909

_Dynamic_check.succeeded910:                      ; preds = %if.end905
  %1066 = bitcast i8* %1064 to %Tstruct.json_object_t_t*
  %1067 = ptrtoint i8* %1061 to i32
  %1068 = call i8* @c_fetch_pointer_from_offset(i32 %1067)
  %1069 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1068)
  br i1 %1069, label %_Dynamic_check.succeeded912, label %_Dynamic_check.failed911

_Dynamic_check.succeeded912:                      ; preds = %_Dynamic_check.succeeded910
  %1070 = ptrtoint i8* %1062 to i32
  %1071 = call i8* @c_fetch_pointer_from_offset(i32 %1070)
  %1072 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1071)
  br i1 %1072, label %_Dynamic_check.succeeded914, label %_Dynamic_check.failed913

_Dynamic_check.succeeded914:                      ; preds = %_Dynamic_check.succeeded912
  %call915 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1066, i8* %1068, i8* %1071)
  %cmp916 = icmp eq i32 %call915, -1
  br i1 %cmp916, label %if.then917, label %if.else920

if.then917:                                       ; preds = %_Dynamic_check.succeeded914
  %call918 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1073 = load i32, i32* @tests_passed, align 4
  %inc919 = add nsw i32 %1073, 1
  store i32 %inc919, i32* @tests_passed, align 4
  br label %if.end923

_Dynamic_check.failed909:                         ; preds = %if.end905
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed911:                         ; preds = %_Dynamic_check.succeeded910
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed913:                         ; preds = %_Dynamic_check.succeeded912
  call void @llvm.trap() #6
  unreachable

if.else920:                                       ; preds = %_Dynamic_check.succeeded914
  %call921 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1074 = load i32, i32* @tests_failed, align 4
  %inc922 = add nsw i32 %1074, 1
  store i32 %inc922, i32* @tests_failed, align 4
  br label %if.end923

if.end923:                                        ; preds = %if.else920, %if.then917
  %1075 = load i8*, i8** %string_1, align 4
  %1076 = ptrtoint i8* %1075 to i64
  %1077 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1076)
  %call924 = call i8* @t_strcpy(i8* %1077, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.275, i64 0, i64 0))
  %1078 = call i32 @c_TPtoO(i8* %call924)
  %1079 = inttoptr i32 %1078 to i8*
  %1080 = load i8*, i8** %string_2, align 4
  %1081 = ptrtoint i8* %1080 to i64
  %1082 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1081)
  %call925 = call i8* @t_strcpy(i8* %1082, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.276, i64 0, i64 0))
  %1083 = call i32 @c_TPtoO(i8* %call925)
  %1084 = inttoptr i32 %1083 to i8*
  %call926 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 633, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1085 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1086 = load i8*, i8** %string_1, align 4
  %1087 = load i8*, i8** %string_2, align 4
  %1088 = ptrtoint %Tstruct.json_object_t_t* %1085 to i32
  %1089 = call i8* @c_fetch_pointer_from_offset(i32 %1088)
  %1090 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1089)
  br i1 %1090, label %_Dynamic_check.succeeded928, label %_Dynamic_check.failed927

_Dynamic_check.succeeded928:                      ; preds = %if.end923
  %1091 = bitcast i8* %1089 to %Tstruct.json_object_t_t*
  %1092 = ptrtoint i8* %1086 to i32
  %1093 = call i8* @c_fetch_pointer_from_offset(i32 %1092)
  %1094 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1093)
  br i1 %1094, label %_Dynamic_check.succeeded930, label %_Dynamic_check.failed929

_Dynamic_check.succeeded930:                      ; preds = %_Dynamic_check.succeeded928
  %1095 = ptrtoint i8* %1087 to i32
  %1096 = call i8* @c_fetch_pointer_from_offset(i32 %1095)
  %1097 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1096)
  br i1 %1097, label %_Dynamic_check.succeeded932, label %_Dynamic_check.failed931

_Dynamic_check.succeeded932:                      ; preds = %_Dynamic_check.succeeded930
  %call933 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1091, i8* %1093, i8* %1096)
  %cmp934 = icmp eq i32 %call933, -1
  br i1 %cmp934, label %if.then935, label %if.else938

if.then935:                                       ; preds = %_Dynamic_check.succeeded932
  %call936 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1098 = load i32, i32* @tests_passed, align 4
  %inc937 = add nsw i32 %1098, 1
  store i32 %inc937, i32* @tests_passed, align 4
  br label %if.end941

_Dynamic_check.failed927:                         ; preds = %if.end923
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed929:                         ; preds = %_Dynamic_check.succeeded928
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed931:                         ; preds = %_Dynamic_check.succeeded930
  call void @llvm.trap() #6
  unreachable

if.else938:                                       ; preds = %_Dynamic_check.succeeded932
  %call939 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1099 = load i32, i32* @tests_failed, align 4
  %inc940 = add nsw i32 %1099, 1
  store i32 %inc940, i32* @tests_failed, align 4
  br label %if.end941

if.end941:                                        ; preds = %if.else938, %if.then935
  %1100 = load i8*, i8** %string_1, align 4
  %1101 = ptrtoint i8* %1100 to i64
  %1102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1101)
  %call942 = call i8* @t_strcpy(i8* %1102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.277, i64 0, i64 0))
  %1103 = call i32 @c_TPtoO(i8* %call942)
  %1104 = inttoptr i32 %1103 to i8*
  %1105 = load i8*, i8** %string_2, align 4
  %1106 = ptrtoint i8* %1105 to i64
  %1107 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1106)
  %call943 = call i8* @t_strcpy(i8* %1107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.278, i64 0, i64 0))
  %1108 = call i32 @c_TPtoO(i8* %call943)
  %1109 = inttoptr i32 %1108 to i8*
  %call944 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 636, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1110 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1111 = load i8*, i8** %string_1, align 4
  %1112 = load i8*, i8** %string_2, align 4
  %1113 = ptrtoint %Tstruct.json_object_t_t* %1110 to i32
  %1114 = call i8* @c_fetch_pointer_from_offset(i32 %1113)
  %1115 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1114)
  br i1 %1115, label %_Dynamic_check.succeeded946, label %_Dynamic_check.failed945

_Dynamic_check.succeeded946:                      ; preds = %if.end941
  %1116 = bitcast i8* %1114 to %Tstruct.json_object_t_t*
  %1117 = ptrtoint i8* %1111 to i32
  %1118 = call i8* @c_fetch_pointer_from_offset(i32 %1117)
  %1119 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1118)
  br i1 %1119, label %_Dynamic_check.succeeded948, label %_Dynamic_check.failed947

_Dynamic_check.succeeded948:                      ; preds = %_Dynamic_check.succeeded946
  %1120 = ptrtoint i8* %1112 to i32
  %1121 = call i8* @c_fetch_pointer_from_offset(i32 %1120)
  %1122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1121)
  br i1 %1122, label %_Dynamic_check.succeeded950, label %_Dynamic_check.failed949

_Dynamic_check.succeeded950:                      ; preds = %_Dynamic_check.succeeded948
  %call951 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1116, i8* %1118, i8* %1121)
  %cmp952 = icmp eq i32 %call951, -1
  br i1 %cmp952, label %if.then953, label %if.else956

if.then953:                                       ; preds = %_Dynamic_check.succeeded950
  %call954 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1123 = load i32, i32* @tests_passed, align 4
  %inc955 = add nsw i32 %1123, 1
  store i32 %inc955, i32* @tests_passed, align 4
  br label %if.end959

_Dynamic_check.failed945:                         ; preds = %if.end941
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed947:                         ; preds = %_Dynamic_check.succeeded946
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed949:                         ; preds = %_Dynamic_check.succeeded948
  call void @llvm.trap() #6
  unreachable

if.else956:                                       ; preds = %_Dynamic_check.succeeded950
  %call957 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1124 = load i32, i32* @tests_failed, align 4
  %inc958 = add nsw i32 %1124, 1
  store i32 %inc958, i32* @tests_failed, align 4
  br label %if.end959

if.end959:                                        ; preds = %if.else956, %if.then953
  %1125 = load i8*, i8** %string_1, align 4
  %1126 = ptrtoint i8* %1125 to i64
  %1127 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1126)
  %call960 = call i8* @t_strcpy(i8* %1127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.279, i64 0, i64 0))
  %1128 = call i32 @c_TPtoO(i8* %call960)
  %1129 = inttoptr i32 %1128 to i8*
  %1130 = load i8*, i8** %string_2, align 4
  %1131 = ptrtoint i8* %1130 to i64
  %1132 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1131)
  %call961 = call i8* @t_strcpy(i8* %1132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i64 0, i64 0))
  %1133 = call i32 @c_TPtoO(i8* %call961)
  %1134 = inttoptr i32 %1133 to i8*
  %call962 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 639, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1135 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1136 = load i8*, i8** %string_1, align 4
  %1137 = load i8*, i8** %string_2, align 4
  %1138 = ptrtoint %Tstruct.json_object_t_t* %1135 to i32
  %1139 = call i8* @c_fetch_pointer_from_offset(i32 %1138)
  %1140 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1139)
  br i1 %1140, label %_Dynamic_check.succeeded964, label %_Dynamic_check.failed963

_Dynamic_check.succeeded964:                      ; preds = %if.end959
  %1141 = bitcast i8* %1139 to %Tstruct.json_object_t_t*
  %1142 = ptrtoint i8* %1136 to i32
  %1143 = call i8* @c_fetch_pointer_from_offset(i32 %1142)
  %1144 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1143)
  br i1 %1144, label %_Dynamic_check.succeeded966, label %_Dynamic_check.failed965

_Dynamic_check.succeeded966:                      ; preds = %_Dynamic_check.succeeded964
  %1145 = ptrtoint i8* %1137 to i32
  %1146 = call i8* @c_fetch_pointer_from_offset(i32 %1145)
  %1147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1146)
  br i1 %1147, label %_Dynamic_check.succeeded968, label %_Dynamic_check.failed967

_Dynamic_check.succeeded968:                      ; preds = %_Dynamic_check.succeeded966
  %call969 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1141, i8* %1143, i8* %1146)
  %cmp970 = icmp eq i32 %call969, -1
  br i1 %cmp970, label %if.then971, label %if.else974

if.then971:                                       ; preds = %_Dynamic_check.succeeded968
  %call972 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1148 = load i32, i32* @tests_passed, align 4
  %inc973 = add nsw i32 %1148, 1
  store i32 %inc973, i32* @tests_passed, align 4
  br label %if.end977

_Dynamic_check.failed963:                         ; preds = %if.end959
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed965:                         ; preds = %_Dynamic_check.succeeded964
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed967:                         ; preds = %_Dynamic_check.succeeded966
  call void @llvm.trap() #6
  unreachable

if.else974:                                       ; preds = %_Dynamic_check.succeeded968
  %call975 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1149 = load i32, i32* @tests_failed, align 4
  %inc976 = add nsw i32 %1149, 1
  store i32 %inc976, i32* @tests_failed, align 4
  br label %if.end977

if.end977:                                        ; preds = %if.else974, %if.then971
  %1150 = load i8*, i8** %string_1, align 4
  %1151 = ptrtoint i8* %1150 to i64
  %1152 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1151)
  %call978 = call i8* @t_strcpy(i8* %1152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.281, i64 0, i64 0))
  %1153 = call i32 @c_TPtoO(i8* %call978)
  %1154 = inttoptr i32 %1153 to i8*
  %1155 = load i8*, i8** %string_2, align 4
  %1156 = ptrtoint i8* %1155 to i64
  %1157 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1156)
  %call979 = call i8* @t_strcpy(i8* %1157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.282, i64 0, i64 0))
  %1158 = call i32 @c_TPtoO(i8* %call979)
  %1159 = inttoptr i32 %1158 to i8*
  %call980 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 642, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1160 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1161 = load i8*, i8** %string_1, align 4
  %1162 = load i8*, i8** %string_2, align 4
  %1163 = ptrtoint %Tstruct.json_object_t_t* %1160 to i32
  %1164 = call i8* @c_fetch_pointer_from_offset(i32 %1163)
  %1165 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1164)
  br i1 %1165, label %_Dynamic_check.succeeded982, label %_Dynamic_check.failed981

_Dynamic_check.succeeded982:                      ; preds = %if.end977
  %1166 = bitcast i8* %1164 to %Tstruct.json_object_t_t*
  %1167 = ptrtoint i8* %1161 to i32
  %1168 = call i8* @c_fetch_pointer_from_offset(i32 %1167)
  %1169 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1168)
  br i1 %1169, label %_Dynamic_check.succeeded984, label %_Dynamic_check.failed983

_Dynamic_check.succeeded984:                      ; preds = %_Dynamic_check.succeeded982
  %1170 = ptrtoint i8* %1162 to i32
  %1171 = call i8* @c_fetch_pointer_from_offset(i32 %1170)
  %1172 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1171)
  br i1 %1172, label %_Dynamic_check.succeeded986, label %_Dynamic_check.failed985

_Dynamic_check.succeeded986:                      ; preds = %_Dynamic_check.succeeded984
  %call987 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1166, i8* %1168, i8* %1171)
  %cmp988 = icmp eq i32 %call987, -1
  br i1 %cmp988, label %if.then989, label %if.else992

if.then989:                                       ; preds = %_Dynamic_check.succeeded986
  %call990 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1173 = load i32, i32* @tests_passed, align 4
  %inc991 = add nsw i32 %1173, 1
  store i32 %inc991, i32* @tests_passed, align 4
  br label %if.end995

_Dynamic_check.failed981:                         ; preds = %if.end977
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed983:                         ; preds = %_Dynamic_check.succeeded982
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed985:                         ; preds = %_Dynamic_check.succeeded984
  call void @llvm.trap() #6
  unreachable

if.else992:                                       ; preds = %_Dynamic_check.succeeded986
  %call993 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1174 = load i32, i32* @tests_failed, align 4
  %inc994 = add nsw i32 %1174, 1
  store i32 %inc994, i32* @tests_failed, align 4
  br label %if.end995

if.end995:                                        ; preds = %if.else992, %if.then989
  %1175 = load i8*, i8** %string_1, align 4
  %1176 = ptrtoint i8* %1175 to i64
  %1177 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1176)
  %call996 = call i8* @t_strcpy(i8* %1177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.283, i64 0, i64 0))
  %1178 = call i32 @c_TPtoO(i8* %call996)
  %1179 = inttoptr i32 %1178 to i8*
  %1180 = load i8*, i8** %string_2, align 4
  %1181 = ptrtoint i8* %1180 to i64
  %1182 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1181)
  %call997 = call i8* @t_strcpy(i8* %1182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.284, i64 0, i64 0))
  %1183 = call i32 @c_TPtoO(i8* %call997)
  %1184 = inttoptr i32 %1183 to i8*
  %call998 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1185 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1186 = load i8*, i8** %string_1, align 4
  %1187 = load i8*, i8** %string_2, align 4
  %1188 = ptrtoint %Tstruct.json_object_t_t* %1185 to i32
  %1189 = call i8* @c_fetch_pointer_from_offset(i32 %1188)
  %1190 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1189)
  br i1 %1190, label %_Dynamic_check.succeeded1000, label %_Dynamic_check.failed999

_Dynamic_check.succeeded1000:                     ; preds = %if.end995
  %1191 = bitcast i8* %1189 to %Tstruct.json_object_t_t*
  %1192 = ptrtoint i8* %1186 to i32
  %1193 = call i8* @c_fetch_pointer_from_offset(i32 %1192)
  %1194 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1193)
  br i1 %1194, label %_Dynamic_check.succeeded1002, label %_Dynamic_check.failed1001

_Dynamic_check.succeeded1002:                     ; preds = %_Dynamic_check.succeeded1000
  %1195 = ptrtoint i8* %1187 to i32
  %1196 = call i8* @c_fetch_pointer_from_offset(i32 %1195)
  %1197 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1196)
  br i1 %1197, label %_Dynamic_check.succeeded1004, label %_Dynamic_check.failed1003

_Dynamic_check.succeeded1004:                     ; preds = %_Dynamic_check.succeeded1002
  %call1005 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1191, i8* %1193, i8* %1196)
  %cmp1006 = icmp eq i32 %call1005, -1
  br i1 %cmp1006, label %if.then1007, label %if.else1010

if.then1007:                                      ; preds = %_Dynamic_check.succeeded1004
  %call1008 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1198 = load i32, i32* @tests_passed, align 4
  %inc1009 = add nsw i32 %1198, 1
  store i32 %inc1009, i32* @tests_passed, align 4
  br label %if.end1013

_Dynamic_check.failed999:                         ; preds = %if.end995
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1001:                        ; preds = %_Dynamic_check.succeeded1000
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1003:                        ; preds = %_Dynamic_check.succeeded1002
  call void @llvm.trap() #6
  unreachable

if.else1010:                                      ; preds = %_Dynamic_check.succeeded1004
  %call1011 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1199 = load i32, i32* @tests_failed, align 4
  %inc1012 = add nsw i32 %1199, 1
  store i32 %inc1012, i32* @tests_failed, align 4
  br label %if.end1013

if.end1013:                                       ; preds = %if.else1010, %if.then1007
  %1200 = load i8*, i8** %string_1, align 4
  %1201 = ptrtoint i8* %1200 to i64
  %1202 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1201)
  %call1014 = call i8* @t_strcpy(i8* %1202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.285, i64 0, i64 0))
  %1203 = call i32 @c_TPtoO(i8* %call1014)
  %1204 = inttoptr i32 %1203 to i8*
  %1205 = load i8*, i8** %string_2, align 4
  %1206 = ptrtoint i8* %1205 to i64
  %1207 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1206)
  %call1015 = call i8* @t_strcpy(i8* %1207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.284, i64 0, i64 0))
  %1208 = call i32 @c_TPtoO(i8* %call1015)
  %1209 = inttoptr i32 %1208 to i8*
  %call1016 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 648, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1210 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1211 = load i8*, i8** %string_1, align 4
  %1212 = load i8*, i8** %string_2, align 4
  %1213 = ptrtoint %Tstruct.json_object_t_t* %1210 to i32
  %1214 = call i8* @c_fetch_pointer_from_offset(i32 %1213)
  %1215 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1214)
  br i1 %1215, label %_Dynamic_check.succeeded1018, label %_Dynamic_check.failed1017

_Dynamic_check.succeeded1018:                     ; preds = %if.end1013
  %1216 = bitcast i8* %1214 to %Tstruct.json_object_t_t*
  %1217 = ptrtoint i8* %1211 to i32
  %1218 = call i8* @c_fetch_pointer_from_offset(i32 %1217)
  %1219 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1218)
  br i1 %1219, label %_Dynamic_check.succeeded1020, label %_Dynamic_check.failed1019

_Dynamic_check.succeeded1020:                     ; preds = %_Dynamic_check.succeeded1018
  %1220 = ptrtoint i8* %1212 to i32
  %1221 = call i8* @c_fetch_pointer_from_offset(i32 %1220)
  %1222 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1221)
  br i1 %1222, label %_Dynamic_check.succeeded1022, label %_Dynamic_check.failed1021

_Dynamic_check.succeeded1022:                     ; preds = %_Dynamic_check.succeeded1020
  %call1023 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1216, i8* %1218, i8* %1221)
  %cmp1024 = icmp eq i32 %call1023, -1
  br i1 %cmp1024, label %if.then1025, label %if.else1028

if.then1025:                                      ; preds = %_Dynamic_check.succeeded1022
  %call1026 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1223 = load i32, i32* @tests_passed, align 4
  %inc1027 = add nsw i32 %1223, 1
  store i32 %inc1027, i32* @tests_passed, align 4
  br label %if.end1031

_Dynamic_check.failed1017:                        ; preds = %if.end1013
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1019:                        ; preds = %_Dynamic_check.succeeded1018
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1021:                        ; preds = %_Dynamic_check.succeeded1020
  call void @llvm.trap() #6
  unreachable

if.else1028:                                      ; preds = %_Dynamic_check.succeeded1022
  %call1029 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1224 = load i32, i32* @tests_failed, align 4
  %inc1030 = add nsw i32 %1224, 1
  store i32 %inc1030, i32* @tests_failed, align 4
  br label %if.end1031

if.end1031:                                       ; preds = %if.else1028, %if.then1025
  %1225 = load i8*, i8** %string_1, align 4
  %1226 = ptrtoint i8* %1225 to i64
  %1227 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1226)
  %call1032 = call i8* @t_strcpy(i8* %1227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.286, i64 0, i64 0))
  %1228 = call i32 @c_TPtoO(i8* %call1032)
  %1229 = inttoptr i32 %1228 to i8*
  %1230 = load i8*, i8** %string_2, align 4
  %1231 = ptrtoint i8* %1230 to i64
  %1232 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1231)
  %call1033 = call i8* @t_strcpy(i8* %1232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.287, i64 0, i64 0))
  %1233 = call i32 @c_TPtoO(i8* %call1033)
  %1234 = inttoptr i32 %1233 to i8*
  %call1034 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 653, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1235 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1236 = load i8*, i8** %string_1, align 4
  %1237 = load i8*, i8** %string_2, align 4
  %1238 = ptrtoint %Tstruct.json_object_t_t* %1235 to i32
  %1239 = call i8* @c_fetch_pointer_from_offset(i32 %1238)
  %1240 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1239)
  br i1 %1240, label %_Dynamic_check.succeeded1036, label %_Dynamic_check.failed1035

_Dynamic_check.succeeded1036:                     ; preds = %if.end1031
  %1241 = bitcast i8* %1239 to %Tstruct.json_object_t_t*
  %1242 = ptrtoint i8* %1236 to i32
  %1243 = call i8* @c_fetch_pointer_from_offset(i32 %1242)
  %1244 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1243)
  br i1 %1244, label %_Dynamic_check.succeeded1038, label %_Dynamic_check.failed1037

_Dynamic_check.succeeded1038:                     ; preds = %_Dynamic_check.succeeded1036
  %1245 = ptrtoint i8* %1237 to i32
  %1246 = call i8* @c_fetch_pointer_from_offset(i32 %1245)
  %1247 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1246)
  br i1 %1247, label %_Dynamic_check.succeeded1040, label %_Dynamic_check.failed1039

_Dynamic_check.succeeded1040:                     ; preds = %_Dynamic_check.succeeded1038
  %call1041 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1241, i8* %1243, i8* %1246)
  %cmp1042 = icmp eq i32 %call1041, -1
  br i1 %cmp1042, label %if.then1043, label %if.else1046

if.then1043:                                      ; preds = %_Dynamic_check.succeeded1040
  %call1044 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1248 = load i32, i32* @tests_passed, align 4
  %inc1045 = add nsw i32 %1248, 1
  store i32 %inc1045, i32* @tests_passed, align 4
  br label %if.end1049

_Dynamic_check.failed1035:                        ; preds = %if.end1031
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1037:                        ; preds = %_Dynamic_check.succeeded1036
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1039:                        ; preds = %_Dynamic_check.succeeded1038
  call void @llvm.trap() #6
  unreachable

if.else1046:                                      ; preds = %_Dynamic_check.succeeded1040
  %call1047 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1249 = load i32, i32* @tests_failed, align 4
  %inc1048 = add nsw i32 %1249, 1
  store i32 %inc1048, i32* @tests_failed, align 4
  br label %if.end1049

if.end1049:                                       ; preds = %if.else1046, %if.then1043
  %1250 = load i8*, i8** %string_1, align 4
  %1251 = ptrtoint i8* %1250 to i64
  %1252 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1251)
  %call1050 = call i8* @t_strcpy(i8* %1252, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.288, i64 0, i64 0))
  %1253 = call i32 @c_TPtoO(i8* %call1050)
  %1254 = inttoptr i32 %1253 to i8*
  %1255 = load i8*, i8** %string_2, align 4
  %1256 = ptrtoint i8* %1255 to i64
  %1257 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1256)
  %call1051 = call i8* @t_strcpy(i8* %1257, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.289, i64 0, i64 0))
  %1258 = call i32 @c_TPtoO(i8* %call1051)
  %1259 = inttoptr i32 %1258 to i8*
  %call1052 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1260 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1261 = load i8*, i8** %string_1, align 4
  %1262 = load i8*, i8** %string_2, align 4
  %1263 = ptrtoint %Tstruct.json_object_t_t* %1260 to i32
  %1264 = call i8* @c_fetch_pointer_from_offset(i32 %1263)
  %1265 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1264)
  br i1 %1265, label %_Dynamic_check.succeeded1054, label %_Dynamic_check.failed1053

_Dynamic_check.succeeded1054:                     ; preds = %if.end1049
  %1266 = bitcast i8* %1264 to %Tstruct.json_object_t_t*
  %1267 = ptrtoint i8* %1261 to i32
  %1268 = call i8* @c_fetch_pointer_from_offset(i32 %1267)
  %1269 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1268)
  br i1 %1269, label %_Dynamic_check.succeeded1056, label %_Dynamic_check.failed1055

_Dynamic_check.succeeded1056:                     ; preds = %_Dynamic_check.succeeded1054
  %1270 = ptrtoint i8* %1262 to i32
  %1271 = call i8* @c_fetch_pointer_from_offset(i32 %1270)
  %1272 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1271)
  br i1 %1272, label %_Dynamic_check.succeeded1058, label %_Dynamic_check.failed1057

_Dynamic_check.succeeded1058:                     ; preds = %_Dynamic_check.succeeded1056
  %call1059 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1266, i8* %1268, i8* %1271)
  %cmp1060 = icmp eq i32 %call1059, -1
  br i1 %cmp1060, label %if.then1061, label %if.else1064

if.then1061:                                      ; preds = %_Dynamic_check.succeeded1058
  %call1062 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1273 = load i32, i32* @tests_passed, align 4
  %inc1063 = add nsw i32 %1273, 1
  store i32 %inc1063, i32* @tests_passed, align 4
  br label %if.end1067

_Dynamic_check.failed1053:                        ; preds = %if.end1049
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1055:                        ; preds = %_Dynamic_check.succeeded1054
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1057:                        ; preds = %_Dynamic_check.succeeded1056
  call void @llvm.trap() #6
  unreachable

if.else1064:                                      ; preds = %_Dynamic_check.succeeded1058
  %call1065 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1274 = load i32, i32* @tests_failed, align 4
  %inc1066 = add nsw i32 %1274, 1
  store i32 %inc1066, i32* @tests_failed, align 4
  br label %if.end1067

if.end1067:                                       ; preds = %if.else1064, %if.then1061
  %1275 = load i8*, i8** %string_1, align 4
  %1276 = ptrtoint i8* %1275 to i64
  %1277 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1276)
  %call1068 = call i8* @t_strcpy(i8* %1277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.290, i64 0, i64 0))
  %1278 = call i32 @c_TPtoO(i8* %call1068)
  %1279 = inttoptr i32 %1278 to i8*
  %1280 = load i8*, i8** %string_2, align 4
  %1281 = ptrtoint i8* %1280 to i64
  %1282 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1281)
  %call1069 = call i8* @t_strcpy(i8* %1282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.291, i64 0, i64 0))
  %1283 = call i32 @c_TPtoO(i8* %call1069)
  %1284 = inttoptr i32 %1283 to i8*
  %call1070 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 659, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1285 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1286 = load i8*, i8** %string_1, align 4
  %1287 = load i8*, i8** %string_2, align 4
  %1288 = ptrtoint %Tstruct.json_object_t_t* %1285 to i32
  %1289 = call i8* @c_fetch_pointer_from_offset(i32 %1288)
  %1290 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1289)
  br i1 %1290, label %_Dynamic_check.succeeded1072, label %_Dynamic_check.failed1071

_Dynamic_check.succeeded1072:                     ; preds = %if.end1067
  %1291 = bitcast i8* %1289 to %Tstruct.json_object_t_t*
  %1292 = ptrtoint i8* %1286 to i32
  %1293 = call i8* @c_fetch_pointer_from_offset(i32 %1292)
  %1294 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1293)
  br i1 %1294, label %_Dynamic_check.succeeded1074, label %_Dynamic_check.failed1073

_Dynamic_check.succeeded1074:                     ; preds = %_Dynamic_check.succeeded1072
  %1295 = ptrtoint i8* %1287 to i32
  %1296 = call i8* @c_fetch_pointer_from_offset(i32 %1295)
  %1297 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1296)
  br i1 %1297, label %_Dynamic_check.succeeded1076, label %_Dynamic_check.failed1075

_Dynamic_check.succeeded1076:                     ; preds = %_Dynamic_check.succeeded1074
  %call1077 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1291, i8* %1293, i8* %1296)
  %cmp1078 = icmp eq i32 %call1077, -1
  br i1 %cmp1078, label %if.then1079, label %if.else1082

if.then1079:                                      ; preds = %_Dynamic_check.succeeded1076
  %call1080 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1298 = load i32, i32* @tests_passed, align 4
  %inc1081 = add nsw i32 %1298, 1
  store i32 %inc1081, i32* @tests_passed, align 4
  br label %if.end1085

_Dynamic_check.failed1071:                        ; preds = %if.end1067
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1073:                        ; preds = %_Dynamic_check.succeeded1072
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1075:                        ; preds = %_Dynamic_check.succeeded1074
  call void @llvm.trap() #6
  unreachable

if.else1082:                                      ; preds = %_Dynamic_check.succeeded1076
  %call1083 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1299 = load i32, i32* @tests_failed, align 4
  %inc1084 = add nsw i32 %1299, 1
  store i32 %inc1084, i32* @tests_failed, align 4
  br label %if.end1085

if.end1085:                                       ; preds = %if.else1082, %if.then1079
  %1300 = load i8*, i8** %string_1, align 4
  %1301 = ptrtoint i8* %1300 to i64
  %1302 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1301)
  %call1086 = call i8* @t_strcpy(i8* %1302, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.292, i64 0, i64 0))
  %1303 = call i32 @c_TPtoO(i8* %call1086)
  %1304 = inttoptr i32 %1303 to i8*
  %1305 = load i8*, i8** %string_2, align 4
  %1306 = ptrtoint i8* %1305 to i64
  %1307 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1306)
  %call1087 = call i8* @t_strcpy(i8* %1307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.293, i64 0, i64 0))
  %1308 = call i32 @c_TPtoO(i8* %call1087)
  %1309 = inttoptr i32 %1308 to i8*
  %call1088 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 662, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1310 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1311 = load i8*, i8** %string_1, align 4
  %1312 = load i8*, i8** %string_2, align 4
  %1313 = ptrtoint %Tstruct.json_object_t_t* %1310 to i32
  %1314 = call i8* @c_fetch_pointer_from_offset(i32 %1313)
  %1315 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1314)
  br i1 %1315, label %_Dynamic_check.succeeded1090, label %_Dynamic_check.failed1089

_Dynamic_check.succeeded1090:                     ; preds = %if.end1085
  %1316 = bitcast i8* %1314 to %Tstruct.json_object_t_t*
  %1317 = ptrtoint i8* %1311 to i32
  %1318 = call i8* @c_fetch_pointer_from_offset(i32 %1317)
  %1319 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1318)
  br i1 %1319, label %_Dynamic_check.succeeded1092, label %_Dynamic_check.failed1091

_Dynamic_check.succeeded1092:                     ; preds = %_Dynamic_check.succeeded1090
  %1320 = ptrtoint i8* %1312 to i32
  %1321 = call i8* @c_fetch_pointer_from_offset(i32 %1320)
  %1322 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1321)
  br i1 %1322, label %_Dynamic_check.succeeded1094, label %_Dynamic_check.failed1093

_Dynamic_check.succeeded1094:                     ; preds = %_Dynamic_check.succeeded1092
  %call1095 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1316, i8* %1318, i8* %1321)
  %cmp1096 = icmp eq i32 %call1095, -1
  br i1 %cmp1096, label %if.then1097, label %if.else1100

if.then1097:                                      ; preds = %_Dynamic_check.succeeded1094
  %call1098 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1323 = load i32, i32* @tests_passed, align 4
  %inc1099 = add nsw i32 %1323, 1
  store i32 %inc1099, i32* @tests_passed, align 4
  br label %if.end1103

_Dynamic_check.failed1089:                        ; preds = %if.end1085
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1091:                        ; preds = %_Dynamic_check.succeeded1090
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1093:                        ; preds = %_Dynamic_check.succeeded1092
  call void @llvm.trap() #6
  unreachable

if.else1100:                                      ; preds = %_Dynamic_check.succeeded1094
  %call1101 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1324 = load i32, i32* @tests_failed, align 4
  %inc1102 = add nsw i32 %1324, 1
  store i32 %inc1102, i32* @tests_failed, align 4
  br label %if.end1103

if.end1103:                                       ; preds = %if.else1100, %if.then1097
  %1325 = load i8*, i8** %string_1, align 4
  %1326 = ptrtoint i8* %1325 to i64
  %1327 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1326)
  %call1104 = call i8* @t_strcpy(i8* %1327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.294, i64 0, i64 0))
  %1328 = call i32 @c_TPtoO(i8* %call1104)
  %1329 = inttoptr i32 %1328 to i8*
  %1330 = load i8*, i8** %string_2, align 4
  %1331 = ptrtoint i8* %1330 to i64
  %1332 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1331)
  %call1105 = call i8* @t_strcpy(i8* %1332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.295, i64 0, i64 0))
  %1333 = call i32 @c_TPtoO(i8* %call1105)
  %1334 = inttoptr i32 %1333 to i8*
  %call1106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 665, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1335 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1336 = load i8*, i8** %string_1, align 4
  %1337 = load i8*, i8** %string_2, align 4
  %1338 = ptrtoint %Tstruct.json_object_t_t* %1335 to i32
  %1339 = call i8* @c_fetch_pointer_from_offset(i32 %1338)
  %1340 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1339)
  br i1 %1340, label %_Dynamic_check.succeeded1108, label %_Dynamic_check.failed1107

_Dynamic_check.succeeded1108:                     ; preds = %if.end1103
  %1341 = bitcast i8* %1339 to %Tstruct.json_object_t_t*
  %1342 = ptrtoint i8* %1336 to i32
  %1343 = call i8* @c_fetch_pointer_from_offset(i32 %1342)
  %1344 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1343)
  br i1 %1344, label %_Dynamic_check.succeeded1110, label %_Dynamic_check.failed1109

_Dynamic_check.succeeded1110:                     ; preds = %_Dynamic_check.succeeded1108
  %1345 = ptrtoint i8* %1337 to i32
  %1346 = call i8* @c_fetch_pointer_from_offset(i32 %1345)
  %1347 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1346)
  br i1 %1347, label %_Dynamic_check.succeeded1112, label %_Dynamic_check.failed1111

_Dynamic_check.succeeded1112:                     ; preds = %_Dynamic_check.succeeded1110
  %call1113 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1341, i8* %1343, i8* %1346)
  %cmp1114 = icmp eq i32 %call1113, -1
  br i1 %cmp1114, label %if.then1115, label %if.else1118

if.then1115:                                      ; preds = %_Dynamic_check.succeeded1112
  %call1116 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1348 = load i32, i32* @tests_passed, align 4
  %inc1117 = add nsw i32 %1348, 1
  store i32 %inc1117, i32* @tests_passed, align 4
  br label %if.end1121

_Dynamic_check.failed1107:                        ; preds = %if.end1103
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1109:                        ; preds = %_Dynamic_check.succeeded1108
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1111:                        ; preds = %_Dynamic_check.succeeded1110
  call void @llvm.trap() #6
  unreachable

if.else1118:                                      ; preds = %_Dynamic_check.succeeded1112
  %call1119 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1349 = load i32, i32* @tests_failed, align 4
  %inc1120 = add nsw i32 %1349, 1
  store i32 %inc1120, i32* @tests_failed, align 4
  br label %if.end1121

if.end1121:                                       ; preds = %if.else1118, %if.then1115
  %1350 = load i8*, i8** %string_1, align 4
  %1351 = ptrtoint i8* %1350 to i64
  %1352 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1351)
  %call1122 = call i8* @t_strcpy(i8* %1352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.296, i64 0, i64 0))
  %1353 = call i32 @c_TPtoO(i8* %call1122)
  %1354 = inttoptr i32 %1353 to i8*
  %1355 = load i8*, i8** %string_2, align 4
  %1356 = ptrtoint i8* %1355 to i64
  %1357 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1356)
  %call1123 = call i8* @t_strcpy(i8* %1357, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.297, i64 0, i64 0))
  %1358 = call i32 @c_TPtoO(i8* %call1123)
  %1359 = inttoptr i32 %1358 to i8*
  %call1124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 669, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1360 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1361 = load i8*, i8** %string_1, align 4
  %1362 = load i8*, i8** %string_2, align 4
  %1363 = ptrtoint %Tstruct.json_object_t_t* %1360 to i32
  %1364 = call i8* @c_fetch_pointer_from_offset(i32 %1363)
  %1365 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1364)
  br i1 %1365, label %_Dynamic_check.succeeded1126, label %_Dynamic_check.failed1125

_Dynamic_check.succeeded1126:                     ; preds = %if.end1121
  %1366 = bitcast i8* %1364 to %Tstruct.json_object_t_t*
  %1367 = ptrtoint i8* %1361 to i32
  %1368 = call i8* @c_fetch_pointer_from_offset(i32 %1367)
  %1369 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1368)
  br i1 %1369, label %_Dynamic_check.succeeded1128, label %_Dynamic_check.failed1127

_Dynamic_check.succeeded1128:                     ; preds = %_Dynamic_check.succeeded1126
  %1370 = ptrtoint i8* %1362 to i32
  %1371 = call i8* @c_fetch_pointer_from_offset(i32 %1370)
  %1372 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1371)
  br i1 %1372, label %_Dynamic_check.succeeded1130, label %_Dynamic_check.failed1129

_Dynamic_check.succeeded1130:                     ; preds = %_Dynamic_check.succeeded1128
  %call1131 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1366, i8* %1368, i8* %1371)
  %cmp1132 = icmp eq i32 %call1131, -1
  br i1 %cmp1132, label %if.then1133, label %if.else1136

if.then1133:                                      ; preds = %_Dynamic_check.succeeded1130
  %call1134 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1373 = load i32, i32* @tests_passed, align 4
  %inc1135 = add nsw i32 %1373, 1
  store i32 %inc1135, i32* @tests_passed, align 4
  br label %if.end1139

_Dynamic_check.failed1125:                        ; preds = %if.end1121
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1127:                        ; preds = %_Dynamic_check.succeeded1126
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1129:                        ; preds = %_Dynamic_check.succeeded1128
  call void @llvm.trap() #6
  unreachable

if.else1136:                                      ; preds = %_Dynamic_check.succeeded1130
  %call1137 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1374 = load i32, i32* @tests_failed, align 4
  %inc1138 = add nsw i32 %1374, 1
  store i32 %inc1138, i32* @tests_failed, align 4
  br label %if.end1139

if.end1139:                                       ; preds = %if.else1136, %if.then1133
  %1375 = load i8*, i8** %string_1, align 4
  %1376 = ptrtoint i8* %1375 to i64
  %1377 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1376)
  %call1140 = call i8* @t_strcpy(i8* %1377, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.298, i64 0, i64 0))
  %1378 = call i32 @c_TPtoO(i8* %call1140)
  %1379 = inttoptr i32 %1378 to i8*
  %1380 = load i8*, i8** %string_2, align 4
  %1381 = ptrtoint i8* %1380 to i64
  %1382 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1381)
  %call1141 = call i8* @t_strcpy(i8* %1382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.299, i64 0, i64 0))
  %1383 = call i32 @c_TPtoO(i8* %call1141)
  %1384 = inttoptr i32 %1383 to i8*
  %call1142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 672, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1385 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1386 = load i8*, i8** %string_1, align 4
  %1387 = load i8*, i8** %string_2, align 4
  %1388 = ptrtoint %Tstruct.json_object_t_t* %1385 to i32
  %1389 = call i8* @c_fetch_pointer_from_offset(i32 %1388)
  %1390 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1389)
  br i1 %1390, label %_Dynamic_check.succeeded1144, label %_Dynamic_check.failed1143

_Dynamic_check.succeeded1144:                     ; preds = %if.end1139
  %1391 = bitcast i8* %1389 to %Tstruct.json_object_t_t*
  %1392 = ptrtoint i8* %1386 to i32
  %1393 = call i8* @c_fetch_pointer_from_offset(i32 %1392)
  %1394 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1393)
  br i1 %1394, label %_Dynamic_check.succeeded1146, label %_Dynamic_check.failed1145

_Dynamic_check.succeeded1146:                     ; preds = %_Dynamic_check.succeeded1144
  %1395 = ptrtoint i8* %1387 to i32
  %1396 = call i8* @c_fetch_pointer_from_offset(i32 %1395)
  %1397 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1396)
  br i1 %1397, label %_Dynamic_check.succeeded1148, label %_Dynamic_check.failed1147

_Dynamic_check.succeeded1148:                     ; preds = %_Dynamic_check.succeeded1146
  %call1149 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1391, i8* %1393, i8* %1396)
  %cmp1150 = icmp eq i32 %call1149, -1
  br i1 %cmp1150, label %if.then1151, label %if.else1154

if.then1151:                                      ; preds = %_Dynamic_check.succeeded1148
  %call1152 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1398 = load i32, i32* @tests_passed, align 4
  %inc1153 = add nsw i32 %1398, 1
  store i32 %inc1153, i32* @tests_passed, align 4
  br label %if.end1157

_Dynamic_check.failed1143:                        ; preds = %if.end1139
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1145:                        ; preds = %_Dynamic_check.succeeded1144
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1147:                        ; preds = %_Dynamic_check.succeeded1146
  call void @llvm.trap() #6
  unreachable

if.else1154:                                      ; preds = %_Dynamic_check.succeeded1148
  %call1155 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1399 = load i32, i32* @tests_failed, align 4
  %inc1156 = add nsw i32 %1399, 1
  store i32 %inc1156, i32* @tests_failed, align 4
  br label %if.end1157

if.end1157:                                       ; preds = %if.else1154, %if.then1151
  %1400 = load i8*, i8** %string_1, align 4
  %1401 = ptrtoint i8* %1400 to i64
  %1402 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1401)
  %call1158 = call i8* @t_strcpy(i8* %1402, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.300, i64 0, i64 0))
  %1403 = call i32 @c_TPtoO(i8* %call1158)
  %1404 = inttoptr i32 %1403 to i8*
  %1405 = load i8*, i8** %string_2, align 4
  %1406 = ptrtoint i8* %1405 to i64
  %1407 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1406)
  %call1159 = call i8* @t_strcpy(i8* %1407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.301, i64 0, i64 0))
  %1408 = call i32 @c_TPtoO(i8* %call1159)
  %1409 = inttoptr i32 %1408 to i8*
  %call1160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 675, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.264, i64 0, i64 0))
  %1410 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1411 = load i8*, i8** %string_1, align 4
  %1412 = load i8*, i8** %string_2, align 4
  %1413 = ptrtoint %Tstruct.json_object_t_t* %1410 to i32
  %1414 = call i8* @c_fetch_pointer_from_offset(i32 %1413)
  %1415 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1414)
  br i1 %1415, label %_Dynamic_check.succeeded1162, label %_Dynamic_check.failed1161

_Dynamic_check.succeeded1162:                     ; preds = %if.end1157
  %1416 = bitcast i8* %1414 to %Tstruct.json_object_t_t*
  %1417 = ptrtoint i8* %1411 to i32
  %1418 = call i8* @c_fetch_pointer_from_offset(i32 %1417)
  %1419 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1418)
  br i1 %1419, label %_Dynamic_check.succeeded1164, label %_Dynamic_check.failed1163

_Dynamic_check.succeeded1164:                     ; preds = %_Dynamic_check.succeeded1162
  %1420 = ptrtoint i8* %1412 to i32
  %1421 = call i8* @c_fetch_pointer_from_offset(i32 %1420)
  %1422 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1421)
  br i1 %1422, label %_Dynamic_check.succeeded1166, label %_Dynamic_check.failed1165

_Dynamic_check.succeeded1166:                     ; preds = %_Dynamic_check.succeeded1164
  %call1167 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1416, i8* %1418, i8* %1421)
  %cmp1168 = icmp eq i32 %call1167, -1
  br i1 %cmp1168, label %if.then1169, label %if.else1172

if.then1169:                                      ; preds = %_Dynamic_check.succeeded1166
  %call1170 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1423 = load i32, i32* @tests_passed, align 4
  %inc1171 = add nsw i32 %1423, 1
  store i32 %inc1171, i32* @tests_passed, align 4
  br label %if.end1175

_Dynamic_check.failed1161:                        ; preds = %if.end1157
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1163:                        ; preds = %_Dynamic_check.succeeded1162
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1165:                        ; preds = %_Dynamic_check.succeeded1164
  call void @llvm.trap() #6
  unreachable

if.else1172:                                      ; preds = %_Dynamic_check.succeeded1166
  %call1173 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1424 = load i32, i32* @tests_failed, align 4
  %inc1174 = add nsw i32 %1424, 1
  store i32 %inc1174, i32* @tests_failed, align 4
  br label %if.end1175

if.end1175:                                       ; preds = %if.else1172, %if.then1169
  %1425 = load i8*, i8** %string_1, align 4
  %1426 = ptrtoint i8* %1425 to i64
  %1427 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1426)
  %call1176 = call i8* @t_strcpy(i8* %1427, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.302, i64 0, i64 0))
  %1428 = call i32 @c_TPtoO(i8* %call1176)
  %1429 = inttoptr i32 %1428 to i8*
  %1430 = load i8*, i8** %string_1, align 4
  %1431 = ptrtoint i8* %1430 to i32
  %1432 = call i8* @c_fetch_pointer_from_offset(i32 %1431)
  %1433 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1432)
  br i1 %1433, label %_Dynamic_check.succeeded1178, label %_Dynamic_check.failed1177

_Dynamic_check.succeeded1178:                     ; preds = %if.end1175
  %call1179 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1432)
  %1434 = bitcast %Tstruct.json_value_t_t* %call1179 to i8*
  %1435 = call i32 @c_TPtoO(i8* %1434)
  %1436 = inttoptr i32 %1435 to %Tstruct.json_value_t_t*
  %1437 = ptrtoint %Tstruct.json_value_t_t* %1436 to i32
  %1438 = bitcast %Tstruct.json_value_t_t** %remove_test_val to i32*
  store i32 %1437, i32* %1438, align 4
  %1439 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1440 = ptrtoint %Tstruct.json_value_t_t* %1439 to i32
  %1441 = call i8* @c_fetch_pointer_from_offset(i32 %1440)
  %1442 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1441)
  br i1 %1442, label %_Dynamic_check.succeeded1181, label %_Dynamic_check.failed1180

_Dynamic_check.succeeded1181:                     ; preds = %_Dynamic_check.succeeded1178
  %1443 = bitcast i8* %1441 to %Tstruct.json_value_t_t*
  %call1182 = call %Tstruct.json_array_t_t* @json_array(%Tstruct.json_value_t_t* %1443)
  %1444 = bitcast %Tstruct.json_array_t_t* %call1182 to i8*
  %1445 = call i32 @c_TPtoO(i8* %1444)
  %1446 = inttoptr i32 %1445 to %Tstruct.json_array_t_t*
  %1447 = ptrtoint %Tstruct.json_array_t_t* %1446 to i32
  %1448 = bitcast %Tstruct.json_array_t_t** %remove_test_arr to i32*
  store i32 %1447, i32* %1448, align 4
  %1449 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1450 = ptrtoint %Tstruct.json_array_t_t* %1449 to i32
  %1451 = call i8* @c_fetch_pointer_from_offset(i32 %1450)
  %1452 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1451)
  br i1 %1452, label %_Dynamic_check.succeeded1184, label %_Dynamic_check.failed1183

_Dynamic_check.succeeded1184:                     ; preds = %_Dynamic_check.succeeded1181
  %1453 = bitcast i8* %1451 to %Tstruct.json_array_t_t*
  %call1185 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1453, i64 2)
  %1454 = load i8*, i8** %string_1, align 4
  %1455 = ptrtoint i8* %1454 to i64
  %1456 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1455)
  %call1186 = call i8* @t_strcpy(i8* %1456, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.303, i64 0, i64 0))
  %1457 = call i32 @c_TPtoO(i8* %call1186)
  %1458 = inttoptr i32 %1457 to i8*
  %call1187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 683, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.304, i64 0, i64 0))
  %1459 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1460 = load i8*, i8** %string_1, align 4
  %1461 = ptrtoint i8* %1460 to i32
  %1462 = call i8* @c_fetch_pointer_from_offset(i32 %1461)
  %1463 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1462)
  br i1 %1463, label %_Dynamic_check.succeeded1189, label %_Dynamic_check.failed1188

_Dynamic_check.succeeded1189:                     ; preds = %_Dynamic_check.succeeded1184
  %call1190 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1462)
  %1464 = bitcast %Tstruct.json_value_t_t* %call1190 to i8*
  %1465 = call i32 @c_TPtoO(i8* %1464)
  %1466 = inttoptr i32 %1465 to %Tstruct.json_value_t_t*
  %1467 = ptrtoint %Tstruct.json_value_t_t* %1459 to i32
  %1468 = call i8* @c_fetch_pointer_from_offset(i32 %1467)
  %1469 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1468)
  br i1 %1469, label %_Dynamic_check.succeeded1192, label %_Dynamic_check.failed1191

_Dynamic_check.succeeded1192:                     ; preds = %_Dynamic_check.succeeded1189
  %1470 = bitcast i8* %1468 to %Tstruct.json_value_t_t*
  %1471 = ptrtoint %Tstruct.json_value_t_t* %1466 to i32
  %1472 = call i8* @c_fetch_pointer_from_offset(i32 %1471)
  %1473 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1472)
  br i1 %1473, label %_Dynamic_check.succeeded1194, label %_Dynamic_check.failed1193

_Dynamic_check.succeeded1194:                     ; preds = %_Dynamic_check.succeeded1192
  %1474 = bitcast i8* %1472 to %Tstruct.json_value_t_t*
  %call1195 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1470, %Tstruct.json_value_t_t* %1474)
  %tobool1196 = icmp ne i32 %call1195, 0
  br i1 %tobool1196, label %if.then1197, label %if.else1200

if.then1197:                                      ; preds = %_Dynamic_check.succeeded1194
  %call1198 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1475 = load i32, i32* @tests_passed, align 4
  %inc1199 = add nsw i32 %1475, 1
  store i32 %inc1199, i32* @tests_passed, align 4
  br label %if.end1203

_Dynamic_check.failed1177:                        ; preds = %if.end1175
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1180:                        ; preds = %_Dynamic_check.succeeded1178
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1183:                        ; preds = %_Dynamic_check.succeeded1181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1188:                        ; preds = %_Dynamic_check.succeeded1184
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1191:                        ; preds = %_Dynamic_check.succeeded1189
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1193:                        ; preds = %_Dynamic_check.succeeded1192
  call void @llvm.trap() #6
  unreachable

if.else1200:                                      ; preds = %_Dynamic_check.succeeded1194
  %call1201 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1476 = load i32, i32* @tests_failed, align 4
  %inc1202 = add nsw i32 %1476, 1
  store i32 %inc1202, i32* @tests_failed, align 4
  br label %if.end1203

if.end1203:                                       ; preds = %if.else1200, %if.then1197
  %1477 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1478 = ptrtoint %Tstruct.json_array_t_t* %1477 to i32
  %1479 = call i8* @c_fetch_pointer_from_offset(i32 %1478)
  %1480 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1479)
  br i1 %1480, label %_Dynamic_check.succeeded1205, label %_Dynamic_check.failed1204

_Dynamic_check.succeeded1205:                     ; preds = %if.end1203
  %1481 = bitcast i8* %1479 to %Tstruct.json_array_t_t*
  %call1206 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1481, i64 0)
  %1482 = load i8*, i8** %string_1, align 4
  %1483 = ptrtoint i8* %1482 to i64
  %1484 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1483)
  %call1207 = call i8* @t_strcpy(i8* %1484, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.305, i64 0, i64 0))
  %1485 = call i32 @c_TPtoO(i8* %call1207)
  %1486 = inttoptr i32 %1485 to i8*
  %call1208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 686, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.304, i64 0, i64 0))
  %1487 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1488 = load i8*, i8** %string_1, align 4
  %1489 = ptrtoint i8* %1488 to i32
  %1490 = call i8* @c_fetch_pointer_from_offset(i32 %1489)
  %1491 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1490)
  br i1 %1491, label %_Dynamic_check.succeeded1210, label %_Dynamic_check.failed1209

_Dynamic_check.succeeded1210:                     ; preds = %_Dynamic_check.succeeded1205
  %call1211 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1490)
  %1492 = bitcast %Tstruct.json_value_t_t* %call1211 to i8*
  %1493 = call i32 @c_TPtoO(i8* %1492)
  %1494 = inttoptr i32 %1493 to %Tstruct.json_value_t_t*
  %1495 = ptrtoint %Tstruct.json_value_t_t* %1487 to i32
  %1496 = call i8* @c_fetch_pointer_from_offset(i32 %1495)
  %1497 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1496)
  br i1 %1497, label %_Dynamic_check.succeeded1213, label %_Dynamic_check.failed1212

_Dynamic_check.succeeded1213:                     ; preds = %_Dynamic_check.succeeded1210
  %1498 = bitcast i8* %1496 to %Tstruct.json_value_t_t*
  %1499 = ptrtoint %Tstruct.json_value_t_t* %1494 to i32
  %1500 = call i8* @c_fetch_pointer_from_offset(i32 %1499)
  %1501 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1500)
  br i1 %1501, label %_Dynamic_check.succeeded1215, label %_Dynamic_check.failed1214

_Dynamic_check.succeeded1215:                     ; preds = %_Dynamic_check.succeeded1213
  %1502 = bitcast i8* %1500 to %Tstruct.json_value_t_t*
  %call1216 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1498, %Tstruct.json_value_t_t* %1502)
  %tobool1217 = icmp ne i32 %call1216, 0
  br i1 %tobool1217, label %if.then1218, label %if.else1221

if.then1218:                                      ; preds = %_Dynamic_check.succeeded1215
  %call1219 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1503 = load i32, i32* @tests_passed, align 4
  %inc1220 = add nsw i32 %1503, 1
  store i32 %inc1220, i32* @tests_passed, align 4
  br label %if.end1224

_Dynamic_check.failed1204:                        ; preds = %if.end1203
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1209:                        ; preds = %_Dynamic_check.succeeded1205
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1212:                        ; preds = %_Dynamic_check.succeeded1210
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1214:                        ; preds = %_Dynamic_check.succeeded1213
  call void @llvm.trap() #6
  unreachable

if.else1221:                                      ; preds = %_Dynamic_check.succeeded1215
  %call1222 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1504 = load i32, i32* @tests_failed, align 4
  %inc1223 = add nsw i32 %1504, 1
  store i32 %inc1223, i32* @tests_failed, align 4
  br label %if.end1224

if.end1224:                                       ; preds = %if.else1221, %if.then1218
  %1505 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1506 = ptrtoint %Tstruct.json_array_t_t* %1505 to i32
  %1507 = call i8* @c_fetch_pointer_from_offset(i32 %1506)
  %1508 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1507)
  br i1 %1508, label %_Dynamic_check.succeeded1226, label %_Dynamic_check.failed1225

_Dynamic_check.succeeded1226:                     ; preds = %if.end1224
  %1509 = bitcast i8* %1507 to %Tstruct.json_array_t_t*
  %call1227 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1509, i64 2)
  %1510 = load i8*, i8** %string_1, align 4
  %1511 = ptrtoint i8* %1510 to i64
  %1512 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1511)
  %call1228 = call i8* @t_strcpy(i8* %1512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.306, i64 0, i64 0))
  %1513 = call i32 @c_TPtoO(i8* %call1228)
  %1514 = inttoptr i32 %1513 to i8*
  %call1229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 689, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.304, i64 0, i64 0))
  %1515 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1516 = load i8*, i8** %string_1, align 4
  %1517 = ptrtoint i8* %1516 to i32
  %1518 = call i8* @c_fetch_pointer_from_offset(i32 %1517)
  %1519 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1518)
  br i1 %1519, label %_Dynamic_check.succeeded1231, label %_Dynamic_check.failed1230

_Dynamic_check.succeeded1231:                     ; preds = %_Dynamic_check.succeeded1226
  %call1232 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1518)
  %1520 = bitcast %Tstruct.json_value_t_t* %call1232 to i8*
  %1521 = call i32 @c_TPtoO(i8* %1520)
  %1522 = inttoptr i32 %1521 to %Tstruct.json_value_t_t*
  %1523 = ptrtoint %Tstruct.json_value_t_t* %1515 to i32
  %1524 = call i8* @c_fetch_pointer_from_offset(i32 %1523)
  %1525 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1524)
  br i1 %1525, label %_Dynamic_check.succeeded1234, label %_Dynamic_check.failed1233

_Dynamic_check.succeeded1234:                     ; preds = %_Dynamic_check.succeeded1231
  %1526 = bitcast i8* %1524 to %Tstruct.json_value_t_t*
  %1527 = ptrtoint %Tstruct.json_value_t_t* %1522 to i32
  %1528 = call i8* @c_fetch_pointer_from_offset(i32 %1527)
  %1529 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1528)
  br i1 %1529, label %_Dynamic_check.succeeded1236, label %_Dynamic_check.failed1235

_Dynamic_check.succeeded1236:                     ; preds = %_Dynamic_check.succeeded1234
  %1530 = bitcast i8* %1528 to %Tstruct.json_value_t_t*
  %call1237 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1526, %Tstruct.json_value_t_t* %1530)
  %tobool1238 = icmp ne i32 %call1237, 0
  br i1 %tobool1238, label %if.then1239, label %if.else1242

if.then1239:                                      ; preds = %_Dynamic_check.succeeded1236
  %call1240 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1531 = load i32, i32* @tests_passed, align 4
  %inc1241 = add nsw i32 %1531, 1
  store i32 %inc1241, i32* @tests_passed, align 4
  br label %if.end1245

_Dynamic_check.failed1225:                        ; preds = %if.end1224
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1230:                        ; preds = %_Dynamic_check.succeeded1226
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1233:                        ; preds = %_Dynamic_check.succeeded1231
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1235:                        ; preds = %_Dynamic_check.succeeded1234
  call void @llvm.trap() #6
  unreachable

if.else1242:                                      ; preds = %_Dynamic_check.succeeded1236
  %call1243 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1532 = load i32, i32* @tests_failed, align 4
  %inc1244 = add nsw i32 %1532, 1
  store i32 %inc1244, i32* @tests_failed, align 4
  br label %if.end1245

if.end1245:                                       ; preds = %if.else1242, %if.then1239
  %1533 = load i8*, i8** %string_1, align 4
  %1534 = ptrtoint i8* %1533 to i64
  %1535 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1534)
  %call1246 = call i8* @t_strcpy(i8* %1535, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.307, i64 0, i64 0))
  %1536 = call i32 @c_TPtoO(i8* %call1246)
  %1537 = inttoptr i32 %1536 to i8*
  %call1247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 693, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.308, i64 0, i64 0))
  %1538 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1539 = load i8*, i8** %string_1, align 4
  %1540 = load double, double* %zero, align 8
  %div = fdiv double 0.000000e+00, %1540
  %1541 = ptrtoint %Tstruct.json_object_t_t* %1538 to i32
  %1542 = call i8* @c_fetch_pointer_from_offset(i32 %1541)
  %1543 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1542)
  br i1 %1543, label %_Dynamic_check.succeeded1249, label %_Dynamic_check.failed1248

_Dynamic_check.succeeded1249:                     ; preds = %if.end1245
  %1544 = bitcast i8* %1542 to %Tstruct.json_object_t_t*
  %1545 = ptrtoint i8* %1539 to i32
  %1546 = call i8* @c_fetch_pointer_from_offset(i32 %1545)
  %1547 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1546)
  br i1 %1547, label %_Dynamic_check.succeeded1251, label %_Dynamic_check.failed1250

_Dynamic_check.succeeded1251:                     ; preds = %_Dynamic_check.succeeded1249
  %call1252 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %1544, i8* %1546, double %div)
  %cmp1253 = icmp eq i32 %call1252, -1
  br i1 %cmp1253, label %if.then1254, label %if.else1257

if.then1254:                                      ; preds = %_Dynamic_check.succeeded1251
  %call1255 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1548 = load i32, i32* @tests_passed, align 4
  %inc1256 = add nsw i32 %1548, 1
  store i32 %inc1256, i32* @tests_passed, align 4
  br label %if.end1260

_Dynamic_check.failed1248:                        ; preds = %if.end1245
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1250:                        ; preds = %_Dynamic_check.succeeded1249
  call void @llvm.trap() #6
  unreachable

if.else1257:                                      ; preds = %_Dynamic_check.succeeded1251
  %call1258 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1549 = load i32, i32* @tests_failed, align 4
  %inc1259 = add nsw i32 %1549, 1
  store i32 %inc1259, i32* @tests_failed, align 4
  br label %if.end1260

if.end1260:                                       ; preds = %if.else1257, %if.then1254
  %1550 = load i8*, i8** %string_1, align 4
  %1551 = ptrtoint i8* %1550 to i64
  %1552 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1551)
  %call1261 = call i8* @t_strcpy(i8* %1552, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.307, i64 0, i64 0))
  %1553 = call i32 @c_TPtoO(i8* %call1261)
  %1554 = inttoptr i32 %1553 to i8*
  %call1262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 695, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.309, i64 0, i64 0))
  %1555 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1556 = load i8*, i8** %string_1, align 4
  %1557 = load double, double* %zero, align 8
  %div1263 = fdiv double 1.000000e+00, %1557
  %1558 = ptrtoint %Tstruct.json_object_t_t* %1555 to i32
  %1559 = call i8* @c_fetch_pointer_from_offset(i32 %1558)
  %1560 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1559)
  br i1 %1560, label %_Dynamic_check.succeeded1265, label %_Dynamic_check.failed1264

_Dynamic_check.succeeded1265:                     ; preds = %if.end1260
  %1561 = bitcast i8* %1559 to %Tstruct.json_object_t_t*
  %1562 = ptrtoint i8* %1556 to i32
  %1563 = call i8* @c_fetch_pointer_from_offset(i32 %1562)
  %1564 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1563)
  br i1 %1564, label %_Dynamic_check.succeeded1267, label %_Dynamic_check.failed1266

_Dynamic_check.succeeded1267:                     ; preds = %_Dynamic_check.succeeded1265
  %call1268 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %1561, i8* %1563, double %div1263)
  %cmp1269 = icmp eq i32 %call1268, -1
  br i1 %cmp1269, label %if.then1270, label %if.else1273

if.then1270:                                      ; preds = %_Dynamic_check.succeeded1267
  %call1271 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1565 = load i32, i32* @tests_passed, align 4
  %inc1272 = add nsw i32 %1565, 1
  store i32 %inc1272, i32* @tests_passed, align 4
  br label %if.end1276

_Dynamic_check.failed1264:                        ; preds = %if.end1260
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1266:                        ; preds = %_Dynamic_check.succeeded1265
  call void @llvm.trap() #6
  unreachable

if.else1273:                                      ; preds = %_Dynamic_check.succeeded1267
  %call1274 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1566 = load i32, i32* @tests_failed, align 4
  %inc1275 = add nsw i32 %1566, 1
  store i32 %inc1275, i32* @tests_failed, align 4
  br label %if.end1276

if.end1276:                                       ; preds = %if.else1273, %if.then1270
  %1567 = load i8*, i8** %string_1, align 4
  %1568 = ptrtoint i8* %1567 to i32
  %1569 = call i8* @c_fetch_pointer_from_offset(i32 %1568)
  %1570 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1569)
  br i1 %1570, label %_Dynamic_check.succeeded1278, label %_Dynamic_check.failed1277

_Dynamic_check.succeeded1278:                     ; preds = %if.end1276
  call void @t_free(i8* %1569)
  %1571 = load i8*, i8** %string_2, align 4
  %1572 = ptrtoint i8* %1571 to i32
  %1573 = call i8* @c_fetch_pointer_from_offset(i32 %1572)
  %1574 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1573)
  br i1 %1574, label %_Dynamic_check.succeeded1280, label %_Dynamic_check.failed1279

_Dynamic_check.succeeded1280:                     ; preds = %_Dynamic_check.succeeded1278
  call void @t_free(i8* %1573)
  ret void

_Dynamic_check.failed1277:                        ; preds = %if.end1276
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1279:                        ; preds = %_Dynamic_check.succeeded1278
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_6() #3 {
entry:
  %a = alloca %Tstruct.json_value_t_t*, align 4
  %b = alloca %Tstruct.json_value_t_t*, align 4
  %string_1 = alloca i8*, align 4
  %string_2 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t** %a to i32*
  store i32 0, i32* %0, align 4
  %1 = bitcast %Tstruct.json_value_t_t** %b to i32*
  store i32 0, i32* %1, align 4
  %call = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  %2 = bitcast %Tstruct.json_value_t_t* %call to i8*
  %3 = call i32 @c_TPtoO(i8* %2)
  %4 = inttoptr i32 %3 to %Tstruct.json_value_t_t*
  %5 = ptrtoint %Tstruct.json_value_t_t* %4 to i32
  %6 = bitcast %Tstruct.json_value_t_t** %a to i32*
  store i32 %5, i32* %6, align 4
  %call1 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  %7 = bitcast %Tstruct.json_value_t_t* %call1 to i8*
  %8 = call i32 @c_TPtoO(i8* %7)
  %9 = inttoptr i32 %8 to %Tstruct.json_value_t_t*
  %10 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %11 = bitcast %Tstruct.json_value_t_t** %b to i32*
  store i32 %10, i32* %11, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 704, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.310, i64 0, i64 0))
  %12 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %b, align 4
  %14 = ptrtoint %Tstruct.json_value_t_t* %12 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %17 = bitcast i8* %15 to %Tstruct.json_value_t_t*
  %18 = ptrtoint %Tstruct.json_value_t_t* %13 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %21 = bitcast i8* %19 to %Tstruct.json_value_t_t*
  %call5 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %17, %Tstruct.json_value_t_t* %21)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded4
  %call6 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded4
  %call7 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* @tests_failed, align 4
  %inc8 = add nsw i32 %23, 1
  store i32 %inc8, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call i8* @string_malloc(i64 100)
  %24 = call i32 @c_TPtoO(i8* %call9)
  %25 = inttoptr i32 %24 to i8*
  %26 = ptrtoint i8* %25 to i32
  %27 = bitcast i8** %string_1 to i32*
  store i32 %26, i32* %27, align 4
  %call10 = call i8* @string_malloc(i64 100)
  %28 = call i32 @c_TPtoO(i8* %call10)
  %29 = inttoptr i32 %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = bitcast i8** %string_2 to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %string_1, align 4
  %33 = ptrtoint i8* %32 to i64
  %34 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %33)
  %call11 = call i8* @t_strcpy(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %35 = call i32 @c_TPtoO(i8* %call11)
  %36 = inttoptr i32 %35 to i8*
  %37 = load i8*, i8** %string_2, align 4
  %38 = ptrtoint i8* %37 to i64
  %39 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %38)
  %call12 = call i8* @t_strcpy(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.311, i64 0, i64 0))
  %40 = call i32 @c_TPtoO(i8* %call12)
  %41 = inttoptr i32 %40 to i8*
  %42 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %43 = ptrtoint %Tstruct.json_value_t_t* %42 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end
  %46 = bitcast i8* %44 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_object_t_t* @json_object(%Tstruct.json_value_t_t* %46)
  %47 = bitcast %Tstruct.json_object_t_t* %call15 to i8*
  %48 = call i32 @c_TPtoO(i8* %47)
  %49 = inttoptr i32 %48 to %Tstruct.json_object_t_t*
  %50 = load i8*, i8** %string_1, align 4
  %51 = load i8*, i8** %string_2, align 4
  %52 = ptrtoint %Tstruct.json_object_t_t* %49 to i32
  %53 = call i8* @c_fetch_pointer_from_offset(i32 %52)
  %54 = call i1 @c_isTaintedPointerToTaintedMem(i8* %53)
  br i1 %54, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded14
  %55 = bitcast i8* %53 to %Tstruct.json_object_t_t*
  %56 = ptrtoint i8* %50 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded17
  %59 = ptrtoint i8* %51 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded19
  %call22 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %55, i8* %57, i8* %60)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 710, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.312, i64 0, i64 0))
  %62 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %63 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %b, align 4
  %64 = ptrtoint %Tstruct.json_value_t_t* %62 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %67 = bitcast i8* %65 to %Tstruct.json_value_t_t*
  %68 = ptrtoint %Tstruct.json_value_t_t* %63 to i32
  %69 = call i8* @c_fetch_pointer_from_offset(i32 %68)
  %70 = call i1 @c_isTaintedPointerToTaintedMem(i8* %69)
  br i1 %70, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded25
  %71 = bitcast i8* %69 to %Tstruct.json_value_t_t*
  %call28 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %67, %Tstruct.json_value_t_t* %71)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else33, label %if.then30

if.then30:                                        ; preds = %_Dynamic_check.succeeded27
  %call31 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @tests_passed, align 4
  %inc32 = add nsw i32 %72, 1
  store i32 %inc32, i32* @tests_passed, align 4
  br label %if.end36

_Dynamic_check.failed13:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #6
  unreachable

if.else33:                                        ; preds = %_Dynamic_check.succeeded27
  %call34 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @tests_failed, align 4
  %inc35 = add nsw i32 %73, 1
  store i32 %inc35, i32* @tests_failed, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then30
  %74 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %b, align 4
  %75 = ptrtoint %Tstruct.json_value_t_t* %74 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %if.end36
  %78 = bitcast i8* %76 to %Tstruct.json_value_t_t*
  %call39 = call %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %78)
  %79 = bitcast %Tstruct.json_value_t_t* %call39 to i8*
  %80 = call i32 @c_TPtoO(i8* %79)
  %81 = inttoptr i32 %80 to %Tstruct.json_value_t_t*
  %82 = ptrtoint %Tstruct.json_value_t_t* %81 to i32
  %83 = bitcast %Tstruct.json_value_t_t** %a to i32*
  store i32 %82, i32* %83, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 712, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.310, i64 0, i64 0))
  %84 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %85 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %b, align 4
  %86 = ptrtoint %Tstruct.json_value_t_t* %84 to i32
  %87 = call i8* @c_fetch_pointer_from_offset(i32 %86)
  %88 = call i1 @c_isTaintedPointerToTaintedMem(i8* %87)
  br i1 %88, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %_Dynamic_check.succeeded38
  %89 = bitcast i8* %87 to %Tstruct.json_value_t_t*
  %90 = ptrtoint %Tstruct.json_value_t_t* %85 to i32
  %91 = call i8* @c_fetch_pointer_from_offset(i32 %90)
  %92 = call i1 @c_isTaintedPointerToTaintedMem(i8* %91)
  br i1 %92, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded42
  %93 = bitcast i8* %91 to %Tstruct.json_value_t_t*
  %call45 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %89, %Tstruct.json_value_t_t* %93)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %_Dynamic_check.succeeded44
  %call48 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @tests_passed, align 4
  %inc49 = add nsw i32 %94, 1
  store i32 %inc49, i32* @tests_passed, align 4
  br label %if.end53

_Dynamic_check.failed37:                          ; preds = %if.end36
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed41:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #6
  unreachable

if.else50:                                        ; preds = %_Dynamic_check.succeeded44
  %call51 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* @tests_failed, align 4
  %inc52 = add nsw i32 %95, 1
  store i32 %inc52, i32* @tests_failed, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then47
  %96 = load i8*, i8** %string_1, align 4
  %97 = ptrtoint i8* %96 to i64
  %98 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %97)
  %call54 = call i8* @t_strcpy(i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %99 = call i32 @c_TPtoO(i8* %call54)
  %100 = inttoptr i32 %99 to i8*
  %101 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %b, align 4
  %102 = ptrtoint %Tstruct.json_value_t_t* %101 to i32
  %103 = call i8* @c_fetch_pointer_from_offset(i32 %102)
  %104 = call i1 @c_isTaintedPointerToTaintedMem(i8* %103)
  br i1 %104, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %if.end53
  %105 = bitcast i8* %103 to %Tstruct.json_value_t_t*
  %call57 = call %Tstruct.json_object_t_t* @json_object(%Tstruct.json_value_t_t* %105)
  %106 = bitcast %Tstruct.json_object_t_t* %call57 to i8*
  %107 = call i32 @c_TPtoO(i8* %106)
  %108 = inttoptr i32 %107 to %Tstruct.json_object_t_t*
  %109 = load i8*, i8** %string_1, align 4
  %110 = ptrtoint %Tstruct.json_object_t_t* %108 to i32
  %111 = call i8* @c_fetch_pointer_from_offset(i32 %110)
  %112 = call i1 @c_isTaintedPointerToTaintedMem(i8* %111)
  br i1 %112, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %_Dynamic_check.succeeded56
  %113 = bitcast i8* %111 to %Tstruct.json_object_t_t*
  %114 = ptrtoint i8* %109 to i32
  %115 = call i8* @c_fetch_pointer_from_offset(i32 %114)
  %116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %115)
  br i1 %116, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded59
  %call62 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %113, i8* %115)
  %117 = bitcast %Tstruct.json_array_t_t* %call62 to i8*
  %118 = call i32 @c_TPtoO(i8* %117)
  %119 = inttoptr i32 %118 to %Tstruct.json_array_t_t*
  %120 = ptrtoint %Tstruct.json_array_t_t* %119 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %_Dynamic_check.succeeded61
  %123 = bitcast i8* %121 to %Tstruct.json_array_t_t*
  %call65 = call i32 @json_array_append_number(%Tstruct.json_array_t_t* %123, double 1.337000e+03)
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 715, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.312, i64 0, i64 0))
  %124 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %125 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %b, align 4
  %126 = ptrtoint %Tstruct.json_value_t_t* %124 to i32
  %127 = call i8* @c_fetch_pointer_from_offset(i32 %126)
  %128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %127)
  br i1 %128, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded64
  %129 = bitcast i8* %127 to %Tstruct.json_value_t_t*
  %130 = ptrtoint %Tstruct.json_value_t_t* %125 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded70, label %_Dynamic_check.failed69

_Dynamic_check.succeeded70:                       ; preds = %_Dynamic_check.succeeded68
  %133 = bitcast i8* %131 to %Tstruct.json_value_t_t*
  %call71 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %129, %Tstruct.json_value_t_t* %133)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.else76, label %if.then73

if.then73:                                        ; preds = %_Dynamic_check.succeeded70
  %call74 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @tests_passed, align 4
  %inc75 = add nsw i32 %134, 1
  store i32 %inc75, i32* @tests_passed, align 4
  br label %if.end79

_Dynamic_check.failed55:                          ; preds = %if.end53
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed58:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded59
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed63:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed69:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #6
  unreachable

if.else76:                                        ; preds = %_Dynamic_check.succeeded70
  %call77 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @tests_failed, align 4
  %inc78 = add nsw i32 %135, 1
  store i32 %inc78, i32* @tests_failed, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then73
  %136 = load i8*, i8** %string_1, align 4
  %137 = ptrtoint i8* %136 to i32
  %138 = call i8* @c_fetch_pointer_from_offset(i32 %137)
  %139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %138)
  br i1 %139, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %if.end79
  call void @t_free(i8* %138)
  %140 = load i8*, i8** %string_2, align 4
  %141 = ptrtoint i8* %140 to i32
  %142 = call i8* @c_fetch_pointer_from_offset(i32 %141)
  %143 = call i1 @c_isTaintedPointerToTaintedMem(i8* %142)
  br i1 %143, label %_Dynamic_check.succeeded83, label %_Dynamic_check.failed82

_Dynamic_check.succeeded83:                       ; preds = %_Dynamic_check.succeeded81
  call void @t_free(i8* %142)
  ret void

_Dynamic_check.failed80:                          ; preds = %if.end79
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed82:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_7() #3 {
entry:
  %val_from_file = alloca %Tstruct.json_value_t_t*, align 4
  %schema = alloca %Tstruct.json_value_t_t*, align 4
  %schema_obj = alloca %Tstruct.json_object_t_t*, align 4
  %interests_arr = alloca %Tstruct.json_array_t_t*, align 4
  %string_1 = alloca i8*, align 4
  %string_2 = alloca i8*, align 4
  %call = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.195, i64 0, i64 0))
  %0 = bitcast %Tstruct.json_value_t_t* %call to i8*
  %1 = call i32 @c_TPtoO(i8* %0)
  %2 = inttoptr i32 %1 to %Tstruct.json_value_t_t*
  %3 = ptrtoint %Tstruct.json_value_t_t* %2 to i32
  %4 = bitcast %Tstruct.json_value_t_t** %val_from_file to i32*
  store i32 %3, i32* %4, align 4
  %call1 = call %Tstruct.json_value_t_t* @json_value_init_object()
  %5 = bitcast %Tstruct.json_value_t_t* %call1 to i8*
  %6 = call i32 @c_TPtoO(i8* %5)
  %7 = inttoptr i32 %6 to %Tstruct.json_value_t_t*
  %8 = ptrtoint %Tstruct.json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.json_value_t_t** %schema to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %schema, align 4
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %call2 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %14)
  %15 = bitcast %Tstruct.json_object_t_t* %call2 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.json_object_t_t*
  %18 = ptrtoint %Tstruct.json_object_t_t* %17 to i32
  %19 = bitcast %Tstruct.json_object_t_t** %schema_obj to i32*
  store i32 %18, i32* %19, align 4
  %20 = bitcast %Tstruct.json_array_t_t** %interests_arr to i32*
  store i32 0, i32* %20, align 4
  %call3 = call i8* @string_malloc(i64 100)
  %21 = call i32 @c_TPtoO(i8* %call3)
  %22 = inttoptr i32 %21 to i8*
  %23 = ptrtoint i8* %22 to i32
  %24 = bitcast i8** %string_1 to i32*
  store i32 %23, i32* %24, align 4
  %call4 = call i8* @string_malloc(i64 100)
  %25 = call i32 @c_TPtoO(i8* %call4)
  %26 = inttoptr i32 %25 to i8*
  %27 = ptrtoint i8* %26 to i32
  %28 = bitcast i8** %string_2 to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** %string_1, align 4
  %30 = ptrtoint i8* %29 to i64
  %31 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %30)
  %call5 = call i8* @t_strcpy(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.198, i64 0, i64 0))
  %32 = call i32 @c_TPtoO(i8* %call5)
  %33 = inttoptr i32 %32 to i8*
  %34 = load i8*, i8** %string_2, align 4
  %35 = ptrtoint i8* %34 to i64
  %36 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %35)
  %call6 = call i8* @t_strcpy(i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %37 = call i32 @c_TPtoO(i8* %call6)
  %38 = inttoptr i32 %37 to i8*
  %39 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %40 = load i8*, i8** %string_1, align 4
  %41 = load i8*, i8** %string_2, align 4
  %42 = ptrtoint %Tstruct.json_object_t_t* %39 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded
  %45 = bitcast i8* %43 to %Tstruct.json_object_t_t*
  %46 = ptrtoint i8* %40 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %49 = ptrtoint i8* %41 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded10
  %call13 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %45, i8* %47, i8* %50)
  %52 = load i8*, i8** %string_1, align 4
  %53 = ptrtoint i8* %52 to i64
  %54 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %53)
  %call14 = call i8* @t_strcpy(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i64 0, i64 0))
  %55 = call i32 @c_TPtoO(i8* %call14)
  %56 = inttoptr i32 %55 to i8*
  %57 = load i8*, i8** %string_2, align 4
  %58 = ptrtoint i8* %57 to i64
  %59 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %58)
  %call15 = call i8* @t_strcpy(i8* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %60 = call i32 @c_TPtoO(i8* %call15)
  %61 = inttoptr i32 %60 to i8*
  %62 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %63 = load i8*, i8** %string_1, align 4
  %64 = load i8*, i8** %string_2, align 4
  %65 = ptrtoint %Tstruct.json_object_t_t* %62 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded12
  %68 = bitcast i8* %66 to %Tstruct.json_object_t_t*
  %69 = ptrtoint i8* %63 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded17
  %72 = ptrtoint i8* %64 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded19
  %call22 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %68, i8* %70, i8* %73)
  %75 = load i8*, i8** %string_1, align 4
  %76 = ptrtoint i8* %75 to i64
  %77 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %76)
  %call23 = call i8* @t_strcpy(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.203, i64 0, i64 0))
  %78 = call i32 @c_TPtoO(i8* %call23)
  %79 = inttoptr i32 %78 to i8*
  %80 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %81 = load i8*, i8** %string_1, align 4
  %82 = ptrtoint %Tstruct.json_object_t_t* %80 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %85 = bitcast i8* %83 to %Tstruct.json_object_t_t*
  %86 = ptrtoint i8* %81 to i32
  %87 = call i8* @c_fetch_pointer_from_offset(i32 %86)
  %88 = call i1 @c_isTaintedPointerToTaintedMem(i8* %87)
  br i1 %88, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded25
  %call28 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %85, i8* %87, double 0.000000e+00)
  %89 = load i8*, i8** %string_1, align 4
  %90 = ptrtoint i8* %89 to i64
  %91 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %90)
  %call29 = call i8* @t_strcpy(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.207, i64 0, i64 0))
  %92 = call i32 @c_TPtoO(i8* %call29)
  %93 = inttoptr i32 %92 to i8*
  %94 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %95 = load i8*, i8** %string_1, align 4
  %call30 = call %Tstruct.json_value_t_t* @json_value_init_array()
  %96 = bitcast %Tstruct.json_value_t_t* %call30 to i8*
  %97 = call i32 @c_TPtoO(i8* %96)
  %98 = inttoptr i32 %97 to %Tstruct.json_value_t_t*
  %99 = ptrtoint %Tstruct.json_object_t_t* %94 to i32
  %100 = call i8* @c_fetch_pointer_from_offset(i32 %99)
  %101 = call i1 @c_isTaintedPointerToTaintedMem(i8* %100)
  br i1 %101, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded27
  %102 = bitcast i8* %100 to %Tstruct.json_object_t_t*
  %103 = ptrtoint i8* %95 to i32
  %104 = call i8* @c_fetch_pointer_from_offset(i32 %103)
  %105 = call i1 @c_isTaintedPointerToTaintedMem(i8* %104)
  br i1 %105, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded32
  %106 = ptrtoint %Tstruct.json_value_t_t* %98 to i32
  %107 = call i8* @c_fetch_pointer_from_offset(i32 %106)
  %108 = call i1 @c_isTaintedPointerToTaintedMem(i8* %107)
  br i1 %108, label %_Dynamic_check.succeeded36, label %_Dynamic_check.failed35

_Dynamic_check.succeeded36:                       ; preds = %_Dynamic_check.succeeded34
  %109 = bitcast i8* %107 to %Tstruct.json_value_t_t*
  %call37 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %102, i8* %104, %Tstruct.json_value_t_t* %109)
  %110 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %111 = load i8*, i8** %string_1, align 4
  %112 = ptrtoint %Tstruct.json_object_t_t* %110 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %_Dynamic_check.succeeded36
  %115 = bitcast i8* %113 to %Tstruct.json_object_t_t*
  %116 = ptrtoint i8* %111 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %_Dynamic_check.succeeded39
  %call42 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %115, i8* %117)
  %119 = bitcast %Tstruct.json_array_t_t* %call42 to i8*
  %120 = call i32 @c_TPtoO(i8* %119)
  %121 = inttoptr i32 %120 to %Tstruct.json_array_t_t*
  %122 = ptrtoint %Tstruct.json_array_t_t* %121 to i32
  %123 = bitcast %Tstruct.json_array_t_t** %interests_arr to i32*
  store i32 %122, i32* %123, align 4
  %124 = load i8*, i8** %string_2, align 4
  %125 = ptrtoint i8* %124 to i64
  %126 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %125)
  %call43 = call i8* @t_strcpy(i8* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %127 = call i32 @c_TPtoO(i8* %call43)
  %128 = inttoptr i32 %127 to i8*
  %129 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %130 = load i8*, i8** %string_2, align 4
  %131 = ptrtoint %Tstruct.json_array_t_t* %129 to i32
  %132 = call i8* @c_fetch_pointer_from_offset(i32 %131)
  %133 = call i1 @c_isTaintedPointerToTaintedMem(i8* %132)
  br i1 %133, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.succeeded41
  %134 = bitcast i8* %132 to %Tstruct.json_array_t_t*
  %135 = ptrtoint i8* %130 to i32
  %136 = call i8* @c_fetch_pointer_from_offset(i32 %135)
  %137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %136)
  br i1 %137, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded45
  %call48 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %134, i8* %136)
  %138 = load i8*, i8** %string_2, align 4
  %139 = ptrtoint i8* %138 to i64
  %140 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %139)
  %call49 = call i8* @t_strcpy(i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.313, i64 0, i64 0))
  %141 = call i32 @c_TPtoO(i8* %call49)
  %142 = inttoptr i32 %141 to i8*
  %143 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %144 = load i8*, i8** %string_2, align 4
  %145 = ptrtoint %Tstruct.json_object_t_t* %143 to i32
  %146 = call i8* @c_fetch_pointer_from_offset(i32 %145)
  %147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %146)
  br i1 %147, label %_Dynamic_check.succeeded51, label %_Dynamic_check.failed50

_Dynamic_check.succeeded51:                       ; preds = %_Dynamic_check.succeeded47
  %148 = bitcast i8* %146 to %Tstruct.json_object_t_t*
  %149 = ptrtoint i8* %144 to i32
  %150 = call i8* @c_fetch_pointer_from_offset(i32 %149)
  %151 = call i1 @c_isTaintedPointerToTaintedMem(i8* %150)
  br i1 %151, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %_Dynamic_check.succeeded51
  %call54 = call i32 @json_object_set_null(%Tstruct.json_object_t_t* %148, i8* %150)
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 742, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.314, i64 0, i64 0))
  %152 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %schema, align 4
  %153 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_from_file, align 4
  %154 = ptrtoint %Tstruct.json_value_t_t* %152 to i32
  %155 = call i8* @c_fetch_pointer_from_offset(i32 %154)
  %156 = call i1 @c_isTaintedPointerToTaintedMem(i8* %155)
  br i1 %156, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded53
  %157 = bitcast i8* %155 to %Tstruct.json_value_t_t*
  %158 = ptrtoint %Tstruct.json_value_t_t* %153 to i32
  %159 = call i8* @c_fetch_pointer_from_offset(i32 %158)
  %160 = call i1 @c_isTaintedPointerToTaintedMem(i8* %159)
  br i1 %160, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %_Dynamic_check.succeeded57
  %161 = bitcast i8* %159 to %Tstruct.json_value_t_t*
  %call60 = call i32 @json_validate(%Tstruct.json_value_t_t* %157, %Tstruct.json_value_t_t* %161)
  %cmp = icmp eq i32 %call60, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded59
  %call61 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %162, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded32
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed35:                          ; preds = %_Dynamic_check.succeeded34
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed38:                          ; preds = %_Dynamic_check.succeeded36
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed40:                          ; preds = %_Dynamic_check.succeeded39
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.succeeded41
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed50:                          ; preds = %_Dynamic_check.succeeded47
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed52:                          ; preds = %_Dynamic_check.succeeded51
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed58:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded59
  %call62 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %163 = load i32, i32* @tests_failed, align 4
  %inc63 = add nsw i32 %163, 1
  store i32 %inc63, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %164 = load i8*, i8** %string_1, align 4
  %165 = ptrtoint i8* %164 to i64
  %166 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %165)
  %call64 = call i8* @t_strcpy(i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.203, i64 0, i64 0))
  %167 = call i32 @c_TPtoO(i8* %call64)
  %168 = inttoptr i32 %167 to i8*
  %169 = load i8*, i8** %string_2, align 4
  %170 = ptrtoint i8* %169 to i64
  %171 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %170)
  %call65 = call i8* @t_strcpy(i8* %171, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %172 = call i32 @c_TPtoO(i8* %call65)
  %173 = inttoptr i32 %172 to i8*
  %174 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %schema_obj, align 4
  %175 = load i8*, i8** %string_1, align 4
  %176 = load i8*, i8** %string_2, align 4
  %177 = ptrtoint %Tstruct.json_object_t_t* %174 to i32
  %178 = call i8* @c_fetch_pointer_from_offset(i32 %177)
  %179 = call i1 @c_isTaintedPointerToTaintedMem(i8* %178)
  br i1 %179, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %if.end
  %180 = bitcast i8* %178 to %Tstruct.json_object_t_t*
  %181 = ptrtoint i8* %175 to i32
  %182 = call i8* @c_fetch_pointer_from_offset(i32 %181)
  %183 = call i1 @c_isTaintedPointerToTaintedMem(i8* %182)
  br i1 %183, label %_Dynamic_check.succeeded69, label %_Dynamic_check.failed68

_Dynamic_check.succeeded69:                       ; preds = %_Dynamic_check.succeeded67
  %184 = ptrtoint i8* %176 to i32
  %185 = call i8* @c_fetch_pointer_from_offset(i32 %184)
  %186 = call i1 @c_isTaintedPointerToTaintedMem(i8* %185)
  br i1 %186, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded69
  %call72 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %180, i8* %182, i8* %185)
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 746, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.315, i64 0, i64 0))
  %187 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %schema, align 4
  %188 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_from_file, align 4
  %189 = ptrtoint %Tstruct.json_value_t_t* %187 to i32
  %190 = call i8* @c_fetch_pointer_from_offset(i32 %189)
  %191 = call i1 @c_isTaintedPointerToTaintedMem(i8* %190)
  br i1 %191, label %_Dynamic_check.succeeded75, label %_Dynamic_check.failed74

_Dynamic_check.succeeded75:                       ; preds = %_Dynamic_check.succeeded71
  %192 = bitcast i8* %190 to %Tstruct.json_value_t_t*
  %193 = ptrtoint %Tstruct.json_value_t_t* %188 to i32
  %194 = call i8* @c_fetch_pointer_from_offset(i32 %193)
  %195 = call i1 @c_isTaintedPointerToTaintedMem(i8* %194)
  br i1 %195, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded75
  %196 = bitcast i8* %194 to %Tstruct.json_value_t_t*
  %call78 = call i32 @json_validate(%Tstruct.json_value_t_t* %192, %Tstruct.json_value_t_t* %196)
  %cmp79 = icmp eq i32 %call78, -1
  br i1 %cmp79, label %if.then80, label %if.else83

if.then80:                                        ; preds = %_Dynamic_check.succeeded77
  %call81 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %197 = load i32, i32* @tests_passed, align 4
  %inc82 = add nsw i32 %197, 1
  store i32 %inc82, i32* @tests_passed, align 4
  br label %if.end86

_Dynamic_check.failed66:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed68:                          ; preds = %_Dynamic_check.succeeded67
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded69
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed74:                          ; preds = %_Dynamic_check.succeeded71
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded75
  call void @llvm.trap() #6
  unreachable

if.else83:                                        ; preds = %_Dynamic_check.succeeded77
  %call84 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %198 = load i32, i32* @tests_failed, align 4
  %inc85 = add nsw i32 %198, 1
  store i32 %inc85, i32* @tests_failed, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.then80
  %199 = load i8*, i8** %string_1, align 4
  %200 = ptrtoint i8* %199 to i32
  %201 = call i8* @c_fetch_pointer_from_offset(i32 %200)
  %202 = call i1 @c_isTaintedPointerToTaintedMem(i8* %201)
  br i1 %202, label %_Dynamic_check.succeeded88, label %_Dynamic_check.failed87

_Dynamic_check.succeeded88:                       ; preds = %if.end86
  call void @t_free(i8* %201)
  %203 = load i8*, i8** %string_2, align 4
  %204 = ptrtoint i8* %203 to i32
  %205 = call i8* @c_fetch_pointer_from_offset(i32 %204)
  %206 = call i1 @c_isTaintedPointerToTaintedMem(i8* %205)
  br i1 %206, label %_Dynamic_check.succeeded90, label %_Dynamic_check.failed89

_Dynamic_check.succeeded90:                       ; preds = %_Dynamic_check.succeeded88
  call void @t_free(i8* %205)
  ret void

_Dynamic_check.failed87:                          ; preds = %if.end86
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed89:                          ; preds = %_Dynamic_check.succeeded88
  call void @llvm.trap() #6
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %Tstruct.json_value_t_t* @json_parse_file(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @json_value_equals(%Tstruct.json_value_t_t*, %Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_parse_string(i8*) #4

declare dso_local i8* @json_serialize_to_string(%Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t*) #4

; Function Attrs: tainted
declare dso_local void @json_value_free(%Tstruct.json_value_t_t*) #4

declare dso_local %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8*, %Tstruct.json_value_t_t* (i8*, i64)*) #1

declare dso_local %Tstruct.json_value_t_t* @parse_value(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2(%Tstruct.json_value_t_t* %root_value) #3 {
entry:
  %root_value.addr = alloca %Tstruct.json_value_t_t*, align 4
  %root_object = alloca %Tstruct.json_object_t_t*, align 4
  %array = alloca %Tstruct.json_array_t_t*, align 4
  %array_value = alloca %Tstruct.json_value_t_t*, align 4
  %i = alloca i64, align 8
  %value_type = alloca i8*, align 4
  %0 = ptrtoint %Tstruct.json_value_t_t* %root_value to i32
  %1 = bitcast %Tstruct.json_value_t_t** %root_value.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = bitcast %Tstruct.json_object_t_t** %root_object to i32*
  store i32 0, i32* %2, align 4
  %3 = bitcast %Tstruct.json_array_t_t** %array to i32*
  store i32 0, i32* %3, align 4
  %4 = bitcast %Tstruct.json_value_t_t** %array_value to i32*
  store i32 0, i32* %4, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %5 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = call i32 @c_TPtoO(i8* %6)
  %8 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %7, %8
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %9 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %10 = load i32, i32* @tests_failed, align 4
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 152, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %11 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %12 = ptrtoint %Tstruct.json_value_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.json_value_t_t*
  %call5 = call i32 @json_value_get_type(%Tstruct.json_value_t_t* %15)
  %cmp = icmp eq i32 %call5, 4
  br i1 %cmp, label %if.then6, label %if.else9

if.then6:                                         ; preds = %_Dynamic_check.succeeded
  %call7 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @tests_passed, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* @tests_passed, align 4
  br label %if.end12

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else9:                                         ; preds = %_Dynamic_check.succeeded
  %call10 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @tests_failed, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* @tests_failed, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6
  %18 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %19 = ptrtoint %Tstruct.json_value_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end12
  %22 = bitcast i8* %20 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %22)
  %23 = bitcast %Tstruct.json_object_t_t* %call15 to i8*
  %24 = call i32 @c_TPtoO(i8* %23)
  %25 = inttoptr i32 %24 to %Tstruct.json_object_t_t*
  %26 = ptrtoint %Tstruct.json_object_t_t* %25 to i32
  %27 = bitcast %Tstruct.json_object_t_t** %root_object to i32*
  store i32 %26, i32* %27, align 4
  %call16 = call i8* @string_malloc(i64 100)
  %28 = call i32 @c_TPtoO(i8* %call16)
  %29 = inttoptr i32 %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = bitcast i8** %value_type to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %value_type, align 4
  %33 = ptrtoint i8* %32 to i64
  %34 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %33)
  %call17 = call i8* @t_strcpy(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %35 = call i32 @c_TPtoO(i8* %call17)
  %36 = inttoptr i32 %35 to i8*
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  %37 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %38 = load i8*, i8** %value_type, align 4
  %39 = ptrtoint %Tstruct.json_object_t_t* %37 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded14
  %42 = bitcast i8* %40 to %Tstruct.json_object_t_t*
  %43 = ptrtoint i8* %38 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded20
  %call23 = call i32 @json_object_has_value(%Tstruct.json_object_t_t* %42, i8* %44)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %_Dynamic_check.succeeded22
  %call26 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @tests_passed, align 4
  %inc27 = add nsw i32 %46, 1
  store i32 %inc27, i32* @tests_passed, align 4
  br label %if.end31

_Dynamic_check.failed13:                          ; preds = %if.end12
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #6
  unreachable

if.else28:                                        ; preds = %_Dynamic_check.succeeded22
  %call29 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* @tests_failed, align 4
  %inc30 = add nsw i32 %47, 1
  store i32 %inc30, i32* @tests_failed, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  %48 = load i8*, i8** %value_type, align 4
  %49 = ptrtoint i8* %48 to i64
  %50 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %49)
  %call32 = call i8* @t_strcpy(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %51 = call i32 @c_TPtoO(i8* %call32)
  %52 = inttoptr i32 %51 to i8*
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  %53 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %54 = load i8*, i8** %value_type, align 4
  %55 = ptrtoint %Tstruct.json_object_t_t* %53 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %if.end31
  %58 = bitcast i8* %56 to %Tstruct.json_object_t_t*
  %59 = ptrtoint i8* %54 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded35
  %call38 = call i32 @json_object_has_value(%Tstruct.json_object_t_t* %58, i8* %60)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else43, label %if.then40

if.then40:                                        ; preds = %_Dynamic_check.succeeded37
  %call41 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* @tests_passed, align 4
  %inc42 = add nsw i32 %62, 1
  store i32 %inc42, i32* @tests_passed, align 4
  br label %if.end46

_Dynamic_check.failed34:                          ; preds = %if.end31
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #6
  unreachable

if.else43:                                        ; preds = %_Dynamic_check.succeeded37
  %call44 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* @tests_failed, align 4
  %inc45 = add nsw i32 %63, 1
  store i32 %inc45, i32* @tests_failed, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  %64 = load i8*, i8** %value_type, align 4
  %65 = ptrtoint i8* %64 to i64
  %66 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %65)
  %call47 = call i8* @t_strcpy(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %67 = call i32 @c_TPtoO(i8* %call47)
  %68 = inttoptr i32 %67 to i8*
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i64 0, i64 0))
  %69 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %70 = load i8*, i8** %value_type, align 4
  %71 = ptrtoint %Tstruct.json_object_t_t* %69 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %if.end46
  %74 = bitcast i8* %72 to %Tstruct.json_object_t_t*
  %75 = ptrtoint i8* %70 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %_Dynamic_check.succeeded50
  %call53 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %74, i8* %76, i32 4)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %_Dynamic_check.succeeded52
  %call56 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @tests_passed, align 4
  %inc57 = add nsw i32 %78, 1
  store i32 %inc57, i32* @tests_passed, align 4
  br label %if.end61

_Dynamic_check.failed49:                          ; preds = %if.end46
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed51:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #6
  unreachable

if.else58:                                        ; preds = %_Dynamic_check.succeeded52
  %call59 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* @tests_failed, align 4
  %inc60 = add nsw i32 %79, 1
  store i32 %inc60, i32* @tests_failed, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then55
  %80 = load i8*, i8** %value_type, align 4
  %81 = ptrtoint i8* %80 to i64
  %82 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %81)
  %call62 = call i8* @t_strcpy(i8* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %83 = call i32 @c_TPtoO(i8* %call62)
  %84 = inttoptr i32 %83 to i8*
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0))
  %85 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %86 = load i8*, i8** %value_type, align 4
  %87 = ptrtoint %Tstruct.json_object_t_t* %85 to i32
  %88 = call i8* @c_fetch_pointer_from_offset(i32 %87)
  %89 = call i1 @c_isTaintedPointerToTaintedMem(i8* %88)
  br i1 %89, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %if.end61
  %90 = bitcast i8* %88 to %Tstruct.json_object_t_t*
  %91 = ptrtoint i8* %86 to i32
  %92 = call i8* @c_fetch_pointer_from_offset(i32 %91)
  %93 = call i1 @c_isTaintedPointerToTaintedMem(i8* %92)
  br i1 %93, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %_Dynamic_check.succeeded65
  %call68 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %90, i8* %92, i32 4)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.else73, label %if.then70

if.then70:                                        ; preds = %_Dynamic_check.succeeded67
  %call71 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @tests_passed, align 4
  %inc72 = add nsw i32 %94, 1
  store i32 %inc72, i32* @tests_passed, align 4
  br label %if.end76

_Dynamic_check.failed64:                          ; preds = %if.end61
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed66:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #6
  unreachable

if.else73:                                        ; preds = %_Dynamic_check.succeeded67
  %call74 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* @tests_failed, align 4
  %inc75 = add nsw i32 %95, 1
  store i32 %inc75, i32* @tests_failed, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then70
  %96 = load i8*, i8** %value_type, align 4
  %97 = ptrtoint i8* %96 to i64
  %98 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %97)
  %call77 = call i8* @t_strcpy(i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %99 = call i32 @c_TPtoO(i8* %call77)
  %100 = inttoptr i32 %99 to i8*
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 165, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0))
  %101 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %102 = load i8*, i8** %value_type, align 4
  %103 = ptrtoint %Tstruct.json_object_t_t* %101 to i32
  %104 = call i8* @c_fetch_pointer_from_offset(i32 %103)
  %105 = call i1 @c_isTaintedPointerToTaintedMem(i8* %104)
  br i1 %105, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %if.end76
  %106 = bitcast i8* %104 to %Tstruct.json_object_t_t*
  %107 = ptrtoint i8* %102 to i32
  %108 = call i8* @c_fetch_pointer_from_offset(i32 %107)
  %109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %108)
  br i1 %109, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %call83 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %106, i8* %108, i32 5)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %_Dynamic_check.succeeded82
  %call86 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @tests_passed, align 4
  %inc87 = add nsw i32 %110, 1
  store i32 %inc87, i32* @tests_passed, align 4
  br label %if.end91

_Dynamic_check.failed79:                          ; preds = %if.end76
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #6
  unreachable

if.else88:                                        ; preds = %_Dynamic_check.succeeded82
  %call89 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* @tests_failed, align 4
  %inc90 = add nsw i32 %111, 1
  store i32 %inc90, i32* @tests_failed, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then85
  %112 = load i8*, i8** %value_type, align 4
  %113 = ptrtoint i8* %112 to i64
  %114 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %113)
  %call92 = call i8* @t_strcpy(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %115 = call i32 @c_TPtoO(i8* %call92)
  %116 = inttoptr i32 %115 to i8*
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 167, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0))
  %117 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %118 = load i8*, i8** %value_type, align 4
  %119 = ptrtoint %Tstruct.json_object_t_t* %117 to i32
  %120 = call i8* @c_fetch_pointer_from_offset(i32 %119)
  %121 = call i1 @c_isTaintedPointerToTaintedMem(i8* %120)
  br i1 %121, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %if.end91
  %122 = bitcast i8* %120 to %Tstruct.json_object_t_t*
  %123 = ptrtoint i8* %118 to i32
  %124 = call i8* @c_fetch_pointer_from_offset(i32 %123)
  %125 = call i1 @c_isTaintedPointerToTaintedMem(i8* %124)
  br i1 %125, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded95
  %call98 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %122, i8* %124, i32 5)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.else103, label %if.then100

if.then100:                                       ; preds = %_Dynamic_check.succeeded97
  %call101 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @tests_passed, align 4
  %inc102 = add nsw i32 %126, 1
  store i32 %inc102, i32* @tests_passed, align 4
  br label %if.end106

_Dynamic_check.failed94:                          ; preds = %if.end91
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #6
  unreachable

if.else103:                                       ; preds = %_Dynamic_check.succeeded97
  %call104 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* @tests_failed, align 4
  %inc105 = add nsw i32 %127, 1
  store i32 %inc105, i32* @tests_failed, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %if.then100
  %128 = load i8*, i8** %value_type, align 4
  %129 = ptrtoint i8* %128 to i64
  %130 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %129)
  %call107 = call i8* @t_strcpy(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %131 = call i32 @c_TPtoO(i8* %call107)
  %132 = inttoptr i32 %131 to i8*
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0))
  %133 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %134 = load i8*, i8** %value_type, align 4
  %135 = ptrtoint %Tstruct.json_object_t_t* %133 to i32
  %136 = call i8* @c_fetch_pointer_from_offset(i32 %135)
  %137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %136)
  br i1 %137, label %_Dynamic_check.succeeded110, label %_Dynamic_check.failed109

_Dynamic_check.succeeded110:                      ; preds = %if.end106
  %138 = bitcast i8* %136 to %Tstruct.json_object_t_t*
  %139 = ptrtoint i8* %134 to i32
  %140 = call i8* @c_fetch_pointer_from_offset(i32 %139)
  %141 = call i1 @c_isTaintedPointerToTaintedMem(i8* %140)
  br i1 %141, label %_Dynamic_check.succeeded112, label %_Dynamic_check.failed111

_Dynamic_check.succeeded112:                      ; preds = %_Dynamic_check.succeeded110
  %call113 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %138, i8* %140, i32 2)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.else118

if.then115:                                       ; preds = %_Dynamic_check.succeeded112
  %call116 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @tests_passed, align 4
  %inc117 = add nsw i32 %142, 1
  store i32 %inc117, i32* @tests_passed, align 4
  br label %if.end121

_Dynamic_check.failed109:                         ; preds = %if.end106
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed111:                         ; preds = %_Dynamic_check.succeeded110
  call void @llvm.trap() #6
  unreachable

if.else118:                                       ; preds = %_Dynamic_check.succeeded112
  %call119 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i32, i32* @tests_failed, align 4
  %inc120 = add nsw i32 %143, 1
  store i32 %inc120, i32* @tests_failed, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then115
  %144 = load i8*, i8** %value_type, align 4
  %145 = ptrtoint i8* %144 to i64
  %146 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %145)
  %call122 = call i8* @t_strcpy(i8* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %147 = call i32 @c_TPtoO(i8* %call122)
  %148 = inttoptr i32 %147 to i8*
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0))
  %149 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %150 = load i8*, i8** %value_type, align 4
  %151 = ptrtoint %Tstruct.json_object_t_t* %149 to i32
  %152 = call i8* @c_fetch_pointer_from_offset(i32 %151)
  %153 = call i1 @c_isTaintedPointerToTaintedMem(i8* %152)
  br i1 %153, label %_Dynamic_check.succeeded125, label %_Dynamic_check.failed124

_Dynamic_check.succeeded125:                      ; preds = %if.end121
  %154 = bitcast i8* %152 to %Tstruct.json_object_t_t*
  %155 = ptrtoint i8* %150 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded127, label %_Dynamic_check.failed126

_Dynamic_check.succeeded127:                      ; preds = %_Dynamic_check.succeeded125
  %call128 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %154, i8* %156, i32 2)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.else133, label %if.then130

if.then130:                                       ; preds = %_Dynamic_check.succeeded127
  %call131 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %158 = load i32, i32* @tests_passed, align 4
  %inc132 = add nsw i32 %158, 1
  store i32 %inc132, i32* @tests_passed, align 4
  br label %if.end136

_Dynamic_check.failed124:                         ; preds = %if.end121
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed126:                         ; preds = %_Dynamic_check.succeeded125
  call void @llvm.trap() #6
  unreachable

if.else133:                                       ; preds = %_Dynamic_check.succeeded127
  %call134 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* @tests_failed, align 4
  %inc135 = add nsw i32 %159, 1
  store i32 %inc135, i32* @tests_failed, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else133, %if.then130
  %160 = load i8*, i8** %value_type, align 4
  %161 = ptrtoint i8* %160 to i64
  %162 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %161)
  %call137 = call i8* @t_strcpy(i8* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %163 = call i32 @c_TPtoO(i8* %call137)
  %164 = inttoptr i32 %163 to i8*
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.30, i64 0, i64 0))
  %165 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %166 = load i8*, i8** %value_type, align 4
  %167 = ptrtoint %Tstruct.json_object_t_t* %165 to i32
  %168 = call i8* @c_fetch_pointer_from_offset(i32 %167)
  %169 = call i1 @c_isTaintedPointerToTaintedMem(i8* %168)
  br i1 %169, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %if.end136
  %170 = bitcast i8* %168 to %Tstruct.json_object_t_t*
  %171 = ptrtoint i8* %166 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded142, label %_Dynamic_check.failed141

_Dynamic_check.succeeded142:                      ; preds = %_Dynamic_check.succeeded140
  %call143 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %170, i8* %172, i32 3)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then145, label %if.else148

if.then145:                                       ; preds = %_Dynamic_check.succeeded142
  %call146 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i32, i32* @tests_passed, align 4
  %inc147 = add nsw i32 %174, 1
  store i32 %inc147, i32* @tests_passed, align 4
  br label %if.end151

_Dynamic_check.failed139:                         ; preds = %if.end136
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed141:                         ; preds = %_Dynamic_check.succeeded140
  call void @llvm.trap() #6
  unreachable

if.else148:                                       ; preds = %_Dynamic_check.succeeded142
  %call149 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i32, i32* @tests_failed, align 4
  %inc150 = add nsw i32 %175, 1
  store i32 %inc150, i32* @tests_failed, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %if.then145
  %176 = load i8*, i8** %value_type, align 4
  %177 = ptrtoint i8* %176 to i64
  %178 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %177)
  %call152 = call i8* @t_strcpy(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %179 = call i32 @c_TPtoO(i8* %call152)
  %180 = inttoptr i32 %179 to i8*
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 175, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0))
  %181 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %182 = load i8*, i8** %value_type, align 4
  %183 = ptrtoint %Tstruct.json_object_t_t* %181 to i32
  %184 = call i8* @c_fetch_pointer_from_offset(i32 %183)
  %185 = call i1 @c_isTaintedPointerToTaintedMem(i8* %184)
  br i1 %185, label %_Dynamic_check.succeeded155, label %_Dynamic_check.failed154

_Dynamic_check.succeeded155:                      ; preds = %if.end151
  %186 = bitcast i8* %184 to %Tstruct.json_object_t_t*
  %187 = ptrtoint i8* %182 to i32
  %188 = call i8* @c_fetch_pointer_from_offset(i32 %187)
  %189 = call i1 @c_isTaintedPointerToTaintedMem(i8* %188)
  br i1 %189, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded155
  %call158 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %186, i8* %188, i32 3)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.else163, label %if.then160

if.then160:                                       ; preds = %_Dynamic_check.succeeded157
  %call161 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %190, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed154:                         ; preds = %if.end151
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded155
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %_Dynamic_check.succeeded157
  %call164 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %191 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %191, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %192 = load i8*, i8** %value_type, align 4
  %193 = ptrtoint i8* %192 to i64
  %194 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %193)
  %call167 = call i8* @t_strcpy(i8* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  %195 = call i32 @c_TPtoO(i8* %call167)
  %196 = inttoptr i32 %195 to i8*
  %call168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i64 0, i64 0))
  %197 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %198 = load i8*, i8** %value_type, align 4
  %199 = ptrtoint %Tstruct.json_object_t_t* %197 to i32
  %200 = call i8* @c_fetch_pointer_from_offset(i32 %199)
  %201 = call i1 @c_isTaintedPointerToTaintedMem(i8* %200)
  br i1 %201, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.end166
  %202 = bitcast i8* %200 to %Tstruct.json_object_t_t*
  %203 = ptrtoint i8* %198 to i32
  %204 = call i8* @c_fetch_pointer_from_offset(i32 %203)
  %205 = call i1 @c_isTaintedPointerToTaintedMem(i8* %204)
  br i1 %205, label %_Dynamic_check.succeeded172, label %_Dynamic_check.failed171

_Dynamic_check.succeeded172:                      ; preds = %_Dynamic_check.succeeded170
  %call173 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %202, i8* %204, i32 6)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %_Dynamic_check.succeeded172
  %call176 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %206, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

_Dynamic_check.failed169:                         ; preds = %if.end166
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed171:                         ; preds = %_Dynamic_check.succeeded170
  call void @llvm.trap() #6
  unreachable

if.else178:                                       ; preds = %_Dynamic_check.succeeded172
  %call179 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %207 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %207, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %208 = load i8*, i8** %value_type, align 4
  %209 = ptrtoint i8* %208 to i64
  %210 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %209)
  %call182 = call i8* @t_strcpy(i8* %210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %211 = call i32 @c_TPtoO(i8* %call182)
  %212 = inttoptr i32 %211 to i8*
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0))
  %213 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %214 = load i8*, i8** %value_type, align 4
  %215 = ptrtoint %Tstruct.json_object_t_t* %213 to i32
  %216 = call i8* @c_fetch_pointer_from_offset(i32 %215)
  %217 = call i1 @c_isTaintedPointerToTaintedMem(i8* %216)
  br i1 %217, label %_Dynamic_check.succeeded185, label %_Dynamic_check.failed184

_Dynamic_check.succeeded185:                      ; preds = %if.end181
  %218 = bitcast i8* %216 to %Tstruct.json_object_t_t*
  %219 = ptrtoint i8* %214 to i32
  %220 = call i8* @c_fetch_pointer_from_offset(i32 %219)
  %221 = call i1 @c_isTaintedPointerToTaintedMem(i8* %220)
  br i1 %221, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded185
  %call188 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %218, i8* %220, i32 6)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.else193, label %if.then190

if.then190:                                       ; preds = %_Dynamic_check.succeeded187
  %call191 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %222 = load i32, i32* @tests_passed, align 4
  %inc192 = add nsw i32 %222, 1
  store i32 %inc192, i32* @tests_passed, align 4
  br label %if.end196

_Dynamic_check.failed184:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed186:                         ; preds = %_Dynamic_check.succeeded185
  call void @llvm.trap() #6
  unreachable

if.else193:                                       ; preds = %_Dynamic_check.succeeded187
  %call194 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %223 = load i32, i32* @tests_failed, align 4
  %inc195 = add nsw i32 %223, 1
  store i32 %inc195, i32* @tests_failed, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.else193, %if.then190
  %224 = load i8*, i8** %value_type, align 4
  %225 = ptrtoint i8* %224 to i64
  %226 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %225)
  %call197 = call i8* @t_strcpy(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %227 = call i32 @c_TPtoO(i8* %call197)
  %228 = inttoptr i32 %227 to i8*
  %call198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 181, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.36, i64 0, i64 0))
  %229 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %230 = load i8*, i8** %value_type, align 4
  %231 = ptrtoint %Tstruct.json_object_t_t* %229 to i32
  %232 = call i8* @c_fetch_pointer_from_offset(i32 %231)
  %233 = call i1 @c_isTaintedPointerToTaintedMem(i8* %232)
  br i1 %233, label %_Dynamic_check.succeeded200, label %_Dynamic_check.failed199

_Dynamic_check.succeeded200:                      ; preds = %if.end196
  %234 = bitcast i8* %232 to %Tstruct.json_object_t_t*
  %235 = ptrtoint i8* %230 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded202, label %_Dynamic_check.failed201

_Dynamic_check.succeeded202:                      ; preds = %_Dynamic_check.succeeded200
  %call203 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %234, i8* %236, i32 1)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then205, label %if.else208

if.then205:                                       ; preds = %_Dynamic_check.succeeded202
  %call206 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32, i32* @tests_passed, align 4
  %inc207 = add nsw i32 %238, 1
  store i32 %inc207, i32* @tests_passed, align 4
  br label %if.end211

_Dynamic_check.failed199:                         ; preds = %if.end196
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed201:                         ; preds = %_Dynamic_check.succeeded200
  call void @llvm.trap() #6
  unreachable

if.else208:                                       ; preds = %_Dynamic_check.succeeded202
  %call209 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %239 = load i32, i32* @tests_failed, align 4
  %inc210 = add nsw i32 %239, 1
  store i32 %inc210, i32* @tests_failed, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.else208, %if.then205
  %240 = load i8*, i8** %value_type, align 4
  %241 = ptrtoint i8* %240 to i64
  %242 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %241)
  %call212 = call i8* @t_strcpy(i8* %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %243 = call i32 @c_TPtoO(i8* %call212)
  %244 = inttoptr i32 %243 to i8*
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 183, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i64 0, i64 0))
  %245 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %246 = load i8*, i8** %value_type, align 4
  %247 = ptrtoint %Tstruct.json_object_t_t* %245 to i32
  %248 = call i8* @c_fetch_pointer_from_offset(i32 %247)
  %249 = call i1 @c_isTaintedPointerToTaintedMem(i8* %248)
  br i1 %249, label %_Dynamic_check.succeeded215, label %_Dynamic_check.failed214

_Dynamic_check.succeeded215:                      ; preds = %if.end211
  %250 = bitcast i8* %248 to %Tstruct.json_object_t_t*
  %251 = ptrtoint i8* %246 to i32
  %252 = call i8* @c_fetch_pointer_from_offset(i32 %251)
  %253 = call i1 @c_isTaintedPointerToTaintedMem(i8* %252)
  br i1 %253, label %_Dynamic_check.succeeded217, label %_Dynamic_check.failed216

_Dynamic_check.succeeded217:                      ; preds = %_Dynamic_check.succeeded215
  %call218 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %250, i8* %252, i32 1)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.else223, label %if.then220

if.then220:                                       ; preds = %_Dynamic_check.succeeded217
  %call221 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %254 = load i32, i32* @tests_passed, align 4
  %inc222 = add nsw i32 %254, 1
  store i32 %inc222, i32* @tests_passed, align 4
  br label %if.end226

_Dynamic_check.failed214:                         ; preds = %if.end211
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed216:                         ; preds = %_Dynamic_check.succeeded215
  call void @llvm.trap() #6
  unreachable

if.else223:                                       ; preds = %_Dynamic_check.succeeded217
  %call224 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %255 = load i32, i32* @tests_failed, align 4
  %inc225 = add nsw i32 %255, 1
  store i32 %inc225, i32* @tests_failed, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.else223, %if.then220
  %256 = load i8*, i8** %value_type, align 4
  %257 = ptrtoint i8* %256 to i64
  %258 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %257)
  %call227 = call i8* @t_strcpy(i8* %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %259 = call i32 @c_TPtoO(i8* %call227)
  %260 = inttoptr i32 %259 to i8*
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  %261 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %262 = load i8*, i8** %value_type, align 4
  %263 = ptrtoint %Tstruct.json_object_t_t* %261 to i32
  %264 = call i8* @c_fetch_pointer_from_offset(i32 %263)
  %265 = call i1 @c_isTaintedPointerToTaintedMem(i8* %264)
  br i1 %265, label %_Dynamic_check.succeeded230, label %_Dynamic_check.failed229

_Dynamic_check.succeeded230:                      ; preds = %if.end226
  %266 = bitcast i8* %264 to %Tstruct.json_object_t_t*
  %267 = ptrtoint i8* %262 to i32
  %268 = call i8* @c_fetch_pointer_from_offset(i32 %267)
  %269 = call i1 @c_isTaintedPointerToTaintedMem(i8* %268)
  br i1 %269, label %_Dynamic_check.succeeded232, label %_Dynamic_check.failed231

_Dynamic_check.succeeded232:                      ; preds = %_Dynamic_check.succeeded230
  %call233 = call i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %266, i8* %268)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then235, label %if.else238

if.then235:                                       ; preds = %_Dynamic_check.succeeded232
  %call236 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %270 = load i32, i32* @tests_passed, align 4
  %inc237 = add nsw i32 %270, 1
  store i32 %inc237, i32* @tests_passed, align 4
  br label %if.end241

_Dynamic_check.failed229:                         ; preds = %if.end226
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed231:                         ; preds = %_Dynamic_check.succeeded230
  call void @llvm.trap() #6
  unreachable

if.else238:                                       ; preds = %_Dynamic_check.succeeded232
  %call239 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i32, i32* @tests_failed, align 4
  %inc240 = add nsw i32 %271, 1
  store i32 %inc240, i32* @tests_failed, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.else238, %if.then235
  %272 = load i8*, i8** %value_type, align 4
  %273 = ptrtoint i8* %272 to i64
  %274 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %273)
  %call242 = call i8* @t_strcpy(i8* %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0))
  %275 = call i32 @c_TPtoO(i8* %call242)
  %276 = inttoptr i32 %275 to i8*
  %call243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0))
  %277 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %278 = load i8*, i8** %value_type, align 4
  %279 = ptrtoint %Tstruct.json_object_t_t* %277 to i32
  %280 = call i8* @c_fetch_pointer_from_offset(i32 %279)
  %281 = call i1 @c_isTaintedPointerToTaintedMem(i8* %280)
  br i1 %281, label %_Dynamic_check.succeeded245, label %_Dynamic_check.failed244

_Dynamic_check.succeeded245:                      ; preds = %if.end241
  %282 = bitcast i8* %280 to %Tstruct.json_object_t_t*
  %283 = ptrtoint i8* %278 to i32
  %284 = call i8* @c_fetch_pointer_from_offset(i32 %283)
  %285 = call i1 @c_isTaintedPointerToTaintedMem(i8* %284)
  br i1 %285, label %_Dynamic_check.succeeded247, label %_Dynamic_check.failed246

_Dynamic_check.succeeded247:                      ; preds = %_Dynamic_check.succeeded245
  %call248 = call i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %282, i8* %284)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.else253, label %if.then250

if.then250:                                       ; preds = %_Dynamic_check.succeeded247
  %call251 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %286 = load i32, i32* @tests_passed, align 4
  %inc252 = add nsw i32 %286, 1
  store i32 %inc252, i32* @tests_passed, align 4
  br label %if.end256

_Dynamic_check.failed244:                         ; preds = %if.end241
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed246:                         ; preds = %_Dynamic_check.succeeded245
  call void @llvm.trap() #6
  unreachable

if.else253:                                       ; preds = %_Dynamic_check.succeeded247
  %call254 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %287 = load i32, i32* @tests_failed, align 4
  %inc255 = add nsw i32 %287, 1
  store i32 %inc255, i32* @tests_failed, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else253, %if.then250
  %288 = load i8*, i8** %value_type, align 4
  %289 = ptrtoint i8* %288 to i64
  %290 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %289)
  %call257 = call i8* @t_strcpy(i8* %290, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0))
  %291 = call i32 @c_TPtoO(i8* %call257)
  %292 = inttoptr i32 %291 to i8*
  %call258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i64 0, i64 0))
  %293 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %294 = load i8*, i8** %value_type, align 4
  %295 = ptrtoint %Tstruct.json_object_t_t* %293 to i32
  %296 = call i8* @c_fetch_pointer_from_offset(i32 %295)
  %297 = call i1 @c_isTaintedPointerToTaintedMem(i8* %296)
  br i1 %297, label %_Dynamic_check.succeeded260, label %_Dynamic_check.failed259

_Dynamic_check.succeeded260:                      ; preds = %if.end256
  %298 = bitcast i8* %296 to %Tstruct.json_object_t_t*
  %299 = ptrtoint i8* %294 to i32
  %300 = call i8* @c_fetch_pointer_from_offset(i32 %299)
  %301 = call i1 @c_isTaintedPointerToTaintedMem(i8* %300)
  br i1 %301, label %_Dynamic_check.succeeded262, label %_Dynamic_check.failed261

_Dynamic_check.succeeded262:                      ; preds = %_Dynamic_check.succeeded260
  %call263 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %298, i8* %300, i32 4)
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.then265, label %if.else268

if.then265:                                       ; preds = %_Dynamic_check.succeeded262
  %call266 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %302 = load i32, i32* @tests_passed, align 4
  %inc267 = add nsw i32 %302, 1
  store i32 %inc267, i32* @tests_passed, align 4
  br label %if.end271

_Dynamic_check.failed259:                         ; preds = %if.end256
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed261:                         ; preds = %_Dynamic_check.succeeded260
  call void @llvm.trap() #6
  unreachable

if.else268:                                       ; preds = %_Dynamic_check.succeeded262
  %call269 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %303 = load i32, i32* @tests_failed, align 4
  %inc270 = add nsw i32 %303, 1
  store i32 %inc270, i32* @tests_failed, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else268, %if.then265
  %304 = load i8*, i8** %value_type, align 4
  %305 = ptrtoint i8* %304 to i64
  %306 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %305)
  %call272 = call i8* @t_strcpy(i8* %306, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %307 = call i32 @c_TPtoO(i8* %call272)
  %308 = inttoptr i32 %307 to i8*
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0))
  %309 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %310 = load i8*, i8** %value_type, align 4
  %311 = ptrtoint %Tstruct.json_object_t_t* %309 to i32
  %312 = call i8* @c_fetch_pointer_from_offset(i32 %311)
  %313 = call i1 @c_isTaintedPointerToTaintedMem(i8* %312)
  br i1 %313, label %_Dynamic_check.succeeded275, label %_Dynamic_check.failed274

_Dynamic_check.succeeded275:                      ; preds = %if.end271
  %314 = bitcast i8* %312 to %Tstruct.json_object_t_t*
  %315 = ptrtoint i8* %310 to i32
  %316 = call i8* @c_fetch_pointer_from_offset(i32 %315)
  %317 = call i1 @c_isTaintedPointerToTaintedMem(i8* %316)
  br i1 %317, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %_Dynamic_check.succeeded275
  %call278 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %314, i8* %316, i32 4)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.else283, label %if.then280

if.then280:                                       ; preds = %_Dynamic_check.succeeded277
  %call281 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %318 = load i32, i32* @tests_passed, align 4
  %inc282 = add nsw i32 %318, 1
  store i32 %inc282, i32* @tests_passed, align 4
  br label %if.end286

_Dynamic_check.failed274:                         ; preds = %if.end271
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed276:                         ; preds = %_Dynamic_check.succeeded275
  call void @llvm.trap() #6
  unreachable

if.else283:                                       ; preds = %_Dynamic_check.succeeded277
  %call284 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %319 = load i32, i32* @tests_failed, align 4
  %inc285 = add nsw i32 %319, 1
  store i32 %inc285, i32* @tests_failed, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.else283, %if.then280
  %320 = load i8*, i8** %value_type, align 4
  %321 = ptrtoint i8* %320 to i64
  %322 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %321)
  %call287 = call i8* @t_strcpy(i8* %322, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %323 = call i32 @c_TPtoO(i8* %call287)
  %324 = inttoptr i32 %323 to i8*
  %call288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0))
  %325 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %326 = load i8*, i8** %value_type, align 4
  %327 = ptrtoint %Tstruct.json_object_t_t* %325 to i32
  %328 = call i8* @c_fetch_pointer_from_offset(i32 %327)
  %329 = call i1 @c_isTaintedPointerToTaintedMem(i8* %328)
  br i1 %329, label %_Dynamic_check.succeeded290, label %_Dynamic_check.failed289

_Dynamic_check.succeeded290:                      ; preds = %if.end286
  %330 = bitcast i8* %328 to %Tstruct.json_object_t_t*
  %331 = ptrtoint i8* %326 to i32
  %332 = call i8* @c_fetch_pointer_from_offset(i32 %331)
  %333 = call i1 @c_isTaintedPointerToTaintedMem(i8* %332)
  br i1 %333, label %_Dynamic_check.succeeded292, label %_Dynamic_check.failed291

_Dynamic_check.succeeded292:                      ; preds = %_Dynamic_check.succeeded290
  %call293 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %330, i8* %332, i32 5)
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then295, label %if.else298

if.then295:                                       ; preds = %_Dynamic_check.succeeded292
  %call296 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %334 = load i32, i32* @tests_passed, align 4
  %inc297 = add nsw i32 %334, 1
  store i32 %inc297, i32* @tests_passed, align 4
  br label %if.end301

_Dynamic_check.failed289:                         ; preds = %if.end286
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed291:                         ; preds = %_Dynamic_check.succeeded290
  call void @llvm.trap() #6
  unreachable

if.else298:                                       ; preds = %_Dynamic_check.succeeded292
  %call299 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %335 = load i32, i32* @tests_failed, align 4
  %inc300 = add nsw i32 %335, 1
  store i32 %inc300, i32* @tests_failed, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.else298, %if.then295
  %336 = load i8*, i8** %value_type, align 4
  %337 = ptrtoint i8* %336 to i64
  %338 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %337)
  %call302 = call i8* @t_strcpy(i8* %338, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0))
  %339 = call i32 @c_TPtoO(i8* %call302)
  %340 = inttoptr i32 %339 to i8*
  %call303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.46, i64 0, i64 0))
  %341 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %342 = load i8*, i8** %value_type, align 4
  %343 = ptrtoint %Tstruct.json_object_t_t* %341 to i32
  %344 = call i8* @c_fetch_pointer_from_offset(i32 %343)
  %345 = call i1 @c_isTaintedPointerToTaintedMem(i8* %344)
  br i1 %345, label %_Dynamic_check.succeeded305, label %_Dynamic_check.failed304

_Dynamic_check.succeeded305:                      ; preds = %if.end301
  %346 = bitcast i8* %344 to %Tstruct.json_object_t_t*
  %347 = ptrtoint i8* %342 to i32
  %348 = call i8* @c_fetch_pointer_from_offset(i32 %347)
  %349 = call i1 @c_isTaintedPointerToTaintedMem(i8* %348)
  br i1 %349, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %_Dynamic_check.succeeded305
  %call308 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %346, i8* %348, i32 5)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.else313, label %if.then310

if.then310:                                       ; preds = %_Dynamic_check.succeeded307
  %call311 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %350 = load i32, i32* @tests_passed, align 4
  %inc312 = add nsw i32 %350, 1
  store i32 %inc312, i32* @tests_passed, align 4
  br label %if.end316

_Dynamic_check.failed304:                         ; preds = %if.end301
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed306:                         ; preds = %_Dynamic_check.succeeded305
  call void @llvm.trap() #6
  unreachable

if.else313:                                       ; preds = %_Dynamic_check.succeeded307
  %call314 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %351 = load i32, i32* @tests_failed, align 4
  %inc315 = add nsw i32 %351, 1
  store i32 %inc315, i32* @tests_failed, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.else313, %if.then310
  %352 = load i8*, i8** %value_type, align 4
  %353 = ptrtoint i8* %352 to i64
  %354 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %353)
  %call317 = call i8* @t_strcpy(i8* %354, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
  %355 = call i32 @c_TPtoO(i8* %call317)
  %356 = inttoptr i32 %355 to i8*
  %call318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0))
  %357 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %358 = load i8*, i8** %value_type, align 4
  %359 = ptrtoint %Tstruct.json_object_t_t* %357 to i32
  %360 = call i8* @c_fetch_pointer_from_offset(i32 %359)
  %361 = call i1 @c_isTaintedPointerToTaintedMem(i8* %360)
  br i1 %361, label %_Dynamic_check.succeeded320, label %_Dynamic_check.failed319

_Dynamic_check.succeeded320:                      ; preds = %if.end316
  %362 = bitcast i8* %360 to %Tstruct.json_object_t_t*
  %363 = ptrtoint i8* %358 to i32
  %364 = call i8* @c_fetch_pointer_from_offset(i32 %363)
  %365 = call i1 @c_isTaintedPointerToTaintedMem(i8* %364)
  br i1 %365, label %_Dynamic_check.succeeded322, label %_Dynamic_check.failed321

_Dynamic_check.succeeded322:                      ; preds = %_Dynamic_check.succeeded320
  %call323 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %362, i8* %364, i32 2)
  %tobool324 = icmp ne i32 %call323, 0
  br i1 %tobool324, label %if.then325, label %if.else328

if.then325:                                       ; preds = %_Dynamic_check.succeeded322
  %call326 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %366 = load i32, i32* @tests_passed, align 4
  %inc327 = add nsw i32 %366, 1
  store i32 %inc327, i32* @tests_passed, align 4
  br label %if.end331

_Dynamic_check.failed319:                         ; preds = %if.end316
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed321:                         ; preds = %_Dynamic_check.succeeded320
  call void @llvm.trap() #6
  unreachable

if.else328:                                       ; preds = %_Dynamic_check.succeeded322
  %call329 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %367 = load i32, i32* @tests_failed, align 4
  %inc330 = add nsw i32 %367, 1
  store i32 %inc330, i32* @tests_failed, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.else328, %if.then325
  %368 = load i8*, i8** %value_type, align 4
  %369 = ptrtoint i8* %368 to i64
  %370 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %369)
  %call332 = call i8* @t_strcpy(i8* %370, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0))
  %371 = call i32 @c_TPtoO(i8* %call332)
  %372 = inttoptr i32 %371 to i8*
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0))
  %373 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %374 = load i8*, i8** %value_type, align 4
  %375 = ptrtoint %Tstruct.json_object_t_t* %373 to i32
  %376 = call i8* @c_fetch_pointer_from_offset(i32 %375)
  %377 = call i1 @c_isTaintedPointerToTaintedMem(i8* %376)
  br i1 %377, label %_Dynamic_check.succeeded335, label %_Dynamic_check.failed334

_Dynamic_check.succeeded335:                      ; preds = %if.end331
  %378 = bitcast i8* %376 to %Tstruct.json_object_t_t*
  %379 = ptrtoint i8* %374 to i32
  %380 = call i8* @c_fetch_pointer_from_offset(i32 %379)
  %381 = call i1 @c_isTaintedPointerToTaintedMem(i8* %380)
  br i1 %381, label %_Dynamic_check.succeeded337, label %_Dynamic_check.failed336

_Dynamic_check.succeeded337:                      ; preds = %_Dynamic_check.succeeded335
  %call338 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %378, i8* %380, i32 2)
  %tobool339 = icmp ne i32 %call338, 0
  br i1 %tobool339, label %if.else343, label %if.then340

if.then340:                                       ; preds = %_Dynamic_check.succeeded337
  %call341 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %382 = load i32, i32* @tests_passed, align 4
  %inc342 = add nsw i32 %382, 1
  store i32 %inc342, i32* @tests_passed, align 4
  br label %if.end346

_Dynamic_check.failed334:                         ; preds = %if.end331
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed336:                         ; preds = %_Dynamic_check.succeeded335
  call void @llvm.trap() #6
  unreachable

if.else343:                                       ; preds = %_Dynamic_check.succeeded337
  %call344 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %383 = load i32, i32* @tests_failed, align 4
  %inc345 = add nsw i32 %383, 1
  store i32 %inc345, i32* @tests_failed, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.else343, %if.then340
  %384 = load i8*, i8** %value_type, align 4
  %385 = ptrtoint i8* %384 to i64
  %386 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %385)
  %call347 = call i8* @t_strcpy(i8* %386, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0))
  %387 = call i32 @c_TPtoO(i8* %call347)
  %388 = inttoptr i32 %387 to i8*
  %call348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.51, i64 0, i64 0))
  %389 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %390 = load i8*, i8** %value_type, align 4
  %391 = ptrtoint %Tstruct.json_object_t_t* %389 to i32
  %392 = call i8* @c_fetch_pointer_from_offset(i32 %391)
  %393 = call i1 @c_isTaintedPointerToTaintedMem(i8* %392)
  br i1 %393, label %_Dynamic_check.succeeded350, label %_Dynamic_check.failed349

_Dynamic_check.succeeded350:                      ; preds = %if.end346
  %394 = bitcast i8* %392 to %Tstruct.json_object_t_t*
  %395 = ptrtoint i8* %390 to i32
  %396 = call i8* @c_fetch_pointer_from_offset(i32 %395)
  %397 = call i1 @c_isTaintedPointerToTaintedMem(i8* %396)
  br i1 %397, label %_Dynamic_check.succeeded352, label %_Dynamic_check.failed351

_Dynamic_check.succeeded352:                      ; preds = %_Dynamic_check.succeeded350
  %call353 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %394, i8* %396, i32 3)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.then355, label %if.else358

if.then355:                                       ; preds = %_Dynamic_check.succeeded352
  %call356 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %398 = load i32, i32* @tests_passed, align 4
  %inc357 = add nsw i32 %398, 1
  store i32 %inc357, i32* @tests_passed, align 4
  br label %if.end361

_Dynamic_check.failed349:                         ; preds = %if.end346
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed351:                         ; preds = %_Dynamic_check.succeeded350
  call void @llvm.trap() #6
  unreachable

if.else358:                                       ; preds = %_Dynamic_check.succeeded352
  %call359 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %399 = load i32, i32* @tests_failed, align 4
  %inc360 = add nsw i32 %399, 1
  store i32 %inc360, i32* @tests_failed, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.else358, %if.then355
  %400 = load i8*, i8** %value_type, align 4
  %401 = ptrtoint i8* %400 to i64
  %402 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %401)
  %call362 = call i8* @t_strcpy(i8* %402, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0))
  %403 = call i32 @c_TPtoO(i8* %call362)
  %404 = inttoptr i32 %403 to i8*
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0))
  %405 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %406 = load i8*, i8** %value_type, align 4
  %407 = ptrtoint %Tstruct.json_object_t_t* %405 to i32
  %408 = call i8* @c_fetch_pointer_from_offset(i32 %407)
  %409 = call i1 @c_isTaintedPointerToTaintedMem(i8* %408)
  br i1 %409, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %if.end361
  %410 = bitcast i8* %408 to %Tstruct.json_object_t_t*
  %411 = ptrtoint i8* %406 to i32
  %412 = call i8* @c_fetch_pointer_from_offset(i32 %411)
  %413 = call i1 @c_isTaintedPointerToTaintedMem(i8* %412)
  br i1 %413, label %_Dynamic_check.succeeded367, label %_Dynamic_check.failed366

_Dynamic_check.succeeded367:                      ; preds = %_Dynamic_check.succeeded365
  %call368 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %410, i8* %412, i32 3)
  %tobool369 = icmp ne i32 %call368, 0
  br i1 %tobool369, label %if.else373, label %if.then370

if.then370:                                       ; preds = %_Dynamic_check.succeeded367
  %call371 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %414 = load i32, i32* @tests_passed, align 4
  %inc372 = add nsw i32 %414, 1
  store i32 %inc372, i32* @tests_passed, align 4
  br label %if.end376

_Dynamic_check.failed364:                         ; preds = %if.end361
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed366:                         ; preds = %_Dynamic_check.succeeded365
  call void @llvm.trap() #6
  unreachable

if.else373:                                       ; preds = %_Dynamic_check.succeeded367
  %call374 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %415 = load i32, i32* @tests_failed, align 4
  %inc375 = add nsw i32 %415, 1
  store i32 %inc375, i32* @tests_failed, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.else373, %if.then370
  %416 = load i8*, i8** %value_type, align 4
  %417 = ptrtoint i8* %416 to i64
  %418 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %417)
  %call377 = call i8* @t_strcpy(i8* %418, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0))
  %419 = call i32 @c_TPtoO(i8* %call377)
  %420 = inttoptr i32 %419 to i8*
  %call378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0))
  %421 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %422 = load i8*, i8** %value_type, align 4
  %423 = ptrtoint %Tstruct.json_object_t_t* %421 to i32
  %424 = call i8* @c_fetch_pointer_from_offset(i32 %423)
  %425 = call i1 @c_isTaintedPointerToTaintedMem(i8* %424)
  br i1 %425, label %_Dynamic_check.succeeded380, label %_Dynamic_check.failed379

_Dynamic_check.succeeded380:                      ; preds = %if.end376
  %426 = bitcast i8* %424 to %Tstruct.json_object_t_t*
  %427 = ptrtoint i8* %422 to i32
  %428 = call i8* @c_fetch_pointer_from_offset(i32 %427)
  %429 = call i1 @c_isTaintedPointerToTaintedMem(i8* %428)
  br i1 %429, label %_Dynamic_check.succeeded382, label %_Dynamic_check.failed381

_Dynamic_check.succeeded382:                      ; preds = %_Dynamic_check.succeeded380
  %call383 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %426, i8* %428, i32 6)
  %tobool384 = icmp ne i32 %call383, 0
  br i1 %tobool384, label %if.then385, label %if.else388

if.then385:                                       ; preds = %_Dynamic_check.succeeded382
  %call386 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %430 = load i32, i32* @tests_passed, align 4
  %inc387 = add nsw i32 %430, 1
  store i32 %inc387, i32* @tests_passed, align 4
  br label %if.end391

_Dynamic_check.failed379:                         ; preds = %if.end376
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed381:                         ; preds = %_Dynamic_check.succeeded380
  call void @llvm.trap() #6
  unreachable

if.else388:                                       ; preds = %_Dynamic_check.succeeded382
  %call389 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %431 = load i32, i32* @tests_failed, align 4
  %inc390 = add nsw i32 %431, 1
  store i32 %inc390, i32* @tests_failed, align 4
  br label %if.end391

if.end391:                                        ; preds = %if.else388, %if.then385
  %432 = load i8*, i8** %value_type, align 4
  %433 = ptrtoint i8* %432 to i64
  %434 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %433)
  %call392 = call i8* @t_strcpy(i8* %434, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0))
  %435 = call i32 @c_TPtoO(i8* %call392)
  %436 = inttoptr i32 %435 to i8*
  %call393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 208, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.56, i64 0, i64 0))
  %437 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %438 = load i8*, i8** %value_type, align 4
  %439 = ptrtoint %Tstruct.json_object_t_t* %437 to i32
  %440 = call i8* @c_fetch_pointer_from_offset(i32 %439)
  %441 = call i1 @c_isTaintedPointerToTaintedMem(i8* %440)
  br i1 %441, label %_Dynamic_check.succeeded395, label %_Dynamic_check.failed394

_Dynamic_check.succeeded395:                      ; preds = %if.end391
  %442 = bitcast i8* %440 to %Tstruct.json_object_t_t*
  %443 = ptrtoint i8* %438 to i32
  %444 = call i8* @c_fetch_pointer_from_offset(i32 %443)
  %445 = call i1 @c_isTaintedPointerToTaintedMem(i8* %444)
  br i1 %445, label %_Dynamic_check.succeeded397, label %_Dynamic_check.failed396

_Dynamic_check.succeeded397:                      ; preds = %_Dynamic_check.succeeded395
  %call398 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %442, i8* %444, i32 6)
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.else403, label %if.then400

if.then400:                                       ; preds = %_Dynamic_check.succeeded397
  %call401 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %446 = load i32, i32* @tests_passed, align 4
  %inc402 = add nsw i32 %446, 1
  store i32 %inc402, i32* @tests_passed, align 4
  br label %if.end406

_Dynamic_check.failed394:                         ; preds = %if.end391
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed396:                         ; preds = %_Dynamic_check.succeeded395
  call void @llvm.trap() #6
  unreachable

if.else403:                                       ; preds = %_Dynamic_check.succeeded397
  %call404 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %447 = load i32, i32* @tests_failed, align 4
  %inc405 = add nsw i32 %447, 1
  store i32 %inc405, i32* @tests_failed, align 4
  br label %if.end406

if.end406:                                        ; preds = %if.else403, %if.then400
  %448 = load i8*, i8** %value_type, align 4
  %449 = ptrtoint i8* %448 to i64
  %450 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %449)
  %call407 = call i8* @t_strcpy(i8* %450, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0))
  %451 = call i32 @c_TPtoO(i8* %call407)
  %452 = inttoptr i32 %451 to i8*
  %call408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 210, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.58, i64 0, i64 0))
  %453 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %454 = load i8*, i8** %value_type, align 4
  %455 = ptrtoint %Tstruct.json_object_t_t* %453 to i32
  %456 = call i8* @c_fetch_pointer_from_offset(i32 %455)
  %457 = call i1 @c_isTaintedPointerToTaintedMem(i8* %456)
  br i1 %457, label %_Dynamic_check.succeeded410, label %_Dynamic_check.failed409

_Dynamic_check.succeeded410:                      ; preds = %if.end406
  %458 = bitcast i8* %456 to %Tstruct.json_object_t_t*
  %459 = ptrtoint i8* %454 to i32
  %460 = call i8* @c_fetch_pointer_from_offset(i32 %459)
  %461 = call i1 @c_isTaintedPointerToTaintedMem(i8* %460)
  br i1 %461, label %_Dynamic_check.succeeded412, label %_Dynamic_check.failed411

_Dynamic_check.succeeded412:                      ; preds = %_Dynamic_check.succeeded410
  %call413 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %458, i8* %460, i32 1)
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then415, label %if.else418

if.then415:                                       ; preds = %_Dynamic_check.succeeded412
  %call416 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %462 = load i32, i32* @tests_passed, align 4
  %inc417 = add nsw i32 %462, 1
  store i32 %inc417, i32* @tests_passed, align 4
  br label %if.end421

_Dynamic_check.failed409:                         ; preds = %if.end406
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed411:                         ; preds = %_Dynamic_check.succeeded410
  call void @llvm.trap() #6
  unreachable

if.else418:                                       ; preds = %_Dynamic_check.succeeded412
  %call419 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %463 = load i32, i32* @tests_failed, align 4
  %inc420 = add nsw i32 %463, 1
  store i32 %inc420, i32* @tests_failed, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.else418, %if.then415
  %464 = load i8*, i8** %value_type, align 4
  %465 = ptrtoint i8* %464 to i64
  %466 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %465)
  %call422 = call i8* @t_strcpy(i8* %466, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0))
  %467 = call i32 @c_TPtoO(i8* %call422)
  %468 = inttoptr i32 %467 to i8*
  %call423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 212, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.59, i64 0, i64 0))
  %469 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %470 = load i8*, i8** %value_type, align 4
  %471 = ptrtoint %Tstruct.json_object_t_t* %469 to i32
  %472 = call i8* @c_fetch_pointer_from_offset(i32 %471)
  %473 = call i1 @c_isTaintedPointerToTaintedMem(i8* %472)
  br i1 %473, label %_Dynamic_check.succeeded425, label %_Dynamic_check.failed424

_Dynamic_check.succeeded425:                      ; preds = %if.end421
  %474 = bitcast i8* %472 to %Tstruct.json_object_t_t*
  %475 = ptrtoint i8* %470 to i32
  %476 = call i8* @c_fetch_pointer_from_offset(i32 %475)
  %477 = call i1 @c_isTaintedPointerToTaintedMem(i8* %476)
  br i1 %477, label %_Dynamic_check.succeeded427, label %_Dynamic_check.failed426

_Dynamic_check.succeeded427:                      ; preds = %_Dynamic_check.succeeded425
  %call428 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %474, i8* %476, i32 1)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.else433, label %if.then430

if.then430:                                       ; preds = %_Dynamic_check.succeeded427
  %call431 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %478 = load i32, i32* @tests_passed, align 4
  %inc432 = add nsw i32 %478, 1
  store i32 %inc432, i32* @tests_passed, align 4
  br label %if.end436

_Dynamic_check.failed424:                         ; preds = %if.end421
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed426:                         ; preds = %_Dynamic_check.succeeded425
  call void @llvm.trap() #6
  unreachable

if.else433:                                       ; preds = %_Dynamic_check.succeeded427
  %call434 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %479 = load i32, i32* @tests_failed, align 4
  %inc435 = add nsw i32 %479, 1
  store i32 %inc435, i32* @tests_failed, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.else433, %if.then430
  %480 = load i8*, i8** %value_type, align 4
  %481 = ptrtoint i8* %480 to i64
  %482 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %481)
  %call437 = call i8* @t_strcpy(i8* %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %483 = call i32 @c_TPtoO(i8* %call437)
  %484 = inttoptr i32 %483 to i8*
  %call438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 214, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0))
  %485 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %486 = load i8*, i8** %value_type, align 4
  %487 = ptrtoint %Tstruct.json_object_t_t* %485 to i32
  %488 = call i8* @c_fetch_pointer_from_offset(i32 %487)
  %489 = call i1 @c_isTaintedPointerToTaintedMem(i8* %488)
  br i1 %489, label %_Dynamic_check.succeeded440, label %_Dynamic_check.failed439

_Dynamic_check.succeeded440:                      ; preds = %if.end436
  %490 = bitcast i8* %488 to %Tstruct.json_object_t_t*
  %491 = ptrtoint i8* %486 to i32
  %492 = call i8* @c_fetch_pointer_from_offset(i32 %491)
  %493 = call i1 @c_isTaintedPointerToTaintedMem(i8* %492)
  br i1 %493, label %_Dynamic_check.succeeded442, label %_Dynamic_check.failed441

_Dynamic_check.succeeded442:                      ; preds = %_Dynamic_check.succeeded440
  %call443 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %490, i8* %492)
  %494 = call i32 @c_TPtoO(i8* %call443)
  %495 = inttoptr i32 %494 to i8*
  %496 = call i32 @c_TPtoO(i8* %495)
  %497 = call i32 @c_TPtoO(i8* null)
  %tobool444 = icmp ne i32 %496, %497
  br i1 %tobool444, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded442
  %498 = call i32 @c_TPtoO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0))
  %499 = call i32 @c_TPtoO(i8* null)
  %tobool445 = icmp ne i32 %498, %499
  br i1 %tobool445, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %500 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %501 = load i8*, i8** %value_type, align 4
  %502 = ptrtoint %Tstruct.json_object_t_t* %500 to i32
  %503 = call i8* @c_fetch_pointer_from_offset(i32 %502)
  %504 = call i1 @c_isTaintedPointerToTaintedMem(i8* %503)
  br i1 %504, label %_Dynamic_check.succeeded447, label %_Dynamic_check.failed446

_Dynamic_check.succeeded447:                      ; preds = %cond.true
  %505 = bitcast i8* %503 to %Tstruct.json_object_t_t*
  %506 = ptrtoint i8* %501 to i32
  %507 = call i8* @c_fetch_pointer_from_offset(i32 %506)
  %508 = call i1 @c_isTaintedPointerToTaintedMem(i8* %507)
  br i1 %508, label %_Dynamic_check.succeeded449, label %_Dynamic_check.failed448

_Dynamic_check.succeeded449:                      ; preds = %_Dynamic_check.succeeded447
  %call450 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %505, i8* %507)
  %509 = call i32 @c_TPtoO(i8* %call450)
  %510 = inttoptr i32 %509 to i8*
  %511 = ptrtoint i8* %510 to i64
  %512 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %511)
  %call451 = call i32 @t_strcmp(i8* %512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0))
  %cmp452 = icmp eq i32 %call451, 0
  br i1 %cmp452, label %if.then453, label %if.else456

cond.false:                                       ; preds = %land.lhs.true, %_Dynamic_check.succeeded442
  br i1 false, label %if.then453, label %if.else456

if.then453:                                       ; preds = %cond.false, %_Dynamic_check.succeeded449
  %call454 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %513 = load i32, i32* @tests_passed, align 4
  %inc455 = add nsw i32 %513, 1
  store i32 %inc455, i32* @tests_passed, align 4
  br label %if.end459

_Dynamic_check.failed439:                         ; preds = %if.end436
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed441:                         ; preds = %_Dynamic_check.succeeded440
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed446:                         ; preds = %cond.true
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed448:                         ; preds = %_Dynamic_check.succeeded447
  call void @llvm.trap() #6
  unreachable

if.else456:                                       ; preds = %cond.false, %_Dynamic_check.succeeded449
  %call457 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %514 = load i32, i32* @tests_failed, align 4
  %inc458 = add nsw i32 %514, 1
  store i32 %inc458, i32* @tests_failed, align 4
  br label %if.end459

if.end459:                                        ; preds = %if.else456, %if.then453
  %515 = load i8*, i8** %value_type, align 4
  %516 = ptrtoint i8* %515 to i64
  %517 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %516)
  %call460 = call i8* @t_strcpy(i8* %517, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0))
  %518 = call i32 @c_TPtoO(i8* %call460)
  %519 = inttoptr i32 %518 to i8*
  %call461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0))
  %520 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %521 = load i8*, i8** %value_type, align 4
  %522 = ptrtoint %Tstruct.json_object_t_t* %520 to i32
  %523 = call i8* @c_fetch_pointer_from_offset(i32 %522)
  %524 = call i1 @c_isTaintedPointerToTaintedMem(i8* %523)
  br i1 %524, label %_Dynamic_check.succeeded463, label %_Dynamic_check.failed462

_Dynamic_check.succeeded463:                      ; preds = %if.end459
  %525 = bitcast i8* %523 to %Tstruct.json_object_t_t*
  %526 = ptrtoint i8* %521 to i32
  %527 = call i8* @c_fetch_pointer_from_offset(i32 %526)
  %528 = call i1 @c_isTaintedPointerToTaintedMem(i8* %527)
  br i1 %528, label %_Dynamic_check.succeeded465, label %_Dynamic_check.failed464

_Dynamic_check.succeeded465:                      ; preds = %_Dynamic_check.succeeded463
  %call466 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %525, i8* %527)
  %529 = call i32 @c_TPtoO(i8* %call466)
  %530 = inttoptr i32 %529 to i8*
  %531 = call i32 @c_TPtoO(i8* %530)
  %532 = call i32 @c_TPtoO(i8* null)
  %tobool467 = icmp ne i32 %531, %532
  br i1 %tobool467, label %land.lhs.true468, label %cond.false478

land.lhs.true468:                                 ; preds = %_Dynamic_check.succeeded465
  %533 = call i32 @c_TPtoO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0))
  %534 = call i32 @c_TPtoO(i8* null)
  %tobool469 = icmp ne i32 %533, %534
  br i1 %tobool469, label %cond.true470, label %cond.false478

cond.true470:                                     ; preds = %land.lhs.true468
  %535 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %536 = load i8*, i8** %value_type, align 4
  %537 = ptrtoint %Tstruct.json_object_t_t* %535 to i32
  %538 = call i8* @c_fetch_pointer_from_offset(i32 %537)
  %539 = call i1 @c_isTaintedPointerToTaintedMem(i8* %538)
  br i1 %539, label %_Dynamic_check.succeeded472, label %_Dynamic_check.failed471

_Dynamic_check.succeeded472:                      ; preds = %cond.true470
  %540 = bitcast i8* %538 to %Tstruct.json_object_t_t*
  %541 = ptrtoint i8* %536 to i32
  %542 = call i8* @c_fetch_pointer_from_offset(i32 %541)
  %543 = call i1 @c_isTaintedPointerToTaintedMem(i8* %542)
  br i1 %543, label %_Dynamic_check.succeeded474, label %_Dynamic_check.failed473

_Dynamic_check.succeeded474:                      ; preds = %_Dynamic_check.succeeded472
  %call475 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %540, i8* %542)
  %544 = call i32 @c_TPtoO(i8* %call475)
  %545 = inttoptr i32 %544 to i8*
  %546 = ptrtoint i8* %545 to i64
  %547 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %546)
  %call476 = call i32 @t_strcmp(i8* %547, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0))
  %cmp477 = icmp eq i32 %call476, 0
  br i1 %cmp477, label %if.then479, label %if.else482

cond.false478:                                    ; preds = %land.lhs.true468, %_Dynamic_check.succeeded465
  br i1 false, label %if.then479, label %if.else482

if.then479:                                       ; preds = %cond.false478, %_Dynamic_check.succeeded474
  %call480 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %548 = load i32, i32* @tests_passed, align 4
  %inc481 = add nsw i32 %548, 1
  store i32 %inc481, i32* @tests_passed, align 4
  br label %if.end485

_Dynamic_check.failed462:                         ; preds = %if.end459
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed464:                         ; preds = %_Dynamic_check.succeeded463
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed471:                         ; preds = %cond.true470
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed473:                         ; preds = %_Dynamic_check.succeeded472
  call void @llvm.trap() #6
  unreachable

if.else482:                                       ; preds = %cond.false478, %_Dynamic_check.succeeded474
  %call483 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %549 = load i32, i32* @tests_failed, align 4
  %inc484 = add nsw i32 %549, 1
  store i32 %inc484, i32* @tests_failed, align 4
  br label %if.end485

if.end485:                                        ; preds = %if.else482, %if.then479
  %550 = load i8*, i8** %value_type, align 4
  %551 = ptrtoint i8* %550 to i64
  %552 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %551)
  %call486 = call i8* @t_strcpy(i8* %552, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0))
  %553 = call i32 @c_TPtoO(i8* %call486)
  %554 = inttoptr i32 %553 to i8*
  %call487 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 218, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.64, i64 0, i64 0))
  %555 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %556 = load i8*, i8** %value_type, align 4
  %557 = ptrtoint %Tstruct.json_object_t_t* %555 to i32
  %558 = call i8* @c_fetch_pointer_from_offset(i32 %557)
  %559 = call i1 @c_isTaintedPointerToTaintedMem(i8* %558)
  br i1 %559, label %_Dynamic_check.succeeded489, label %_Dynamic_check.failed488

_Dynamic_check.succeeded489:                      ; preds = %if.end485
  %560 = bitcast i8* %558 to %Tstruct.json_object_t_t*
  %561 = ptrtoint i8* %556 to i32
  %562 = call i8* @c_fetch_pointer_from_offset(i32 %561)
  %563 = call i1 @c_isTaintedPointerToTaintedMem(i8* %562)
  br i1 %563, label %_Dynamic_check.succeeded491, label %_Dynamic_check.failed490

_Dynamic_check.succeeded491:                      ; preds = %_Dynamic_check.succeeded489
  %call492 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %560, i8* %562)
  %564 = call i32 @c_TPtoO(i8* %call492)
  %565 = inttoptr i32 %564 to i8*
  %566 = call i32 @c_TPtoO(i8* %565)
  %567 = call i32 @c_TPtoO(i8* null)
  %tobool493 = icmp ne i32 %566, %567
  br i1 %tobool493, label %land.lhs.true494, label %cond.false504

land.lhs.true494:                                 ; preds = %_Dynamic_check.succeeded491
  %568 = call i32 @c_TPtoO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0))
  %569 = call i32 @c_TPtoO(i8* null)
  %tobool495 = icmp ne i32 %568, %569
  br i1 %tobool495, label %cond.true496, label %cond.false504

cond.true496:                                     ; preds = %land.lhs.true494
  %570 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %571 = load i8*, i8** %value_type, align 4
  %572 = ptrtoint %Tstruct.json_object_t_t* %570 to i32
  %573 = call i8* @c_fetch_pointer_from_offset(i32 %572)
  %574 = call i1 @c_isTaintedPointerToTaintedMem(i8* %573)
  br i1 %574, label %_Dynamic_check.succeeded498, label %_Dynamic_check.failed497

_Dynamic_check.succeeded498:                      ; preds = %cond.true496
  %575 = bitcast i8* %573 to %Tstruct.json_object_t_t*
  %576 = ptrtoint i8* %571 to i32
  %577 = call i8* @c_fetch_pointer_from_offset(i32 %576)
  %578 = call i1 @c_isTaintedPointerToTaintedMem(i8* %577)
  br i1 %578, label %_Dynamic_check.succeeded500, label %_Dynamic_check.failed499

_Dynamic_check.succeeded500:                      ; preds = %_Dynamic_check.succeeded498
  %call501 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %575, i8* %577)
  %579 = call i32 @c_TPtoO(i8* %call501)
  %580 = inttoptr i32 %579 to i8*
  %581 = ptrtoint i8* %580 to i64
  %582 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %581)
  %call502 = call i32 @t_strcmp(i8* %582, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0))
  %cmp503 = icmp eq i32 %call502, 0
  br i1 %cmp503, label %if.then505, label %if.else508

cond.false504:                                    ; preds = %land.lhs.true494, %_Dynamic_check.succeeded491
  br i1 false, label %if.then505, label %if.else508

if.then505:                                       ; preds = %cond.false504, %_Dynamic_check.succeeded500
  %call506 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %583 = load i32, i32* @tests_passed, align 4
  %inc507 = add nsw i32 %583, 1
  store i32 %inc507, i32* @tests_passed, align 4
  br label %if.end511

_Dynamic_check.failed488:                         ; preds = %if.end485
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed490:                         ; preds = %_Dynamic_check.succeeded489
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed497:                         ; preds = %cond.true496
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed499:                         ; preds = %_Dynamic_check.succeeded498
  call void @llvm.trap() #6
  unreachable

if.else508:                                       ; preds = %cond.false504, %_Dynamic_check.succeeded500
  %call509 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %584 = load i32, i32* @tests_failed, align 4
  %inc510 = add nsw i32 %584, 1
  store i32 %inc510, i32* @tests_failed, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.else508, %if.then505
  %585 = load i8*, i8** %value_type, align 4
  %586 = ptrtoint i8* %585 to i64
  %587 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %586)
  %call512 = call i8* @t_strcpy(i8* %587, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0))
  %588 = call i32 @c_TPtoO(i8* %call512)
  %589 = inttoptr i32 %588 to i8*
  %call513 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 220, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.67, i64 0, i64 0))
  %590 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %591 = load i8*, i8** %value_type, align 4
  %592 = ptrtoint %Tstruct.json_object_t_t* %590 to i32
  %593 = call i8* @c_fetch_pointer_from_offset(i32 %592)
  %594 = call i1 @c_isTaintedPointerToTaintedMem(i8* %593)
  br i1 %594, label %_Dynamic_check.succeeded515, label %_Dynamic_check.failed514

_Dynamic_check.succeeded515:                      ; preds = %if.end511
  %595 = bitcast i8* %593 to %Tstruct.json_object_t_t*
  %596 = ptrtoint i8* %591 to i32
  %597 = call i8* @c_fetch_pointer_from_offset(i32 %596)
  %598 = call i1 @c_isTaintedPointerToTaintedMem(i8* %597)
  br i1 %598, label %_Dynamic_check.succeeded517, label %_Dynamic_check.failed516

_Dynamic_check.succeeded517:                      ; preds = %_Dynamic_check.succeeded515
  %call518 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %595, i8* %597)
  %599 = call i32 @c_TPtoO(i8* %call518)
  %600 = inttoptr i32 %599 to i8*
  %601 = call i32 @c_TPtoO(i8* %600)
  %602 = call i32 @c_TPtoO(i8* null)
  %tobool519 = icmp ne i32 %601, %602
  br i1 %tobool519, label %land.lhs.true520, label %cond.false530

land.lhs.true520:                                 ; preds = %_Dynamic_check.succeeded517
  %603 = call i32 @c_TPtoO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0))
  %604 = call i32 @c_TPtoO(i8* null)
  %tobool521 = icmp ne i32 %603, %604
  br i1 %tobool521, label %cond.true522, label %cond.false530

cond.true522:                                     ; preds = %land.lhs.true520
  %605 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %606 = load i8*, i8** %value_type, align 4
  %607 = ptrtoint %Tstruct.json_object_t_t* %605 to i32
  %608 = call i8* @c_fetch_pointer_from_offset(i32 %607)
  %609 = call i1 @c_isTaintedPointerToTaintedMem(i8* %608)
  br i1 %609, label %_Dynamic_check.succeeded524, label %_Dynamic_check.failed523

_Dynamic_check.succeeded524:                      ; preds = %cond.true522
  %610 = bitcast i8* %608 to %Tstruct.json_object_t_t*
  %611 = ptrtoint i8* %606 to i32
  %612 = call i8* @c_fetch_pointer_from_offset(i32 %611)
  %613 = call i1 @c_isTaintedPointerToTaintedMem(i8* %612)
  br i1 %613, label %_Dynamic_check.succeeded526, label %_Dynamic_check.failed525

_Dynamic_check.succeeded526:                      ; preds = %_Dynamic_check.succeeded524
  %call527 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %610, i8* %612)
  %614 = call i32 @c_TPtoO(i8* %call527)
  %615 = inttoptr i32 %614 to i8*
  %616 = ptrtoint i8* %615 to i64
  %617 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %616)
  %call528 = call i32 @t_strcmp(i8* %617, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0))
  %cmp529 = icmp eq i32 %call528, 0
  br i1 %cmp529, label %if.then531, label %if.else534

cond.false530:                                    ; preds = %land.lhs.true520, %_Dynamic_check.succeeded517
  br i1 false, label %if.then531, label %if.else534

if.then531:                                       ; preds = %cond.false530, %_Dynamic_check.succeeded526
  %call532 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %618 = load i32, i32* @tests_passed, align 4
  %inc533 = add nsw i32 %618, 1
  store i32 %inc533, i32* @tests_passed, align 4
  br label %if.end537

_Dynamic_check.failed514:                         ; preds = %if.end511
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed516:                         ; preds = %_Dynamic_check.succeeded515
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed523:                         ; preds = %cond.true522
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed525:                         ; preds = %_Dynamic_check.succeeded524
  call void @llvm.trap() #6
  unreachable

if.else534:                                       ; preds = %cond.false530, %_Dynamic_check.succeeded526
  %call535 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %619 = load i32, i32* @tests_failed, align 4
  %inc536 = add nsw i32 %619, 1
  store i32 %inc536, i32* @tests_failed, align 4
  br label %if.end537

if.end537:                                        ; preds = %if.else534, %if.then531
  %620 = load i8*, i8** %value_type, align 4
  %621 = ptrtoint i8* %620 to i64
  %622 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %621)
  %call538 = call i8* @t_strcpy(i8* %622, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %623 = call i32 @c_TPtoO(i8* %call538)
  %624 = inttoptr i32 %623 to i8*
  %call539 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i64 0, i64 0))
  %625 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %626 = load i8*, i8** %value_type, align 4
  %627 = ptrtoint %Tstruct.json_object_t_t* %625 to i32
  %628 = call i8* @c_fetch_pointer_from_offset(i32 %627)
  %629 = call i1 @c_isTaintedPointerToTaintedMem(i8* %628)
  br i1 %629, label %_Dynamic_check.succeeded541, label %_Dynamic_check.failed540

_Dynamic_check.succeeded541:                      ; preds = %if.end537
  %630 = bitcast i8* %628 to %Tstruct.json_object_t_t*
  %631 = ptrtoint i8* %626 to i32
  %632 = call i8* @c_fetch_pointer_from_offset(i32 %631)
  %633 = call i1 @c_isTaintedPointerToTaintedMem(i8* %632)
  br i1 %633, label %_Dynamic_check.succeeded543, label %_Dynamic_check.failed542

_Dynamic_check.succeeded543:                      ; preds = %_Dynamic_check.succeeded541
  %call544 = call double @json_object_get_number(%Tstruct.json_object_t_t* %630, i8* %632)
  %cmp545 = fcmp oeq double %call544, 1.000000e+00
  br i1 %cmp545, label %if.then546, label %if.else549

if.then546:                                       ; preds = %_Dynamic_check.succeeded543
  %call547 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %634 = load i32, i32* @tests_passed, align 4
  %inc548 = add nsw i32 %634, 1
  store i32 %inc548, i32* @tests_passed, align 4
  br label %if.end552

_Dynamic_check.failed540:                         ; preds = %if.end537
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed542:                         ; preds = %_Dynamic_check.succeeded541
  call void @llvm.trap() #6
  unreachable

if.else549:                                       ; preds = %_Dynamic_check.succeeded543
  %call550 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %635 = load i32, i32* @tests_failed, align 4
  %inc551 = add nsw i32 %635, 1
  store i32 %inc551, i32* @tests_failed, align 4
  br label %if.end552

if.end552:                                        ; preds = %if.else549, %if.then546
  %636 = load i8*, i8** %value_type, align 4
  %637 = ptrtoint i8* %636 to i64
  %638 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %637)
  %call553 = call i8* @t_strcpy(i8* %638, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0))
  %639 = call i32 @c_TPtoO(i8* %call553)
  %640 = inttoptr i32 %639 to i8*
  %call554 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 225, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0))
  %641 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %642 = load i8*, i8** %value_type, align 4
  %643 = ptrtoint %Tstruct.json_object_t_t* %641 to i32
  %644 = call i8* @c_fetch_pointer_from_offset(i32 %643)
  %645 = call i1 @c_isTaintedPointerToTaintedMem(i8* %644)
  br i1 %645, label %_Dynamic_check.succeeded556, label %_Dynamic_check.failed555

_Dynamic_check.succeeded556:                      ; preds = %if.end552
  %646 = bitcast i8* %644 to %Tstruct.json_object_t_t*
  %647 = ptrtoint i8* %642 to i32
  %648 = call i8* @c_fetch_pointer_from_offset(i32 %647)
  %649 = call i1 @c_isTaintedPointerToTaintedMem(i8* %648)
  br i1 %649, label %_Dynamic_check.succeeded558, label %_Dynamic_check.failed557

_Dynamic_check.succeeded558:                      ; preds = %_Dynamic_check.succeeded556
  %call559 = call double @json_object_get_number(%Tstruct.json_object_t_t* %646, i8* %648)
  %cmp560 = fcmp oeq double %call559, -1.000000e+00
  br i1 %cmp560, label %if.then561, label %if.else564

if.then561:                                       ; preds = %_Dynamic_check.succeeded558
  %call562 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %650 = load i32, i32* @tests_passed, align 4
  %inc563 = add nsw i32 %650, 1
  store i32 %inc563, i32* @tests_passed, align 4
  br label %if.end567

_Dynamic_check.failed555:                         ; preds = %if.end552
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed557:                         ; preds = %_Dynamic_check.succeeded556
  call void @llvm.trap() #6
  unreachable

if.else564:                                       ; preds = %_Dynamic_check.succeeded558
  %call565 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %651 = load i32, i32* @tests_failed, align 4
  %inc566 = add nsw i32 %651, 1
  store i32 %inc566, i32* @tests_failed, align 4
  br label %if.end567

if.end567:                                        ; preds = %if.else564, %if.then561
  %652 = load i8*, i8** %value_type, align 4
  %653 = ptrtoint i8* %652 to i64
  %654 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %653)
  %call568 = call i8* @t_strcpy(i8* %654, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i64 0, i64 0))
  %655 = call i32 @c_TPtoO(i8* %call568)
  %656 = inttoptr i32 %655 to i8*
  %call569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 227, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.73, i64 0, i64 0))
  %657 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %658 = load i8*, i8** %value_type, align 4
  %659 = ptrtoint %Tstruct.json_object_t_t* %657 to i32
  %660 = call i8* @c_fetch_pointer_from_offset(i32 %659)
  %661 = call i1 @c_isTaintedPointerToTaintedMem(i8* %660)
  br i1 %661, label %_Dynamic_check.succeeded571, label %_Dynamic_check.failed570

_Dynamic_check.succeeded571:                      ; preds = %if.end567
  %662 = bitcast i8* %660 to %Tstruct.json_object_t_t*
  %663 = ptrtoint i8* %658 to i32
  %664 = call i8* @c_fetch_pointer_from_offset(i32 %663)
  %665 = call i1 @c_isTaintedPointerToTaintedMem(i8* %664)
  br i1 %665, label %_Dynamic_check.succeeded573, label %_Dynamic_check.failed572

_Dynamic_check.succeeded573:                      ; preds = %_Dynamic_check.succeeded571
  %call574 = call double @json_object_get_number(%Tstruct.json_object_t_t* %662, i8* %664)
  %sub = fsub double %call574, -3.140000e-04
  %666 = call double @llvm.fabs.f64(double %sub)
  %cmp575 = fcmp olt double %666, 0x3EB0C6F7A0B5ED8D
  br i1 %cmp575, label %if.then576, label %if.else579

if.then576:                                       ; preds = %_Dynamic_check.succeeded573
  %call577 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %667 = load i32, i32* @tests_passed, align 4
  %inc578 = add nsw i32 %667, 1
  store i32 %inc578, i32* @tests_passed, align 4
  br label %if.end582

_Dynamic_check.failed570:                         ; preds = %if.end567
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed572:                         ; preds = %_Dynamic_check.succeeded571
  call void @llvm.trap() #6
  unreachable

if.else579:                                       ; preds = %_Dynamic_check.succeeded573
  %call580 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %668 = load i32, i32* @tests_failed, align 4
  %inc581 = add nsw i32 %668, 1
  store i32 %inc581, i32* @tests_failed, align 4
  br label %if.end582

if.end582:                                        ; preds = %if.else579, %if.then576
  %669 = load i8*, i8** %value_type, align 4
  %670 = ptrtoint i8* %669 to i64
  %671 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %670)
  %call583 = call i8* @t_strcpy(i8* %671, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  %672 = call i32 @c_TPtoO(i8* %call583)
  %673 = inttoptr i32 %672 to i8*
  %call584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 229, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.74, i64 0, i64 0))
  %674 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %675 = load i8*, i8** %value_type, align 4
  %676 = ptrtoint %Tstruct.json_object_t_t* %674 to i32
  %677 = call i8* @c_fetch_pointer_from_offset(i32 %676)
  %678 = call i1 @c_isTaintedPointerToTaintedMem(i8* %677)
  br i1 %678, label %_Dynamic_check.succeeded586, label %_Dynamic_check.failed585

_Dynamic_check.succeeded586:                      ; preds = %if.end582
  %679 = bitcast i8* %677 to %Tstruct.json_object_t_t*
  %680 = ptrtoint i8* %675 to i32
  %681 = call i8* @c_fetch_pointer_from_offset(i32 %680)
  %682 = call i1 @c_isTaintedPointerToTaintedMem(i8* %681)
  br i1 %682, label %_Dynamic_check.succeeded588, label %_Dynamic_check.failed587

_Dynamic_check.succeeded588:                      ; preds = %_Dynamic_check.succeeded586
  %call589 = call i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %679, i8* %681)
  %cmp590 = icmp eq i32 %call589, 1
  br i1 %cmp590, label %if.then591, label %if.else594

if.then591:                                       ; preds = %_Dynamic_check.succeeded588
  %call592 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %683 = load i32, i32* @tests_passed, align 4
  %inc593 = add nsw i32 %683, 1
  store i32 %inc593, i32* @tests_passed, align 4
  br label %if.end597

_Dynamic_check.failed585:                         ; preds = %if.end582
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed587:                         ; preds = %_Dynamic_check.succeeded586
  call void @llvm.trap() #6
  unreachable

if.else594:                                       ; preds = %_Dynamic_check.succeeded588
  %call595 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %684 = load i32, i32* @tests_failed, align 4
  %inc596 = add nsw i32 %684, 1
  store i32 %inc596, i32* @tests_failed, align 4
  br label %if.end597

if.end597:                                        ; preds = %if.else594, %if.then591
  %685 = load i8*, i8** %value_type, align 4
  %686 = ptrtoint i8* %685 to i64
  %687 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %686)
  %call598 = call i8* @t_strcpy(i8* %687, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0))
  %688 = call i32 @c_TPtoO(i8* %call598)
  %689 = inttoptr i32 %688 to i8*
  %call599 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 231, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i64 0, i64 0))
  %690 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %691 = load i8*, i8** %value_type, align 4
  %692 = ptrtoint %Tstruct.json_object_t_t* %690 to i32
  %693 = call i8* @c_fetch_pointer_from_offset(i32 %692)
  %694 = call i1 @c_isTaintedPointerToTaintedMem(i8* %693)
  br i1 %694, label %_Dynamic_check.succeeded601, label %_Dynamic_check.failed600

_Dynamic_check.succeeded601:                      ; preds = %if.end597
  %695 = bitcast i8* %693 to %Tstruct.json_object_t_t*
  %696 = ptrtoint i8* %691 to i32
  %697 = call i8* @c_fetch_pointer_from_offset(i32 %696)
  %698 = call i1 @c_isTaintedPointerToTaintedMem(i8* %697)
  br i1 %698, label %_Dynamic_check.succeeded603, label %_Dynamic_check.failed602

_Dynamic_check.succeeded603:                      ; preds = %_Dynamic_check.succeeded601
  %call604 = call i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %695, i8* %697)
  %cmp605 = icmp eq i32 %call604, 0
  br i1 %cmp605, label %if.then606, label %if.else609

if.then606:                                       ; preds = %_Dynamic_check.succeeded603
  %call607 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %699 = load i32, i32* @tests_passed, align 4
  %inc608 = add nsw i32 %699, 1
  store i32 %inc608, i32* @tests_passed, align 4
  br label %if.end612

_Dynamic_check.failed600:                         ; preds = %if.end597
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed602:                         ; preds = %_Dynamic_check.succeeded601
  call void @llvm.trap() #6
  unreachable

if.else609:                                       ; preds = %_Dynamic_check.succeeded603
  %call610 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %700 = load i32, i32* @tests_failed, align 4
  %inc611 = add nsw i32 %700, 1
  store i32 %inc611, i32* @tests_failed, align 4
  br label %if.end612

if.end612:                                        ; preds = %if.else609, %if.then606
  %701 = load i8*, i8** %value_type, align 4
  %702 = ptrtoint i8* %701 to i64
  %703 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %702)
  %call613 = call i8* @t_strcpy(i8* %703, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %704 = call i32 @c_TPtoO(i8* %call613)
  %705 = inttoptr i32 %704 to i8*
  %call614 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 233, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.77, i64 0, i64 0))
  %706 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %707 = load i8*, i8** %value_type, align 4
  %708 = ptrtoint %Tstruct.json_object_t_t* %706 to i32
  %709 = call i8* @c_fetch_pointer_from_offset(i32 %708)
  %710 = call i1 @c_isTaintedPointerToTaintedMem(i8* %709)
  br i1 %710, label %_Dynamic_check.succeeded616, label %_Dynamic_check.failed615

_Dynamic_check.succeeded616:                      ; preds = %if.end612
  %711 = bitcast i8* %709 to %Tstruct.json_object_t_t*
  %712 = ptrtoint i8* %707 to i32
  %713 = call i8* @c_fetch_pointer_from_offset(i32 %712)
  %714 = call i1 @c_isTaintedPointerToTaintedMem(i8* %713)
  br i1 %714, label %_Dynamic_check.succeeded618, label %_Dynamic_check.failed617

_Dynamic_check.succeeded618:                      ; preds = %_Dynamic_check.succeeded616
  %call619 = call %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %711, i8* %713)
  %715 = bitcast %Tstruct.json_value_t_t* %call619 to i8*
  %716 = call i32 @c_TPtoO(i8* %715)
  %717 = inttoptr i32 %716 to %Tstruct.json_value_t_t*
  %718 = ptrtoint %Tstruct.json_value_t_t* %717 to i32
  %719 = call i8* @c_fetch_pointer_from_offset(i32 %718)
  %720 = call i1 @c_isTaintedPointerToTaintedMem(i8* %719)
  br i1 %720, label %_Dynamic_check.succeeded621, label %_Dynamic_check.failed620

_Dynamic_check.succeeded621:                      ; preds = %_Dynamic_check.succeeded618
  %721 = bitcast i8* %719 to %Tstruct.json_value_t_t*
  %call622 = call i32 @json_value_get_type(%Tstruct.json_value_t_t* %721)
  %cmp623 = icmp eq i32 %call622, 1
  br i1 %cmp623, label %if.then624, label %if.else627

if.then624:                                       ; preds = %_Dynamic_check.succeeded621
  %call625 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %722 = load i32, i32* @tests_passed, align 4
  %inc626 = add nsw i32 %722, 1
  store i32 %inc626, i32* @tests_passed, align 4
  br label %if.end630

_Dynamic_check.failed615:                         ; preds = %if.end612
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed617:                         ; preds = %_Dynamic_check.succeeded616
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed620:                         ; preds = %_Dynamic_check.succeeded618
  call void @llvm.trap() #6
  unreachable

if.else627:                                       ; preds = %_Dynamic_check.succeeded621
  %call628 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %723 = load i32, i32* @tests_failed, align 4
  %inc629 = add nsw i32 %723, 1
  store i32 %inc629, i32* @tests_failed, align 4
  br label %if.end630

if.end630:                                        ; preds = %if.else627, %if.then624
  %724 = load i8*, i8** %value_type, align 4
  %725 = ptrtoint i8* %724 to i64
  %726 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %725)
  %call631 = call i8* @t_strcpy(i8* %726, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %727 = call i32 @c_TPtoO(i8* %call631)
  %728 = inttoptr i32 %727 to i8*
  %729 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %730 = load i8*, i8** %value_type, align 4
  %731 = ptrtoint %Tstruct.json_object_t_t* %729 to i32
  %732 = call i8* @c_fetch_pointer_from_offset(i32 %731)
  %733 = call i1 @c_isTaintedPointerToTaintedMem(i8* %732)
  br i1 %733, label %_Dynamic_check.succeeded633, label %_Dynamic_check.failed632

_Dynamic_check.succeeded633:                      ; preds = %if.end630
  %734 = bitcast i8* %732 to %Tstruct.json_object_t_t*
  %735 = ptrtoint i8* %730 to i32
  %736 = call i8* @c_fetch_pointer_from_offset(i32 %735)
  %737 = call i1 @c_isTaintedPointerToTaintedMem(i8* %736)
  br i1 %737, label %_Dynamic_check.succeeded635, label %_Dynamic_check.failed634

_Dynamic_check.succeeded635:                      ; preds = %_Dynamic_check.succeeded633
  %call636 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %734, i8* %736)
  %738 = bitcast %Tstruct.json_array_t_t* %call636 to i8*
  %739 = call i32 @c_TPtoO(i8* %738)
  %740 = inttoptr i32 %739 to %Tstruct.json_array_t_t*
  %741 = ptrtoint %Tstruct.json_array_t_t* %740 to i32
  %742 = bitcast %Tstruct.json_array_t_t** %array to i32*
  store i32 %741, i32* %742, align 4
  %743 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %744 = ptrtoint %Tstruct.json_array_t_t* %743 to i32
  %cmp637 = icmp ne i32 %744, 0
  br i1 %cmp637, label %land.lhs.true638, label %if.else686

land.lhs.true638:                                 ; preds = %_Dynamic_check.succeeded635
  %745 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %746 = ptrtoint %Tstruct.json_array_t_t* %745 to i32
  %747 = call i8* @c_fetch_pointer_from_offset(i32 %746)
  %748 = call i1 @c_isTaintedPointerToTaintedMem(i8* %747)
  br i1 %748, label %_Dynamic_check.succeeded640, label %_Dynamic_check.failed639

_Dynamic_check.succeeded640:                      ; preds = %land.lhs.true638
  %749 = bitcast i8* %747 to %Tstruct.json_array_t_t*
  %call641 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %749)
  %cmp642 = icmp ugt i64 %call641, 1
  br i1 %cmp642, label %if.then643, label %if.else686

if.then643:                                       ; preds = %_Dynamic_check.succeeded640
  %call644 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i64 0, i64 0))
  %750 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %751 = ptrtoint %Tstruct.json_array_t_t* %750 to i32
  %752 = call i8* @c_fetch_pointer_from_offset(i32 %751)
  %753 = call i1 @c_isTaintedPointerToTaintedMem(i8* %752)
  br i1 %753, label %_Dynamic_check.succeeded646, label %_Dynamic_check.failed645

_Dynamic_check.succeeded646:                      ; preds = %if.then643
  %754 = bitcast i8* %752 to %Tstruct.json_array_t_t*
  %call647 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %754, i64 0)
  %755 = call i32 @c_TPtoO(i8* %call647)
  %756 = inttoptr i32 %755 to i8*
  %757 = call i32 @c_TPtoO(i8* %756)
  %758 = call i32 @c_TPtoO(i8* null)
  %tobool648 = icmp ne i32 %757, %758
  br i1 %tobool648, label %land.lhs.true649, label %cond.false657

land.lhs.true649:                                 ; preds = %_Dynamic_check.succeeded646
  %759 = call i32 @c_TPtoO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0))
  %760 = call i32 @c_TPtoO(i8* null)
  %tobool650 = icmp ne i32 %759, %760
  br i1 %tobool650, label %cond.true651, label %cond.false657

cond.true651:                                     ; preds = %land.lhs.true649
  %761 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %762 = ptrtoint %Tstruct.json_array_t_t* %761 to i32
  %763 = call i8* @c_fetch_pointer_from_offset(i32 %762)
  %764 = call i1 @c_isTaintedPointerToTaintedMem(i8* %763)
  br i1 %764, label %_Dynamic_check.succeeded653, label %_Dynamic_check.failed652

_Dynamic_check.succeeded653:                      ; preds = %cond.true651
  %765 = bitcast i8* %763 to %Tstruct.json_array_t_t*
  %call654 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %765, i64 0)
  %766 = call i32 @c_TPtoO(i8* %call654)
  %767 = inttoptr i32 %766 to i8*
  %768 = ptrtoint i8* %767 to i64
  %769 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %768)
  %call655 = call i32 @t_strcmp(i8* %769, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0))
  %cmp656 = icmp eq i32 %call655, 0
  br i1 %cmp656, label %if.then658, label %if.else661

cond.false657:                                    ; preds = %land.lhs.true649, %_Dynamic_check.succeeded646
  br i1 false, label %if.then658, label %if.else661

if.then658:                                       ; preds = %cond.false657, %_Dynamic_check.succeeded653
  %call659 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %770 = load i32, i32* @tests_passed, align 4
  %inc660 = add nsw i32 %770, 1
  store i32 %inc660, i32* @tests_passed, align 4
  br label %if.end664

_Dynamic_check.failed632:                         ; preds = %if.end630
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed634:                         ; preds = %_Dynamic_check.succeeded633
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed639:                         ; preds = %land.lhs.true638
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed645:                         ; preds = %if.then643
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed652:                         ; preds = %cond.true651
  call void @llvm.trap() #6
  unreachable

if.else661:                                       ; preds = %cond.false657, %_Dynamic_check.succeeded653
  %call662 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %771 = load i32, i32* @tests_failed, align 4
  %inc663 = add nsw i32 %771, 1
  store i32 %inc663, i32* @tests_failed, align 4
  br label %if.end664

if.end664:                                        ; preds = %if.else661, %if.then658
  %call665 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 239, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i64 0, i64 0))
  %772 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %773 = ptrtoint %Tstruct.json_array_t_t* %772 to i32
  %774 = call i8* @c_fetch_pointer_from_offset(i32 %773)
  %775 = call i1 @c_isTaintedPointerToTaintedMem(i8* %774)
  br i1 %775, label %_Dynamic_check.succeeded667, label %_Dynamic_check.failed666

_Dynamic_check.succeeded667:                      ; preds = %if.end664
  %776 = bitcast i8* %774 to %Tstruct.json_array_t_t*
  %call668 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %776, i64 1)
  %777 = call i32 @c_TPtoO(i8* %call668)
  %778 = inttoptr i32 %777 to i8*
  %779 = call i32 @c_TPtoO(i8* %778)
  %780 = call i32 @c_TPtoO(i8* null)
  %tobool669 = icmp ne i32 %779, %780
  br i1 %tobool669, label %land.lhs.true670, label %cond.false678

land.lhs.true670:                                 ; preds = %_Dynamic_check.succeeded667
  %781 = call i32 @c_TPtoO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0))
  %782 = call i32 @c_TPtoO(i8* null)
  %tobool671 = icmp ne i32 %781, %782
  br i1 %tobool671, label %cond.true672, label %cond.false678

cond.true672:                                     ; preds = %land.lhs.true670
  %783 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %784 = ptrtoint %Tstruct.json_array_t_t* %783 to i32
  %785 = call i8* @c_fetch_pointer_from_offset(i32 %784)
  %786 = call i1 @c_isTaintedPointerToTaintedMem(i8* %785)
  br i1 %786, label %_Dynamic_check.succeeded674, label %_Dynamic_check.failed673

_Dynamic_check.succeeded674:                      ; preds = %cond.true672
  %787 = bitcast i8* %785 to %Tstruct.json_array_t_t*
  %call675 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %787, i64 1)
  %788 = call i32 @c_TPtoO(i8* %call675)
  %789 = inttoptr i32 %788 to i8*
  %790 = ptrtoint i8* %789 to i64
  %791 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %790)
  %call676 = call i32 @t_strcmp(i8* %791, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0))
  %cmp677 = icmp eq i32 %call676, 0
  br i1 %cmp677, label %if.then679, label %if.else682

cond.false678:                                    ; preds = %land.lhs.true670, %_Dynamic_check.succeeded667
  br i1 false, label %if.then679, label %if.else682

if.then679:                                       ; preds = %cond.false678, %_Dynamic_check.succeeded674
  %call680 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %792 = load i32, i32* @tests_passed, align 4
  %inc681 = add nsw i32 %792, 1
  store i32 %inc681, i32* @tests_passed, align 4
  br label %if.end685

_Dynamic_check.failed666:                         ; preds = %if.end664
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed673:                         ; preds = %cond.true672
  call void @llvm.trap() #6
  unreachable

if.else682:                                       ; preds = %cond.false678, %_Dynamic_check.succeeded674
  %call683 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %793 = load i32, i32* @tests_failed, align 4
  %inc684 = add nsw i32 %793, 1
  store i32 %inc684, i32* @tests_failed, align 4
  br label %if.end685

if.end685:                                        ; preds = %if.else682, %if.then679
  br label %if.end688

if.else686:                                       ; preds = %_Dynamic_check.succeeded640, %_Dynamic_check.succeeded635
  %794 = load i32, i32* @tests_failed, align 4
  %inc687 = add nsw i32 %794, 1
  store i32 %inc687, i32* @tests_failed, align 4
  br label %if.end688

if.end688:                                        ; preds = %if.else686, %if.end685
  %795 = load i8*, i8** %value_type, align 4
  %796 = ptrtoint i8* %795 to i64
  %797 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %796)
  %call689 = call i8* @t_strcpy(i8* %797, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0))
  %798 = call i32 @c_TPtoO(i8* %call689)
  %799 = inttoptr i32 %798 to i8*
  %800 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %801 = load i8*, i8** %value_type, align 4
  %802 = ptrtoint %Tstruct.json_object_t_t* %800 to i32
  %803 = call i8* @c_fetch_pointer_from_offset(i32 %802)
  %804 = call i1 @c_isTaintedPointerToTaintedMem(i8* %803)
  br i1 %804, label %_Dynamic_check.succeeded691, label %_Dynamic_check.failed690

_Dynamic_check.succeeded691:                      ; preds = %if.end688
  %805 = bitcast i8* %803 to %Tstruct.json_object_t_t*
  %806 = ptrtoint i8* %801 to i32
  %807 = call i8* @c_fetch_pointer_from_offset(i32 %806)
  %808 = call i1 @c_isTaintedPointerToTaintedMem(i8* %807)
  br i1 %808, label %_Dynamic_check.succeeded693, label %_Dynamic_check.failed692

_Dynamic_check.succeeded693:                      ; preds = %_Dynamic_check.succeeded691
  %call694 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %805, i8* %807)
  %809 = bitcast %Tstruct.json_array_t_t* %call694 to i8*
  %810 = call i32 @c_TPtoO(i8* %809)
  %811 = inttoptr i32 %810 to %Tstruct.json_array_t_t*
  %812 = ptrtoint %Tstruct.json_array_t_t* %811 to i32
  %813 = bitcast %Tstruct.json_array_t_t** %array to i32*
  store i32 %812, i32* %813, align 4
  %814 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %815 = ptrtoint %Tstruct.json_array_t_t* %814 to i32
  %cmp695 = icmp ne i32 %815, 0
  br i1 %cmp695, label %if.then696, label %if.else715

if.then696:                                       ; preds = %_Dynamic_check.succeeded693
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then696
  %816 = load i64, i64* %i, align 8
  %817 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %818 = ptrtoint %Tstruct.json_array_t_t* %817 to i32
  %819 = call i8* @c_fetch_pointer_from_offset(i32 %818)
  %820 = call i1 @c_isTaintedPointerToTaintedMem(i8* %819)
  br i1 %820, label %_Dynamic_check.succeeded698, label %_Dynamic_check.failed697

_Dynamic_check.succeeded698:                      ; preds = %for.cond
  %821 = bitcast i8* %819 to %Tstruct.json_array_t_t*
  %call699 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %821)
  %cmp700 = icmp ult i64 %816, %call699
  br i1 %cmp700, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded698
  %call701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 248, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.83, i64 0, i64 0))
  %822 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %823 = load i64, i64* %i, align 8
  %824 = ptrtoint %Tstruct.json_array_t_t* %822 to i32
  %825 = call i8* @c_fetch_pointer_from_offset(i32 %824)
  %826 = call i1 @c_isTaintedPointerToTaintedMem(i8* %825)
  br i1 %826, label %_Dynamic_check.succeeded703, label %_Dynamic_check.failed702

_Dynamic_check.succeeded703:                      ; preds = %for.body
  %827 = bitcast i8* %825 to %Tstruct.json_array_t_t*
  %call704 = call double @json_array_get_number(%Tstruct.json_array_t_t* %827, i64 %823)
  %828 = load i64, i64* %i, align 8
  %829 = load i64, i64* %i, align 8
  %mul = mul i64 %828, %829
  %conv = uitofp i64 %mul to double
  %cmp705 = fcmp oeq double %call704, %conv
  br i1 %cmp705, label %if.then707, label %if.else710

if.then707:                                       ; preds = %_Dynamic_check.succeeded703
  %call708 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %830 = load i32, i32* @tests_passed, align 4
  %inc709 = add nsw i32 %830, 1
  store i32 %inc709, i32* @tests_passed, align 4
  br label %if.end713

_Dynamic_check.failed690:                         ; preds = %if.end688
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed692:                         ; preds = %_Dynamic_check.succeeded691
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed697:                         ; preds = %for.cond
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed702:                         ; preds = %for.body
  call void @llvm.trap() #6
  unreachable

if.else710:                                       ; preds = %_Dynamic_check.succeeded703
  %call711 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %831 = load i32, i32* @tests_failed, align 4
  %inc712 = add nsw i32 %831, 1
  store i32 %inc712, i32* @tests_failed, align 4
  br label %if.end713

if.end713:                                        ; preds = %if.else710, %if.then707
  br label %for.inc

for.inc:                                          ; preds = %if.end713
  %832 = load i64, i64* %i, align 8
  %inc714 = add i64 %832, 1
  store i64 %inc714, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %_Dynamic_check.succeeded698
  br label %if.end717

if.else715:                                       ; preds = %_Dynamic_check.succeeded693
  %833 = load i32, i32* @tests_failed, align 4
  %inc716 = add nsw i32 %833, 1
  store i32 %inc716, i32* @tests_failed, align 4
  br label %if.end717

if.end717:                                        ; preds = %if.else715, %for.end
  %834 = load i8*, i8** %value_type, align 4
  %835 = ptrtoint i8* %834 to i64
  %836 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %835)
  %call718 = call i8* @t_strcpy(i8* %836, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0))
  %837 = call i32 @c_TPtoO(i8* %call718)
  %838 = inttoptr i32 %837 to i8*
  %call719 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 254, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.85, i64 0, i64 0))
  %839 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %840 = load i8*, i8** %value_type, align 4
  %841 = ptrtoint %Tstruct.json_object_t_t* %839 to i32
  %842 = call i8* @c_fetch_pointer_from_offset(i32 %841)
  %843 = call i1 @c_isTaintedPointerToTaintedMem(i8* %842)
  br i1 %843, label %_Dynamic_check.succeeded721, label %_Dynamic_check.failed720

_Dynamic_check.succeeded721:                      ; preds = %if.end717
  %844 = bitcast i8* %842 to %Tstruct.json_object_t_t*
  %845 = ptrtoint i8* %840 to i32
  %846 = call i8* @c_fetch_pointer_from_offset(i32 %845)
  %847 = call i1 @c_isTaintedPointerToTaintedMem(i8* %846)
  br i1 %847, label %_Dynamic_check.succeeded723, label %_Dynamic_check.failed722

_Dynamic_check.succeeded723:                      ; preds = %_Dynamic_check.succeeded721
  %call724 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %844, i8* %846)
  %848 = bitcast %Tstruct.json_array_t_t* %call724 to i8*
  %849 = call i32 @c_TPtoO(i8* %848)
  %850 = inttoptr i32 %849 to %Tstruct.json_array_t_t*
  %851 = ptrtoint %Tstruct.json_array_t_t* %850 to i32
  %cmp725 = icmp eq i32 %851, 0
  br i1 %cmp725, label %if.then727, label %if.else730

if.then727:                                       ; preds = %_Dynamic_check.succeeded723
  %call728 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %852 = load i32, i32* @tests_passed, align 4
  %inc729 = add nsw i32 %852, 1
  store i32 %inc729, i32* @tests_passed, align 4
  br label %if.end733

_Dynamic_check.failed720:                         ; preds = %if.end717
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed722:                         ; preds = %_Dynamic_check.succeeded721
  call void @llvm.trap() #6
  unreachable

if.else730:                                       ; preds = %_Dynamic_check.succeeded723
  %call731 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %853 = load i32, i32* @tests_failed, align 4
  %inc732 = add nsw i32 %853, 1
  store i32 %inc732, i32* @tests_failed, align 4
  br label %if.end733

if.end733:                                        ; preds = %if.else730, %if.then727
  %854 = load i8*, i8** %value_type, align 4
  %855 = ptrtoint i8* %854 to i64
  %856 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %855)
  %call734 = call i8* @t_strcpy(i8* %856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
  %857 = call i32 @c_TPtoO(i8* %call734)
  %858 = inttoptr i32 %857 to i8*
  %call735 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.86, i64 0, i64 0))
  %859 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %860 = load i8*, i8** %value_type, align 4
  %861 = ptrtoint %Tstruct.json_object_t_t* %859 to i32
  %862 = call i8* @c_fetch_pointer_from_offset(i32 %861)
  %863 = call i1 @c_isTaintedPointerToTaintedMem(i8* %862)
  br i1 %863, label %_Dynamic_check.succeeded737, label %_Dynamic_check.failed736

_Dynamic_check.succeeded737:                      ; preds = %if.end733
  %864 = bitcast i8* %862 to %Tstruct.json_object_t_t*
  %865 = ptrtoint i8* %860 to i32
  %866 = call i8* @c_fetch_pointer_from_offset(i32 %865)
  %867 = call i1 @c_isTaintedPointerToTaintedMem(i8* %866)
  br i1 %867, label %_Dynamic_check.succeeded739, label %_Dynamic_check.failed738

_Dynamic_check.succeeded739:                      ; preds = %_Dynamic_check.succeeded737
  %call740 = call i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %864, i8* %866)
  %868 = call i32 @c_TPtoO(i8* %call740)
  %869 = inttoptr i32 %868 to i8*
  %870 = call i32 @c_TPtoO(i8* %869)
  %871 = call i32 @c_TPtoO(i8* null)
  %tobool741 = icmp ne i32 %870, %871
  br i1 %tobool741, label %land.lhs.true742, label %cond.false753

land.lhs.true742:                                 ; preds = %_Dynamic_check.succeeded739
  %872 = call i32 @c_TPtoO(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i64 0, i64 0))
  %873 = call i32 @c_TPtoO(i8* null)
  %tobool743 = icmp ne i32 %872, %873
  br i1 %tobool743, label %cond.true744, label %cond.false753

cond.true744:                                     ; preds = %land.lhs.true742
  %874 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %875 = load i8*, i8** %value_type, align 4
  %876 = ptrtoint %Tstruct.json_object_t_t* %874 to i32
  %877 = call i8* @c_fetch_pointer_from_offset(i32 %876)
  %878 = call i1 @c_isTaintedPointerToTaintedMem(i8* %877)
  br i1 %878, label %_Dynamic_check.succeeded746, label %_Dynamic_check.failed745

_Dynamic_check.succeeded746:                      ; preds = %cond.true744
  %879 = bitcast i8* %877 to %Tstruct.json_object_t_t*
  %880 = ptrtoint i8* %875 to i32
  %881 = call i8* @c_fetch_pointer_from_offset(i32 %880)
  %882 = call i1 @c_isTaintedPointerToTaintedMem(i8* %881)
  br i1 %882, label %_Dynamic_check.succeeded748, label %_Dynamic_check.failed747

_Dynamic_check.succeeded748:                      ; preds = %_Dynamic_check.succeeded746
  %call749 = call i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %879, i8* %881)
  %883 = call i32 @c_TPtoO(i8* %call749)
  %884 = inttoptr i32 %883 to i8*
  %885 = ptrtoint i8* %884 to i64
  %886 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %885)
  %call750 = call i32 @t_strcmp(i8* %886, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i64 0, i64 0))
  %cmp751 = icmp eq i32 %call750, 0
  br i1 %cmp751, label %if.then754, label %if.else757

cond.false753:                                    ; preds = %land.lhs.true742, %_Dynamic_check.succeeded739
  br i1 false, label %if.then754, label %if.else757

if.then754:                                       ; preds = %cond.false753, %_Dynamic_check.succeeded748
  %call755 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %887 = load i32, i32* @tests_passed, align 4
  %inc756 = add nsw i32 %887, 1
  store i32 %inc756, i32* @tests_passed, align 4
  br label %if.end760

_Dynamic_check.failed736:                         ; preds = %if.end733
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed738:                         ; preds = %_Dynamic_check.succeeded737
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed745:                         ; preds = %cond.true744
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed747:                         ; preds = %_Dynamic_check.succeeded746
  call void @llvm.trap() #6
  unreachable

if.else757:                                       ; preds = %cond.false753, %_Dynamic_check.succeeded748
  %call758 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %888 = load i32, i32* @tests_failed, align 4
  %inc759 = add nsw i32 %888, 1
  store i32 %inc759, i32* @tests_failed, align 4
  br label %if.end760

if.end760:                                        ; preds = %if.else757, %if.then754
  %889 = load i8*, i8** %value_type, align 4
  %890 = ptrtoint i8* %889 to i64
  %891 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %890)
  %call761 = call i8* @t_strcpy(i8* %891, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0))
  %892 = call i32 @c_TPtoO(i8* %call761)
  %893 = inttoptr i32 %892 to i8*
  %call762 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 258, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  %894 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %895 = load i8*, i8** %value_type, align 4
  %896 = ptrtoint %Tstruct.json_object_t_t* %894 to i32
  %897 = call i8* @c_fetch_pointer_from_offset(i32 %896)
  %898 = call i1 @c_isTaintedPointerToTaintedMem(i8* %897)
  br i1 %898, label %_Dynamic_check.succeeded764, label %_Dynamic_check.failed763

_Dynamic_check.succeeded764:                      ; preds = %if.end760
  %899 = bitcast i8* %897 to %Tstruct.json_object_t_t*
  %900 = ptrtoint i8* %895 to i32
  %901 = call i8* @c_fetch_pointer_from_offset(i32 %900)
  %902 = call i1 @c_isTaintedPointerToTaintedMem(i8* %901)
  br i1 %902, label %_Dynamic_check.succeeded766, label %_Dynamic_check.failed765

_Dynamic_check.succeeded766:                      ; preds = %_Dynamic_check.succeeded764
  %call767 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %899, i8* %901)
  %cmp768 = icmp eq i32 %call767, 1
  br i1 %cmp768, label %if.then770, label %if.else773

if.then770:                                       ; preds = %_Dynamic_check.succeeded766
  %call771 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %903 = load i32, i32* @tests_passed, align 4
  %inc772 = add nsw i32 %903, 1
  store i32 %inc772, i32* @tests_passed, align 4
  br label %if.end776

_Dynamic_check.failed763:                         ; preds = %if.end760
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed765:                         ; preds = %_Dynamic_check.succeeded764
  call void @llvm.trap() #6
  unreachable

if.else773:                                       ; preds = %_Dynamic_check.succeeded766
  %call774 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %904 = load i32, i32* @tests_failed, align 4
  %inc775 = add nsw i32 %904, 1
  store i32 %inc775, i32* @tests_failed, align 4
  br label %if.end776

if.end776:                                        ; preds = %if.else773, %if.then770
  %905 = load i8*, i8** %value_type, align 4
  %906 = ptrtoint i8* %905 to i64
  %907 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %906)
  %call777 = call i8* @t_strcpy(i8* %907, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i64 0, i64 0))
  %908 = call i32 @c_TPtoO(i8* %call777)
  %909 = inttoptr i32 %908 to i8*
  %call778 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 260, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.90, i64 0, i64 0))
  %910 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %911 = load i8*, i8** %value_type, align 4
  %912 = ptrtoint %Tstruct.json_object_t_t* %910 to i32
  %913 = call i8* @c_fetch_pointer_from_offset(i32 %912)
  %914 = call i1 @c_isTaintedPointerToTaintedMem(i8* %913)
  br i1 %914, label %_Dynamic_check.succeeded780, label %_Dynamic_check.failed779

_Dynamic_check.succeeded780:                      ; preds = %if.end776
  %915 = bitcast i8* %913 to %Tstruct.json_object_t_t*
  %916 = ptrtoint i8* %911 to i32
  %917 = call i8* @c_fetch_pointer_from_offset(i32 %916)
  %918 = call i1 @c_isTaintedPointerToTaintedMem(i8* %917)
  br i1 %918, label %_Dynamic_check.succeeded782, label %_Dynamic_check.failed781

_Dynamic_check.succeeded782:                      ; preds = %_Dynamic_check.succeeded780
  %call783 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %915, i8* %917)
  %cmp784 = icmp eq i32 %call783, 0
  br i1 %cmp784, label %if.then786, label %if.else789

if.then786:                                       ; preds = %_Dynamic_check.succeeded782
  %call787 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %919 = load i32, i32* @tests_passed, align 4
  %inc788 = add nsw i32 %919, 1
  store i32 %inc788, i32* @tests_passed, align 4
  br label %if.end792

_Dynamic_check.failed779:                         ; preds = %if.end776
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed781:                         ; preds = %_Dynamic_check.succeeded780
  call void @llvm.trap() #6
  unreachable

if.else789:                                       ; preds = %_Dynamic_check.succeeded782
  %call790 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %920 = load i32, i32* @tests_failed, align 4
  %inc791 = add nsw i32 %920, 1
  store i32 %inc791, i32* @tests_failed, align 4
  br label %if.end792

if.end792:                                        ; preds = %if.else789, %if.then786
  %921 = load i8*, i8** %value_type, align 4
  %922 = ptrtoint i8* %921 to i64
  %923 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %922)
  %call793 = call i8* @t_strcpy(i8* %923, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0))
  %924 = call i32 @c_TPtoO(i8* %call793)
  %925 = inttoptr i32 %924 to i8*
  %call794 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 262, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i64 0, i64 0))
  %926 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %927 = load i8*, i8** %value_type, align 4
  %928 = ptrtoint %Tstruct.json_object_t_t* %926 to i32
  %929 = call i8* @c_fetch_pointer_from_offset(i32 %928)
  %930 = call i1 @c_isTaintedPointerToTaintedMem(i8* %929)
  br i1 %930, label %_Dynamic_check.succeeded796, label %_Dynamic_check.failed795

_Dynamic_check.succeeded796:                      ; preds = %if.end792
  %931 = bitcast i8* %929 to %Tstruct.json_object_t_t*
  %932 = ptrtoint i8* %927 to i32
  %933 = call i8* @c_fetch_pointer_from_offset(i32 %932)
  %934 = call i1 @c_isTaintedPointerToTaintedMem(i8* %933)
  br i1 %934, label %_Dynamic_check.succeeded798, label %_Dynamic_check.failed797

_Dynamic_check.succeeded798:                      ; preds = %_Dynamic_check.succeeded796
  %call799 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %931, i8* %933)
  %935 = bitcast %Tstruct.json_value_t_t* %call799 to i8*
  %936 = call i32 @c_TPtoO(i8* %935)
  %937 = inttoptr i32 %936 to %Tstruct.json_value_t_t*
  %938 = ptrtoint %Tstruct.json_value_t_t* %937 to i32
  %cmp800 = icmp ne i32 %938, 0
  br i1 %cmp800, label %if.then802, label %if.else805

if.then802:                                       ; preds = %_Dynamic_check.succeeded798
  %call803 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %939 = load i32, i32* @tests_passed, align 4
  %inc804 = add nsw i32 %939, 1
  store i32 %inc804, i32* @tests_passed, align 4
  br label %if.end808

_Dynamic_check.failed795:                         ; preds = %if.end792
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed797:                         ; preds = %_Dynamic_check.succeeded796
  call void @llvm.trap() #6
  unreachable

if.else805:                                       ; preds = %_Dynamic_check.succeeded798
  %call806 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %940 = load i32, i32* @tests_failed, align 4
  %inc807 = add nsw i32 %940, 1
  store i32 %inc807, i32* @tests_failed, align 4
  br label %if.end808

if.end808:                                        ; preds = %if.else805, %if.then802
  %941 = load i8*, i8** %value_type, align 4
  %942 = ptrtoint i8* %941 to i64
  %943 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %942)
  %call809 = call i8* @t_strcpy(i8* %943, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0))
  %944 = call i32 @c_TPtoO(i8* %call809)
  %945 = inttoptr i32 %944 to i8*
  %call810 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 264, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.92, i64 0, i64 0))
  %946 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %947 = load i8*, i8** %value_type, align 4
  %948 = ptrtoint %Tstruct.json_object_t_t* %946 to i32
  %949 = call i8* @c_fetch_pointer_from_offset(i32 %948)
  %950 = call i1 @c_isTaintedPointerToTaintedMem(i8* %949)
  br i1 %950, label %_Dynamic_check.succeeded812, label %_Dynamic_check.failed811

_Dynamic_check.succeeded812:                      ; preds = %if.end808
  %951 = bitcast i8* %949 to %Tstruct.json_object_t_t*
  %952 = ptrtoint i8* %947 to i32
  %953 = call i8* @c_fetch_pointer_from_offset(i32 %952)
  %954 = call i1 @c_isTaintedPointerToTaintedMem(i8* %953)
  br i1 %954, label %_Dynamic_check.succeeded814, label %_Dynamic_check.failed813

_Dynamic_check.succeeded814:                      ; preds = %_Dynamic_check.succeeded812
  %call815 = call double @json_object_dotget_number(%Tstruct.json_object_t_t* %951, i8* %953)
  %cmp816 = fcmp oeq double %call815, 1.230000e+02
  br i1 %cmp816, label %if.then818, label %if.else821

if.then818:                                       ; preds = %_Dynamic_check.succeeded814
  %call819 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %955 = load i32, i32* @tests_passed, align 4
  %inc820 = add nsw i32 %955, 1
  store i32 %inc820, i32* @tests_passed, align 4
  br label %if.end824

_Dynamic_check.failed811:                         ; preds = %if.end808
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed813:                         ; preds = %_Dynamic_check.succeeded812
  call void @llvm.trap() #6
  unreachable

if.else821:                                       ; preds = %_Dynamic_check.succeeded814
  %call822 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %956 = load i32, i32* @tests_failed, align 4
  %inc823 = add nsw i32 %956, 1
  store i32 %inc823, i32* @tests_failed, align 4
  br label %if.end824

if.end824:                                        ; preds = %if.else821, %if.then818
  %957 = load i8*, i8** %value_type, align 4
  %958 = ptrtoint i8* %957 to i64
  %959 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %958)
  %call825 = call i8* @t_strcpy(i8* %959, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i64 0, i64 0))
  %960 = call i32 @c_TPtoO(i8* %call825)
  %961 = inttoptr i32 %960 to i8*
  %call826 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %962 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %963 = load i8*, i8** %value_type, align 4
  %964 = ptrtoint %Tstruct.json_object_t_t* %962 to i32
  %965 = call i8* @c_fetch_pointer_from_offset(i32 %964)
  %966 = call i1 @c_isTaintedPointerToTaintedMem(i8* %965)
  br i1 %966, label %_Dynamic_check.succeeded828, label %_Dynamic_check.failed827

_Dynamic_check.succeeded828:                      ; preds = %if.end824
  %967 = bitcast i8* %965 to %Tstruct.json_object_t_t*
  %968 = ptrtoint i8* %963 to i32
  %969 = call i8* @c_fetch_pointer_from_offset(i32 %968)
  %970 = call i1 @c_isTaintedPointerToTaintedMem(i8* %969)
  br i1 %970, label %_Dynamic_check.succeeded830, label %_Dynamic_check.failed829

_Dynamic_check.succeeded830:                      ; preds = %_Dynamic_check.succeeded828
  %call831 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %967, i8* %969)
  %971 = bitcast %Tstruct.json_value_t_t* %call831 to i8*
  %972 = call i32 @c_TPtoO(i8* %971)
  %973 = inttoptr i32 %972 to %Tstruct.json_value_t_t*
  %974 = ptrtoint %Tstruct.json_value_t_t* %973 to i32
  %cmp832 = icmp eq i32 %974, 0
  br i1 %cmp832, label %if.then834, label %if.else837

if.then834:                                       ; preds = %_Dynamic_check.succeeded830
  %call835 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %975 = load i32, i32* @tests_passed, align 4
  %inc836 = add nsw i32 %975, 1
  store i32 %inc836, i32* @tests_passed, align 4
  br label %if.end840

_Dynamic_check.failed827:                         ; preds = %if.end824
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed829:                         ; preds = %_Dynamic_check.succeeded828
  call void @llvm.trap() #6
  unreachable

if.else837:                                       ; preds = %_Dynamic_check.succeeded830
  %call838 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %976 = load i32, i32* @tests_failed, align 4
  %inc839 = add nsw i32 %976, 1
  store i32 %inc839, i32* @tests_failed, align 4
  br label %if.end840

if.end840:                                        ; preds = %if.else837, %if.then834
  %977 = load i8*, i8** %value_type, align 4
  %978 = ptrtoint i8* %977 to i64
  %979 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %978)
  %call841 = call i8* @t_strcpy(i8* %979, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i64 0, i64 0))
  %980 = call i32 @c_TPtoO(i8* %call841)
  %981 = inttoptr i32 %980 to i8*
  %call842 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 269, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %982 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %983 = load i8*, i8** %value_type, align 4
  %984 = ptrtoint %Tstruct.json_object_t_t* %982 to i32
  %985 = call i8* @c_fetch_pointer_from_offset(i32 %984)
  %986 = call i1 @c_isTaintedPointerToTaintedMem(i8* %985)
  br i1 %986, label %_Dynamic_check.succeeded844, label %_Dynamic_check.failed843

_Dynamic_check.succeeded844:                      ; preds = %if.end840
  %987 = bitcast i8* %985 to %Tstruct.json_object_t_t*
  %988 = ptrtoint i8* %983 to i32
  %989 = call i8* @c_fetch_pointer_from_offset(i32 %988)
  %990 = call i1 @c_isTaintedPointerToTaintedMem(i8* %989)
  br i1 %990, label %_Dynamic_check.succeeded846, label %_Dynamic_check.failed845

_Dynamic_check.succeeded846:                      ; preds = %_Dynamic_check.succeeded844
  %call847 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %987, i8* %989)
  %991 = bitcast %Tstruct.json_value_t_t* %call847 to i8*
  %992 = call i32 @c_TPtoO(i8* %991)
  %993 = inttoptr i32 %992 to %Tstruct.json_value_t_t*
  %994 = ptrtoint %Tstruct.json_value_t_t* %993 to i32
  %cmp848 = icmp eq i32 %994, 0
  br i1 %cmp848, label %if.then850, label %if.else853

if.then850:                                       ; preds = %_Dynamic_check.succeeded846
  %call851 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %995 = load i32, i32* @tests_passed, align 4
  %inc852 = add nsw i32 %995, 1
  store i32 %inc852, i32* @tests_passed, align 4
  br label %if.end856

_Dynamic_check.failed843:                         ; preds = %if.end840
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed845:                         ; preds = %_Dynamic_check.succeeded844
  call void @llvm.trap() #6
  unreachable

if.else853:                                       ; preds = %_Dynamic_check.succeeded846
  %call854 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %996 = load i32, i32* @tests_failed, align 4
  %inc855 = add nsw i32 %996, 1
  store i32 %inc855, i32* @tests_failed, align 4
  br label %if.end856

if.end856:                                        ; preds = %if.else853, %if.then850
  %997 = load i8*, i8** %value_type, align 4
  %998 = ptrtoint i8* %997 to i64
  %999 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %998)
  %call857 = call i8* @t_strcpy(i8* %999, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0))
  %1000 = call i32 @c_TPtoO(i8* %call857)
  %1001 = inttoptr i32 %1000 to i8*
  %call858 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 271, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %1002 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1003 = load i8*, i8** %value_type, align 4
  %1004 = ptrtoint %Tstruct.json_object_t_t* %1002 to i32
  %1005 = call i8* @c_fetch_pointer_from_offset(i32 %1004)
  %1006 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1005)
  br i1 %1006, label %_Dynamic_check.succeeded860, label %_Dynamic_check.failed859

_Dynamic_check.succeeded860:                      ; preds = %if.end856
  %1007 = bitcast i8* %1005 to %Tstruct.json_object_t_t*
  %1008 = ptrtoint i8* %1003 to i32
  %1009 = call i8* @c_fetch_pointer_from_offset(i32 %1008)
  %1010 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1009)
  br i1 %1010, label %_Dynamic_check.succeeded862, label %_Dynamic_check.failed861

_Dynamic_check.succeeded862:                      ; preds = %_Dynamic_check.succeeded860
  %call863 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %1007, i8* %1009)
  %1011 = bitcast %Tstruct.json_value_t_t* %call863 to i8*
  %1012 = call i32 @c_TPtoO(i8* %1011)
  %1013 = inttoptr i32 %1012 to %Tstruct.json_value_t_t*
  %1014 = ptrtoint %Tstruct.json_value_t_t* %1013 to i32
  %cmp864 = icmp eq i32 %1014, 0
  br i1 %cmp864, label %if.then866, label %if.else869

if.then866:                                       ; preds = %_Dynamic_check.succeeded862
  %call867 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1015 = load i32, i32* @tests_passed, align 4
  %inc868 = add nsw i32 %1015, 1
  store i32 %inc868, i32* @tests_passed, align 4
  br label %if.end872

_Dynamic_check.failed859:                         ; preds = %if.end856
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed861:                         ; preds = %_Dynamic_check.succeeded860
  call void @llvm.trap() #6
  unreachable

if.else869:                                       ; preds = %_Dynamic_check.succeeded862
  %call870 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1016 = load i32, i32* @tests_failed, align 4
  %inc871 = add nsw i32 %1016, 1
  store i32 %inc871, i32* @tests_failed, align 4
  br label %if.end872

if.end872:                                        ; preds = %if.else869, %if.then866
  %1017 = load i8*, i8** %value_type, align 4
  %1018 = ptrtoint i8* %1017 to i64
  %1019 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1018)
  %call873 = call i8* @t_strcpy(i8* %1019, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0))
  %1020 = call i32 @c_TPtoO(i8* %call873)
  %1021 = inttoptr i32 %1020 to i8*
  %call874 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 273, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %1022 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1023 = load i8*, i8** %value_type, align 4
  %1024 = ptrtoint %Tstruct.json_object_t_t* %1022 to i32
  %1025 = call i8* @c_fetch_pointer_from_offset(i32 %1024)
  %1026 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1025)
  br i1 %1026, label %_Dynamic_check.succeeded876, label %_Dynamic_check.failed875

_Dynamic_check.succeeded876:                      ; preds = %if.end872
  %1027 = bitcast i8* %1025 to %Tstruct.json_object_t_t*
  %1028 = ptrtoint i8* %1023 to i32
  %1029 = call i8* @c_fetch_pointer_from_offset(i32 %1028)
  %1030 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1029)
  br i1 %1030, label %_Dynamic_check.succeeded878, label %_Dynamic_check.failed877

_Dynamic_check.succeeded878:                      ; preds = %_Dynamic_check.succeeded876
  %call879 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %1027, i8* %1029)
  %1031 = bitcast %Tstruct.json_value_t_t* %call879 to i8*
  %1032 = call i32 @c_TPtoO(i8* %1031)
  %1033 = inttoptr i32 %1032 to %Tstruct.json_value_t_t*
  %1034 = ptrtoint %Tstruct.json_value_t_t* %1033 to i32
  %cmp880 = icmp eq i32 %1034, 0
  br i1 %cmp880, label %if.then882, label %if.else885

if.then882:                                       ; preds = %_Dynamic_check.succeeded878
  %call883 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1035 = load i32, i32* @tests_passed, align 4
  %inc884 = add nsw i32 %1035, 1
  store i32 %inc884, i32* @tests_passed, align 4
  br label %if.end888

_Dynamic_check.failed875:                         ; preds = %if.end872
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed877:                         ; preds = %_Dynamic_check.succeeded876
  call void @llvm.trap() #6
  unreachable

if.else885:                                       ; preds = %_Dynamic_check.succeeded878
  %call886 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1036 = load i32, i32* @tests_failed, align 4
  %inc887 = add nsw i32 %1036, 1
  store i32 %inc887, i32* @tests_failed, align 4
  br label %if.end888

if.end888:                                        ; preds = %if.else885, %if.then882
  %1037 = load i8*, i8** %value_type, align 4
  %1038 = ptrtoint i8* %1037 to i64
  %1039 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1038)
  %call889 = call i8* @t_strcpy(i8* %1039, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %1040 = call i32 @c_TPtoO(i8* %call889)
  %1041 = inttoptr i32 %1040 to i8*
  %1042 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1043 = load i8*, i8** %value_type, align 4
  %1044 = ptrtoint %Tstruct.json_object_t_t* %1042 to i32
  %1045 = call i8* @c_fetch_pointer_from_offset(i32 %1044)
  %1046 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1045)
  br i1 %1046, label %_Dynamic_check.succeeded891, label %_Dynamic_check.failed890

_Dynamic_check.succeeded891:                      ; preds = %if.end888
  %1047 = bitcast i8* %1045 to %Tstruct.json_object_t_t*
  %1048 = ptrtoint i8* %1043 to i32
  %1049 = call i8* @c_fetch_pointer_from_offset(i32 %1048)
  %1050 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1049)
  br i1 %1050, label %_Dynamic_check.succeeded893, label %_Dynamic_check.failed892

_Dynamic_check.succeeded893:                      ; preds = %_Dynamic_check.succeeded891
  %call894 = call %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %1047, i8* %1049)
  %1051 = bitcast %Tstruct.json_array_t_t* %call894 to i8*
  %1052 = call i32 @c_TPtoO(i8* %1051)
  %1053 = inttoptr i32 %1052 to %Tstruct.json_array_t_t*
  %1054 = ptrtoint %Tstruct.json_array_t_t* %1053 to i32
  %1055 = bitcast %Tstruct.json_array_t_t** %array to i32*
  store i32 %1054, i32* %1055, align 4
  %call895 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i64 0, i64 0))
  %1056 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1057 = ptrtoint %Tstruct.json_array_t_t* %1056 to i32
  %cmp896 = icmp ne i32 %1057, 0
  br i1 %cmp896, label %if.then898, label %if.else901

if.then898:                                       ; preds = %_Dynamic_check.succeeded893
  %call899 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1058 = load i32, i32* @tests_passed, align 4
  %inc900 = add nsw i32 %1058, 1
  store i32 %inc900, i32* @tests_passed, align 4
  br label %if.end904

_Dynamic_check.failed890:                         ; preds = %if.end888
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed892:                         ; preds = %_Dynamic_check.succeeded891
  call void @llvm.trap() #6
  unreachable

if.else901:                                       ; preds = %_Dynamic_check.succeeded893
  %call902 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1059 = load i32, i32* @tests_failed, align 4
  %inc903 = add nsw i32 %1059, 1
  store i32 %inc903, i32* @tests_failed, align 4
  br label %if.end904

if.end904:                                        ; preds = %if.else901, %if.then898
  %call905 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0))
  %1060 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1061 = ptrtoint %Tstruct.json_array_t_t* %1060 to i32
  %1062 = call i8* @c_fetch_pointer_from_offset(i32 %1061)
  %1063 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1062)
  br i1 %1063, label %_Dynamic_check.succeeded907, label %_Dynamic_check.failed906

_Dynamic_check.succeeded907:                      ; preds = %if.end904
  %1064 = bitcast i8* %1062 to %Tstruct.json_array_t_t*
  %call908 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %1064)
  %cmp909 = icmp ugt i64 %call908, 1
  br i1 %cmp909, label %if.then911, label %if.else914

if.then911:                                       ; preds = %_Dynamic_check.succeeded907
  %call912 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1065 = load i32, i32* @tests_passed, align 4
  %inc913 = add nsw i32 %1065, 1
  store i32 %inc913, i32* @tests_passed, align 4
  br label %if.end917

_Dynamic_check.failed906:                         ; preds = %if.end904
  call void @llvm.trap() #6
  unreachable

if.else914:                                       ; preds = %_Dynamic_check.succeeded907
  %call915 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1066 = load i32, i32* @tests_failed, align 4
  %inc916 = add nsw i32 %1066, 1
  store i32 %inc916, i32* @tests_failed, align 4
  br label %if.end917

if.end917:                                        ; preds = %if.else914, %if.then911
  %1067 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1068 = ptrtoint %Tstruct.json_array_t_t* %1067 to i32
  %cmp918 = icmp ne i32 %1068, 0
  br i1 %cmp918, label %land.lhs.true920, label %if.end973

land.lhs.true920:                                 ; preds = %if.end917
  %1069 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1070 = ptrtoint %Tstruct.json_array_t_t* %1069 to i32
  %1071 = call i8* @c_fetch_pointer_from_offset(i32 %1070)
  %1072 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1071)
  br i1 %1072, label %_Dynamic_check.succeeded922, label %_Dynamic_check.failed921

_Dynamic_check.succeeded922:                      ; preds = %land.lhs.true920
  %1073 = bitcast i8* %1071 to %Tstruct.json_array_t_t*
  %call923 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %1073)
  %cmp924 = icmp ugt i64 %call923, 1
  br i1 %cmp924, label %if.then926, label %if.end973

if.then926:                                       ; preds = %_Dynamic_check.succeeded922
  %1074 = load i8*, i8** %value_type, align 4
  %1075 = ptrtoint i8* %1074 to i64
  %1076 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1075)
  %call927 = call i8* @t_strcpy(i8* %1076, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0))
  %1077 = call i32 @c_TPtoO(i8* %call927)
  %1078 = inttoptr i32 %1077 to i8*
  %call928 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 281, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i64 0, i64 0))
  %1079 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1080 = ptrtoint %Tstruct.json_array_t_t* %1079 to i32
  %1081 = call i8* @c_fetch_pointer_from_offset(i32 %1080)
  %1082 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1081)
  br i1 %1082, label %_Dynamic_check.succeeded930, label %_Dynamic_check.failed929

_Dynamic_check.succeeded930:                      ; preds = %if.then926
  %1083 = bitcast i8* %1081 to %Tstruct.json_array_t_t*
  %call931 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1083, i64 0)
  %1084 = call i32 @c_TPtoO(i8* %call931)
  %1085 = inttoptr i32 %1084 to i8*
  %1086 = call i32 @c_TPtoO(i8* %1085)
  %1087 = call i32 @c_TPtoO(i8* null)
  %tobool932 = icmp ne i32 %1086, %1087
  br i1 %tobool932, label %land.lhs.true933, label %cond.false942

land.lhs.true933:                                 ; preds = %_Dynamic_check.succeeded930
  %1088 = load i8*, i8** %value_type, align 4
  %1089 = call i32 @c_TPtoO(i8* %1088)
  %1090 = call i32 @c_TPtoO(i8* null)
  %tobool934 = icmp ne i32 %1089, %1090
  br i1 %tobool934, label %cond.true935, label %cond.false942

cond.true935:                                     ; preds = %land.lhs.true933
  %1091 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1092 = ptrtoint %Tstruct.json_array_t_t* %1091 to i32
  %1093 = call i8* @c_fetch_pointer_from_offset(i32 %1092)
  %1094 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1093)
  br i1 %1094, label %_Dynamic_check.succeeded937, label %_Dynamic_check.failed936

_Dynamic_check.succeeded937:                      ; preds = %cond.true935
  %1095 = bitcast i8* %1093 to %Tstruct.json_array_t_t*
  %call938 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1095, i64 0)
  %1096 = call i32 @c_TPtoO(i8* %call938)
  %1097 = inttoptr i32 %1096 to i8*
  %1098 = load i8*, i8** %value_type, align 4
  %1099 = ptrtoint i8* %1097 to i64
  %1100 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1099)
  %1101 = ptrtoint i8* %1098 to i64
  %1102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1101)
  %call939 = call i32 @t_strcmp(i8* %1100, i8* %1102)
  %cmp940 = icmp eq i32 %call939, 0
  br i1 %cmp940, label %if.then943, label %if.else946

cond.false942:                                    ; preds = %land.lhs.true933, %_Dynamic_check.succeeded930
  br i1 false, label %if.then943, label %if.else946

if.then943:                                       ; preds = %cond.false942, %_Dynamic_check.succeeded937
  %call944 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1103 = load i32, i32* @tests_passed, align 4
  %inc945 = add nsw i32 %1103, 1
  store i32 %inc945, i32* @tests_passed, align 4
  br label %if.end949

_Dynamic_check.failed921:                         ; preds = %land.lhs.true920
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed929:                         ; preds = %if.then926
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed936:                         ; preds = %cond.true935
  call void @llvm.trap() #6
  unreachable

if.else946:                                       ; preds = %cond.false942, %_Dynamic_check.succeeded937
  %call947 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1104 = load i32, i32* @tests_failed, align 4
  %inc948 = add nsw i32 %1104, 1
  store i32 %inc948, i32* @tests_failed, align 4
  br label %if.end949

if.end949:                                        ; preds = %if.else946, %if.then943
  %1105 = load i8*, i8** %value_type, align 4
  %1106 = ptrtoint i8* %1105 to i64
  %1107 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1106)
  %call950 = call i8* @t_strcpy(i8* %1107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0))
  %1108 = call i32 @c_TPtoO(i8* %call950)
  %1109 = inttoptr i32 %1108 to i8*
  %call951 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.101, i64 0, i64 0))
  %1110 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1111 = ptrtoint %Tstruct.json_array_t_t* %1110 to i32
  %1112 = call i8* @c_fetch_pointer_from_offset(i32 %1111)
  %1113 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1112)
  br i1 %1113, label %_Dynamic_check.succeeded953, label %_Dynamic_check.failed952

_Dynamic_check.succeeded953:                      ; preds = %if.end949
  %1114 = bitcast i8* %1112 to %Tstruct.json_array_t_t*
  %call954 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1114, i64 1)
  %1115 = call i32 @c_TPtoO(i8* %call954)
  %1116 = inttoptr i32 %1115 to i8*
  %1117 = call i32 @c_TPtoO(i8* %1116)
  %1118 = call i32 @c_TPtoO(i8* null)
  %tobool955 = icmp ne i32 %1117, %1118
  br i1 %tobool955, label %land.lhs.true956, label %cond.false965

land.lhs.true956:                                 ; preds = %_Dynamic_check.succeeded953
  %1119 = load i8*, i8** %value_type, align 4
  %1120 = call i32 @c_TPtoO(i8* %1119)
  %1121 = call i32 @c_TPtoO(i8* null)
  %tobool957 = icmp ne i32 %1120, %1121
  br i1 %tobool957, label %cond.true958, label %cond.false965

cond.true958:                                     ; preds = %land.lhs.true956
  %1122 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1123 = ptrtoint %Tstruct.json_array_t_t* %1122 to i32
  %1124 = call i8* @c_fetch_pointer_from_offset(i32 %1123)
  %1125 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1124)
  br i1 %1125, label %_Dynamic_check.succeeded960, label %_Dynamic_check.failed959

_Dynamic_check.succeeded960:                      ; preds = %cond.true958
  %1126 = bitcast i8* %1124 to %Tstruct.json_array_t_t*
  %call961 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1126, i64 1)
  %1127 = call i32 @c_TPtoO(i8* %call961)
  %1128 = inttoptr i32 %1127 to i8*
  %1129 = load i8*, i8** %value_type, align 4
  %1130 = ptrtoint i8* %1128 to i64
  %1131 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1130)
  %1132 = ptrtoint i8* %1129 to i64
  %1133 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1132)
  %call962 = call i32 @t_strcmp(i8* %1131, i8* %1133)
  %cmp963 = icmp eq i32 %call962, 0
  br i1 %cmp963, label %if.then966, label %if.else969

cond.false965:                                    ; preds = %land.lhs.true956, %_Dynamic_check.succeeded953
  br i1 false, label %if.then966, label %if.else969

if.then966:                                       ; preds = %cond.false965, %_Dynamic_check.succeeded960
  %call967 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1134 = load i32, i32* @tests_passed, align 4
  %inc968 = add nsw i32 %1134, 1
  store i32 %inc968, i32* @tests_passed, align 4
  br label %if.end972

_Dynamic_check.failed952:                         ; preds = %if.end949
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed959:                         ; preds = %cond.true958
  call void @llvm.trap() #6
  unreachable

if.else969:                                       ; preds = %cond.false965, %_Dynamic_check.succeeded960
  %call970 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1135 = load i32, i32* @tests_failed, align 4
  %inc971 = add nsw i32 %1135, 1
  store i32 %inc971, i32* @tests_failed, align 4
  br label %if.end972

if.end972:                                        ; preds = %if.else969, %if.then966
  br label %if.end973

if.end973:                                        ; preds = %if.end972, %_Dynamic_check.succeeded922, %if.end917
  %1136 = load i8*, i8** %value_type, align 4
  %1137 = ptrtoint i8* %1136 to i64
  %1138 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1137)
  %call974 = call i8* @t_strcpy(i8* %1138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0))
  %1139 = call i32 @c_TPtoO(i8* %call974)
  %1140 = inttoptr i32 %1139 to i8*
  %call975 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 286, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  %1141 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1142 = load i8*, i8** %value_type, align 4
  %1143 = ptrtoint %Tstruct.json_object_t_t* %1141 to i32
  %1144 = call i8* @c_fetch_pointer_from_offset(i32 %1143)
  %1145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1144)
  br i1 %1145, label %_Dynamic_check.succeeded977, label %_Dynamic_check.failed976

_Dynamic_check.succeeded977:                      ; preds = %if.end973
  %1146 = bitcast i8* %1144 to %Tstruct.json_object_t_t*
  %1147 = ptrtoint i8* %1142 to i32
  %1148 = call i8* @c_fetch_pointer_from_offset(i32 %1147)
  %1149 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1148)
  br i1 %1149, label %_Dynamic_check.succeeded979, label %_Dynamic_check.failed978

_Dynamic_check.succeeded979:                      ; preds = %_Dynamic_check.succeeded977
  %call980 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %1146, i8* %1148)
  %cmp981 = icmp eq i32 %call980, 1
  br i1 %cmp981, label %if.then983, label %if.else986

if.then983:                                       ; preds = %_Dynamic_check.succeeded979
  %call984 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1150 = load i32, i32* @tests_passed, align 4
  %inc985 = add nsw i32 %1150, 1
  store i32 %inc985, i32* @tests_passed, align 4
  br label %if.end989

_Dynamic_check.failed976:                         ; preds = %if.end973
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed978:                         ; preds = %_Dynamic_check.succeeded977
  call void @llvm.trap() #6
  unreachable

if.else986:                                       ; preds = %_Dynamic_check.succeeded979
  %call987 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1151 = load i32, i32* @tests_failed, align 4
  %inc988 = add nsw i32 %1151, 1
  store i32 %inc988, i32* @tests_failed, align 4
  br label %if.end989

if.end989:                                        ; preds = %if.else986, %if.then983
  %1152 = load i8*, i8** %value_type, align 4
  %1153 = ptrtoint i8* %1152 to i64
  %1154 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1153)
  %call990 = call i8* @t_strcpy(i8* %1154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0))
  %1155 = call i32 @c_TPtoO(i8* %call990)
  %1156 = inttoptr i32 %1155 to i8*
  %call991 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i64 0, i64 0))
  %1157 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1158 = load i8*, i8** %value_type, align 4
  %1159 = ptrtoint %Tstruct.json_object_t_t* %1157 to i32
  %1160 = call i8* @c_fetch_pointer_from_offset(i32 %1159)
  %1161 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1160)
  br i1 %1161, label %_Dynamic_check.succeeded993, label %_Dynamic_check.failed992

_Dynamic_check.succeeded993:                      ; preds = %if.end989
  %1162 = bitcast i8* %1160 to %Tstruct.json_object_t_t*
  %1163 = ptrtoint i8* %1158 to i32
  %1164 = call i8* @c_fetch_pointer_from_offset(i32 %1163)
  %1165 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1164)
  br i1 %1165, label %_Dynamic_check.succeeded995, label %_Dynamic_check.failed994

_Dynamic_check.succeeded995:                      ; preds = %_Dynamic_check.succeeded993
  %call996 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1162, i8* %1164)
  %1166 = call i32 @c_TPtoO(i8* %call996)
  %1167 = inttoptr i32 %1166 to i8*
  %1168 = call i32 @c_TPtoO(i8* %1167)
  %1169 = call i32 @c_TPtoO(i8* null)
  %tobool997 = icmp ne i32 %1168, %1169
  br i1 %tobool997, label %land.lhs.true998, label %cond.false1009

land.lhs.true998:                                 ; preds = %_Dynamic_check.succeeded995
  %1170 = call i32 @c_TPtoO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i64 0, i64 0))
  %1171 = call i32 @c_TPtoO(i8* null)
  %tobool999 = icmp ne i32 %1170, %1171
  br i1 %tobool999, label %cond.true1000, label %cond.false1009

cond.true1000:                                    ; preds = %land.lhs.true998
  %1172 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1173 = load i8*, i8** %value_type, align 4
  %1174 = ptrtoint %Tstruct.json_object_t_t* %1172 to i32
  %1175 = call i8* @c_fetch_pointer_from_offset(i32 %1174)
  %1176 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1175)
  br i1 %1176, label %_Dynamic_check.succeeded1002, label %_Dynamic_check.failed1001

_Dynamic_check.succeeded1002:                     ; preds = %cond.true1000
  %1177 = bitcast i8* %1175 to %Tstruct.json_object_t_t*
  %1178 = ptrtoint i8* %1173 to i32
  %1179 = call i8* @c_fetch_pointer_from_offset(i32 %1178)
  %1180 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1179)
  br i1 %1180, label %_Dynamic_check.succeeded1004, label %_Dynamic_check.failed1003

_Dynamic_check.succeeded1004:                     ; preds = %_Dynamic_check.succeeded1002
  %call1005 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1177, i8* %1179)
  %1181 = call i32 @c_TPtoO(i8* %call1005)
  %1182 = inttoptr i32 %1181 to i8*
  %1183 = ptrtoint i8* %1182 to i64
  %1184 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1183)
  %call1006 = call i32 @t_strcmp(i8* %1184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i64 0, i64 0))
  %cmp1007 = icmp eq i32 %call1006, 0
  br i1 %cmp1007, label %if.then1010, label %if.else1013

cond.false1009:                                   ; preds = %land.lhs.true998, %_Dynamic_check.succeeded995
  br i1 false, label %if.then1010, label %if.else1013

if.then1010:                                      ; preds = %cond.false1009, %_Dynamic_check.succeeded1004
  %call1011 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1185 = load i32, i32* @tests_passed, align 4
  %inc1012 = add nsw i32 %1185, 1
  store i32 %inc1012, i32* @tests_passed, align 4
  br label %if.end1016

_Dynamic_check.failed992:                         ; preds = %if.end989
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed994:                         ; preds = %_Dynamic_check.succeeded993
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1001:                        ; preds = %cond.true1000
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1003:                        ; preds = %_Dynamic_check.succeeded1002
  call void @llvm.trap() #6
  unreachable

if.else1013:                                      ; preds = %cond.false1009, %_Dynamic_check.succeeded1004
  %call1014 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1186 = load i32, i32* @tests_failed, align 4
  %inc1015 = add nsw i32 %1186, 1
  store i32 %inc1015, i32* @tests_failed, align 4
  br label %if.end1016

if.end1016:                                       ; preds = %if.else1013, %if.then1010
  %1187 = load i8*, i8** %value_type, align 4
  %1188 = ptrtoint i8* %1187 to i64
  %1189 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1188)
  %call1017 = call i8* @t_strcpy(i8* %1189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0))
  %1190 = call i32 @c_TPtoO(i8* %call1017)
  %1191 = inttoptr i32 %1190 to i8*
  %call1018 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i64 0, i64 0))
  %1192 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1193 = load i8*, i8** %value_type, align 4
  %1194 = ptrtoint %Tstruct.json_object_t_t* %1192 to i32
  %1195 = call i8* @c_fetch_pointer_from_offset(i32 %1194)
  %1196 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1195)
  br i1 %1196, label %_Dynamic_check.succeeded1020, label %_Dynamic_check.failed1019

_Dynamic_check.succeeded1020:                     ; preds = %if.end1016
  %1197 = bitcast i8* %1195 to %Tstruct.json_object_t_t*
  %1198 = ptrtoint i8* %1193 to i32
  %1199 = call i8* @c_fetch_pointer_from_offset(i32 %1198)
  %1200 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1199)
  br i1 %1200, label %_Dynamic_check.succeeded1022, label %_Dynamic_check.failed1021

_Dynamic_check.succeeded1022:                     ; preds = %_Dynamic_check.succeeded1020
  %call1023 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1197, i8* %1199)
  %1201 = call i32 @c_TPtoO(i8* %call1023)
  %1202 = inttoptr i32 %1201 to i8*
  %1203 = call i32 @c_TPtoO(i8* %1202)
  %1204 = call i32 @c_TPtoO(i8* null)
  %tobool1024 = icmp ne i32 %1203, %1204
  br i1 %tobool1024, label %land.lhs.true1025, label %cond.false1036

land.lhs.true1025:                                ; preds = %_Dynamic_check.succeeded1022
  %1205 = call i32 @c_TPtoO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i64 0, i64 0))
  %1206 = call i32 @c_TPtoO(i8* null)
  %tobool1026 = icmp ne i32 %1205, %1206
  br i1 %tobool1026, label %cond.true1027, label %cond.false1036

cond.true1027:                                    ; preds = %land.lhs.true1025
  %1207 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1208 = load i8*, i8** %value_type, align 4
  %1209 = ptrtoint %Tstruct.json_object_t_t* %1207 to i32
  %1210 = call i8* @c_fetch_pointer_from_offset(i32 %1209)
  %1211 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1210)
  br i1 %1211, label %_Dynamic_check.succeeded1029, label %_Dynamic_check.failed1028

_Dynamic_check.succeeded1029:                     ; preds = %cond.true1027
  %1212 = bitcast i8* %1210 to %Tstruct.json_object_t_t*
  %1213 = ptrtoint i8* %1208 to i32
  %1214 = call i8* @c_fetch_pointer_from_offset(i32 %1213)
  %1215 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1214)
  br i1 %1215, label %_Dynamic_check.succeeded1031, label %_Dynamic_check.failed1030

_Dynamic_check.succeeded1031:                     ; preds = %_Dynamic_check.succeeded1029
  %call1032 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1212, i8* %1214)
  %1216 = call i32 @c_TPtoO(i8* %call1032)
  %1217 = inttoptr i32 %1216 to i8*
  %1218 = ptrtoint i8* %1217 to i64
  %1219 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1218)
  %call1033 = call i32 @t_strcmp(i8* %1219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i64 0, i64 0))
  %cmp1034 = icmp eq i32 %call1033, 0
  br i1 %cmp1034, label %if.then1037, label %if.else1040

cond.false1036:                                   ; preds = %land.lhs.true1025, %_Dynamic_check.succeeded1022
  br i1 false, label %if.then1037, label %if.else1040

if.then1037:                                      ; preds = %cond.false1036, %_Dynamic_check.succeeded1031
  %call1038 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1220 = load i32, i32* @tests_passed, align 4
  %inc1039 = add nsw i32 %1220, 1
  store i32 %inc1039, i32* @tests_passed, align 4
  br label %if.end1043

_Dynamic_check.failed1019:                        ; preds = %if.end1016
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1021:                        ; preds = %_Dynamic_check.succeeded1020
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1028:                        ; preds = %cond.true1027
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1030:                        ; preds = %_Dynamic_check.succeeded1029
  call void @llvm.trap() #6
  unreachable

if.else1040:                                      ; preds = %cond.false1036, %_Dynamic_check.succeeded1031
  %call1041 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1221 = load i32, i32* @tests_failed, align 4
  %inc1042 = add nsw i32 %1221, 1
  store i32 %inc1042, i32* @tests_failed, align 4
  br label %if.end1043

if.end1043:                                       ; preds = %if.else1040, %if.then1037
  %1222 = load i8*, i8** %value_type, align 4
  %1223 = ptrtoint i8* %1222 to i64
  %1224 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1223)
  %call1044 = call i8* @t_strcpy(i8* %1224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0))
  %1225 = call i32 @c_TPtoO(i8* %call1044)
  %1226 = inttoptr i32 %1225 to i8*
  %call1045 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.107, i64 0, i64 0))
  %1227 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1228 = load i8*, i8** %value_type, align 4
  %1229 = ptrtoint %Tstruct.json_object_t_t* %1227 to i32
  %1230 = call i8* @c_fetch_pointer_from_offset(i32 %1229)
  %1231 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1230)
  br i1 %1231, label %_Dynamic_check.succeeded1047, label %_Dynamic_check.failed1046

_Dynamic_check.succeeded1047:                     ; preds = %if.end1043
  %1232 = bitcast i8* %1230 to %Tstruct.json_object_t_t*
  %1233 = ptrtoint i8* %1228 to i32
  %1234 = call i8* @c_fetch_pointer_from_offset(i32 %1233)
  %1235 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1234)
  br i1 %1235, label %_Dynamic_check.succeeded1049, label %_Dynamic_check.failed1048

_Dynamic_check.succeeded1049:                     ; preds = %_Dynamic_check.succeeded1047
  %call1050 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1232, i8* %1234)
  %1236 = call i32 @c_TPtoO(i8* %call1050)
  %1237 = inttoptr i32 %1236 to i8*
  %1238 = call i32 @c_TPtoO(i8* %1237)
  %1239 = call i32 @c_TPtoO(i8* null)
  %tobool1051 = icmp ne i32 %1238, %1239
  br i1 %tobool1051, label %land.lhs.true1052, label %cond.false1063

land.lhs.true1052:                                ; preds = %_Dynamic_check.succeeded1049
  %1240 = call i32 @c_TPtoO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i64 0, i64 0))
  %1241 = call i32 @c_TPtoO(i8* null)
  %tobool1053 = icmp ne i32 %1240, %1241
  br i1 %tobool1053, label %cond.true1054, label %cond.false1063

cond.true1054:                                    ; preds = %land.lhs.true1052
  %1242 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1243 = load i8*, i8** %value_type, align 4
  %1244 = ptrtoint %Tstruct.json_object_t_t* %1242 to i32
  %1245 = call i8* @c_fetch_pointer_from_offset(i32 %1244)
  %1246 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1245)
  br i1 %1246, label %_Dynamic_check.succeeded1056, label %_Dynamic_check.failed1055

_Dynamic_check.succeeded1056:                     ; preds = %cond.true1054
  %1247 = bitcast i8* %1245 to %Tstruct.json_object_t_t*
  %1248 = ptrtoint i8* %1243 to i32
  %1249 = call i8* @c_fetch_pointer_from_offset(i32 %1248)
  %1250 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1249)
  br i1 %1250, label %_Dynamic_check.succeeded1058, label %_Dynamic_check.failed1057

_Dynamic_check.succeeded1058:                     ; preds = %_Dynamic_check.succeeded1056
  %call1059 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1247, i8* %1249)
  %1251 = call i32 @c_TPtoO(i8* %call1059)
  %1252 = inttoptr i32 %1251 to i8*
  %1253 = ptrtoint i8* %1252 to i64
  %1254 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1253)
  %call1060 = call i32 @t_strcmp(i8* %1254, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i64 0, i64 0))
  %cmp1061 = icmp eq i32 %call1060, 0
  br i1 %cmp1061, label %if.then1064, label %if.else1067

cond.false1063:                                   ; preds = %land.lhs.true1052, %_Dynamic_check.succeeded1049
  br i1 false, label %if.then1064, label %if.else1067

if.then1064:                                      ; preds = %cond.false1063, %_Dynamic_check.succeeded1058
  %call1065 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1255 = load i32, i32* @tests_passed, align 4
  %inc1066 = add nsw i32 %1255, 1
  store i32 %inc1066, i32* @tests_passed, align 4
  br label %if.end1070

_Dynamic_check.failed1046:                        ; preds = %if.end1043
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1048:                        ; preds = %_Dynamic_check.succeeded1047
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1055:                        ; preds = %cond.true1054
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1057:                        ; preds = %_Dynamic_check.succeeded1056
  call void @llvm.trap() #6
  unreachable

if.else1067:                                      ; preds = %cond.false1063, %_Dynamic_check.succeeded1058
  %call1068 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1256 = load i32, i32* @tests_failed, align 4
  %inc1069 = add nsw i32 %1256, 1
  store i32 %inc1069, i32* @tests_failed, align 4
  br label %if.end1070

if.end1070:                                       ; preds = %if.else1067, %if.then1064
  %1257 = load i8*, i8** %value_type, align 4
  %1258 = ptrtoint i8* %1257 to i64
  %1259 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1258)
  %call1071 = call i8* @t_strcpy(i8* %1259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i64 0, i64 0))
  %1260 = call i32 @c_TPtoO(i8* %call1071)
  %1261 = inttoptr i32 %1260 to i8*
  %call1072 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.110, i64 0, i64 0))
  %1262 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1263 = load i8*, i8** %value_type, align 4
  %1264 = ptrtoint %Tstruct.json_object_t_t* %1262 to i32
  %1265 = call i8* @c_fetch_pointer_from_offset(i32 %1264)
  %1266 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1265)
  br i1 %1266, label %_Dynamic_check.succeeded1074, label %_Dynamic_check.failed1073

_Dynamic_check.succeeded1074:                     ; preds = %if.end1070
  %1267 = bitcast i8* %1265 to %Tstruct.json_object_t_t*
  %1268 = ptrtoint i8* %1263 to i32
  %1269 = call i8* @c_fetch_pointer_from_offset(i32 %1268)
  %1270 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1269)
  br i1 %1270, label %_Dynamic_check.succeeded1076, label %_Dynamic_check.failed1075

_Dynamic_check.succeeded1076:                     ; preds = %_Dynamic_check.succeeded1074
  %call1077 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1267, i8* %1269)
  %1271 = call i32 @c_TPtoO(i8* %call1077)
  %1272 = inttoptr i32 %1271 to i8*
  %1273 = call i32 @c_TPtoO(i8* %1272)
  %1274 = call i32 @c_TPtoO(i8* null)
  %tobool1078 = icmp ne i32 %1273, %1274
  br i1 %tobool1078, label %land.lhs.true1079, label %cond.false1090

land.lhs.true1079:                                ; preds = %_Dynamic_check.succeeded1076
  %1275 = call i32 @c_TPtoO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0))
  %1276 = call i32 @c_TPtoO(i8* null)
  %tobool1080 = icmp ne i32 %1275, %1276
  br i1 %tobool1080, label %cond.true1081, label %cond.false1090

cond.true1081:                                    ; preds = %land.lhs.true1079
  %1277 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1278 = load i8*, i8** %value_type, align 4
  %1279 = ptrtoint %Tstruct.json_object_t_t* %1277 to i32
  %1280 = call i8* @c_fetch_pointer_from_offset(i32 %1279)
  %1281 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1280)
  br i1 %1281, label %_Dynamic_check.succeeded1083, label %_Dynamic_check.failed1082

_Dynamic_check.succeeded1083:                     ; preds = %cond.true1081
  %1282 = bitcast i8* %1280 to %Tstruct.json_object_t_t*
  %1283 = ptrtoint i8* %1278 to i32
  %1284 = call i8* @c_fetch_pointer_from_offset(i32 %1283)
  %1285 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1284)
  br i1 %1285, label %_Dynamic_check.succeeded1085, label %_Dynamic_check.failed1084

_Dynamic_check.succeeded1085:                     ; preds = %_Dynamic_check.succeeded1083
  %call1086 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1282, i8* %1284)
  %1286 = call i32 @c_TPtoO(i8* %call1086)
  %1287 = inttoptr i32 %1286 to i8*
  %1288 = ptrtoint i8* %1287 to i64
  %1289 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1288)
  %call1087 = call i32 @t_strcmp(i8* %1289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0))
  %cmp1088 = icmp eq i32 %call1087, 0
  br i1 %cmp1088, label %if.then1091, label %if.else1094

cond.false1090:                                   ; preds = %land.lhs.true1079, %_Dynamic_check.succeeded1076
  br i1 false, label %if.then1091, label %if.else1094

if.then1091:                                      ; preds = %cond.false1090, %_Dynamic_check.succeeded1085
  %call1092 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1290 = load i32, i32* @tests_passed, align 4
  %inc1093 = add nsw i32 %1290, 1
  store i32 %inc1093, i32* @tests_passed, align 4
  br label %if.end1097

_Dynamic_check.failed1073:                        ; preds = %if.end1070
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1075:                        ; preds = %_Dynamic_check.succeeded1074
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1082:                        ; preds = %cond.true1081
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1084:                        ; preds = %_Dynamic_check.succeeded1083
  call void @llvm.trap() #6
  unreachable

if.else1094:                                      ; preds = %cond.false1090, %_Dynamic_check.succeeded1085
  %call1095 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1291 = load i32, i32* @tests_failed, align 4
  %inc1096 = add nsw i32 %1291, 1
  store i32 %inc1096, i32* @tests_failed, align 4
  br label %if.end1097

if.end1097:                                       ; preds = %if.else1094, %if.then1091
  %1292 = load i8*, i8** %value_type, align 4
  %1293 = ptrtoint i8* %1292 to i64
  %1294 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1293)
  %call1098 = call i8* @t_strcpy(i8* %1294, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i64 0, i64 0))
  %1295 = call i32 @c_TPtoO(i8* %call1098)
  %1296 = inttoptr i32 %1295 to i8*
  %call1099 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.113, i64 0, i64 0))
  %1297 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1298 = load i8*, i8** %value_type, align 4
  %1299 = ptrtoint %Tstruct.json_object_t_t* %1297 to i32
  %1300 = call i8* @c_fetch_pointer_from_offset(i32 %1299)
  %1301 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1300)
  br i1 %1301, label %_Dynamic_check.succeeded1101, label %_Dynamic_check.failed1100

_Dynamic_check.succeeded1101:                     ; preds = %if.end1097
  %1302 = bitcast i8* %1300 to %Tstruct.json_object_t_t*
  %1303 = ptrtoint i8* %1298 to i32
  %1304 = call i8* @c_fetch_pointer_from_offset(i32 %1303)
  %1305 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1304)
  br i1 %1305, label %_Dynamic_check.succeeded1103, label %_Dynamic_check.failed1102

_Dynamic_check.succeeded1103:                     ; preds = %_Dynamic_check.succeeded1101
  %call1104 = call %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %1302, i8* %1304)
  %1306 = bitcast %Tstruct.json_object_t_t* %call1104 to i8*
  %1307 = call i32 @c_TPtoO(i8* %1306)
  %1308 = inttoptr i32 %1307 to %Tstruct.json_object_t_t*
  %1309 = ptrtoint %Tstruct.json_object_t_t* %1308 to i32
  %cmp1105 = icmp ne i32 %1309, 0
  br i1 %cmp1105, label %if.then1107, label %if.else1110

if.then1107:                                      ; preds = %_Dynamic_check.succeeded1103
  %call1108 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1310 = load i32, i32* @tests_passed, align 4
  %inc1109 = add nsw i32 %1310, 1
  store i32 %inc1109, i32* @tests_passed, align 4
  br label %if.end1113

_Dynamic_check.failed1100:                        ; preds = %if.end1097
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1102:                        ; preds = %_Dynamic_check.succeeded1101
  call void @llvm.trap() #6
  unreachable

if.else1110:                                      ; preds = %_Dynamic_check.succeeded1103
  %call1111 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1311 = load i32, i32* @tests_failed, align 4
  %inc1112 = add nsw i32 %1311, 1
  store i32 %inc1112, i32* @tests_failed, align 4
  br label %if.end1113

if.end1113:                                       ; preds = %if.else1110, %if.then1107
  %1312 = load i8*, i8** %value_type, align 4
  %1313 = ptrtoint i8* %1312 to i64
  %1314 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1313)
  %call1114 = call i8* @t_strcpy(i8* %1314, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i64 0, i64 0))
  %1315 = call i32 @c_TPtoO(i8* %call1114)
  %1316 = inttoptr i32 %1315 to i8*
  %call1115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 299, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.115, i64 0, i64 0))
  %1317 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1318 = load i8*, i8** %value_type, align 4
  %1319 = ptrtoint %Tstruct.json_object_t_t* %1317 to i32
  %1320 = call i8* @c_fetch_pointer_from_offset(i32 %1319)
  %1321 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1320)
  br i1 %1321, label %_Dynamic_check.succeeded1117, label %_Dynamic_check.failed1116

_Dynamic_check.succeeded1117:                     ; preds = %if.end1113
  %1322 = bitcast i8* %1320 to %Tstruct.json_object_t_t*
  %1323 = ptrtoint i8* %1318 to i32
  %1324 = call i8* @c_fetch_pointer_from_offset(i32 %1323)
  %1325 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1324)
  br i1 %1325, label %_Dynamic_check.succeeded1119, label %_Dynamic_check.failed1118

_Dynamic_check.succeeded1119:                     ; preds = %_Dynamic_check.succeeded1117
  %call1120 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %1322, i8* %1324)
  %1326 = bitcast %Tstruct.json_array_t_t* %call1120 to i8*
  %1327 = call i32 @c_TPtoO(i8* %1326)
  %1328 = inttoptr i32 %1327 to %Tstruct.json_array_t_t*
  %1329 = ptrtoint %Tstruct.json_array_t_t* %1328 to i32
  %cmp1121 = icmp ne i32 %1329, 0
  br i1 %cmp1121, label %if.then1123, label %if.else1126

if.then1123:                                      ; preds = %_Dynamic_check.succeeded1119
  %call1124 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1330 = load i32, i32* @tests_passed, align 4
  %inc1125 = add nsw i32 %1330, 1
  store i32 %inc1125, i32* @tests_passed, align 4
  br label %if.end1129

_Dynamic_check.failed1116:                        ; preds = %if.end1113
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1118:                        ; preds = %_Dynamic_check.succeeded1117
  call void @llvm.trap() #6
  unreachable

if.else1126:                                      ; preds = %_Dynamic_check.succeeded1119
  %call1127 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1331 = load i32, i32* @tests_failed, align 4
  %inc1128 = add nsw i32 %1331, 1
  store i32 %inc1128, i32* @tests_failed, align 4
  br label %if.end1129

if.end1129:                                       ; preds = %if.else1126, %if.then1123
  %call1130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.116, i64 0, i64 0))
  %1332 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1333 = ptrtoint %Tstruct.json_object_t_t* %1332 to i32
  %1334 = call i8* @c_fetch_pointer_from_offset(i32 %1333)
  %1335 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1334)
  br i1 %1335, label %_Dynamic_check.succeeded1132, label %_Dynamic_check.failed1131

_Dynamic_check.succeeded1132:                     ; preds = %if.end1129
  %1336 = bitcast i8* %1334 to %Tstruct.json_object_t_t*
  %call1133 = call %Tstruct.json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %1336)
  %1337 = bitcast %Tstruct.json_value_t_t* %call1133 to i8*
  %1338 = call i32 @c_TPtoO(i8* %1337)
  %1339 = inttoptr i32 %1338 to %Tstruct.json_value_t_t*
  %1340 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %1341 = ptrtoint %Tstruct.json_value_t_t* %1339 to i32
  %1342 = ptrtoint %Tstruct.json_value_t_t* %1340 to i32
  %cmp1134 = icmp eq i32 %1341, %1342
  br i1 %cmp1134, label %if.then1136, label %if.else1139

if.then1136:                                      ; preds = %_Dynamic_check.succeeded1132
  %call1137 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1343 = load i32, i32* @tests_passed, align 4
  %inc1138 = add nsw i32 %1343, 1
  store i32 %inc1138, i32* @tests_passed, align 4
  br label %if.end1142

_Dynamic_check.failed1131:                        ; preds = %if.end1129
  call void @llvm.trap() #6
  unreachable

if.else1139:                                      ; preds = %_Dynamic_check.succeeded1132
  %call1140 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1344 = load i32, i32* @tests_failed, align 4
  %inc1141 = add nsw i32 %1344, 1
  store i32 %inc1141, i32* @tests_failed, align 4
  br label %if.end1142

if.end1142:                                       ; preds = %if.else1139, %if.then1136
  %1345 = load i8*, i8** %value_type, align 4
  %1346 = ptrtoint i8* %1345 to i64
  %1347 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1346)
  %call1143 = call i8* @t_strcpy(i8* %1347, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %1348 = call i32 @c_TPtoO(i8* %call1143)
  %1349 = inttoptr i32 %1348 to i8*
  %1350 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1351 = load i8*, i8** %value_type, align 4
  %1352 = ptrtoint %Tstruct.json_object_t_t* %1350 to i32
  %1353 = call i8* @c_fetch_pointer_from_offset(i32 %1352)
  %1354 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1353)
  br i1 %1354, label %_Dynamic_check.succeeded1145, label %_Dynamic_check.failed1144

_Dynamic_check.succeeded1145:                     ; preds = %if.end1142
  %1355 = bitcast i8* %1353 to %Tstruct.json_object_t_t*
  %1356 = ptrtoint i8* %1351 to i32
  %1357 = call i8* @c_fetch_pointer_from_offset(i32 %1356)
  %1358 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1357)
  br i1 %1358, label %_Dynamic_check.succeeded1147, label %_Dynamic_check.failed1146

_Dynamic_check.succeeded1147:                     ; preds = %_Dynamic_check.succeeded1145
  %call1148 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %1355, i8* %1357)
  %1359 = bitcast %Tstruct.json_array_t_t* %call1148 to i8*
  %1360 = call i32 @c_TPtoO(i8* %1359)
  %1361 = inttoptr i32 %1360 to %Tstruct.json_array_t_t*
  %1362 = ptrtoint %Tstruct.json_array_t_t* %1361 to i32
  %1363 = bitcast %Tstruct.json_array_t_t** %array to i32*
  store i32 %1362, i32* %1363, align 4
  %1364 = load i8*, i8** %value_type, align 4
  %1365 = ptrtoint i8* %1364 to i64
  %1366 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1365)
  %call1149 = call i8* @t_strcpy(i8* %1366, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %1367 = call i32 @c_TPtoO(i8* %call1149)
  %1368 = inttoptr i32 %1367 to i8*
  %1369 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1370 = load i8*, i8** %value_type, align 4
  %1371 = ptrtoint %Tstruct.json_object_t_t* %1369 to i32
  %1372 = call i8* @c_fetch_pointer_from_offset(i32 %1371)
  %1373 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1372)
  br i1 %1373, label %_Dynamic_check.succeeded1151, label %_Dynamic_check.failed1150

_Dynamic_check.succeeded1151:                     ; preds = %_Dynamic_check.succeeded1147
  %1374 = bitcast i8* %1372 to %Tstruct.json_object_t_t*
  %1375 = ptrtoint i8* %1370 to i32
  %1376 = call i8* @c_fetch_pointer_from_offset(i32 %1375)
  %1377 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1376)
  br i1 %1377, label %_Dynamic_check.succeeded1153, label %_Dynamic_check.failed1152

_Dynamic_check.succeeded1153:                     ; preds = %_Dynamic_check.succeeded1151
  %call1154 = call %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %1374, i8* %1376)
  %1378 = bitcast %Tstruct.json_value_t_t* %call1154 to i8*
  %1379 = call i32 @c_TPtoO(i8* %1378)
  %1380 = inttoptr i32 %1379 to %Tstruct.json_value_t_t*
  %1381 = ptrtoint %Tstruct.json_value_t_t* %1380 to i32
  %1382 = bitcast %Tstruct.json_value_t_t** %array_value to i32*
  store i32 %1381, i32* %1382, align 4
  %call1155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.117, i64 0, i64 0))
  %1383 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1384 = ptrtoint %Tstruct.json_array_t_t* %1383 to i32
  %1385 = call i8* @c_fetch_pointer_from_offset(i32 %1384)
  %1386 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1385)
  br i1 %1386, label %_Dynamic_check.succeeded1157, label %_Dynamic_check.failed1156

_Dynamic_check.succeeded1157:                     ; preds = %_Dynamic_check.succeeded1153
  %1387 = bitcast i8* %1385 to %Tstruct.json_array_t_t*
  %call1158 = call %Tstruct.json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %1387)
  %1388 = bitcast %Tstruct.json_value_t_t* %call1158 to i8*
  %1389 = call i32 @c_TPtoO(i8* %1388)
  %1390 = inttoptr i32 %1389 to %Tstruct.json_value_t_t*
  %1391 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %array_value, align 4
  %1392 = ptrtoint %Tstruct.json_value_t_t* %1390 to i32
  %1393 = ptrtoint %Tstruct.json_value_t_t* %1391 to i32
  %cmp1159 = icmp eq i32 %1392, %1393
  br i1 %cmp1159, label %if.then1161, label %if.else1164

if.then1161:                                      ; preds = %_Dynamic_check.succeeded1157
  %call1162 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1394 = load i32, i32* @tests_passed, align 4
  %inc1163 = add nsw i32 %1394, 1
  store i32 %inc1163, i32* @tests_passed, align 4
  br label %if.end1167

_Dynamic_check.failed1144:                        ; preds = %if.end1142
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1146:                        ; preds = %_Dynamic_check.succeeded1145
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1150:                        ; preds = %_Dynamic_check.succeeded1147
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1152:                        ; preds = %_Dynamic_check.succeeded1151
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1156:                        ; preds = %_Dynamic_check.succeeded1153
  call void @llvm.trap() #6
  unreachable

if.else1164:                                      ; preds = %_Dynamic_check.succeeded1157
  %call1165 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1395 = load i32, i32* @tests_failed, align 4
  %inc1166 = add nsw i32 %1395, 1
  store i32 %inc1166, i32* @tests_failed, align 4
  br label %if.end1167

if.end1167:                                       ; preds = %if.else1164, %if.then1161
  %call1168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 306, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.118, i64 0, i64 0))
  %1396 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %array_value, align 4
  %1397 = ptrtoint %Tstruct.json_value_t_t* %1396 to i32
  %1398 = call i8* @c_fetch_pointer_from_offset(i32 %1397)
  %1399 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1398)
  br i1 %1399, label %_Dynamic_check.succeeded1170, label %_Dynamic_check.failed1169

_Dynamic_check.succeeded1170:                     ; preds = %if.end1167
  %1400 = bitcast i8* %1398 to %Tstruct.json_value_t_t*
  %call1171 = call %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %1400)
  %1401 = bitcast %Tstruct.json_value_t_t* %call1171 to i8*
  %1402 = call i32 @c_TPtoO(i8* %1401)
  %1403 = inttoptr i32 %1402 to %Tstruct.json_value_t_t*
  %1404 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %1405 = ptrtoint %Tstruct.json_value_t_t* %1403 to i32
  %1406 = ptrtoint %Tstruct.json_value_t_t* %1404 to i32
  %cmp1172 = icmp eq i32 %1405, %1406
  br i1 %cmp1172, label %if.then1174, label %if.else1177

if.then1174:                                      ; preds = %_Dynamic_check.succeeded1170
  %call1175 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1407 = load i32, i32* @tests_passed, align 4
  %inc1176 = add nsw i32 %1407, 1
  store i32 %inc1176, i32* @tests_passed, align 4
  br label %if.end1180

_Dynamic_check.failed1169:                        ; preds = %if.end1167
  call void @llvm.trap() #6
  unreachable

if.else1177:                                      ; preds = %_Dynamic_check.succeeded1170
  %call1178 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1408 = load i32, i32* @tests_failed, align 4
  %inc1179 = add nsw i32 %1408, 1
  store i32 %inc1179, i32* @tests_failed, align 4
  br label %if.end1180

if.end1180:                                       ; preds = %if.else1177, %if.then1174
  %call1181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 307, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.119, i64 0, i64 0))
  %1409 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %1410 = ptrtoint %Tstruct.json_value_t_t* %1409 to i32
  %1411 = call i8* @c_fetch_pointer_from_offset(i32 %1410)
  %1412 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1411)
  br i1 %1412, label %_Dynamic_check.succeeded1183, label %_Dynamic_check.failed1182

_Dynamic_check.succeeded1183:                     ; preds = %if.end1180
  %1413 = bitcast i8* %1411 to %Tstruct.json_value_t_t*
  %call1184 = call %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %1413)
  %1414 = bitcast %Tstruct.json_value_t_t* %call1184 to i8*
  %1415 = call i32 @c_TPtoO(i8* %1414)
  %1416 = inttoptr i32 %1415 to %Tstruct.json_value_t_t*
  %1417 = ptrtoint %Tstruct.json_value_t_t* %1416 to i32
  %cmp1185 = icmp eq i32 %1417, 0
  br i1 %cmp1185, label %if.then1187, label %if.else1190

if.then1187:                                      ; preds = %_Dynamic_check.succeeded1183
  %call1188 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1418 = load i32, i32* @tests_passed, align 4
  %inc1189 = add nsw i32 %1418, 1
  store i32 %inc1189, i32* @tests_passed, align 4
  br label %if.end1193

_Dynamic_check.failed1182:                        ; preds = %if.end1180
  call void @llvm.trap() #6
  unreachable

if.else1190:                                      ; preds = %_Dynamic_check.succeeded1183
  %call1191 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1419 = load i32, i32* @tests_failed, align 4
  %inc1192 = add nsw i32 %1419, 1
  store i32 %inc1192, i32* @tests_failed, align 4
  br label %if.end1193

if.end1193:                                       ; preds = %if.else1190, %if.then1187
  ret void
}

declare dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t*) #1

declare dso_local %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t*) #1

declare dso_local i8* @t_strcpy(i8*, i8*) #1

declare i8* @c_ConditionalTaintedOff2Ptr(i64)

declare dso_local i32 @json_object_has_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t*, i8*, i32) #1

declare dso_local i32 @json_object_dothas_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t*, i8*, i32) #1

declare dso_local i8* @json_object_get_string(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @t_strcmp(i8*, i8*) #1

declare dso_local double @json_object_get_number(%Tstruct.json_object_t_t*, i8*) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

declare dso_local i32 @json_object_get_boolean(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i64 @json_array_get_count(%Tstruct.json_array_t_t*) #1

declare dso_local i8* @json_array_get_string(%Tstruct.json_array_t_t*, i64) #1

declare dso_local double @json_array_get_number(%Tstruct.json_array_t_t*, i64) #1

declare dso_local i8* @json_object_dotget_string(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local double @json_object_dotget_number(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t*) #1

declare dso_local %Tstruct.json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t*) #1

declare dso_local %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t*) #1

declare dso_local void @t_free(i8*) #1

declare dso_local i8* @json_string(%Tstruct.json_value_t_t*) #1

declare dso_local i32 @t_printf(i8*, ...) #1

declare dso_local %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_value_init_object() #4

declare dso_local i32 @json_object_set_string(%Tstruct.json_object_t_t*, i8*, i8*) #1

declare dso_local i32 @json_object_set_number(%Tstruct.json_object_t_t*, i8*, double) #1

declare dso_local i32 @json_object_set_boolean(%Tstruct.json_object_t_t*, i8*, i32) #1

declare dso_local i32 @json_object_set_value(%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_value_init_array() #4

declare dso_local i32 @json_array_append_string(%Tstruct.json_array_t_t*, i8*) #1

declare dso_local i32 @json_array_replace_string(%Tstruct.json_array_t_t*, i64, i8*) #1

declare dso_local i32 @json_object_dotset_string(%Tstruct.json_object_t_t*, i8*, i8*) #1

declare dso_local i32 @json_object_dotremove(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_dotset_value(%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_append_value(%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_replace_value(%Tstruct.json_array_t_t*, i64, %Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_remove(%Tstruct.json_array_t_t*, i64) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_value_init_null() #4

declare dso_local i32 @json_object_remove(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_array_t_t* @json_array(%Tstruct.json_value_t_t*) #1

declare dso_local %Tstruct.json_object_t_t* @json_object(%Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_append_number(%Tstruct.json_array_t_t*, double) #1

declare dso_local i32 @json_object_set_null(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_validate(%Tstruct.json_value_t_t*, %Tstruct.json_value_t_t*) #1

attributes #0 = { noinline nounwind optnone tainted uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { tainted "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git 6a0809672e2dae8a6dacd88b66fc53acdcab3614)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
