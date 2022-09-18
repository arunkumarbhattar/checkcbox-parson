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
@.str.218 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"favorites.fruit\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.221 = private unnamed_addr constant [52 x i8] c"json_object_dotremove(obj, string_1) == JSONSuccess\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"windows path\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"C:\\Windows\\Path\00", align 1
@.str.224 = private unnamed_addr constant [38 x i8] c"json_value_equals(val_from_file, val)\00", align 1
@.str.225 = private unnamed_addr constant [59 x i8] c"json_object_set_string(obj, NULL, string_1) == JSONFailure\00", align 1
@.str.226 = private unnamed_addr constant [59 x i8] c"json_object_set_string(obj, string_1, NULL) == JSONFailure\00", align 1
@.str.227 = private unnamed_addr constant [55 x i8] c"json_object_set_string(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.228 = private unnamed_addr constant [54 x i8] c"json_object_set_value(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.229 = private unnamed_addr constant [62 x i8] c"json_object_dotset_string(obj, NULL, string_1) == JSONFailure\00", align 1
@.str.230 = private unnamed_addr constant [62 x i8] c"json_object_dotset_string(obj, string_1, NULL) == JSONFailure\00", align 1
@.str.231 = private unnamed_addr constant [58 x i8] c"json_object_dotset_string(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.232 = private unnamed_addr constant [57 x i8] c"json_object_dotset_value(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.233 = private unnamed_addr constant [56 x i8] c"json_array_append_string(NULL, string_1) == JSONFailure\00", align 1
@.str.234 = private unnamed_addr constant [60 x i8] c"json_array_append_value(interests_arr, NULL) == JSONFailure\00", align 1
@.str.235 = private unnamed_addr constant [51 x i8] c"json_array_append_value(NULL, NULL) == JSONFailure\00", align 1
@.str.236 = private unnamed_addr constant [64 x i8] c"json_array_replace_value(interests_arr, 0, NULL) == JSONFailure\00", align 1
@.str.237 = private unnamed_addr constant [60 x i8] c"json_array_replace_string(NULL, 0, string_1) == JSONFailure\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"not existing\00", align 1
@.str.239 = private unnamed_addr constant [71 x i8] c"json_array_replace_string(interests_arr, 100, string_1) == JSONFailure\00", align 1
@.str.240 = private unnamed_addr constant [84 x i8] c"json_array_append_string(json_object_get_array(obj, string_1), NULL) == JSONFailure\00", align 1
@.str.241 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 0) == JSONSuccess\00", align 1
@.str.242 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 1) == JSONSuccess\00", align 1
@.str.243 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 0) == JSONFailure\00", align 1
@.str.244 = private unnamed_addr constant [64 x i8] c"json_object_set_value(obj, string_1, val_parent) == JSONSuccess\00", align 1
@.str.245 = private unnamed_addr constant [64 x i8] c"json_object_set_value(obj, string_1, val_parent) == JSONFailure\00", align 1
@.str.246 = private unnamed_addr constant [66 x i8] c"json_array_append_value(interests_arr, val_parent) == JSONSuccess\00", align 1
@.str.247 = private unnamed_addr constant [66 x i8] c"json_array_append_value(interests_arr, val_parent) == JSONFailure\00", align 1
@.str.248 = private unnamed_addr constant [70 x i8] c"json_array_replace_value(interests_arr, 0, val_parent) == JSONSuccess\00", align 1
@.str.249 = private unnamed_addr constant [70 x i8] c"json_array_replace_value(interests_arr, 0, val_parent) == JSONFailure\00", align 1
@.str.250 = private unnamed_addr constant [48 x i8] c"json_object_remove(obj,string_1) == JSONSuccess\00", align 1
@.str.251 = private unnamed_addr constant [15 x i8] c"correct string\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"\CE\BA\E1\BD\B9\CF\83\CE\BC\CE\B5\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"boundary 1\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"\ED\9F\BF\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"boundary 2\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"\EE\80\80\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"boundary 3\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"boundary 4\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"\F4\8F\BF\BF\00", align 1
@.str.261 = private unnamed_addr constant [24 x i8] c"first continuation byte\00", align 1
@.str.262 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.263 = private unnamed_addr constant [63 x i8] c"json_object_set_string(obj, string_1, string_2) == JSONFailure\00", align 1
@.str.264 = private unnamed_addr constant [23 x i8] c"last continuation byte\00", align 1
@.str.265 = private unnamed_addr constant [2 x i8] c"\BF\00", align 1
@.str.266 = private unnamed_addr constant [22 x i8] c"impossible sequence 1\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"\FE\00", align 1
@.str.268 = private unnamed_addr constant [22 x i8] c"impossible sequence 2\00", align 1
@.str.269 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.270 = private unnamed_addr constant [22 x i8] c"impossible sequence 3\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"\FE\FE\FF\FF\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"overlong 1\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"\C0\AF\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"overlong 2\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"\C1\BF\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"overlong 3\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"\E0\80\AF\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"overlong 4\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"\E0\9F\BF\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"overlong 5\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"\F0\80\80\AF\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"overlong 6\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"\F0\8F\BF\BF\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"overlong 7\00", align 1
@.str.285 = private unnamed_addr constant [16 x i8] c"overlong null 1\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"\C0\80\00", align 1
@.str.287 = private unnamed_addr constant [16 x i8] c"overlong null 2\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"\E0\80\80\00", align 1
@.str.289 = private unnamed_addr constant [16 x i8] c"overlong null 3\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"\F0\80\80\80\00", align 1
@.str.291 = private unnamed_addr constant [16 x i8] c"overlong null 4\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"\F8\80\80\80\80\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"overlong null 5\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"\FC\80\80\80\80\80\00", align 1
@.str.295 = private unnamed_addr constant [19 x i8] c"single surrogate 1\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"\ED\A0\80\00", align 1
@.str.297 = private unnamed_addr constant [19 x i8] c"single surrogate 2\00", align 1
@.str.298 = private unnamed_addr constant [4 x i8] c"\ED\AF\BF\00", align 1
@.str.299 = private unnamed_addr constant [19 x i8] c"single surrogate 3\00", align 1
@.str.300 = private unnamed_addr constant [4 x i8] c"\ED\BF\BF\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"[1, 2, 3, 4, 5]\00", align 1
@.str.302 = private unnamed_addr constant [13 x i8] c"[1, 2, 4, 5]\00", align 1
@.str.303 = private unnamed_addr constant [64 x i8] c"json_value_equals(remove_test_val, json_parse_string(string_1))\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"[2, 4, 5]\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"[2, 4]\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.307 = private unnamed_addr constant [65 x i8] c"json_object_set_number(obj, string_1, 0.0 / zero) == JSONFailure\00", align 1
@.str.308 = private unnamed_addr constant [65 x i8] c"json_object_set_number(obj,string_1 , 1.0 / zero) == JSONFailure\00", align 1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @string_malloc(i64 %sz) #0 {
entry:
  %retval = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 8
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
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i64, i64* %sz.addr, align 8
  %5 = ptrtoint i8* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then2
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %4
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

_Dynamic_check.failed:                            ; preds = %if.then2
  call void @llvm.trap() #6
  unreachable

if.end3:                                          ; preds = %_Dynamic_check.succeeded, %if.end
  %8 = load i8*, i8** %p, align 8
  store i8* %8, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

declare dso_local i8* @t_malloc(i64) #1

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
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call1, %Tstruct.json_value_t_t** %val_tainted, align 8
  %cmp = icmp ne %Tstruct.json_value_t_t* %call1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call2 = call i32 @puts(i8* %0)
  %1 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call3 = call i32 @puts(i8* %2)
  %3 = load i32, i32* @tests_failed, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %5 = ptrtoint %Tstruct.json_value_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %8 = bitcast i8* %6 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %8)
  %9 = ptrtoint i8* %call6 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %10)
  %12 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %13 = ptrtoint %Tstruct.json_value_t_t* %call9 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %16 = bitcast i8* %14 to %Tstruct.json_value_t_t*
  %17 = ptrtoint %Tstruct.json_value_t_t* %12 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %20 = bitcast i8* %18 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %16, %Tstruct.json_value_t_t* %20)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then15, label %if.else18

if.then15:                                        ; preds = %_Dynamic_check.succeeded13
  %21 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call16 = call i32 @puts(i8* %21)
  %22 = load i32, i32* @tests_passed, align 4
  %inc17 = add nsw i32 %22, 1
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
  %23 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call19 = call i32 @puts(i8* %23)
  %24 = load i32, i32* @tests_failed, align 4
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, i32* @tests_failed, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 116, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %25 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %26 = ptrtoint %Tstruct.json_value_t_t* %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end21
  %29 = bitcast i8* %27 to %Tstruct.json_value_t_t*
  %call25 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %29)
  %30 = ptrtoint i8* %call25 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %call28 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %31)
  %33 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %34 = ptrtoint %Tstruct.json_value_t_t* %call28 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %37 = bitcast i8* %35 to %Tstruct.json_value_t_t*
  %38 = ptrtoint %Tstruct.json_value_t_t* %33 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded30
  %41 = bitcast i8* %39 to %Tstruct.json_value_t_t*
  %call33 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %37, %Tstruct.json_value_t_t* %41)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %_Dynamic_check.succeeded32
  %42 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call36 = call i32 @puts(i8* %42)
  %43 = load i32, i32* @tests_passed, align 4
  %inc37 = add nsw i32 %43, 1
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
  %44 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call39 = call i32 @puts(i8* %44)
  %45 = load i32, i32* @tests_failed, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* @tests_failed, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  %46 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %tobool42 = icmp ne %Tstruct.json_value_t_t* %46, null
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end41
  %47 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %48 = ptrtoint %Tstruct.json_value_t_t* %47 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then43
  %51 = bitcast i8* %49 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %51)
  br label %if.end46

_Dynamic_check.failed44:                          ; preds = %if.then43
  call void @llvm.trap() #6
  unreachable

if.end46:                                         ; preds = %_Dynamic_check.succeeded45, %if.end41
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 119, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  %call48 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call48, %Tstruct.json_value_t_t** %val_tainted, align 8
  %cmp49 = icmp eq %Tstruct.json_value_t_t* %call48, null
  br i1 %cmp49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end46
  %52 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call51 = call i32 @puts(i8* %52)
  %53 = load i32, i32* @tests_passed, align 4
  %inc52 = add nsw i32 %53, 1
  store i32 %inc52, i32* @tests_passed, align 4
  br label %if.end56

if.else53:                                        ; preds = %if.end46
  %54 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call54 = call i32 @puts(i8* %54)
  %55 = load i32, i32* @tests_failed, align 4
  %inc55 = add nsw i32 %55, 1
  store i32 %inc55, i32* @tests_failed, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then50
  %56 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %tobool57 = icmp ne %Tstruct.json_value_t_t* %56, null
  br i1 %tobool57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end56
  %57 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %58 = ptrtoint %Tstruct.json_value_t_t* %57 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %if.then58
  %61 = bitcast i8* %59 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %61)
  br label %if.end61

_Dynamic_check.failed59:                          ; preds = %if.then58
  call void @llvm.trap() #6
  unreachable

if.end61:                                         ; preds = %_Dynamic_check.succeeded60, %if.end56
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.11, i64 0, i64 0))
  %call63 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call63, %Tstruct.json_value_t_t** %val_tainted, align 8
  %cmp64 = icmp ne %Tstruct.json_value_t_t* %call63, null
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.end61
  %62 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call66 = call i32 @puts(i8* %62)
  %63 = load i32, i32* @tests_passed, align 4
  %inc67 = add nsw i32 %63, 1
  store i32 %inc67, i32* @tests_passed, align 4
  br label %if.end71

if.else68:                                        ; preds = %if.end61
  %64 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call69 = call i32 @puts(i8* %64)
  %65 = load i32, i32* @tests_failed, align 4
  %inc70 = add nsw i32 %65, 1
  store i32 %inc70, i32* @tests_failed, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then65
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %66 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %67 = ptrtoint %Tstruct.json_value_t_t* %66 to i32
  %68 = call i8* @c_fetch_pointer_from_offset(i32 %67)
  %69 = call i1 @c_isTaintedPointerToTaintedMem(i8* %68)
  br i1 %69, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end71
  %70 = bitcast i8* %68 to %Tstruct.json_value_t_t*
  %call75 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %70)
  %71 = ptrtoint i8* %call75 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded74
  %call78 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %72)
  %74 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %75 = ptrtoint %Tstruct.json_value_t_t* %call78 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded77
  %78 = bitcast i8* %76 to %Tstruct.json_value_t_t*
  %79 = ptrtoint %Tstruct.json_value_t_t* %74 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %82 = bitcast i8* %80 to %Tstruct.json_value_t_t*
  %call83 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %78, %Tstruct.json_value_t_t* %82)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %_Dynamic_check.succeeded82
  %83 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call86 = call i32 @puts(i8* %83)
  %84 = load i32, i32* @tests_passed, align 4
  %inc87 = add nsw i32 %84, 1
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
  %85 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call89 = call i32 @puts(i8* %85)
  %86 = load i32, i32* @tests_failed, align 4
  %inc90 = add nsw i32 %86, 1
  store i32 %inc90, i32* @tests_failed, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then85
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 125, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %88 = ptrtoint %Tstruct.json_value_t_t* %87 to i32
  %89 = call i8* @c_fetch_pointer_from_offset(i32 %88)
  %90 = call i1 @c_isTaintedPointerToTaintedMem(i8* %89)
  br i1 %90, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %if.end91
  %91 = bitcast i8* %89 to %Tstruct.json_value_t_t*
  %call95 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %91)
  %92 = ptrtoint i8* %call95 to i32
  %93 = call i8* @c_fetch_pointer_from_offset(i32 %92)
  %94 = call i1 @c_isTaintedPointerToTaintedMem(i8* %93)
  br i1 %94, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded94
  %call98 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %93)
  %95 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %96 = ptrtoint %Tstruct.json_value_t_t* %call98 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %_Dynamic_check.succeeded97
  %99 = bitcast i8* %97 to %Tstruct.json_value_t_t*
  %100 = ptrtoint %Tstruct.json_value_t_t* %95 to i32
  %101 = call i8* @c_fetch_pointer_from_offset(i32 %100)
  %102 = call i1 @c_isTaintedPointerToTaintedMem(i8* %101)
  br i1 %102, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %_Dynamic_check.succeeded100
  %103 = bitcast i8* %101 to %Tstruct.json_value_t_t*
  %call103 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %99, %Tstruct.json_value_t_t* %103)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then105, label %if.else108

if.then105:                                       ; preds = %_Dynamic_check.succeeded102
  %104 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call106 = call i32 @puts(i8* %104)
  %105 = load i32, i32* @tests_passed, align 4
  %inc107 = add nsw i32 %105, 1
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
  %106 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call109 = call i32 @puts(i8* %106)
  %107 = load i32, i32* @tests_failed, align 4
  %inc110 = add nsw i32 %107, 1
  store i32 %inc110, i32* @tests_failed, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %if.then105
  %108 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %tobool112 = icmp ne %Tstruct.json_value_t_t* %108, null
  br i1 %tobool112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end111
  %109 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %110 = ptrtoint %Tstruct.json_value_t_t* %109 to i32
  %111 = call i8* @c_fetch_pointer_from_offset(i32 %110)
  %112 = call i1 @c_isTaintedPointerToTaintedMem(i8* %111)
  br i1 %112, label %_Dynamic_check.succeeded115, label %_Dynamic_check.failed114

_Dynamic_check.succeeded115:                      ; preds = %if.then113
  %113 = bitcast i8* %111 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %113)
  br label %if.end116

_Dynamic_check.failed114:                         ; preds = %if.then113
  call void @llvm.trap() #6
  unreachable

if.end116:                                        ; preds = %_Dynamic_check.succeeded115, %if.end111
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 129, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.13, i64 0, i64 0))
  %call118 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  store %Tstruct.json_value_t_t* %call118, %Tstruct.json_value_t_t** %val_tainted, align 8
  %cmp119 = icmp ne %Tstruct.json_value_t_t* %call118, null
  br i1 %cmp119, label %if.then120, label %if.else123

if.then120:                                       ; preds = %if.end116
  %114 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call121 = call i32 @puts(i8* %114)
  %115 = load i32, i32* @tests_passed, align 4
  %inc122 = add nsw i32 %115, 1
  store i32 %inc122, i32* @tests_passed, align 4
  br label %if.end126

if.else123:                                       ; preds = %if.end116
  %116 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call124 = call i32 @puts(i8* %116)
  %117 = load i32, i32* @tests_failed, align 4
  %inc125 = add nsw i32 %117, 1
  store i32 %inc125, i32* @tests_failed, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %if.then120
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 130, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %118 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %119 = ptrtoint %Tstruct.json_value_t_t* %118 to i32
  %120 = call i8* @c_fetch_pointer_from_offset(i32 %119)
  %121 = call i1 @c_isTaintedPointerToTaintedMem(i8* %120)
  br i1 %121, label %_Dynamic_check.succeeded129, label %_Dynamic_check.failed128

_Dynamic_check.succeeded129:                      ; preds = %if.end126
  %122 = bitcast i8* %120 to %Tstruct.json_value_t_t*
  %call130 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %122)
  %123 = ptrtoint i8* %call130 to i32
  %124 = call i8* @c_fetch_pointer_from_offset(i32 %123)
  %125 = call i1 @c_isTaintedPointerToTaintedMem(i8* %124)
  br i1 %125, label %_Dynamic_check.succeeded132, label %_Dynamic_check.failed131

_Dynamic_check.succeeded132:                      ; preds = %_Dynamic_check.succeeded129
  %call133 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %124)
  %126 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %127 = ptrtoint %Tstruct.json_value_t_t* %call133 to i32
  %128 = call i8* @c_fetch_pointer_from_offset(i32 %127)
  %129 = call i1 @c_isTaintedPointerToTaintedMem(i8* %128)
  br i1 %129, label %_Dynamic_check.succeeded135, label %_Dynamic_check.failed134

_Dynamic_check.succeeded135:                      ; preds = %_Dynamic_check.succeeded132
  %130 = bitcast i8* %128 to %Tstruct.json_value_t_t*
  %131 = ptrtoint %Tstruct.json_value_t_t* %126 to i32
  %132 = call i8* @c_fetch_pointer_from_offset(i32 %131)
  %133 = call i1 @c_isTaintedPointerToTaintedMem(i8* %132)
  br i1 %133, label %_Dynamic_check.succeeded137, label %_Dynamic_check.failed136

_Dynamic_check.succeeded137:                      ; preds = %_Dynamic_check.succeeded135
  %134 = bitcast i8* %132 to %Tstruct.json_value_t_t*
  %call138 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %130, %Tstruct.json_value_t_t* %134)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.else143

if.then140:                                       ; preds = %_Dynamic_check.succeeded137
  %135 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call141 = call i32 @puts(i8* %135)
  %136 = load i32, i32* @tests_passed, align 4
  %inc142 = add nsw i32 %136, 1
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
  %137 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call144 = call i32 @puts(i8* %137)
  %138 = load i32, i32* @tests_failed, align 4
  %inc145 = add nsw i32 %138, 1
  store i32 %inc145, i32* @tests_failed, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %if.then140
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 131, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %139 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %140 = ptrtoint %Tstruct.json_value_t_t* %139 to i32
  %141 = call i8* @c_fetch_pointer_from_offset(i32 %140)
  %142 = call i1 @c_isTaintedPointerToTaintedMem(i8* %141)
  br i1 %142, label %_Dynamic_check.succeeded149, label %_Dynamic_check.failed148

_Dynamic_check.succeeded149:                      ; preds = %if.end146
  %143 = bitcast i8* %141 to %Tstruct.json_value_t_t*
  %call150 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %143)
  %144 = ptrtoint i8* %call150 to i32
  %145 = call i8* @c_fetch_pointer_from_offset(i32 %144)
  %146 = call i1 @c_isTaintedPointerToTaintedMem(i8* %145)
  br i1 %146, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %_Dynamic_check.succeeded149
  %call153 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %145)
  %147 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %148 = ptrtoint %Tstruct.json_value_t_t* %call153 to i32
  %149 = call i8* @c_fetch_pointer_from_offset(i32 %148)
  %150 = call i1 @c_isTaintedPointerToTaintedMem(i8* %149)
  br i1 %150, label %_Dynamic_check.succeeded155, label %_Dynamic_check.failed154

_Dynamic_check.succeeded155:                      ; preds = %_Dynamic_check.succeeded152
  %151 = bitcast i8* %149 to %Tstruct.json_value_t_t*
  %152 = ptrtoint %Tstruct.json_value_t_t* %147 to i32
  %153 = call i8* @c_fetch_pointer_from_offset(i32 %152)
  %154 = call i1 @c_isTaintedPointerToTaintedMem(i8* %153)
  br i1 %154, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded155
  %155 = bitcast i8* %153 to %Tstruct.json_value_t_t*
  %call158 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %151, %Tstruct.json_value_t_t* %155)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.else163

if.then160:                                       ; preds = %_Dynamic_check.succeeded157
  %156 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call161 = call i32 @puts(i8* %156)
  %157 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %157, 1
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
  %158 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call164 = call i32 @puts(i8* %158)
  %159 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %159, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %160 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %tobool167 = icmp ne %Tstruct.json_value_t_t* %160, null
  br i1 %tobool167, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.end166
  %161 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %162 = ptrtoint %Tstruct.json_value_t_t* %161 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.then168
  %165 = bitcast i8* %163 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %165)
  br label %if.end171

_Dynamic_check.failed169:                         ; preds = %if.then168
  call void @llvm.trap() #6
  unreachable

if.end171:                                        ; preds = %_Dynamic_check.succeeded170, %if.end166
  %call172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 138, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.14, i64 0, i64 0))
  %call173 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  store %Tstruct.json_value_t_t* %call173, %Tstruct.json_value_t_t** %val_tainted, align 8
  %cmp174 = icmp ne %Tstruct.json_value_t_t* %call173, null
  br i1 %cmp174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.end171
  %166 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call176 = call i32 @puts(i8* %166)
  %167 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %167, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

if.else178:                                       ; preds = %if.end171
  %168 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call179 = call i32 @puts(i8* %168)
  %169 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %169, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %170 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %171 = ptrtoint %Tstruct.json_value_t_t* %170 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded184, label %_Dynamic_check.failed183

_Dynamic_check.succeeded184:                      ; preds = %if.end181
  %174 = bitcast i8* %172 to %Tstruct.json_value_t_t*
  %call185 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %174)
  %175 = ptrtoint i8* %call185 to i32
  %176 = call i8* @c_fetch_pointer_from_offset(i32 %175)
  %177 = call i1 @c_isTaintedPointerToTaintedMem(i8* %176)
  br i1 %177, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded184
  %call188 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %176)
  %178 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %179 = ptrtoint %Tstruct.json_value_t_t* %call188 to i32
  %180 = call i8* @c_fetch_pointer_from_offset(i32 %179)
  %181 = call i1 @c_isTaintedPointerToTaintedMem(i8* %180)
  br i1 %181, label %_Dynamic_check.succeeded190, label %_Dynamic_check.failed189

_Dynamic_check.succeeded190:                      ; preds = %_Dynamic_check.succeeded187
  %182 = bitcast i8* %180 to %Tstruct.json_value_t_t*
  %183 = ptrtoint %Tstruct.json_value_t_t* %178 to i32
  %184 = call i8* @c_fetch_pointer_from_offset(i32 %183)
  %185 = call i1 @c_isTaintedPointerToTaintedMem(i8* %184)
  br i1 %185, label %_Dynamic_check.succeeded192, label %_Dynamic_check.failed191

_Dynamic_check.succeeded192:                      ; preds = %_Dynamic_check.succeeded190
  %186 = bitcast i8* %184 to %Tstruct.json_value_t_t*
  %call193 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %182, %Tstruct.json_value_t_t* %186)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.else198

if.then195:                                       ; preds = %_Dynamic_check.succeeded192
  %187 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call196 = call i32 @puts(i8* %187)
  %188 = load i32, i32* @tests_passed, align 4
  %inc197 = add nsw i32 %188, 1
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
  %189 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call199 = call i32 @puts(i8* %189)
  %190 = load i32, i32* @tests_failed, align 4
  %inc200 = add nsw i32 %190, 1
  store i32 %inc200, i32* @tests_failed, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.else198, %if.then195
  %call202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %191 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %192 = ptrtoint %Tstruct.json_value_t_t* %191 to i32
  %193 = call i8* @c_fetch_pointer_from_offset(i32 %192)
  %194 = call i1 @c_isTaintedPointerToTaintedMem(i8* %193)
  br i1 %194, label %_Dynamic_check.succeeded204, label %_Dynamic_check.failed203

_Dynamic_check.succeeded204:                      ; preds = %if.end201
  %195 = bitcast i8* %193 to %Tstruct.json_value_t_t*
  %call205 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %195)
  %196 = ptrtoint i8* %call205 to i32
  %197 = call i8* @c_fetch_pointer_from_offset(i32 %196)
  %198 = call i1 @c_isTaintedPointerToTaintedMem(i8* %197)
  br i1 %198, label %_Dynamic_check.succeeded207, label %_Dynamic_check.failed206

_Dynamic_check.succeeded207:                      ; preds = %_Dynamic_check.succeeded204
  %call208 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %197)
  %199 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %200 = ptrtoint %Tstruct.json_value_t_t* %call208 to i32
  %201 = call i8* @c_fetch_pointer_from_offset(i32 %200)
  %202 = call i1 @c_isTaintedPointerToTaintedMem(i8* %201)
  br i1 %202, label %_Dynamic_check.succeeded210, label %_Dynamic_check.failed209

_Dynamic_check.succeeded210:                      ; preds = %_Dynamic_check.succeeded207
  %203 = bitcast i8* %201 to %Tstruct.json_value_t_t*
  %204 = ptrtoint %Tstruct.json_value_t_t* %199 to i32
  %205 = call i8* @c_fetch_pointer_from_offset(i32 %204)
  %206 = call i1 @c_isTaintedPointerToTaintedMem(i8* %205)
  br i1 %206, label %_Dynamic_check.succeeded212, label %_Dynamic_check.failed211

_Dynamic_check.succeeded212:                      ; preds = %_Dynamic_check.succeeded210
  %207 = bitcast i8* %205 to %Tstruct.json_value_t_t*
  %call213 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %203, %Tstruct.json_value_t_t* %207)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.else218

if.then215:                                       ; preds = %_Dynamic_check.succeeded212
  %208 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call216 = call i32 @puts(i8* %208)
  %209 = load i32, i32* @tests_passed, align 4
  %inc217 = add nsw i32 %209, 1
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
  %210 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call219 = call i32 @puts(i8* %210)
  %211 = load i32, i32* @tests_failed, align 4
  %inc220 = add nsw i32 %211, 1
  store i32 %inc220, i32* @tests_failed, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else218, %if.then215
  %212 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %tobool222 = icmp ne %Tstruct.json_value_t_t* %212, null
  br i1 %tobool222, label %if.then223, label %if.end226

if.then223:                                       ; preds = %if.end221
  %213 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 8
  %214 = ptrtoint %Tstruct.json_value_t_t* %213 to i32
  %215 = call i8* @c_fetch_pointer_from_offset(i32 %214)
  %216 = call i1 @c_isTaintedPointerToTaintedMem(i8* %215)
  br i1 %216, label %_Dynamic_check.succeeded225, label %_Dynamic_check.failed224

_Dynamic_check.succeeded225:                      ; preds = %if.then223
  %217 = bitcast i8* %215 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %217)
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
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 8
  %filename = alloca i8*, align 8
  %root_value = alloca %Tstruct.json_value_t_t*, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 8
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([57 x i8]* @.str.120 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %root_value, align 8
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call2, %Tstruct.json_value_t_t** %root_value, align 8
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %5 = ptrtoint %Tstruct.json_value_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.json_value_t_t*
  call void @test_suite_2(%Tstruct.json_value_t_t* %8)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 317, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.121, i64 0, i64 0))
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %14)
  %15 = ptrtoint i8* %call6 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %16)
  %18 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %21 = bitcast i8* %19 to %Tstruct.json_value_t_t*
  %22 = ptrtoint %Tstruct.json_value_t_t* %call9 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %25 = bitcast i8* %23 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %21, %Tstruct.json_value_t_t* %25)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded13
  %26 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call15 = call i32 @puts(i8* %26)
  %27 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %27, 1
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
  %28 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call16 = call i32 @puts(i8* %28)
  %29 = load i32, i32* @tests_failed, align 4
  %inc17 = add nsw i32 %29, 1
  store i32 %inc17, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.122, i64 0, i64 0))
  %30 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %31 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %32 = ptrtoint %Tstruct.json_value_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %35 = bitcast i8* %33 to %Tstruct.json_value_t_t*
  %call21 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %35)
  %36 = ptrtoint i8* %call21 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %call24 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %37)
  %39 = ptrtoint %Tstruct.json_value_t_t* %30 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded23
  %42 = bitcast i8* %40 to %Tstruct.json_value_t_t*
  %43 = ptrtoint %Tstruct.json_value_t_t* %call24 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %46 = bitcast i8* %44 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %42, %Tstruct.json_value_t_t* %46)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %47 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call32 = call i32 @puts(i8* %47)
  %48 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %48, 1
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
  %49 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call35 = call i32 @puts(i8* %49)
  %50 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %50, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %51 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %52 = ptrtoint %Tstruct.json_value_t_t* %51 to i32
  %53 = call i8* @c_fetch_pointer_from_offset(i32 %52)
  %54 = call i1 @c_isTaintedPointerToTaintedMem(i8* %53)
  br i1 %54, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %55 = bitcast i8* %53 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %55)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2_with_comments() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 8
  %filename = alloca i8*, align 8
  %root_value = alloca %Tstruct.json_value_t_t*, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 8
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([66 x i8]* @.str.123 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %root_value, align 8
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  store %Tstruct.json_value_t_t* %call2, %Tstruct.json_value_t_t** %root_value, align 8
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %5 = ptrtoint %Tstruct.json_value_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.json_value_t_t*
  call void @test_suite_2(%Tstruct.json_value_t_t* %8)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.121, i64 0, i64 0))
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %14)
  %15 = ptrtoint i8* %call6 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %16)
  %18 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %21 = bitcast i8* %19 to %Tstruct.json_value_t_t*
  %22 = ptrtoint %Tstruct.json_value_t_t* %call9 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %25 = bitcast i8* %23 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %21, %Tstruct.json_value_t_t* %25)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded13
  %26 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call15 = call i32 @puts(i8* %26)
  %27 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %27, 1
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
  %28 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call16 = call i32 @puts(i8* %28)
  %29 = load i32, i32* @tests_failed, align 4
  %inc17 = add nsw i32 %29, 1
  store i32 %inc17, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.122, i64 0, i64 0))
  %30 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %31 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %32 = ptrtoint %Tstruct.json_value_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %35 = bitcast i8* %33 to %Tstruct.json_value_t_t*
  %call21 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %35)
  %36 = ptrtoint i8* %call21 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %call24 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %37)
  %39 = ptrtoint %Tstruct.json_value_t_t* %30 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded23
  %42 = bitcast i8* %40 to %Tstruct.json_value_t_t*
  %43 = ptrtoint %Tstruct.json_value_t_t* %call24 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %46 = bitcast i8* %44 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %42, %Tstruct.json_value_t_t* %46)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %47 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call32 = call i32 @puts(i8* %47)
  %48 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %48, 1
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
  %49 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call35 = call i32 @puts(i8* %49)
  %50 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %50, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %51 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 8
  %52 = ptrtoint %Tstruct.json_value_t_t* %51 to i32
  %53 = call i8* @c_fetch_pointer_from_offset(i32 %52)
  %54 = call i1 @c_isTaintedPointerToTaintedMem(i8* %53)
  br i1 %54, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %55 = bitcast i8* %53 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %55)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_3() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 8
  %filename = alloca i8*, align 8
  %temp_string = alloca i8*, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 8
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 8
  %0 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([23 x i8]* @.str.124 to i64))
  %call1 = call i32 @puts(i8* %0)
  %1 = load i8*, i8** %filename, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %2)
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([18 x i8]* @.str.125 to i64))
  %call2 = call i8* @t_strcpy(i8* %3, i8* %4)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 340, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %5 = load i8*, i8** %filename, align 8
  %6 = ptrtoint i8* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call4 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %7)
  %cmp = icmp ne %Tstruct.json_value_t_t* %call4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %9 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call5 = call i32 @puts(i8* %9)
  %10 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded
  %11 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call6 = call i32 @puts(i8* %11)
  %12 = load i32, i32* @tests_failed, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %filename, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %14)
  %16 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.127 to i64))
  %call8 = call i8* @t_strcpy(i8* %15, i8* %16)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 342, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %17 = load i8*, i8** %filename, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.end
  %call12 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %19)
  %cmp13 = icmp ne %Tstruct.json_value_t_t* %call12, null
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %_Dynamic_check.succeeded11
  %21 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call15 = call i32 @puts(i8* %21)
  %22 = load i32, i32* @tests_passed, align 4
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* @tests_passed, align 4
  br label %if.end20

_Dynamic_check.failed10:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else17:                                        ; preds = %_Dynamic_check.succeeded11
  %23 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call18 = call i32 @puts(i8* %23)
  %24 = load i32, i32* @tests_failed, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* @tests_failed, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then14
  %25 = load i8*, i8** %filename, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %26)
  %28 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.35 to i64))
  %call21 = call i8* @t_strcpy(i8* %27, i8* %28)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %29 = load i8*, i8** %filename, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end20
  %call25 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %31)
  %cmp26 = icmp ne %Tstruct.json_value_t_t* %call25, null
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %_Dynamic_check.succeeded24
  %33 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call28 = call i32 @puts(i8* %33)
  %34 = load i32, i32* @tests_passed, align 4
  %inc29 = add nsw i32 %34, 1
  store i32 %inc29, i32* @tests_passed, align 4
  br label %if.end33

_Dynamic_check.failed23:                          ; preds = %if.end20
  call void @llvm.trap() #6
  unreachable

if.else30:                                        ; preds = %_Dynamic_check.succeeded24
  %35 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call31 = call i32 @puts(i8* %35)
  %36 = load i32, i32* @tests_failed, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, i32* @tests_failed, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27
  %37 = load i8*, i8** %filename, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %38)
  %40 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.128 to i64))
  %call34 = call i8* @t_strcpy(i8* %39, i8* %40)
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 346, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %41 = load i8*, i8** %filename, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %if.end33
  %call38 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %43)
  %cmp39 = icmp ne %Tstruct.json_value_t_t* %call38, null
  br i1 %cmp39, label %if.then40, label %if.else43

if.then40:                                        ; preds = %_Dynamic_check.succeeded37
  %45 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call41 = call i32 @puts(i8* %45)
  %46 = load i32, i32* @tests_passed, align 4
  %inc42 = add nsw i32 %46, 1
  store i32 %inc42, i32* @tests_passed, align 4
  br label %if.end46

_Dynamic_check.failed36:                          ; preds = %if.end33
  call void @llvm.trap() #6
  unreachable

if.else43:                                        ; preds = %_Dynamic_check.succeeded37
  %47 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call44 = call i32 @puts(i8* %47)
  %48 = load i32, i32* @tests_failed, align 4
  %inc45 = add nsw i32 %48, 1
  store i32 %inc45, i32* @tests_failed, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  %49 = load i8*, i8** %filename, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %50)
  %52 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.129 to i64))
  %call47 = call i8* @t_strcpy(i8* %51, i8* %52)
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %53 = load i8*, i8** %filename, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %if.end46
  %call51 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %55)
  %cmp52 = icmp ne %Tstruct.json_value_t_t* %call51, null
  br i1 %cmp52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %_Dynamic_check.succeeded50
  %57 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call54 = call i32 @puts(i8* %57)
  %58 = load i32, i32* @tests_passed, align 4
  %inc55 = add nsw i32 %58, 1
  store i32 %inc55, i32* @tests_passed, align 4
  br label %if.end59

_Dynamic_check.failed49:                          ; preds = %if.end46
  call void @llvm.trap() #6
  unreachable

if.else56:                                        ; preds = %_Dynamic_check.succeeded50
  %59 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call57 = call i32 @puts(i8* %59)
  %60 = load i32, i32* @tests_failed, align 4
  %inc58 = add nsw i32 %60, 1
  store i32 %inc58, i32* @tests_failed, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then53
  %61 = load i8*, i8** %filename, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %62)
  %64 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([9 x i8]* @.str.130 to i64))
  %call60 = call i8* @t_strcpy(i8* %63, i8* %64)
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 350, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %65 = load i8*, i8** %filename, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %if.end59
  %call64 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %67)
  %cmp65 = icmp ne %Tstruct.json_value_t_t* %call64, null
  br i1 %cmp65, label %if.then66, label %if.else69

if.then66:                                        ; preds = %_Dynamic_check.succeeded63
  %69 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call67 = call i32 @puts(i8* %69)
  %70 = load i32, i32* @tests_passed, align 4
  %inc68 = add nsw i32 %70, 1
  store i32 %inc68, i32* @tests_passed, align 4
  br label %if.end72

_Dynamic_check.failed62:                          ; preds = %if.end59
  call void @llvm.trap() #6
  unreachable

if.else69:                                        ; preds = %_Dynamic_check.succeeded63
  %71 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call70 = call i32 @puts(i8* %71)
  %72 = load i32, i32* @tests_failed, align 4
  %inc71 = add nsw i32 %72, 1
  store i32 %inc71, i32* @tests_failed, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then66
  %73 = load i8*, i8** %filename, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %74)
  %76 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.131 to i64))
  %call73 = call i8* @t_strcpy(i8* %75, i8* %76)
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 352, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %77 = load i8*, i8** %filename, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %if.end72
  %call77 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %79)
  %cmp78 = icmp ne %Tstruct.json_value_t_t* %call77, null
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %_Dynamic_check.succeeded76
  %81 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call80 = call i32 @puts(i8* %81)
  %82 = load i32, i32* @tests_passed, align 4
  %inc81 = add nsw i32 %82, 1
  store i32 %inc81, i32* @tests_passed, align 4
  br label %if.end85

_Dynamic_check.failed75:                          ; preds = %if.end72
  call void @llvm.trap() #6
  unreachable

if.else82:                                        ; preds = %_Dynamic_check.succeeded76
  %83 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call83 = call i32 @puts(i8* %83)
  %84 = load i32, i32* @tests_failed, align 4
  %inc84 = add nsw i32 %84, 1
  store i32 %inc84, i32* @tests_failed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %85 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.132 to i64))
  %call86 = call i32 @puts(i8* %85)
  %86 = load i8*, i8** %filename, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %87)
  %89 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.133 to i64))
  %call87 = call i8* @t_strcpy(i8* %88, i8* %89)
  %90 = load i8*, i8** %filename, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = call i8* @c_fetch_pointer_from_offset(i32 %91)
  %93 = call i1 @c_isTaintedPointerToTaintedMem(i8* %92)
  br i1 %93, label %_Dynamic_check.succeeded89, label %_Dynamic_check.failed88

_Dynamic_check.succeeded89:                       ; preds = %if.end85
  %call90 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %92)
  %94 = ptrtoint %Tstruct.json_value_t_t* %call90 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.succeeded89
  %97 = bitcast i8* %95 to %Tstruct.json_value_t_t*
  %call93 = call i8* @json_string(%Tstruct.json_value_t_t* %97)
  store i8* %call93, i8** %temp_string, align 8
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 357, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i64 0, i64 0))
  %98 = load i8*, i8** %temp_string, align 8
  %tobool = icmp ne i8* %98, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded92
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %99 = load i8*, i8** %temp_string, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %100)
  %102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.135 to i64))
  %call95 = call i32 @t_strcmp(i8* %101, i8* %102)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.else100

cond.false:                                       ; preds = %land.lhs.true, %_Dynamic_check.succeeded92
  br i1 false, label %if.then97, label %if.else100

if.then97:                                        ; preds = %cond.false, %cond.true
  %103 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call98 = call i32 @puts(i8* %103)
  %104 = load i32, i32* @tests_passed, align 4
  %inc99 = add nsw i32 %104, 1
  store i32 %inc99, i32* @tests_passed, align 4
  br label %if.end103

_Dynamic_check.failed88:                          ; preds = %if.end85
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.succeeded89
  call void @llvm.trap() #6
  unreachable

if.else100:                                       ; preds = %cond.false, %cond.true
  %105 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call101 = call i32 @puts(i8* %105)
  %106 = load i32, i32* @tests_failed, align 4
  %inc102 = add nsw i32 %106, 1
  store i32 %inc102, i32* @tests_failed, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then97
  %107 = load i8*, i8** %filename, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %108)
  %110 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.136 to i64))
  %call104 = call i8* @t_strcpy(i8* %109, i8* %110)
  %111 = load i8*, i8** %filename, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded106, label %_Dynamic_check.failed105

_Dynamic_check.succeeded106:                      ; preds = %if.end103
  %call107 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %113)
  %115 = ptrtoint %Tstruct.json_value_t_t* %call107 to i32
  %116 = call i8* @c_fetch_pointer_from_offset(i32 %115)
  %117 = call i1 @c_isTaintedPointerToTaintedMem(i8* %116)
  br i1 %117, label %_Dynamic_check.succeeded109, label %_Dynamic_check.failed108

_Dynamic_check.succeeded109:                      ; preds = %_Dynamic_check.succeeded106
  %118 = bitcast i8* %116 to %Tstruct.json_value_t_t*
  %call110 = call i8* @json_string(%Tstruct.json_value_t_t* %118)
  store i8* %call110, i8** %temp_string, align 8
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i64 0, i64 0))
  %119 = load i8*, i8** %temp_string, align 8
  %tobool112 = icmp ne i8* %119, null
  br i1 %tobool112, label %land.lhs.true113, label %cond.false117

land.lhs.true113:                                 ; preds = %_Dynamic_check.succeeded109
  br i1 true, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %land.lhs.true113
  %120 = load i8*, i8** %temp_string, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %121)
  %123 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.138 to i64))
  %call115 = call i32 @t_strcmp(i8* %122, i8* %123)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.else121

cond.false117:                                    ; preds = %land.lhs.true113, %_Dynamic_check.succeeded109
  br i1 false, label %if.then118, label %if.else121

if.then118:                                       ; preds = %cond.false117, %cond.true114
  %124 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call119 = call i32 @puts(i8* %124)
  %125 = load i32, i32* @tests_passed, align 4
  %inc120 = add nsw i32 %125, 1
  store i32 %inc120, i32* @tests_passed, align 4
  br label %if.end124

_Dynamic_check.failed105:                         ; preds = %if.end103
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed108:                         ; preds = %_Dynamic_check.succeeded106
  call void @llvm.trap() #6
  unreachable

if.else121:                                       ; preds = %cond.false117, %cond.true114
  %126 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call122 = call i32 @puts(i8* %126)
  %127 = load i32, i32* @tests_failed, align 4
  %inc123 = add nsw i32 %127, 1
  store i32 %inc123, i32* @tests_failed, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then118
  %128 = load i8*, i8** %filename, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %129)
  %131 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.139 to i64))
  %call125 = call i8* @t_strcpy(i8* %130, i8* %131)
  %132 = load i8*, i8** %filename, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded127, label %_Dynamic_check.failed126

_Dynamic_check.succeeded127:                      ; preds = %if.end124
  %call128 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %134)
  %136 = ptrtoint %Tstruct.json_value_t_t* %call128 to i32
  %137 = call i8* @c_fetch_pointer_from_offset(i32 %136)
  %138 = call i1 @c_isTaintedPointerToTaintedMem(i8* %137)
  br i1 %138, label %_Dynamic_check.succeeded130, label %_Dynamic_check.failed129

_Dynamic_check.succeeded130:                      ; preds = %_Dynamic_check.succeeded127
  %139 = bitcast i8* %137 to %Tstruct.json_value_t_t*
  %call131 = call i8* @json_string(%Tstruct.json_value_t_t* %139)
  store i8* %call131, i8** %temp_string, align 8
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.140, i64 0, i64 0))
  %140 = load i8*, i8** %temp_string, align 8
  %tobool133 = icmp ne i8* %140, null
  br i1 %tobool133, label %land.lhs.true134, label %cond.false138

land.lhs.true134:                                 ; preds = %_Dynamic_check.succeeded130
  br i1 true, label %cond.true135, label %cond.false138

cond.true135:                                     ; preds = %land.lhs.true134
  %141 = load i8*, i8** %temp_string, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %142)
  %144 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.141 to i64))
  %call136 = call i32 @t_strcmp(i8* %143, i8* %144)
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.else142

cond.false138:                                    ; preds = %land.lhs.true134, %_Dynamic_check.succeeded130
  br i1 false, label %if.then139, label %if.else142

if.then139:                                       ; preds = %cond.false138, %cond.true135
  %145 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call140 = call i32 @puts(i8* %145)
  %146 = load i32, i32* @tests_passed, align 4
  %inc141 = add nsw i32 %146, 1
  store i32 %inc141, i32* @tests_passed, align 4
  br label %if.end145

_Dynamic_check.failed126:                         ; preds = %if.end124
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed129:                         ; preds = %_Dynamic_check.succeeded127
  call void @llvm.trap() #6
  unreachable

if.else142:                                       ; preds = %cond.false138, %cond.true135
  %147 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call143 = call i32 @puts(i8* %147)
  %148 = load i32, i32* @tests_failed, align 4
  %inc144 = add nsw i32 %148, 1
  store i32 %inc144, i32* @tests_failed, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.then139
  %149 = load i8*, i8** %filename, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %150)
  %152 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.142 to i64))
  %call146 = call i8* @t_strcpy(i8* %151, i8* %152)
  %153 = load i8*, i8** %filename, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = call i8* @c_fetch_pointer_from_offset(i32 %154)
  %156 = call i1 @c_isTaintedPointerToTaintedMem(i8* %155)
  br i1 %156, label %_Dynamic_check.succeeded148, label %_Dynamic_check.failed147

_Dynamic_check.succeeded148:                      ; preds = %if.end145
  %call149 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %155)
  %157 = ptrtoint %Tstruct.json_value_t_t* %call149 to i32
  %158 = call i8* @c_fetch_pointer_from_offset(i32 %157)
  %159 = call i1 @c_isTaintedPointerToTaintedMem(i8* %158)
  br i1 %159, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %_Dynamic_check.succeeded148
  %160 = bitcast i8* %158 to %Tstruct.json_value_t_t*
  %call152 = call i8* @json_string(%Tstruct.json_value_t_t* %160)
  store i8* %call152, i8** %temp_string, align 8
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 366, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0))
  %161 = load i8*, i8** %temp_string, align 8
  %tobool154 = icmp ne i8* %161, null
  br i1 %tobool154, label %land.lhs.true155, label %cond.false159

land.lhs.true155:                                 ; preds = %_Dynamic_check.succeeded151
  br i1 true, label %cond.true156, label %cond.false159

cond.true156:                                     ; preds = %land.lhs.true155
  %162 = load i8*, i8** %temp_string, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %163)
  %165 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.144 to i64))
  %call157 = call i32 @t_strcmp(i8* %164, i8* %165)
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else163

cond.false159:                                    ; preds = %land.lhs.true155, %_Dynamic_check.succeeded151
  br i1 false, label %if.then160, label %if.else163

if.then160:                                       ; preds = %cond.false159, %cond.true156
  %166 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call161 = call i32 @puts(i8* %166)
  %167 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %167, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed147:                         ; preds = %if.end145
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed150:                         ; preds = %_Dynamic_check.succeeded148
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %cond.false159, %cond.true156
  %168 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call164 = call i32 @puts(i8* %168)
  %169 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %169, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %170 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([25 x i8]* @.str.145 to i64))
  %call167 = call i32 @puts(i8* %170)
  store i32 0, i32* @malloc_count, align 4
  %call168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0))
  %171 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %172 = call i1 @c_isTaintedPointerToTaintedMem(i8* %171)
  br i1 %172, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.end166
  %call171 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %171)
  %cmp172 = icmp eq %Tstruct.json_value_t_t* %call171, null
  br i1 %cmp172, label %if.then173, label %if.else176

if.then173:                                       ; preds = %_Dynamic_check.succeeded170
  %173 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call174 = call i32 @puts(i8* %173)
  %174 = load i32, i32* @tests_passed, align 4
  %inc175 = add nsw i32 %174, 1
  store i32 %inc175, i32* @tests_passed, align 4
  br label %if.end179

_Dynamic_check.failed169:                         ; preds = %if.end166
  call void @llvm.trap() #6
  unreachable

if.else176:                                       ; preds = %_Dynamic_check.succeeded170
  %175 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call177 = call i32 @puts(i8* %175)
  %176 = load i32, i32* @tests_failed, align 4
  %inc178 = add nsw i32 %176, 1
  store i32 %inc178, i32* @tests_failed, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else176, %if.then173
  %177 = load i8*, i8** %filename, align 8
  %178 = ptrtoint i8* %177 to i64
  %179 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %178)
  %180 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call180 = call i8* @t_strcpy(i8* %179, i8* %180)
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 372, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %181 = load i8*, i8** %filename, align 8
  %182 = ptrtoint i8* %181 to i32
  %183 = call i8* @c_fetch_pointer_from_offset(i32 %182)
  %184 = call i1 @c_isTaintedPointerToTaintedMem(i8* %183)
  br i1 %184, label %_Dynamic_check.succeeded183, label %_Dynamic_check.failed182

_Dynamic_check.succeeded183:                      ; preds = %if.end179
  %call184 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %183)
  %cmp185 = icmp eq %Tstruct.json_value_t_t* %call184, null
  br i1 %cmp185, label %if.then186, label %if.else189

if.then186:                                       ; preds = %_Dynamic_check.succeeded183
  %185 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call187 = call i32 @puts(i8* %185)
  %186 = load i32, i32* @tests_passed, align 4
  %inc188 = add nsw i32 %186, 1
  store i32 %inc188, i32* @tests_passed, align 4
  br label %if.end192

_Dynamic_check.failed182:                         ; preds = %if.end179
  call void @llvm.trap() #6
  unreachable

if.else189:                                       ; preds = %_Dynamic_check.succeeded183
  %187 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call190 = call i32 @puts(i8* %187)
  %188 = load i32, i32* @tests_failed, align 4
  %inc191 = add nsw i32 %188, 1
  store i32 %inc191, i32* @tests_failed, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.else189, %if.then186
  %189 = load i8*, i8** %filename, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %190)
  %192 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.148 to i64))
  %call193 = call i8* @t_strcpy(i8* %191, i8* %192)
  %call194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %193 = load i8*, i8** %filename, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = call i8* @c_fetch_pointer_from_offset(i32 %194)
  %196 = call i1 @c_isTaintedPointerToTaintedMem(i8* %195)
  br i1 %196, label %_Dynamic_check.succeeded196, label %_Dynamic_check.failed195

_Dynamic_check.succeeded196:                      ; preds = %if.end192
  %call197 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %195)
  %cmp198 = icmp eq %Tstruct.json_value_t_t* %call197, null
  br i1 %cmp198, label %if.then199, label %if.else202

if.then199:                                       ; preds = %_Dynamic_check.succeeded196
  %197 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call200 = call i32 @puts(i8* %197)
  %198 = load i32, i32* @tests_passed, align 4
  %inc201 = add nsw i32 %198, 1
  store i32 %inc201, i32* @tests_passed, align 4
  br label %if.end205

_Dynamic_check.failed195:                         ; preds = %if.end192
  call void @llvm.trap() #6
  unreachable

if.else202:                                       ; preds = %_Dynamic_check.succeeded196
  %199 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call203 = call i32 @puts(i8* %199)
  %200 = load i32, i32* @tests_failed, align 4
  %inc204 = add nsw i32 %200, 1
  store i32 %inc204, i32* @tests_failed, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.else202, %if.then199
  %201 = load i8*, i8** %filename, align 8
  %202 = ptrtoint i8* %201 to i64
  %203 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %202)
  %204 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.149 to i64))
  %call206 = call i8* @t_strcpy(i8* %203, i8* %204)
  %call207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %205 = load i8*, i8** %filename, align 8
  %206 = ptrtoint i8* %205 to i32
  %207 = call i8* @c_fetch_pointer_from_offset(i32 %206)
  %208 = call i1 @c_isTaintedPointerToTaintedMem(i8* %207)
  br i1 %208, label %_Dynamic_check.succeeded209, label %_Dynamic_check.failed208

_Dynamic_check.succeeded209:                      ; preds = %if.end205
  %call210 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %207)
  %cmp211 = icmp eq %Tstruct.json_value_t_t* %call210, null
  br i1 %cmp211, label %if.then212, label %if.else215

if.then212:                                       ; preds = %_Dynamic_check.succeeded209
  %209 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call213 = call i32 @puts(i8* %209)
  %210 = load i32, i32* @tests_passed, align 4
  %inc214 = add nsw i32 %210, 1
  store i32 %inc214, i32* @tests_passed, align 4
  br label %if.end218

_Dynamic_check.failed208:                         ; preds = %if.end205
  call void @llvm.trap() #6
  unreachable

if.else215:                                       ; preds = %_Dynamic_check.succeeded209
  %211 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call216 = call i32 @puts(i8* %211)
  %212 = load i32, i32* @tests_failed, align 4
  %inc217 = add nsw i32 %212, 1
  store i32 %inc217, i32* @tests_failed, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.else215, %if.then212
  %213 = load i8*, i8** %filename, align 8
  %214 = ptrtoint i8* %213 to i64
  %215 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %214)
  %216 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.150 to i64))
  %call219 = call i8* @t_strcpy(i8* %215, i8* %216)
  %call220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %217 = load i8*, i8** %filename, align 8
  %218 = ptrtoint i8* %217 to i32
  %219 = call i8* @c_fetch_pointer_from_offset(i32 %218)
  %220 = call i1 @c_isTaintedPointerToTaintedMem(i8* %219)
  br i1 %220, label %_Dynamic_check.succeeded222, label %_Dynamic_check.failed221

_Dynamic_check.succeeded222:                      ; preds = %if.end218
  %call223 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %219)
  %cmp224 = icmp eq %Tstruct.json_value_t_t* %call223, null
  br i1 %cmp224, label %if.then225, label %if.else228

if.then225:                                       ; preds = %_Dynamic_check.succeeded222
  %221 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call226 = call i32 @puts(i8* %221)
  %222 = load i32, i32* @tests_passed, align 4
  %inc227 = add nsw i32 %222, 1
  store i32 %inc227, i32* @tests_passed, align 4
  br label %if.end231

_Dynamic_check.failed221:                         ; preds = %if.end218
  call void @llvm.trap() #6
  unreachable

if.else228:                                       ; preds = %_Dynamic_check.succeeded222
  %223 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call229 = call i32 @puts(i8* %223)
  %224 = load i32, i32* @tests_failed, align 4
  %inc230 = add nsw i32 %224, 1
  store i32 %inc230, i32* @tests_failed, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.else228, %if.then225
  %225 = load i8*, i8** %filename, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %226)
  %228 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.151 to i64))
  %call232 = call i8* @t_strcpy(i8* %227, i8* %228)
  %call233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 380, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %229 = load i8*, i8** %filename, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = call i8* @c_fetch_pointer_from_offset(i32 %230)
  %232 = call i1 @c_isTaintedPointerToTaintedMem(i8* %231)
  br i1 %232, label %_Dynamic_check.succeeded235, label %_Dynamic_check.failed234

_Dynamic_check.succeeded235:                      ; preds = %if.end231
  %call236 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %231)
  %cmp237 = icmp eq %Tstruct.json_value_t_t* %call236, null
  br i1 %cmp237, label %if.then238, label %if.else241

if.then238:                                       ; preds = %_Dynamic_check.succeeded235
  %233 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call239 = call i32 @puts(i8* %233)
  %234 = load i32, i32* @tests_passed, align 4
  %inc240 = add nsw i32 %234, 1
  store i32 %inc240, i32* @tests_passed, align 4
  br label %if.end244

_Dynamic_check.failed234:                         ; preds = %if.end231
  call void @llvm.trap() #6
  unreachable

if.else241:                                       ; preds = %_Dynamic_check.succeeded235
  %235 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call242 = call i32 @puts(i8* %235)
  %236 = load i32, i32* @tests_failed, align 4
  %inc243 = add nsw i32 %236, 1
  store i32 %inc243, i32* @tests_failed, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.else241, %if.then238
  %237 = load i8*, i8** %filename, align 8
  %238 = ptrtoint i8* %237 to i64
  %239 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %238)
  %240 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.152 to i64))
  %call245 = call i8* @t_strcpy(i8* %239, i8* %240)
  %call246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 382, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %241 = load i8*, i8** %filename, align 8
  %242 = ptrtoint i8* %241 to i32
  %243 = call i8* @c_fetch_pointer_from_offset(i32 %242)
  %244 = call i1 @c_isTaintedPointerToTaintedMem(i8* %243)
  br i1 %244, label %_Dynamic_check.succeeded248, label %_Dynamic_check.failed247

_Dynamic_check.succeeded248:                      ; preds = %if.end244
  %call249 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %243)
  %cmp250 = icmp eq %Tstruct.json_value_t_t* %call249, null
  br i1 %cmp250, label %if.then251, label %if.else254

if.then251:                                       ; preds = %_Dynamic_check.succeeded248
  %245 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call252 = call i32 @puts(i8* %245)
  %246 = load i32, i32* @tests_passed, align 4
  %inc253 = add nsw i32 %246, 1
  store i32 %inc253, i32* @tests_passed, align 4
  br label %if.end257

_Dynamic_check.failed247:                         ; preds = %if.end244
  call void @llvm.trap() #6
  unreachable

if.else254:                                       ; preds = %_Dynamic_check.succeeded248
  %247 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call255 = call i32 @puts(i8* %247)
  %248 = load i32, i32* @tests_failed, align 4
  %inc256 = add nsw i32 %248, 1
  store i32 %inc256, i32* @tests_failed, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.else254, %if.then251
  %249 = load i8*, i8** %filename, align 8
  %250 = ptrtoint i8* %249 to i64
  %251 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %250)
  %252 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.153 to i64))
  %call258 = call i8* @t_strcpy(i8* %251, i8* %252)
  %call259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 384, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %253 = load i8*, i8** %filename, align 8
  %254 = ptrtoint i8* %253 to i32
  %255 = call i8* @c_fetch_pointer_from_offset(i32 %254)
  %256 = call i1 @c_isTaintedPointerToTaintedMem(i8* %255)
  br i1 %256, label %_Dynamic_check.succeeded261, label %_Dynamic_check.failed260

_Dynamic_check.succeeded261:                      ; preds = %if.end257
  %call262 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %255)
  %cmp263 = icmp eq %Tstruct.json_value_t_t* %call262, null
  br i1 %cmp263, label %if.then264, label %if.else267

if.then264:                                       ; preds = %_Dynamic_check.succeeded261
  %257 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call265 = call i32 @puts(i8* %257)
  %258 = load i32, i32* @tests_passed, align 4
  %inc266 = add nsw i32 %258, 1
  store i32 %inc266, i32* @tests_passed, align 4
  br label %if.end270

_Dynamic_check.failed260:                         ; preds = %if.end257
  call void @llvm.trap() #6
  unreachable

if.else267:                                       ; preds = %_Dynamic_check.succeeded261
  %259 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call268 = call i32 @puts(i8* %259)
  %260 = load i32, i32* @tests_failed, align 4
  %inc269 = add nsw i32 %260, 1
  store i32 %inc269, i32* @tests_failed, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.else267, %if.then264
  %261 = load i8*, i8** %filename, align 8
  %262 = ptrtoint i8* %261 to i64
  %263 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %262)
  %264 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.154 to i64))
  %call271 = call i8* @t_strcpy(i8* %263, i8* %264)
  %call272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %265 = load i8*, i8** %filename, align 8
  %266 = ptrtoint i8* %265 to i32
  %267 = call i8* @c_fetch_pointer_from_offset(i32 %266)
  %268 = call i1 @c_isTaintedPointerToTaintedMem(i8* %267)
  br i1 %268, label %_Dynamic_check.succeeded274, label %_Dynamic_check.failed273

_Dynamic_check.succeeded274:                      ; preds = %if.end270
  %call275 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %267)
  %cmp276 = icmp eq %Tstruct.json_value_t_t* %call275, null
  br i1 %cmp276, label %if.then277, label %if.else280

if.then277:                                       ; preds = %_Dynamic_check.succeeded274
  %269 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call278 = call i32 @puts(i8* %269)
  %270 = load i32, i32* @tests_passed, align 4
  %inc279 = add nsw i32 %270, 1
  store i32 %inc279, i32* @tests_passed, align 4
  br label %if.end283

_Dynamic_check.failed273:                         ; preds = %if.end270
  call void @llvm.trap() #6
  unreachable

if.else280:                                       ; preds = %_Dynamic_check.succeeded274
  %271 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call281 = call i32 @puts(i8* %271)
  %272 = load i32, i32* @tests_failed, align 4
  %inc282 = add nsw i32 %272, 1
  store i32 %inc282, i32* @tests_failed, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.else280, %if.then277
  %273 = load i8*, i8** %filename, align 8
  %274 = ptrtoint i8* %273 to i64
  %275 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %274)
  %276 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.155 to i64))
  %call284 = call i8* @t_strcpy(i8* %275, i8* %276)
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 388, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %277 = load i8*, i8** %filename, align 8
  %278 = ptrtoint i8* %277 to i32
  %279 = call i8* @c_fetch_pointer_from_offset(i32 %278)
  %280 = call i1 @c_isTaintedPointerToTaintedMem(i8* %279)
  br i1 %280, label %_Dynamic_check.succeeded287, label %_Dynamic_check.failed286

_Dynamic_check.succeeded287:                      ; preds = %if.end283
  %call288 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %279)
  %cmp289 = icmp eq %Tstruct.json_value_t_t* %call288, null
  br i1 %cmp289, label %if.then290, label %if.else293

if.then290:                                       ; preds = %_Dynamic_check.succeeded287
  %281 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call291 = call i32 @puts(i8* %281)
  %282 = load i32, i32* @tests_passed, align 4
  %inc292 = add nsw i32 %282, 1
  store i32 %inc292, i32* @tests_passed, align 4
  br label %if.end296

_Dynamic_check.failed286:                         ; preds = %if.end283
  call void @llvm.trap() #6
  unreachable

if.else293:                                       ; preds = %_Dynamic_check.succeeded287
  %283 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call294 = call i32 @puts(i8* %283)
  %284 = load i32, i32* @tests_failed, align 4
  %inc295 = add nsw i32 %284, 1
  store i32 %inc295, i32* @tests_failed, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.else293, %if.then290
  %285 = load i8*, i8** %filename, align 8
  %286 = ptrtoint i8* %285 to i64
  %287 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %286)
  %288 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.156 to i64))
  %call297 = call i8* @t_strcpy(i8* %287, i8* %288)
  %call298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 390, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %289 = load i8*, i8** %filename, align 8
  %290 = ptrtoint i8* %289 to i32
  %291 = call i8* @c_fetch_pointer_from_offset(i32 %290)
  %292 = call i1 @c_isTaintedPointerToTaintedMem(i8* %291)
  br i1 %292, label %_Dynamic_check.succeeded300, label %_Dynamic_check.failed299

_Dynamic_check.succeeded300:                      ; preds = %if.end296
  %call301 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %291)
  %cmp302 = icmp eq %Tstruct.json_value_t_t* %call301, null
  br i1 %cmp302, label %if.then303, label %if.else306

if.then303:                                       ; preds = %_Dynamic_check.succeeded300
  %293 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call304 = call i32 @puts(i8* %293)
  %294 = load i32, i32* @tests_passed, align 4
  %inc305 = add nsw i32 %294, 1
  store i32 %inc305, i32* @tests_passed, align 4
  br label %if.end309

_Dynamic_check.failed299:                         ; preds = %if.end296
  call void @llvm.trap() #6
  unreachable

if.else306:                                       ; preds = %_Dynamic_check.succeeded300
  %295 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call307 = call i32 @puts(i8* %295)
  %296 = load i32, i32* @tests_failed, align 4
  %inc308 = add nsw i32 %296, 1
  store i32 %inc308, i32* @tests_failed, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.else306, %if.then303
  %297 = load i8*, i8** %filename, align 8
  %298 = ptrtoint i8* %297 to i64
  %299 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %298)
  %300 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.157 to i64))
  %call310 = call i8* @t_strcpy(i8* %299, i8* %300)
  %call311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %301 = load i8*, i8** %filename, align 8
  %302 = ptrtoint i8* %301 to i32
  %303 = call i8* @c_fetch_pointer_from_offset(i32 %302)
  %304 = call i1 @c_isTaintedPointerToTaintedMem(i8* %303)
  br i1 %304, label %_Dynamic_check.succeeded313, label %_Dynamic_check.failed312

_Dynamic_check.succeeded313:                      ; preds = %if.end309
  %call314 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %303)
  %cmp315 = icmp eq %Tstruct.json_value_t_t* %call314, null
  br i1 %cmp315, label %if.then316, label %if.else319

if.then316:                                       ; preds = %_Dynamic_check.succeeded313
  %305 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call317 = call i32 @puts(i8* %305)
  %306 = load i32, i32* @tests_passed, align 4
  %inc318 = add nsw i32 %306, 1
  store i32 %inc318, i32* @tests_passed, align 4
  br label %if.end322

_Dynamic_check.failed312:                         ; preds = %if.end309
  call void @llvm.trap() #6
  unreachable

if.else319:                                       ; preds = %_Dynamic_check.succeeded313
  %307 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call320 = call i32 @puts(i8* %307)
  %308 = load i32, i32* @tests_failed, align 4
  %inc321 = add nsw i32 %308, 1
  store i32 %inc321, i32* @tests_failed, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.else319, %if.then316
  %309 = load i8*, i8** %filename, align 8
  %310 = ptrtoint i8* %309 to i64
  %311 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %310)
  %312 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.158 to i64))
  %call323 = call i8* @t_strcpy(i8* %311, i8* %312)
  %call324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %313 = load i8*, i8** %filename, align 8
  %314 = ptrtoint i8* %313 to i32
  %315 = call i8* @c_fetch_pointer_from_offset(i32 %314)
  %316 = call i1 @c_isTaintedPointerToTaintedMem(i8* %315)
  br i1 %316, label %_Dynamic_check.succeeded326, label %_Dynamic_check.failed325

_Dynamic_check.succeeded326:                      ; preds = %if.end322
  %call327 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %315)
  %cmp328 = icmp eq %Tstruct.json_value_t_t* %call327, null
  br i1 %cmp328, label %if.then329, label %if.else332

if.then329:                                       ; preds = %_Dynamic_check.succeeded326
  %317 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call330 = call i32 @puts(i8* %317)
  %318 = load i32, i32* @tests_passed, align 4
  %inc331 = add nsw i32 %318, 1
  store i32 %inc331, i32* @tests_passed, align 4
  br label %if.end335

_Dynamic_check.failed325:                         ; preds = %if.end322
  call void @llvm.trap() #6
  unreachable

if.else332:                                       ; preds = %_Dynamic_check.succeeded326
  %319 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call333 = call i32 @puts(i8* %319)
  %320 = load i32, i32* @tests_failed, align 4
  %inc334 = add nsw i32 %320, 1
  store i32 %inc334, i32* @tests_failed, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.else332, %if.then329
  %321 = load i8*, i8** %filename, align 8
  %322 = ptrtoint i8* %321 to i64
  %323 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %322)
  %324 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.159 to i64))
  %call336 = call i8* @t_strcpy(i8* %323, i8* %324)
  %call337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %325 = load i8*, i8** %filename, align 8
  %326 = ptrtoint i8* %325 to i32
  %327 = call i8* @c_fetch_pointer_from_offset(i32 %326)
  %328 = call i1 @c_isTaintedPointerToTaintedMem(i8* %327)
  br i1 %328, label %_Dynamic_check.succeeded339, label %_Dynamic_check.failed338

_Dynamic_check.succeeded339:                      ; preds = %if.end335
  %call340 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %327)
  %cmp341 = icmp eq %Tstruct.json_value_t_t* %call340, null
  br i1 %cmp341, label %if.then342, label %if.else345

if.then342:                                       ; preds = %_Dynamic_check.succeeded339
  %329 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call343 = call i32 @puts(i8* %329)
  %330 = load i32, i32* @tests_passed, align 4
  %inc344 = add nsw i32 %330, 1
  store i32 %inc344, i32* @tests_passed, align 4
  br label %if.end348

_Dynamic_check.failed338:                         ; preds = %if.end335
  call void @llvm.trap() #6
  unreachable

if.else345:                                       ; preds = %_Dynamic_check.succeeded339
  %331 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call346 = call i32 @puts(i8* %331)
  %332 = load i32, i32* @tests_failed, align 4
  %inc347 = add nsw i32 %332, 1
  store i32 %inc347, i32* @tests_failed, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.else345, %if.then342
  %333 = load i8*, i8** %filename, align 8
  %334 = ptrtoint i8* %333 to i64
  %335 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %334)
  %336 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.160 to i64))
  %call349 = call i8* @t_strcpy(i8* %335, i8* %336)
  %call350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %337 = load i8*, i8** %filename, align 8
  %338 = ptrtoint i8* %337 to i32
  %339 = call i8* @c_fetch_pointer_from_offset(i32 %338)
  %340 = call i1 @c_isTaintedPointerToTaintedMem(i8* %339)
  br i1 %340, label %_Dynamic_check.succeeded352, label %_Dynamic_check.failed351

_Dynamic_check.succeeded352:                      ; preds = %if.end348
  %call353 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %339)
  %cmp354 = icmp eq %Tstruct.json_value_t_t* %call353, null
  br i1 %cmp354, label %if.then355, label %if.else358

if.then355:                                       ; preds = %_Dynamic_check.succeeded352
  %341 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call356 = call i32 @puts(i8* %341)
  %342 = load i32, i32* @tests_passed, align 4
  %inc357 = add nsw i32 %342, 1
  store i32 %inc357, i32* @tests_passed, align 4
  br label %if.end361

_Dynamic_check.failed351:                         ; preds = %if.end348
  call void @llvm.trap() #6
  unreachable

if.else358:                                       ; preds = %_Dynamic_check.succeeded352
  %343 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call359 = call i32 @puts(i8* %343)
  %344 = load i32, i32* @tests_failed, align 4
  %inc360 = add nsw i32 %344, 1
  store i32 %inc360, i32* @tests_failed, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.else358, %if.then355
  %345 = load i8*, i8** %filename, align 8
  %346 = ptrtoint i8* %345 to i64
  %347 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %346)
  %348 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.161 to i64))
  %call362 = call i8* @t_strcpy(i8* %347, i8* %348)
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 400, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %349 = load i8*, i8** %filename, align 8
  %350 = ptrtoint i8* %349 to i32
  %351 = call i8* @c_fetch_pointer_from_offset(i32 %350)
  %352 = call i1 @c_isTaintedPointerToTaintedMem(i8* %351)
  br i1 %352, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %if.end361
  %call366 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %351)
  %cmp367 = icmp eq %Tstruct.json_value_t_t* %call366, null
  br i1 %cmp367, label %if.then368, label %if.else371

if.then368:                                       ; preds = %_Dynamic_check.succeeded365
  %353 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call369 = call i32 @puts(i8* %353)
  %354 = load i32, i32* @tests_passed, align 4
  %inc370 = add nsw i32 %354, 1
  store i32 %inc370, i32* @tests_passed, align 4
  br label %if.end374

_Dynamic_check.failed364:                         ; preds = %if.end361
  call void @llvm.trap() #6
  unreachable

if.else371:                                       ; preds = %_Dynamic_check.succeeded365
  %355 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call372 = call i32 @puts(i8* %355)
  %356 = load i32, i32* @tests_failed, align 4
  %inc373 = add nsw i32 %356, 1
  store i32 %inc373, i32* @tests_failed, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.else371, %if.then368
  %357 = load i8*, i8** %filename, align 8
  %358 = ptrtoint i8* %357 to i64
  %359 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %358)
  %360 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.162 to i64))
  %call375 = call i8* @t_strcpy(i8* %359, i8* %360)
  %call376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 402, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %361 = load i8*, i8** %filename, align 8
  %362 = ptrtoint i8* %361 to i32
  %363 = call i8* @c_fetch_pointer_from_offset(i32 %362)
  %364 = call i1 @c_isTaintedPointerToTaintedMem(i8* %363)
  br i1 %364, label %_Dynamic_check.succeeded378, label %_Dynamic_check.failed377

_Dynamic_check.succeeded378:                      ; preds = %if.end374
  %call379 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %363)
  %cmp380 = icmp eq %Tstruct.json_value_t_t* %call379, null
  br i1 %cmp380, label %if.then381, label %if.else384

if.then381:                                       ; preds = %_Dynamic_check.succeeded378
  %365 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call382 = call i32 @puts(i8* %365)
  %366 = load i32, i32* @tests_passed, align 4
  %inc383 = add nsw i32 %366, 1
  store i32 %inc383, i32* @tests_passed, align 4
  br label %if.end387

_Dynamic_check.failed377:                         ; preds = %if.end374
  call void @llvm.trap() #6
  unreachable

if.else384:                                       ; preds = %_Dynamic_check.succeeded378
  %367 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call385 = call i32 @puts(i8* %367)
  %368 = load i32, i32* @tests_failed, align 4
  %inc386 = add nsw i32 %368, 1
  store i32 %inc386, i32* @tests_failed, align 4
  br label %if.end387

if.end387:                                        ; preds = %if.else384, %if.then381
  %369 = load i8*, i8** %filename, align 8
  %370 = ptrtoint i8* %369 to i64
  %371 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %370)
  %372 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.163 to i64))
  %call388 = call i8* @t_strcpy(i8* %371, i8* %372)
  %call389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %373 = load i8*, i8** %filename, align 8
  %374 = ptrtoint i8* %373 to i32
  %375 = call i8* @c_fetch_pointer_from_offset(i32 %374)
  %376 = call i1 @c_isTaintedPointerToTaintedMem(i8* %375)
  br i1 %376, label %_Dynamic_check.succeeded391, label %_Dynamic_check.failed390

_Dynamic_check.succeeded391:                      ; preds = %if.end387
  %call392 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %375)
  %cmp393 = icmp eq %Tstruct.json_value_t_t* %call392, null
  br i1 %cmp393, label %if.then394, label %if.else397

if.then394:                                       ; preds = %_Dynamic_check.succeeded391
  %377 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call395 = call i32 @puts(i8* %377)
  %378 = load i32, i32* @tests_passed, align 4
  %inc396 = add nsw i32 %378, 1
  store i32 %inc396, i32* @tests_passed, align 4
  br label %if.end400

_Dynamic_check.failed390:                         ; preds = %if.end387
  call void @llvm.trap() #6
  unreachable

if.else397:                                       ; preds = %_Dynamic_check.succeeded391
  %379 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call398 = call i32 @puts(i8* %379)
  %380 = load i32, i32* @tests_failed, align 4
  %inc399 = add nsw i32 %380, 1
  store i32 %inc399, i32* @tests_failed, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.else397, %if.then394
  %381 = load i8*, i8** %filename, align 8
  %382 = ptrtoint i8* %381 to i64
  %383 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %382)
  %384 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.164 to i64))
  %call401 = call i8* @t_strcpy(i8* %383, i8* %384)
  %call402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 406, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %385 = load i8*, i8** %filename, align 8
  %386 = ptrtoint i8* %385 to i32
  %387 = call i8* @c_fetch_pointer_from_offset(i32 %386)
  %388 = call i1 @c_isTaintedPointerToTaintedMem(i8* %387)
  br i1 %388, label %_Dynamic_check.succeeded404, label %_Dynamic_check.failed403

_Dynamic_check.succeeded404:                      ; preds = %if.end400
  %call405 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %387)
  %cmp406 = icmp eq %Tstruct.json_value_t_t* %call405, null
  br i1 %cmp406, label %if.then407, label %if.else410

if.then407:                                       ; preds = %_Dynamic_check.succeeded404
  %389 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call408 = call i32 @puts(i8* %389)
  %390 = load i32, i32* @tests_passed, align 4
  %inc409 = add nsw i32 %390, 1
  store i32 %inc409, i32* @tests_passed, align 4
  br label %if.end413

_Dynamic_check.failed403:                         ; preds = %if.end400
  call void @llvm.trap() #6
  unreachable

if.else410:                                       ; preds = %_Dynamic_check.succeeded404
  %391 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call411 = call i32 @puts(i8* %391)
  %392 = load i32, i32* @tests_failed, align 4
  %inc412 = add nsw i32 %392, 1
  store i32 %inc412, i32* @tests_failed, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.else410, %if.then407
  %393 = load i8*, i8** %filename, align 8
  %394 = ptrtoint i8* %393 to i64
  %395 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %394)
  %396 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([15 x i8]* @.str.165 to i64))
  %call414 = call i8* @t_strcpy(i8* %395, i8* %396)
  %call415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 408, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %397 = load i8*, i8** %filename, align 8
  %398 = ptrtoint i8* %397 to i32
  %399 = call i8* @c_fetch_pointer_from_offset(i32 %398)
  %400 = call i1 @c_isTaintedPointerToTaintedMem(i8* %399)
  br i1 %400, label %_Dynamic_check.succeeded417, label %_Dynamic_check.failed416

_Dynamic_check.succeeded417:                      ; preds = %if.end413
  %call418 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %399)
  %cmp419 = icmp eq %Tstruct.json_value_t_t* %call418, null
  br i1 %cmp419, label %if.then420, label %if.else423

if.then420:                                       ; preds = %_Dynamic_check.succeeded417
  %401 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call421 = call i32 @puts(i8* %401)
  %402 = load i32, i32* @tests_passed, align 4
  %inc422 = add nsw i32 %402, 1
  store i32 %inc422, i32* @tests_passed, align 4
  br label %if.end426

_Dynamic_check.failed416:                         ; preds = %if.end413
  call void @llvm.trap() #6
  unreachable

if.else423:                                       ; preds = %_Dynamic_check.succeeded417
  %403 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call424 = call i32 @puts(i8* %403)
  %404 = load i32, i32* @tests_failed, align 4
  %inc425 = add nsw i32 %404, 1
  store i32 %inc425, i32* @tests_failed, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.else423, %if.then420
  %405 = load i8*, i8** %filename, align 8
  %406 = ptrtoint i8* %405 to i64
  %407 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %406)
  %408 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.166 to i64))
  %call427 = call i8* @t_strcpy(i8* %407, i8* %408)
  %call428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %409 = load i8*, i8** %filename, align 8
  %410 = ptrtoint i8* %409 to i32
  %411 = call i8* @c_fetch_pointer_from_offset(i32 %410)
  %412 = call i1 @c_isTaintedPointerToTaintedMem(i8* %411)
  br i1 %412, label %_Dynamic_check.succeeded430, label %_Dynamic_check.failed429

_Dynamic_check.succeeded430:                      ; preds = %if.end426
  %call431 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %411)
  %cmp432 = icmp eq %Tstruct.json_value_t_t* %call431, null
  br i1 %cmp432, label %if.then433, label %if.else436

if.then433:                                       ; preds = %_Dynamic_check.succeeded430
  %413 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call434 = call i32 @puts(i8* %413)
  %414 = load i32, i32* @tests_passed, align 4
  %inc435 = add nsw i32 %414, 1
  store i32 %inc435, i32* @tests_passed, align 4
  br label %if.end439

_Dynamic_check.failed429:                         ; preds = %if.end426
  call void @llvm.trap() #6
  unreachable

if.else436:                                       ; preds = %_Dynamic_check.succeeded430
  %415 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call437 = call i32 @puts(i8* %415)
  %416 = load i32, i32* @tests_failed, align 4
  %inc438 = add nsw i32 %416, 1
  store i32 %inc438, i32* @tests_failed, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.else436, %if.then433
  %417 = load i8*, i8** %filename, align 8
  %418 = ptrtoint i8* %417 to i64
  %419 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %418)
  %420 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.167 to i64))
  %call440 = call i8* @t_strcpy(i8* %419, i8* %420)
  %call441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %421 = load i8*, i8** %filename, align 8
  %422 = ptrtoint i8* %421 to i32
  %423 = call i8* @c_fetch_pointer_from_offset(i32 %422)
  %424 = call i1 @c_isTaintedPointerToTaintedMem(i8* %423)
  br i1 %424, label %_Dynamic_check.succeeded443, label %_Dynamic_check.failed442

_Dynamic_check.succeeded443:                      ; preds = %if.end439
  %call444 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %423)
  %cmp445 = icmp eq %Tstruct.json_value_t_t* %call444, null
  br i1 %cmp445, label %if.then446, label %if.else449

if.then446:                                       ; preds = %_Dynamic_check.succeeded443
  %425 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call447 = call i32 @puts(i8* %425)
  %426 = load i32, i32* @tests_passed, align 4
  %inc448 = add nsw i32 %426, 1
  store i32 %inc448, i32* @tests_passed, align 4
  br label %if.end452

_Dynamic_check.failed442:                         ; preds = %if.end439
  call void @llvm.trap() #6
  unreachable

if.else449:                                       ; preds = %_Dynamic_check.succeeded443
  %427 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call450 = call i32 @puts(i8* %427)
  %428 = load i32, i32* @tests_failed, align 4
  %inc451 = add nsw i32 %428, 1
  store i32 %inc451, i32* @tests_failed, align 4
  br label %if.end452

if.end452:                                        ; preds = %if.else449, %if.then446
  %429 = load i8*, i8** %filename, align 8
  %430 = ptrtoint i8* %429 to i64
  %431 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %430)
  %432 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([9 x i8]* @.str.168 to i64))
  %call453 = call i8* @t_strcpy(i8* %431, i8* %432)
  %call454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %433 = load i8*, i8** %filename, align 8
  %434 = ptrtoint i8* %433 to i32
  %435 = call i8* @c_fetch_pointer_from_offset(i32 %434)
  %436 = call i1 @c_isTaintedPointerToTaintedMem(i8* %435)
  br i1 %436, label %_Dynamic_check.succeeded456, label %_Dynamic_check.failed455

_Dynamic_check.succeeded456:                      ; preds = %if.end452
  %call457 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %435)
  %cmp458 = icmp eq %Tstruct.json_value_t_t* %call457, null
  br i1 %cmp458, label %if.then459, label %if.else462

if.then459:                                       ; preds = %_Dynamic_check.succeeded456
  %437 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call460 = call i32 @puts(i8* %437)
  %438 = load i32, i32* @tests_passed, align 4
  %inc461 = add nsw i32 %438, 1
  store i32 %inc461, i32* @tests_passed, align 4
  br label %if.end465

_Dynamic_check.failed455:                         ; preds = %if.end452
  call void @llvm.trap() #6
  unreachable

if.else462:                                       ; preds = %_Dynamic_check.succeeded456
  %439 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call463 = call i32 @puts(i8* %439)
  %440 = load i32, i32* @tests_failed, align 4
  %inc464 = add nsw i32 %440, 1
  store i32 %inc464, i32* @tests_failed, align 4
  br label %if.end465

if.end465:                                        ; preds = %if.else462, %if.then459
  %441 = load i8*, i8** %filename, align 8
  %442 = ptrtoint i8* %441 to i64
  %443 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %442)
  %444 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.169 to i64))
  %call466 = call i8* @t_strcpy(i8* %443, i8* %444)
  %call467 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 416, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %445 = load i8*, i8** %filename, align 8
  %446 = ptrtoint i8* %445 to i32
  %447 = call i8* @c_fetch_pointer_from_offset(i32 %446)
  %448 = call i1 @c_isTaintedPointerToTaintedMem(i8* %447)
  br i1 %448, label %_Dynamic_check.succeeded469, label %_Dynamic_check.failed468

_Dynamic_check.succeeded469:                      ; preds = %if.end465
  %call470 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %447)
  %cmp471 = icmp eq %Tstruct.json_value_t_t* %call470, null
  br i1 %cmp471, label %if.then472, label %if.else475

if.then472:                                       ; preds = %_Dynamic_check.succeeded469
  %449 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call473 = call i32 @puts(i8* %449)
  %450 = load i32, i32* @tests_passed, align 4
  %inc474 = add nsw i32 %450, 1
  store i32 %inc474, i32* @tests_passed, align 4
  br label %if.end478

_Dynamic_check.failed468:                         ; preds = %if.end465
  call void @llvm.trap() #6
  unreachable

if.else475:                                       ; preds = %_Dynamic_check.succeeded469
  %451 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call476 = call i32 @puts(i8* %451)
  %452 = load i32, i32* @tests_failed, align 4
  %inc477 = add nsw i32 %452, 1
  store i32 %inc477, i32* @tests_failed, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.else475, %if.then472
  %453 = load i8*, i8** %filename, align 8
  %454 = ptrtoint i8* %453 to i64
  %455 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %454)
  %456 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.170 to i64))
  %call479 = call i8* @t_strcpy(i8* %455, i8* %456)
  %call480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 418, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %457 = load i8*, i8** %filename, align 8
  %458 = ptrtoint i8* %457 to i32
  %459 = call i8* @c_fetch_pointer_from_offset(i32 %458)
  %460 = call i1 @c_isTaintedPointerToTaintedMem(i8* %459)
  br i1 %460, label %_Dynamic_check.succeeded482, label %_Dynamic_check.failed481

_Dynamic_check.succeeded482:                      ; preds = %if.end478
  %call483 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %459)
  %cmp484 = icmp eq %Tstruct.json_value_t_t* %call483, null
  br i1 %cmp484, label %if.then485, label %if.else488

if.then485:                                       ; preds = %_Dynamic_check.succeeded482
  %461 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call486 = call i32 @puts(i8* %461)
  %462 = load i32, i32* @tests_passed, align 4
  %inc487 = add nsw i32 %462, 1
  store i32 %inc487, i32* @tests_passed, align 4
  br label %if.end491

_Dynamic_check.failed481:                         ; preds = %if.end478
  call void @llvm.trap() #6
  unreachable

if.else488:                                       ; preds = %_Dynamic_check.succeeded482
  %463 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call489 = call i32 @puts(i8* %463)
  %464 = load i32, i32* @tests_failed, align 4
  %inc490 = add nsw i32 %464, 1
  store i32 %inc490, i32* @tests_failed, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.else488, %if.then485
  %465 = load i8*, i8** %filename, align 8
  %466 = ptrtoint i8* %465 to i64
  %467 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %466)
  %468 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.171 to i64))
  %call492 = call i8* @t_strcpy(i8* %467, i8* %468)
  %call493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %469 = load i8*, i8** %filename, align 8
  %470 = ptrtoint i8* %469 to i32
  %471 = call i8* @c_fetch_pointer_from_offset(i32 %470)
  %472 = call i1 @c_isTaintedPointerToTaintedMem(i8* %471)
  br i1 %472, label %_Dynamic_check.succeeded495, label %_Dynamic_check.failed494

_Dynamic_check.succeeded495:                      ; preds = %if.end491
  %call496 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %471)
  %cmp497 = icmp eq %Tstruct.json_value_t_t* %call496, null
  br i1 %cmp497, label %if.then498, label %if.else501

if.then498:                                       ; preds = %_Dynamic_check.succeeded495
  %473 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call499 = call i32 @puts(i8* %473)
  %474 = load i32, i32* @tests_passed, align 4
  %inc500 = add nsw i32 %474, 1
  store i32 %inc500, i32* @tests_passed, align 4
  br label %if.end504

_Dynamic_check.failed494:                         ; preds = %if.end491
  call void @llvm.trap() #6
  unreachable

if.else501:                                       ; preds = %_Dynamic_check.succeeded495
  %475 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call502 = call i32 @puts(i8* %475)
  %476 = load i32, i32* @tests_failed, align 4
  %inc503 = add nsw i32 %476, 1
  store i32 %inc503, i32* @tests_failed, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.else501, %if.then498
  %477 = load i8*, i8** %filename, align 8
  %478 = ptrtoint i8* %477 to i64
  %479 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %478)
  %480 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.172 to i64))
  %call505 = call i8* @t_strcpy(i8* %479, i8* %480)
  %call506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 422, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %481 = load i8*, i8** %filename, align 8
  %482 = ptrtoint i8* %481 to i32
  %483 = call i8* @c_fetch_pointer_from_offset(i32 %482)
  %484 = call i1 @c_isTaintedPointerToTaintedMem(i8* %483)
  br i1 %484, label %_Dynamic_check.succeeded508, label %_Dynamic_check.failed507

_Dynamic_check.succeeded508:                      ; preds = %if.end504
  %call509 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %483)
  %cmp510 = icmp eq %Tstruct.json_value_t_t* %call509, null
  br i1 %cmp510, label %if.then511, label %if.else514

if.then511:                                       ; preds = %_Dynamic_check.succeeded508
  %485 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call512 = call i32 @puts(i8* %485)
  %486 = load i32, i32* @tests_passed, align 4
  %inc513 = add nsw i32 %486, 1
  store i32 %inc513, i32* @tests_passed, align 4
  br label %if.end517

_Dynamic_check.failed507:                         ; preds = %if.end504
  call void @llvm.trap() #6
  unreachable

if.else514:                                       ; preds = %_Dynamic_check.succeeded508
  %487 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call515 = call i32 @puts(i8* %487)
  %488 = load i32, i32* @tests_failed, align 4
  %inc516 = add nsw i32 %488, 1
  store i32 %inc516, i32* @tests_failed, align 4
  br label %if.end517

if.end517:                                        ; preds = %if.else514, %if.then511
  %489 = load i8*, i8** %filename, align 8
  %490 = ptrtoint i8* %489 to i64
  %491 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %490)
  %492 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.173 to i64))
  %call518 = call i8* @t_strcpy(i8* %491, i8* %492)
  %call519 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 424, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %493 = load i8*, i8** %filename, align 8
  %494 = ptrtoint i8* %493 to i32
  %495 = call i8* @c_fetch_pointer_from_offset(i32 %494)
  %496 = call i1 @c_isTaintedPointerToTaintedMem(i8* %495)
  br i1 %496, label %_Dynamic_check.succeeded521, label %_Dynamic_check.failed520

_Dynamic_check.succeeded521:                      ; preds = %if.end517
  %call522 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %495)
  %cmp523 = icmp eq %Tstruct.json_value_t_t* %call522, null
  br i1 %cmp523, label %if.then524, label %if.else527

if.then524:                                       ; preds = %_Dynamic_check.succeeded521
  %497 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call525 = call i32 @puts(i8* %497)
  %498 = load i32, i32* @tests_passed, align 4
  %inc526 = add nsw i32 %498, 1
  store i32 %inc526, i32* @tests_passed, align 4
  br label %if.end530

_Dynamic_check.failed520:                         ; preds = %if.end517
  call void @llvm.trap() #6
  unreachable

if.else527:                                       ; preds = %_Dynamic_check.succeeded521
  %499 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call528 = call i32 @puts(i8* %499)
  %500 = load i32, i32* @tests_failed, align 4
  %inc529 = add nsw i32 %500, 1
  store i32 %inc529, i32* @tests_failed, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.else527, %if.then524
  %501 = load i8*, i8** %filename, align 8
  %502 = ptrtoint i8* %501 to i64
  %503 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %502)
  %504 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.174 to i64))
  %call531 = call i8* @t_strcpy(i8* %503, i8* %504)
  %call532 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 426, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %505 = load i8*, i8** %filename, align 8
  %506 = ptrtoint i8* %505 to i32
  %507 = call i8* @c_fetch_pointer_from_offset(i32 %506)
  %508 = call i1 @c_isTaintedPointerToTaintedMem(i8* %507)
  br i1 %508, label %_Dynamic_check.succeeded534, label %_Dynamic_check.failed533

_Dynamic_check.succeeded534:                      ; preds = %if.end530
  %call535 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %507)
  %cmp536 = icmp eq %Tstruct.json_value_t_t* %call535, null
  br i1 %cmp536, label %if.then537, label %if.else540

if.then537:                                       ; preds = %_Dynamic_check.succeeded534
  %509 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call538 = call i32 @puts(i8* %509)
  %510 = load i32, i32* @tests_passed, align 4
  %inc539 = add nsw i32 %510, 1
  store i32 %inc539, i32* @tests_passed, align 4
  br label %if.end543

_Dynamic_check.failed533:                         ; preds = %if.end530
  call void @llvm.trap() #6
  unreachable

if.else540:                                       ; preds = %_Dynamic_check.succeeded534
  %511 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call541 = call i32 @puts(i8* %511)
  %512 = load i32, i32* @tests_failed, align 4
  %inc542 = add nsw i32 %512, 1
  store i32 %inc542, i32* @tests_failed, align 4
  br label %if.end543

if.end543:                                        ; preds = %if.else540, %if.then537
  %513 = load i8*, i8** %filename, align 8
  %514 = ptrtoint i8* %513 to i64
  %515 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %514)
  %516 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.175 to i64))
  %call544 = call i8* @t_strcpy(i8* %515, i8* %516)
  %call545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 428, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %517 = load i8*, i8** %filename, align 8
  %518 = ptrtoint i8* %517 to i32
  %519 = call i8* @c_fetch_pointer_from_offset(i32 %518)
  %520 = call i1 @c_isTaintedPointerToTaintedMem(i8* %519)
  br i1 %520, label %_Dynamic_check.succeeded547, label %_Dynamic_check.failed546

_Dynamic_check.succeeded547:                      ; preds = %if.end543
  %call548 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %519)
  %cmp549 = icmp eq %Tstruct.json_value_t_t* %call548, null
  br i1 %cmp549, label %if.then550, label %if.else553

if.then550:                                       ; preds = %_Dynamic_check.succeeded547
  %521 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call551 = call i32 @puts(i8* %521)
  %522 = load i32, i32* @tests_passed, align 4
  %inc552 = add nsw i32 %522, 1
  store i32 %inc552, i32* @tests_passed, align 4
  br label %if.end556

_Dynamic_check.failed546:                         ; preds = %if.end543
  call void @llvm.trap() #6
  unreachable

if.else553:                                       ; preds = %_Dynamic_check.succeeded547
  %523 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call554 = call i32 @puts(i8* %523)
  %524 = load i32, i32* @tests_failed, align 4
  %inc555 = add nsw i32 %524, 1
  store i32 %inc555, i32* @tests_failed, align 4
  br label %if.end556

if.end556:                                        ; preds = %if.else553, %if.then550
  %525 = load i8*, i8** %filename, align 8
  %526 = ptrtoint i8* %525 to i64
  %527 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %526)
  %528 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.176 to i64))
  %call557 = call i8* @t_strcpy(i8* %527, i8* %528)
  %call558 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %529 = load i8*, i8** %filename, align 8
  %530 = ptrtoint i8* %529 to i32
  %531 = call i8* @c_fetch_pointer_from_offset(i32 %530)
  %532 = call i1 @c_isTaintedPointerToTaintedMem(i8* %531)
  br i1 %532, label %_Dynamic_check.succeeded560, label %_Dynamic_check.failed559

_Dynamic_check.succeeded560:                      ; preds = %if.end556
  %call561 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %531)
  %cmp562 = icmp eq %Tstruct.json_value_t_t* %call561, null
  br i1 %cmp562, label %if.then563, label %if.else566

if.then563:                                       ; preds = %_Dynamic_check.succeeded560
  %533 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call564 = call i32 @puts(i8* %533)
  %534 = load i32, i32* @tests_passed, align 4
  %inc565 = add nsw i32 %534, 1
  store i32 %inc565, i32* @tests_passed, align 4
  br label %if.end569

_Dynamic_check.failed559:                         ; preds = %if.end556
  call void @llvm.trap() #6
  unreachable

if.else566:                                       ; preds = %_Dynamic_check.succeeded560
  %535 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call567 = call i32 @puts(i8* %535)
  %536 = load i32, i32* @tests_failed, align 4
  %inc568 = add nsw i32 %536, 1
  store i32 %inc568, i32* @tests_failed, align 4
  br label %if.end569

if.end569:                                        ; preds = %if.else566, %if.then563
  %537 = load i8*, i8** %filename, align 8
  %538 = ptrtoint i8* %537 to i64
  %539 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %538)
  %540 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.177 to i64))
  %call570 = call i8* @t_strcpy(i8* %539, i8* %540)
  %call571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 432, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %541 = load i8*, i8** %filename, align 8
  %542 = ptrtoint i8* %541 to i32
  %543 = call i8* @c_fetch_pointer_from_offset(i32 %542)
  %544 = call i1 @c_isTaintedPointerToTaintedMem(i8* %543)
  br i1 %544, label %_Dynamic_check.succeeded573, label %_Dynamic_check.failed572

_Dynamic_check.succeeded573:                      ; preds = %if.end569
  %call574 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %543)
  %cmp575 = icmp eq %Tstruct.json_value_t_t* %call574, null
  br i1 %cmp575, label %if.then576, label %if.else579

if.then576:                                       ; preds = %_Dynamic_check.succeeded573
  %545 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call577 = call i32 @puts(i8* %545)
  %546 = load i32, i32* @tests_passed, align 4
  %inc578 = add nsw i32 %546, 1
  store i32 %inc578, i32* @tests_passed, align 4
  br label %if.end582

_Dynamic_check.failed572:                         ; preds = %if.end569
  call void @llvm.trap() #6
  unreachable

if.else579:                                       ; preds = %_Dynamic_check.succeeded573
  %547 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call580 = call i32 @puts(i8* %547)
  %548 = load i32, i32* @tests_failed, align 4
  %inc581 = add nsw i32 %548, 1
  store i32 %inc581, i32* @tests_failed, align 4
  br label %if.end582

if.end582:                                        ; preds = %if.else579, %if.then576
  %549 = load i8*, i8** %filename, align 8
  %550 = ptrtoint i8* %549 to i64
  %551 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %550)
  %552 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.178 to i64))
  %call583 = call i8* @t_strcpy(i8* %551, i8* %552)
  %call584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 434, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %553 = load i8*, i8** %filename, align 8
  %554 = ptrtoint i8* %553 to i32
  %555 = call i8* @c_fetch_pointer_from_offset(i32 %554)
  %556 = call i1 @c_isTaintedPointerToTaintedMem(i8* %555)
  br i1 %556, label %_Dynamic_check.succeeded586, label %_Dynamic_check.failed585

_Dynamic_check.succeeded586:                      ; preds = %if.end582
  %call587 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %555)
  %cmp588 = icmp eq %Tstruct.json_value_t_t* %call587, null
  br i1 %cmp588, label %if.then589, label %if.else592

if.then589:                                       ; preds = %_Dynamic_check.succeeded586
  %557 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call590 = call i32 @puts(i8* %557)
  %558 = load i32, i32* @tests_passed, align 4
  %inc591 = add nsw i32 %558, 1
  store i32 %inc591, i32* @tests_passed, align 4
  br label %if.end595

_Dynamic_check.failed585:                         ; preds = %if.end582
  call void @llvm.trap() #6
  unreachable

if.else592:                                       ; preds = %_Dynamic_check.succeeded586
  %559 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call593 = call i32 @puts(i8* %559)
  %560 = load i32, i32* @tests_failed, align 4
  %inc594 = add nsw i32 %560, 1
  store i32 %inc594, i32* @tests_failed, align 4
  br label %if.end595

if.end595:                                        ; preds = %if.else592, %if.then589
  %561 = load i8*, i8** %filename, align 8
  %562 = ptrtoint i8* %561 to i64
  %563 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %562)
  %564 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.179 to i64))
  %call596 = call i8* @t_strcpy(i8* %563, i8* %564)
  %call597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %565 = load i8*, i8** %filename, align 8
  %566 = ptrtoint i8* %565 to i32
  %567 = call i8* @c_fetch_pointer_from_offset(i32 %566)
  %568 = call i1 @c_isTaintedPointerToTaintedMem(i8* %567)
  br i1 %568, label %_Dynamic_check.succeeded599, label %_Dynamic_check.failed598

_Dynamic_check.succeeded599:                      ; preds = %if.end595
  %call600 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %567)
  %cmp601 = icmp eq %Tstruct.json_value_t_t* %call600, null
  br i1 %cmp601, label %if.then602, label %if.else605

if.then602:                                       ; preds = %_Dynamic_check.succeeded599
  %569 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call603 = call i32 @puts(i8* %569)
  %570 = load i32, i32* @tests_passed, align 4
  %inc604 = add nsw i32 %570, 1
  store i32 %inc604, i32* @tests_passed, align 4
  br label %if.end608

_Dynamic_check.failed598:                         ; preds = %if.end595
  call void @llvm.trap() #6
  unreachable

if.else605:                                       ; preds = %_Dynamic_check.succeeded599
  %571 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call606 = call i32 @puts(i8* %571)
  %572 = load i32, i32* @tests_failed, align 4
  %inc607 = add nsw i32 %572, 1
  store i32 %inc607, i32* @tests_failed, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.else605, %if.then602
  %573 = load i8*, i8** %filename, align 8
  %574 = ptrtoint i8* %573 to i64
  %575 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %574)
  %576 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.180 to i64))
  %call609 = call i8* @t_strcpy(i8* %575, i8* %576)
  %call610 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 438, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %577 = load i8*, i8** %filename, align 8
  %578 = ptrtoint i8* %577 to i32
  %579 = call i8* @c_fetch_pointer_from_offset(i32 %578)
  %580 = call i1 @c_isTaintedPointerToTaintedMem(i8* %579)
  br i1 %580, label %_Dynamic_check.succeeded612, label %_Dynamic_check.failed611

_Dynamic_check.succeeded612:                      ; preds = %if.end608
  %call613 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %579)
  %cmp614 = icmp eq %Tstruct.json_value_t_t* %call613, null
  br i1 %cmp614, label %if.then615, label %if.else618

if.then615:                                       ; preds = %_Dynamic_check.succeeded612
  %581 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call616 = call i32 @puts(i8* %581)
  %582 = load i32, i32* @tests_passed, align 4
  %inc617 = add nsw i32 %582, 1
  store i32 %inc617, i32* @tests_passed, align 4
  br label %if.end621

_Dynamic_check.failed611:                         ; preds = %if.end608
  call void @llvm.trap() #6
  unreachable

if.else618:                                       ; preds = %_Dynamic_check.succeeded612
  %583 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call619 = call i32 @puts(i8* %583)
  %584 = load i32, i32* @tests_failed, align 4
  %inc620 = add nsw i32 %584, 1
  store i32 %inc620, i32* @tests_failed, align 4
  br label %if.end621

if.end621:                                        ; preds = %if.else618, %if.then615
  %585 = load i8*, i8** %filename, align 8
  %586 = ptrtoint i8* %585 to i64
  %587 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %586)
  %588 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.181 to i64))
  %call622 = call i8* @t_strcpy(i8* %587, i8* %588)
  %call623 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %589 = load i8*, i8** %filename, align 8
  %590 = ptrtoint i8* %589 to i32
  %591 = call i8* @c_fetch_pointer_from_offset(i32 %590)
  %592 = call i1 @c_isTaintedPointerToTaintedMem(i8* %591)
  br i1 %592, label %_Dynamic_check.succeeded625, label %_Dynamic_check.failed624

_Dynamic_check.succeeded625:                      ; preds = %if.end621
  %call626 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %591)
  %cmp627 = icmp eq %Tstruct.json_value_t_t* %call626, null
  br i1 %cmp627, label %if.then628, label %if.else631

if.then628:                                       ; preds = %_Dynamic_check.succeeded625
  %593 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call629 = call i32 @puts(i8* %593)
  %594 = load i32, i32* @tests_passed, align 4
  %inc630 = add nsw i32 %594, 1
  store i32 %inc630, i32* @tests_passed, align 4
  br label %if.end634

_Dynamic_check.failed624:                         ; preds = %if.end621
  call void @llvm.trap() #6
  unreachable

if.else631:                                       ; preds = %_Dynamic_check.succeeded625
  %595 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call632 = call i32 @puts(i8* %595)
  %596 = load i32, i32* @tests_failed, align 4
  %inc633 = add nsw i32 %596, 1
  store i32 %inc633, i32* @tests_failed, align 4
  br label %if.end634

if.end634:                                        ; preds = %if.else631, %if.then628
  %597 = load i8*, i8** %filename, align 8
  %598 = ptrtoint i8* %597 to i64
  %599 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %598)
  %600 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.182 to i64))
  %call635 = call i8* @t_strcpy(i8* %599, i8* %600)
  %call636 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 442, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %601 = load i8*, i8** %filename, align 8
  %602 = ptrtoint i8* %601 to i32
  %603 = call i8* @c_fetch_pointer_from_offset(i32 %602)
  %604 = call i1 @c_isTaintedPointerToTaintedMem(i8* %603)
  br i1 %604, label %_Dynamic_check.succeeded638, label %_Dynamic_check.failed637

_Dynamic_check.succeeded638:                      ; preds = %if.end634
  %call639 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %603)
  %cmp640 = icmp eq %Tstruct.json_value_t_t* %call639, null
  br i1 %cmp640, label %if.then641, label %if.else644

if.then641:                                       ; preds = %_Dynamic_check.succeeded638
  %605 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call642 = call i32 @puts(i8* %605)
  %606 = load i32, i32* @tests_passed, align 4
  %inc643 = add nsw i32 %606, 1
  store i32 %inc643, i32* @tests_passed, align 4
  br label %if.end647

_Dynamic_check.failed637:                         ; preds = %if.end634
  call void @llvm.trap() #6
  unreachable

if.else644:                                       ; preds = %_Dynamic_check.succeeded638
  %607 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call645 = call i32 @puts(i8* %607)
  %608 = load i32, i32* @tests_failed, align 4
  %inc646 = add nsw i32 %608, 1
  store i32 %inc646, i32* @tests_failed, align 4
  br label %if.end647

if.end647:                                        ; preds = %if.else644, %if.then641
  %609 = load i8*, i8** %filename, align 8
  %610 = ptrtoint i8* %609 to i64
  %611 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %610)
  %612 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.183 to i64))
  %call648 = call i8* @t_strcpy(i8* %611, i8* %612)
  %call649 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 444, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %613 = load i8*, i8** %filename, align 8
  %614 = ptrtoint i8* %613 to i32
  %615 = call i8* @c_fetch_pointer_from_offset(i32 %614)
  %616 = call i1 @c_isTaintedPointerToTaintedMem(i8* %615)
  br i1 %616, label %_Dynamic_check.succeeded651, label %_Dynamic_check.failed650

_Dynamic_check.succeeded651:                      ; preds = %if.end647
  %call652 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %615)
  %cmp653 = icmp eq %Tstruct.json_value_t_t* %call652, null
  br i1 %cmp653, label %if.then654, label %if.else657

if.then654:                                       ; preds = %_Dynamic_check.succeeded651
  %617 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call655 = call i32 @puts(i8* %617)
  %618 = load i32, i32* @tests_passed, align 4
  %inc656 = add nsw i32 %618, 1
  store i32 %inc656, i32* @tests_passed, align 4
  br label %if.end660

_Dynamic_check.failed650:                         ; preds = %if.end647
  call void @llvm.trap() #6
  unreachable

if.else657:                                       ; preds = %_Dynamic_check.succeeded651
  %619 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call658 = call i32 @puts(i8* %619)
  %620 = load i32, i32* @tests_failed, align 4
  %inc659 = add nsw i32 %620, 1
  store i32 %inc659, i32* @tests_failed, align 4
  br label %if.end660

if.end660:                                        ; preds = %if.else657, %if.then654
  %621 = load i8*, i8** %filename, align 8
  %622 = ptrtoint i8* %621 to i64
  %623 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %622)
  %624 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.184 to i64))
  %call661 = call i8* @t_strcpy(i8* %623, i8* %624)
  %call662 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 446, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %625 = load i8*, i8** %filename, align 8
  %626 = ptrtoint i8* %625 to i32
  %627 = call i8* @c_fetch_pointer_from_offset(i32 %626)
  %628 = call i1 @c_isTaintedPointerToTaintedMem(i8* %627)
  br i1 %628, label %_Dynamic_check.succeeded664, label %_Dynamic_check.failed663

_Dynamic_check.succeeded664:                      ; preds = %if.end660
  %call665 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %627)
  %cmp666 = icmp eq %Tstruct.json_value_t_t* %call665, null
  br i1 %cmp666, label %if.then667, label %if.else670

if.then667:                                       ; preds = %_Dynamic_check.succeeded664
  %629 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call668 = call i32 @puts(i8* %629)
  %630 = load i32, i32* @tests_passed, align 4
  %inc669 = add nsw i32 %630, 1
  store i32 %inc669, i32* @tests_passed, align 4
  br label %if.end673

_Dynamic_check.failed663:                         ; preds = %if.end660
  call void @llvm.trap() #6
  unreachable

if.else670:                                       ; preds = %_Dynamic_check.succeeded664
  %631 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call671 = call i32 @puts(i8* %631)
  %632 = load i32, i32* @tests_failed, align 4
  %inc672 = add nsw i32 %632, 1
  store i32 %inc672, i32* @tests_failed, align 4
  br label %if.end673

if.end673:                                        ; preds = %if.else670, %if.then667
  %633 = load i8*, i8** %filename, align 8
  %634 = ptrtoint i8* %633 to i64
  %635 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %634)
  %636 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.185 to i64))
  %call674 = call i8* @t_strcpy(i8* %635, i8* %636)
  %call675 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %637 = load i8*, i8** %filename, align 8
  %638 = ptrtoint i8* %637 to i32
  %639 = call i8* @c_fetch_pointer_from_offset(i32 %638)
  %640 = call i1 @c_isTaintedPointerToTaintedMem(i8* %639)
  br i1 %640, label %_Dynamic_check.succeeded677, label %_Dynamic_check.failed676

_Dynamic_check.succeeded677:                      ; preds = %if.end673
  %call678 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %639)
  %cmp679 = icmp eq %Tstruct.json_value_t_t* %call678, null
  br i1 %cmp679, label %if.then680, label %if.else683

if.then680:                                       ; preds = %_Dynamic_check.succeeded677
  %641 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call681 = call i32 @puts(i8* %641)
  %642 = load i32, i32* @tests_passed, align 4
  %inc682 = add nsw i32 %642, 1
  store i32 %inc682, i32* @tests_passed, align 4
  br label %if.end686

_Dynamic_check.failed676:                         ; preds = %if.end673
  call void @llvm.trap() #6
  unreachable

if.else683:                                       ; preds = %_Dynamic_check.succeeded677
  %643 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call684 = call i32 @puts(i8* %643)
  %644 = load i32, i32* @tests_failed, align 4
  %inc685 = add nsw i32 %644, 1
  store i32 %inc685, i32* @tests_failed, align 4
  br label %if.end686

if.end686:                                        ; preds = %if.else683, %if.then680
  %645 = load i8*, i8** %filename, align 8
  %646 = ptrtoint i8* %645 to i64
  %647 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %646)
  %648 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.186 to i64))
  %call687 = call i8* @t_strcpy(i8* %647, i8* %648)
  %call688 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 450, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %649 = load i8*, i8** %filename, align 8
  %650 = ptrtoint i8* %649 to i32
  %651 = call i8* @c_fetch_pointer_from_offset(i32 %650)
  %652 = call i1 @c_isTaintedPointerToTaintedMem(i8* %651)
  br i1 %652, label %_Dynamic_check.succeeded690, label %_Dynamic_check.failed689

_Dynamic_check.succeeded690:                      ; preds = %if.end686
  %call691 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %651)
  %cmp692 = icmp eq %Tstruct.json_value_t_t* %call691, null
  br i1 %cmp692, label %if.then693, label %if.else696

if.then693:                                       ; preds = %_Dynamic_check.succeeded690
  %653 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call694 = call i32 @puts(i8* %653)
  %654 = load i32, i32* @tests_passed, align 4
  %inc695 = add nsw i32 %654, 1
  store i32 %inc695, i32* @tests_passed, align 4
  br label %if.end699

_Dynamic_check.failed689:                         ; preds = %if.end686
  call void @llvm.trap() #6
  unreachable

if.else696:                                       ; preds = %_Dynamic_check.succeeded690
  %655 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call697 = call i32 @puts(i8* %655)
  %656 = load i32, i32* @tests_failed, align 4
  %inc698 = add nsw i32 %656, 1
  store i32 %inc698, i32* @tests_failed, align 4
  br label %if.end699

if.end699:                                        ; preds = %if.else696, %if.then693
  %657 = load i8*, i8** %filename, align 8
  %658 = ptrtoint i8* %657 to i64
  %659 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %658)
  %660 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([17 x i8]* @.str.187 to i64))
  %call700 = call i8* @t_strcpy(i8* %659, i8* %660)
  %call701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 452, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %661 = load i8*, i8** %filename, align 8
  %662 = ptrtoint i8* %661 to i32
  %663 = call i8* @c_fetch_pointer_from_offset(i32 %662)
  %664 = call i1 @c_isTaintedPointerToTaintedMem(i8* %663)
  br i1 %664, label %_Dynamic_check.succeeded703, label %_Dynamic_check.failed702

_Dynamic_check.succeeded703:                      ; preds = %if.end699
  %call704 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %663)
  %cmp705 = icmp eq %Tstruct.json_value_t_t* %call704, null
  br i1 %cmp705, label %if.then706, label %if.else709

if.then706:                                       ; preds = %_Dynamic_check.succeeded703
  %665 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call707 = call i32 @puts(i8* %665)
  %666 = load i32, i32* @tests_passed, align 4
  %inc708 = add nsw i32 %666, 1
  store i32 %inc708, i32* @tests_passed, align 4
  br label %if.end712

_Dynamic_check.failed702:                         ; preds = %if.end699
  call void @llvm.trap() #6
  unreachable

if.else709:                                       ; preds = %_Dynamic_check.succeeded703
  %667 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call710 = call i32 @puts(i8* %667)
  %668 = load i32, i32* @tests_failed, align 4
  %inc711 = add nsw i32 %668, 1
  store i32 %inc711, i32* @tests_failed, align 4
  br label %if.end712

if.end712:                                        ; preds = %if.else709, %if.then706
  %669 = load i8*, i8** %filename, align 8
  %670 = ptrtoint i8* %669 to i64
  %671 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %670)
  %672 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([25 x i8]* @.str.188 to i64))
  %call713 = call i8* @t_strcpy(i8* %671, i8* %672)
  %call714 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 454, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %673 = load i8*, i8** %filename, align 8
  %674 = ptrtoint i8* %673 to i32
  %675 = call i8* @c_fetch_pointer_from_offset(i32 %674)
  %676 = call i1 @c_isTaintedPointerToTaintedMem(i8* %675)
  br i1 %676, label %_Dynamic_check.succeeded716, label %_Dynamic_check.failed715

_Dynamic_check.succeeded716:                      ; preds = %if.end712
  %call717 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %675)
  %cmp718 = icmp eq %Tstruct.json_value_t_t* %call717, null
  br i1 %cmp718, label %if.then719, label %if.else722

if.then719:                                       ; preds = %_Dynamic_check.succeeded716
  %677 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call720 = call i32 @puts(i8* %677)
  %678 = load i32, i32* @tests_passed, align 4
  %inc721 = add nsw i32 %678, 1
  store i32 %inc721, i32* @tests_passed, align 4
  br label %if.end725

_Dynamic_check.failed715:                         ; preds = %if.end712
  call void @llvm.trap() #6
  unreachable

if.else722:                                       ; preds = %_Dynamic_check.succeeded716
  %679 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call723 = call i32 @puts(i8* %679)
  %680 = load i32, i32* @tests_failed, align 4
  %inc724 = add nsw i32 %680, 1
  store i32 %inc724, i32* @tests_failed, align 4
  br label %if.end725

if.end725:                                        ; preds = %if.else722, %if.then719
  %681 = load i8*, i8** %filename, align 8
  %682 = ptrtoint i8* %681 to i64
  %683 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %682)
  %684 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([26 x i8]* @.str.189 to i64))
  %call726 = call i8* @t_strcpy(i8* %683, i8* %684)
  %call727 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 456, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %685 = load i8*, i8** %filename, align 8
  %686 = ptrtoint i8* %685 to i32
  %687 = call i8* @c_fetch_pointer_from_offset(i32 %686)
  %688 = call i1 @c_isTaintedPointerToTaintedMem(i8* %687)
  br i1 %688, label %_Dynamic_check.succeeded729, label %_Dynamic_check.failed728

_Dynamic_check.succeeded729:                      ; preds = %if.end725
  %call730 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %687)
  %cmp731 = icmp eq %Tstruct.json_value_t_t* %call730, null
  br i1 %cmp731, label %if.then732, label %if.else735

if.then732:                                       ; preds = %_Dynamic_check.succeeded729
  %689 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call733 = call i32 @puts(i8* %689)
  %690 = load i32, i32* @tests_passed, align 4
  %inc734 = add nsw i32 %690, 1
  store i32 %inc734, i32* @tests_passed, align 4
  br label %if.end738

_Dynamic_check.failed728:                         ; preds = %if.end725
  call void @llvm.trap() #6
  unreachable

if.else735:                                       ; preds = %_Dynamic_check.succeeded729
  %691 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call736 = call i32 @puts(i8* %691)
  %692 = load i32, i32* @tests_failed, align 4
  %inc737 = add nsw i32 %692, 1
  store i32 %inc737, i32* @tests_failed, align 4
  br label %if.end738

if.end738:                                        ; preds = %if.else735, %if.then732
  %call739 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 457, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.190, i64 0, i64 0))
  %693 = load i32, i32* @malloc_count, align 4
  %cmp740 = icmp eq i32 %693, 0
  br i1 %cmp740, label %if.then741, label %if.else744

if.then741:                                       ; preds = %if.end738
  %694 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call742 = call i32 @puts(i8* %694)
  %695 = load i32, i32* @tests_passed, align 4
  %inc743 = add nsw i32 %695, 1
  store i32 %inc743, i32* @tests_passed, align 4
  br label %if.end747

if.else744:                                       ; preds = %if.end738
  %696 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call745 = call i32 @puts(i8* %696)
  %697 = load i32, i32* @tests_failed, align 4
  %inc746 = add nsw i32 %697, 1
  store i32 %inc746, i32* @tests_failed, align 4
  br label %if.end747

if.end747:                                        ; preds = %if.else744, %if.then741
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_4() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 8
  %filename = alloca i8*, align 8
  %a = alloca %Tstruct.json_value_t_t*, align 8
  %a_copy = alloca %Tstruct.json_value_t_t*, align 8
  %res = alloca i32, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 8
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([57 x i8]* @.str.120 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %a, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %a_copy, align 8
  %4 = load i8*, i8** %filename, align 8
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.191 to i64))
  %6 = ptrtoint i8* %4 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call2 = call i32 (i8*, ...) @t_printf(i8* %5, i8* %7)
  %call3 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call3, %Tstruct.json_value_t_t** %a, align 8
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 8
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 8
  %11 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %15 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %18 = bitcast i8* %16 to %Tstruct.json_value_t_t*
  %call8 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %14, %Tstruct.json_value_t_t* %18)
  store i32 %call8, i32* %res, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 468, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0))
  %19 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded7
  %20 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call10 = call i32 @puts(i8* %20)
  %21 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %21, 1
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
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call11 = call i32 @puts(i8* %22)
  %23 = load i32, i32* @tests_failed, align 4
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 8
  %25 = ptrtoint %Tstruct.json_value_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end
  %28 = bitcast i8* %26 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %28)
  store %Tstruct.json_value_t_t* %call15, %Tstruct.json_value_t_t** %a_copy, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 470, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.193, i64 0, i64 0))
  %29 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 8
  %cmp = icmp ne %Tstruct.json_value_t_t* %29, null
  br i1 %cmp, label %if.then17, label %if.else20

if.then17:                                        ; preds = %_Dynamic_check.succeeded14
  %30 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call18 = call i32 @puts(i8* %30)
  %31 = load i32, i32* @tests_passed, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, i32* @tests_passed, align 4
  br label %if.end23

_Dynamic_check.failed13:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else20:                                        ; preds = %_Dynamic_check.succeeded14
  %32 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call21 = call i32 @puts(i8* %32)
  %33 = load i32, i32* @tests_failed, align 4
  %inc22 = add nsw i32 %33, 1
  store i32 %inc22, i32* @tests_failed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then17
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 471, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.194, i64 0, i64 0))
  %34 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 8
  %35 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 8
  %36 = ptrtoint %Tstruct.json_value_t_t* %34 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %if.end23
  %39 = bitcast i8* %37 to %Tstruct.json_value_t_t*
  %40 = ptrtoint %Tstruct.json_value_t_t* %35 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %43 = bitcast i8* %41 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %39, %Tstruct.json_value_t_t* %43)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %44 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call32 = call i32 @puts(i8* %44)
  %45 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed25:                          ; preds = %if.end23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %46 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call35 = call i32 @puts(i8* %46)
  %47 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %47, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_5() #3 {
entry:
  %zero = alloca double, align 8
  %filename = alloca i8*, align 8
  %val_from_file = alloca %Tstruct.json_value_t_t*, align 8
  %val = alloca %Tstruct.json_value_t_t*, align 8
  %val_parent = alloca %Tstruct.json_value_t_t*, align 8
  %obj = alloca %Tstruct.json_object_t_t*, align 8
  %interests_arr = alloca %Tstruct.json_array_t_t*, align 8
  %remove_test_val = alloca %Tstruct.json_value_t_t*, align 8
  %remove_test_arr = alloca %Tstruct.json_array_t_t*, align 8
  %string_1 = alloca i8*, align 8
  %string_2 = alloca i8*, align 8
  store double 0.000000e+00, double* %zero, align 8
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 8
  %0 = load i8*, i8** %filename, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([57 x i8]* @.str.195 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.195, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call2, %Tstruct.json_value_t_t** %val_from_file, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_parent, align 8
  store %Tstruct.json_object_t_t* null, %Tstruct.json_object_t_t** %obj, align 8
  store %Tstruct.json_array_t_t* null, %Tstruct.json_array_t_t** %interests_arr, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %remove_test_val, align 8
  store %Tstruct.json_array_t_t* null, %Tstruct.json_array_t_t** %remove_test_arr, align 8
  %call3 = call %Tstruct.json_value_t_t* @json_value_init_object()
  store %Tstruct.json_value_t_t* %call3, %Tstruct.json_value_t_t** %val, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 489, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i64 0, i64 0))
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 8
  %cmp = icmp ne %Tstruct.json_value_t_t* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call5 = call i32 @puts(i8* %5)
  %6 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call6 = call i32 @puts(i8* %7)
  %8 = load i32, i32* @tests_failed, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 8
  %10 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %13 = bitcast i8* %11 to %Tstruct.json_value_t_t*
  %call8 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %13)
  store %Tstruct.json_object_t_t* %call8, %Tstruct.json_object_t_t** %obj, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 492, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0))
  %14 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %cmp10 = icmp ne %Tstruct.json_object_t_t* %14, null
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %_Dynamic_check.succeeded
  %15 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call12 = call i32 @puts(i8* %15)
  %16 = load i32, i32* @tests_passed, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* @tests_passed, align 4
  br label %if.end17

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else14:                                        ; preds = %_Dynamic_check.succeeded
  %17 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call15 = call i32 @puts(i8* %17)
  %18 = load i32, i32* @tests_failed, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* @tests_failed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11
  %call18 = call i8* @string_malloc(i64 100)
  store i8* %call18, i8** %string_1, align 8
  %call19 = call i8* @string_malloc(i64 100)
  store i8* %call19, i8** %string_2, align 8
  %19 = load i8*, i8** %string_1, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %20)
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.198 to i64))
  %call20 = call i8* @t_strcpy(i8* %21, i8* %22)
  %23 = load i8*, i8** %string_2, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %24)
  %26 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.199 to i64))
  %call21 = call i8* @t_strcpy(i8* %25, i8* %26)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 498, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %27 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %28 = load i8*, i8** %string_1, align 8
  %29 = load i8*, i8** %string_2, align 8
  %30 = ptrtoint %Tstruct.json_object_t_t* %27 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end17
  %33 = bitcast i8* %31 to %Tstruct.json_object_t_t*
  %34 = ptrtoint i8* %28 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %37 = ptrtoint i8* %29 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %call29 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %33, i8* %35, i8* %38)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %40 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call32 = call i32 @puts(i8* %40)
  %41 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %41, 1
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
  %42 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call35 = call i32 @puts(i8* %42)
  %43 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %44 = load i8*, i8** %string_1, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %45)
  %47 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.201 to i64))
  %call38 = call i8* @t_strcpy(i8* %46, i8* %47)
  %48 = load i8*, i8** %string_2, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %49)
  %51 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.202 to i64))
  %call39 = call i8* @t_strcpy(i8* %50, i8* %51)
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 501, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %52 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %53 = load i8*, i8** %string_1, align 8
  %54 = load i8*, i8** %string_2, align 8
  %55 = ptrtoint %Tstruct.json_object_t_t* %52 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %if.end37
  %58 = bitcast i8* %56 to %Tstruct.json_object_t_t*
  %59 = ptrtoint i8* %53 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded42
  %62 = ptrtoint i8* %54 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded44
  %call47 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %58, i8* %60, i8* %63)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.else52

if.then49:                                        ; preds = %_Dynamic_check.succeeded46
  %65 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call50 = call i32 @puts(i8* %65)
  %66 = load i32, i32* @tests_passed, align 4
  %inc51 = add nsw i32 %66, 1
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
  %67 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call53 = call i32 @puts(i8* %67)
  %68 = load i32, i32* @tests_failed, align 4
  %inc54 = add nsw i32 %68, 1
  store i32 %inc54, i32* @tests_failed, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then49
  %69 = load i8*, i8** %string_1, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %70)
  %72 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.203 to i64))
  %call56 = call i8* @t_strcpy(i8* %71, i8* %72)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 503, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.204, i64 0, i64 0))
  %73 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %74 = load i8*, i8** %string_1, align 8
  %75 = ptrtoint %Tstruct.json_object_t_t* %73 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %if.end55
  %78 = bitcast i8* %76 to %Tstruct.json_object_t_t*
  %79 = ptrtoint i8* %74 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded59
  %call62 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %78, i8* %80, double 2.500000e+01)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.else67

if.then64:                                        ; preds = %_Dynamic_check.succeeded61
  %82 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call65 = call i32 @puts(i8* %82)
  %83 = load i32, i32* @tests_passed, align 4
  %inc66 = add nsw i32 %83, 1
  store i32 %inc66, i32* @tests_passed, align 4
  br label %if.end70

_Dynamic_check.failed58:                          ; preds = %if.end55
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded59
  call void @llvm.trap() #6
  unreachable

if.else67:                                        ; preds = %_Dynamic_check.succeeded61
  %84 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call68 = call i32 @puts(i8* %84)
  %85 = load i32, i32* @tests_failed, align 4
  %inc69 = add nsw i32 %85, 1
  store i32 %inc69, i32* @tests_failed, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then64
  %86 = load i8*, i8** %string_1, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %87)
  %89 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.205 to i64))
  %call71 = call i8* @t_strcpy(i8* %88, i8* %89)
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 505, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.206, i64 0, i64 0))
  %90 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %91 = load i8*, i8** %string_1, align 8
  %92 = ptrtoint %Tstruct.json_object_t_t* %90 to i32
  %93 = call i8* @c_fetch_pointer_from_offset(i32 %92)
  %94 = call i1 @c_isTaintedPointerToTaintedMem(i8* %93)
  br i1 %94, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end70
  %95 = bitcast i8* %93 to %Tstruct.json_object_t_t*
  %96 = ptrtoint i8* %91 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %_Dynamic_check.succeeded74
  %call77 = call i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %95, i8* %97, i32 1)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %_Dynamic_check.succeeded76
  %99 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call80 = call i32 @puts(i8* %99)
  %100 = load i32, i32* @tests_passed, align 4
  %inc81 = add nsw i32 %100, 1
  store i32 %inc81, i32* @tests_passed, align 4
  br label %if.end85

_Dynamic_check.failed73:                          ; preds = %if.end70
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed75:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #6
  unreachable

if.else82:                                        ; preds = %_Dynamic_check.succeeded76
  %101 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call83 = call i32 @puts(i8* %101)
  %102 = load i32, i32* @tests_failed, align 4
  %inc84 = add nsw i32 %102, 1
  store i32 %inc84, i32* @tests_failed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %103 = load i8*, i8** %string_1, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %104)
  %106 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call86 = call i8* @t_strcpy(i8* %105, i8* %106)
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 508, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.208, i64 0, i64 0))
  %107 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %108 = load i8*, i8** %string_1, align 8
  %call88 = call %Tstruct.json_value_t_t* @json_value_init_array()
  %109 = ptrtoint %Tstruct.json_object_t_t* %107 to i32
  %110 = call i8* @c_fetch_pointer_from_offset(i32 %109)
  %111 = call i1 @c_isTaintedPointerToTaintedMem(i8* %110)
  br i1 %111, label %_Dynamic_check.succeeded90, label %_Dynamic_check.failed89

_Dynamic_check.succeeded90:                       ; preds = %if.end85
  %112 = bitcast i8* %110 to %Tstruct.json_object_t_t*
  %113 = ptrtoint i8* %108 to i32
  %114 = call i8* @c_fetch_pointer_from_offset(i32 %113)
  %115 = call i1 @c_isTaintedPointerToTaintedMem(i8* %114)
  br i1 %115, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.succeeded90
  %116 = ptrtoint %Tstruct.json_value_t_t* %call88 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %_Dynamic_check.succeeded92
  %119 = bitcast i8* %117 to %Tstruct.json_value_t_t*
  %call95 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %112, i8* %114, %Tstruct.json_value_t_t* %119)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.else100

if.then97:                                        ; preds = %_Dynamic_check.succeeded94
  %120 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call98 = call i32 @puts(i8* %120)
  %121 = load i32, i32* @tests_passed, align 4
  %inc99 = add nsw i32 %121, 1
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
  %122 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call101 = call i32 @puts(i8* %122)
  %123 = load i32, i32* @tests_failed, align 4
  %inc102 = add nsw i32 %123, 1
  store i32 %inc102, i32* @tests_failed, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then97
  %124 = load i8*, i8** %string_1, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %125)
  %127 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call104 = call i8* @t_strcpy(i8* %126, i8* %127)
  %128 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %129 = load i8*, i8** %string_1, align 8
  %130 = ptrtoint %Tstruct.json_object_t_t* %128 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded106, label %_Dynamic_check.failed105

_Dynamic_check.succeeded106:                      ; preds = %if.end103
  %133 = bitcast i8* %131 to %Tstruct.json_object_t_t*
  %134 = ptrtoint i8* %129 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded108, label %_Dynamic_check.failed107

_Dynamic_check.succeeded108:                      ; preds = %_Dynamic_check.succeeded106
  %call109 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %133, i8* %135)
  store %Tstruct.json_array_t_t* %call109, %Tstruct.json_array_t_t** %interests_arr, align 8
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 511, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.209, i64 0, i64 0))
  %137 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %cmp111 = icmp ne %Tstruct.json_array_t_t* %137, null
  br i1 %cmp111, label %if.then112, label %if.else115

if.then112:                                       ; preds = %_Dynamic_check.succeeded108
  %138 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call113 = call i32 @puts(i8* %138)
  %139 = load i32, i32* @tests_passed, align 4
  %inc114 = add nsw i32 %139, 1
  store i32 %inc114, i32* @tests_passed, align 4
  br label %if.end118

_Dynamic_check.failed105:                         ; preds = %if.end103
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed107:                         ; preds = %_Dynamic_check.succeeded106
  call void @llvm.trap() #6
  unreachable

if.else115:                                       ; preds = %_Dynamic_check.succeeded108
  %140 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call116 = call i32 @puts(i8* %140)
  %141 = load i32, i32* @tests_failed, align 4
  %inc117 = add nsw i32 %141, 1
  store i32 %inc117, i32* @tests_failed, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.else115, %if.then112
  %142 = load i8*, i8** %string_1, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %143)
  %145 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.210 to i64))
  %call119 = call i8* @t_strcpy(i8* %144, i8* %145)
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 513, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %146 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %147 = load i8*, i8** %string_1, align 8
  %148 = ptrtoint %Tstruct.json_array_t_t* %146 to i32
  %149 = call i8* @c_fetch_pointer_from_offset(i32 %148)
  %150 = call i1 @c_isTaintedPointerToTaintedMem(i8* %149)
  br i1 %150, label %_Dynamic_check.succeeded122, label %_Dynamic_check.failed121

_Dynamic_check.succeeded122:                      ; preds = %if.end118
  %151 = bitcast i8* %149 to %Tstruct.json_array_t_t*
  %152 = ptrtoint i8* %147 to i32
  %153 = call i8* @c_fetch_pointer_from_offset(i32 %152)
  %154 = call i1 @c_isTaintedPointerToTaintedMem(i8* %153)
  br i1 %154, label %_Dynamic_check.succeeded124, label %_Dynamic_check.failed123

_Dynamic_check.succeeded124:                      ; preds = %_Dynamic_check.succeeded122
  %call125 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %151, i8* %153)
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then127, label %if.else130

if.then127:                                       ; preds = %_Dynamic_check.succeeded124
  %155 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call128 = call i32 @puts(i8* %155)
  %156 = load i32, i32* @tests_passed, align 4
  %inc129 = add nsw i32 %156, 1
  store i32 %inc129, i32* @tests_passed, align 4
  br label %if.end133

_Dynamic_check.failed121:                         ; preds = %if.end118
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed123:                         ; preds = %_Dynamic_check.succeeded122
  call void @llvm.trap() #6
  unreachable

if.else130:                                       ; preds = %_Dynamic_check.succeeded124
  %157 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call131 = call i32 @puts(i8* %157)
  %158 = load i32, i32* @tests_failed, align 4
  %inc132 = add nsw i32 %158, 1
  store i32 %inc132, i32* @tests_failed, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.else130, %if.then127
  %159 = load i8*, i8** %string_1, align 8
  %160 = ptrtoint i8* %159 to i64
  %161 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %160)
  %162 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.212 to i64))
  %call134 = call i8* @t_strcpy(i8* %161, i8* %162)
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %163 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %164 = load i8*, i8** %string_1, align 8
  %165 = ptrtoint %Tstruct.json_array_t_t* %163 to i32
  %166 = call i8* @c_fetch_pointer_from_offset(i32 %165)
  %167 = call i1 @c_isTaintedPointerToTaintedMem(i8* %166)
  br i1 %167, label %_Dynamic_check.succeeded137, label %_Dynamic_check.failed136

_Dynamic_check.succeeded137:                      ; preds = %if.end133
  %168 = bitcast i8* %166 to %Tstruct.json_array_t_t*
  %169 = ptrtoint i8* %164 to i32
  %170 = call i8* @c_fetch_pointer_from_offset(i32 %169)
  %171 = call i1 @c_isTaintedPointerToTaintedMem(i8* %170)
  br i1 %171, label %_Dynamic_check.succeeded139, label %_Dynamic_check.failed138

_Dynamic_check.succeeded139:                      ; preds = %_Dynamic_check.succeeded137
  %call140 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %168, i8* %170)
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then142, label %if.else145

if.then142:                                       ; preds = %_Dynamic_check.succeeded139
  %172 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call143 = call i32 @puts(i8* %172)
  %173 = load i32, i32* @tests_passed, align 4
  %inc144 = add nsw i32 %173, 1
  store i32 %inc144, i32* @tests_passed, align 4
  br label %if.end148

_Dynamic_check.failed136:                         ; preds = %if.end133
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed138:                         ; preds = %_Dynamic_check.succeeded137
  call void @llvm.trap() #6
  unreachable

if.else145:                                       ; preds = %_Dynamic_check.succeeded139
  %174 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call146 = call i32 @puts(i8* %174)
  %175 = load i32, i32* @tests_failed, align 4
  %inc147 = add nsw i32 %175, 1
  store i32 %inc147, i32* @tests_failed, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else145, %if.then142
  %176 = load i8*, i8** %string_1, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %177)
  %179 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.213 to i64))
  %call149 = call i8* @t_strcpy(i8* %178, i8* %179)
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 517, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.214, i64 0, i64 0))
  %180 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %181 = load i8*, i8** %string_1, align 8
  %182 = ptrtoint %Tstruct.json_array_t_t* %180 to i32
  %183 = call i8* @c_fetch_pointer_from_offset(i32 %182)
  %184 = call i1 @c_isTaintedPointerToTaintedMem(i8* %183)
  br i1 %184, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %if.end148
  %185 = bitcast i8* %183 to %Tstruct.json_array_t_t*
  %186 = ptrtoint i8* %181 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %_Dynamic_check.succeeded152
  %call155 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %185, i64 0, i8* %187)
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %if.else160

if.then157:                                       ; preds = %_Dynamic_check.succeeded154
  %189 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call158 = call i32 @puts(i8* %189)
  %190 = load i32, i32* @tests_passed, align 4
  %inc159 = add nsw i32 %190, 1
  store i32 %inc159, i32* @tests_passed, align 4
  br label %if.end163

_Dynamic_check.failed151:                         ; preds = %if.end148
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed153:                         ; preds = %_Dynamic_check.succeeded152
  call void @llvm.trap() #6
  unreachable

if.else160:                                       ; preds = %_Dynamic_check.succeeded154
  %191 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call161 = call i32 @puts(i8* %191)
  %192 = load i32, i32* @tests_failed, align 4
  %inc162 = add nsw i32 %192, 1
  store i32 %inc162, i32* @tests_failed, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.else160, %if.then157
  %193 = load i8*, i8** %string_1, align 8
  %194 = ptrtoint i8* %193 to i64
  %195 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %194)
  %196 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.215 to i64))
  %call164 = call i8* @t_strcpy(i8* %195, i8* %196)
  %197 = load i8*, i8** %string_2, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %198)
  %200 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.216 to i64))
  %call165 = call i8* @t_strcpy(i8* %199, i8* %200)
  %call166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 520, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %201 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %202 = load i8*, i8** %string_1, align 8
  %203 = load i8*, i8** %string_2, align 8
  %204 = ptrtoint %Tstruct.json_object_t_t* %201 to i32
  %205 = call i8* @c_fetch_pointer_from_offset(i32 %204)
  %206 = call i1 @c_isTaintedPointerToTaintedMem(i8* %205)
  br i1 %206, label %_Dynamic_check.succeeded168, label %_Dynamic_check.failed167

_Dynamic_check.succeeded168:                      ; preds = %if.end163
  %207 = bitcast i8* %205 to %Tstruct.json_object_t_t*
  %208 = ptrtoint i8* %202 to i32
  %209 = call i8* @c_fetch_pointer_from_offset(i32 %208)
  %210 = call i1 @c_isTaintedPointerToTaintedMem(i8* %209)
  br i1 %210, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %_Dynamic_check.succeeded168
  %211 = ptrtoint i8* %203 to i32
  %212 = call i8* @c_fetch_pointer_from_offset(i32 %211)
  %213 = call i1 @c_isTaintedPointerToTaintedMem(i8* %212)
  br i1 %213, label %_Dynamic_check.succeeded172, label %_Dynamic_check.failed171

_Dynamic_check.succeeded172:                      ; preds = %_Dynamic_check.succeeded170
  %call173 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %207, i8* %209, i8* %212)
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %_Dynamic_check.succeeded172
  %214 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call176 = call i32 @puts(i8* %214)
  %215 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %215, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

_Dynamic_check.failed167:                         ; preds = %if.end163
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed169:                         ; preds = %_Dynamic_check.succeeded168
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed171:                         ; preds = %_Dynamic_check.succeeded170
  call void @llvm.trap() #6
  unreachable

if.else178:                                       ; preds = %_Dynamic_check.succeeded172
  %216 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call179 = call i32 @puts(i8* %216)
  %217 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %217, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %218 = load i8*, i8** %string_1, align 8
  %219 = ptrtoint i8* %218 to i64
  %220 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %219)
  %221 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.215 to i64))
  %call182 = call i8* @t_strcpy(i8* %220, i8* %221)
  %222 = load i8*, i8** %string_2, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %223)
  %225 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.218 to i64))
  %call183 = call i8* @t_strcpy(i8* %224, i8* %225)
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %226 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %227 = load i8*, i8** %string_1, align 8
  %228 = load i8*, i8** %string_2, align 8
  %229 = ptrtoint %Tstruct.json_object_t_t* %226 to i32
  %230 = call i8* @c_fetch_pointer_from_offset(i32 %229)
  %231 = call i1 @c_isTaintedPointerToTaintedMem(i8* %230)
  br i1 %231, label %_Dynamic_check.succeeded186, label %_Dynamic_check.failed185

_Dynamic_check.succeeded186:                      ; preds = %if.end181
  %232 = bitcast i8* %230 to %Tstruct.json_object_t_t*
  %233 = ptrtoint i8* %227 to i32
  %234 = call i8* @c_fetch_pointer_from_offset(i32 %233)
  %235 = call i1 @c_isTaintedPointerToTaintedMem(i8* %234)
  br i1 %235, label %_Dynamic_check.succeeded188, label %_Dynamic_check.failed187

_Dynamic_check.succeeded188:                      ; preds = %_Dynamic_check.succeeded186
  %236 = ptrtoint i8* %228 to i32
  %237 = call i8* @c_fetch_pointer_from_offset(i32 %236)
  %238 = call i1 @c_isTaintedPointerToTaintedMem(i8* %237)
  br i1 %238, label %_Dynamic_check.succeeded190, label %_Dynamic_check.failed189

_Dynamic_check.succeeded190:                      ; preds = %_Dynamic_check.succeeded188
  %call191 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %232, i8* %234, i8* %237)
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then193, label %if.else196

if.then193:                                       ; preds = %_Dynamic_check.succeeded190
  %239 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call194 = call i32 @puts(i8* %239)
  %240 = load i32, i32* @tests_passed, align 4
  %inc195 = add nsw i32 %240, 1
  store i32 %inc195, i32* @tests_passed, align 4
  br label %if.end199

_Dynamic_check.failed185:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed187:                         ; preds = %_Dynamic_check.succeeded186
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed189:                         ; preds = %_Dynamic_check.succeeded188
  call void @llvm.trap() #6
  unreachable

if.else196:                                       ; preds = %_Dynamic_check.succeeded190
  %241 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call197 = call i32 @puts(i8* %241)
  %242 = load i32, i32* @tests_failed, align 4
  %inc198 = add nsw i32 %242, 1
  store i32 %inc198, i32* @tests_failed, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.else196, %if.then193
  %243 = load i8*, i8** %string_1, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %244)
  %246 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.219 to i64))
  %call200 = call i8* @t_strcpy(i8* %245, i8* %246)
  %247 = load i8*, i8** %string_2, align 8
  %248 = ptrtoint i8* %247 to i64
  %249 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %248)
  %250 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.220 to i64))
  %call201 = call i8* @t_strcpy(i8* %249, i8* %250)
  %call202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %251 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %252 = load i8*, i8** %string_1, align 8
  %253 = load i8*, i8** %string_2, align 8
  %254 = ptrtoint %Tstruct.json_object_t_t* %251 to i32
  %255 = call i8* @c_fetch_pointer_from_offset(i32 %254)
  %256 = call i1 @c_isTaintedPointerToTaintedMem(i8* %255)
  br i1 %256, label %_Dynamic_check.succeeded204, label %_Dynamic_check.failed203

_Dynamic_check.succeeded204:                      ; preds = %if.end199
  %257 = bitcast i8* %255 to %Tstruct.json_object_t_t*
  %258 = ptrtoint i8* %252 to i32
  %259 = call i8* @c_fetch_pointer_from_offset(i32 %258)
  %260 = call i1 @c_isTaintedPointerToTaintedMem(i8* %259)
  br i1 %260, label %_Dynamic_check.succeeded206, label %_Dynamic_check.failed205

_Dynamic_check.succeeded206:                      ; preds = %_Dynamic_check.succeeded204
  %261 = ptrtoint i8* %253 to i32
  %262 = call i8* @c_fetch_pointer_from_offset(i32 %261)
  %263 = call i1 @c_isTaintedPointerToTaintedMem(i8* %262)
  br i1 %263, label %_Dynamic_check.succeeded208, label %_Dynamic_check.failed207

_Dynamic_check.succeeded208:                      ; preds = %_Dynamic_check.succeeded206
  %call209 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %257, i8* %259, i8* %262)
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then211, label %if.else214

if.then211:                                       ; preds = %_Dynamic_check.succeeded208
  %264 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call212 = call i32 @puts(i8* %264)
  %265 = load i32, i32* @tests_passed, align 4
  %inc213 = add nsw i32 %265, 1
  store i32 %inc213, i32* @tests_passed, align 4
  br label %if.end217

_Dynamic_check.failed203:                         ; preds = %if.end199
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed205:                         ; preds = %_Dynamic_check.succeeded204
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed207:                         ; preds = %_Dynamic_check.succeeded206
  call void @llvm.trap() #6
  unreachable

if.else214:                                       ; preds = %_Dynamic_check.succeeded208
  %266 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call215 = call i32 @puts(i8* %266)
  %267 = load i32, i32* @tests_failed, align 4
  %inc216 = add nsw i32 %267, 1
  store i32 %inc216, i32* @tests_failed, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.else214, %if.then211
  %268 = load i8*, i8** %string_1, align 8
  %269 = ptrtoint i8* %268 to i64
  %270 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %269)
  %271 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.219 to i64))
  %call218 = call i8* @t_strcpy(i8* %270, i8* %271)
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 528, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.221, i64 0, i64 0))
  %272 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %273 = load i8*, i8** %string_1, align 8
  %274 = ptrtoint %Tstruct.json_object_t_t* %272 to i32
  %275 = call i8* @c_fetch_pointer_from_offset(i32 %274)
  %276 = call i1 @c_isTaintedPointerToTaintedMem(i8* %275)
  br i1 %276, label %_Dynamic_check.succeeded221, label %_Dynamic_check.failed220

_Dynamic_check.succeeded221:                      ; preds = %if.end217
  %277 = bitcast i8* %275 to %Tstruct.json_object_t_t*
  %278 = ptrtoint i8* %273 to i32
  %279 = call i8* @c_fetch_pointer_from_offset(i32 %278)
  %280 = call i1 @c_isTaintedPointerToTaintedMem(i8* %279)
  br i1 %280, label %_Dynamic_check.succeeded223, label %_Dynamic_check.failed222

_Dynamic_check.succeeded223:                      ; preds = %_Dynamic_check.succeeded221
  %call224 = call i32 @json_object_dotremove(%Tstruct.json_object_t_t* %277, i8* %279)
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %if.then226, label %if.else229

if.then226:                                       ; preds = %_Dynamic_check.succeeded223
  %281 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call227 = call i32 @puts(i8* %281)
  %282 = load i32, i32* @tests_passed, align 4
  %inc228 = add nsw i32 %282, 1
  store i32 %inc228, i32* @tests_passed, align 4
  br label %if.end232

_Dynamic_check.failed220:                         ; preds = %if.end217
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed222:                         ; preds = %_Dynamic_check.succeeded221
  call void @llvm.trap() #6
  unreachable

if.else229:                                       ; preds = %_Dynamic_check.succeeded223
  %283 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call230 = call i32 @puts(i8* %283)
  %284 = load i32, i32* @tests_failed, align 4
  %inc231 = add nsw i32 %284, 1
  store i32 %inc231, i32* @tests_failed, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.else229, %if.then226
  %285 = load i8*, i8** %string_1, align 8
  %286 = ptrtoint i8* %285 to i64
  %287 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %286)
  %288 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.62 to i64))
  %call233 = call i8* @t_strcpy(i8* %287, i8* %288)
  %289 = load i8*, i8** %string_2, align 8
  %290 = ptrtoint i8* %289 to i64
  %291 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %290)
  %292 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.61 to i64))
  %call234 = call i8* @t_strcpy(i8* %291, i8* %292)
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 531, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %293 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %294 = load i8*, i8** %string_1, align 8
  %295 = load i8*, i8** %string_2, align 8
  %296 = ptrtoint %Tstruct.json_object_t_t* %293 to i32
  %297 = call i8* @c_fetch_pointer_from_offset(i32 %296)
  %298 = call i1 @c_isTaintedPointerToTaintedMem(i8* %297)
  br i1 %298, label %_Dynamic_check.succeeded237, label %_Dynamic_check.failed236

_Dynamic_check.succeeded237:                      ; preds = %if.end232
  %299 = bitcast i8* %297 to %Tstruct.json_object_t_t*
  %300 = ptrtoint i8* %294 to i32
  %301 = call i8* @c_fetch_pointer_from_offset(i32 %300)
  %302 = call i1 @c_isTaintedPointerToTaintedMem(i8* %301)
  br i1 %302, label %_Dynamic_check.succeeded239, label %_Dynamic_check.failed238

_Dynamic_check.succeeded239:                      ; preds = %_Dynamic_check.succeeded237
  %303 = ptrtoint i8* %295 to i32
  %304 = call i8* @c_fetch_pointer_from_offset(i32 %303)
  %305 = call i1 @c_isTaintedPointerToTaintedMem(i8* %304)
  br i1 %305, label %_Dynamic_check.succeeded241, label %_Dynamic_check.failed240

_Dynamic_check.succeeded241:                      ; preds = %_Dynamic_check.succeeded239
  %call242 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %299, i8* %301, i8* %304)
  %cmp243 = icmp eq i32 %call242, 0
  br i1 %cmp243, label %if.then244, label %if.else247

if.then244:                                       ; preds = %_Dynamic_check.succeeded241
  %306 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call245 = call i32 @puts(i8* %306)
  %307 = load i32, i32* @tests_passed, align 4
  %inc246 = add nsw i32 %307, 1
  store i32 %inc246, i32* @tests_passed, align 4
  br label %if.end250

_Dynamic_check.failed236:                         ; preds = %if.end232
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed238:                         ; preds = %_Dynamic_check.succeeded237
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed240:                         ; preds = %_Dynamic_check.succeeded239
  call void @llvm.trap() #6
  unreachable

if.else247:                                       ; preds = %_Dynamic_check.succeeded241
  %308 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call248 = call i32 @puts(i8* %308)
  %309 = load i32, i32* @tests_failed, align 4
  %inc249 = add nsw i32 %309, 1
  store i32 %inc249, i32* @tests_failed, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.else247, %if.then244
  %310 = load i8*, i8** %string_1, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %311)
  %313 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.63 to i64))
  %call251 = call i8* @t_strcpy(i8* %312, i8* %313)
  %314 = load i8*, i8** %string_2, align 8
  %315 = ptrtoint i8* %314 to i64
  %316 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %315)
  %317 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.65 to i64))
  %call252 = call i8* @t_strcpy(i8* %316, i8* %317)
  %call253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 534, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %318 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %319 = load i8*, i8** %string_1, align 8
  %320 = load i8*, i8** %string_2, align 8
  %321 = ptrtoint %Tstruct.json_object_t_t* %318 to i32
  %322 = call i8* @c_fetch_pointer_from_offset(i32 %321)
  %323 = call i1 @c_isTaintedPointerToTaintedMem(i8* %322)
  br i1 %323, label %_Dynamic_check.succeeded255, label %_Dynamic_check.failed254

_Dynamic_check.succeeded255:                      ; preds = %if.end250
  %324 = bitcast i8* %322 to %Tstruct.json_object_t_t*
  %325 = ptrtoint i8* %319 to i32
  %326 = call i8* @c_fetch_pointer_from_offset(i32 %325)
  %327 = call i1 @c_isTaintedPointerToTaintedMem(i8* %326)
  br i1 %327, label %_Dynamic_check.succeeded257, label %_Dynamic_check.failed256

_Dynamic_check.succeeded257:                      ; preds = %_Dynamic_check.succeeded255
  %328 = ptrtoint i8* %320 to i32
  %329 = call i8* @c_fetch_pointer_from_offset(i32 %328)
  %330 = call i1 @c_isTaintedPointerToTaintedMem(i8* %329)
  br i1 %330, label %_Dynamic_check.succeeded259, label %_Dynamic_check.failed258

_Dynamic_check.succeeded259:                      ; preds = %_Dynamic_check.succeeded257
  %call260 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %324, i8* %326, i8* %329)
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then262, label %if.else265

if.then262:                                       ; preds = %_Dynamic_check.succeeded259
  %331 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call263 = call i32 @puts(i8* %331)
  %332 = load i32, i32* @tests_passed, align 4
  %inc264 = add nsw i32 %332, 1
  store i32 %inc264, i32* @tests_passed, align 4
  br label %if.end268

_Dynamic_check.failed254:                         ; preds = %if.end250
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed256:                         ; preds = %_Dynamic_check.succeeded255
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed258:                         ; preds = %_Dynamic_check.succeeded257
  call void @llvm.trap() #6
  unreachable

if.else265:                                       ; preds = %_Dynamic_check.succeeded259
  %333 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call266 = call i32 @puts(i8* %333)
  %334 = load i32, i32* @tests_failed, align 4
  %inc267 = add nsw i32 %334, 1
  store i32 %inc267, i32* @tests_failed, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.else265, %if.then262
  %335 = load i8*, i8** %string_1, align 8
  %336 = ptrtoint i8* %335 to i64
  %337 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %336)
  %338 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([17 x i8]* @.str.66 to i64))
  %call269 = call i8* @t_strcpy(i8* %337, i8* %338)
  %339 = load i8*, i8** %string_2, align 8
  %340 = ptrtoint i8* %339 to i64
  %341 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %340)
  %342 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.68 to i64))
  %call270 = call i8* @t_strcpy(i8* %341, i8* %342)
  %call271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %343 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %344 = load i8*, i8** %string_1, align 8
  %345 = load i8*, i8** %string_2, align 8
  %346 = ptrtoint %Tstruct.json_object_t_t* %343 to i32
  %347 = call i8* @c_fetch_pointer_from_offset(i32 %346)
  %348 = call i1 @c_isTaintedPointerToTaintedMem(i8* %347)
  br i1 %348, label %_Dynamic_check.succeeded273, label %_Dynamic_check.failed272

_Dynamic_check.succeeded273:                      ; preds = %if.end268
  %349 = bitcast i8* %347 to %Tstruct.json_object_t_t*
  %350 = ptrtoint i8* %344 to i32
  %351 = call i8* @c_fetch_pointer_from_offset(i32 %350)
  %352 = call i1 @c_isTaintedPointerToTaintedMem(i8* %351)
  br i1 %352, label %_Dynamic_check.succeeded275, label %_Dynamic_check.failed274

_Dynamic_check.succeeded275:                      ; preds = %_Dynamic_check.succeeded273
  %353 = ptrtoint i8* %345 to i32
  %354 = call i8* @c_fetch_pointer_from_offset(i32 %353)
  %355 = call i1 @c_isTaintedPointerToTaintedMem(i8* %354)
  br i1 %355, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %_Dynamic_check.succeeded275
  %call278 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %349, i8* %351, i8* %354)
  %cmp279 = icmp eq i32 %call278, 0
  br i1 %cmp279, label %if.then280, label %if.else283

if.then280:                                       ; preds = %_Dynamic_check.succeeded277
  %356 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call281 = call i32 @puts(i8* %356)
  %357 = load i32, i32* @tests_passed, align 4
  %inc282 = add nsw i32 %357, 1
  store i32 %inc282, i32* @tests_passed, align 4
  br label %if.end286

_Dynamic_check.failed272:                         ; preds = %if.end268
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed274:                         ; preds = %_Dynamic_check.succeeded273
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed276:                         ; preds = %_Dynamic_check.succeeded275
  call void @llvm.trap() #6
  unreachable

if.else283:                                       ; preds = %_Dynamic_check.succeeded277
  %358 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call284 = call i32 @puts(i8* %358)
  %359 = load i32, i32* @tests_failed, align 4
  %inc285 = add nsw i32 %359, 1
  store i32 %inc285, i32* @tests_failed, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.else283, %if.then280
  %360 = load i8*, i8** %string_1, align 8
  %361 = ptrtoint i8* %360 to i64
  %362 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %361)
  %363 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.222 to i64))
  %call287 = call i8* @t_strcpy(i8* %362, i8* %363)
  %364 = load i8*, i8** %string_2, align 8
  %365 = ptrtoint i8* %364 to i64
  %366 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %365)
  %367 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.223 to i64))
  %call288 = call i8* @t_strcpy(i8* %366, i8* %367)
  %call289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 540, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %368 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %369 = load i8*, i8** %string_1, align 8
  %370 = load i8*, i8** %string_2, align 8
  %371 = ptrtoint %Tstruct.json_object_t_t* %368 to i32
  %372 = call i8* @c_fetch_pointer_from_offset(i32 %371)
  %373 = call i1 @c_isTaintedPointerToTaintedMem(i8* %372)
  br i1 %373, label %_Dynamic_check.succeeded291, label %_Dynamic_check.failed290

_Dynamic_check.succeeded291:                      ; preds = %if.end286
  %374 = bitcast i8* %372 to %Tstruct.json_object_t_t*
  %375 = ptrtoint i8* %369 to i32
  %376 = call i8* @c_fetch_pointer_from_offset(i32 %375)
  %377 = call i1 @c_isTaintedPointerToTaintedMem(i8* %376)
  br i1 %377, label %_Dynamic_check.succeeded293, label %_Dynamic_check.failed292

_Dynamic_check.succeeded293:                      ; preds = %_Dynamic_check.succeeded291
  %378 = ptrtoint i8* %370 to i32
  %379 = call i8* @c_fetch_pointer_from_offset(i32 %378)
  %380 = call i1 @c_isTaintedPointerToTaintedMem(i8* %379)
  br i1 %380, label %_Dynamic_check.succeeded295, label %_Dynamic_check.failed294

_Dynamic_check.succeeded295:                      ; preds = %_Dynamic_check.succeeded293
  %call296 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %374, i8* %376, i8* %379)
  %cmp297 = icmp eq i32 %call296, 0
  br i1 %cmp297, label %if.then298, label %if.else301

if.then298:                                       ; preds = %_Dynamic_check.succeeded295
  %381 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call299 = call i32 @puts(i8* %381)
  %382 = load i32, i32* @tests_passed, align 4
  %inc300 = add nsw i32 %382, 1
  store i32 %inc300, i32* @tests_passed, align 4
  br label %if.end304

_Dynamic_check.failed290:                         ; preds = %if.end286
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed292:                         ; preds = %_Dynamic_check.succeeded291
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed294:                         ; preds = %_Dynamic_check.succeeded293
  call void @llvm.trap() #6
  unreachable

if.else301:                                       ; preds = %_Dynamic_check.succeeded295
  %383 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call302 = call i32 @puts(i8* %383)
  %384 = load i32, i32* @tests_failed, align 4
  %inc303 = add nsw i32 %384, 1
  store i32 %inc303, i32* @tests_failed, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.else301, %if.then298
  %call305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 541, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.224, i64 0, i64 0))
  %385 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_from_file, align 8
  %386 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 8
  %387 = ptrtoint %Tstruct.json_value_t_t* %385 to i32
  %388 = call i8* @c_fetch_pointer_from_offset(i32 %387)
  %389 = call i1 @c_isTaintedPointerToTaintedMem(i8* %388)
  br i1 %389, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %if.end304
  %390 = bitcast i8* %388 to %Tstruct.json_value_t_t*
  %391 = ptrtoint %Tstruct.json_value_t_t* %386 to i32
  %392 = call i8* @c_fetch_pointer_from_offset(i32 %391)
  %393 = call i1 @c_isTaintedPointerToTaintedMem(i8* %392)
  br i1 %393, label %_Dynamic_check.succeeded309, label %_Dynamic_check.failed308

_Dynamic_check.succeeded309:                      ; preds = %_Dynamic_check.succeeded307
  %394 = bitcast i8* %392 to %Tstruct.json_value_t_t*
  %call310 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %390, %Tstruct.json_value_t_t* %394)
  %tobool = icmp ne i32 %call310, 0
  br i1 %tobool, label %if.then311, label %if.else314

if.then311:                                       ; preds = %_Dynamic_check.succeeded309
  %395 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call312 = call i32 @puts(i8* %395)
  %396 = load i32, i32* @tests_passed, align 4
  %inc313 = add nsw i32 %396, 1
  store i32 %inc313, i32* @tests_passed, align 4
  br label %if.end317

_Dynamic_check.failed306:                         ; preds = %if.end304
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed308:                         ; preds = %_Dynamic_check.succeeded307
  call void @llvm.trap() #6
  unreachable

if.else314:                                       ; preds = %_Dynamic_check.succeeded309
  %397 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call315 = call i32 @puts(i8* %397)
  %398 = load i32, i32* @tests_failed, align 4
  %inc316 = add nsw i32 %398, 1
  store i32 %inc316, i32* @tests_failed, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.else314, %if.then311
  %399 = load i8*, i8** %string_1, align 8
  %400 = ptrtoint i8* %399 to i64
  %401 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %400)
  %402 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call318 = call i8* @t_strcpy(i8* %401, i8* %402)
  %call319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 544, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.225, i64 0, i64 0))
  %403 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %404 = load i8*, i8** %string_1, align 8
  %405 = ptrtoint %Tstruct.json_object_t_t* %403 to i32
  %406 = call i8* @c_fetch_pointer_from_offset(i32 %405)
  %407 = call i1 @c_isTaintedPointerToTaintedMem(i8* %406)
  br i1 %407, label %_Dynamic_check.succeeded321, label %_Dynamic_check.failed320

_Dynamic_check.succeeded321:                      ; preds = %if.end317
  %408 = bitcast i8* %406 to %Tstruct.json_object_t_t*
  %409 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %410 = call i1 @c_isTaintedPointerToTaintedMem(i8* %409)
  br i1 %410, label %_Dynamic_check.succeeded323, label %_Dynamic_check.failed322

_Dynamic_check.succeeded323:                      ; preds = %_Dynamic_check.succeeded321
  %411 = ptrtoint i8* %404 to i32
  %412 = call i8* @c_fetch_pointer_from_offset(i32 %411)
  %413 = call i1 @c_isTaintedPointerToTaintedMem(i8* %412)
  br i1 %413, label %_Dynamic_check.succeeded325, label %_Dynamic_check.failed324

_Dynamic_check.succeeded325:                      ; preds = %_Dynamic_check.succeeded323
  %call326 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %408, i8* %409, i8* %412)
  %cmp327 = icmp eq i32 %call326, -1
  br i1 %cmp327, label %if.then328, label %if.else331

if.then328:                                       ; preds = %_Dynamic_check.succeeded325
  %414 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call329 = call i32 @puts(i8* %414)
  %415 = load i32, i32* @tests_passed, align 4
  %inc330 = add nsw i32 %415, 1
  store i32 %inc330, i32* @tests_passed, align 4
  br label %if.end334

_Dynamic_check.failed320:                         ; preds = %if.end317
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed322:                         ; preds = %_Dynamic_check.succeeded321
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed324:                         ; preds = %_Dynamic_check.succeeded323
  call void @llvm.trap() #6
  unreachable

if.else331:                                       ; preds = %_Dynamic_check.succeeded325
  %416 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call332 = call i32 @puts(i8* %416)
  %417 = load i32, i32* @tests_failed, align 4
  %inc333 = add nsw i32 %417, 1
  store i32 %inc333, i32* @tests_failed, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.else331, %if.then328
  %418 = load i8*, i8** %string_1, align 8
  %419 = ptrtoint i8* %418 to i64
  %420 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %419)
  %421 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.201 to i64))
  %call335 = call i8* @t_strcpy(i8* %420, i8* %421)
  %call336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 546, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.226, i64 0, i64 0))
  %422 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %423 = load i8*, i8** %string_1, align 8
  %424 = ptrtoint %Tstruct.json_object_t_t* %422 to i32
  %425 = call i8* @c_fetch_pointer_from_offset(i32 %424)
  %426 = call i1 @c_isTaintedPointerToTaintedMem(i8* %425)
  br i1 %426, label %_Dynamic_check.succeeded338, label %_Dynamic_check.failed337

_Dynamic_check.succeeded338:                      ; preds = %if.end334
  %427 = bitcast i8* %425 to %Tstruct.json_object_t_t*
  %428 = ptrtoint i8* %423 to i32
  %429 = call i8* @c_fetch_pointer_from_offset(i32 %428)
  %430 = call i1 @c_isTaintedPointerToTaintedMem(i8* %429)
  br i1 %430, label %_Dynamic_check.succeeded340, label %_Dynamic_check.failed339

_Dynamic_check.succeeded340:                      ; preds = %_Dynamic_check.succeeded338
  %431 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %432 = call i1 @c_isTaintedPointerToTaintedMem(i8* %431)
  br i1 %432, label %_Dynamic_check.succeeded342, label %_Dynamic_check.failed341

_Dynamic_check.succeeded342:                      ; preds = %_Dynamic_check.succeeded340
  %call343 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %427, i8* %429, i8* %431)
  %cmp344 = icmp eq i32 %call343, -1
  br i1 %cmp344, label %if.then345, label %if.else348

if.then345:                                       ; preds = %_Dynamic_check.succeeded342
  %433 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call346 = call i32 @puts(i8* %433)
  %434 = load i32, i32* @tests_passed, align 4
  %inc347 = add nsw i32 %434, 1
  store i32 %inc347, i32* @tests_passed, align 4
  br label %if.end351

_Dynamic_check.failed337:                         ; preds = %if.end334
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed339:                         ; preds = %_Dynamic_check.succeeded338
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed341:                         ; preds = %_Dynamic_check.succeeded340
  call void @llvm.trap() #6
  unreachable

if.else348:                                       ; preds = %_Dynamic_check.succeeded342
  %435 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call349 = call i32 @puts(i8* %435)
  %436 = load i32, i32* @tests_failed, align 4
  %inc350 = add nsw i32 %436, 1
  store i32 %inc350, i32* @tests_failed, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.else348, %if.then345
  %call352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 547, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.227, i64 0, i64 0))
  %437 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %438 = ptrtoint %Tstruct.json_object_t_t* %437 to i32
  %439 = call i8* @c_fetch_pointer_from_offset(i32 %438)
  %440 = call i1 @c_isTaintedPointerToTaintedMem(i8* %439)
  br i1 %440, label %_Dynamic_check.succeeded354, label %_Dynamic_check.failed353

_Dynamic_check.succeeded354:                      ; preds = %if.end351
  %441 = bitcast i8* %439 to %Tstruct.json_object_t_t*
  %442 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %443 = call i1 @c_isTaintedPointerToTaintedMem(i8* %442)
  br i1 %443, label %_Dynamic_check.succeeded356, label %_Dynamic_check.failed355

_Dynamic_check.succeeded356:                      ; preds = %_Dynamic_check.succeeded354
  %444 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %445 = call i1 @c_isTaintedPointerToTaintedMem(i8* %444)
  br i1 %445, label %_Dynamic_check.succeeded358, label %_Dynamic_check.failed357

_Dynamic_check.succeeded358:                      ; preds = %_Dynamic_check.succeeded356
  %call359 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %441, i8* %442, i8* %444)
  %cmp360 = icmp eq i32 %call359, -1
  br i1 %cmp360, label %if.then361, label %if.else364

if.then361:                                       ; preds = %_Dynamic_check.succeeded358
  %446 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call362 = call i32 @puts(i8* %446)
  %447 = load i32, i32* @tests_passed, align 4
  %inc363 = add nsw i32 %447, 1
  store i32 %inc363, i32* @tests_passed, align 4
  br label %if.end367

_Dynamic_check.failed353:                         ; preds = %if.end351
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed355:                         ; preds = %_Dynamic_check.succeeded354
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed357:                         ; preds = %_Dynamic_check.succeeded356
  call void @llvm.trap() #6
  unreachable

if.else364:                                       ; preds = %_Dynamic_check.succeeded358
  %448 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call365 = call i32 @puts(i8* %448)
  %449 = load i32, i32* @tests_failed, align 4
  %inc366 = add nsw i32 %449, 1
  store i32 %inc366, i32* @tests_failed, align 4
  br label %if.end367

if.end367:                                        ; preds = %if.else364, %if.then361
  %call368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 548, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.228, i64 0, i64 0))
  %450 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %451 = ptrtoint %Tstruct.json_object_t_t* %450 to i32
  %452 = call i8* @c_fetch_pointer_from_offset(i32 %451)
  %453 = call i1 @c_isTaintedPointerToTaintedMem(i8* %452)
  br i1 %453, label %_Dynamic_check.succeeded370, label %_Dynamic_check.failed369

_Dynamic_check.succeeded370:                      ; preds = %if.end367
  %454 = bitcast i8* %452 to %Tstruct.json_object_t_t*
  %455 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %456 = call i1 @c_isTaintedPointerToTaintedMem(i8* %455)
  br i1 %456, label %_Dynamic_check.succeeded372, label %_Dynamic_check.failed371

_Dynamic_check.succeeded372:                      ; preds = %_Dynamic_check.succeeded370
  %457 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %458 = call i1 @c_isTaintedPointerToTaintedMem(i8* %457)
  br i1 %458, label %_Dynamic_check.succeeded374, label %_Dynamic_check.failed373

_Dynamic_check.succeeded374:                      ; preds = %_Dynamic_check.succeeded372
  %459 = bitcast i8* %457 to %Tstruct.json_value_t_t*
  %call375 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %454, i8* %455, %Tstruct.json_value_t_t* %459)
  %cmp376 = icmp eq i32 %call375, -1
  br i1 %cmp376, label %if.then377, label %if.else380

if.then377:                                       ; preds = %_Dynamic_check.succeeded374
  %460 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call378 = call i32 @puts(i8* %460)
  %461 = load i32, i32* @tests_passed, align 4
  %inc379 = add nsw i32 %461, 1
  store i32 %inc379, i32* @tests_passed, align 4
  br label %if.end383

_Dynamic_check.failed369:                         ; preds = %if.end367
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed371:                         ; preds = %_Dynamic_check.succeeded370
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed373:                         ; preds = %_Dynamic_check.succeeded372
  call void @llvm.trap() #6
  unreachable

if.else380:                                       ; preds = %_Dynamic_check.succeeded374
  %462 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call381 = call i32 @puts(i8* %462)
  %463 = load i32, i32* @tests_failed, align 4
  %inc382 = add nsw i32 %463, 1
  store i32 %inc382, i32* @tests_failed, align 4
  br label %if.end383

if.end383:                                        ; preds = %if.else380, %if.then377
  %464 = load i8*, i8** %string_1, align 8
  %465 = ptrtoint i8* %464 to i64
  %466 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %465)
  %467 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call384 = call i8* @t_strcpy(i8* %466, i8* %467)
  %call385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 551, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.229, i64 0, i64 0))
  %468 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %469 = load i8*, i8** %string_1, align 8
  %470 = ptrtoint %Tstruct.json_object_t_t* %468 to i32
  %471 = call i8* @c_fetch_pointer_from_offset(i32 %470)
  %472 = call i1 @c_isTaintedPointerToTaintedMem(i8* %471)
  br i1 %472, label %_Dynamic_check.succeeded387, label %_Dynamic_check.failed386

_Dynamic_check.succeeded387:                      ; preds = %if.end383
  %473 = bitcast i8* %471 to %Tstruct.json_object_t_t*
  %474 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %475 = call i1 @c_isTaintedPointerToTaintedMem(i8* %474)
  br i1 %475, label %_Dynamic_check.succeeded389, label %_Dynamic_check.failed388

_Dynamic_check.succeeded389:                      ; preds = %_Dynamic_check.succeeded387
  %476 = ptrtoint i8* %469 to i32
  %477 = call i8* @c_fetch_pointer_from_offset(i32 %476)
  %478 = call i1 @c_isTaintedPointerToTaintedMem(i8* %477)
  br i1 %478, label %_Dynamic_check.succeeded391, label %_Dynamic_check.failed390

_Dynamic_check.succeeded391:                      ; preds = %_Dynamic_check.succeeded389
  %call392 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %473, i8* %474, i8* %477)
  %cmp393 = icmp eq i32 %call392, -1
  br i1 %cmp393, label %if.then394, label %if.else397

if.then394:                                       ; preds = %_Dynamic_check.succeeded391
  %479 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call395 = call i32 @puts(i8* %479)
  %480 = load i32, i32* @tests_passed, align 4
  %inc396 = add nsw i32 %480, 1
  store i32 %inc396, i32* @tests_passed, align 4
  br label %if.end400

_Dynamic_check.failed386:                         ; preds = %if.end383
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed388:                         ; preds = %_Dynamic_check.succeeded387
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed390:                         ; preds = %_Dynamic_check.succeeded389
  call void @llvm.trap() #6
  unreachable

if.else397:                                       ; preds = %_Dynamic_check.succeeded391
  %481 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call398 = call i32 @puts(i8* %481)
  %482 = load i32, i32* @tests_failed, align 4
  %inc399 = add nsw i32 %482, 1
  store i32 %inc399, i32* @tests_failed, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.else397, %if.then394
  %483 = load i8*, i8** %string_1, align 8
  %484 = ptrtoint i8* %483 to i64
  %485 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %484)
  %486 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.215 to i64))
  %call401 = call i8* @t_strcpy(i8* %485, i8* %486)
  %call402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 553, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.230, i64 0, i64 0))
  %487 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %488 = load i8*, i8** %string_1, align 8
  %489 = ptrtoint %Tstruct.json_object_t_t* %487 to i32
  %490 = call i8* @c_fetch_pointer_from_offset(i32 %489)
  %491 = call i1 @c_isTaintedPointerToTaintedMem(i8* %490)
  br i1 %491, label %_Dynamic_check.succeeded404, label %_Dynamic_check.failed403

_Dynamic_check.succeeded404:                      ; preds = %if.end400
  %492 = bitcast i8* %490 to %Tstruct.json_object_t_t*
  %493 = ptrtoint i8* %488 to i32
  %494 = call i8* @c_fetch_pointer_from_offset(i32 %493)
  %495 = call i1 @c_isTaintedPointerToTaintedMem(i8* %494)
  br i1 %495, label %_Dynamic_check.succeeded406, label %_Dynamic_check.failed405

_Dynamic_check.succeeded406:                      ; preds = %_Dynamic_check.succeeded404
  %496 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %497 = call i1 @c_isTaintedPointerToTaintedMem(i8* %496)
  br i1 %497, label %_Dynamic_check.succeeded408, label %_Dynamic_check.failed407

_Dynamic_check.succeeded408:                      ; preds = %_Dynamic_check.succeeded406
  %call409 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %492, i8* %494, i8* %496)
  %cmp410 = icmp eq i32 %call409, -1
  br i1 %cmp410, label %if.then411, label %if.else414

if.then411:                                       ; preds = %_Dynamic_check.succeeded408
  %498 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call412 = call i32 @puts(i8* %498)
  %499 = load i32, i32* @tests_passed, align 4
  %inc413 = add nsw i32 %499, 1
  store i32 %inc413, i32* @tests_passed, align 4
  br label %if.end417

_Dynamic_check.failed403:                         ; preds = %if.end400
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed405:                         ; preds = %_Dynamic_check.succeeded404
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed407:                         ; preds = %_Dynamic_check.succeeded406
  call void @llvm.trap() #6
  unreachable

if.else414:                                       ; preds = %_Dynamic_check.succeeded408
  %500 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call415 = call i32 @puts(i8* %500)
  %501 = load i32, i32* @tests_failed, align 4
  %inc416 = add nsw i32 %501, 1
  store i32 %inc416, i32* @tests_failed, align 4
  br label %if.end417

if.end417:                                        ; preds = %if.else414, %if.then411
  %call418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 554, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.231, i64 0, i64 0))
  %502 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %503 = ptrtoint %Tstruct.json_object_t_t* %502 to i32
  %504 = call i8* @c_fetch_pointer_from_offset(i32 %503)
  %505 = call i1 @c_isTaintedPointerToTaintedMem(i8* %504)
  br i1 %505, label %_Dynamic_check.succeeded420, label %_Dynamic_check.failed419

_Dynamic_check.succeeded420:                      ; preds = %if.end417
  %506 = bitcast i8* %504 to %Tstruct.json_object_t_t*
  %507 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %508 = call i1 @c_isTaintedPointerToTaintedMem(i8* %507)
  br i1 %508, label %_Dynamic_check.succeeded422, label %_Dynamic_check.failed421

_Dynamic_check.succeeded422:                      ; preds = %_Dynamic_check.succeeded420
  %509 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %510 = call i1 @c_isTaintedPointerToTaintedMem(i8* %509)
  br i1 %510, label %_Dynamic_check.succeeded424, label %_Dynamic_check.failed423

_Dynamic_check.succeeded424:                      ; preds = %_Dynamic_check.succeeded422
  %call425 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %506, i8* %507, i8* %509)
  %cmp426 = icmp eq i32 %call425, -1
  br i1 %cmp426, label %if.then427, label %if.else430

if.then427:                                       ; preds = %_Dynamic_check.succeeded424
  %511 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call428 = call i32 @puts(i8* %511)
  %512 = load i32, i32* @tests_passed, align 4
  %inc429 = add nsw i32 %512, 1
  store i32 %inc429, i32* @tests_passed, align 4
  br label %if.end433

_Dynamic_check.failed419:                         ; preds = %if.end417
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed421:                         ; preds = %_Dynamic_check.succeeded420
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed423:                         ; preds = %_Dynamic_check.succeeded422
  call void @llvm.trap() #6
  unreachable

if.else430:                                       ; preds = %_Dynamic_check.succeeded424
  %513 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call431 = call i32 @puts(i8* %513)
  %514 = load i32, i32* @tests_failed, align 4
  %inc432 = add nsw i32 %514, 1
  store i32 %inc432, i32* @tests_failed, align 4
  br label %if.end433

if.end433:                                        ; preds = %if.else430, %if.then427
  %call434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 555, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.232, i64 0, i64 0))
  %515 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %516 = ptrtoint %Tstruct.json_object_t_t* %515 to i32
  %517 = call i8* @c_fetch_pointer_from_offset(i32 %516)
  %518 = call i1 @c_isTaintedPointerToTaintedMem(i8* %517)
  br i1 %518, label %_Dynamic_check.succeeded436, label %_Dynamic_check.failed435

_Dynamic_check.succeeded436:                      ; preds = %if.end433
  %519 = bitcast i8* %517 to %Tstruct.json_object_t_t*
  %520 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %521 = call i1 @c_isTaintedPointerToTaintedMem(i8* %520)
  br i1 %521, label %_Dynamic_check.succeeded438, label %_Dynamic_check.failed437

_Dynamic_check.succeeded438:                      ; preds = %_Dynamic_check.succeeded436
  %522 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %523 = call i1 @c_isTaintedPointerToTaintedMem(i8* %522)
  br i1 %523, label %_Dynamic_check.succeeded440, label %_Dynamic_check.failed439

_Dynamic_check.succeeded440:                      ; preds = %_Dynamic_check.succeeded438
  %524 = bitcast i8* %522 to %Tstruct.json_value_t_t*
  %call441 = call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %519, i8* %520, %Tstruct.json_value_t_t* %524)
  %cmp442 = icmp eq i32 %call441, -1
  br i1 %cmp442, label %if.then443, label %if.else446

if.then443:                                       ; preds = %_Dynamic_check.succeeded440
  %525 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call444 = call i32 @puts(i8* %525)
  %526 = load i32, i32* @tests_passed, align 4
  %inc445 = add nsw i32 %526, 1
  store i32 %inc445, i32* @tests_passed, align 4
  br label %if.end449

_Dynamic_check.failed435:                         ; preds = %if.end433
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed437:                         ; preds = %_Dynamic_check.succeeded436
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed439:                         ; preds = %_Dynamic_check.succeeded438
  call void @llvm.trap() #6
  unreachable

if.else446:                                       ; preds = %_Dynamic_check.succeeded440
  %527 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call447 = call i32 @puts(i8* %527)
  %528 = load i32, i32* @tests_failed, align 4
  %inc448 = add nsw i32 %528, 1
  store i32 %inc448, i32* @tests_failed, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.else446, %if.then443
  %529 = load i8*, i8** %string_1, align 8
  %530 = ptrtoint i8* %529 to i64
  %531 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %530)
  %532 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call450 = call i8* @t_strcpy(i8* %531, i8* %532)
  %call451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 558, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.233, i64 0, i64 0))
  %533 = load i8*, i8** %string_1, align 8
  %534 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %535 = call i1 @c_isTaintedPointerToTaintedMem(i8* %534)
  br i1 %535, label %_Dynamic_check.succeeded453, label %_Dynamic_check.failed452

_Dynamic_check.succeeded453:                      ; preds = %if.end449
  %536 = bitcast i8* %534 to %Tstruct.json_array_t_t*
  %537 = ptrtoint i8* %533 to i32
  %538 = call i8* @c_fetch_pointer_from_offset(i32 %537)
  %539 = call i1 @c_isTaintedPointerToTaintedMem(i8* %538)
  br i1 %539, label %_Dynamic_check.succeeded455, label %_Dynamic_check.failed454

_Dynamic_check.succeeded455:                      ; preds = %_Dynamic_check.succeeded453
  %call456 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %536, i8* %538)
  %cmp457 = icmp eq i32 %call456, -1
  br i1 %cmp457, label %if.then458, label %if.else461

if.then458:                                       ; preds = %_Dynamic_check.succeeded455
  %540 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call459 = call i32 @puts(i8* %540)
  %541 = load i32, i32* @tests_passed, align 4
  %inc460 = add nsw i32 %541, 1
  store i32 %inc460, i32* @tests_passed, align 4
  br label %if.end464

_Dynamic_check.failed452:                         ; preds = %if.end449
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed454:                         ; preds = %_Dynamic_check.succeeded453
  call void @llvm.trap() #6
  unreachable

if.else461:                                       ; preds = %_Dynamic_check.succeeded455
  %542 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call462 = call i32 @puts(i8* %542)
  %543 = load i32, i32* @tests_failed, align 4
  %inc463 = add nsw i32 %543, 1
  store i32 %inc463, i32* @tests_failed, align 4
  br label %if.end464

if.end464:                                        ; preds = %if.else461, %if.then458
  %call465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 559, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.234, i64 0, i64 0))
  %544 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %545 = ptrtoint %Tstruct.json_array_t_t* %544 to i32
  %546 = call i8* @c_fetch_pointer_from_offset(i32 %545)
  %547 = call i1 @c_isTaintedPointerToTaintedMem(i8* %546)
  br i1 %547, label %_Dynamic_check.succeeded467, label %_Dynamic_check.failed466

_Dynamic_check.succeeded467:                      ; preds = %if.end464
  %548 = bitcast i8* %546 to %Tstruct.json_array_t_t*
  %549 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %550 = call i1 @c_isTaintedPointerToTaintedMem(i8* %549)
  br i1 %550, label %_Dynamic_check.succeeded469, label %_Dynamic_check.failed468

_Dynamic_check.succeeded469:                      ; preds = %_Dynamic_check.succeeded467
  %551 = bitcast i8* %549 to %Tstruct.json_value_t_t*
  %call470 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %548, %Tstruct.json_value_t_t* %551)
  %cmp471 = icmp eq i32 %call470, -1
  br i1 %cmp471, label %if.then472, label %if.else475

if.then472:                                       ; preds = %_Dynamic_check.succeeded469
  %552 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call473 = call i32 @puts(i8* %552)
  %553 = load i32, i32* @tests_passed, align 4
  %inc474 = add nsw i32 %553, 1
  store i32 %inc474, i32* @tests_passed, align 4
  br label %if.end478

_Dynamic_check.failed466:                         ; preds = %if.end464
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed468:                         ; preds = %_Dynamic_check.succeeded467
  call void @llvm.trap() #6
  unreachable

if.else475:                                       ; preds = %_Dynamic_check.succeeded469
  %554 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call476 = call i32 @puts(i8* %554)
  %555 = load i32, i32* @tests_failed, align 4
  %inc477 = add nsw i32 %555, 1
  store i32 %inc477, i32* @tests_failed, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.else475, %if.then472
  %call479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 560, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.235, i64 0, i64 0))
  %556 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %557 = call i1 @c_isTaintedPointerToTaintedMem(i8* %556)
  br i1 %557, label %_Dynamic_check.succeeded481, label %_Dynamic_check.failed480

_Dynamic_check.succeeded481:                      ; preds = %if.end478
  %558 = bitcast i8* %556 to %Tstruct.json_array_t_t*
  %559 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %560 = call i1 @c_isTaintedPointerToTaintedMem(i8* %559)
  br i1 %560, label %_Dynamic_check.succeeded483, label %_Dynamic_check.failed482

_Dynamic_check.succeeded483:                      ; preds = %_Dynamic_check.succeeded481
  %561 = bitcast i8* %559 to %Tstruct.json_value_t_t*
  %call484 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %558, %Tstruct.json_value_t_t* %561)
  %cmp485 = icmp eq i32 %call484, -1
  br i1 %cmp485, label %if.then486, label %if.else489

if.then486:                                       ; preds = %_Dynamic_check.succeeded483
  %562 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call487 = call i32 @puts(i8* %562)
  %563 = load i32, i32* @tests_passed, align 4
  %inc488 = add nsw i32 %563, 1
  store i32 %inc488, i32* @tests_passed, align 4
  br label %if.end492

_Dynamic_check.failed480:                         ; preds = %if.end478
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed482:                         ; preds = %_Dynamic_check.succeeded481
  call void @llvm.trap() #6
  unreachable

if.else489:                                       ; preds = %_Dynamic_check.succeeded483
  %564 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call490 = call i32 @puts(i8* %564)
  %565 = load i32, i32* @tests_failed, align 4
  %inc491 = add nsw i32 %565, 1
  store i32 %inc491, i32* @tests_failed, align 4
  br label %if.end492

if.end492:                                        ; preds = %if.else489, %if.then486
  %call493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.236, i64 0, i64 0))
  %566 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %567 = ptrtoint %Tstruct.json_array_t_t* %566 to i32
  %568 = call i8* @c_fetch_pointer_from_offset(i32 %567)
  %569 = call i1 @c_isTaintedPointerToTaintedMem(i8* %568)
  br i1 %569, label %_Dynamic_check.succeeded495, label %_Dynamic_check.failed494

_Dynamic_check.succeeded495:                      ; preds = %if.end492
  %570 = bitcast i8* %568 to %Tstruct.json_array_t_t*
  %571 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %572 = call i1 @c_isTaintedPointerToTaintedMem(i8* %571)
  br i1 %572, label %_Dynamic_check.succeeded497, label %_Dynamic_check.failed496

_Dynamic_check.succeeded497:                      ; preds = %_Dynamic_check.succeeded495
  %573 = bitcast i8* %571 to %Tstruct.json_value_t_t*
  %call498 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %570, i64 0, %Tstruct.json_value_t_t* %573)
  %cmp499 = icmp eq i32 %call498, -1
  br i1 %cmp499, label %if.then500, label %if.else503

if.then500:                                       ; preds = %_Dynamic_check.succeeded497
  %574 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call501 = call i32 @puts(i8* %574)
  %575 = load i32, i32* @tests_passed, align 4
  %inc502 = add nsw i32 %575, 1
  store i32 %inc502, i32* @tests_passed, align 4
  br label %if.end506

_Dynamic_check.failed494:                         ; preds = %if.end492
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed496:                         ; preds = %_Dynamic_check.succeeded495
  call void @llvm.trap() #6
  unreachable

if.else503:                                       ; preds = %_Dynamic_check.succeeded497
  %576 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call504 = call i32 @puts(i8* %576)
  %577 = load i32, i32* @tests_failed, align 4
  %inc505 = add nsw i32 %577, 1
  store i32 %inc505, i32* @tests_failed, align 4
  br label %if.end506

if.end506:                                        ; preds = %if.else503, %if.then500
  %578 = load i8*, i8** %string_1, align 8
  %579 = ptrtoint i8* %578 to i64
  %580 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %579)
  %581 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call507 = call i8* @t_strcpy(i8* %580, i8* %581)
  %call508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 563, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.237, i64 0, i64 0))
  %582 = load i8*, i8** %string_1, align 8
  %583 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %584 = call i1 @c_isTaintedPointerToTaintedMem(i8* %583)
  br i1 %584, label %_Dynamic_check.succeeded510, label %_Dynamic_check.failed509

_Dynamic_check.succeeded510:                      ; preds = %if.end506
  %585 = bitcast i8* %583 to %Tstruct.json_array_t_t*
  %586 = ptrtoint i8* %582 to i32
  %587 = call i8* @c_fetch_pointer_from_offset(i32 %586)
  %588 = call i1 @c_isTaintedPointerToTaintedMem(i8* %587)
  br i1 %588, label %_Dynamic_check.succeeded512, label %_Dynamic_check.failed511

_Dynamic_check.succeeded512:                      ; preds = %_Dynamic_check.succeeded510
  %call513 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %585, i64 0, i8* %587)
  %cmp514 = icmp eq i32 %call513, -1
  br i1 %cmp514, label %if.then515, label %if.else518

if.then515:                                       ; preds = %_Dynamic_check.succeeded512
  %589 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call516 = call i32 @puts(i8* %589)
  %590 = load i32, i32* @tests_passed, align 4
  %inc517 = add nsw i32 %590, 1
  store i32 %inc517, i32* @tests_passed, align 4
  br label %if.end521

_Dynamic_check.failed509:                         ; preds = %if.end506
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed511:                         ; preds = %_Dynamic_check.succeeded510
  call void @llvm.trap() #6
  unreachable

if.else518:                                       ; preds = %_Dynamic_check.succeeded512
  %591 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call519 = call i32 @puts(i8* %591)
  %592 = load i32, i32* @tests_failed, align 4
  %inc520 = add nsw i32 %592, 1
  store i32 %inc520, i32* @tests_failed, align 4
  br label %if.end521

if.end521:                                        ; preds = %if.else518, %if.then515
  %593 = load i8*, i8** %string_1, align 8
  %594 = ptrtoint i8* %593 to i64
  %595 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %594)
  %596 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.238 to i64))
  %call522 = call i8* @t_strcpy(i8* %595, i8* %596)
  %call523 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 565, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.239, i64 0, i64 0))
  %597 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %598 = load i8*, i8** %string_1, align 8
  %599 = ptrtoint %Tstruct.json_array_t_t* %597 to i32
  %600 = call i8* @c_fetch_pointer_from_offset(i32 %599)
  %601 = call i1 @c_isTaintedPointerToTaintedMem(i8* %600)
  br i1 %601, label %_Dynamic_check.succeeded525, label %_Dynamic_check.failed524

_Dynamic_check.succeeded525:                      ; preds = %if.end521
  %602 = bitcast i8* %600 to %Tstruct.json_array_t_t*
  %603 = ptrtoint i8* %598 to i32
  %604 = call i8* @c_fetch_pointer_from_offset(i32 %603)
  %605 = call i1 @c_isTaintedPointerToTaintedMem(i8* %604)
  br i1 %605, label %_Dynamic_check.succeeded527, label %_Dynamic_check.failed526

_Dynamic_check.succeeded527:                      ; preds = %_Dynamic_check.succeeded525
  %call528 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %602, i64 100, i8* %604)
  %cmp529 = icmp eq i32 %call528, -1
  br i1 %cmp529, label %if.then530, label %if.else533

if.then530:                                       ; preds = %_Dynamic_check.succeeded527
  %606 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call531 = call i32 @puts(i8* %606)
  %607 = load i32, i32* @tests_passed, align 4
  %inc532 = add nsw i32 %607, 1
  store i32 %inc532, i32* @tests_passed, align 4
  br label %if.end536

_Dynamic_check.failed524:                         ; preds = %if.end521
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed526:                         ; preds = %_Dynamic_check.succeeded525
  call void @llvm.trap() #6
  unreachable

if.else533:                                       ; preds = %_Dynamic_check.succeeded527
  %608 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call534 = call i32 @puts(i8* %608)
  %609 = load i32, i32* @tests_failed, align 4
  %inc535 = add nsw i32 %609, 1
  store i32 %inc535, i32* @tests_failed, align 4
  br label %if.end536

if.end536:                                        ; preds = %if.else533, %if.then530
  %610 = load i8*, i8** %string_1, align 8
  %611 = ptrtoint i8* %610 to i64
  %612 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %611)
  %613 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call537 = call i8* @t_strcpy(i8* %612, i8* %613)
  %call538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 568, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.240, i64 0, i64 0))
  %614 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %615 = load i8*, i8** %string_1, align 8
  %616 = ptrtoint %Tstruct.json_object_t_t* %614 to i32
  %617 = call i8* @c_fetch_pointer_from_offset(i32 %616)
  %618 = call i1 @c_isTaintedPointerToTaintedMem(i8* %617)
  br i1 %618, label %_Dynamic_check.succeeded540, label %_Dynamic_check.failed539

_Dynamic_check.succeeded540:                      ; preds = %if.end536
  %619 = bitcast i8* %617 to %Tstruct.json_object_t_t*
  %620 = ptrtoint i8* %615 to i32
  %621 = call i8* @c_fetch_pointer_from_offset(i32 %620)
  %622 = call i1 @c_isTaintedPointerToTaintedMem(i8* %621)
  br i1 %622, label %_Dynamic_check.succeeded542, label %_Dynamic_check.failed541

_Dynamic_check.succeeded542:                      ; preds = %_Dynamic_check.succeeded540
  %call543 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %619, i8* %621)
  %623 = ptrtoint %Tstruct.json_array_t_t* %call543 to i32
  %624 = call i8* @c_fetch_pointer_from_offset(i32 %623)
  %625 = call i1 @c_isTaintedPointerToTaintedMem(i8* %624)
  br i1 %625, label %_Dynamic_check.succeeded545, label %_Dynamic_check.failed544

_Dynamic_check.succeeded545:                      ; preds = %_Dynamic_check.succeeded542
  %626 = bitcast i8* %624 to %Tstruct.json_array_t_t*
  %627 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %628 = call i1 @c_isTaintedPointerToTaintedMem(i8* %627)
  br i1 %628, label %_Dynamic_check.succeeded547, label %_Dynamic_check.failed546

_Dynamic_check.succeeded547:                      ; preds = %_Dynamic_check.succeeded545
  %call548 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %626, i8* %627)
  %cmp549 = icmp eq i32 %call548, -1
  br i1 %cmp549, label %if.then550, label %if.else553

if.then550:                                       ; preds = %_Dynamic_check.succeeded547
  %629 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call551 = call i32 @puts(i8* %629)
  %630 = load i32, i32* @tests_passed, align 4
  %inc552 = add nsw i32 %630, 1
  store i32 %inc552, i32* @tests_passed, align 4
  br label %if.end556

_Dynamic_check.failed539:                         ; preds = %if.end536
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed541:                         ; preds = %_Dynamic_check.succeeded540
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed544:                         ; preds = %_Dynamic_check.succeeded542
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed546:                         ; preds = %_Dynamic_check.succeeded545
  call void @llvm.trap() #6
  unreachable

if.else553:                                       ; preds = %_Dynamic_check.succeeded547
  %631 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call554 = call i32 @puts(i8* %631)
  %632 = load i32, i32* @tests_failed, align 4
  %inc555 = add nsw i32 %632, 1
  store i32 %inc555, i32* @tests_failed, align 4
  br label %if.end556

if.end556:                                        ; preds = %if.else553, %if.then550
  %633 = load i8*, i8** %string_1, align 8
  %634 = ptrtoint i8* %633 to i64
  %635 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %634)
  %636 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.210 to i64))
  %call557 = call i8* @t_strcpy(i8* %635, i8* %636)
  %call558 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 571, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %637 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %638 = load i8*, i8** %string_1, align 8
  %639 = ptrtoint %Tstruct.json_array_t_t* %637 to i32
  %640 = call i8* @c_fetch_pointer_from_offset(i32 %639)
  %641 = call i1 @c_isTaintedPointerToTaintedMem(i8* %640)
  br i1 %641, label %_Dynamic_check.succeeded560, label %_Dynamic_check.failed559

_Dynamic_check.succeeded560:                      ; preds = %if.end556
  %642 = bitcast i8* %640 to %Tstruct.json_array_t_t*
  %643 = ptrtoint i8* %638 to i32
  %644 = call i8* @c_fetch_pointer_from_offset(i32 %643)
  %645 = call i1 @c_isTaintedPointerToTaintedMem(i8* %644)
  br i1 %645, label %_Dynamic_check.succeeded562, label %_Dynamic_check.failed561

_Dynamic_check.succeeded562:                      ; preds = %_Dynamic_check.succeeded560
  %call563 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %642, i8* %644)
  %cmp564 = icmp eq i32 %call563, 0
  br i1 %cmp564, label %if.then565, label %if.else568

if.then565:                                       ; preds = %_Dynamic_check.succeeded562
  %646 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call566 = call i32 @puts(i8* %646)
  %647 = load i32, i32* @tests_passed, align 4
  %inc567 = add nsw i32 %647, 1
  store i32 %inc567, i32* @tests_passed, align 4
  br label %if.end571

_Dynamic_check.failed559:                         ; preds = %if.end556
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed561:                         ; preds = %_Dynamic_check.succeeded560
  call void @llvm.trap() #6
  unreachable

if.else568:                                       ; preds = %_Dynamic_check.succeeded562
  %648 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call569 = call i32 @puts(i8* %648)
  %649 = load i32, i32* @tests_failed, align 4
  %inc570 = add nsw i32 %649, 1
  store i32 %inc570, i32* @tests_failed, align 4
  br label %if.end571

if.end571:                                        ; preds = %if.else568, %if.then565
  %call572 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.241, i64 0, i64 0))
  %650 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %651 = ptrtoint %Tstruct.json_array_t_t* %650 to i32
  %652 = call i8* @c_fetch_pointer_from_offset(i32 %651)
  %653 = call i1 @c_isTaintedPointerToTaintedMem(i8* %652)
  br i1 %653, label %_Dynamic_check.succeeded574, label %_Dynamic_check.failed573

_Dynamic_check.succeeded574:                      ; preds = %if.end571
  %654 = bitcast i8* %652 to %Tstruct.json_array_t_t*
  %call575 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %654, i64 0)
  %cmp576 = icmp eq i32 %call575, 0
  br i1 %cmp576, label %if.then577, label %if.else580

if.then577:                                       ; preds = %_Dynamic_check.succeeded574
  %655 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call578 = call i32 @puts(i8* %655)
  %656 = load i32, i32* @tests_passed, align 4
  %inc579 = add nsw i32 %656, 1
  store i32 %inc579, i32* @tests_passed, align 4
  br label %if.end583

_Dynamic_check.failed573:                         ; preds = %if.end571
  call void @llvm.trap() #6
  unreachable

if.else580:                                       ; preds = %_Dynamic_check.succeeded574
  %657 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call581 = call i32 @puts(i8* %657)
  %658 = load i32, i32* @tests_failed, align 4
  %inc582 = add nsw i32 %658, 1
  store i32 %inc582, i32* @tests_failed, align 4
  br label %if.end583

if.end583:                                        ; preds = %if.else580, %if.then577
  %call584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 573, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.242, i64 0, i64 0))
  %659 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %660 = ptrtoint %Tstruct.json_array_t_t* %659 to i32
  %661 = call i8* @c_fetch_pointer_from_offset(i32 %660)
  %662 = call i1 @c_isTaintedPointerToTaintedMem(i8* %661)
  br i1 %662, label %_Dynamic_check.succeeded586, label %_Dynamic_check.failed585

_Dynamic_check.succeeded586:                      ; preds = %if.end583
  %663 = bitcast i8* %661 to %Tstruct.json_array_t_t*
  %call587 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %663, i64 1)
  %cmp588 = icmp eq i32 %call587, 0
  br i1 %cmp588, label %if.then589, label %if.else592

if.then589:                                       ; preds = %_Dynamic_check.succeeded586
  %664 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call590 = call i32 @puts(i8* %664)
  %665 = load i32, i32* @tests_passed, align 4
  %inc591 = add nsw i32 %665, 1
  store i32 %inc591, i32* @tests_passed, align 4
  br label %if.end595

_Dynamic_check.failed585:                         ; preds = %if.end583
  call void @llvm.trap() #6
  unreachable

if.else592:                                       ; preds = %_Dynamic_check.succeeded586
  %666 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call593 = call i32 @puts(i8* %666)
  %667 = load i32, i32* @tests_failed, align 4
  %inc594 = add nsw i32 %667, 1
  store i32 %inc594, i32* @tests_failed, align 4
  br label %if.end595

if.end595:                                        ; preds = %if.else592, %if.then589
  %call596 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 574, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.241, i64 0, i64 0))
  %668 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %669 = ptrtoint %Tstruct.json_array_t_t* %668 to i32
  %670 = call i8* @c_fetch_pointer_from_offset(i32 %669)
  %671 = call i1 @c_isTaintedPointerToTaintedMem(i8* %670)
  br i1 %671, label %_Dynamic_check.succeeded598, label %_Dynamic_check.failed597

_Dynamic_check.succeeded598:                      ; preds = %if.end595
  %672 = bitcast i8* %670 to %Tstruct.json_array_t_t*
  %call599 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %672, i64 0)
  %cmp600 = icmp eq i32 %call599, 0
  br i1 %cmp600, label %if.then601, label %if.else604

if.then601:                                       ; preds = %_Dynamic_check.succeeded598
  %673 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call602 = call i32 @puts(i8* %673)
  %674 = load i32, i32* @tests_passed, align 4
  %inc603 = add nsw i32 %674, 1
  store i32 %inc603, i32* @tests_passed, align 4
  br label %if.end607

_Dynamic_check.failed597:                         ; preds = %if.end595
  call void @llvm.trap() #6
  unreachable

if.else604:                                       ; preds = %_Dynamic_check.succeeded598
  %675 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call605 = call i32 @puts(i8* %675)
  %676 = load i32, i32* @tests_failed, align 4
  %inc606 = add nsw i32 %676, 1
  store i32 %inc606, i32* @tests_failed, align 4
  br label %if.end607

if.end607:                                        ; preds = %if.else604, %if.then601
  %call608 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.243, i64 0, i64 0))
  %677 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %678 = ptrtoint %Tstruct.json_array_t_t* %677 to i32
  %679 = call i8* @c_fetch_pointer_from_offset(i32 %678)
  %680 = call i1 @c_isTaintedPointerToTaintedMem(i8* %679)
  br i1 %680, label %_Dynamic_check.succeeded610, label %_Dynamic_check.failed609

_Dynamic_check.succeeded610:                      ; preds = %if.end607
  %681 = bitcast i8* %679 to %Tstruct.json_array_t_t*
  %call611 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %681, i64 0)
  %cmp612 = icmp eq i32 %call611, -1
  br i1 %cmp612, label %if.then613, label %if.else616

if.then613:                                       ; preds = %_Dynamic_check.succeeded610
  %682 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call614 = call i32 @puts(i8* %682)
  %683 = load i32, i32* @tests_passed, align 4
  %inc615 = add nsw i32 %683, 1
  store i32 %inc615, i32* @tests_passed, align 4
  br label %if.end619

_Dynamic_check.failed609:                         ; preds = %if.end607
  call void @llvm.trap() #6
  unreachable

if.else616:                                       ; preds = %_Dynamic_check.succeeded610
  %684 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call617 = call i32 @puts(i8* %684)
  %685 = load i32, i32* @tests_failed, align 4
  %inc618 = add nsw i32 %685, 1
  store i32 %inc618, i32* @tests_failed, align 4
  br label %if.end619

if.end619:                                        ; preds = %if.else616, %if.then613
  %call620 = call %Tstruct.json_value_t_t* @json_value_init_null()
  store %Tstruct.json_value_t_t* %call620, %Tstruct.json_value_t_t** %val_parent, align 8
  %686 = load i8*, i8** %string_1, align 8
  %687 = ptrtoint i8* %686 to i64
  %688 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %687)
  %689 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.162 to i64))
  %call621 = call i8* @t_strcpy(i8* %688, i8* %689)
  %call622 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 579, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.244, i64 0, i64 0))
  %690 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %691 = load i8*, i8** %string_1, align 8
  %692 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 8
  %693 = ptrtoint %Tstruct.json_object_t_t* %690 to i32
  %694 = call i8* @c_fetch_pointer_from_offset(i32 %693)
  %695 = call i1 @c_isTaintedPointerToTaintedMem(i8* %694)
  br i1 %695, label %_Dynamic_check.succeeded624, label %_Dynamic_check.failed623

_Dynamic_check.succeeded624:                      ; preds = %if.end619
  %696 = bitcast i8* %694 to %Tstruct.json_object_t_t*
  %697 = ptrtoint i8* %691 to i32
  %698 = call i8* @c_fetch_pointer_from_offset(i32 %697)
  %699 = call i1 @c_isTaintedPointerToTaintedMem(i8* %698)
  br i1 %699, label %_Dynamic_check.succeeded626, label %_Dynamic_check.failed625

_Dynamic_check.succeeded626:                      ; preds = %_Dynamic_check.succeeded624
  %700 = ptrtoint %Tstruct.json_value_t_t* %692 to i32
  %701 = call i8* @c_fetch_pointer_from_offset(i32 %700)
  %702 = call i1 @c_isTaintedPointerToTaintedMem(i8* %701)
  br i1 %702, label %_Dynamic_check.succeeded628, label %_Dynamic_check.failed627

_Dynamic_check.succeeded628:                      ; preds = %_Dynamic_check.succeeded626
  %703 = bitcast i8* %701 to %Tstruct.json_value_t_t*
  %call629 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %696, i8* %698, %Tstruct.json_value_t_t* %703)
  %cmp630 = icmp eq i32 %call629, 0
  br i1 %cmp630, label %if.then631, label %if.else634

if.then631:                                       ; preds = %_Dynamic_check.succeeded628
  %704 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call632 = call i32 @puts(i8* %704)
  %705 = load i32, i32* @tests_passed, align 4
  %inc633 = add nsw i32 %705, 1
  store i32 %inc633, i32* @tests_passed, align 4
  br label %if.end637

_Dynamic_check.failed623:                         ; preds = %if.end619
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed625:                         ; preds = %_Dynamic_check.succeeded624
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed627:                         ; preds = %_Dynamic_check.succeeded626
  call void @llvm.trap() #6
  unreachable

if.else634:                                       ; preds = %_Dynamic_check.succeeded628
  %706 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call635 = call i32 @puts(i8* %706)
  %707 = load i32, i32* @tests_failed, align 4
  %inc636 = add nsw i32 %707, 1
  store i32 %inc636, i32* @tests_failed, align 4
  br label %if.end637

if.end637:                                        ; preds = %if.else634, %if.then631
  %call638 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 580, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.245, i64 0, i64 0))
  %708 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %709 = load i8*, i8** %string_1, align 8
  %710 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 8
  %711 = ptrtoint %Tstruct.json_object_t_t* %708 to i32
  %712 = call i8* @c_fetch_pointer_from_offset(i32 %711)
  %713 = call i1 @c_isTaintedPointerToTaintedMem(i8* %712)
  br i1 %713, label %_Dynamic_check.succeeded640, label %_Dynamic_check.failed639

_Dynamic_check.succeeded640:                      ; preds = %if.end637
  %714 = bitcast i8* %712 to %Tstruct.json_object_t_t*
  %715 = ptrtoint i8* %709 to i32
  %716 = call i8* @c_fetch_pointer_from_offset(i32 %715)
  %717 = call i1 @c_isTaintedPointerToTaintedMem(i8* %716)
  br i1 %717, label %_Dynamic_check.succeeded642, label %_Dynamic_check.failed641

_Dynamic_check.succeeded642:                      ; preds = %_Dynamic_check.succeeded640
  %718 = ptrtoint %Tstruct.json_value_t_t* %710 to i32
  %719 = call i8* @c_fetch_pointer_from_offset(i32 %718)
  %720 = call i1 @c_isTaintedPointerToTaintedMem(i8* %719)
  br i1 %720, label %_Dynamic_check.succeeded644, label %_Dynamic_check.failed643

_Dynamic_check.succeeded644:                      ; preds = %_Dynamic_check.succeeded642
  %721 = bitcast i8* %719 to %Tstruct.json_value_t_t*
  %call645 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %714, i8* %716, %Tstruct.json_value_t_t* %721)
  %cmp646 = icmp eq i32 %call645, -1
  br i1 %cmp646, label %if.then647, label %if.else650

if.then647:                                       ; preds = %_Dynamic_check.succeeded644
  %722 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call648 = call i32 @puts(i8* %722)
  %723 = load i32, i32* @tests_passed, align 4
  %inc649 = add nsw i32 %723, 1
  store i32 %inc649, i32* @tests_passed, align 4
  br label %if.end653

_Dynamic_check.failed639:                         ; preds = %if.end637
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed641:                         ; preds = %_Dynamic_check.succeeded640
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed643:                         ; preds = %_Dynamic_check.succeeded642
  call void @llvm.trap() #6
  unreachable

if.else650:                                       ; preds = %_Dynamic_check.succeeded644
  %724 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call651 = call i32 @puts(i8* %724)
  %725 = load i32, i32* @tests_failed, align 4
  %inc652 = add nsw i32 %725, 1
  store i32 %inc652, i32* @tests_failed, align 4
  br label %if.end653

if.end653:                                        ; preds = %if.else650, %if.then647
  %call654 = call %Tstruct.json_value_t_t* @json_value_init_null()
  store %Tstruct.json_value_t_t* %call654, %Tstruct.json_value_t_t** %val_parent, align 8
  %call655 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.246, i64 0, i64 0))
  %726 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %727 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 8
  %728 = ptrtoint %Tstruct.json_array_t_t* %726 to i32
  %729 = call i8* @c_fetch_pointer_from_offset(i32 %728)
  %730 = call i1 @c_isTaintedPointerToTaintedMem(i8* %729)
  br i1 %730, label %_Dynamic_check.succeeded657, label %_Dynamic_check.failed656

_Dynamic_check.succeeded657:                      ; preds = %if.end653
  %731 = bitcast i8* %729 to %Tstruct.json_array_t_t*
  %732 = ptrtoint %Tstruct.json_value_t_t* %727 to i32
  %733 = call i8* @c_fetch_pointer_from_offset(i32 %732)
  %734 = call i1 @c_isTaintedPointerToTaintedMem(i8* %733)
  br i1 %734, label %_Dynamic_check.succeeded659, label %_Dynamic_check.failed658

_Dynamic_check.succeeded659:                      ; preds = %_Dynamic_check.succeeded657
  %735 = bitcast i8* %733 to %Tstruct.json_value_t_t*
  %call660 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %731, %Tstruct.json_value_t_t* %735)
  %cmp661 = icmp eq i32 %call660, 0
  br i1 %cmp661, label %if.then662, label %if.else665

if.then662:                                       ; preds = %_Dynamic_check.succeeded659
  %736 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call663 = call i32 @puts(i8* %736)
  %737 = load i32, i32* @tests_passed, align 4
  %inc664 = add nsw i32 %737, 1
  store i32 %inc664, i32* @tests_passed, align 4
  br label %if.end668

_Dynamic_check.failed656:                         ; preds = %if.end653
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed658:                         ; preds = %_Dynamic_check.succeeded657
  call void @llvm.trap() #6
  unreachable

if.else665:                                       ; preds = %_Dynamic_check.succeeded659
  %738 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call666 = call i32 @puts(i8* %738)
  %739 = load i32, i32* @tests_failed, align 4
  %inc667 = add nsw i32 %739, 1
  store i32 %inc667, i32* @tests_failed, align 4
  br label %if.end668

if.end668:                                        ; preds = %if.else665, %if.then662
  %call669 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 584, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.247, i64 0, i64 0))
  %740 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %741 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 8
  %742 = ptrtoint %Tstruct.json_array_t_t* %740 to i32
  %743 = call i8* @c_fetch_pointer_from_offset(i32 %742)
  %744 = call i1 @c_isTaintedPointerToTaintedMem(i8* %743)
  br i1 %744, label %_Dynamic_check.succeeded671, label %_Dynamic_check.failed670

_Dynamic_check.succeeded671:                      ; preds = %if.end668
  %745 = bitcast i8* %743 to %Tstruct.json_array_t_t*
  %746 = ptrtoint %Tstruct.json_value_t_t* %741 to i32
  %747 = call i8* @c_fetch_pointer_from_offset(i32 %746)
  %748 = call i1 @c_isTaintedPointerToTaintedMem(i8* %747)
  br i1 %748, label %_Dynamic_check.succeeded673, label %_Dynamic_check.failed672

_Dynamic_check.succeeded673:                      ; preds = %_Dynamic_check.succeeded671
  %749 = bitcast i8* %747 to %Tstruct.json_value_t_t*
  %call674 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %745, %Tstruct.json_value_t_t* %749)
  %cmp675 = icmp eq i32 %call674, -1
  br i1 %cmp675, label %if.then676, label %if.else679

if.then676:                                       ; preds = %_Dynamic_check.succeeded673
  %750 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call677 = call i32 @puts(i8* %750)
  %751 = load i32, i32* @tests_passed, align 4
  %inc678 = add nsw i32 %751, 1
  store i32 %inc678, i32* @tests_passed, align 4
  br label %if.end682

_Dynamic_check.failed670:                         ; preds = %if.end668
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed672:                         ; preds = %_Dynamic_check.succeeded671
  call void @llvm.trap() #6
  unreachable

if.else679:                                       ; preds = %_Dynamic_check.succeeded673
  %752 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call680 = call i32 @puts(i8* %752)
  %753 = load i32, i32* @tests_failed, align 4
  %inc681 = add nsw i32 %753, 1
  store i32 %inc681, i32* @tests_failed, align 4
  br label %if.end682

if.end682:                                        ; preds = %if.else679, %if.then676
  %call683 = call %Tstruct.json_value_t_t* @json_value_init_null()
  store %Tstruct.json_value_t_t* %call683, %Tstruct.json_value_t_t** %val_parent, align 8
  %call684 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.248, i64 0, i64 0))
  %754 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %755 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 8
  %756 = ptrtoint %Tstruct.json_array_t_t* %754 to i32
  %757 = call i8* @c_fetch_pointer_from_offset(i32 %756)
  %758 = call i1 @c_isTaintedPointerToTaintedMem(i8* %757)
  br i1 %758, label %_Dynamic_check.succeeded686, label %_Dynamic_check.failed685

_Dynamic_check.succeeded686:                      ; preds = %if.end682
  %759 = bitcast i8* %757 to %Tstruct.json_array_t_t*
  %760 = ptrtoint %Tstruct.json_value_t_t* %755 to i32
  %761 = call i8* @c_fetch_pointer_from_offset(i32 %760)
  %762 = call i1 @c_isTaintedPointerToTaintedMem(i8* %761)
  br i1 %762, label %_Dynamic_check.succeeded688, label %_Dynamic_check.failed687

_Dynamic_check.succeeded688:                      ; preds = %_Dynamic_check.succeeded686
  %763 = bitcast i8* %761 to %Tstruct.json_value_t_t*
  %call689 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %759, i64 0, %Tstruct.json_value_t_t* %763)
  %cmp690 = icmp eq i32 %call689, 0
  br i1 %cmp690, label %if.then691, label %if.else694

if.then691:                                       ; preds = %_Dynamic_check.succeeded688
  %764 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call692 = call i32 @puts(i8* %764)
  %765 = load i32, i32* @tests_passed, align 4
  %inc693 = add nsw i32 %765, 1
  store i32 %inc693, i32* @tests_passed, align 4
  br label %if.end697

_Dynamic_check.failed685:                         ; preds = %if.end682
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed687:                         ; preds = %_Dynamic_check.succeeded686
  call void @llvm.trap() #6
  unreachable

if.else694:                                       ; preds = %_Dynamic_check.succeeded688
  %766 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call695 = call i32 @puts(i8* %766)
  %767 = load i32, i32* @tests_failed, align 4
  %inc696 = add nsw i32 %767, 1
  store i32 %inc696, i32* @tests_failed, align 4
  br label %if.end697

if.end697:                                        ; preds = %if.else694, %if.then691
  %call698 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 588, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.249, i64 0, i64 0))
  %768 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 8
  %769 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 8
  %770 = ptrtoint %Tstruct.json_array_t_t* %768 to i32
  %771 = call i8* @c_fetch_pointer_from_offset(i32 %770)
  %772 = call i1 @c_isTaintedPointerToTaintedMem(i8* %771)
  br i1 %772, label %_Dynamic_check.succeeded700, label %_Dynamic_check.failed699

_Dynamic_check.succeeded700:                      ; preds = %if.end697
  %773 = bitcast i8* %771 to %Tstruct.json_array_t_t*
  %774 = ptrtoint %Tstruct.json_value_t_t* %769 to i32
  %775 = call i8* @c_fetch_pointer_from_offset(i32 %774)
  %776 = call i1 @c_isTaintedPointerToTaintedMem(i8* %775)
  br i1 %776, label %_Dynamic_check.succeeded702, label %_Dynamic_check.failed701

_Dynamic_check.succeeded702:                      ; preds = %_Dynamic_check.succeeded700
  %777 = bitcast i8* %775 to %Tstruct.json_value_t_t*
  %call703 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %773, i64 0, %Tstruct.json_value_t_t* %777)
  %cmp704 = icmp eq i32 %call703, -1
  br i1 %cmp704, label %if.then705, label %if.else708

if.then705:                                       ; preds = %_Dynamic_check.succeeded702
  %778 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call706 = call i32 @puts(i8* %778)
  %779 = load i32, i32* @tests_passed, align 4
  %inc707 = add nsw i32 %779, 1
  store i32 %inc707, i32* @tests_passed, align 4
  br label %if.end711

_Dynamic_check.failed699:                         ; preds = %if.end697
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed701:                         ; preds = %_Dynamic_check.succeeded700
  call void @llvm.trap() #6
  unreachable

if.else708:                                       ; preds = %_Dynamic_check.succeeded702
  %780 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call709 = call i32 @puts(i8* %780)
  %781 = load i32, i32* @tests_failed, align 4
  %inc710 = add nsw i32 %781, 1
  store i32 %inc710, i32* @tests_failed, align 4
  br label %if.end711

if.end711:                                        ; preds = %if.else708, %if.then705
  %782 = load i8*, i8** %string_1, align 8
  %783 = ptrtoint i8* %782 to i64
  %784 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %783)
  %785 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call712 = call i8* @t_strcpy(i8* %784, i8* %785)
  %call713 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 591, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.250, i64 0, i64 0))
  %786 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %787 = load i8*, i8** %string_1, align 8
  %788 = ptrtoint %Tstruct.json_object_t_t* %786 to i32
  %789 = call i8* @c_fetch_pointer_from_offset(i32 %788)
  %790 = call i1 @c_isTaintedPointerToTaintedMem(i8* %789)
  br i1 %790, label %_Dynamic_check.succeeded715, label %_Dynamic_check.failed714

_Dynamic_check.succeeded715:                      ; preds = %if.end711
  %791 = bitcast i8* %789 to %Tstruct.json_object_t_t*
  %792 = ptrtoint i8* %787 to i32
  %793 = call i8* @c_fetch_pointer_from_offset(i32 %792)
  %794 = call i1 @c_isTaintedPointerToTaintedMem(i8* %793)
  br i1 %794, label %_Dynamic_check.succeeded717, label %_Dynamic_check.failed716

_Dynamic_check.succeeded717:                      ; preds = %_Dynamic_check.succeeded715
  %call718 = call i32 @json_object_remove(%Tstruct.json_object_t_t* %791, i8* %793)
  %cmp719 = icmp eq i32 %call718, 0
  br i1 %cmp719, label %if.then720, label %if.else723

if.then720:                                       ; preds = %_Dynamic_check.succeeded717
  %795 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call721 = call i32 @puts(i8* %795)
  %796 = load i32, i32* @tests_passed, align 4
  %inc722 = add nsw i32 %796, 1
  store i32 %inc722, i32* @tests_passed, align 4
  br label %if.end726

_Dynamic_check.failed714:                         ; preds = %if.end711
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed716:                         ; preds = %_Dynamic_check.succeeded715
  call void @llvm.trap() #6
  unreachable

if.else723:                                       ; preds = %_Dynamic_check.succeeded717
  %797 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call724 = call i32 @puts(i8* %797)
  %798 = load i32, i32* @tests_failed, align 4
  %inc725 = add nsw i32 %798, 1
  store i32 %inc725, i32* @tests_failed, align 4
  br label %if.end726

if.end726:                                        ; preds = %if.else723, %if.then720
  %799 = load i8*, i8** %string_1, align 8
  %800 = ptrtoint i8* %799 to i64
  %801 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %800)
  %802 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([15 x i8]* @.str.251 to i64))
  %call727 = call i8* @t_strcpy(i8* %801, i8* %802)
  %803 = load i8*, i8** %string_2, align 8
  %804 = ptrtoint i8* %803 to i64
  %805 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %804)
  %806 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.252 to i64))
  %call728 = call i8* @t_strcpy(i8* %805, i8* %806)
  %call729 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 596, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %807 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %808 = load i8*, i8** %string_1, align 8
  %809 = load i8*, i8** %string_2, align 8
  %810 = ptrtoint %Tstruct.json_object_t_t* %807 to i32
  %811 = call i8* @c_fetch_pointer_from_offset(i32 %810)
  %812 = call i1 @c_isTaintedPointerToTaintedMem(i8* %811)
  br i1 %812, label %_Dynamic_check.succeeded731, label %_Dynamic_check.failed730

_Dynamic_check.succeeded731:                      ; preds = %if.end726
  %813 = bitcast i8* %811 to %Tstruct.json_object_t_t*
  %814 = ptrtoint i8* %808 to i32
  %815 = call i8* @c_fetch_pointer_from_offset(i32 %814)
  %816 = call i1 @c_isTaintedPointerToTaintedMem(i8* %815)
  br i1 %816, label %_Dynamic_check.succeeded733, label %_Dynamic_check.failed732

_Dynamic_check.succeeded733:                      ; preds = %_Dynamic_check.succeeded731
  %817 = ptrtoint i8* %809 to i32
  %818 = call i8* @c_fetch_pointer_from_offset(i32 %817)
  %819 = call i1 @c_isTaintedPointerToTaintedMem(i8* %818)
  br i1 %819, label %_Dynamic_check.succeeded735, label %_Dynamic_check.failed734

_Dynamic_check.succeeded735:                      ; preds = %_Dynamic_check.succeeded733
  %call736 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %813, i8* %815, i8* %818)
  %cmp737 = icmp eq i32 %call736, 0
  br i1 %cmp737, label %if.then738, label %if.else741

if.then738:                                       ; preds = %_Dynamic_check.succeeded735
  %820 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call739 = call i32 @puts(i8* %820)
  %821 = load i32, i32* @tests_passed, align 4
  %inc740 = add nsw i32 %821, 1
  store i32 %inc740, i32* @tests_passed, align 4
  br label %if.end744

_Dynamic_check.failed730:                         ; preds = %if.end726
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed732:                         ; preds = %_Dynamic_check.succeeded731
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed734:                         ; preds = %_Dynamic_check.succeeded733
  call void @llvm.trap() #6
  unreachable

if.else741:                                       ; preds = %_Dynamic_check.succeeded735
  %822 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call742 = call i32 @puts(i8* %822)
  %823 = load i32, i32* @tests_failed, align 4
  %inc743 = add nsw i32 %823, 1
  store i32 %inc743, i32* @tests_failed, align 4
  br label %if.end744

if.end744:                                        ; preds = %if.else741, %if.then738
  %824 = load i8*, i8** %string_1, align 8
  %825 = ptrtoint i8* %824 to i64
  %826 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %825)
  %827 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.253 to i64))
  %call745 = call i8* @t_strcpy(i8* %826, i8* %827)
  %828 = load i8*, i8** %string_2, align 8
  %829 = ptrtoint i8* %828 to i64
  %830 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %829)
  %831 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.254 to i64))
  %call746 = call i8* @t_strcpy(i8* %830, i8* %831)
  %call747 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 600, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %832 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %833 = load i8*, i8** %string_1, align 8
  %834 = load i8*, i8** %string_2, align 8
  %835 = ptrtoint %Tstruct.json_object_t_t* %832 to i32
  %836 = call i8* @c_fetch_pointer_from_offset(i32 %835)
  %837 = call i1 @c_isTaintedPointerToTaintedMem(i8* %836)
  br i1 %837, label %_Dynamic_check.succeeded749, label %_Dynamic_check.failed748

_Dynamic_check.succeeded749:                      ; preds = %if.end744
  %838 = bitcast i8* %836 to %Tstruct.json_object_t_t*
  %839 = ptrtoint i8* %833 to i32
  %840 = call i8* @c_fetch_pointer_from_offset(i32 %839)
  %841 = call i1 @c_isTaintedPointerToTaintedMem(i8* %840)
  br i1 %841, label %_Dynamic_check.succeeded751, label %_Dynamic_check.failed750

_Dynamic_check.succeeded751:                      ; preds = %_Dynamic_check.succeeded749
  %842 = ptrtoint i8* %834 to i32
  %843 = call i8* @c_fetch_pointer_from_offset(i32 %842)
  %844 = call i1 @c_isTaintedPointerToTaintedMem(i8* %843)
  br i1 %844, label %_Dynamic_check.succeeded753, label %_Dynamic_check.failed752

_Dynamic_check.succeeded753:                      ; preds = %_Dynamic_check.succeeded751
  %call754 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %838, i8* %840, i8* %843)
  %cmp755 = icmp eq i32 %call754, 0
  br i1 %cmp755, label %if.then756, label %if.else759

if.then756:                                       ; preds = %_Dynamic_check.succeeded753
  %845 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call757 = call i32 @puts(i8* %845)
  %846 = load i32, i32* @tests_passed, align 4
  %inc758 = add nsw i32 %846, 1
  store i32 %inc758, i32* @tests_passed, align 4
  br label %if.end762

_Dynamic_check.failed748:                         ; preds = %if.end744
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed750:                         ; preds = %_Dynamic_check.succeeded749
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed752:                         ; preds = %_Dynamic_check.succeeded751
  call void @llvm.trap() #6
  unreachable

if.else759:                                       ; preds = %_Dynamic_check.succeeded753
  %847 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call760 = call i32 @puts(i8* %847)
  %848 = load i32, i32* @tests_failed, align 4
  %inc761 = add nsw i32 %848, 1
  store i32 %inc761, i32* @tests_failed, align 4
  br label %if.end762

if.end762:                                        ; preds = %if.else759, %if.then756
  %849 = load i8*, i8** %string_1, align 8
  %850 = ptrtoint i8* %849 to i64
  %851 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %850)
  %852 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.255 to i64))
  %call763 = call i8* @t_strcpy(i8* %851, i8* %852)
  %853 = load i8*, i8** %string_2, align 8
  %854 = ptrtoint i8* %853 to i64
  %855 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %854)
  %856 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.256 to i64))
  %call764 = call i8* @t_strcpy(i8* %855, i8* %856)
  %call765 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 603, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %857 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %858 = load i8*, i8** %string_1, align 8
  %859 = load i8*, i8** %string_2, align 8
  %860 = ptrtoint %Tstruct.json_object_t_t* %857 to i32
  %861 = call i8* @c_fetch_pointer_from_offset(i32 %860)
  %862 = call i1 @c_isTaintedPointerToTaintedMem(i8* %861)
  br i1 %862, label %_Dynamic_check.succeeded767, label %_Dynamic_check.failed766

_Dynamic_check.succeeded767:                      ; preds = %if.end762
  %863 = bitcast i8* %861 to %Tstruct.json_object_t_t*
  %864 = ptrtoint i8* %858 to i32
  %865 = call i8* @c_fetch_pointer_from_offset(i32 %864)
  %866 = call i1 @c_isTaintedPointerToTaintedMem(i8* %865)
  br i1 %866, label %_Dynamic_check.succeeded769, label %_Dynamic_check.failed768

_Dynamic_check.succeeded769:                      ; preds = %_Dynamic_check.succeeded767
  %867 = ptrtoint i8* %859 to i32
  %868 = call i8* @c_fetch_pointer_from_offset(i32 %867)
  %869 = call i1 @c_isTaintedPointerToTaintedMem(i8* %868)
  br i1 %869, label %_Dynamic_check.succeeded771, label %_Dynamic_check.failed770

_Dynamic_check.succeeded771:                      ; preds = %_Dynamic_check.succeeded769
  %call772 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %863, i8* %865, i8* %868)
  %cmp773 = icmp eq i32 %call772, 0
  br i1 %cmp773, label %if.then774, label %if.else777

if.then774:                                       ; preds = %_Dynamic_check.succeeded771
  %870 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call775 = call i32 @puts(i8* %870)
  %871 = load i32, i32* @tests_passed, align 4
  %inc776 = add nsw i32 %871, 1
  store i32 %inc776, i32* @tests_passed, align 4
  br label %if.end780

_Dynamic_check.failed766:                         ; preds = %if.end762
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed768:                         ; preds = %_Dynamic_check.succeeded767
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed770:                         ; preds = %_Dynamic_check.succeeded769
  call void @llvm.trap() #6
  unreachable

if.else777:                                       ; preds = %_Dynamic_check.succeeded771
  %872 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call778 = call i32 @puts(i8* %872)
  %873 = load i32, i32* @tests_failed, align 4
  %inc779 = add nsw i32 %873, 1
  store i32 %inc779, i32* @tests_failed, align 4
  br label %if.end780

if.end780:                                        ; preds = %if.else777, %if.then774
  %874 = load i8*, i8** %string_1, align 8
  %875 = ptrtoint i8* %874 to i64
  %876 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %875)
  %877 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.257 to i64))
  %call781 = call i8* @t_strcpy(i8* %876, i8* %877)
  %878 = load i8*, i8** %string_2, align 8
  %879 = ptrtoint i8* %878 to i64
  %880 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %879)
  %881 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.258 to i64))
  %call782 = call i8* @t_strcpy(i8* %880, i8* %881)
  %call783 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %882 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %883 = load i8*, i8** %string_1, align 8
  %884 = load i8*, i8** %string_2, align 8
  %885 = ptrtoint %Tstruct.json_object_t_t* %882 to i32
  %886 = call i8* @c_fetch_pointer_from_offset(i32 %885)
  %887 = call i1 @c_isTaintedPointerToTaintedMem(i8* %886)
  br i1 %887, label %_Dynamic_check.succeeded785, label %_Dynamic_check.failed784

_Dynamic_check.succeeded785:                      ; preds = %if.end780
  %888 = bitcast i8* %886 to %Tstruct.json_object_t_t*
  %889 = ptrtoint i8* %883 to i32
  %890 = call i8* @c_fetch_pointer_from_offset(i32 %889)
  %891 = call i1 @c_isTaintedPointerToTaintedMem(i8* %890)
  br i1 %891, label %_Dynamic_check.succeeded787, label %_Dynamic_check.failed786

_Dynamic_check.succeeded787:                      ; preds = %_Dynamic_check.succeeded785
  %892 = ptrtoint i8* %884 to i32
  %893 = call i8* @c_fetch_pointer_from_offset(i32 %892)
  %894 = call i1 @c_isTaintedPointerToTaintedMem(i8* %893)
  br i1 %894, label %_Dynamic_check.succeeded789, label %_Dynamic_check.failed788

_Dynamic_check.succeeded789:                      ; preds = %_Dynamic_check.succeeded787
  %call790 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %888, i8* %890, i8* %893)
  %cmp791 = icmp eq i32 %call790, 0
  br i1 %cmp791, label %if.then792, label %if.else795

if.then792:                                       ; preds = %_Dynamic_check.succeeded789
  %895 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call793 = call i32 @puts(i8* %895)
  %896 = load i32, i32* @tests_passed, align 4
  %inc794 = add nsw i32 %896, 1
  store i32 %inc794, i32* @tests_passed, align 4
  br label %if.end798

_Dynamic_check.failed784:                         ; preds = %if.end780
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed786:                         ; preds = %_Dynamic_check.succeeded785
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed788:                         ; preds = %_Dynamic_check.succeeded787
  call void @llvm.trap() #6
  unreachable

if.else795:                                       ; preds = %_Dynamic_check.succeeded789
  %897 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call796 = call i32 @puts(i8* %897)
  %898 = load i32, i32* @tests_failed, align 4
  %inc797 = add nsw i32 %898, 1
  store i32 %inc797, i32* @tests_failed, align 4
  br label %if.end798

if.end798:                                        ; preds = %if.else795, %if.then792
  %899 = load i8*, i8** %string_1, align 8
  %900 = ptrtoint i8* %899 to i64
  %901 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %900)
  %902 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.259 to i64))
  %call799 = call i8* @t_strcpy(i8* %901, i8* %902)
  %903 = load i8*, i8** %string_2, align 8
  %904 = ptrtoint i8* %903 to i64
  %905 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %904)
  %906 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.260 to i64))
  %call800 = call i8* @t_strcpy(i8* %905, i8* %906)
  %call801 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 609, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %907 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %908 = load i8*, i8** %string_1, align 8
  %909 = load i8*, i8** %string_2, align 8
  %910 = ptrtoint %Tstruct.json_object_t_t* %907 to i32
  %911 = call i8* @c_fetch_pointer_from_offset(i32 %910)
  %912 = call i1 @c_isTaintedPointerToTaintedMem(i8* %911)
  br i1 %912, label %_Dynamic_check.succeeded803, label %_Dynamic_check.failed802

_Dynamic_check.succeeded803:                      ; preds = %if.end798
  %913 = bitcast i8* %911 to %Tstruct.json_object_t_t*
  %914 = ptrtoint i8* %908 to i32
  %915 = call i8* @c_fetch_pointer_from_offset(i32 %914)
  %916 = call i1 @c_isTaintedPointerToTaintedMem(i8* %915)
  br i1 %916, label %_Dynamic_check.succeeded805, label %_Dynamic_check.failed804

_Dynamic_check.succeeded805:                      ; preds = %_Dynamic_check.succeeded803
  %917 = ptrtoint i8* %909 to i32
  %918 = call i8* @c_fetch_pointer_from_offset(i32 %917)
  %919 = call i1 @c_isTaintedPointerToTaintedMem(i8* %918)
  br i1 %919, label %_Dynamic_check.succeeded807, label %_Dynamic_check.failed806

_Dynamic_check.succeeded807:                      ; preds = %_Dynamic_check.succeeded805
  %call808 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %913, i8* %915, i8* %918)
  %cmp809 = icmp eq i32 %call808, 0
  br i1 %cmp809, label %if.then810, label %if.else813

if.then810:                                       ; preds = %_Dynamic_check.succeeded807
  %920 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call811 = call i32 @puts(i8* %920)
  %921 = load i32, i32* @tests_passed, align 4
  %inc812 = add nsw i32 %921, 1
  store i32 %inc812, i32* @tests_passed, align 4
  br label %if.end816

_Dynamic_check.failed802:                         ; preds = %if.end798
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed804:                         ; preds = %_Dynamic_check.succeeded803
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed806:                         ; preds = %_Dynamic_check.succeeded805
  call void @llvm.trap() #6
  unreachable

if.else813:                                       ; preds = %_Dynamic_check.succeeded807
  %922 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call814 = call i32 @puts(i8* %922)
  %923 = load i32, i32* @tests_failed, align 4
  %inc815 = add nsw i32 %923, 1
  store i32 %inc815, i32* @tests_failed, align 4
  br label %if.end816

if.end816:                                        ; preds = %if.else813, %if.then810
  %924 = load i8*, i8** %string_1, align 8
  %925 = ptrtoint i8* %924 to i64
  %926 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %925)
  %927 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.261 to i64))
  %call817 = call i8* @t_strcpy(i8* %926, i8* %927)
  %928 = load i8*, i8** %string_2, align 8
  %929 = ptrtoint i8* %928 to i64
  %930 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %929)
  %931 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.262 to i64))
  %call818 = call i8* @t_strcpy(i8* %930, i8* %931)
  %call819 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 613, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %932 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %933 = load i8*, i8** %string_1, align 8
  %934 = load i8*, i8** %string_2, align 8
  %935 = ptrtoint %Tstruct.json_object_t_t* %932 to i32
  %936 = call i8* @c_fetch_pointer_from_offset(i32 %935)
  %937 = call i1 @c_isTaintedPointerToTaintedMem(i8* %936)
  br i1 %937, label %_Dynamic_check.succeeded821, label %_Dynamic_check.failed820

_Dynamic_check.succeeded821:                      ; preds = %if.end816
  %938 = bitcast i8* %936 to %Tstruct.json_object_t_t*
  %939 = ptrtoint i8* %933 to i32
  %940 = call i8* @c_fetch_pointer_from_offset(i32 %939)
  %941 = call i1 @c_isTaintedPointerToTaintedMem(i8* %940)
  br i1 %941, label %_Dynamic_check.succeeded823, label %_Dynamic_check.failed822

_Dynamic_check.succeeded823:                      ; preds = %_Dynamic_check.succeeded821
  %942 = ptrtoint i8* %934 to i32
  %943 = call i8* @c_fetch_pointer_from_offset(i32 %942)
  %944 = call i1 @c_isTaintedPointerToTaintedMem(i8* %943)
  br i1 %944, label %_Dynamic_check.succeeded825, label %_Dynamic_check.failed824

_Dynamic_check.succeeded825:                      ; preds = %_Dynamic_check.succeeded823
  %call826 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %938, i8* %940, i8* %943)
  %cmp827 = icmp eq i32 %call826, -1
  br i1 %cmp827, label %if.then828, label %if.else831

if.then828:                                       ; preds = %_Dynamic_check.succeeded825
  %945 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call829 = call i32 @puts(i8* %945)
  %946 = load i32, i32* @tests_passed, align 4
  %inc830 = add nsw i32 %946, 1
  store i32 %inc830, i32* @tests_passed, align 4
  br label %if.end834

_Dynamic_check.failed820:                         ; preds = %if.end816
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed822:                         ; preds = %_Dynamic_check.succeeded821
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed824:                         ; preds = %_Dynamic_check.succeeded823
  call void @llvm.trap() #6
  unreachable

if.else831:                                       ; preds = %_Dynamic_check.succeeded825
  %947 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call832 = call i32 @puts(i8* %947)
  %948 = load i32, i32* @tests_failed, align 4
  %inc833 = add nsw i32 %948, 1
  store i32 %inc833, i32* @tests_failed, align 4
  br label %if.end834

if.end834:                                        ; preds = %if.else831, %if.then828
  %949 = load i8*, i8** %string_1, align 8
  %950 = ptrtoint i8* %949 to i64
  %951 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %950)
  %952 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([23 x i8]* @.str.264 to i64))
  %call835 = call i8* @t_strcpy(i8* %951, i8* %952)
  %953 = load i8*, i8** %string_2, align 8
  %954 = ptrtoint i8* %953 to i64
  %955 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %954)
  %956 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.265 to i64))
  %call836 = call i8* @t_strcpy(i8* %955, i8* %956)
  %call837 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 616, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %957 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %958 = load i8*, i8** %string_1, align 8
  %959 = load i8*, i8** %string_2, align 8
  %960 = ptrtoint %Tstruct.json_object_t_t* %957 to i32
  %961 = call i8* @c_fetch_pointer_from_offset(i32 %960)
  %962 = call i1 @c_isTaintedPointerToTaintedMem(i8* %961)
  br i1 %962, label %_Dynamic_check.succeeded839, label %_Dynamic_check.failed838

_Dynamic_check.succeeded839:                      ; preds = %if.end834
  %963 = bitcast i8* %961 to %Tstruct.json_object_t_t*
  %964 = ptrtoint i8* %958 to i32
  %965 = call i8* @c_fetch_pointer_from_offset(i32 %964)
  %966 = call i1 @c_isTaintedPointerToTaintedMem(i8* %965)
  br i1 %966, label %_Dynamic_check.succeeded841, label %_Dynamic_check.failed840

_Dynamic_check.succeeded841:                      ; preds = %_Dynamic_check.succeeded839
  %967 = ptrtoint i8* %959 to i32
  %968 = call i8* @c_fetch_pointer_from_offset(i32 %967)
  %969 = call i1 @c_isTaintedPointerToTaintedMem(i8* %968)
  br i1 %969, label %_Dynamic_check.succeeded843, label %_Dynamic_check.failed842

_Dynamic_check.succeeded843:                      ; preds = %_Dynamic_check.succeeded841
  %call844 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %963, i8* %965, i8* %968)
  %cmp845 = icmp eq i32 %call844, -1
  br i1 %cmp845, label %if.then846, label %if.else849

if.then846:                                       ; preds = %_Dynamic_check.succeeded843
  %970 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call847 = call i32 @puts(i8* %970)
  %971 = load i32, i32* @tests_passed, align 4
  %inc848 = add nsw i32 %971, 1
  store i32 %inc848, i32* @tests_passed, align 4
  br label %if.end852

_Dynamic_check.failed838:                         ; preds = %if.end834
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed840:                         ; preds = %_Dynamic_check.succeeded839
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed842:                         ; preds = %_Dynamic_check.succeeded841
  call void @llvm.trap() #6
  unreachable

if.else849:                                       ; preds = %_Dynamic_check.succeeded843
  %972 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call850 = call i32 @puts(i8* %972)
  %973 = load i32, i32* @tests_failed, align 4
  %inc851 = add nsw i32 %973, 1
  store i32 %inc851, i32* @tests_failed, align 4
  br label %if.end852

if.end852:                                        ; preds = %if.else849, %if.then846
  %974 = load i8*, i8** %string_1, align 8
  %975 = ptrtoint i8* %974 to i64
  %976 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %975)
  %977 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([22 x i8]* @.str.266 to i64))
  %call853 = call i8* @t_strcpy(i8* %976, i8* %977)
  %978 = load i8*, i8** %string_2, align 8
  %979 = ptrtoint i8* %978 to i64
  %980 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %979)
  %981 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.267 to i64))
  %call854 = call i8* @t_strcpy(i8* %980, i8* %981)
  %call855 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 621, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %982 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %983 = load i8*, i8** %string_1, align 8
  %984 = load i8*, i8** %string_2, align 8
  %985 = ptrtoint %Tstruct.json_object_t_t* %982 to i32
  %986 = call i8* @c_fetch_pointer_from_offset(i32 %985)
  %987 = call i1 @c_isTaintedPointerToTaintedMem(i8* %986)
  br i1 %987, label %_Dynamic_check.succeeded857, label %_Dynamic_check.failed856

_Dynamic_check.succeeded857:                      ; preds = %if.end852
  %988 = bitcast i8* %986 to %Tstruct.json_object_t_t*
  %989 = ptrtoint i8* %983 to i32
  %990 = call i8* @c_fetch_pointer_from_offset(i32 %989)
  %991 = call i1 @c_isTaintedPointerToTaintedMem(i8* %990)
  br i1 %991, label %_Dynamic_check.succeeded859, label %_Dynamic_check.failed858

_Dynamic_check.succeeded859:                      ; preds = %_Dynamic_check.succeeded857
  %992 = ptrtoint i8* %984 to i32
  %993 = call i8* @c_fetch_pointer_from_offset(i32 %992)
  %994 = call i1 @c_isTaintedPointerToTaintedMem(i8* %993)
  br i1 %994, label %_Dynamic_check.succeeded861, label %_Dynamic_check.failed860

_Dynamic_check.succeeded861:                      ; preds = %_Dynamic_check.succeeded859
  %call862 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %988, i8* %990, i8* %993)
  %cmp863 = icmp eq i32 %call862, -1
  br i1 %cmp863, label %if.then864, label %if.else867

if.then864:                                       ; preds = %_Dynamic_check.succeeded861
  %995 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call865 = call i32 @puts(i8* %995)
  %996 = load i32, i32* @tests_passed, align 4
  %inc866 = add nsw i32 %996, 1
  store i32 %inc866, i32* @tests_passed, align 4
  br label %if.end870

_Dynamic_check.failed856:                         ; preds = %if.end852
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed858:                         ; preds = %_Dynamic_check.succeeded857
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed860:                         ; preds = %_Dynamic_check.succeeded859
  call void @llvm.trap() #6
  unreachable

if.else867:                                       ; preds = %_Dynamic_check.succeeded861
  %997 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call868 = call i32 @puts(i8* %997)
  %998 = load i32, i32* @tests_failed, align 4
  %inc869 = add nsw i32 %998, 1
  store i32 %inc869, i32* @tests_failed, align 4
  br label %if.end870

if.end870:                                        ; preds = %if.else867, %if.then864
  %999 = load i8*, i8** %string_1, align 8
  %1000 = ptrtoint i8* %999 to i64
  %1001 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1000)
  %1002 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([22 x i8]* @.str.268 to i64))
  %call871 = call i8* @t_strcpy(i8* %1001, i8* %1002)
  %1003 = load i8*, i8** %string_2, align 8
  %1004 = ptrtoint i8* %1003 to i64
  %1005 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1004)
  %1006 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.269 to i64))
  %call872 = call i8* @t_strcpy(i8* %1005, i8* %1006)
  %call873 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 624, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1007 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1008 = load i8*, i8** %string_1, align 8
  %1009 = load i8*, i8** %string_2, align 8
  %1010 = ptrtoint %Tstruct.json_object_t_t* %1007 to i32
  %1011 = call i8* @c_fetch_pointer_from_offset(i32 %1010)
  %1012 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1011)
  br i1 %1012, label %_Dynamic_check.succeeded875, label %_Dynamic_check.failed874

_Dynamic_check.succeeded875:                      ; preds = %if.end870
  %1013 = bitcast i8* %1011 to %Tstruct.json_object_t_t*
  %1014 = ptrtoint i8* %1008 to i32
  %1015 = call i8* @c_fetch_pointer_from_offset(i32 %1014)
  %1016 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1015)
  br i1 %1016, label %_Dynamic_check.succeeded877, label %_Dynamic_check.failed876

_Dynamic_check.succeeded877:                      ; preds = %_Dynamic_check.succeeded875
  %1017 = ptrtoint i8* %1009 to i32
  %1018 = call i8* @c_fetch_pointer_from_offset(i32 %1017)
  %1019 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1018)
  br i1 %1019, label %_Dynamic_check.succeeded879, label %_Dynamic_check.failed878

_Dynamic_check.succeeded879:                      ; preds = %_Dynamic_check.succeeded877
  %call880 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1013, i8* %1015, i8* %1018)
  %cmp881 = icmp eq i32 %call880, -1
  br i1 %cmp881, label %if.then882, label %if.else885

if.then882:                                       ; preds = %_Dynamic_check.succeeded879
  %1020 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call883 = call i32 @puts(i8* %1020)
  %1021 = load i32, i32* @tests_passed, align 4
  %inc884 = add nsw i32 %1021, 1
  store i32 %inc884, i32* @tests_passed, align 4
  br label %if.end888

_Dynamic_check.failed874:                         ; preds = %if.end870
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed876:                         ; preds = %_Dynamic_check.succeeded875
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed878:                         ; preds = %_Dynamic_check.succeeded877
  call void @llvm.trap() #6
  unreachable

if.else885:                                       ; preds = %_Dynamic_check.succeeded879
  %1022 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call886 = call i32 @puts(i8* %1022)
  %1023 = load i32, i32* @tests_failed, align 4
  %inc887 = add nsw i32 %1023, 1
  store i32 %inc887, i32* @tests_failed, align 4
  br label %if.end888

if.end888:                                        ; preds = %if.else885, %if.then882
  %1024 = load i8*, i8** %string_1, align 8
  %1025 = ptrtoint i8* %1024 to i64
  %1026 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1025)
  %1027 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([22 x i8]* @.str.270 to i64))
  %call889 = call i8* @t_strcpy(i8* %1026, i8* %1027)
  %1028 = load i8*, i8** %string_2, align 8
  %1029 = ptrtoint i8* %1028 to i64
  %1030 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1029)
  %1031 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.271 to i64))
  %call890 = call i8* @t_strcpy(i8* %1030, i8* %1031)
  %call891 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 627, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1032 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1033 = load i8*, i8** %string_1, align 8
  %1034 = load i8*, i8** %string_2, align 8
  %1035 = ptrtoint %Tstruct.json_object_t_t* %1032 to i32
  %1036 = call i8* @c_fetch_pointer_from_offset(i32 %1035)
  %1037 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1036)
  br i1 %1037, label %_Dynamic_check.succeeded893, label %_Dynamic_check.failed892

_Dynamic_check.succeeded893:                      ; preds = %if.end888
  %1038 = bitcast i8* %1036 to %Tstruct.json_object_t_t*
  %1039 = ptrtoint i8* %1033 to i32
  %1040 = call i8* @c_fetch_pointer_from_offset(i32 %1039)
  %1041 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1040)
  br i1 %1041, label %_Dynamic_check.succeeded895, label %_Dynamic_check.failed894

_Dynamic_check.succeeded895:                      ; preds = %_Dynamic_check.succeeded893
  %1042 = ptrtoint i8* %1034 to i32
  %1043 = call i8* @c_fetch_pointer_from_offset(i32 %1042)
  %1044 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1043)
  br i1 %1044, label %_Dynamic_check.succeeded897, label %_Dynamic_check.failed896

_Dynamic_check.succeeded897:                      ; preds = %_Dynamic_check.succeeded895
  %call898 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1038, i8* %1040, i8* %1043)
  %cmp899 = icmp eq i32 %call898, -1
  br i1 %cmp899, label %if.then900, label %if.else903

if.then900:                                       ; preds = %_Dynamic_check.succeeded897
  %1045 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call901 = call i32 @puts(i8* %1045)
  %1046 = load i32, i32* @tests_passed, align 4
  %inc902 = add nsw i32 %1046, 1
  store i32 %inc902, i32* @tests_passed, align 4
  br label %if.end906

_Dynamic_check.failed892:                         ; preds = %if.end888
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed894:                         ; preds = %_Dynamic_check.succeeded893
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed896:                         ; preds = %_Dynamic_check.succeeded895
  call void @llvm.trap() #6
  unreachable

if.else903:                                       ; preds = %_Dynamic_check.succeeded897
  %1047 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call904 = call i32 @puts(i8* %1047)
  %1048 = load i32, i32* @tests_failed, align 4
  %inc905 = add nsw i32 %1048, 1
  store i32 %inc905, i32* @tests_failed, align 4
  br label %if.end906

if.end906:                                        ; preds = %if.else903, %if.then900
  %1049 = load i8*, i8** %string_1, align 8
  %1050 = ptrtoint i8* %1049 to i64
  %1051 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1050)
  %1052 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.272 to i64))
  %call907 = call i8* @t_strcpy(i8* %1051, i8* %1052)
  %1053 = load i8*, i8** %string_2, align 8
  %1054 = ptrtoint i8* %1053 to i64
  %1055 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1054)
  %1056 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.273 to i64))
  %call908 = call i8* @t_strcpy(i8* %1055, i8* %1056)
  %call909 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 631, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1057 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1058 = load i8*, i8** %string_1, align 8
  %1059 = load i8*, i8** %string_2, align 8
  %1060 = ptrtoint %Tstruct.json_object_t_t* %1057 to i32
  %1061 = call i8* @c_fetch_pointer_from_offset(i32 %1060)
  %1062 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1061)
  br i1 %1062, label %_Dynamic_check.succeeded911, label %_Dynamic_check.failed910

_Dynamic_check.succeeded911:                      ; preds = %if.end906
  %1063 = bitcast i8* %1061 to %Tstruct.json_object_t_t*
  %1064 = ptrtoint i8* %1058 to i32
  %1065 = call i8* @c_fetch_pointer_from_offset(i32 %1064)
  %1066 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1065)
  br i1 %1066, label %_Dynamic_check.succeeded913, label %_Dynamic_check.failed912

_Dynamic_check.succeeded913:                      ; preds = %_Dynamic_check.succeeded911
  %1067 = ptrtoint i8* %1059 to i32
  %1068 = call i8* @c_fetch_pointer_from_offset(i32 %1067)
  %1069 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1068)
  br i1 %1069, label %_Dynamic_check.succeeded915, label %_Dynamic_check.failed914

_Dynamic_check.succeeded915:                      ; preds = %_Dynamic_check.succeeded913
  %call916 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1063, i8* %1065, i8* %1068)
  %cmp917 = icmp eq i32 %call916, -1
  br i1 %cmp917, label %if.then918, label %if.else921

if.then918:                                       ; preds = %_Dynamic_check.succeeded915
  %1070 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call919 = call i32 @puts(i8* %1070)
  %1071 = load i32, i32* @tests_passed, align 4
  %inc920 = add nsw i32 %1071, 1
  store i32 %inc920, i32* @tests_passed, align 4
  br label %if.end924

_Dynamic_check.failed910:                         ; preds = %if.end906
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed912:                         ; preds = %_Dynamic_check.succeeded911
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed914:                         ; preds = %_Dynamic_check.succeeded913
  call void @llvm.trap() #6
  unreachable

if.else921:                                       ; preds = %_Dynamic_check.succeeded915
  %1072 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call922 = call i32 @puts(i8* %1072)
  %1073 = load i32, i32* @tests_failed, align 4
  %inc923 = add nsw i32 %1073, 1
  store i32 %inc923, i32* @tests_failed, align 4
  br label %if.end924

if.end924:                                        ; preds = %if.else921, %if.then918
  %1074 = load i8*, i8** %string_1, align 8
  %1075 = ptrtoint i8* %1074 to i64
  %1076 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1075)
  %1077 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.274 to i64))
  %call925 = call i8* @t_strcpy(i8* %1076, i8* %1077)
  %1078 = load i8*, i8** %string_2, align 8
  %1079 = ptrtoint i8* %1078 to i64
  %1080 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1079)
  %1081 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.275 to i64))
  %call926 = call i8* @t_strcpy(i8* %1080, i8* %1081)
  %call927 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 634, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1082 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1083 = load i8*, i8** %string_1, align 8
  %1084 = load i8*, i8** %string_2, align 8
  %1085 = ptrtoint %Tstruct.json_object_t_t* %1082 to i32
  %1086 = call i8* @c_fetch_pointer_from_offset(i32 %1085)
  %1087 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1086)
  br i1 %1087, label %_Dynamic_check.succeeded929, label %_Dynamic_check.failed928

_Dynamic_check.succeeded929:                      ; preds = %if.end924
  %1088 = bitcast i8* %1086 to %Tstruct.json_object_t_t*
  %1089 = ptrtoint i8* %1083 to i32
  %1090 = call i8* @c_fetch_pointer_from_offset(i32 %1089)
  %1091 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1090)
  br i1 %1091, label %_Dynamic_check.succeeded931, label %_Dynamic_check.failed930

_Dynamic_check.succeeded931:                      ; preds = %_Dynamic_check.succeeded929
  %1092 = ptrtoint i8* %1084 to i32
  %1093 = call i8* @c_fetch_pointer_from_offset(i32 %1092)
  %1094 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1093)
  br i1 %1094, label %_Dynamic_check.succeeded933, label %_Dynamic_check.failed932

_Dynamic_check.succeeded933:                      ; preds = %_Dynamic_check.succeeded931
  %call934 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1088, i8* %1090, i8* %1093)
  %cmp935 = icmp eq i32 %call934, -1
  br i1 %cmp935, label %if.then936, label %if.else939

if.then936:                                       ; preds = %_Dynamic_check.succeeded933
  %1095 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call937 = call i32 @puts(i8* %1095)
  %1096 = load i32, i32* @tests_passed, align 4
  %inc938 = add nsw i32 %1096, 1
  store i32 %inc938, i32* @tests_passed, align 4
  br label %if.end942

_Dynamic_check.failed928:                         ; preds = %if.end924
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed930:                         ; preds = %_Dynamic_check.succeeded929
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed932:                         ; preds = %_Dynamic_check.succeeded931
  call void @llvm.trap() #6
  unreachable

if.else939:                                       ; preds = %_Dynamic_check.succeeded933
  %1097 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call940 = call i32 @puts(i8* %1097)
  %1098 = load i32, i32* @tests_failed, align 4
  %inc941 = add nsw i32 %1098, 1
  store i32 %inc941, i32* @tests_failed, align 4
  br label %if.end942

if.end942:                                        ; preds = %if.else939, %if.then936
  %1099 = load i8*, i8** %string_1, align 8
  %1100 = ptrtoint i8* %1099 to i64
  %1101 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1100)
  %1102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.276 to i64))
  %call943 = call i8* @t_strcpy(i8* %1101, i8* %1102)
  %1103 = load i8*, i8** %string_2, align 8
  %1104 = ptrtoint i8* %1103 to i64
  %1105 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1104)
  %1106 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.277 to i64))
  %call944 = call i8* @t_strcpy(i8* %1105, i8* %1106)
  %call945 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 637, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1107 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1108 = load i8*, i8** %string_1, align 8
  %1109 = load i8*, i8** %string_2, align 8
  %1110 = ptrtoint %Tstruct.json_object_t_t* %1107 to i32
  %1111 = call i8* @c_fetch_pointer_from_offset(i32 %1110)
  %1112 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1111)
  br i1 %1112, label %_Dynamic_check.succeeded947, label %_Dynamic_check.failed946

_Dynamic_check.succeeded947:                      ; preds = %if.end942
  %1113 = bitcast i8* %1111 to %Tstruct.json_object_t_t*
  %1114 = ptrtoint i8* %1108 to i32
  %1115 = call i8* @c_fetch_pointer_from_offset(i32 %1114)
  %1116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1115)
  br i1 %1116, label %_Dynamic_check.succeeded949, label %_Dynamic_check.failed948

_Dynamic_check.succeeded949:                      ; preds = %_Dynamic_check.succeeded947
  %1117 = ptrtoint i8* %1109 to i32
  %1118 = call i8* @c_fetch_pointer_from_offset(i32 %1117)
  %1119 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1118)
  br i1 %1119, label %_Dynamic_check.succeeded951, label %_Dynamic_check.failed950

_Dynamic_check.succeeded951:                      ; preds = %_Dynamic_check.succeeded949
  %call952 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1113, i8* %1115, i8* %1118)
  %cmp953 = icmp eq i32 %call952, -1
  br i1 %cmp953, label %if.then954, label %if.else957

if.then954:                                       ; preds = %_Dynamic_check.succeeded951
  %1120 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call955 = call i32 @puts(i8* %1120)
  %1121 = load i32, i32* @tests_passed, align 4
  %inc956 = add nsw i32 %1121, 1
  store i32 %inc956, i32* @tests_passed, align 4
  br label %if.end960

_Dynamic_check.failed946:                         ; preds = %if.end942
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed948:                         ; preds = %_Dynamic_check.succeeded947
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed950:                         ; preds = %_Dynamic_check.succeeded949
  call void @llvm.trap() #6
  unreachable

if.else957:                                       ; preds = %_Dynamic_check.succeeded951
  %1122 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call958 = call i32 @puts(i8* %1122)
  %1123 = load i32, i32* @tests_failed, align 4
  %inc959 = add nsw i32 %1123, 1
  store i32 %inc959, i32* @tests_failed, align 4
  br label %if.end960

if.end960:                                        ; preds = %if.else957, %if.then954
  %1124 = load i8*, i8** %string_1, align 8
  %1125 = ptrtoint i8* %1124 to i64
  %1126 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1125)
  %1127 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.278 to i64))
  %call961 = call i8* @t_strcpy(i8* %1126, i8* %1127)
  %1128 = load i8*, i8** %string_2, align 8
  %1129 = ptrtoint i8* %1128 to i64
  %1130 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1129)
  %1131 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.279 to i64))
  %call962 = call i8* @t_strcpy(i8* %1130, i8* %1131)
  %call963 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 640, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1132 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1133 = load i8*, i8** %string_1, align 8
  %1134 = load i8*, i8** %string_2, align 8
  %1135 = ptrtoint %Tstruct.json_object_t_t* %1132 to i32
  %1136 = call i8* @c_fetch_pointer_from_offset(i32 %1135)
  %1137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1136)
  br i1 %1137, label %_Dynamic_check.succeeded965, label %_Dynamic_check.failed964

_Dynamic_check.succeeded965:                      ; preds = %if.end960
  %1138 = bitcast i8* %1136 to %Tstruct.json_object_t_t*
  %1139 = ptrtoint i8* %1133 to i32
  %1140 = call i8* @c_fetch_pointer_from_offset(i32 %1139)
  %1141 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1140)
  br i1 %1141, label %_Dynamic_check.succeeded967, label %_Dynamic_check.failed966

_Dynamic_check.succeeded967:                      ; preds = %_Dynamic_check.succeeded965
  %1142 = ptrtoint i8* %1134 to i32
  %1143 = call i8* @c_fetch_pointer_from_offset(i32 %1142)
  %1144 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1143)
  br i1 %1144, label %_Dynamic_check.succeeded969, label %_Dynamic_check.failed968

_Dynamic_check.succeeded969:                      ; preds = %_Dynamic_check.succeeded967
  %call970 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1138, i8* %1140, i8* %1143)
  %cmp971 = icmp eq i32 %call970, -1
  br i1 %cmp971, label %if.then972, label %if.else975

if.then972:                                       ; preds = %_Dynamic_check.succeeded969
  %1145 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call973 = call i32 @puts(i8* %1145)
  %1146 = load i32, i32* @tests_passed, align 4
  %inc974 = add nsw i32 %1146, 1
  store i32 %inc974, i32* @tests_passed, align 4
  br label %if.end978

_Dynamic_check.failed964:                         ; preds = %if.end960
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed966:                         ; preds = %_Dynamic_check.succeeded965
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed968:                         ; preds = %_Dynamic_check.succeeded967
  call void @llvm.trap() #6
  unreachable

if.else975:                                       ; preds = %_Dynamic_check.succeeded969
  %1147 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call976 = call i32 @puts(i8* %1147)
  %1148 = load i32, i32* @tests_failed, align 4
  %inc977 = add nsw i32 %1148, 1
  store i32 %inc977, i32* @tests_failed, align 4
  br label %if.end978

if.end978:                                        ; preds = %if.else975, %if.then972
  %1149 = load i8*, i8** %string_1, align 8
  %1150 = ptrtoint i8* %1149 to i64
  %1151 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1150)
  %1152 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.280 to i64))
  %call979 = call i8* @t_strcpy(i8* %1151, i8* %1152)
  %1153 = load i8*, i8** %string_2, align 8
  %1154 = ptrtoint i8* %1153 to i64
  %1155 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1154)
  %1156 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.281 to i64))
  %call980 = call i8* @t_strcpy(i8* %1155, i8* %1156)
  %call981 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 643, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1157 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1158 = load i8*, i8** %string_1, align 8
  %1159 = load i8*, i8** %string_2, align 8
  %1160 = ptrtoint %Tstruct.json_object_t_t* %1157 to i32
  %1161 = call i8* @c_fetch_pointer_from_offset(i32 %1160)
  %1162 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1161)
  br i1 %1162, label %_Dynamic_check.succeeded983, label %_Dynamic_check.failed982

_Dynamic_check.succeeded983:                      ; preds = %if.end978
  %1163 = bitcast i8* %1161 to %Tstruct.json_object_t_t*
  %1164 = ptrtoint i8* %1158 to i32
  %1165 = call i8* @c_fetch_pointer_from_offset(i32 %1164)
  %1166 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1165)
  br i1 %1166, label %_Dynamic_check.succeeded985, label %_Dynamic_check.failed984

_Dynamic_check.succeeded985:                      ; preds = %_Dynamic_check.succeeded983
  %1167 = ptrtoint i8* %1159 to i32
  %1168 = call i8* @c_fetch_pointer_from_offset(i32 %1167)
  %1169 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1168)
  br i1 %1169, label %_Dynamic_check.succeeded987, label %_Dynamic_check.failed986

_Dynamic_check.succeeded987:                      ; preds = %_Dynamic_check.succeeded985
  %call988 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1163, i8* %1165, i8* %1168)
  %cmp989 = icmp eq i32 %call988, -1
  br i1 %cmp989, label %if.then990, label %if.else993

if.then990:                                       ; preds = %_Dynamic_check.succeeded987
  %1170 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call991 = call i32 @puts(i8* %1170)
  %1171 = load i32, i32* @tests_passed, align 4
  %inc992 = add nsw i32 %1171, 1
  store i32 %inc992, i32* @tests_passed, align 4
  br label %if.end996

_Dynamic_check.failed982:                         ; preds = %if.end978
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed984:                         ; preds = %_Dynamic_check.succeeded983
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed986:                         ; preds = %_Dynamic_check.succeeded985
  call void @llvm.trap() #6
  unreachable

if.else993:                                       ; preds = %_Dynamic_check.succeeded987
  %1172 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call994 = call i32 @puts(i8* %1172)
  %1173 = load i32, i32* @tests_failed, align 4
  %inc995 = add nsw i32 %1173, 1
  store i32 %inc995, i32* @tests_failed, align 4
  br label %if.end996

if.end996:                                        ; preds = %if.else993, %if.then990
  %1174 = load i8*, i8** %string_1, align 8
  %1175 = ptrtoint i8* %1174 to i64
  %1176 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1175)
  %1177 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.282 to i64))
  %call997 = call i8* @t_strcpy(i8* %1176, i8* %1177)
  %1178 = load i8*, i8** %string_2, align 8
  %1179 = ptrtoint i8* %1178 to i64
  %1180 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1179)
  %1181 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.283 to i64))
  %call998 = call i8* @t_strcpy(i8* %1180, i8* %1181)
  %call999 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 646, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1182 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1183 = load i8*, i8** %string_1, align 8
  %1184 = load i8*, i8** %string_2, align 8
  %1185 = ptrtoint %Tstruct.json_object_t_t* %1182 to i32
  %1186 = call i8* @c_fetch_pointer_from_offset(i32 %1185)
  %1187 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1186)
  br i1 %1187, label %_Dynamic_check.succeeded1001, label %_Dynamic_check.failed1000

_Dynamic_check.succeeded1001:                     ; preds = %if.end996
  %1188 = bitcast i8* %1186 to %Tstruct.json_object_t_t*
  %1189 = ptrtoint i8* %1183 to i32
  %1190 = call i8* @c_fetch_pointer_from_offset(i32 %1189)
  %1191 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1190)
  br i1 %1191, label %_Dynamic_check.succeeded1003, label %_Dynamic_check.failed1002

_Dynamic_check.succeeded1003:                     ; preds = %_Dynamic_check.succeeded1001
  %1192 = ptrtoint i8* %1184 to i32
  %1193 = call i8* @c_fetch_pointer_from_offset(i32 %1192)
  %1194 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1193)
  br i1 %1194, label %_Dynamic_check.succeeded1005, label %_Dynamic_check.failed1004

_Dynamic_check.succeeded1005:                     ; preds = %_Dynamic_check.succeeded1003
  %call1006 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1188, i8* %1190, i8* %1193)
  %cmp1007 = icmp eq i32 %call1006, -1
  br i1 %cmp1007, label %if.then1008, label %if.else1011

if.then1008:                                      ; preds = %_Dynamic_check.succeeded1005
  %1195 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1009 = call i32 @puts(i8* %1195)
  %1196 = load i32, i32* @tests_passed, align 4
  %inc1010 = add nsw i32 %1196, 1
  store i32 %inc1010, i32* @tests_passed, align 4
  br label %if.end1014

_Dynamic_check.failed1000:                        ; preds = %if.end996
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1002:                        ; preds = %_Dynamic_check.succeeded1001
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1004:                        ; preds = %_Dynamic_check.succeeded1003
  call void @llvm.trap() #6
  unreachable

if.else1011:                                      ; preds = %_Dynamic_check.succeeded1005
  %1197 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1012 = call i32 @puts(i8* %1197)
  %1198 = load i32, i32* @tests_failed, align 4
  %inc1013 = add nsw i32 %1198, 1
  store i32 %inc1013, i32* @tests_failed, align 4
  br label %if.end1014

if.end1014:                                       ; preds = %if.else1011, %if.then1008
  %1199 = load i8*, i8** %string_1, align 8
  %1200 = ptrtoint i8* %1199 to i64
  %1201 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1200)
  %1202 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.284 to i64))
  %call1015 = call i8* @t_strcpy(i8* %1201, i8* %1202)
  %1203 = load i8*, i8** %string_2, align 8
  %1204 = ptrtoint i8* %1203 to i64
  %1205 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1204)
  %1206 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.283 to i64))
  %call1016 = call i8* @t_strcpy(i8* %1205, i8* %1206)
  %call1017 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 649, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1207 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1208 = load i8*, i8** %string_1, align 8
  %1209 = load i8*, i8** %string_2, align 8
  %1210 = ptrtoint %Tstruct.json_object_t_t* %1207 to i32
  %1211 = call i8* @c_fetch_pointer_from_offset(i32 %1210)
  %1212 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1211)
  br i1 %1212, label %_Dynamic_check.succeeded1019, label %_Dynamic_check.failed1018

_Dynamic_check.succeeded1019:                     ; preds = %if.end1014
  %1213 = bitcast i8* %1211 to %Tstruct.json_object_t_t*
  %1214 = ptrtoint i8* %1208 to i32
  %1215 = call i8* @c_fetch_pointer_from_offset(i32 %1214)
  %1216 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1215)
  br i1 %1216, label %_Dynamic_check.succeeded1021, label %_Dynamic_check.failed1020

_Dynamic_check.succeeded1021:                     ; preds = %_Dynamic_check.succeeded1019
  %1217 = ptrtoint i8* %1209 to i32
  %1218 = call i8* @c_fetch_pointer_from_offset(i32 %1217)
  %1219 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1218)
  br i1 %1219, label %_Dynamic_check.succeeded1023, label %_Dynamic_check.failed1022

_Dynamic_check.succeeded1023:                     ; preds = %_Dynamic_check.succeeded1021
  %call1024 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1213, i8* %1215, i8* %1218)
  %cmp1025 = icmp eq i32 %call1024, -1
  br i1 %cmp1025, label %if.then1026, label %if.else1029

if.then1026:                                      ; preds = %_Dynamic_check.succeeded1023
  %1220 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1027 = call i32 @puts(i8* %1220)
  %1221 = load i32, i32* @tests_passed, align 4
  %inc1028 = add nsw i32 %1221, 1
  store i32 %inc1028, i32* @tests_passed, align 4
  br label %if.end1032

_Dynamic_check.failed1018:                        ; preds = %if.end1014
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1020:                        ; preds = %_Dynamic_check.succeeded1019
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1022:                        ; preds = %_Dynamic_check.succeeded1021
  call void @llvm.trap() #6
  unreachable

if.else1029:                                      ; preds = %_Dynamic_check.succeeded1023
  %1222 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1030 = call i32 @puts(i8* %1222)
  %1223 = load i32, i32* @tests_failed, align 4
  %inc1031 = add nsw i32 %1223, 1
  store i32 %inc1031, i32* @tests_failed, align 4
  br label %if.end1032

if.end1032:                                       ; preds = %if.else1029, %if.then1026
  %1224 = load i8*, i8** %string_1, align 8
  %1225 = ptrtoint i8* %1224 to i64
  %1226 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1225)
  %1227 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.285 to i64))
  %call1033 = call i8* @t_strcpy(i8* %1226, i8* %1227)
  %1228 = load i8*, i8** %string_2, align 8
  %1229 = ptrtoint i8* %1228 to i64
  %1230 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1229)
  %1231 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.286 to i64))
  %call1034 = call i8* @t_strcpy(i8* %1230, i8* %1231)
  %call1035 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 654, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1232 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1233 = load i8*, i8** %string_1, align 8
  %1234 = load i8*, i8** %string_2, align 8
  %1235 = ptrtoint %Tstruct.json_object_t_t* %1232 to i32
  %1236 = call i8* @c_fetch_pointer_from_offset(i32 %1235)
  %1237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1236)
  br i1 %1237, label %_Dynamic_check.succeeded1037, label %_Dynamic_check.failed1036

_Dynamic_check.succeeded1037:                     ; preds = %if.end1032
  %1238 = bitcast i8* %1236 to %Tstruct.json_object_t_t*
  %1239 = ptrtoint i8* %1233 to i32
  %1240 = call i8* @c_fetch_pointer_from_offset(i32 %1239)
  %1241 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1240)
  br i1 %1241, label %_Dynamic_check.succeeded1039, label %_Dynamic_check.failed1038

_Dynamic_check.succeeded1039:                     ; preds = %_Dynamic_check.succeeded1037
  %1242 = ptrtoint i8* %1234 to i32
  %1243 = call i8* @c_fetch_pointer_from_offset(i32 %1242)
  %1244 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1243)
  br i1 %1244, label %_Dynamic_check.succeeded1041, label %_Dynamic_check.failed1040

_Dynamic_check.succeeded1041:                     ; preds = %_Dynamic_check.succeeded1039
  %call1042 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1238, i8* %1240, i8* %1243)
  %cmp1043 = icmp eq i32 %call1042, -1
  br i1 %cmp1043, label %if.then1044, label %if.else1047

if.then1044:                                      ; preds = %_Dynamic_check.succeeded1041
  %1245 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1045 = call i32 @puts(i8* %1245)
  %1246 = load i32, i32* @tests_passed, align 4
  %inc1046 = add nsw i32 %1246, 1
  store i32 %inc1046, i32* @tests_passed, align 4
  br label %if.end1050

_Dynamic_check.failed1036:                        ; preds = %if.end1032
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1038:                        ; preds = %_Dynamic_check.succeeded1037
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1040:                        ; preds = %_Dynamic_check.succeeded1039
  call void @llvm.trap() #6
  unreachable

if.else1047:                                      ; preds = %_Dynamic_check.succeeded1041
  %1247 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1048 = call i32 @puts(i8* %1247)
  %1248 = load i32, i32* @tests_failed, align 4
  %inc1049 = add nsw i32 %1248, 1
  store i32 %inc1049, i32* @tests_failed, align 4
  br label %if.end1050

if.end1050:                                       ; preds = %if.else1047, %if.then1044
  %1249 = load i8*, i8** %string_1, align 8
  %1250 = ptrtoint i8* %1249 to i64
  %1251 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1250)
  %1252 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.287 to i64))
  %call1051 = call i8* @t_strcpy(i8* %1251, i8* %1252)
  %1253 = load i8*, i8** %string_2, align 8
  %1254 = ptrtoint i8* %1253 to i64
  %1255 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1254)
  %1256 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.288 to i64))
  %call1052 = call i8* @t_strcpy(i8* %1255, i8* %1256)
  %call1053 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 657, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1257 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1258 = load i8*, i8** %string_1, align 8
  %1259 = load i8*, i8** %string_2, align 8
  %1260 = ptrtoint %Tstruct.json_object_t_t* %1257 to i32
  %1261 = call i8* @c_fetch_pointer_from_offset(i32 %1260)
  %1262 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1261)
  br i1 %1262, label %_Dynamic_check.succeeded1055, label %_Dynamic_check.failed1054

_Dynamic_check.succeeded1055:                     ; preds = %if.end1050
  %1263 = bitcast i8* %1261 to %Tstruct.json_object_t_t*
  %1264 = ptrtoint i8* %1258 to i32
  %1265 = call i8* @c_fetch_pointer_from_offset(i32 %1264)
  %1266 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1265)
  br i1 %1266, label %_Dynamic_check.succeeded1057, label %_Dynamic_check.failed1056

_Dynamic_check.succeeded1057:                     ; preds = %_Dynamic_check.succeeded1055
  %1267 = ptrtoint i8* %1259 to i32
  %1268 = call i8* @c_fetch_pointer_from_offset(i32 %1267)
  %1269 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1268)
  br i1 %1269, label %_Dynamic_check.succeeded1059, label %_Dynamic_check.failed1058

_Dynamic_check.succeeded1059:                     ; preds = %_Dynamic_check.succeeded1057
  %call1060 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1263, i8* %1265, i8* %1268)
  %cmp1061 = icmp eq i32 %call1060, -1
  br i1 %cmp1061, label %if.then1062, label %if.else1065

if.then1062:                                      ; preds = %_Dynamic_check.succeeded1059
  %1270 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1063 = call i32 @puts(i8* %1270)
  %1271 = load i32, i32* @tests_passed, align 4
  %inc1064 = add nsw i32 %1271, 1
  store i32 %inc1064, i32* @tests_passed, align 4
  br label %if.end1068

_Dynamic_check.failed1054:                        ; preds = %if.end1050
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1056:                        ; preds = %_Dynamic_check.succeeded1055
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1058:                        ; preds = %_Dynamic_check.succeeded1057
  call void @llvm.trap() #6
  unreachable

if.else1065:                                      ; preds = %_Dynamic_check.succeeded1059
  %1272 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1066 = call i32 @puts(i8* %1272)
  %1273 = load i32, i32* @tests_failed, align 4
  %inc1067 = add nsw i32 %1273, 1
  store i32 %inc1067, i32* @tests_failed, align 4
  br label %if.end1068

if.end1068:                                       ; preds = %if.else1065, %if.then1062
  %1274 = load i8*, i8** %string_1, align 8
  %1275 = ptrtoint i8* %1274 to i64
  %1276 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1275)
  %1277 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.289 to i64))
  %call1069 = call i8* @t_strcpy(i8* %1276, i8* %1277)
  %1278 = load i8*, i8** %string_2, align 8
  %1279 = ptrtoint i8* %1278 to i64
  %1280 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1279)
  %1281 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.290 to i64))
  %call1070 = call i8* @t_strcpy(i8* %1280, i8* %1281)
  %call1071 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 660, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1282 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1283 = load i8*, i8** %string_1, align 8
  %1284 = load i8*, i8** %string_2, align 8
  %1285 = ptrtoint %Tstruct.json_object_t_t* %1282 to i32
  %1286 = call i8* @c_fetch_pointer_from_offset(i32 %1285)
  %1287 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1286)
  br i1 %1287, label %_Dynamic_check.succeeded1073, label %_Dynamic_check.failed1072

_Dynamic_check.succeeded1073:                     ; preds = %if.end1068
  %1288 = bitcast i8* %1286 to %Tstruct.json_object_t_t*
  %1289 = ptrtoint i8* %1283 to i32
  %1290 = call i8* @c_fetch_pointer_from_offset(i32 %1289)
  %1291 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1290)
  br i1 %1291, label %_Dynamic_check.succeeded1075, label %_Dynamic_check.failed1074

_Dynamic_check.succeeded1075:                     ; preds = %_Dynamic_check.succeeded1073
  %1292 = ptrtoint i8* %1284 to i32
  %1293 = call i8* @c_fetch_pointer_from_offset(i32 %1292)
  %1294 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1293)
  br i1 %1294, label %_Dynamic_check.succeeded1077, label %_Dynamic_check.failed1076

_Dynamic_check.succeeded1077:                     ; preds = %_Dynamic_check.succeeded1075
  %call1078 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1288, i8* %1290, i8* %1293)
  %cmp1079 = icmp eq i32 %call1078, -1
  br i1 %cmp1079, label %if.then1080, label %if.else1083

if.then1080:                                      ; preds = %_Dynamic_check.succeeded1077
  %1295 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1081 = call i32 @puts(i8* %1295)
  %1296 = load i32, i32* @tests_passed, align 4
  %inc1082 = add nsw i32 %1296, 1
  store i32 %inc1082, i32* @tests_passed, align 4
  br label %if.end1086

_Dynamic_check.failed1072:                        ; preds = %if.end1068
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1074:                        ; preds = %_Dynamic_check.succeeded1073
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1076:                        ; preds = %_Dynamic_check.succeeded1075
  call void @llvm.trap() #6
  unreachable

if.else1083:                                      ; preds = %_Dynamic_check.succeeded1077
  %1297 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1084 = call i32 @puts(i8* %1297)
  %1298 = load i32, i32* @tests_failed, align 4
  %inc1085 = add nsw i32 %1298, 1
  store i32 %inc1085, i32* @tests_failed, align 4
  br label %if.end1086

if.end1086:                                       ; preds = %if.else1083, %if.then1080
  %1299 = load i8*, i8** %string_1, align 8
  %1300 = ptrtoint i8* %1299 to i64
  %1301 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1300)
  %1302 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.291 to i64))
  %call1087 = call i8* @t_strcpy(i8* %1301, i8* %1302)
  %1303 = load i8*, i8** %string_2, align 8
  %1304 = ptrtoint i8* %1303 to i64
  %1305 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1304)
  %1306 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.292 to i64))
  %call1088 = call i8* @t_strcpy(i8* %1305, i8* %1306)
  %call1089 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 663, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1307 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1308 = load i8*, i8** %string_1, align 8
  %1309 = load i8*, i8** %string_2, align 8
  %1310 = ptrtoint %Tstruct.json_object_t_t* %1307 to i32
  %1311 = call i8* @c_fetch_pointer_from_offset(i32 %1310)
  %1312 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1311)
  br i1 %1312, label %_Dynamic_check.succeeded1091, label %_Dynamic_check.failed1090

_Dynamic_check.succeeded1091:                     ; preds = %if.end1086
  %1313 = bitcast i8* %1311 to %Tstruct.json_object_t_t*
  %1314 = ptrtoint i8* %1308 to i32
  %1315 = call i8* @c_fetch_pointer_from_offset(i32 %1314)
  %1316 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1315)
  br i1 %1316, label %_Dynamic_check.succeeded1093, label %_Dynamic_check.failed1092

_Dynamic_check.succeeded1093:                     ; preds = %_Dynamic_check.succeeded1091
  %1317 = ptrtoint i8* %1309 to i32
  %1318 = call i8* @c_fetch_pointer_from_offset(i32 %1317)
  %1319 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1318)
  br i1 %1319, label %_Dynamic_check.succeeded1095, label %_Dynamic_check.failed1094

_Dynamic_check.succeeded1095:                     ; preds = %_Dynamic_check.succeeded1093
  %call1096 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1313, i8* %1315, i8* %1318)
  %cmp1097 = icmp eq i32 %call1096, -1
  br i1 %cmp1097, label %if.then1098, label %if.else1101

if.then1098:                                      ; preds = %_Dynamic_check.succeeded1095
  %1320 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1099 = call i32 @puts(i8* %1320)
  %1321 = load i32, i32* @tests_passed, align 4
  %inc1100 = add nsw i32 %1321, 1
  store i32 %inc1100, i32* @tests_passed, align 4
  br label %if.end1104

_Dynamic_check.failed1090:                        ; preds = %if.end1086
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1092:                        ; preds = %_Dynamic_check.succeeded1091
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1094:                        ; preds = %_Dynamic_check.succeeded1093
  call void @llvm.trap() #6
  unreachable

if.else1101:                                      ; preds = %_Dynamic_check.succeeded1095
  %1322 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1102 = call i32 @puts(i8* %1322)
  %1323 = load i32, i32* @tests_failed, align 4
  %inc1103 = add nsw i32 %1323, 1
  store i32 %inc1103, i32* @tests_failed, align 4
  br label %if.end1104

if.end1104:                                       ; preds = %if.else1101, %if.then1098
  %1324 = load i8*, i8** %string_1, align 8
  %1325 = ptrtoint i8* %1324 to i64
  %1326 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1325)
  %1327 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.293 to i64))
  %call1105 = call i8* @t_strcpy(i8* %1326, i8* %1327)
  %1328 = load i8*, i8** %string_2, align 8
  %1329 = ptrtoint i8* %1328 to i64
  %1330 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1329)
  %1331 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.294 to i64))
  %call1106 = call i8* @t_strcpy(i8* %1330, i8* %1331)
  %call1107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 666, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1332 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1333 = load i8*, i8** %string_1, align 8
  %1334 = load i8*, i8** %string_2, align 8
  %1335 = ptrtoint %Tstruct.json_object_t_t* %1332 to i32
  %1336 = call i8* @c_fetch_pointer_from_offset(i32 %1335)
  %1337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1336)
  br i1 %1337, label %_Dynamic_check.succeeded1109, label %_Dynamic_check.failed1108

_Dynamic_check.succeeded1109:                     ; preds = %if.end1104
  %1338 = bitcast i8* %1336 to %Tstruct.json_object_t_t*
  %1339 = ptrtoint i8* %1333 to i32
  %1340 = call i8* @c_fetch_pointer_from_offset(i32 %1339)
  %1341 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1340)
  br i1 %1341, label %_Dynamic_check.succeeded1111, label %_Dynamic_check.failed1110

_Dynamic_check.succeeded1111:                     ; preds = %_Dynamic_check.succeeded1109
  %1342 = ptrtoint i8* %1334 to i32
  %1343 = call i8* @c_fetch_pointer_from_offset(i32 %1342)
  %1344 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1343)
  br i1 %1344, label %_Dynamic_check.succeeded1113, label %_Dynamic_check.failed1112

_Dynamic_check.succeeded1113:                     ; preds = %_Dynamic_check.succeeded1111
  %call1114 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1338, i8* %1340, i8* %1343)
  %cmp1115 = icmp eq i32 %call1114, -1
  br i1 %cmp1115, label %if.then1116, label %if.else1119

if.then1116:                                      ; preds = %_Dynamic_check.succeeded1113
  %1345 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1117 = call i32 @puts(i8* %1345)
  %1346 = load i32, i32* @tests_passed, align 4
  %inc1118 = add nsw i32 %1346, 1
  store i32 %inc1118, i32* @tests_passed, align 4
  br label %if.end1122

_Dynamic_check.failed1108:                        ; preds = %if.end1104
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1110:                        ; preds = %_Dynamic_check.succeeded1109
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1112:                        ; preds = %_Dynamic_check.succeeded1111
  call void @llvm.trap() #6
  unreachable

if.else1119:                                      ; preds = %_Dynamic_check.succeeded1113
  %1347 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1120 = call i32 @puts(i8* %1347)
  %1348 = load i32, i32* @tests_failed, align 4
  %inc1121 = add nsw i32 %1348, 1
  store i32 %inc1121, i32* @tests_failed, align 4
  br label %if.end1122

if.end1122:                                       ; preds = %if.else1119, %if.then1116
  %1349 = load i8*, i8** %string_1, align 8
  %1350 = ptrtoint i8* %1349 to i64
  %1351 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1350)
  %1352 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.295 to i64))
  %call1123 = call i8* @t_strcpy(i8* %1351, i8* %1352)
  %1353 = load i8*, i8** %string_2, align 8
  %1354 = ptrtoint i8* %1353 to i64
  %1355 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1354)
  %1356 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.296 to i64))
  %call1124 = call i8* @t_strcpy(i8* %1355, i8* %1356)
  %call1125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 670, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1357 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1358 = load i8*, i8** %string_1, align 8
  %1359 = load i8*, i8** %string_2, align 8
  %1360 = ptrtoint %Tstruct.json_object_t_t* %1357 to i32
  %1361 = call i8* @c_fetch_pointer_from_offset(i32 %1360)
  %1362 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1361)
  br i1 %1362, label %_Dynamic_check.succeeded1127, label %_Dynamic_check.failed1126

_Dynamic_check.succeeded1127:                     ; preds = %if.end1122
  %1363 = bitcast i8* %1361 to %Tstruct.json_object_t_t*
  %1364 = ptrtoint i8* %1358 to i32
  %1365 = call i8* @c_fetch_pointer_from_offset(i32 %1364)
  %1366 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1365)
  br i1 %1366, label %_Dynamic_check.succeeded1129, label %_Dynamic_check.failed1128

_Dynamic_check.succeeded1129:                     ; preds = %_Dynamic_check.succeeded1127
  %1367 = ptrtoint i8* %1359 to i32
  %1368 = call i8* @c_fetch_pointer_from_offset(i32 %1367)
  %1369 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1368)
  br i1 %1369, label %_Dynamic_check.succeeded1131, label %_Dynamic_check.failed1130

_Dynamic_check.succeeded1131:                     ; preds = %_Dynamic_check.succeeded1129
  %call1132 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1363, i8* %1365, i8* %1368)
  %cmp1133 = icmp eq i32 %call1132, -1
  br i1 %cmp1133, label %if.then1134, label %if.else1137

if.then1134:                                      ; preds = %_Dynamic_check.succeeded1131
  %1370 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1135 = call i32 @puts(i8* %1370)
  %1371 = load i32, i32* @tests_passed, align 4
  %inc1136 = add nsw i32 %1371, 1
  store i32 %inc1136, i32* @tests_passed, align 4
  br label %if.end1140

_Dynamic_check.failed1126:                        ; preds = %if.end1122
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1128:                        ; preds = %_Dynamic_check.succeeded1127
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1130:                        ; preds = %_Dynamic_check.succeeded1129
  call void @llvm.trap() #6
  unreachable

if.else1137:                                      ; preds = %_Dynamic_check.succeeded1131
  %1372 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1138 = call i32 @puts(i8* %1372)
  %1373 = load i32, i32* @tests_failed, align 4
  %inc1139 = add nsw i32 %1373, 1
  store i32 %inc1139, i32* @tests_failed, align 4
  br label %if.end1140

if.end1140:                                       ; preds = %if.else1137, %if.then1134
  %1374 = load i8*, i8** %string_1, align 8
  %1375 = ptrtoint i8* %1374 to i64
  %1376 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1375)
  %1377 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.297 to i64))
  %call1141 = call i8* @t_strcpy(i8* %1376, i8* %1377)
  %1378 = load i8*, i8** %string_2, align 8
  %1379 = ptrtoint i8* %1378 to i64
  %1380 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1379)
  %1381 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.298 to i64))
  %call1142 = call i8* @t_strcpy(i8* %1380, i8* %1381)
  %call1143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 673, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1382 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1383 = load i8*, i8** %string_1, align 8
  %1384 = load i8*, i8** %string_2, align 8
  %1385 = ptrtoint %Tstruct.json_object_t_t* %1382 to i32
  %1386 = call i8* @c_fetch_pointer_from_offset(i32 %1385)
  %1387 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1386)
  br i1 %1387, label %_Dynamic_check.succeeded1145, label %_Dynamic_check.failed1144

_Dynamic_check.succeeded1145:                     ; preds = %if.end1140
  %1388 = bitcast i8* %1386 to %Tstruct.json_object_t_t*
  %1389 = ptrtoint i8* %1383 to i32
  %1390 = call i8* @c_fetch_pointer_from_offset(i32 %1389)
  %1391 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1390)
  br i1 %1391, label %_Dynamic_check.succeeded1147, label %_Dynamic_check.failed1146

_Dynamic_check.succeeded1147:                     ; preds = %_Dynamic_check.succeeded1145
  %1392 = ptrtoint i8* %1384 to i32
  %1393 = call i8* @c_fetch_pointer_from_offset(i32 %1392)
  %1394 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1393)
  br i1 %1394, label %_Dynamic_check.succeeded1149, label %_Dynamic_check.failed1148

_Dynamic_check.succeeded1149:                     ; preds = %_Dynamic_check.succeeded1147
  %call1150 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1388, i8* %1390, i8* %1393)
  %cmp1151 = icmp eq i32 %call1150, -1
  br i1 %cmp1151, label %if.then1152, label %if.else1155

if.then1152:                                      ; preds = %_Dynamic_check.succeeded1149
  %1395 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1153 = call i32 @puts(i8* %1395)
  %1396 = load i32, i32* @tests_passed, align 4
  %inc1154 = add nsw i32 %1396, 1
  store i32 %inc1154, i32* @tests_passed, align 4
  br label %if.end1158

_Dynamic_check.failed1144:                        ; preds = %if.end1140
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1146:                        ; preds = %_Dynamic_check.succeeded1145
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1148:                        ; preds = %_Dynamic_check.succeeded1147
  call void @llvm.trap() #6
  unreachable

if.else1155:                                      ; preds = %_Dynamic_check.succeeded1149
  %1397 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1156 = call i32 @puts(i8* %1397)
  %1398 = load i32, i32* @tests_failed, align 4
  %inc1157 = add nsw i32 %1398, 1
  store i32 %inc1157, i32* @tests_failed, align 4
  br label %if.end1158

if.end1158:                                       ; preds = %if.else1155, %if.then1152
  %1399 = load i8*, i8** %string_1, align 8
  %1400 = ptrtoint i8* %1399 to i64
  %1401 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1400)
  %1402 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.299 to i64))
  %call1159 = call i8* @t_strcpy(i8* %1401, i8* %1402)
  %1403 = load i8*, i8** %string_2, align 8
  %1404 = ptrtoint i8* %1403 to i64
  %1405 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1404)
  %1406 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.300 to i64))
  %call1160 = call i8* @t_strcpy(i8* %1405, i8* %1406)
  %call1161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 676, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1407 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1408 = load i8*, i8** %string_1, align 8
  %1409 = load i8*, i8** %string_2, align 8
  %1410 = ptrtoint %Tstruct.json_object_t_t* %1407 to i32
  %1411 = call i8* @c_fetch_pointer_from_offset(i32 %1410)
  %1412 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1411)
  br i1 %1412, label %_Dynamic_check.succeeded1163, label %_Dynamic_check.failed1162

_Dynamic_check.succeeded1163:                     ; preds = %if.end1158
  %1413 = bitcast i8* %1411 to %Tstruct.json_object_t_t*
  %1414 = ptrtoint i8* %1408 to i32
  %1415 = call i8* @c_fetch_pointer_from_offset(i32 %1414)
  %1416 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1415)
  br i1 %1416, label %_Dynamic_check.succeeded1165, label %_Dynamic_check.failed1164

_Dynamic_check.succeeded1165:                     ; preds = %_Dynamic_check.succeeded1163
  %1417 = ptrtoint i8* %1409 to i32
  %1418 = call i8* @c_fetch_pointer_from_offset(i32 %1417)
  %1419 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1418)
  br i1 %1419, label %_Dynamic_check.succeeded1167, label %_Dynamic_check.failed1166

_Dynamic_check.succeeded1167:                     ; preds = %_Dynamic_check.succeeded1165
  %call1168 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1413, i8* %1415, i8* %1418)
  %cmp1169 = icmp eq i32 %call1168, -1
  br i1 %cmp1169, label %if.then1170, label %if.else1173

if.then1170:                                      ; preds = %_Dynamic_check.succeeded1167
  %1420 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1171 = call i32 @puts(i8* %1420)
  %1421 = load i32, i32* @tests_passed, align 4
  %inc1172 = add nsw i32 %1421, 1
  store i32 %inc1172, i32* @tests_passed, align 4
  br label %if.end1176

_Dynamic_check.failed1162:                        ; preds = %if.end1158
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1164:                        ; preds = %_Dynamic_check.succeeded1163
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1166:                        ; preds = %_Dynamic_check.succeeded1165
  call void @llvm.trap() #6
  unreachable

if.else1173:                                      ; preds = %_Dynamic_check.succeeded1167
  %1422 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1174 = call i32 @puts(i8* %1422)
  %1423 = load i32, i32* @tests_failed, align 4
  %inc1175 = add nsw i32 %1423, 1
  store i32 %inc1175, i32* @tests_failed, align 4
  br label %if.end1176

if.end1176:                                       ; preds = %if.else1173, %if.then1170
  %1424 = load i8*, i8** %string_1, align 8
  %1425 = ptrtoint i8* %1424 to i64
  %1426 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1425)
  %1427 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.301 to i64))
  %call1177 = call i8* @t_strcpy(i8* %1426, i8* %1427)
  %1428 = load i8*, i8** %string_1, align 8
  %1429 = ptrtoint i8* %1428 to i32
  %1430 = call i8* @c_fetch_pointer_from_offset(i32 %1429)
  %1431 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1430)
  br i1 %1431, label %_Dynamic_check.succeeded1179, label %_Dynamic_check.failed1178

_Dynamic_check.succeeded1179:                     ; preds = %if.end1176
  %call1180 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1430)
  store %Tstruct.json_value_t_t* %call1180, %Tstruct.json_value_t_t** %remove_test_val, align 8
  %1432 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 8
  %1433 = ptrtoint %Tstruct.json_value_t_t* %1432 to i32
  %1434 = call i8* @c_fetch_pointer_from_offset(i32 %1433)
  %1435 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1434)
  br i1 %1435, label %_Dynamic_check.succeeded1182, label %_Dynamic_check.failed1181

_Dynamic_check.succeeded1182:                     ; preds = %_Dynamic_check.succeeded1179
  %1436 = bitcast i8* %1434 to %Tstruct.json_value_t_t*
  %call1183 = call %Tstruct.json_array_t_t* @json_array(%Tstruct.json_value_t_t* %1436)
  store %Tstruct.json_array_t_t* %call1183, %Tstruct.json_array_t_t** %remove_test_arr, align 8
  %1437 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 8
  %1438 = ptrtoint %Tstruct.json_array_t_t* %1437 to i32
  %1439 = call i8* @c_fetch_pointer_from_offset(i32 %1438)
  %1440 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1439)
  br i1 %1440, label %_Dynamic_check.succeeded1185, label %_Dynamic_check.failed1184

_Dynamic_check.succeeded1185:                     ; preds = %_Dynamic_check.succeeded1182
  %1441 = bitcast i8* %1439 to %Tstruct.json_array_t_t*
  %call1186 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1441, i64 2)
  %1442 = load i8*, i8** %string_1, align 8
  %1443 = ptrtoint i8* %1442 to i64
  %1444 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1443)
  %1445 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.302 to i64))
  %call1187 = call i8* @t_strcpy(i8* %1444, i8* %1445)
  %call1188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 684, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.303, i64 0, i64 0))
  %1446 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 8
  %1447 = load i8*, i8** %string_1, align 8
  %1448 = ptrtoint i8* %1447 to i32
  %1449 = call i8* @c_fetch_pointer_from_offset(i32 %1448)
  %1450 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1449)
  br i1 %1450, label %_Dynamic_check.succeeded1190, label %_Dynamic_check.failed1189

_Dynamic_check.succeeded1190:                     ; preds = %_Dynamic_check.succeeded1185
  %call1191 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1449)
  %1451 = ptrtoint %Tstruct.json_value_t_t* %1446 to i32
  %1452 = call i8* @c_fetch_pointer_from_offset(i32 %1451)
  %1453 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1452)
  br i1 %1453, label %_Dynamic_check.succeeded1193, label %_Dynamic_check.failed1192

_Dynamic_check.succeeded1193:                     ; preds = %_Dynamic_check.succeeded1190
  %1454 = bitcast i8* %1452 to %Tstruct.json_value_t_t*
  %1455 = ptrtoint %Tstruct.json_value_t_t* %call1191 to i32
  %1456 = call i8* @c_fetch_pointer_from_offset(i32 %1455)
  %1457 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1456)
  br i1 %1457, label %_Dynamic_check.succeeded1195, label %_Dynamic_check.failed1194

_Dynamic_check.succeeded1195:                     ; preds = %_Dynamic_check.succeeded1193
  %1458 = bitcast i8* %1456 to %Tstruct.json_value_t_t*
  %call1196 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1454, %Tstruct.json_value_t_t* %1458)
  %tobool1197 = icmp ne i32 %call1196, 0
  br i1 %tobool1197, label %if.then1198, label %if.else1201

if.then1198:                                      ; preds = %_Dynamic_check.succeeded1195
  %1459 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1199 = call i32 @puts(i8* %1459)
  %1460 = load i32, i32* @tests_passed, align 4
  %inc1200 = add nsw i32 %1460, 1
  store i32 %inc1200, i32* @tests_passed, align 4
  br label %if.end1204

_Dynamic_check.failed1178:                        ; preds = %if.end1176
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1181:                        ; preds = %_Dynamic_check.succeeded1179
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1184:                        ; preds = %_Dynamic_check.succeeded1182
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1189:                        ; preds = %_Dynamic_check.succeeded1185
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1192:                        ; preds = %_Dynamic_check.succeeded1190
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1194:                        ; preds = %_Dynamic_check.succeeded1193
  call void @llvm.trap() #6
  unreachable

if.else1201:                                      ; preds = %_Dynamic_check.succeeded1195
  %1461 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1202 = call i32 @puts(i8* %1461)
  %1462 = load i32, i32* @tests_failed, align 4
  %inc1203 = add nsw i32 %1462, 1
  store i32 %inc1203, i32* @tests_failed, align 4
  br label %if.end1204

if.end1204:                                       ; preds = %if.else1201, %if.then1198
  %1463 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 8
  %1464 = ptrtoint %Tstruct.json_array_t_t* %1463 to i32
  %1465 = call i8* @c_fetch_pointer_from_offset(i32 %1464)
  %1466 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1465)
  br i1 %1466, label %_Dynamic_check.succeeded1206, label %_Dynamic_check.failed1205

_Dynamic_check.succeeded1206:                     ; preds = %if.end1204
  %1467 = bitcast i8* %1465 to %Tstruct.json_array_t_t*
  %call1207 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1467, i64 0)
  %1468 = load i8*, i8** %string_1, align 8
  %1469 = ptrtoint i8* %1468 to i64
  %1470 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1469)
  %1471 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.304 to i64))
  %call1208 = call i8* @t_strcpy(i8* %1470, i8* %1471)
  %call1209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.303, i64 0, i64 0))
  %1472 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 8
  %1473 = load i8*, i8** %string_1, align 8
  %1474 = ptrtoint i8* %1473 to i32
  %1475 = call i8* @c_fetch_pointer_from_offset(i32 %1474)
  %1476 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1475)
  br i1 %1476, label %_Dynamic_check.succeeded1211, label %_Dynamic_check.failed1210

_Dynamic_check.succeeded1211:                     ; preds = %_Dynamic_check.succeeded1206
  %call1212 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1475)
  %1477 = ptrtoint %Tstruct.json_value_t_t* %1472 to i32
  %1478 = call i8* @c_fetch_pointer_from_offset(i32 %1477)
  %1479 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1478)
  br i1 %1479, label %_Dynamic_check.succeeded1214, label %_Dynamic_check.failed1213

_Dynamic_check.succeeded1214:                     ; preds = %_Dynamic_check.succeeded1211
  %1480 = bitcast i8* %1478 to %Tstruct.json_value_t_t*
  %1481 = ptrtoint %Tstruct.json_value_t_t* %call1212 to i32
  %1482 = call i8* @c_fetch_pointer_from_offset(i32 %1481)
  %1483 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1482)
  br i1 %1483, label %_Dynamic_check.succeeded1216, label %_Dynamic_check.failed1215

_Dynamic_check.succeeded1216:                     ; preds = %_Dynamic_check.succeeded1214
  %1484 = bitcast i8* %1482 to %Tstruct.json_value_t_t*
  %call1217 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1480, %Tstruct.json_value_t_t* %1484)
  %tobool1218 = icmp ne i32 %call1217, 0
  br i1 %tobool1218, label %if.then1219, label %if.else1222

if.then1219:                                      ; preds = %_Dynamic_check.succeeded1216
  %1485 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1220 = call i32 @puts(i8* %1485)
  %1486 = load i32, i32* @tests_passed, align 4
  %inc1221 = add nsw i32 %1486, 1
  store i32 %inc1221, i32* @tests_passed, align 4
  br label %if.end1225

_Dynamic_check.failed1205:                        ; preds = %if.end1204
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1210:                        ; preds = %_Dynamic_check.succeeded1206
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1213:                        ; preds = %_Dynamic_check.succeeded1211
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1215:                        ; preds = %_Dynamic_check.succeeded1214
  call void @llvm.trap() #6
  unreachable

if.else1222:                                      ; preds = %_Dynamic_check.succeeded1216
  %1487 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1223 = call i32 @puts(i8* %1487)
  %1488 = load i32, i32* @tests_failed, align 4
  %inc1224 = add nsw i32 %1488, 1
  store i32 %inc1224, i32* @tests_failed, align 4
  br label %if.end1225

if.end1225:                                       ; preds = %if.else1222, %if.then1219
  %1489 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 8
  %1490 = ptrtoint %Tstruct.json_array_t_t* %1489 to i32
  %1491 = call i8* @c_fetch_pointer_from_offset(i32 %1490)
  %1492 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1491)
  br i1 %1492, label %_Dynamic_check.succeeded1227, label %_Dynamic_check.failed1226

_Dynamic_check.succeeded1227:                     ; preds = %if.end1225
  %1493 = bitcast i8* %1491 to %Tstruct.json_array_t_t*
  %call1228 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1493, i64 2)
  %1494 = load i8*, i8** %string_1, align 8
  %1495 = ptrtoint i8* %1494 to i64
  %1496 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1495)
  %1497 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.305 to i64))
  %call1229 = call i8* @t_strcpy(i8* %1496, i8* %1497)
  %call1230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 690, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.303, i64 0, i64 0))
  %1498 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 8
  %1499 = load i8*, i8** %string_1, align 8
  %1500 = ptrtoint i8* %1499 to i32
  %1501 = call i8* @c_fetch_pointer_from_offset(i32 %1500)
  %1502 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1501)
  br i1 %1502, label %_Dynamic_check.succeeded1232, label %_Dynamic_check.failed1231

_Dynamic_check.succeeded1232:                     ; preds = %_Dynamic_check.succeeded1227
  %call1233 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1501)
  %1503 = ptrtoint %Tstruct.json_value_t_t* %1498 to i32
  %1504 = call i8* @c_fetch_pointer_from_offset(i32 %1503)
  %1505 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1504)
  br i1 %1505, label %_Dynamic_check.succeeded1235, label %_Dynamic_check.failed1234

_Dynamic_check.succeeded1235:                     ; preds = %_Dynamic_check.succeeded1232
  %1506 = bitcast i8* %1504 to %Tstruct.json_value_t_t*
  %1507 = ptrtoint %Tstruct.json_value_t_t* %call1233 to i32
  %1508 = call i8* @c_fetch_pointer_from_offset(i32 %1507)
  %1509 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1508)
  br i1 %1509, label %_Dynamic_check.succeeded1237, label %_Dynamic_check.failed1236

_Dynamic_check.succeeded1237:                     ; preds = %_Dynamic_check.succeeded1235
  %1510 = bitcast i8* %1508 to %Tstruct.json_value_t_t*
  %call1238 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1506, %Tstruct.json_value_t_t* %1510)
  %tobool1239 = icmp ne i32 %call1238, 0
  br i1 %tobool1239, label %if.then1240, label %if.else1243

if.then1240:                                      ; preds = %_Dynamic_check.succeeded1237
  %1511 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1241 = call i32 @puts(i8* %1511)
  %1512 = load i32, i32* @tests_passed, align 4
  %inc1242 = add nsw i32 %1512, 1
  store i32 %inc1242, i32* @tests_passed, align 4
  br label %if.end1246

_Dynamic_check.failed1226:                        ; preds = %if.end1225
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1231:                        ; preds = %_Dynamic_check.succeeded1227
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1234:                        ; preds = %_Dynamic_check.succeeded1232
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1236:                        ; preds = %_Dynamic_check.succeeded1235
  call void @llvm.trap() #6
  unreachable

if.else1243:                                      ; preds = %_Dynamic_check.succeeded1237
  %1513 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1244 = call i32 @puts(i8* %1513)
  %1514 = load i32, i32* @tests_failed, align 4
  %inc1245 = add nsw i32 %1514, 1
  store i32 %inc1245, i32* @tests_failed, align 4
  br label %if.end1246

if.end1246:                                       ; preds = %if.else1243, %if.then1240
  %1515 = load i8*, i8** %string_1, align 8
  %1516 = ptrtoint i8* %1515 to i64
  %1517 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1516)
  %1518 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.306 to i64))
  %call1247 = call i8* @t_strcpy(i8* %1517, i8* %1518)
  %call1248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 694, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.307, i64 0, i64 0))
  %1519 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1520 = load i8*, i8** %string_1, align 8
  %1521 = load double, double* %zero, align 8
  %div = fdiv double 0.000000e+00, %1521
  %1522 = ptrtoint %Tstruct.json_object_t_t* %1519 to i32
  %1523 = call i8* @c_fetch_pointer_from_offset(i32 %1522)
  %1524 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1523)
  br i1 %1524, label %_Dynamic_check.succeeded1250, label %_Dynamic_check.failed1249

_Dynamic_check.succeeded1250:                     ; preds = %if.end1246
  %1525 = bitcast i8* %1523 to %Tstruct.json_object_t_t*
  %1526 = ptrtoint i8* %1520 to i32
  %1527 = call i8* @c_fetch_pointer_from_offset(i32 %1526)
  %1528 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1527)
  br i1 %1528, label %_Dynamic_check.succeeded1252, label %_Dynamic_check.failed1251

_Dynamic_check.succeeded1252:                     ; preds = %_Dynamic_check.succeeded1250
  %call1253 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %1525, i8* %1527, double %div)
  %cmp1254 = icmp eq i32 %call1253, -1
  br i1 %cmp1254, label %if.then1255, label %if.else1258

if.then1255:                                      ; preds = %_Dynamic_check.succeeded1252
  %1529 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1256 = call i32 @puts(i8* %1529)
  %1530 = load i32, i32* @tests_passed, align 4
  %inc1257 = add nsw i32 %1530, 1
  store i32 %inc1257, i32* @tests_passed, align 4
  br label %if.end1261

_Dynamic_check.failed1249:                        ; preds = %if.end1246
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1251:                        ; preds = %_Dynamic_check.succeeded1250
  call void @llvm.trap() #6
  unreachable

if.else1258:                                      ; preds = %_Dynamic_check.succeeded1252
  %1531 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1259 = call i32 @puts(i8* %1531)
  %1532 = load i32, i32* @tests_failed, align 4
  %inc1260 = add nsw i32 %1532, 1
  store i32 %inc1260, i32* @tests_failed, align 4
  br label %if.end1261

if.end1261:                                       ; preds = %if.else1258, %if.then1255
  %1533 = load i8*, i8** %string_1, align 8
  %1534 = ptrtoint i8* %1533 to i64
  %1535 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1534)
  %1536 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.306 to i64))
  %call1262 = call i8* @t_strcpy(i8* %1535, i8* %1536)
  %call1263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 696, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.308, i64 0, i64 0))
  %1537 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 8
  %1538 = load i8*, i8** %string_1, align 8
  %1539 = load double, double* %zero, align 8
  %div1264 = fdiv double 1.000000e+00, %1539
  %1540 = ptrtoint %Tstruct.json_object_t_t* %1537 to i32
  %1541 = call i8* @c_fetch_pointer_from_offset(i32 %1540)
  %1542 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1541)
  br i1 %1542, label %_Dynamic_check.succeeded1266, label %_Dynamic_check.failed1265

_Dynamic_check.succeeded1266:                     ; preds = %if.end1261
  %1543 = bitcast i8* %1541 to %Tstruct.json_object_t_t*
  %1544 = ptrtoint i8* %1538 to i32
  %1545 = call i8* @c_fetch_pointer_from_offset(i32 %1544)
  %1546 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1545)
  br i1 %1546, label %_Dynamic_check.succeeded1268, label %_Dynamic_check.failed1267

_Dynamic_check.succeeded1268:                     ; preds = %_Dynamic_check.succeeded1266
  %call1269 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %1543, i8* %1545, double %div1264)
  %cmp1270 = icmp eq i32 %call1269, -1
  br i1 %cmp1270, label %if.then1271, label %if.else1274

if.then1271:                                      ; preds = %_Dynamic_check.succeeded1268
  %1547 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1272 = call i32 @puts(i8* %1547)
  %1548 = load i32, i32* @tests_passed, align 4
  %inc1273 = add nsw i32 %1548, 1
  store i32 %inc1273, i32* @tests_passed, align 4
  br label %if.end1277

_Dynamic_check.failed1265:                        ; preds = %if.end1261
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1267:                        ; preds = %_Dynamic_check.succeeded1266
  call void @llvm.trap() #6
  unreachable

if.else1274:                                      ; preds = %_Dynamic_check.succeeded1268
  %1549 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1275 = call i32 @puts(i8* %1549)
  %1550 = load i32, i32* @tests_failed, align 4
  %inc1276 = add nsw i32 %1550, 1
  store i32 %inc1276, i32* @tests_failed, align 4
  br label %if.end1277

if.end1277:                                       ; preds = %if.else1274, %if.then1271
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %Tstruct.json_value_t_t* @json_parse_file(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare i8* @c_ConditionalTaintedOff2Ptr(i64)

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
  %root_value.addr = alloca %Tstruct.json_value_t_t*, align 8
  %root_object = alloca %Tstruct.json_object_t_t*, align 8
  %array = alloca %Tstruct.json_array_t_t*, align 8
  %array_value = alloca %Tstruct.json_value_t_t*, align 8
  %i = alloca i64, align 8
  %value_type = alloca i8*, align 8
  store %Tstruct.json_value_t_t* %root_value, %Tstruct.json_value_t_t** %root_value.addr, align 8
  store %Tstruct.json_object_t_t* null, %Tstruct.json_object_t_t** %root_object, align 8
  store %Tstruct.json_array_t_t* null, %Tstruct.json_array_t_t** %array, align 8
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %array_value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %0 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 8
  %tobool = icmp ne %Tstruct.json_value_t_t* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1 = call i32 @puts(i8* %1)
  %2 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call2 = call i32 @puts(i8* %3)
  %4 = load i32, i32* @tests_failed, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %5 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 8
  %6 = ptrtoint %Tstruct.json_value_t_t* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %9 = bitcast i8* %7 to %Tstruct.json_value_t_t*
  %call5 = call i32 @json_value_get_type(%Tstruct.json_value_t_t* %9)
  %cmp = icmp eq i32 %call5, 4
  br i1 %cmp, label %if.then6, label %if.else9

if.then6:                                         ; preds = %_Dynamic_check.succeeded
  %10 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call7 = call i32 @puts(i8* %10)
  %11 = load i32, i32* @tests_passed, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, i32* @tests_passed, align 4
  br label %if.end12

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else9:                                         ; preds = %_Dynamic_check.succeeded
  %12 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call10 = call i32 @puts(i8* %12)
  %13 = load i32, i32* @tests_failed, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* @tests_failed, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6
  %14 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 8
  %15 = ptrtoint %Tstruct.json_value_t_t* %14 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end12
  %18 = bitcast i8* %16 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %18)
  store %Tstruct.json_object_t_t* %call15, %Tstruct.json_object_t_t** %root_object, align 8
  %call16 = call i8* @string_malloc(i64 100)
  store i8* %call16, i8** %value_type, align 8
  %19 = load i8*, i8** %value_type, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %20)
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call17 = call i8* @t_strcpy(i8* %21, i8* %22)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  %23 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %24 = load i8*, i8** %value_type, align 8
  %25 = ptrtoint %Tstruct.json_object_t_t* %23 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded14
  %28 = bitcast i8* %26 to %Tstruct.json_object_t_t*
  %29 = ptrtoint i8* %24 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded20
  %call23 = call i32 @json_object_has_value(%Tstruct.json_object_t_t* %28, i8* %30)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %_Dynamic_check.succeeded22
  %32 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call26 = call i32 @puts(i8* %32)
  %33 = load i32, i32* @tests_passed, align 4
  %inc27 = add nsw i32 %33, 1
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
  %34 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call29 = call i32 @puts(i8* %34)
  %35 = load i32, i32* @tests_failed, align 4
  %inc30 = add nsw i32 %35, 1
  store i32 %inc30, i32* @tests_failed, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  %36 = load i8*, i8** %value_type, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %37)
  %39 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.19 to i64))
  %call32 = call i8* @t_strcpy(i8* %38, i8* %39)
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  %40 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %41 = load i8*, i8** %value_type, align 8
  %42 = ptrtoint %Tstruct.json_object_t_t* %40 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %if.end31
  %45 = bitcast i8* %43 to %Tstruct.json_object_t_t*
  %46 = ptrtoint i8* %41 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded35
  %call38 = call i32 @json_object_has_value(%Tstruct.json_object_t_t* %45, i8* %47)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else43, label %if.then40

if.then40:                                        ; preds = %_Dynamic_check.succeeded37
  %49 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call41 = call i32 @puts(i8* %49)
  %50 = load i32, i32* @tests_passed, align 4
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* @tests_passed, align 4
  br label %if.end46

_Dynamic_check.failed34:                          ; preds = %if.end31
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #6
  unreachable

if.else43:                                        ; preds = %_Dynamic_check.succeeded37
  %51 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call44 = call i32 @puts(i8* %51)
  %52 = load i32, i32* @tests_failed, align 4
  %inc45 = add nsw i32 %52, 1
  store i32 %inc45, i32* @tests_failed, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  %53 = load i8*, i8** %value_type, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %54)
  %56 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.21 to i64))
  %call47 = call i8* @t_strcpy(i8* %55, i8* %56)
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i64 0, i64 0))
  %57 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %58 = load i8*, i8** %value_type, align 8
  %59 = ptrtoint %Tstruct.json_object_t_t* %57 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %if.end46
  %62 = bitcast i8* %60 to %Tstruct.json_object_t_t*
  %63 = ptrtoint i8* %58 to i32
  %64 = call i8* @c_fetch_pointer_from_offset(i32 %63)
  %65 = call i1 @c_isTaintedPointerToTaintedMem(i8* %64)
  br i1 %65, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %_Dynamic_check.succeeded50
  %call53 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %62, i8* %64, i32 4)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %_Dynamic_check.succeeded52
  %66 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call56 = call i32 @puts(i8* %66)
  %67 = load i32, i32* @tests_passed, align 4
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, i32* @tests_passed, align 4
  br label %if.end61

_Dynamic_check.failed49:                          ; preds = %if.end46
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed51:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #6
  unreachable

if.else58:                                        ; preds = %_Dynamic_check.succeeded52
  %68 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call59 = call i32 @puts(i8* %68)
  %69 = load i32, i32* @tests_failed, align 4
  %inc60 = add nsw i32 %69, 1
  store i32 %inc60, i32* @tests_failed, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then55
  %70 = load i8*, i8** %value_type, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %71)
  %73 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call62 = call i8* @t_strcpy(i8* %72, i8* %73)
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0))
  %74 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %75 = load i8*, i8** %value_type, align 8
  %76 = ptrtoint %Tstruct.json_object_t_t* %74 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %if.end61
  %79 = bitcast i8* %77 to %Tstruct.json_object_t_t*
  %80 = ptrtoint i8* %75 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %_Dynamic_check.succeeded65
  %call68 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %79, i8* %81, i32 4)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.else73, label %if.then70

if.then70:                                        ; preds = %_Dynamic_check.succeeded67
  %83 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call71 = call i32 @puts(i8* %83)
  %84 = load i32, i32* @tests_passed, align 4
  %inc72 = add nsw i32 %84, 1
  store i32 %inc72, i32* @tests_passed, align 4
  br label %if.end76

_Dynamic_check.failed64:                          ; preds = %if.end61
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed66:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #6
  unreachable

if.else73:                                        ; preds = %_Dynamic_check.succeeded67
  %85 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call74 = call i32 @puts(i8* %85)
  %86 = load i32, i32* @tests_failed, align 4
  %inc75 = add nsw i32 %86, 1
  store i32 %inc75, i32* @tests_failed, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then70
  %87 = load i8*, i8** %value_type, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %88)
  %90 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call77 = call i8* @t_strcpy(i8* %89, i8* %90)
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0))
  %91 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %92 = load i8*, i8** %value_type, align 8
  %93 = ptrtoint %Tstruct.json_object_t_t* %91 to i32
  %94 = call i8* @c_fetch_pointer_from_offset(i32 %93)
  %95 = call i1 @c_isTaintedPointerToTaintedMem(i8* %94)
  br i1 %95, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %if.end76
  %96 = bitcast i8* %94 to %Tstruct.json_object_t_t*
  %97 = ptrtoint i8* %92 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %call83 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %96, i8* %98, i32 5)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %_Dynamic_check.succeeded82
  %100 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call86 = call i32 @puts(i8* %100)
  %101 = load i32, i32* @tests_passed, align 4
  %inc87 = add nsw i32 %101, 1
  store i32 %inc87, i32* @tests_passed, align 4
  br label %if.end91

_Dynamic_check.failed79:                          ; preds = %if.end76
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #6
  unreachable

if.else88:                                        ; preds = %_Dynamic_check.succeeded82
  %102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call89 = call i32 @puts(i8* %102)
  %103 = load i32, i32* @tests_failed, align 4
  %inc90 = add nsw i32 %103, 1
  store i32 %inc90, i32* @tests_failed, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then85
  %104 = load i8*, i8** %value_type, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %105)
  %107 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.21 to i64))
  %call92 = call i8* @t_strcpy(i8* %106, i8* %107)
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 165, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0))
  %108 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %109 = load i8*, i8** %value_type, align 8
  %110 = ptrtoint %Tstruct.json_object_t_t* %108 to i32
  %111 = call i8* @c_fetch_pointer_from_offset(i32 %110)
  %112 = call i1 @c_isTaintedPointerToTaintedMem(i8* %111)
  br i1 %112, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %if.end91
  %113 = bitcast i8* %111 to %Tstruct.json_object_t_t*
  %114 = ptrtoint i8* %109 to i32
  %115 = call i8* @c_fetch_pointer_from_offset(i32 %114)
  %116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %115)
  br i1 %116, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded95
  %call98 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %113, i8* %115, i32 5)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.else103, label %if.then100

if.then100:                                       ; preds = %_Dynamic_check.succeeded97
  %117 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call101 = call i32 @puts(i8* %117)
  %118 = load i32, i32* @tests_passed, align 4
  %inc102 = add nsw i32 %118, 1
  store i32 %inc102, i32* @tests_passed, align 4
  br label %if.end106

_Dynamic_check.failed94:                          ; preds = %if.end91
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #6
  unreachable

if.else103:                                       ; preds = %_Dynamic_check.succeeded97
  %119 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call104 = call i32 @puts(i8* %119)
  %120 = load i32, i32* @tests_failed, align 4
  %inc105 = add nsw i32 %120, 1
  store i32 %inc105, i32* @tests_failed, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %if.then100
  %121 = load i8*, i8** %value_type, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %122)
  %124 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call107 = call i8* @t_strcpy(i8* %123, i8* %124)
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 167, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0))
  %125 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %126 = load i8*, i8** %value_type, align 8
  %127 = ptrtoint %Tstruct.json_object_t_t* %125 to i32
  %128 = call i8* @c_fetch_pointer_from_offset(i32 %127)
  %129 = call i1 @c_isTaintedPointerToTaintedMem(i8* %128)
  br i1 %129, label %_Dynamic_check.succeeded110, label %_Dynamic_check.failed109

_Dynamic_check.succeeded110:                      ; preds = %if.end106
  %130 = bitcast i8* %128 to %Tstruct.json_object_t_t*
  %131 = ptrtoint i8* %126 to i32
  %132 = call i8* @c_fetch_pointer_from_offset(i32 %131)
  %133 = call i1 @c_isTaintedPointerToTaintedMem(i8* %132)
  br i1 %133, label %_Dynamic_check.succeeded112, label %_Dynamic_check.failed111

_Dynamic_check.succeeded112:                      ; preds = %_Dynamic_check.succeeded110
  %call113 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %130, i8* %132, i32 2)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.else118

if.then115:                                       ; preds = %_Dynamic_check.succeeded112
  %134 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call116 = call i32 @puts(i8* %134)
  %135 = load i32, i32* @tests_passed, align 4
  %inc117 = add nsw i32 %135, 1
  store i32 %inc117, i32* @tests_passed, align 4
  br label %if.end121

_Dynamic_check.failed109:                         ; preds = %if.end106
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed111:                         ; preds = %_Dynamic_check.succeeded110
  call void @llvm.trap() #6
  unreachable

if.else118:                                       ; preds = %_Dynamic_check.succeeded112
  %136 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call119 = call i32 @puts(i8* %136)
  %137 = load i32, i32* @tests_failed, align 4
  %inc120 = add nsw i32 %137, 1
  store i32 %inc120, i32* @tests_failed, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then115
  %138 = load i8*, i8** %value_type, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %139)
  %141 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call122 = call i8* @t_strcpy(i8* %140, i8* %141)
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0))
  %142 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %143 = load i8*, i8** %value_type, align 8
  %144 = ptrtoint %Tstruct.json_object_t_t* %142 to i32
  %145 = call i8* @c_fetch_pointer_from_offset(i32 %144)
  %146 = call i1 @c_isTaintedPointerToTaintedMem(i8* %145)
  br i1 %146, label %_Dynamic_check.succeeded125, label %_Dynamic_check.failed124

_Dynamic_check.succeeded125:                      ; preds = %if.end121
  %147 = bitcast i8* %145 to %Tstruct.json_object_t_t*
  %148 = ptrtoint i8* %143 to i32
  %149 = call i8* @c_fetch_pointer_from_offset(i32 %148)
  %150 = call i1 @c_isTaintedPointerToTaintedMem(i8* %149)
  br i1 %150, label %_Dynamic_check.succeeded127, label %_Dynamic_check.failed126

_Dynamic_check.succeeded127:                      ; preds = %_Dynamic_check.succeeded125
  %call128 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %147, i8* %149, i32 2)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.else133, label %if.then130

if.then130:                                       ; preds = %_Dynamic_check.succeeded127
  %151 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call131 = call i32 @puts(i8* %151)
  %152 = load i32, i32* @tests_passed, align 4
  %inc132 = add nsw i32 %152, 1
  store i32 %inc132, i32* @tests_passed, align 4
  br label %if.end136

_Dynamic_check.failed124:                         ; preds = %if.end121
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed126:                         ; preds = %_Dynamic_check.succeeded125
  call void @llvm.trap() #6
  unreachable

if.else133:                                       ; preds = %_Dynamic_check.succeeded127
  %153 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call134 = call i32 @puts(i8* %153)
  %154 = load i32, i32* @tests_failed, align 4
  %inc135 = add nsw i32 %154, 1
  store i32 %inc135, i32* @tests_failed, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else133, %if.then130
  %155 = load i8*, i8** %value_type, align 8
  %156 = ptrtoint i8* %155 to i64
  %157 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %156)
  %158 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call137 = call i8* @t_strcpy(i8* %157, i8* %158)
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.30, i64 0, i64 0))
  %159 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %160 = load i8*, i8** %value_type, align 8
  %161 = ptrtoint %Tstruct.json_object_t_t* %159 to i32
  %162 = call i8* @c_fetch_pointer_from_offset(i32 %161)
  %163 = call i1 @c_isTaintedPointerToTaintedMem(i8* %162)
  br i1 %163, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %if.end136
  %164 = bitcast i8* %162 to %Tstruct.json_object_t_t*
  %165 = ptrtoint i8* %160 to i32
  %166 = call i8* @c_fetch_pointer_from_offset(i32 %165)
  %167 = call i1 @c_isTaintedPointerToTaintedMem(i8* %166)
  br i1 %167, label %_Dynamic_check.succeeded142, label %_Dynamic_check.failed141

_Dynamic_check.succeeded142:                      ; preds = %_Dynamic_check.succeeded140
  %call143 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %164, i8* %166, i32 3)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then145, label %if.else148

if.then145:                                       ; preds = %_Dynamic_check.succeeded142
  %168 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call146 = call i32 @puts(i8* %168)
  %169 = load i32, i32* @tests_passed, align 4
  %inc147 = add nsw i32 %169, 1
  store i32 %inc147, i32* @tests_passed, align 4
  br label %if.end151

_Dynamic_check.failed139:                         ; preds = %if.end136
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed141:                         ; preds = %_Dynamic_check.succeeded140
  call void @llvm.trap() #6
  unreachable

if.else148:                                       ; preds = %_Dynamic_check.succeeded142
  %170 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call149 = call i32 @puts(i8* %170)
  %171 = load i32, i32* @tests_failed, align 4
  %inc150 = add nsw i32 %171, 1
  store i32 %inc150, i32* @tests_failed, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %if.then145
  %172 = load i8*, i8** %value_type, align 8
  %173 = ptrtoint i8* %172 to i64
  %174 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %173)
  %175 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call152 = call i8* @t_strcpy(i8* %174, i8* %175)
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0))
  %176 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %177 = load i8*, i8** %value_type, align 8
  %178 = ptrtoint %Tstruct.json_object_t_t* %176 to i32
  %179 = call i8* @c_fetch_pointer_from_offset(i32 %178)
  %180 = call i1 @c_isTaintedPointerToTaintedMem(i8* %179)
  br i1 %180, label %_Dynamic_check.succeeded155, label %_Dynamic_check.failed154

_Dynamic_check.succeeded155:                      ; preds = %if.end151
  %181 = bitcast i8* %179 to %Tstruct.json_object_t_t*
  %182 = ptrtoint i8* %177 to i32
  %183 = call i8* @c_fetch_pointer_from_offset(i32 %182)
  %184 = call i1 @c_isTaintedPointerToTaintedMem(i8* %183)
  br i1 %184, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded155
  %call158 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %181, i8* %183, i32 3)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.else163, label %if.then160

if.then160:                                       ; preds = %_Dynamic_check.succeeded157
  %185 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call161 = call i32 @puts(i8* %185)
  %186 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %186, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed154:                         ; preds = %if.end151
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded155
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %_Dynamic_check.succeeded157
  %187 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call164 = call i32 @puts(i8* %187)
  %188 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %188, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %189 = load i8*, i8** %value_type, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %190)
  %192 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.32 to i64))
  %call167 = call i8* @t_strcpy(i8* %191, i8* %192)
  %call168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 175, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i64 0, i64 0))
  %193 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %194 = load i8*, i8** %value_type, align 8
  %195 = ptrtoint %Tstruct.json_object_t_t* %193 to i32
  %196 = call i8* @c_fetch_pointer_from_offset(i32 %195)
  %197 = call i1 @c_isTaintedPointerToTaintedMem(i8* %196)
  br i1 %197, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.end166
  %198 = bitcast i8* %196 to %Tstruct.json_object_t_t*
  %199 = ptrtoint i8* %194 to i32
  %200 = call i8* @c_fetch_pointer_from_offset(i32 %199)
  %201 = call i1 @c_isTaintedPointerToTaintedMem(i8* %200)
  br i1 %201, label %_Dynamic_check.succeeded172, label %_Dynamic_check.failed171

_Dynamic_check.succeeded172:                      ; preds = %_Dynamic_check.succeeded170
  %call173 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %198, i8* %200, i32 6)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %_Dynamic_check.succeeded172
  %202 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call176 = call i32 @puts(i8* %202)
  %203 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %203, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

_Dynamic_check.failed169:                         ; preds = %if.end166
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed171:                         ; preds = %_Dynamic_check.succeeded170
  call void @llvm.trap() #6
  unreachable

if.else178:                                       ; preds = %_Dynamic_check.succeeded172
  %204 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call179 = call i32 @puts(i8* %204)
  %205 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %205, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %206 = load i8*, i8** %value_type, align 8
  %207 = ptrtoint i8* %206 to i64
  %208 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %207)
  %209 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call182 = call i8* @t_strcpy(i8* %208, i8* %209)
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0))
  %210 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %211 = load i8*, i8** %value_type, align 8
  %212 = ptrtoint %Tstruct.json_object_t_t* %210 to i32
  %213 = call i8* @c_fetch_pointer_from_offset(i32 %212)
  %214 = call i1 @c_isTaintedPointerToTaintedMem(i8* %213)
  br i1 %214, label %_Dynamic_check.succeeded185, label %_Dynamic_check.failed184

_Dynamic_check.succeeded185:                      ; preds = %if.end181
  %215 = bitcast i8* %213 to %Tstruct.json_object_t_t*
  %216 = ptrtoint i8* %211 to i32
  %217 = call i8* @c_fetch_pointer_from_offset(i32 %216)
  %218 = call i1 @c_isTaintedPointerToTaintedMem(i8* %217)
  br i1 %218, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded185
  %call188 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %215, i8* %217, i32 6)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.else193, label %if.then190

if.then190:                                       ; preds = %_Dynamic_check.succeeded187
  %219 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call191 = call i32 @puts(i8* %219)
  %220 = load i32, i32* @tests_passed, align 4
  %inc192 = add nsw i32 %220, 1
  store i32 %inc192, i32* @tests_passed, align 4
  br label %if.end196

_Dynamic_check.failed184:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed186:                         ; preds = %_Dynamic_check.succeeded185
  call void @llvm.trap() #6
  unreachable

if.else193:                                       ; preds = %_Dynamic_check.succeeded187
  %221 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call194 = call i32 @puts(i8* %221)
  %222 = load i32, i32* @tests_failed, align 4
  %inc195 = add nsw i32 %222, 1
  store i32 %inc195, i32* @tests_failed, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.else193, %if.then190
  %223 = load i8*, i8** %value_type, align 8
  %224 = ptrtoint i8* %223 to i64
  %225 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %224)
  %226 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.35 to i64))
  %call197 = call i8* @t_strcpy(i8* %225, i8* %226)
  %call198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.36, i64 0, i64 0))
  %227 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %228 = load i8*, i8** %value_type, align 8
  %229 = ptrtoint %Tstruct.json_object_t_t* %227 to i32
  %230 = call i8* @c_fetch_pointer_from_offset(i32 %229)
  %231 = call i1 @c_isTaintedPointerToTaintedMem(i8* %230)
  br i1 %231, label %_Dynamic_check.succeeded200, label %_Dynamic_check.failed199

_Dynamic_check.succeeded200:                      ; preds = %if.end196
  %232 = bitcast i8* %230 to %Tstruct.json_object_t_t*
  %233 = ptrtoint i8* %228 to i32
  %234 = call i8* @c_fetch_pointer_from_offset(i32 %233)
  %235 = call i1 @c_isTaintedPointerToTaintedMem(i8* %234)
  br i1 %235, label %_Dynamic_check.succeeded202, label %_Dynamic_check.failed201

_Dynamic_check.succeeded202:                      ; preds = %_Dynamic_check.succeeded200
  %call203 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %232, i8* %234, i32 1)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then205, label %if.else208

if.then205:                                       ; preds = %_Dynamic_check.succeeded202
  %236 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call206 = call i32 @puts(i8* %236)
  %237 = load i32, i32* @tests_passed, align 4
  %inc207 = add nsw i32 %237, 1
  store i32 %inc207, i32* @tests_passed, align 4
  br label %if.end211

_Dynamic_check.failed199:                         ; preds = %if.end196
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed201:                         ; preds = %_Dynamic_check.succeeded200
  call void @llvm.trap() #6
  unreachable

if.else208:                                       ; preds = %_Dynamic_check.succeeded202
  %238 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call209 = call i32 @puts(i8* %238)
  %239 = load i32, i32* @tests_failed, align 4
  %inc210 = add nsw i32 %239, 1
  store i32 %inc210, i32* @tests_failed, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.else208, %if.then205
  %240 = load i8*, i8** %value_type, align 8
  %241 = ptrtoint i8* %240 to i64
  %242 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %241)
  %243 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.21 to i64))
  %call212 = call i8* @t_strcpy(i8* %242, i8* %243)
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 181, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i64 0, i64 0))
  %244 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %245 = load i8*, i8** %value_type, align 8
  %246 = ptrtoint %Tstruct.json_object_t_t* %244 to i32
  %247 = call i8* @c_fetch_pointer_from_offset(i32 %246)
  %248 = call i1 @c_isTaintedPointerToTaintedMem(i8* %247)
  br i1 %248, label %_Dynamic_check.succeeded215, label %_Dynamic_check.failed214

_Dynamic_check.succeeded215:                      ; preds = %if.end211
  %249 = bitcast i8* %247 to %Tstruct.json_object_t_t*
  %250 = ptrtoint i8* %245 to i32
  %251 = call i8* @c_fetch_pointer_from_offset(i32 %250)
  %252 = call i1 @c_isTaintedPointerToTaintedMem(i8* %251)
  br i1 %252, label %_Dynamic_check.succeeded217, label %_Dynamic_check.failed216

_Dynamic_check.succeeded217:                      ; preds = %_Dynamic_check.succeeded215
  %call218 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %249, i8* %251, i32 1)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.else223, label %if.then220

if.then220:                                       ; preds = %_Dynamic_check.succeeded217
  %253 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call221 = call i32 @puts(i8* %253)
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
  %255 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call224 = call i32 @puts(i8* %255)
  %256 = load i32, i32* @tests_failed, align 4
  %inc225 = add nsw i32 %256, 1
  store i32 %inc225, i32* @tests_failed, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.else223, %if.then220
  %257 = load i8*, i8** %value_type, align 8
  %258 = ptrtoint i8* %257 to i64
  %259 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %258)
  %260 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call227 = call i8* @t_strcpy(i8* %259, i8* %260)
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  %261 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %262 = load i8*, i8** %value_type, align 8
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
  %270 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call236 = call i32 @puts(i8* %270)
  %271 = load i32, i32* @tests_passed, align 4
  %inc237 = add nsw i32 %271, 1
  store i32 %inc237, i32* @tests_passed, align 4
  br label %if.end241

_Dynamic_check.failed229:                         ; preds = %if.end226
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed231:                         ; preds = %_Dynamic_check.succeeded230
  call void @llvm.trap() #6
  unreachable

if.else238:                                       ; preds = %_Dynamic_check.succeeded232
  %272 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call239 = call i32 @puts(i8* %272)
  %273 = load i32, i32* @tests_failed, align 4
  %inc240 = add nsw i32 %273, 1
  store i32 %inc240, i32* @tests_failed, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.else238, %if.then235
  %274 = load i8*, i8** %value_type, align 8
  %275 = ptrtoint i8* %274 to i64
  %276 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %275)
  %277 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.40 to i64))
  %call242 = call i8* @t_strcpy(i8* %276, i8* %277)
  %call243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0))
  %278 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %279 = load i8*, i8** %value_type, align 8
  %280 = ptrtoint %Tstruct.json_object_t_t* %278 to i32
  %281 = call i8* @c_fetch_pointer_from_offset(i32 %280)
  %282 = call i1 @c_isTaintedPointerToTaintedMem(i8* %281)
  br i1 %282, label %_Dynamic_check.succeeded245, label %_Dynamic_check.failed244

_Dynamic_check.succeeded245:                      ; preds = %if.end241
  %283 = bitcast i8* %281 to %Tstruct.json_object_t_t*
  %284 = ptrtoint i8* %279 to i32
  %285 = call i8* @c_fetch_pointer_from_offset(i32 %284)
  %286 = call i1 @c_isTaintedPointerToTaintedMem(i8* %285)
  br i1 %286, label %_Dynamic_check.succeeded247, label %_Dynamic_check.failed246

_Dynamic_check.succeeded247:                      ; preds = %_Dynamic_check.succeeded245
  %call248 = call i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %283, i8* %285)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.else253, label %if.then250

if.then250:                                       ; preds = %_Dynamic_check.succeeded247
  %287 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call251 = call i32 @puts(i8* %287)
  %288 = load i32, i32* @tests_passed, align 4
  %inc252 = add nsw i32 %288, 1
  store i32 %inc252, i32* @tests_passed, align 4
  br label %if.end256

_Dynamic_check.failed244:                         ; preds = %if.end241
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed246:                         ; preds = %_Dynamic_check.succeeded245
  call void @llvm.trap() #6
  unreachable

if.else253:                                       ; preds = %_Dynamic_check.succeeded247
  %289 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call254 = call i32 @puts(i8* %289)
  %290 = load i32, i32* @tests_failed, align 4
  %inc255 = add nsw i32 %290, 1
  store i32 %inc255, i32* @tests_failed, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else253, %if.then250
  %291 = load i8*, i8** %value_type, align 8
  %292 = ptrtoint i8* %291 to i64
  %293 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %292)
  %294 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.42 to i64))
  %call257 = call i8* @t_strcpy(i8* %293, i8* %294)
  %call258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i64 0, i64 0))
  %295 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %296 = load i8*, i8** %value_type, align 8
  %297 = ptrtoint %Tstruct.json_object_t_t* %295 to i32
  %298 = call i8* @c_fetch_pointer_from_offset(i32 %297)
  %299 = call i1 @c_isTaintedPointerToTaintedMem(i8* %298)
  br i1 %299, label %_Dynamic_check.succeeded260, label %_Dynamic_check.failed259

_Dynamic_check.succeeded260:                      ; preds = %if.end256
  %300 = bitcast i8* %298 to %Tstruct.json_object_t_t*
  %301 = ptrtoint i8* %296 to i32
  %302 = call i8* @c_fetch_pointer_from_offset(i32 %301)
  %303 = call i1 @c_isTaintedPointerToTaintedMem(i8* %302)
  br i1 %303, label %_Dynamic_check.succeeded262, label %_Dynamic_check.failed261

_Dynamic_check.succeeded262:                      ; preds = %_Dynamic_check.succeeded260
  %call263 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %300, i8* %302, i32 4)
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.then265, label %if.else268

if.then265:                                       ; preds = %_Dynamic_check.succeeded262
  %304 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call266 = call i32 @puts(i8* %304)
  %305 = load i32, i32* @tests_passed, align 4
  %inc267 = add nsw i32 %305, 1
  store i32 %inc267, i32* @tests_passed, align 4
  br label %if.end271

_Dynamic_check.failed259:                         ; preds = %if.end256
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed261:                         ; preds = %_Dynamic_check.succeeded260
  call void @llvm.trap() #6
  unreachable

if.else268:                                       ; preds = %_Dynamic_check.succeeded262
  %306 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call269 = call i32 @puts(i8* %306)
  %307 = load i32, i32* @tests_failed, align 4
  %inc270 = add nsw i32 %307, 1
  store i32 %inc270, i32* @tests_failed, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else268, %if.then265
  %308 = load i8*, i8** %value_type, align 8
  %309 = ptrtoint i8* %308 to i64
  %310 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %309)
  %311 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call272 = call i8* @t_strcpy(i8* %310, i8* %311)
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0))
  %312 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %313 = load i8*, i8** %value_type, align 8
  %314 = ptrtoint %Tstruct.json_object_t_t* %312 to i32
  %315 = call i8* @c_fetch_pointer_from_offset(i32 %314)
  %316 = call i1 @c_isTaintedPointerToTaintedMem(i8* %315)
  br i1 %316, label %_Dynamic_check.succeeded275, label %_Dynamic_check.failed274

_Dynamic_check.succeeded275:                      ; preds = %if.end271
  %317 = bitcast i8* %315 to %Tstruct.json_object_t_t*
  %318 = ptrtoint i8* %313 to i32
  %319 = call i8* @c_fetch_pointer_from_offset(i32 %318)
  %320 = call i1 @c_isTaintedPointerToTaintedMem(i8* %319)
  br i1 %320, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %_Dynamic_check.succeeded275
  %call278 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %317, i8* %319, i32 4)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.else283, label %if.then280

if.then280:                                       ; preds = %_Dynamic_check.succeeded277
  %321 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call281 = call i32 @puts(i8* %321)
  %322 = load i32, i32* @tests_passed, align 4
  %inc282 = add nsw i32 %322, 1
  store i32 %inc282, i32* @tests_passed, align 4
  br label %if.end286

_Dynamic_check.failed274:                         ; preds = %if.end271
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed276:                         ; preds = %_Dynamic_check.succeeded275
  call void @llvm.trap() #6
  unreachable

if.else283:                                       ; preds = %_Dynamic_check.succeeded277
  %323 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call284 = call i32 @puts(i8* %323)
  %324 = load i32, i32* @tests_failed, align 4
  %inc285 = add nsw i32 %324, 1
  store i32 %inc285, i32* @tests_failed, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.else283, %if.then280
  %325 = load i8*, i8** %value_type, align 8
  %326 = ptrtoint i8* %325 to i64
  %327 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %326)
  %328 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call287 = call i8* @t_strcpy(i8* %327, i8* %328)
  %call288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0))
  %329 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %330 = load i8*, i8** %value_type, align 8
  %331 = ptrtoint %Tstruct.json_object_t_t* %329 to i32
  %332 = call i8* @c_fetch_pointer_from_offset(i32 %331)
  %333 = call i1 @c_isTaintedPointerToTaintedMem(i8* %332)
  br i1 %333, label %_Dynamic_check.succeeded290, label %_Dynamic_check.failed289

_Dynamic_check.succeeded290:                      ; preds = %if.end286
  %334 = bitcast i8* %332 to %Tstruct.json_object_t_t*
  %335 = ptrtoint i8* %330 to i32
  %336 = call i8* @c_fetch_pointer_from_offset(i32 %335)
  %337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %336)
  br i1 %337, label %_Dynamic_check.succeeded292, label %_Dynamic_check.failed291

_Dynamic_check.succeeded292:                      ; preds = %_Dynamic_check.succeeded290
  %call293 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %334, i8* %336, i32 5)
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then295, label %if.else298

if.then295:                                       ; preds = %_Dynamic_check.succeeded292
  %338 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call296 = call i32 @puts(i8* %338)
  %339 = load i32, i32* @tests_passed, align 4
  %inc297 = add nsw i32 %339, 1
  store i32 %inc297, i32* @tests_passed, align 4
  br label %if.end301

_Dynamic_check.failed289:                         ; preds = %if.end286
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed291:                         ; preds = %_Dynamic_check.succeeded290
  call void @llvm.trap() #6
  unreachable

if.else298:                                       ; preds = %_Dynamic_check.succeeded292
  %340 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call299 = call i32 @puts(i8* %340)
  %341 = load i32, i32* @tests_failed, align 4
  %inc300 = add nsw i32 %341, 1
  store i32 %inc300, i32* @tests_failed, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.else298, %if.then295
  %342 = load i8*, i8** %value_type, align 8
  %343 = ptrtoint i8* %342 to i64
  %344 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %343)
  %345 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.42 to i64))
  %call302 = call i8* @t_strcpy(i8* %344, i8* %345)
  %call303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.46, i64 0, i64 0))
  %346 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %347 = load i8*, i8** %value_type, align 8
  %348 = ptrtoint %Tstruct.json_object_t_t* %346 to i32
  %349 = call i8* @c_fetch_pointer_from_offset(i32 %348)
  %350 = call i1 @c_isTaintedPointerToTaintedMem(i8* %349)
  br i1 %350, label %_Dynamic_check.succeeded305, label %_Dynamic_check.failed304

_Dynamic_check.succeeded305:                      ; preds = %if.end301
  %351 = bitcast i8* %349 to %Tstruct.json_object_t_t*
  %352 = ptrtoint i8* %347 to i32
  %353 = call i8* @c_fetch_pointer_from_offset(i32 %352)
  %354 = call i1 @c_isTaintedPointerToTaintedMem(i8* %353)
  br i1 %354, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %_Dynamic_check.succeeded305
  %call308 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %351, i8* %353, i32 5)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.else313, label %if.then310

if.then310:                                       ; preds = %_Dynamic_check.succeeded307
  %355 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call311 = call i32 @puts(i8* %355)
  %356 = load i32, i32* @tests_passed, align 4
  %inc312 = add nsw i32 %356, 1
  store i32 %inc312, i32* @tests_passed, align 4
  br label %if.end316

_Dynamic_check.failed304:                         ; preds = %if.end301
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed306:                         ; preds = %_Dynamic_check.succeeded305
  call void @llvm.trap() #6
  unreachable

if.else313:                                       ; preds = %_Dynamic_check.succeeded307
  %357 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call314 = call i32 @puts(i8* %357)
  %358 = load i32, i32* @tests_failed, align 4
  %inc315 = add nsw i32 %358, 1
  store i32 %inc315, i32* @tests_failed, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.else313, %if.then310
  %359 = load i8*, i8** %value_type, align 8
  %360 = ptrtoint i8* %359 to i64
  %361 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %360)
  %362 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.47 to i64))
  %call317 = call i8* @t_strcpy(i8* %361, i8* %362)
  %call318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0))
  %363 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %364 = load i8*, i8** %value_type, align 8
  %365 = ptrtoint %Tstruct.json_object_t_t* %363 to i32
  %366 = call i8* @c_fetch_pointer_from_offset(i32 %365)
  %367 = call i1 @c_isTaintedPointerToTaintedMem(i8* %366)
  br i1 %367, label %_Dynamic_check.succeeded320, label %_Dynamic_check.failed319

_Dynamic_check.succeeded320:                      ; preds = %if.end316
  %368 = bitcast i8* %366 to %Tstruct.json_object_t_t*
  %369 = ptrtoint i8* %364 to i32
  %370 = call i8* @c_fetch_pointer_from_offset(i32 %369)
  %371 = call i1 @c_isTaintedPointerToTaintedMem(i8* %370)
  br i1 %371, label %_Dynamic_check.succeeded322, label %_Dynamic_check.failed321

_Dynamic_check.succeeded322:                      ; preds = %_Dynamic_check.succeeded320
  %call323 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %368, i8* %370, i32 2)
  %tobool324 = icmp ne i32 %call323, 0
  br i1 %tobool324, label %if.then325, label %if.else328

if.then325:                                       ; preds = %_Dynamic_check.succeeded322
  %372 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call326 = call i32 @puts(i8* %372)
  %373 = load i32, i32* @tests_passed, align 4
  %inc327 = add nsw i32 %373, 1
  store i32 %inc327, i32* @tests_passed, align 4
  br label %if.end331

_Dynamic_check.failed319:                         ; preds = %if.end316
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed321:                         ; preds = %_Dynamic_check.succeeded320
  call void @llvm.trap() #6
  unreachable

if.else328:                                       ; preds = %_Dynamic_check.succeeded322
  %374 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call329 = call i32 @puts(i8* %374)
  %375 = load i32, i32* @tests_failed, align 4
  %inc330 = add nsw i32 %375, 1
  store i32 %inc330, i32* @tests_failed, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.else328, %if.then325
  %376 = load i8*, i8** %value_type, align 8
  %377 = ptrtoint i8* %376 to i64
  %378 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %377)
  %379 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call332 = call i8* @t_strcpy(i8* %378, i8* %379)
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0))
  %380 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %381 = load i8*, i8** %value_type, align 8
  %382 = ptrtoint %Tstruct.json_object_t_t* %380 to i32
  %383 = call i8* @c_fetch_pointer_from_offset(i32 %382)
  %384 = call i1 @c_isTaintedPointerToTaintedMem(i8* %383)
  br i1 %384, label %_Dynamic_check.succeeded335, label %_Dynamic_check.failed334

_Dynamic_check.succeeded335:                      ; preds = %if.end331
  %385 = bitcast i8* %383 to %Tstruct.json_object_t_t*
  %386 = ptrtoint i8* %381 to i32
  %387 = call i8* @c_fetch_pointer_from_offset(i32 %386)
  %388 = call i1 @c_isTaintedPointerToTaintedMem(i8* %387)
  br i1 %388, label %_Dynamic_check.succeeded337, label %_Dynamic_check.failed336

_Dynamic_check.succeeded337:                      ; preds = %_Dynamic_check.succeeded335
  %call338 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %385, i8* %387, i32 2)
  %tobool339 = icmp ne i32 %call338, 0
  br i1 %tobool339, label %if.else343, label %if.then340

if.then340:                                       ; preds = %_Dynamic_check.succeeded337
  %389 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call341 = call i32 @puts(i8* %389)
  %390 = load i32, i32* @tests_passed, align 4
  %inc342 = add nsw i32 %390, 1
  store i32 %inc342, i32* @tests_passed, align 4
  br label %if.end346

_Dynamic_check.failed334:                         ; preds = %if.end331
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed336:                         ; preds = %_Dynamic_check.succeeded335
  call void @llvm.trap() #6
  unreachable

if.else343:                                       ; preds = %_Dynamic_check.succeeded337
  %391 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call344 = call i32 @puts(i8* %391)
  %392 = load i32, i32* @tests_failed, align 4
  %inc345 = add nsw i32 %392, 1
  store i32 %inc345, i32* @tests_failed, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.else343, %if.then340
  %393 = load i8*, i8** %value_type, align 8
  %394 = ptrtoint i8* %393 to i64
  %395 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %394)
  %396 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call347 = call i8* @t_strcpy(i8* %395, i8* %396)
  %call348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.51, i64 0, i64 0))
  %397 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %398 = load i8*, i8** %value_type, align 8
  %399 = ptrtoint %Tstruct.json_object_t_t* %397 to i32
  %400 = call i8* @c_fetch_pointer_from_offset(i32 %399)
  %401 = call i1 @c_isTaintedPointerToTaintedMem(i8* %400)
  br i1 %401, label %_Dynamic_check.succeeded350, label %_Dynamic_check.failed349

_Dynamic_check.succeeded350:                      ; preds = %if.end346
  %402 = bitcast i8* %400 to %Tstruct.json_object_t_t*
  %403 = ptrtoint i8* %398 to i32
  %404 = call i8* @c_fetch_pointer_from_offset(i32 %403)
  %405 = call i1 @c_isTaintedPointerToTaintedMem(i8* %404)
  br i1 %405, label %_Dynamic_check.succeeded352, label %_Dynamic_check.failed351

_Dynamic_check.succeeded352:                      ; preds = %_Dynamic_check.succeeded350
  %call353 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %402, i8* %404, i32 3)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.then355, label %if.else358

if.then355:                                       ; preds = %_Dynamic_check.succeeded352
  %406 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call356 = call i32 @puts(i8* %406)
  %407 = load i32, i32* @tests_passed, align 4
  %inc357 = add nsw i32 %407, 1
  store i32 %inc357, i32* @tests_passed, align 4
  br label %if.end361

_Dynamic_check.failed349:                         ; preds = %if.end346
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed351:                         ; preds = %_Dynamic_check.succeeded350
  call void @llvm.trap() #6
  unreachable

if.else358:                                       ; preds = %_Dynamic_check.succeeded352
  %408 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call359 = call i32 @puts(i8* %408)
  %409 = load i32, i32* @tests_failed, align 4
  %inc360 = add nsw i32 %409, 1
  store i32 %inc360, i32* @tests_failed, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.else358, %if.then355
  %410 = load i8*, i8** %value_type, align 8
  %411 = ptrtoint i8* %410 to i64
  %412 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %411)
  %413 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.52 to i64))
  %call362 = call i8* @t_strcpy(i8* %412, i8* %413)
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0))
  %414 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %415 = load i8*, i8** %value_type, align 8
  %416 = ptrtoint %Tstruct.json_object_t_t* %414 to i32
  %417 = call i8* @c_fetch_pointer_from_offset(i32 %416)
  %418 = call i1 @c_isTaintedPointerToTaintedMem(i8* %417)
  br i1 %418, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %if.end361
  %419 = bitcast i8* %417 to %Tstruct.json_object_t_t*
  %420 = ptrtoint i8* %415 to i32
  %421 = call i8* @c_fetch_pointer_from_offset(i32 %420)
  %422 = call i1 @c_isTaintedPointerToTaintedMem(i8* %421)
  br i1 %422, label %_Dynamic_check.succeeded367, label %_Dynamic_check.failed366

_Dynamic_check.succeeded367:                      ; preds = %_Dynamic_check.succeeded365
  %call368 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %419, i8* %421, i32 3)
  %tobool369 = icmp ne i32 %call368, 0
  br i1 %tobool369, label %if.else373, label %if.then370

if.then370:                                       ; preds = %_Dynamic_check.succeeded367
  %423 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call371 = call i32 @puts(i8* %423)
  %424 = load i32, i32* @tests_passed, align 4
  %inc372 = add nsw i32 %424, 1
  store i32 %inc372, i32* @tests_passed, align 4
  br label %if.end376

_Dynamic_check.failed364:                         ; preds = %if.end361
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed366:                         ; preds = %_Dynamic_check.succeeded365
  call void @llvm.trap() #6
  unreachable

if.else373:                                       ; preds = %_Dynamic_check.succeeded367
  %425 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call374 = call i32 @puts(i8* %425)
  %426 = load i32, i32* @tests_failed, align 4
  %inc375 = add nsw i32 %426, 1
  store i32 %inc375, i32* @tests_failed, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.else373, %if.then370
  %427 = load i8*, i8** %value_type, align 8
  %428 = ptrtoint i8* %427 to i64
  %429 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %428)
  %430 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.54 to i64))
  %call377 = call i8* @t_strcpy(i8* %429, i8* %430)
  %call378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0))
  %431 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %432 = load i8*, i8** %value_type, align 8
  %433 = ptrtoint %Tstruct.json_object_t_t* %431 to i32
  %434 = call i8* @c_fetch_pointer_from_offset(i32 %433)
  %435 = call i1 @c_isTaintedPointerToTaintedMem(i8* %434)
  br i1 %435, label %_Dynamic_check.succeeded380, label %_Dynamic_check.failed379

_Dynamic_check.succeeded380:                      ; preds = %if.end376
  %436 = bitcast i8* %434 to %Tstruct.json_object_t_t*
  %437 = ptrtoint i8* %432 to i32
  %438 = call i8* @c_fetch_pointer_from_offset(i32 %437)
  %439 = call i1 @c_isTaintedPointerToTaintedMem(i8* %438)
  br i1 %439, label %_Dynamic_check.succeeded382, label %_Dynamic_check.failed381

_Dynamic_check.succeeded382:                      ; preds = %_Dynamic_check.succeeded380
  %call383 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %436, i8* %438, i32 6)
  %tobool384 = icmp ne i32 %call383, 0
  br i1 %tobool384, label %if.then385, label %if.else388

if.then385:                                       ; preds = %_Dynamic_check.succeeded382
  %440 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call386 = call i32 @puts(i8* %440)
  %441 = load i32, i32* @tests_passed, align 4
  %inc387 = add nsw i32 %441, 1
  store i32 %inc387, i32* @tests_passed, align 4
  br label %if.end391

_Dynamic_check.failed379:                         ; preds = %if.end376
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed381:                         ; preds = %_Dynamic_check.succeeded380
  call void @llvm.trap() #6
  unreachable

if.else388:                                       ; preds = %_Dynamic_check.succeeded382
  %442 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call389 = call i32 @puts(i8* %442)
  %443 = load i32, i32* @tests_failed, align 4
  %inc390 = add nsw i32 %443, 1
  store i32 %inc390, i32* @tests_failed, align 4
  br label %if.end391

if.end391:                                        ; preds = %if.else388, %if.then385
  %444 = load i8*, i8** %value_type, align 8
  %445 = ptrtoint i8* %444 to i64
  %446 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %445)
  %447 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call392 = call i8* @t_strcpy(i8* %446, i8* %447)
  %call393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.56, i64 0, i64 0))
  %448 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %449 = load i8*, i8** %value_type, align 8
  %450 = ptrtoint %Tstruct.json_object_t_t* %448 to i32
  %451 = call i8* @c_fetch_pointer_from_offset(i32 %450)
  %452 = call i1 @c_isTaintedPointerToTaintedMem(i8* %451)
  br i1 %452, label %_Dynamic_check.succeeded395, label %_Dynamic_check.failed394

_Dynamic_check.succeeded395:                      ; preds = %if.end391
  %453 = bitcast i8* %451 to %Tstruct.json_object_t_t*
  %454 = ptrtoint i8* %449 to i32
  %455 = call i8* @c_fetch_pointer_from_offset(i32 %454)
  %456 = call i1 @c_isTaintedPointerToTaintedMem(i8* %455)
  br i1 %456, label %_Dynamic_check.succeeded397, label %_Dynamic_check.failed396

_Dynamic_check.succeeded397:                      ; preds = %_Dynamic_check.succeeded395
  %call398 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %453, i8* %455, i32 6)
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.else403, label %if.then400

if.then400:                                       ; preds = %_Dynamic_check.succeeded397
  %457 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call401 = call i32 @puts(i8* %457)
  %458 = load i32, i32* @tests_passed, align 4
  %inc402 = add nsw i32 %458, 1
  store i32 %inc402, i32* @tests_passed, align 4
  br label %if.end406

_Dynamic_check.failed394:                         ; preds = %if.end391
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed396:                         ; preds = %_Dynamic_check.succeeded395
  call void @llvm.trap() #6
  unreachable

if.else403:                                       ; preds = %_Dynamic_check.succeeded397
  %459 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call404 = call i32 @puts(i8* %459)
  %460 = load i32, i32* @tests_failed, align 4
  %inc405 = add nsw i32 %460, 1
  store i32 %inc405, i32* @tests_failed, align 4
  br label %if.end406

if.end406:                                        ; preds = %if.else403, %if.then400
  %461 = load i8*, i8** %value_type, align 8
  %462 = ptrtoint i8* %461 to i64
  %463 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %462)
  %464 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.57 to i64))
  %call407 = call i8* @t_strcpy(i8* %463, i8* %464)
  %call408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 208, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.58, i64 0, i64 0))
  %465 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %466 = load i8*, i8** %value_type, align 8
  %467 = ptrtoint %Tstruct.json_object_t_t* %465 to i32
  %468 = call i8* @c_fetch_pointer_from_offset(i32 %467)
  %469 = call i1 @c_isTaintedPointerToTaintedMem(i8* %468)
  br i1 %469, label %_Dynamic_check.succeeded410, label %_Dynamic_check.failed409

_Dynamic_check.succeeded410:                      ; preds = %if.end406
  %470 = bitcast i8* %468 to %Tstruct.json_object_t_t*
  %471 = ptrtoint i8* %466 to i32
  %472 = call i8* @c_fetch_pointer_from_offset(i32 %471)
  %473 = call i1 @c_isTaintedPointerToTaintedMem(i8* %472)
  br i1 %473, label %_Dynamic_check.succeeded412, label %_Dynamic_check.failed411

_Dynamic_check.succeeded412:                      ; preds = %_Dynamic_check.succeeded410
  %call413 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %470, i8* %472, i32 1)
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then415, label %if.else418

if.then415:                                       ; preds = %_Dynamic_check.succeeded412
  %474 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call416 = call i32 @puts(i8* %474)
  %475 = load i32, i32* @tests_passed, align 4
  %inc417 = add nsw i32 %475, 1
  store i32 %inc417, i32* @tests_passed, align 4
  br label %if.end421

_Dynamic_check.failed409:                         ; preds = %if.end406
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed411:                         ; preds = %_Dynamic_check.succeeded410
  call void @llvm.trap() #6
  unreachable

if.else418:                                       ; preds = %_Dynamic_check.succeeded412
  %476 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call419 = call i32 @puts(i8* %476)
  %477 = load i32, i32* @tests_failed, align 4
  %inc420 = add nsw i32 %477, 1
  store i32 %inc420, i32* @tests_failed, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.else418, %if.then415
  %478 = load i8*, i8** %value_type, align 8
  %479 = ptrtoint i8* %478 to i64
  %480 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %479)
  %481 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.42 to i64))
  %call422 = call i8* @t_strcpy(i8* %480, i8* %481)
  %call423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 210, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.59, i64 0, i64 0))
  %482 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %483 = load i8*, i8** %value_type, align 8
  %484 = ptrtoint %Tstruct.json_object_t_t* %482 to i32
  %485 = call i8* @c_fetch_pointer_from_offset(i32 %484)
  %486 = call i1 @c_isTaintedPointerToTaintedMem(i8* %485)
  br i1 %486, label %_Dynamic_check.succeeded425, label %_Dynamic_check.failed424

_Dynamic_check.succeeded425:                      ; preds = %if.end421
  %487 = bitcast i8* %485 to %Tstruct.json_object_t_t*
  %488 = ptrtoint i8* %483 to i32
  %489 = call i8* @c_fetch_pointer_from_offset(i32 %488)
  %490 = call i1 @c_isTaintedPointerToTaintedMem(i8* %489)
  br i1 %490, label %_Dynamic_check.succeeded427, label %_Dynamic_check.failed426

_Dynamic_check.succeeded427:                      ; preds = %_Dynamic_check.succeeded425
  %call428 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %487, i8* %489, i32 1)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.else433, label %if.then430

if.then430:                                       ; preds = %_Dynamic_check.succeeded427
  %491 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call431 = call i32 @puts(i8* %491)
  %492 = load i32, i32* @tests_passed, align 4
  %inc432 = add nsw i32 %492, 1
  store i32 %inc432, i32* @tests_passed, align 4
  br label %if.end436

_Dynamic_check.failed424:                         ; preds = %if.end421
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed426:                         ; preds = %_Dynamic_check.succeeded425
  call void @llvm.trap() #6
  unreachable

if.else433:                                       ; preds = %_Dynamic_check.succeeded427
  %493 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call434 = call i32 @puts(i8* %493)
  %494 = load i32, i32* @tests_failed, align 4
  %inc435 = add nsw i32 %494, 1
  store i32 %inc435, i32* @tests_failed, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.else433, %if.then430
  %495 = load i8*, i8** %value_type, align 8
  %496 = ptrtoint i8* %495 to i64
  %497 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %496)
  %498 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call437 = call i8* @t_strcpy(i8* %497, i8* %498)
  %call438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 213, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0))
  %499 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %500 = load i8*, i8** %value_type, align 8
  %501 = ptrtoint %Tstruct.json_object_t_t* %499 to i32
  %502 = call i8* @c_fetch_pointer_from_offset(i32 %501)
  %503 = call i1 @c_isTaintedPointerToTaintedMem(i8* %502)
  br i1 %503, label %_Dynamic_check.succeeded440, label %_Dynamic_check.failed439

_Dynamic_check.succeeded440:                      ; preds = %if.end436
  %504 = bitcast i8* %502 to %Tstruct.json_object_t_t*
  %505 = ptrtoint i8* %500 to i32
  %506 = call i8* @c_fetch_pointer_from_offset(i32 %505)
  %507 = call i1 @c_isTaintedPointerToTaintedMem(i8* %506)
  br i1 %507, label %_Dynamic_check.succeeded442, label %_Dynamic_check.failed441

_Dynamic_check.succeeded442:                      ; preds = %_Dynamic_check.succeeded440
  %call443 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %504, i8* %506)
  %tobool444 = icmp ne i8* %call443, null
  br i1 %tobool444, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded442
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %508 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %509 = load i8*, i8** %value_type, align 8
  %510 = ptrtoint %Tstruct.json_object_t_t* %508 to i32
  %511 = call i8* @c_fetch_pointer_from_offset(i32 %510)
  %512 = call i1 @c_isTaintedPointerToTaintedMem(i8* %511)
  br i1 %512, label %_Dynamic_check.succeeded446, label %_Dynamic_check.failed445

_Dynamic_check.succeeded446:                      ; preds = %cond.true
  %513 = bitcast i8* %511 to %Tstruct.json_object_t_t*
  %514 = ptrtoint i8* %509 to i32
  %515 = call i8* @c_fetch_pointer_from_offset(i32 %514)
  %516 = call i1 @c_isTaintedPointerToTaintedMem(i8* %515)
  br i1 %516, label %_Dynamic_check.succeeded448, label %_Dynamic_check.failed447

_Dynamic_check.succeeded448:                      ; preds = %_Dynamic_check.succeeded446
  %call449 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %513, i8* %515)
  %517 = ptrtoint i8* %call449 to i64
  %518 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %517)
  %519 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.61 to i64))
  %call450 = call i32 @t_strcmp(i8* %518, i8* %519)
  %cmp451 = icmp eq i32 %call450, 0
  br i1 %cmp451, label %if.then452, label %if.else455

cond.false:                                       ; preds = %land.lhs.true, %_Dynamic_check.succeeded442
  br i1 false, label %if.then452, label %if.else455

if.then452:                                       ; preds = %cond.false, %_Dynamic_check.succeeded448
  %520 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call453 = call i32 @puts(i8* %520)
  %521 = load i32, i32* @tests_passed, align 4
  %inc454 = add nsw i32 %521, 1
  store i32 %inc454, i32* @tests_passed, align 4
  br label %if.end458

_Dynamic_check.failed439:                         ; preds = %if.end436
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed441:                         ; preds = %_Dynamic_check.succeeded440
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed445:                         ; preds = %cond.true
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed447:                         ; preds = %_Dynamic_check.succeeded446
  call void @llvm.trap() #6
  unreachable

if.else455:                                       ; preds = %cond.false, %_Dynamic_check.succeeded448
  %522 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call456 = call i32 @puts(i8* %522)
  %523 = load i32, i32* @tests_failed, align 4
  %inc457 = add nsw i32 %523, 1
  store i32 %inc457, i32* @tests_failed, align 4
  br label %if.end458

if.end458:                                        ; preds = %if.else455, %if.then452
  %524 = load i8*, i8** %value_type, align 8
  %525 = ptrtoint i8* %524 to i64
  %526 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %525)
  %527 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.62 to i64))
  %call459 = call i8* @t_strcpy(i8* %526, i8* %527)
  %call460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 215, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0))
  %528 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %529 = load i8*, i8** %value_type, align 8
  %530 = ptrtoint %Tstruct.json_object_t_t* %528 to i32
  %531 = call i8* @c_fetch_pointer_from_offset(i32 %530)
  %532 = call i1 @c_isTaintedPointerToTaintedMem(i8* %531)
  br i1 %532, label %_Dynamic_check.succeeded462, label %_Dynamic_check.failed461

_Dynamic_check.succeeded462:                      ; preds = %if.end458
  %533 = bitcast i8* %531 to %Tstruct.json_object_t_t*
  %534 = ptrtoint i8* %529 to i32
  %535 = call i8* @c_fetch_pointer_from_offset(i32 %534)
  %536 = call i1 @c_isTaintedPointerToTaintedMem(i8* %535)
  br i1 %536, label %_Dynamic_check.succeeded464, label %_Dynamic_check.failed463

_Dynamic_check.succeeded464:                      ; preds = %_Dynamic_check.succeeded462
  %call465 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %533, i8* %535)
  %tobool466 = icmp ne i8* %call465, null
  br i1 %tobool466, label %land.lhs.true467, label %cond.false476

land.lhs.true467:                                 ; preds = %_Dynamic_check.succeeded464
  br i1 true, label %cond.true468, label %cond.false476

cond.true468:                                     ; preds = %land.lhs.true467
  %537 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %538 = load i8*, i8** %value_type, align 8
  %539 = ptrtoint %Tstruct.json_object_t_t* %537 to i32
  %540 = call i8* @c_fetch_pointer_from_offset(i32 %539)
  %541 = call i1 @c_isTaintedPointerToTaintedMem(i8* %540)
  br i1 %541, label %_Dynamic_check.succeeded470, label %_Dynamic_check.failed469

_Dynamic_check.succeeded470:                      ; preds = %cond.true468
  %542 = bitcast i8* %540 to %Tstruct.json_object_t_t*
  %543 = ptrtoint i8* %538 to i32
  %544 = call i8* @c_fetch_pointer_from_offset(i32 %543)
  %545 = call i1 @c_isTaintedPointerToTaintedMem(i8* %544)
  br i1 %545, label %_Dynamic_check.succeeded472, label %_Dynamic_check.failed471

_Dynamic_check.succeeded472:                      ; preds = %_Dynamic_check.succeeded470
  %call473 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %542, i8* %544)
  %546 = ptrtoint i8* %call473 to i64
  %547 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %546)
  %548 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.61 to i64))
  %call474 = call i32 @t_strcmp(i8* %547, i8* %548)
  %cmp475 = icmp eq i32 %call474, 0
  br i1 %cmp475, label %if.then477, label %if.else480

cond.false476:                                    ; preds = %land.lhs.true467, %_Dynamic_check.succeeded464
  br i1 false, label %if.then477, label %if.else480

if.then477:                                       ; preds = %cond.false476, %_Dynamic_check.succeeded472
  %549 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call478 = call i32 @puts(i8* %549)
  %550 = load i32, i32* @tests_passed, align 4
  %inc479 = add nsw i32 %550, 1
  store i32 %inc479, i32* @tests_passed, align 4
  br label %if.end483

_Dynamic_check.failed461:                         ; preds = %if.end458
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed463:                         ; preds = %_Dynamic_check.succeeded462
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed469:                         ; preds = %cond.true468
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed471:                         ; preds = %_Dynamic_check.succeeded470
  call void @llvm.trap() #6
  unreachable

if.else480:                                       ; preds = %cond.false476, %_Dynamic_check.succeeded472
  %551 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call481 = call i32 @puts(i8* %551)
  %552 = load i32, i32* @tests_failed, align 4
  %inc482 = add nsw i32 %552, 1
  store i32 %inc482, i32* @tests_failed, align 4
  br label %if.end483

if.end483:                                        ; preds = %if.else480, %if.then477
  %553 = load i8*, i8** %value_type, align 8
  %554 = ptrtoint i8* %553 to i64
  %555 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %554)
  %556 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.63 to i64))
  %call484 = call i8* @t_strcpy(i8* %555, i8* %556)
  %call485 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.64, i64 0, i64 0))
  %557 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %558 = load i8*, i8** %value_type, align 8
  %559 = ptrtoint %Tstruct.json_object_t_t* %557 to i32
  %560 = call i8* @c_fetch_pointer_from_offset(i32 %559)
  %561 = call i1 @c_isTaintedPointerToTaintedMem(i8* %560)
  br i1 %561, label %_Dynamic_check.succeeded487, label %_Dynamic_check.failed486

_Dynamic_check.succeeded487:                      ; preds = %if.end483
  %562 = bitcast i8* %560 to %Tstruct.json_object_t_t*
  %563 = ptrtoint i8* %558 to i32
  %564 = call i8* @c_fetch_pointer_from_offset(i32 %563)
  %565 = call i1 @c_isTaintedPointerToTaintedMem(i8* %564)
  br i1 %565, label %_Dynamic_check.succeeded489, label %_Dynamic_check.failed488

_Dynamic_check.succeeded489:                      ; preds = %_Dynamic_check.succeeded487
  %call490 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %562, i8* %564)
  %tobool491 = icmp ne i8* %call490, null
  br i1 %tobool491, label %land.lhs.true492, label %cond.false501

land.lhs.true492:                                 ; preds = %_Dynamic_check.succeeded489
  br i1 true, label %cond.true493, label %cond.false501

cond.true493:                                     ; preds = %land.lhs.true492
  %566 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %567 = load i8*, i8** %value_type, align 8
  %568 = ptrtoint %Tstruct.json_object_t_t* %566 to i32
  %569 = call i8* @c_fetch_pointer_from_offset(i32 %568)
  %570 = call i1 @c_isTaintedPointerToTaintedMem(i8* %569)
  br i1 %570, label %_Dynamic_check.succeeded495, label %_Dynamic_check.failed494

_Dynamic_check.succeeded495:                      ; preds = %cond.true493
  %571 = bitcast i8* %569 to %Tstruct.json_object_t_t*
  %572 = ptrtoint i8* %567 to i32
  %573 = call i8* @c_fetch_pointer_from_offset(i32 %572)
  %574 = call i1 @c_isTaintedPointerToTaintedMem(i8* %573)
  br i1 %574, label %_Dynamic_check.succeeded497, label %_Dynamic_check.failed496

_Dynamic_check.succeeded497:                      ; preds = %_Dynamic_check.succeeded495
  %call498 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %571, i8* %573)
  %575 = ptrtoint i8* %call498 to i64
  %576 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %575)
  %577 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.65 to i64))
  %call499 = call i32 @t_strcmp(i8* %576, i8* %577)
  %cmp500 = icmp eq i32 %call499, 0
  br i1 %cmp500, label %if.then502, label %if.else505

cond.false501:                                    ; preds = %land.lhs.true492, %_Dynamic_check.succeeded489
  br i1 false, label %if.then502, label %if.else505

if.then502:                                       ; preds = %cond.false501, %_Dynamic_check.succeeded497
  %578 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call503 = call i32 @puts(i8* %578)
  %579 = load i32, i32* @tests_passed, align 4
  %inc504 = add nsw i32 %579, 1
  store i32 %inc504, i32* @tests_passed, align 4
  br label %if.end508

_Dynamic_check.failed486:                         ; preds = %if.end483
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed488:                         ; preds = %_Dynamic_check.succeeded487
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed494:                         ; preds = %cond.true493
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed496:                         ; preds = %_Dynamic_check.succeeded495
  call void @llvm.trap() #6
  unreachable

if.else505:                                       ; preds = %cond.false501, %_Dynamic_check.succeeded497
  %580 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call506 = call i32 @puts(i8* %580)
  %581 = load i32, i32* @tests_failed, align 4
  %inc507 = add nsw i32 %581, 1
  store i32 %inc507, i32* @tests_failed, align 4
  br label %if.end508

if.end508:                                        ; preds = %if.else505, %if.then502
  %582 = load i8*, i8** %value_type, align 8
  %583 = ptrtoint i8* %582 to i64
  %584 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %583)
  %585 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([17 x i8]* @.str.66 to i64))
  %call509 = call i8* @t_strcpy(i8* %584, i8* %585)
  %call510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 219, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.67, i64 0, i64 0))
  %586 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %587 = load i8*, i8** %value_type, align 8
  %588 = ptrtoint %Tstruct.json_object_t_t* %586 to i32
  %589 = call i8* @c_fetch_pointer_from_offset(i32 %588)
  %590 = call i1 @c_isTaintedPointerToTaintedMem(i8* %589)
  br i1 %590, label %_Dynamic_check.succeeded512, label %_Dynamic_check.failed511

_Dynamic_check.succeeded512:                      ; preds = %if.end508
  %591 = bitcast i8* %589 to %Tstruct.json_object_t_t*
  %592 = ptrtoint i8* %587 to i32
  %593 = call i8* @c_fetch_pointer_from_offset(i32 %592)
  %594 = call i1 @c_isTaintedPointerToTaintedMem(i8* %593)
  br i1 %594, label %_Dynamic_check.succeeded514, label %_Dynamic_check.failed513

_Dynamic_check.succeeded514:                      ; preds = %_Dynamic_check.succeeded512
  %call515 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %591, i8* %593)
  %tobool516 = icmp ne i8* %call515, null
  br i1 %tobool516, label %land.lhs.true517, label %cond.false526

land.lhs.true517:                                 ; preds = %_Dynamic_check.succeeded514
  br i1 true, label %cond.true518, label %cond.false526

cond.true518:                                     ; preds = %land.lhs.true517
  %595 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %596 = load i8*, i8** %value_type, align 8
  %597 = ptrtoint %Tstruct.json_object_t_t* %595 to i32
  %598 = call i8* @c_fetch_pointer_from_offset(i32 %597)
  %599 = call i1 @c_isTaintedPointerToTaintedMem(i8* %598)
  br i1 %599, label %_Dynamic_check.succeeded520, label %_Dynamic_check.failed519

_Dynamic_check.succeeded520:                      ; preds = %cond.true518
  %600 = bitcast i8* %598 to %Tstruct.json_object_t_t*
  %601 = ptrtoint i8* %596 to i32
  %602 = call i8* @c_fetch_pointer_from_offset(i32 %601)
  %603 = call i1 @c_isTaintedPointerToTaintedMem(i8* %602)
  br i1 %603, label %_Dynamic_check.succeeded522, label %_Dynamic_check.failed521

_Dynamic_check.succeeded522:                      ; preds = %_Dynamic_check.succeeded520
  %call523 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %600, i8* %602)
  %604 = ptrtoint i8* %call523 to i64
  %605 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %604)
  %606 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.68 to i64))
  %call524 = call i32 @t_strcmp(i8* %605, i8* %606)
  %cmp525 = icmp eq i32 %call524, 0
  br i1 %cmp525, label %if.then527, label %if.else530

cond.false526:                                    ; preds = %land.lhs.true517, %_Dynamic_check.succeeded514
  br i1 false, label %if.then527, label %if.else530

if.then527:                                       ; preds = %cond.false526, %_Dynamic_check.succeeded522
  %607 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call528 = call i32 @puts(i8* %607)
  %608 = load i32, i32* @tests_passed, align 4
  %inc529 = add nsw i32 %608, 1
  store i32 %inc529, i32* @tests_passed, align 4
  br label %if.end533

_Dynamic_check.failed511:                         ; preds = %if.end508
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed513:                         ; preds = %_Dynamic_check.succeeded512
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed519:                         ; preds = %cond.true518
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed521:                         ; preds = %_Dynamic_check.succeeded520
  call void @llvm.trap() #6
  unreachable

if.else530:                                       ; preds = %cond.false526, %_Dynamic_check.succeeded522
  %609 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call531 = call i32 @puts(i8* %609)
  %610 = load i32, i32* @tests_failed, align 4
  %inc532 = add nsw i32 %610, 1
  store i32 %inc532, i32* @tests_failed, align 4
  br label %if.end533

if.end533:                                        ; preds = %if.else530, %if.then527
  %611 = load i8*, i8** %value_type, align 8
  %612 = ptrtoint i8* %611 to i64
  %613 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %612)
  %614 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call534 = call i8* @t_strcpy(i8* %613, i8* %614)
  %call535 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 222, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i64 0, i64 0))
  %615 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %616 = load i8*, i8** %value_type, align 8
  %617 = ptrtoint %Tstruct.json_object_t_t* %615 to i32
  %618 = call i8* @c_fetch_pointer_from_offset(i32 %617)
  %619 = call i1 @c_isTaintedPointerToTaintedMem(i8* %618)
  br i1 %619, label %_Dynamic_check.succeeded537, label %_Dynamic_check.failed536

_Dynamic_check.succeeded537:                      ; preds = %if.end533
  %620 = bitcast i8* %618 to %Tstruct.json_object_t_t*
  %621 = ptrtoint i8* %616 to i32
  %622 = call i8* @c_fetch_pointer_from_offset(i32 %621)
  %623 = call i1 @c_isTaintedPointerToTaintedMem(i8* %622)
  br i1 %623, label %_Dynamic_check.succeeded539, label %_Dynamic_check.failed538

_Dynamic_check.succeeded539:                      ; preds = %_Dynamic_check.succeeded537
  %call540 = call double @json_object_get_number(%Tstruct.json_object_t_t* %620, i8* %622)
  %cmp541 = fcmp oeq double %call540, 1.000000e+00
  br i1 %cmp541, label %if.then542, label %if.else545

if.then542:                                       ; preds = %_Dynamic_check.succeeded539
  %624 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call543 = call i32 @puts(i8* %624)
  %625 = load i32, i32* @tests_passed, align 4
  %inc544 = add nsw i32 %625, 1
  store i32 %inc544, i32* @tests_passed, align 4
  br label %if.end548

_Dynamic_check.failed536:                         ; preds = %if.end533
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed538:                         ; preds = %_Dynamic_check.succeeded537
  call void @llvm.trap() #6
  unreachable

if.else545:                                       ; preds = %_Dynamic_check.succeeded539
  %626 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call546 = call i32 @puts(i8* %626)
  %627 = load i32, i32* @tests_failed, align 4
  %inc547 = add nsw i32 %627, 1
  store i32 %inc547, i32* @tests_failed, align 4
  br label %if.end548

if.end548:                                        ; preds = %if.else545, %if.then542
  %628 = load i8*, i8** %value_type, align 8
  %629 = ptrtoint i8* %628 to i64
  %630 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %629)
  %631 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.70 to i64))
  %call549 = call i8* @t_strcpy(i8* %630, i8* %631)
  %call550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 224, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0))
  %632 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %633 = load i8*, i8** %value_type, align 8
  %634 = ptrtoint %Tstruct.json_object_t_t* %632 to i32
  %635 = call i8* @c_fetch_pointer_from_offset(i32 %634)
  %636 = call i1 @c_isTaintedPointerToTaintedMem(i8* %635)
  br i1 %636, label %_Dynamic_check.succeeded552, label %_Dynamic_check.failed551

_Dynamic_check.succeeded552:                      ; preds = %if.end548
  %637 = bitcast i8* %635 to %Tstruct.json_object_t_t*
  %638 = ptrtoint i8* %633 to i32
  %639 = call i8* @c_fetch_pointer_from_offset(i32 %638)
  %640 = call i1 @c_isTaintedPointerToTaintedMem(i8* %639)
  br i1 %640, label %_Dynamic_check.succeeded554, label %_Dynamic_check.failed553

_Dynamic_check.succeeded554:                      ; preds = %_Dynamic_check.succeeded552
  %call555 = call double @json_object_get_number(%Tstruct.json_object_t_t* %637, i8* %639)
  %cmp556 = fcmp oeq double %call555, -1.000000e+00
  br i1 %cmp556, label %if.then557, label %if.else560

if.then557:                                       ; preds = %_Dynamic_check.succeeded554
  %641 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call558 = call i32 @puts(i8* %641)
  %642 = load i32, i32* @tests_passed, align 4
  %inc559 = add nsw i32 %642, 1
  store i32 %inc559, i32* @tests_passed, align 4
  br label %if.end563

_Dynamic_check.failed551:                         ; preds = %if.end548
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed553:                         ; preds = %_Dynamic_check.succeeded552
  call void @llvm.trap() #6
  unreachable

if.else560:                                       ; preds = %_Dynamic_check.succeeded554
  %643 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call561 = call i32 @puts(i8* %643)
  %644 = load i32, i32* @tests_failed, align 4
  %inc562 = add nsw i32 %644, 1
  store i32 %inc562, i32* @tests_failed, align 4
  br label %if.end563

if.end563:                                        ; preds = %if.else560, %if.then557
  %645 = load i8*, i8** %value_type, align 8
  %646 = ptrtoint i8* %645 to i64
  %647 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %646)
  %648 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.72 to i64))
  %call564 = call i8* @t_strcpy(i8* %647, i8* %648)
  %call565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 226, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.73, i64 0, i64 0))
  %649 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %650 = load i8*, i8** %value_type, align 8
  %651 = ptrtoint %Tstruct.json_object_t_t* %649 to i32
  %652 = call i8* @c_fetch_pointer_from_offset(i32 %651)
  %653 = call i1 @c_isTaintedPointerToTaintedMem(i8* %652)
  br i1 %653, label %_Dynamic_check.succeeded567, label %_Dynamic_check.failed566

_Dynamic_check.succeeded567:                      ; preds = %if.end563
  %654 = bitcast i8* %652 to %Tstruct.json_object_t_t*
  %655 = ptrtoint i8* %650 to i32
  %656 = call i8* @c_fetch_pointer_from_offset(i32 %655)
  %657 = call i1 @c_isTaintedPointerToTaintedMem(i8* %656)
  br i1 %657, label %_Dynamic_check.succeeded569, label %_Dynamic_check.failed568

_Dynamic_check.succeeded569:                      ; preds = %_Dynamic_check.succeeded567
  %call570 = call double @json_object_get_number(%Tstruct.json_object_t_t* %654, i8* %656)
  %sub = fsub double %call570, -3.140000e-04
  %658 = call double @llvm.fabs.f64(double %sub)
  %cmp571 = fcmp olt double %658, 0x3EB0C6F7A0B5ED8D
  br i1 %cmp571, label %if.then572, label %if.else575

if.then572:                                       ; preds = %_Dynamic_check.succeeded569
  %659 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call573 = call i32 @puts(i8* %659)
  %660 = load i32, i32* @tests_passed, align 4
  %inc574 = add nsw i32 %660, 1
  store i32 %inc574, i32* @tests_passed, align 4
  br label %if.end578

_Dynamic_check.failed566:                         ; preds = %if.end563
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed568:                         ; preds = %_Dynamic_check.succeeded567
  call void @llvm.trap() #6
  unreachable

if.else575:                                       ; preds = %_Dynamic_check.succeeded569
  %661 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call576 = call i32 @puts(i8* %661)
  %662 = load i32, i32* @tests_failed, align 4
  %inc577 = add nsw i32 %662, 1
  store i32 %inc577, i32* @tests_failed, align 4
  br label %if.end578

if.end578:                                        ; preds = %if.else575, %if.then572
  %663 = load i8*, i8** %value_type, align 8
  %664 = ptrtoint i8* %663 to i64
  %665 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %664)
  %666 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.32 to i64))
  %call579 = call i8* @t_strcpy(i8* %665, i8* %666)
  %call580 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 228, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.74, i64 0, i64 0))
  %667 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %668 = load i8*, i8** %value_type, align 8
  %669 = ptrtoint %Tstruct.json_object_t_t* %667 to i32
  %670 = call i8* @c_fetch_pointer_from_offset(i32 %669)
  %671 = call i1 @c_isTaintedPointerToTaintedMem(i8* %670)
  br i1 %671, label %_Dynamic_check.succeeded582, label %_Dynamic_check.failed581

_Dynamic_check.succeeded582:                      ; preds = %if.end578
  %672 = bitcast i8* %670 to %Tstruct.json_object_t_t*
  %673 = ptrtoint i8* %668 to i32
  %674 = call i8* @c_fetch_pointer_from_offset(i32 %673)
  %675 = call i1 @c_isTaintedPointerToTaintedMem(i8* %674)
  br i1 %675, label %_Dynamic_check.succeeded584, label %_Dynamic_check.failed583

_Dynamic_check.succeeded584:                      ; preds = %_Dynamic_check.succeeded582
  %call585 = call i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %672, i8* %674)
  %cmp586 = icmp eq i32 %call585, 1
  br i1 %cmp586, label %if.then587, label %if.else590

if.then587:                                       ; preds = %_Dynamic_check.succeeded584
  %676 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call588 = call i32 @puts(i8* %676)
  %677 = load i32, i32* @tests_passed, align 4
  %inc589 = add nsw i32 %677, 1
  store i32 %inc589, i32* @tests_passed, align 4
  br label %if.end593

_Dynamic_check.failed581:                         ; preds = %if.end578
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed583:                         ; preds = %_Dynamic_check.succeeded582
  call void @llvm.trap() #6
  unreachable

if.else590:                                       ; preds = %_Dynamic_check.succeeded584
  %678 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call591 = call i32 @puts(i8* %678)
  %679 = load i32, i32* @tests_failed, align 4
  %inc592 = add nsw i32 %679, 1
  store i32 %inc592, i32* @tests_failed, align 4
  br label %if.end593

if.end593:                                        ; preds = %if.else590, %if.then587
  %680 = load i8*, i8** %value_type, align 8
  %681 = ptrtoint i8* %680 to i64
  %682 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %681)
  %683 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.75 to i64))
  %call594 = call i8* @t_strcpy(i8* %682, i8* %683)
  %call595 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 230, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i64 0, i64 0))
  %684 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %685 = load i8*, i8** %value_type, align 8
  %686 = ptrtoint %Tstruct.json_object_t_t* %684 to i32
  %687 = call i8* @c_fetch_pointer_from_offset(i32 %686)
  %688 = call i1 @c_isTaintedPointerToTaintedMem(i8* %687)
  br i1 %688, label %_Dynamic_check.succeeded597, label %_Dynamic_check.failed596

_Dynamic_check.succeeded597:                      ; preds = %if.end593
  %689 = bitcast i8* %687 to %Tstruct.json_object_t_t*
  %690 = ptrtoint i8* %685 to i32
  %691 = call i8* @c_fetch_pointer_from_offset(i32 %690)
  %692 = call i1 @c_isTaintedPointerToTaintedMem(i8* %691)
  br i1 %692, label %_Dynamic_check.succeeded599, label %_Dynamic_check.failed598

_Dynamic_check.succeeded599:                      ; preds = %_Dynamic_check.succeeded597
  %call600 = call i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %689, i8* %691)
  %cmp601 = icmp eq i32 %call600, 0
  br i1 %cmp601, label %if.then602, label %if.else605

if.then602:                                       ; preds = %_Dynamic_check.succeeded599
  %693 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call603 = call i32 @puts(i8* %693)
  %694 = load i32, i32* @tests_passed, align 4
  %inc604 = add nsw i32 %694, 1
  store i32 %inc604, i32* @tests_passed, align 4
  br label %if.end608

_Dynamic_check.failed596:                         ; preds = %if.end593
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed598:                         ; preds = %_Dynamic_check.succeeded597
  call void @llvm.trap() #6
  unreachable

if.else605:                                       ; preds = %_Dynamic_check.succeeded599
  %695 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call606 = call i32 @puts(i8* %695)
  %696 = load i32, i32* @tests_failed, align 4
  %inc607 = add nsw i32 %696, 1
  store i32 %inc607, i32* @tests_failed, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.else605, %if.then602
  %697 = load i8*, i8** %value_type, align 8
  %698 = ptrtoint i8* %697 to i64
  %699 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %698)
  %700 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.35 to i64))
  %call609 = call i8* @t_strcpy(i8* %699, i8* %700)
  %call610 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 232, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.77, i64 0, i64 0))
  %701 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %702 = load i8*, i8** %value_type, align 8
  %703 = ptrtoint %Tstruct.json_object_t_t* %701 to i32
  %704 = call i8* @c_fetch_pointer_from_offset(i32 %703)
  %705 = call i1 @c_isTaintedPointerToTaintedMem(i8* %704)
  br i1 %705, label %_Dynamic_check.succeeded612, label %_Dynamic_check.failed611

_Dynamic_check.succeeded612:                      ; preds = %if.end608
  %706 = bitcast i8* %704 to %Tstruct.json_object_t_t*
  %707 = ptrtoint i8* %702 to i32
  %708 = call i8* @c_fetch_pointer_from_offset(i32 %707)
  %709 = call i1 @c_isTaintedPointerToTaintedMem(i8* %708)
  br i1 %709, label %_Dynamic_check.succeeded614, label %_Dynamic_check.failed613

_Dynamic_check.succeeded614:                      ; preds = %_Dynamic_check.succeeded612
  %call615 = call %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %706, i8* %708)
  %710 = ptrtoint %Tstruct.json_value_t_t* %call615 to i32
  %711 = call i8* @c_fetch_pointer_from_offset(i32 %710)
  %712 = call i1 @c_isTaintedPointerToTaintedMem(i8* %711)
  br i1 %712, label %_Dynamic_check.succeeded617, label %_Dynamic_check.failed616

_Dynamic_check.succeeded617:                      ; preds = %_Dynamic_check.succeeded614
  %713 = bitcast i8* %711 to %Tstruct.json_value_t_t*
  %call618 = call i32 @json_value_get_type(%Tstruct.json_value_t_t* %713)
  %cmp619 = icmp eq i32 %call618, 1
  br i1 %cmp619, label %if.then620, label %if.else623

if.then620:                                       ; preds = %_Dynamic_check.succeeded617
  %714 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call621 = call i32 @puts(i8* %714)
  %715 = load i32, i32* @tests_passed, align 4
  %inc622 = add nsw i32 %715, 1
  store i32 %inc622, i32* @tests_passed, align 4
  br label %if.end626

_Dynamic_check.failed611:                         ; preds = %if.end608
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed613:                         ; preds = %_Dynamic_check.succeeded612
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed616:                         ; preds = %_Dynamic_check.succeeded614
  call void @llvm.trap() #6
  unreachable

if.else623:                                       ; preds = %_Dynamic_check.succeeded617
  %716 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call624 = call i32 @puts(i8* %716)
  %717 = load i32, i32* @tests_failed, align 4
  %inc625 = add nsw i32 %717, 1
  store i32 %inc625, i32* @tests_failed, align 4
  br label %if.end626

if.end626:                                        ; preds = %if.else623, %if.then620
  %718 = load i8*, i8** %value_type, align 8
  %719 = ptrtoint i8* %718 to i64
  %720 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %719)
  %721 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call627 = call i8* @t_strcpy(i8* %720, i8* %721)
  %722 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %723 = load i8*, i8** %value_type, align 8
  %724 = ptrtoint %Tstruct.json_object_t_t* %722 to i32
  %725 = call i8* @c_fetch_pointer_from_offset(i32 %724)
  %726 = call i1 @c_isTaintedPointerToTaintedMem(i8* %725)
  br i1 %726, label %_Dynamic_check.succeeded629, label %_Dynamic_check.failed628

_Dynamic_check.succeeded629:                      ; preds = %if.end626
  %727 = bitcast i8* %725 to %Tstruct.json_object_t_t*
  %728 = ptrtoint i8* %723 to i32
  %729 = call i8* @c_fetch_pointer_from_offset(i32 %728)
  %730 = call i1 @c_isTaintedPointerToTaintedMem(i8* %729)
  br i1 %730, label %_Dynamic_check.succeeded631, label %_Dynamic_check.failed630

_Dynamic_check.succeeded631:                      ; preds = %_Dynamic_check.succeeded629
  %call632 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %727, i8* %729)
  store %Tstruct.json_array_t_t* %call632, %Tstruct.json_array_t_t** %array, align 8
  %731 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %cmp633 = icmp ne %Tstruct.json_array_t_t* %731, null
  br i1 %cmp633, label %land.lhs.true634, label %if.else680

land.lhs.true634:                                 ; preds = %_Dynamic_check.succeeded631
  %732 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %733 = ptrtoint %Tstruct.json_array_t_t* %732 to i32
  %734 = call i8* @c_fetch_pointer_from_offset(i32 %733)
  %735 = call i1 @c_isTaintedPointerToTaintedMem(i8* %734)
  br i1 %735, label %_Dynamic_check.succeeded636, label %_Dynamic_check.failed635

_Dynamic_check.succeeded636:                      ; preds = %land.lhs.true634
  %736 = bitcast i8* %734 to %Tstruct.json_array_t_t*
  %call637 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %736)
  %cmp638 = icmp ugt i64 %call637, 1
  br i1 %cmp638, label %if.then639, label %if.else680

if.then639:                                       ; preds = %_Dynamic_check.succeeded636
  %call640 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 237, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i64 0, i64 0))
  %737 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %738 = ptrtoint %Tstruct.json_array_t_t* %737 to i32
  %739 = call i8* @c_fetch_pointer_from_offset(i32 %738)
  %740 = call i1 @c_isTaintedPointerToTaintedMem(i8* %739)
  br i1 %740, label %_Dynamic_check.succeeded642, label %_Dynamic_check.failed641

_Dynamic_check.succeeded642:                      ; preds = %if.then639
  %741 = bitcast i8* %739 to %Tstruct.json_array_t_t*
  %call643 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %741, i64 0)
  %tobool644 = icmp ne i8* %call643, null
  br i1 %tobool644, label %land.lhs.true645, label %cond.false652

land.lhs.true645:                                 ; preds = %_Dynamic_check.succeeded642
  br i1 true, label %cond.true646, label %cond.false652

cond.true646:                                     ; preds = %land.lhs.true645
  %742 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %743 = ptrtoint %Tstruct.json_array_t_t* %742 to i32
  %744 = call i8* @c_fetch_pointer_from_offset(i32 %743)
  %745 = call i1 @c_isTaintedPointerToTaintedMem(i8* %744)
  br i1 %745, label %_Dynamic_check.succeeded648, label %_Dynamic_check.failed647

_Dynamic_check.succeeded648:                      ; preds = %cond.true646
  %746 = bitcast i8* %744 to %Tstruct.json_array_t_t*
  %call649 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %746, i64 0)
  %747 = ptrtoint i8* %call649 to i64
  %748 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %747)
  %749 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call650 = call i32 @t_strcmp(i8* %748, i8* %749)
  %cmp651 = icmp eq i32 %call650, 0
  br i1 %cmp651, label %if.then653, label %if.else656

cond.false652:                                    ; preds = %land.lhs.true645, %_Dynamic_check.succeeded642
  br i1 false, label %if.then653, label %if.else656

if.then653:                                       ; preds = %cond.false652, %_Dynamic_check.succeeded648
  %750 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call654 = call i32 @puts(i8* %750)
  %751 = load i32, i32* @tests_passed, align 4
  %inc655 = add nsw i32 %751, 1
  store i32 %inc655, i32* @tests_passed, align 4
  br label %if.end659

_Dynamic_check.failed628:                         ; preds = %if.end626
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed630:                         ; preds = %_Dynamic_check.succeeded629
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed635:                         ; preds = %land.lhs.true634
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed641:                         ; preds = %if.then639
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed647:                         ; preds = %cond.true646
  call void @llvm.trap() #6
  unreachable

if.else656:                                       ; preds = %cond.false652, %_Dynamic_check.succeeded648
  %752 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call657 = call i32 @puts(i8* %752)
  %753 = load i32, i32* @tests_failed, align 4
  %inc658 = add nsw i32 %753, 1
  store i32 %inc658, i32* @tests_failed, align 4
  br label %if.end659

if.end659:                                        ; preds = %if.else656, %if.then653
  %call660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i64 0, i64 0))
  %754 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %755 = ptrtoint %Tstruct.json_array_t_t* %754 to i32
  %756 = call i8* @c_fetch_pointer_from_offset(i32 %755)
  %757 = call i1 @c_isTaintedPointerToTaintedMem(i8* %756)
  br i1 %757, label %_Dynamic_check.succeeded662, label %_Dynamic_check.failed661

_Dynamic_check.succeeded662:                      ; preds = %if.end659
  %758 = bitcast i8* %756 to %Tstruct.json_array_t_t*
  %call663 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %758, i64 1)
  %tobool664 = icmp ne i8* %call663, null
  br i1 %tobool664, label %land.lhs.true665, label %cond.false672

land.lhs.true665:                                 ; preds = %_Dynamic_check.succeeded662
  br i1 true, label %cond.true666, label %cond.false672

cond.true666:                                     ; preds = %land.lhs.true665
  %759 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %760 = ptrtoint %Tstruct.json_array_t_t* %759 to i32
  %761 = call i8* @c_fetch_pointer_from_offset(i32 %760)
  %762 = call i1 @c_isTaintedPointerToTaintedMem(i8* %761)
  br i1 %762, label %_Dynamic_check.succeeded668, label %_Dynamic_check.failed667

_Dynamic_check.succeeded668:                      ; preds = %cond.true666
  %763 = bitcast i8* %761 to %Tstruct.json_array_t_t*
  %call669 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %763, i64 1)
  %764 = ptrtoint i8* %call669 to i64
  %765 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %764)
  %766 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.81 to i64))
  %call670 = call i32 @t_strcmp(i8* %765, i8* %766)
  %cmp671 = icmp eq i32 %call670, 0
  br i1 %cmp671, label %if.then673, label %if.else676

cond.false672:                                    ; preds = %land.lhs.true665, %_Dynamic_check.succeeded662
  br i1 false, label %if.then673, label %if.else676

if.then673:                                       ; preds = %cond.false672, %_Dynamic_check.succeeded668
  %767 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call674 = call i32 @puts(i8* %767)
  %768 = load i32, i32* @tests_passed, align 4
  %inc675 = add nsw i32 %768, 1
  store i32 %inc675, i32* @tests_passed, align 4
  br label %if.end679

_Dynamic_check.failed661:                         ; preds = %if.end659
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed667:                         ; preds = %cond.true666
  call void @llvm.trap() #6
  unreachable

if.else676:                                       ; preds = %cond.false672, %_Dynamic_check.succeeded668
  %769 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call677 = call i32 @puts(i8* %769)
  %770 = load i32, i32* @tests_failed, align 4
  %inc678 = add nsw i32 %770, 1
  store i32 %inc678, i32* @tests_failed, align 4
  br label %if.end679

if.end679:                                        ; preds = %if.else676, %if.then673
  br label %if.end682

if.else680:                                       ; preds = %_Dynamic_check.succeeded636, %_Dynamic_check.succeeded631
  %771 = load i32, i32* @tests_failed, align 4
  %inc681 = add nsw i32 %771, 1
  store i32 %inc681, i32* @tests_failed, align 4
  br label %if.end682

if.end682:                                        ; preds = %if.else680, %if.end679
  %772 = load i8*, i8** %value_type, align 8
  %773 = ptrtoint i8* %772 to i64
  %774 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %773)
  %775 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.82 to i64))
  %call683 = call i8* @t_strcpy(i8* %774, i8* %775)
  %776 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %777 = load i8*, i8** %value_type, align 8
  %778 = ptrtoint %Tstruct.json_object_t_t* %776 to i32
  %779 = call i8* @c_fetch_pointer_from_offset(i32 %778)
  %780 = call i1 @c_isTaintedPointerToTaintedMem(i8* %779)
  br i1 %780, label %_Dynamic_check.succeeded685, label %_Dynamic_check.failed684

_Dynamic_check.succeeded685:                      ; preds = %if.end682
  %781 = bitcast i8* %779 to %Tstruct.json_object_t_t*
  %782 = ptrtoint i8* %777 to i32
  %783 = call i8* @c_fetch_pointer_from_offset(i32 %782)
  %784 = call i1 @c_isTaintedPointerToTaintedMem(i8* %783)
  br i1 %784, label %_Dynamic_check.succeeded687, label %_Dynamic_check.failed686

_Dynamic_check.succeeded687:                      ; preds = %_Dynamic_check.succeeded685
  %call688 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %781, i8* %783)
  store %Tstruct.json_array_t_t* %call688, %Tstruct.json_array_t_t** %array, align 8
  %785 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %cmp689 = icmp ne %Tstruct.json_array_t_t* %785, null
  br i1 %cmp689, label %if.then690, label %if.else709

if.then690:                                       ; preds = %_Dynamic_check.succeeded687
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then690
  %786 = load i64, i64* %i, align 8
  %787 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %788 = ptrtoint %Tstruct.json_array_t_t* %787 to i32
  %789 = call i8* @c_fetch_pointer_from_offset(i32 %788)
  %790 = call i1 @c_isTaintedPointerToTaintedMem(i8* %789)
  br i1 %790, label %_Dynamic_check.succeeded692, label %_Dynamic_check.failed691

_Dynamic_check.succeeded692:                      ; preds = %for.cond
  %791 = bitcast i8* %789 to %Tstruct.json_array_t_t*
  %call693 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %791)
  %cmp694 = icmp ult i64 %786, %call693
  br i1 %cmp694, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded692
  %call695 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.83, i64 0, i64 0))
  %792 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %793 = load i64, i64* %i, align 8
  %794 = ptrtoint %Tstruct.json_array_t_t* %792 to i32
  %795 = call i8* @c_fetch_pointer_from_offset(i32 %794)
  %796 = call i1 @c_isTaintedPointerToTaintedMem(i8* %795)
  br i1 %796, label %_Dynamic_check.succeeded697, label %_Dynamic_check.failed696

_Dynamic_check.succeeded697:                      ; preds = %for.body
  %797 = bitcast i8* %795 to %Tstruct.json_array_t_t*
  %call698 = call double @json_array_get_number(%Tstruct.json_array_t_t* %797, i64 %793)
  %798 = load i64, i64* %i, align 8
  %799 = load i64, i64* %i, align 8
  %mul = mul i64 %798, %799
  %conv = uitofp i64 %mul to double
  %cmp699 = fcmp oeq double %call698, %conv
  br i1 %cmp699, label %if.then701, label %if.else704

if.then701:                                       ; preds = %_Dynamic_check.succeeded697
  %800 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call702 = call i32 @puts(i8* %800)
  %801 = load i32, i32* @tests_passed, align 4
  %inc703 = add nsw i32 %801, 1
  store i32 %inc703, i32* @tests_passed, align 4
  br label %if.end707

_Dynamic_check.failed684:                         ; preds = %if.end682
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed686:                         ; preds = %_Dynamic_check.succeeded685
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed691:                         ; preds = %for.cond
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed696:                         ; preds = %for.body
  call void @llvm.trap() #6
  unreachable

if.else704:                                       ; preds = %_Dynamic_check.succeeded697
  %802 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call705 = call i32 @puts(i8* %802)
  %803 = load i32, i32* @tests_failed, align 4
  %inc706 = add nsw i32 %803, 1
  store i32 %inc706, i32* @tests_failed, align 4
  br label %if.end707

if.end707:                                        ; preds = %if.else704, %if.then701
  br label %for.inc

for.inc:                                          ; preds = %if.end707
  %804 = load i64, i64* %i, align 8
  %inc708 = add i64 %804, 1
  store i64 %inc708, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %_Dynamic_check.succeeded692
  br label %if.end711

if.else709:                                       ; preds = %_Dynamic_check.succeeded687
  %805 = load i32, i32* @tests_failed, align 4
  %inc710 = add nsw i32 %805, 1
  store i32 %inc710, i32* @tests_failed, align 4
  br label %if.end711

if.end711:                                        ; preds = %if.else709, %for.end
  %806 = load i8*, i8** %value_type, align 8
  %807 = ptrtoint i8* %806 to i64
  %808 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %807)
  %809 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.84 to i64))
  %call712 = call i8* @t_strcpy(i8* %808, i8* %809)
  %call713 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 253, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.85, i64 0, i64 0))
  %810 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %811 = load i8*, i8** %value_type, align 8
  %812 = ptrtoint %Tstruct.json_object_t_t* %810 to i32
  %813 = call i8* @c_fetch_pointer_from_offset(i32 %812)
  %814 = call i1 @c_isTaintedPointerToTaintedMem(i8* %813)
  br i1 %814, label %_Dynamic_check.succeeded715, label %_Dynamic_check.failed714

_Dynamic_check.succeeded715:                      ; preds = %if.end711
  %815 = bitcast i8* %813 to %Tstruct.json_object_t_t*
  %816 = ptrtoint i8* %811 to i32
  %817 = call i8* @c_fetch_pointer_from_offset(i32 %816)
  %818 = call i1 @c_isTaintedPointerToTaintedMem(i8* %817)
  br i1 %818, label %_Dynamic_check.succeeded717, label %_Dynamic_check.failed716

_Dynamic_check.succeeded717:                      ; preds = %_Dynamic_check.succeeded715
  %call718 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %815, i8* %817)
  %cmp719 = icmp eq %Tstruct.json_array_t_t* %call718, null
  br i1 %cmp719, label %if.then721, label %if.else724

if.then721:                                       ; preds = %_Dynamic_check.succeeded717
  %819 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call722 = call i32 @puts(i8* %819)
  %820 = load i32, i32* @tests_passed, align 4
  %inc723 = add nsw i32 %820, 1
  store i32 %inc723, i32* @tests_passed, align 4
  br label %if.end727

_Dynamic_check.failed714:                         ; preds = %if.end711
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed716:                         ; preds = %_Dynamic_check.succeeded715
  call void @llvm.trap() #6
  unreachable

if.else724:                                       ; preds = %_Dynamic_check.succeeded717
  %821 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call725 = call i32 @puts(i8* %821)
  %822 = load i32, i32* @tests_failed, align 4
  %inc726 = add nsw i32 %822, 1
  store i32 %inc726, i32* @tests_failed, align 4
  br label %if.end727

if.end727:                                        ; preds = %if.else724, %if.then721
  %823 = load i8*, i8** %value_type, align 8
  %824 = ptrtoint i8* %823 to i64
  %825 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %824)
  %826 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.47 to i64))
  %call728 = call i8* @t_strcpy(i8* %825, i8* %826)
  %call729 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.86, i64 0, i64 0))
  %827 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %828 = load i8*, i8** %value_type, align 8
  %829 = ptrtoint %Tstruct.json_object_t_t* %827 to i32
  %830 = call i8* @c_fetch_pointer_from_offset(i32 %829)
  %831 = call i1 @c_isTaintedPointerToTaintedMem(i8* %830)
  br i1 %831, label %_Dynamic_check.succeeded731, label %_Dynamic_check.failed730

_Dynamic_check.succeeded731:                      ; preds = %if.end727
  %832 = bitcast i8* %830 to %Tstruct.json_object_t_t*
  %833 = ptrtoint i8* %828 to i32
  %834 = call i8* @c_fetch_pointer_from_offset(i32 %833)
  %835 = call i1 @c_isTaintedPointerToTaintedMem(i8* %834)
  br i1 %835, label %_Dynamic_check.succeeded733, label %_Dynamic_check.failed732

_Dynamic_check.succeeded733:                      ; preds = %_Dynamic_check.succeeded731
  %call734 = call i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %832, i8* %834)
  %tobool735 = icmp ne i8* %call734, null
  br i1 %tobool735, label %land.lhs.true736, label %cond.false746

land.lhs.true736:                                 ; preds = %_Dynamic_check.succeeded733
  br i1 true, label %cond.true737, label %cond.false746

cond.true737:                                     ; preds = %land.lhs.true736
  %836 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %837 = load i8*, i8** %value_type, align 8
  %838 = ptrtoint %Tstruct.json_object_t_t* %836 to i32
  %839 = call i8* @c_fetch_pointer_from_offset(i32 %838)
  %840 = call i1 @c_isTaintedPointerToTaintedMem(i8* %839)
  br i1 %840, label %_Dynamic_check.succeeded739, label %_Dynamic_check.failed738

_Dynamic_check.succeeded739:                      ; preds = %cond.true737
  %841 = bitcast i8* %839 to %Tstruct.json_object_t_t*
  %842 = ptrtoint i8* %837 to i32
  %843 = call i8* @c_fetch_pointer_from_offset(i32 %842)
  %844 = call i1 @c_isTaintedPointerToTaintedMem(i8* %843)
  br i1 %844, label %_Dynamic_check.succeeded741, label %_Dynamic_check.failed740

_Dynamic_check.succeeded741:                      ; preds = %_Dynamic_check.succeeded739
  %call742 = call i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %841, i8* %843)
  %845 = ptrtoint i8* %call742 to i64
  %846 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %845)
  %847 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.87 to i64))
  %call743 = call i32 @t_strcmp(i8* %846, i8* %847)
  %cmp744 = icmp eq i32 %call743, 0
  br i1 %cmp744, label %if.then747, label %if.else750

cond.false746:                                    ; preds = %land.lhs.true736, %_Dynamic_check.succeeded733
  br i1 false, label %if.then747, label %if.else750

if.then747:                                       ; preds = %cond.false746, %_Dynamic_check.succeeded741
  %848 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call748 = call i32 @puts(i8* %848)
  %849 = load i32, i32* @tests_passed, align 4
  %inc749 = add nsw i32 %849, 1
  store i32 %inc749, i32* @tests_passed, align 4
  br label %if.end753

_Dynamic_check.failed730:                         ; preds = %if.end727
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed732:                         ; preds = %_Dynamic_check.succeeded731
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed738:                         ; preds = %cond.true737
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed740:                         ; preds = %_Dynamic_check.succeeded739
  call void @llvm.trap() #6
  unreachable

if.else750:                                       ; preds = %cond.false746, %_Dynamic_check.succeeded741
  %850 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call751 = call i32 @puts(i8* %850)
  %851 = load i32, i32* @tests_failed, align 4
  %inc752 = add nsw i32 %851, 1
  store i32 %inc752, i32* @tests_failed, align 4
  br label %if.end753

if.end753:                                        ; preds = %if.else750, %if.then747
  %852 = load i8*, i8** %value_type, align 8
  %853 = ptrtoint i8* %852 to i64
  %854 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %853)
  %855 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.47 to i64))
  %call754 = call i8* @t_strcpy(i8* %854, i8* %855)
  %call755 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 257, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  %856 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %857 = load i8*, i8** %value_type, align 8
  %858 = ptrtoint %Tstruct.json_object_t_t* %856 to i32
  %859 = call i8* @c_fetch_pointer_from_offset(i32 %858)
  %860 = call i1 @c_isTaintedPointerToTaintedMem(i8* %859)
  br i1 %860, label %_Dynamic_check.succeeded757, label %_Dynamic_check.failed756

_Dynamic_check.succeeded757:                      ; preds = %if.end753
  %861 = bitcast i8* %859 to %Tstruct.json_object_t_t*
  %862 = ptrtoint i8* %857 to i32
  %863 = call i8* @c_fetch_pointer_from_offset(i32 %862)
  %864 = call i1 @c_isTaintedPointerToTaintedMem(i8* %863)
  br i1 %864, label %_Dynamic_check.succeeded759, label %_Dynamic_check.failed758

_Dynamic_check.succeeded759:                      ; preds = %_Dynamic_check.succeeded757
  %call760 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %861, i8* %863)
  %cmp761 = icmp eq i32 %call760, 1
  br i1 %cmp761, label %if.then763, label %if.else766

if.then763:                                       ; preds = %_Dynamic_check.succeeded759
  %865 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call764 = call i32 @puts(i8* %865)
  %866 = load i32, i32* @tests_passed, align 4
  %inc765 = add nsw i32 %866, 1
  store i32 %inc765, i32* @tests_passed, align 4
  br label %if.end769

_Dynamic_check.failed756:                         ; preds = %if.end753
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed758:                         ; preds = %_Dynamic_check.succeeded757
  call void @llvm.trap() #6
  unreachable

if.else766:                                       ; preds = %_Dynamic_check.succeeded759
  %867 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call767 = call i32 @puts(i8* %867)
  %868 = load i32, i32* @tests_failed, align 4
  %inc768 = add nsw i32 %868, 1
  store i32 %inc768, i32* @tests_failed, align 4
  br label %if.end769

if.end769:                                        ; preds = %if.else766, %if.then763
  %869 = load i8*, i8** %value_type, align 8
  %870 = ptrtoint i8* %869 to i64
  %871 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %870)
  %872 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.89 to i64))
  %call770 = call i8* @t_strcpy(i8* %871, i8* %872)
  %call771 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.90, i64 0, i64 0))
  %873 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %874 = load i8*, i8** %value_type, align 8
  %875 = ptrtoint %Tstruct.json_object_t_t* %873 to i32
  %876 = call i8* @c_fetch_pointer_from_offset(i32 %875)
  %877 = call i1 @c_isTaintedPointerToTaintedMem(i8* %876)
  br i1 %877, label %_Dynamic_check.succeeded773, label %_Dynamic_check.failed772

_Dynamic_check.succeeded773:                      ; preds = %if.end769
  %878 = bitcast i8* %876 to %Tstruct.json_object_t_t*
  %879 = ptrtoint i8* %874 to i32
  %880 = call i8* @c_fetch_pointer_from_offset(i32 %879)
  %881 = call i1 @c_isTaintedPointerToTaintedMem(i8* %880)
  br i1 %881, label %_Dynamic_check.succeeded775, label %_Dynamic_check.failed774

_Dynamic_check.succeeded775:                      ; preds = %_Dynamic_check.succeeded773
  %call776 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %878, i8* %880)
  %cmp777 = icmp eq i32 %call776, 0
  br i1 %cmp777, label %if.then779, label %if.else782

if.then779:                                       ; preds = %_Dynamic_check.succeeded775
  %882 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call780 = call i32 @puts(i8* %882)
  %883 = load i32, i32* @tests_passed, align 4
  %inc781 = add nsw i32 %883, 1
  store i32 %inc781, i32* @tests_passed, align 4
  br label %if.end785

_Dynamic_check.failed772:                         ; preds = %if.end769
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed774:                         ; preds = %_Dynamic_check.succeeded773
  call void @llvm.trap() #6
  unreachable

if.else782:                                       ; preds = %_Dynamic_check.succeeded775
  %884 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call783 = call i32 @puts(i8* %884)
  %885 = load i32, i32* @tests_failed, align 4
  %inc784 = add nsw i32 %885, 1
  store i32 %inc784, i32* @tests_failed, align 4
  br label %if.end785

if.end785:                                        ; preds = %if.else782, %if.then779
  %886 = load i8*, i8** %value_type, align 8
  %887 = ptrtoint i8* %886 to i64
  %888 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %887)
  %889 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.57 to i64))
  %call786 = call i8* @t_strcpy(i8* %888, i8* %889)
  %call787 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 261, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i64 0, i64 0))
  %890 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %891 = load i8*, i8** %value_type, align 8
  %892 = ptrtoint %Tstruct.json_object_t_t* %890 to i32
  %893 = call i8* @c_fetch_pointer_from_offset(i32 %892)
  %894 = call i1 @c_isTaintedPointerToTaintedMem(i8* %893)
  br i1 %894, label %_Dynamic_check.succeeded789, label %_Dynamic_check.failed788

_Dynamic_check.succeeded789:                      ; preds = %if.end785
  %895 = bitcast i8* %893 to %Tstruct.json_object_t_t*
  %896 = ptrtoint i8* %891 to i32
  %897 = call i8* @c_fetch_pointer_from_offset(i32 %896)
  %898 = call i1 @c_isTaintedPointerToTaintedMem(i8* %897)
  br i1 %898, label %_Dynamic_check.succeeded791, label %_Dynamic_check.failed790

_Dynamic_check.succeeded791:                      ; preds = %_Dynamic_check.succeeded789
  %call792 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %895, i8* %897)
  %cmp793 = icmp ne %Tstruct.json_value_t_t* %call792, null
  br i1 %cmp793, label %if.then795, label %if.else798

if.then795:                                       ; preds = %_Dynamic_check.succeeded791
  %899 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call796 = call i32 @puts(i8* %899)
  %900 = load i32, i32* @tests_passed, align 4
  %inc797 = add nsw i32 %900, 1
  store i32 %inc797, i32* @tests_passed, align 4
  br label %if.end801

_Dynamic_check.failed788:                         ; preds = %if.end785
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed790:                         ; preds = %_Dynamic_check.succeeded789
  call void @llvm.trap() #6
  unreachable

if.else798:                                       ; preds = %_Dynamic_check.succeeded791
  %901 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call799 = call i32 @puts(i8* %901)
  %902 = load i32, i32* @tests_failed, align 4
  %inc800 = add nsw i32 %902, 1
  store i32 %inc800, i32* @tests_failed, align 4
  br label %if.end801

if.end801:                                        ; preds = %if.else798, %if.then795
  %903 = load i8*, i8** %value_type, align 8
  %904 = ptrtoint i8* %903 to i64
  %905 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %904)
  %906 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call802 = call i8* @t_strcpy(i8* %905, i8* %906)
  %call803 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 263, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.92, i64 0, i64 0))
  %907 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %908 = load i8*, i8** %value_type, align 8
  %909 = ptrtoint %Tstruct.json_object_t_t* %907 to i32
  %910 = call i8* @c_fetch_pointer_from_offset(i32 %909)
  %911 = call i1 @c_isTaintedPointerToTaintedMem(i8* %910)
  br i1 %911, label %_Dynamic_check.succeeded805, label %_Dynamic_check.failed804

_Dynamic_check.succeeded805:                      ; preds = %if.end801
  %912 = bitcast i8* %910 to %Tstruct.json_object_t_t*
  %913 = ptrtoint i8* %908 to i32
  %914 = call i8* @c_fetch_pointer_from_offset(i32 %913)
  %915 = call i1 @c_isTaintedPointerToTaintedMem(i8* %914)
  br i1 %915, label %_Dynamic_check.succeeded807, label %_Dynamic_check.failed806

_Dynamic_check.succeeded807:                      ; preds = %_Dynamic_check.succeeded805
  %call808 = call double @json_object_dotget_number(%Tstruct.json_object_t_t* %912, i8* %914)
  %cmp809 = fcmp oeq double %call808, 1.230000e+02
  br i1 %cmp809, label %if.then811, label %if.else814

if.then811:                                       ; preds = %_Dynamic_check.succeeded807
  %916 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call812 = call i32 @puts(i8* %916)
  %917 = load i32, i32* @tests_passed, align 4
  %inc813 = add nsw i32 %917, 1
  store i32 %inc813, i32* @tests_passed, align 4
  br label %if.end817

_Dynamic_check.failed804:                         ; preds = %if.end801
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed806:                         ; preds = %_Dynamic_check.succeeded805
  call void @llvm.trap() #6
  unreachable

if.else814:                                       ; preds = %_Dynamic_check.succeeded807
  %918 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call815 = call i32 @puts(i8* %918)
  %919 = load i32, i32* @tests_failed, align 4
  %inc816 = add nsw i32 %919, 1
  store i32 %inc816, i32* @tests_failed, align 4
  br label %if.end817

if.end817:                                        ; preds = %if.else814, %if.then811
  %920 = load i8*, i8** %value_type, align 8
  %921 = ptrtoint i8* %920 to i64
  %922 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %921)
  %923 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([15 x i8]* @.str.93 to i64))
  %call818 = call i8* @t_strcpy(i8* %922, i8* %923)
  %call819 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 266, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %924 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %925 = load i8*, i8** %value_type, align 8
  %926 = ptrtoint %Tstruct.json_object_t_t* %924 to i32
  %927 = call i8* @c_fetch_pointer_from_offset(i32 %926)
  %928 = call i1 @c_isTaintedPointerToTaintedMem(i8* %927)
  br i1 %928, label %_Dynamic_check.succeeded821, label %_Dynamic_check.failed820

_Dynamic_check.succeeded821:                      ; preds = %if.end817
  %929 = bitcast i8* %927 to %Tstruct.json_object_t_t*
  %930 = ptrtoint i8* %925 to i32
  %931 = call i8* @c_fetch_pointer_from_offset(i32 %930)
  %932 = call i1 @c_isTaintedPointerToTaintedMem(i8* %931)
  br i1 %932, label %_Dynamic_check.succeeded823, label %_Dynamic_check.failed822

_Dynamic_check.succeeded823:                      ; preds = %_Dynamic_check.succeeded821
  %call824 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %929, i8* %931)
  %cmp825 = icmp eq %Tstruct.json_value_t_t* %call824, null
  br i1 %cmp825, label %if.then827, label %if.else830

if.then827:                                       ; preds = %_Dynamic_check.succeeded823
  %933 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call828 = call i32 @puts(i8* %933)
  %934 = load i32, i32* @tests_passed, align 4
  %inc829 = add nsw i32 %934, 1
  store i32 %inc829, i32* @tests_passed, align 4
  br label %if.end833

_Dynamic_check.failed820:                         ; preds = %if.end817
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed822:                         ; preds = %_Dynamic_check.succeeded821
  call void @llvm.trap() #6
  unreachable

if.else830:                                       ; preds = %_Dynamic_check.succeeded823
  %935 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call831 = call i32 @puts(i8* %935)
  %936 = load i32, i32* @tests_failed, align 4
  %inc832 = add nsw i32 %936, 1
  store i32 %inc832, i32* @tests_failed, align 4
  br label %if.end833

if.end833:                                        ; preds = %if.else830, %if.then827
  %937 = load i8*, i8** %value_type, align 8
  %938 = ptrtoint i8* %937 to i64
  %939 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %938)
  %940 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.95 to i64))
  %call834 = call i8* @t_strcpy(i8* %939, i8* %940)
  %call835 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %941 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %942 = load i8*, i8** %value_type, align 8
  %943 = ptrtoint %Tstruct.json_object_t_t* %941 to i32
  %944 = call i8* @c_fetch_pointer_from_offset(i32 %943)
  %945 = call i1 @c_isTaintedPointerToTaintedMem(i8* %944)
  br i1 %945, label %_Dynamic_check.succeeded837, label %_Dynamic_check.failed836

_Dynamic_check.succeeded837:                      ; preds = %if.end833
  %946 = bitcast i8* %944 to %Tstruct.json_object_t_t*
  %947 = ptrtoint i8* %942 to i32
  %948 = call i8* @c_fetch_pointer_from_offset(i32 %947)
  %949 = call i1 @c_isTaintedPointerToTaintedMem(i8* %948)
  br i1 %949, label %_Dynamic_check.succeeded839, label %_Dynamic_check.failed838

_Dynamic_check.succeeded839:                      ; preds = %_Dynamic_check.succeeded837
  %call840 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %946, i8* %948)
  %cmp841 = icmp eq %Tstruct.json_value_t_t* %call840, null
  br i1 %cmp841, label %if.then843, label %if.else846

if.then843:                                       ; preds = %_Dynamic_check.succeeded839
  %950 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call844 = call i32 @puts(i8* %950)
  %951 = load i32, i32* @tests_passed, align 4
  %inc845 = add nsw i32 %951, 1
  store i32 %inc845, i32* @tests_passed, align 4
  br label %if.end849

_Dynamic_check.failed836:                         ; preds = %if.end833
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed838:                         ; preds = %_Dynamic_check.succeeded837
  call void @llvm.trap() #6
  unreachable

if.else846:                                       ; preds = %_Dynamic_check.succeeded839
  %952 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call847 = call i32 @puts(i8* %952)
  %953 = load i32, i32* @tests_failed, align 4
  %inc848 = add nsw i32 %953, 1
  store i32 %inc848, i32* @tests_failed, align 4
  br label %if.end849

if.end849:                                        ; preds = %if.else846, %if.then843
  %954 = load i8*, i8** %value_type, align 8
  %955 = ptrtoint i8* %954 to i64
  %956 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %955)
  %957 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.96 to i64))
  %call850 = call i8* @t_strcpy(i8* %956, i8* %957)
  %call851 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 270, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %958 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %959 = load i8*, i8** %value_type, align 8
  %960 = ptrtoint %Tstruct.json_object_t_t* %958 to i32
  %961 = call i8* @c_fetch_pointer_from_offset(i32 %960)
  %962 = call i1 @c_isTaintedPointerToTaintedMem(i8* %961)
  br i1 %962, label %_Dynamic_check.succeeded853, label %_Dynamic_check.failed852

_Dynamic_check.succeeded853:                      ; preds = %if.end849
  %963 = bitcast i8* %961 to %Tstruct.json_object_t_t*
  %964 = ptrtoint i8* %959 to i32
  %965 = call i8* @c_fetch_pointer_from_offset(i32 %964)
  %966 = call i1 @c_isTaintedPointerToTaintedMem(i8* %965)
  br i1 %966, label %_Dynamic_check.succeeded855, label %_Dynamic_check.failed854

_Dynamic_check.succeeded855:                      ; preds = %_Dynamic_check.succeeded853
  %call856 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %963, i8* %965)
  %cmp857 = icmp eq %Tstruct.json_value_t_t* %call856, null
  br i1 %cmp857, label %if.then859, label %if.else862

if.then859:                                       ; preds = %_Dynamic_check.succeeded855
  %967 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call860 = call i32 @puts(i8* %967)
  %968 = load i32, i32* @tests_passed, align 4
  %inc861 = add nsw i32 %968, 1
  store i32 %inc861, i32* @tests_passed, align 4
  br label %if.end865

_Dynamic_check.failed852:                         ; preds = %if.end849
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed854:                         ; preds = %_Dynamic_check.succeeded853
  call void @llvm.trap() #6
  unreachable

if.else862:                                       ; preds = %_Dynamic_check.succeeded855
  %969 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call863 = call i32 @puts(i8* %969)
  %970 = load i32, i32* @tests_failed, align 4
  %inc864 = add nsw i32 %970, 1
  store i32 %inc864, i32* @tests_failed, align 4
  br label %if.end865

if.end865:                                        ; preds = %if.else862, %if.then859
  %971 = load i8*, i8** %value_type, align 8
  %972 = ptrtoint i8* %971 to i64
  %973 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %972)
  %974 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call866 = call i8* @t_strcpy(i8* %973, i8* %974)
  %call867 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 272, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %975 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %976 = load i8*, i8** %value_type, align 8
  %977 = ptrtoint %Tstruct.json_object_t_t* %975 to i32
  %978 = call i8* @c_fetch_pointer_from_offset(i32 %977)
  %979 = call i1 @c_isTaintedPointerToTaintedMem(i8* %978)
  br i1 %979, label %_Dynamic_check.succeeded869, label %_Dynamic_check.failed868

_Dynamic_check.succeeded869:                      ; preds = %if.end865
  %980 = bitcast i8* %978 to %Tstruct.json_object_t_t*
  %981 = ptrtoint i8* %976 to i32
  %982 = call i8* @c_fetch_pointer_from_offset(i32 %981)
  %983 = call i1 @c_isTaintedPointerToTaintedMem(i8* %982)
  br i1 %983, label %_Dynamic_check.succeeded871, label %_Dynamic_check.failed870

_Dynamic_check.succeeded871:                      ; preds = %_Dynamic_check.succeeded869
  %call872 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %980, i8* %982)
  %cmp873 = icmp eq %Tstruct.json_value_t_t* %call872, null
  br i1 %cmp873, label %if.then875, label %if.else878

if.then875:                                       ; preds = %_Dynamic_check.succeeded871
  %984 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call876 = call i32 @puts(i8* %984)
  %985 = load i32, i32* @tests_passed, align 4
  %inc877 = add nsw i32 %985, 1
  store i32 %inc877, i32* @tests_passed, align 4
  br label %if.end881

_Dynamic_check.failed868:                         ; preds = %if.end865
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed870:                         ; preds = %_Dynamic_check.succeeded869
  call void @llvm.trap() #6
  unreachable

if.else878:                                       ; preds = %_Dynamic_check.succeeded871
  %986 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call879 = call i32 @puts(i8* %986)
  %987 = load i32, i32* @tests_failed, align 4
  %inc880 = add nsw i32 %987, 1
  store i32 %inc880, i32* @tests_failed, align 4
  br label %if.end881

if.end881:                                        ; preds = %if.else878, %if.then875
  %988 = load i8*, i8** %value_type, align 8
  %989 = ptrtoint i8* %988 to i64
  %990 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %989)
  %991 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call882 = call i8* @t_strcpy(i8* %990, i8* %991)
  %992 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %993 = load i8*, i8** %value_type, align 8
  %994 = ptrtoint %Tstruct.json_object_t_t* %992 to i32
  %995 = call i8* @c_fetch_pointer_from_offset(i32 %994)
  %996 = call i1 @c_isTaintedPointerToTaintedMem(i8* %995)
  br i1 %996, label %_Dynamic_check.succeeded884, label %_Dynamic_check.failed883

_Dynamic_check.succeeded884:                      ; preds = %if.end881
  %997 = bitcast i8* %995 to %Tstruct.json_object_t_t*
  %998 = ptrtoint i8* %993 to i32
  %999 = call i8* @c_fetch_pointer_from_offset(i32 %998)
  %1000 = call i1 @c_isTaintedPointerToTaintedMem(i8* %999)
  br i1 %1000, label %_Dynamic_check.succeeded886, label %_Dynamic_check.failed885

_Dynamic_check.succeeded886:                      ; preds = %_Dynamic_check.succeeded884
  %call887 = call %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %997, i8* %999)
  store %Tstruct.json_array_t_t* %call887, %Tstruct.json_array_t_t** %array, align 8
  %call888 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i64 0, i64 0))
  %1001 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %cmp889 = icmp ne %Tstruct.json_array_t_t* %1001, null
  br i1 %cmp889, label %if.then891, label %if.else894

if.then891:                                       ; preds = %_Dynamic_check.succeeded886
  %1002 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call892 = call i32 @puts(i8* %1002)
  %1003 = load i32, i32* @tests_passed, align 4
  %inc893 = add nsw i32 %1003, 1
  store i32 %inc893, i32* @tests_passed, align 4
  br label %if.end897

_Dynamic_check.failed883:                         ; preds = %if.end881
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed885:                         ; preds = %_Dynamic_check.succeeded884
  call void @llvm.trap() #6
  unreachable

if.else894:                                       ; preds = %_Dynamic_check.succeeded886
  %1004 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call895 = call i32 @puts(i8* %1004)
  %1005 = load i32, i32* @tests_failed, align 4
  %inc896 = add nsw i32 %1005, 1
  store i32 %inc896, i32* @tests_failed, align 4
  br label %if.end897

if.end897:                                        ; preds = %if.else894, %if.then891
  %call898 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 277, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0))
  %1006 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1007 = ptrtoint %Tstruct.json_array_t_t* %1006 to i32
  %1008 = call i8* @c_fetch_pointer_from_offset(i32 %1007)
  %1009 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1008)
  br i1 %1009, label %_Dynamic_check.succeeded900, label %_Dynamic_check.failed899

_Dynamic_check.succeeded900:                      ; preds = %if.end897
  %1010 = bitcast i8* %1008 to %Tstruct.json_array_t_t*
  %call901 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %1010)
  %cmp902 = icmp ugt i64 %call901, 1
  br i1 %cmp902, label %if.then904, label %if.else907

if.then904:                                       ; preds = %_Dynamic_check.succeeded900
  %1011 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call905 = call i32 @puts(i8* %1011)
  %1012 = load i32, i32* @tests_passed, align 4
  %inc906 = add nsw i32 %1012, 1
  store i32 %inc906, i32* @tests_passed, align 4
  br label %if.end910

_Dynamic_check.failed899:                         ; preds = %if.end897
  call void @llvm.trap() #6
  unreachable

if.else907:                                       ; preds = %_Dynamic_check.succeeded900
  %1013 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call908 = call i32 @puts(i8* %1013)
  %1014 = load i32, i32* @tests_failed, align 4
  %inc909 = add nsw i32 %1014, 1
  store i32 %inc909, i32* @tests_failed, align 4
  br label %if.end910

if.end910:                                        ; preds = %if.else907, %if.then904
  %1015 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %cmp911 = icmp ne %Tstruct.json_array_t_t* %1015, null
  br i1 %cmp911, label %land.lhs.true913, label %if.end966

land.lhs.true913:                                 ; preds = %if.end910
  %1016 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1017 = ptrtoint %Tstruct.json_array_t_t* %1016 to i32
  %1018 = call i8* @c_fetch_pointer_from_offset(i32 %1017)
  %1019 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1018)
  br i1 %1019, label %_Dynamic_check.succeeded915, label %_Dynamic_check.failed914

_Dynamic_check.succeeded915:                      ; preds = %land.lhs.true913
  %1020 = bitcast i8* %1018 to %Tstruct.json_array_t_t*
  %call916 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %1020)
  %cmp917 = icmp ugt i64 %call916, 1
  br i1 %cmp917, label %if.then919, label %if.end966

if.then919:                                       ; preds = %_Dynamic_check.succeeded915
  %1021 = load i8*, i8** %value_type, align 8
  %1022 = ptrtoint i8* %1021 to i64
  %1023 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1022)
  %1024 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call920 = call i8* @t_strcpy(i8* %1023, i8* %1024)
  %call921 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 280, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i64 0, i64 0))
  %1025 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1026 = ptrtoint %Tstruct.json_array_t_t* %1025 to i32
  %1027 = call i8* @c_fetch_pointer_from_offset(i32 %1026)
  %1028 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1027)
  br i1 %1028, label %_Dynamic_check.succeeded923, label %_Dynamic_check.failed922

_Dynamic_check.succeeded923:                      ; preds = %if.then919
  %1029 = bitcast i8* %1027 to %Tstruct.json_array_t_t*
  %call924 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1029, i64 0)
  %tobool925 = icmp ne i8* %call924, null
  br i1 %tobool925, label %land.lhs.true926, label %cond.false935

land.lhs.true926:                                 ; preds = %_Dynamic_check.succeeded923
  %1030 = load i8*, i8** %value_type, align 8
  %tobool927 = icmp ne i8* %1030, null
  br i1 %tobool927, label %cond.true928, label %cond.false935

cond.true928:                                     ; preds = %land.lhs.true926
  %1031 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1032 = ptrtoint %Tstruct.json_array_t_t* %1031 to i32
  %1033 = call i8* @c_fetch_pointer_from_offset(i32 %1032)
  %1034 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1033)
  br i1 %1034, label %_Dynamic_check.succeeded930, label %_Dynamic_check.failed929

_Dynamic_check.succeeded930:                      ; preds = %cond.true928
  %1035 = bitcast i8* %1033 to %Tstruct.json_array_t_t*
  %call931 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1035, i64 0)
  %1036 = load i8*, i8** %value_type, align 8
  %1037 = ptrtoint i8* %call931 to i64
  %1038 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1037)
  %1039 = ptrtoint i8* %1036 to i64
  %1040 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1039)
  %call932 = call i32 @t_strcmp(i8* %1038, i8* %1040)
  %cmp933 = icmp eq i32 %call932, 0
  br i1 %cmp933, label %if.then936, label %if.else939

cond.false935:                                    ; preds = %land.lhs.true926, %_Dynamic_check.succeeded923
  br i1 false, label %if.then936, label %if.else939

if.then936:                                       ; preds = %cond.false935, %_Dynamic_check.succeeded930
  %1041 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call937 = call i32 @puts(i8* %1041)
  %1042 = load i32, i32* @tests_passed, align 4
  %inc938 = add nsw i32 %1042, 1
  store i32 %inc938, i32* @tests_passed, align 4
  br label %if.end942

_Dynamic_check.failed914:                         ; preds = %land.lhs.true913
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed922:                         ; preds = %if.then919
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed929:                         ; preds = %cond.true928
  call void @llvm.trap() #6
  unreachable

if.else939:                                       ; preds = %cond.false935, %_Dynamic_check.succeeded930
  %1043 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call940 = call i32 @puts(i8* %1043)
  %1044 = load i32, i32* @tests_failed, align 4
  %inc941 = add nsw i32 %1044, 1
  store i32 %inc941, i32* @tests_failed, align 4
  br label %if.end942

if.end942:                                        ; preds = %if.else939, %if.then936
  %1045 = load i8*, i8** %value_type, align 8
  %1046 = ptrtoint i8* %1045 to i64
  %1047 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1046)
  %1048 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.81 to i64))
  %call943 = call i8* @t_strcpy(i8* %1047, i8* %1048)
  %call944 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 282, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.101, i64 0, i64 0))
  %1049 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1050 = ptrtoint %Tstruct.json_array_t_t* %1049 to i32
  %1051 = call i8* @c_fetch_pointer_from_offset(i32 %1050)
  %1052 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1051)
  br i1 %1052, label %_Dynamic_check.succeeded946, label %_Dynamic_check.failed945

_Dynamic_check.succeeded946:                      ; preds = %if.end942
  %1053 = bitcast i8* %1051 to %Tstruct.json_array_t_t*
  %call947 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1053, i64 1)
  %tobool948 = icmp ne i8* %call947, null
  br i1 %tobool948, label %land.lhs.true949, label %cond.false958

land.lhs.true949:                                 ; preds = %_Dynamic_check.succeeded946
  %1054 = load i8*, i8** %value_type, align 8
  %tobool950 = icmp ne i8* %1054, null
  br i1 %tobool950, label %cond.true951, label %cond.false958

cond.true951:                                     ; preds = %land.lhs.true949
  %1055 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1056 = ptrtoint %Tstruct.json_array_t_t* %1055 to i32
  %1057 = call i8* @c_fetch_pointer_from_offset(i32 %1056)
  %1058 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1057)
  br i1 %1058, label %_Dynamic_check.succeeded953, label %_Dynamic_check.failed952

_Dynamic_check.succeeded953:                      ; preds = %cond.true951
  %1059 = bitcast i8* %1057 to %Tstruct.json_array_t_t*
  %call954 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %1059, i64 1)
  %1060 = load i8*, i8** %value_type, align 8
  %1061 = ptrtoint i8* %call954 to i64
  %1062 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1061)
  %1063 = ptrtoint i8* %1060 to i64
  %1064 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1063)
  %call955 = call i32 @t_strcmp(i8* %1062, i8* %1064)
  %cmp956 = icmp eq i32 %call955, 0
  br i1 %cmp956, label %if.then959, label %if.else962

cond.false958:                                    ; preds = %land.lhs.true949, %_Dynamic_check.succeeded946
  br i1 false, label %if.then959, label %if.else962

if.then959:                                       ; preds = %cond.false958, %_Dynamic_check.succeeded953
  %1065 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call960 = call i32 @puts(i8* %1065)
  %1066 = load i32, i32* @tests_passed, align 4
  %inc961 = add nsw i32 %1066, 1
  store i32 %inc961, i32* @tests_passed, align 4
  br label %if.end965

_Dynamic_check.failed945:                         ; preds = %if.end942
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed952:                         ; preds = %cond.true951
  call void @llvm.trap() #6
  unreachable

if.else962:                                       ; preds = %cond.false958, %_Dynamic_check.succeeded953
  %1067 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call963 = call i32 @puts(i8* %1067)
  %1068 = load i32, i32* @tests_failed, align 4
  %inc964 = add nsw i32 %1068, 1
  store i32 %inc964, i32* @tests_failed, align 4
  br label %if.end965

if.end965:                                        ; preds = %if.else962, %if.then959
  br label %if.end966

if.end966:                                        ; preds = %if.end965, %_Dynamic_check.succeeded915, %if.end910
  %1069 = load i8*, i8** %value_type, align 8
  %1070 = ptrtoint i8* %1069 to i64
  %1071 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1070)
  %1072 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.54 to i64))
  %call967 = call i8* @t_strcpy(i8* %1071, i8* %1072)
  %call968 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  %1073 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1074 = load i8*, i8** %value_type, align 8
  %1075 = ptrtoint %Tstruct.json_object_t_t* %1073 to i32
  %1076 = call i8* @c_fetch_pointer_from_offset(i32 %1075)
  %1077 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1076)
  br i1 %1077, label %_Dynamic_check.succeeded970, label %_Dynamic_check.failed969

_Dynamic_check.succeeded970:                      ; preds = %if.end966
  %1078 = bitcast i8* %1076 to %Tstruct.json_object_t_t*
  %1079 = ptrtoint i8* %1074 to i32
  %1080 = call i8* @c_fetch_pointer_from_offset(i32 %1079)
  %1081 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1080)
  br i1 %1081, label %_Dynamic_check.succeeded972, label %_Dynamic_check.failed971

_Dynamic_check.succeeded972:                      ; preds = %_Dynamic_check.succeeded970
  %call973 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %1078, i8* %1080)
  %cmp974 = icmp eq i32 %call973, 1
  br i1 %cmp974, label %if.then976, label %if.else979

if.then976:                                       ; preds = %_Dynamic_check.succeeded972
  %1082 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call977 = call i32 @puts(i8* %1082)
  %1083 = load i32, i32* @tests_passed, align 4
  %inc978 = add nsw i32 %1083, 1
  store i32 %inc978, i32* @tests_passed, align 4
  br label %if.end982

_Dynamic_check.failed969:                         ; preds = %if.end966
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed971:                         ; preds = %_Dynamic_check.succeeded970
  call void @llvm.trap() #6
  unreachable

if.else979:                                       ; preds = %_Dynamic_check.succeeded972
  %1084 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call980 = call i32 @puts(i8* %1084)
  %1085 = load i32, i32* @tests_failed, align 4
  %inc981 = add nsw i32 %1085, 1
  store i32 %inc981, i32* @tests_failed, align 4
  br label %if.end982

if.end982:                                        ; preds = %if.else979, %if.then976
  %1086 = load i8*, i8** %value_type, align 8
  %1087 = ptrtoint i8* %1086 to i64
  %1088 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1087)
  %1089 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.102 to i64))
  %call983 = call i8* @t_strcpy(i8* %1088, i8* %1089)
  %call984 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 288, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i64 0, i64 0))
  %1090 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1091 = load i8*, i8** %value_type, align 8
  %1092 = ptrtoint %Tstruct.json_object_t_t* %1090 to i32
  %1093 = call i8* @c_fetch_pointer_from_offset(i32 %1092)
  %1094 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1093)
  br i1 %1094, label %_Dynamic_check.succeeded986, label %_Dynamic_check.failed985

_Dynamic_check.succeeded986:                      ; preds = %if.end982
  %1095 = bitcast i8* %1093 to %Tstruct.json_object_t_t*
  %1096 = ptrtoint i8* %1091 to i32
  %1097 = call i8* @c_fetch_pointer_from_offset(i32 %1096)
  %1098 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1097)
  br i1 %1098, label %_Dynamic_check.succeeded988, label %_Dynamic_check.failed987

_Dynamic_check.succeeded988:                      ; preds = %_Dynamic_check.succeeded986
  %call989 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1095, i8* %1097)
  %tobool990 = icmp ne i8* %call989, null
  br i1 %tobool990, label %land.lhs.true991, label %cond.false1001

land.lhs.true991:                                 ; preds = %_Dynamic_check.succeeded988
  br i1 true, label %cond.true992, label %cond.false1001

cond.true992:                                     ; preds = %land.lhs.true991
  %1099 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1100 = load i8*, i8** %value_type, align 8
  %1101 = ptrtoint %Tstruct.json_object_t_t* %1099 to i32
  %1102 = call i8* @c_fetch_pointer_from_offset(i32 %1101)
  %1103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1102)
  br i1 %1103, label %_Dynamic_check.succeeded994, label %_Dynamic_check.failed993

_Dynamic_check.succeeded994:                      ; preds = %cond.true992
  %1104 = bitcast i8* %1102 to %Tstruct.json_object_t_t*
  %1105 = ptrtoint i8* %1100 to i32
  %1106 = call i8* @c_fetch_pointer_from_offset(i32 %1105)
  %1107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1106)
  br i1 %1107, label %_Dynamic_check.succeeded996, label %_Dynamic_check.failed995

_Dynamic_check.succeeded996:                      ; preds = %_Dynamic_check.succeeded994
  %call997 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1104, i8* %1106)
  %1108 = ptrtoint i8* %call997 to i64
  %1109 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1108)
  %1110 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.104 to i64))
  %call998 = call i32 @t_strcmp(i8* %1109, i8* %1110)
  %cmp999 = icmp eq i32 %call998, 0
  br i1 %cmp999, label %if.then1002, label %if.else1005

cond.false1001:                                   ; preds = %land.lhs.true991, %_Dynamic_check.succeeded988
  br i1 false, label %if.then1002, label %if.else1005

if.then1002:                                      ; preds = %cond.false1001, %_Dynamic_check.succeeded996
  %1111 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1003 = call i32 @puts(i8* %1111)
  %1112 = load i32, i32* @tests_passed, align 4
  %inc1004 = add nsw i32 %1112, 1
  store i32 %inc1004, i32* @tests_passed, align 4
  br label %if.end1008

_Dynamic_check.failed985:                         ; preds = %if.end982
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed987:                         ; preds = %_Dynamic_check.succeeded986
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed993:                         ; preds = %cond.true992
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed995:                         ; preds = %_Dynamic_check.succeeded994
  call void @llvm.trap() #6
  unreachable

if.else1005:                                      ; preds = %cond.false1001, %_Dynamic_check.succeeded996
  %1113 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1006 = call i32 @puts(i8* %1113)
  %1114 = load i32, i32* @tests_failed, align 4
  %inc1007 = add nsw i32 %1114, 1
  store i32 %inc1007, i32* @tests_failed, align 4
  br label %if.end1008

if.end1008:                                       ; preds = %if.else1005, %if.then1002
  %1115 = load i8*, i8** %value_type, align 8
  %1116 = ptrtoint i8* %1115 to i64
  %1117 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1116)
  %1118 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.105 to i64))
  %call1009 = call i8* @t_strcpy(i8* %1117, i8* %1118)
  %call1010 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 290, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i64 0, i64 0))
  %1119 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1120 = load i8*, i8** %value_type, align 8
  %1121 = ptrtoint %Tstruct.json_object_t_t* %1119 to i32
  %1122 = call i8* @c_fetch_pointer_from_offset(i32 %1121)
  %1123 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1122)
  br i1 %1123, label %_Dynamic_check.succeeded1012, label %_Dynamic_check.failed1011

_Dynamic_check.succeeded1012:                     ; preds = %if.end1008
  %1124 = bitcast i8* %1122 to %Tstruct.json_object_t_t*
  %1125 = ptrtoint i8* %1120 to i32
  %1126 = call i8* @c_fetch_pointer_from_offset(i32 %1125)
  %1127 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1126)
  br i1 %1127, label %_Dynamic_check.succeeded1014, label %_Dynamic_check.failed1013

_Dynamic_check.succeeded1014:                     ; preds = %_Dynamic_check.succeeded1012
  %call1015 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1124, i8* %1126)
  %tobool1016 = icmp ne i8* %call1015, null
  br i1 %tobool1016, label %land.lhs.true1017, label %cond.false1027

land.lhs.true1017:                                ; preds = %_Dynamic_check.succeeded1014
  br i1 true, label %cond.true1018, label %cond.false1027

cond.true1018:                                    ; preds = %land.lhs.true1017
  %1128 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1129 = load i8*, i8** %value_type, align 8
  %1130 = ptrtoint %Tstruct.json_object_t_t* %1128 to i32
  %1131 = call i8* @c_fetch_pointer_from_offset(i32 %1130)
  %1132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1131)
  br i1 %1132, label %_Dynamic_check.succeeded1020, label %_Dynamic_check.failed1019

_Dynamic_check.succeeded1020:                     ; preds = %cond.true1018
  %1133 = bitcast i8* %1131 to %Tstruct.json_object_t_t*
  %1134 = ptrtoint i8* %1129 to i32
  %1135 = call i8* @c_fetch_pointer_from_offset(i32 %1134)
  %1136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1135)
  br i1 %1136, label %_Dynamic_check.succeeded1022, label %_Dynamic_check.failed1021

_Dynamic_check.succeeded1022:                     ; preds = %_Dynamic_check.succeeded1020
  %call1023 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1133, i8* %1135)
  %1137 = ptrtoint i8* %call1023 to i64
  %1138 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1137)
  %1139 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.104 to i64))
  %call1024 = call i32 @t_strcmp(i8* %1138, i8* %1139)
  %cmp1025 = icmp eq i32 %call1024, 0
  br i1 %cmp1025, label %if.then1028, label %if.else1031

cond.false1027:                                   ; preds = %land.lhs.true1017, %_Dynamic_check.succeeded1014
  br i1 false, label %if.then1028, label %if.else1031

if.then1028:                                      ; preds = %cond.false1027, %_Dynamic_check.succeeded1022
  %1140 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1029 = call i32 @puts(i8* %1140)
  %1141 = load i32, i32* @tests_passed, align 4
  %inc1030 = add nsw i32 %1141, 1
  store i32 %inc1030, i32* @tests_passed, align 4
  br label %if.end1034

_Dynamic_check.failed1011:                        ; preds = %if.end1008
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1013:                        ; preds = %_Dynamic_check.succeeded1012
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1019:                        ; preds = %cond.true1018
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1021:                        ; preds = %_Dynamic_check.succeeded1020
  call void @llvm.trap() #6
  unreachable

if.else1031:                                      ; preds = %cond.false1027, %_Dynamic_check.succeeded1022
  %1142 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1032 = call i32 @puts(i8* %1142)
  %1143 = load i32, i32* @tests_failed, align 4
  %inc1033 = add nsw i32 %1143, 1
  store i32 %inc1033, i32* @tests_failed, align 4
  br label %if.end1034

if.end1034:                                       ; preds = %if.else1031, %if.then1028
  %1144 = load i8*, i8** %value_type, align 8
  %1145 = ptrtoint i8* %1144 to i64
  %1146 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1145)
  %1147 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.106 to i64))
  %call1035 = call i8* @t_strcpy(i8* %1146, i8* %1147)
  %call1036 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.107, i64 0, i64 0))
  %1148 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1149 = load i8*, i8** %value_type, align 8
  %1150 = ptrtoint %Tstruct.json_object_t_t* %1148 to i32
  %1151 = call i8* @c_fetch_pointer_from_offset(i32 %1150)
  %1152 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1151)
  br i1 %1152, label %_Dynamic_check.succeeded1038, label %_Dynamic_check.failed1037

_Dynamic_check.succeeded1038:                     ; preds = %if.end1034
  %1153 = bitcast i8* %1151 to %Tstruct.json_object_t_t*
  %1154 = ptrtoint i8* %1149 to i32
  %1155 = call i8* @c_fetch_pointer_from_offset(i32 %1154)
  %1156 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1155)
  br i1 %1156, label %_Dynamic_check.succeeded1040, label %_Dynamic_check.failed1039

_Dynamic_check.succeeded1040:                     ; preds = %_Dynamic_check.succeeded1038
  %call1041 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1153, i8* %1155)
  %tobool1042 = icmp ne i8* %call1041, null
  br i1 %tobool1042, label %land.lhs.true1043, label %cond.false1053

land.lhs.true1043:                                ; preds = %_Dynamic_check.succeeded1040
  br i1 true, label %cond.true1044, label %cond.false1053

cond.true1044:                                    ; preds = %land.lhs.true1043
  %1157 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1158 = load i8*, i8** %value_type, align 8
  %1159 = ptrtoint %Tstruct.json_object_t_t* %1157 to i32
  %1160 = call i8* @c_fetch_pointer_from_offset(i32 %1159)
  %1161 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1160)
  br i1 %1161, label %_Dynamic_check.succeeded1046, label %_Dynamic_check.failed1045

_Dynamic_check.succeeded1046:                     ; preds = %cond.true1044
  %1162 = bitcast i8* %1160 to %Tstruct.json_object_t_t*
  %1163 = ptrtoint i8* %1158 to i32
  %1164 = call i8* @c_fetch_pointer_from_offset(i32 %1163)
  %1165 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1164)
  br i1 %1165, label %_Dynamic_check.succeeded1048, label %_Dynamic_check.failed1047

_Dynamic_check.succeeded1048:                     ; preds = %_Dynamic_check.succeeded1046
  %call1049 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1162, i8* %1164)
  %1166 = ptrtoint i8* %call1049 to i64
  %1167 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1166)
  %1168 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([39 x i8]* @.str.108 to i64))
  %call1050 = call i32 @t_strcmp(i8* %1167, i8* %1168)
  %cmp1051 = icmp eq i32 %call1050, 0
  br i1 %cmp1051, label %if.then1054, label %if.else1057

cond.false1053:                                   ; preds = %land.lhs.true1043, %_Dynamic_check.succeeded1040
  br i1 false, label %if.then1054, label %if.else1057

if.then1054:                                      ; preds = %cond.false1053, %_Dynamic_check.succeeded1048
  %1169 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1055 = call i32 @puts(i8* %1169)
  %1170 = load i32, i32* @tests_passed, align 4
  %inc1056 = add nsw i32 %1170, 1
  store i32 %inc1056, i32* @tests_passed, align 4
  br label %if.end1060

_Dynamic_check.failed1037:                        ; preds = %if.end1034
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1039:                        ; preds = %_Dynamic_check.succeeded1038
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1045:                        ; preds = %cond.true1044
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1047:                        ; preds = %_Dynamic_check.succeeded1046
  call void @llvm.trap() #6
  unreachable

if.else1057:                                      ; preds = %cond.false1053, %_Dynamic_check.succeeded1048
  %1171 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1058 = call i32 @puts(i8* %1171)
  %1172 = load i32, i32* @tests_failed, align 4
  %inc1059 = add nsw i32 %1172, 1
  store i32 %inc1059, i32* @tests_failed, align 4
  br label %if.end1060

if.end1060:                                       ; preds = %if.else1057, %if.then1054
  %1173 = load i8*, i8** %value_type, align 8
  %1174 = ptrtoint i8* %1173 to i64
  %1175 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1174)
  %1176 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.109 to i64))
  %call1061 = call i8* @t_strcpy(i8* %1175, i8* %1176)
  %call1062 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.110, i64 0, i64 0))
  %1177 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1178 = load i8*, i8** %value_type, align 8
  %1179 = ptrtoint %Tstruct.json_object_t_t* %1177 to i32
  %1180 = call i8* @c_fetch_pointer_from_offset(i32 %1179)
  %1181 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1180)
  br i1 %1181, label %_Dynamic_check.succeeded1064, label %_Dynamic_check.failed1063

_Dynamic_check.succeeded1064:                     ; preds = %if.end1060
  %1182 = bitcast i8* %1180 to %Tstruct.json_object_t_t*
  %1183 = ptrtoint i8* %1178 to i32
  %1184 = call i8* @c_fetch_pointer_from_offset(i32 %1183)
  %1185 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1184)
  br i1 %1185, label %_Dynamic_check.succeeded1066, label %_Dynamic_check.failed1065

_Dynamic_check.succeeded1066:                     ; preds = %_Dynamic_check.succeeded1064
  %call1067 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1182, i8* %1184)
  %tobool1068 = icmp ne i8* %call1067, null
  br i1 %tobool1068, label %land.lhs.true1069, label %cond.false1079

land.lhs.true1069:                                ; preds = %_Dynamic_check.succeeded1066
  br i1 true, label %cond.true1070, label %cond.false1079

cond.true1070:                                    ; preds = %land.lhs.true1069
  %1186 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1187 = load i8*, i8** %value_type, align 8
  %1188 = ptrtoint %Tstruct.json_object_t_t* %1186 to i32
  %1189 = call i8* @c_fetch_pointer_from_offset(i32 %1188)
  %1190 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1189)
  br i1 %1190, label %_Dynamic_check.succeeded1072, label %_Dynamic_check.failed1071

_Dynamic_check.succeeded1072:                     ; preds = %cond.true1070
  %1191 = bitcast i8* %1189 to %Tstruct.json_object_t_t*
  %1192 = ptrtoint i8* %1187 to i32
  %1193 = call i8* @c_fetch_pointer_from_offset(i32 %1192)
  %1194 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1193)
  br i1 %1194, label %_Dynamic_check.succeeded1074, label %_Dynamic_check.failed1073

_Dynamic_check.succeeded1074:                     ; preds = %_Dynamic_check.succeeded1072
  %call1075 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1191, i8* %1193)
  %1195 = ptrtoint i8* %call1075 to i64
  %1196 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1195)
  %1197 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.111 to i64))
  %call1076 = call i32 @t_strcmp(i8* %1196, i8* %1197)
  %cmp1077 = icmp eq i32 %call1076, 0
  br i1 %cmp1077, label %if.then1080, label %if.else1083

cond.false1079:                                   ; preds = %land.lhs.true1069, %_Dynamic_check.succeeded1066
  br i1 false, label %if.then1080, label %if.else1083

if.then1080:                                      ; preds = %cond.false1079, %_Dynamic_check.succeeded1074
  %1198 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1081 = call i32 @puts(i8* %1198)
  %1199 = load i32, i32* @tests_passed, align 4
  %inc1082 = add nsw i32 %1199, 1
  store i32 %inc1082, i32* @tests_passed, align 4
  br label %if.end1086

_Dynamic_check.failed1063:                        ; preds = %if.end1060
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1065:                        ; preds = %_Dynamic_check.succeeded1064
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1071:                        ; preds = %cond.true1070
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1073:                        ; preds = %_Dynamic_check.succeeded1072
  call void @llvm.trap() #6
  unreachable

if.else1083:                                      ; preds = %cond.false1079, %_Dynamic_check.succeeded1074
  %1200 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1084 = call i32 @puts(i8* %1200)
  %1201 = load i32, i32* @tests_failed, align 4
  %inc1085 = add nsw i32 %1201, 1
  store i32 %inc1085, i32* @tests_failed, align 4
  br label %if.end1086

if.end1086:                                       ; preds = %if.else1083, %if.then1080
  %1202 = load i8*, i8** %value_type, align 8
  %1203 = ptrtoint i8* %1202 to i64
  %1204 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1203)
  %1205 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.112 to i64))
  %call1087 = call i8* @t_strcpy(i8* %1204, i8* %1205)
  %call1088 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.113, i64 0, i64 0))
  %1206 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1207 = load i8*, i8** %value_type, align 8
  %1208 = ptrtoint %Tstruct.json_object_t_t* %1206 to i32
  %1209 = call i8* @c_fetch_pointer_from_offset(i32 %1208)
  %1210 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1209)
  br i1 %1210, label %_Dynamic_check.succeeded1090, label %_Dynamic_check.failed1089

_Dynamic_check.succeeded1090:                     ; preds = %if.end1086
  %1211 = bitcast i8* %1209 to %Tstruct.json_object_t_t*
  %1212 = ptrtoint i8* %1207 to i32
  %1213 = call i8* @c_fetch_pointer_from_offset(i32 %1212)
  %1214 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1213)
  br i1 %1214, label %_Dynamic_check.succeeded1092, label %_Dynamic_check.failed1091

_Dynamic_check.succeeded1092:                     ; preds = %_Dynamic_check.succeeded1090
  %call1093 = call %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %1211, i8* %1213)
  %cmp1094 = icmp ne %Tstruct.json_object_t_t* %call1093, null
  br i1 %cmp1094, label %if.then1096, label %if.else1099

if.then1096:                                      ; preds = %_Dynamic_check.succeeded1092
  %1215 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1097 = call i32 @puts(i8* %1215)
  %1216 = load i32, i32* @tests_passed, align 4
  %inc1098 = add nsw i32 %1216, 1
  store i32 %inc1098, i32* @tests_passed, align 4
  br label %if.end1102

_Dynamic_check.failed1089:                        ; preds = %if.end1086
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1091:                        ; preds = %_Dynamic_check.succeeded1090
  call void @llvm.trap() #6
  unreachable

if.else1099:                                      ; preds = %_Dynamic_check.succeeded1092
  %1217 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1100 = call i32 @puts(i8* %1217)
  %1218 = load i32, i32* @tests_failed, align 4
  %inc1101 = add nsw i32 %1218, 1
  store i32 %inc1101, i32* @tests_failed, align 4
  br label %if.end1102

if.end1102:                                       ; preds = %if.else1099, %if.then1096
  %1219 = load i8*, i8** %value_type, align 8
  %1220 = ptrtoint i8* %1219 to i64
  %1221 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1220)
  %1222 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.114 to i64))
  %call1103 = call i8* @t_strcpy(i8* %1221, i8* %1222)
  %call1104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 299, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.115, i64 0, i64 0))
  %1223 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1224 = load i8*, i8** %value_type, align 8
  %1225 = ptrtoint %Tstruct.json_object_t_t* %1223 to i32
  %1226 = call i8* @c_fetch_pointer_from_offset(i32 %1225)
  %1227 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1226)
  br i1 %1227, label %_Dynamic_check.succeeded1106, label %_Dynamic_check.failed1105

_Dynamic_check.succeeded1106:                     ; preds = %if.end1102
  %1228 = bitcast i8* %1226 to %Tstruct.json_object_t_t*
  %1229 = ptrtoint i8* %1224 to i32
  %1230 = call i8* @c_fetch_pointer_from_offset(i32 %1229)
  %1231 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1230)
  br i1 %1231, label %_Dynamic_check.succeeded1108, label %_Dynamic_check.failed1107

_Dynamic_check.succeeded1108:                     ; preds = %_Dynamic_check.succeeded1106
  %call1109 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %1228, i8* %1230)
  %cmp1110 = icmp ne %Tstruct.json_array_t_t* %call1109, null
  br i1 %cmp1110, label %if.then1112, label %if.else1115

if.then1112:                                      ; preds = %_Dynamic_check.succeeded1108
  %1232 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1113 = call i32 @puts(i8* %1232)
  %1233 = load i32, i32* @tests_passed, align 4
  %inc1114 = add nsw i32 %1233, 1
  store i32 %inc1114, i32* @tests_passed, align 4
  br label %if.end1118

_Dynamic_check.failed1105:                        ; preds = %if.end1102
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1107:                        ; preds = %_Dynamic_check.succeeded1106
  call void @llvm.trap() #6
  unreachable

if.else1115:                                      ; preds = %_Dynamic_check.succeeded1108
  %1234 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1116 = call i32 @puts(i8* %1234)
  %1235 = load i32, i32* @tests_failed, align 4
  %inc1117 = add nsw i32 %1235, 1
  store i32 %inc1117, i32* @tests_failed, align 4
  br label %if.end1118

if.end1118:                                       ; preds = %if.else1115, %if.then1112
  %call1119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.116, i64 0, i64 0))
  %1236 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1237 = ptrtoint %Tstruct.json_object_t_t* %1236 to i32
  %1238 = call i8* @c_fetch_pointer_from_offset(i32 %1237)
  %1239 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1238)
  br i1 %1239, label %_Dynamic_check.succeeded1121, label %_Dynamic_check.failed1120

_Dynamic_check.succeeded1121:                     ; preds = %if.end1118
  %1240 = bitcast i8* %1238 to %Tstruct.json_object_t_t*
  %call1122 = call %Tstruct.json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %1240)
  %1241 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 8
  %cmp1123 = icmp eq %Tstruct.json_value_t_t* %call1122, %1241
  br i1 %cmp1123, label %if.then1125, label %if.else1128

if.then1125:                                      ; preds = %_Dynamic_check.succeeded1121
  %1242 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1126 = call i32 @puts(i8* %1242)
  %1243 = load i32, i32* @tests_passed, align 4
  %inc1127 = add nsw i32 %1243, 1
  store i32 %inc1127, i32* @tests_passed, align 4
  br label %if.end1131

_Dynamic_check.failed1120:                        ; preds = %if.end1118
  call void @llvm.trap() #6
  unreachable

if.else1128:                                      ; preds = %_Dynamic_check.succeeded1121
  %1244 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1129 = call i32 @puts(i8* %1244)
  %1245 = load i32, i32* @tests_failed, align 4
  %inc1130 = add nsw i32 %1245, 1
  store i32 %inc1130, i32* @tests_failed, align 4
  br label %if.end1131

if.end1131:                                       ; preds = %if.else1128, %if.then1125
  %1246 = load i8*, i8** %value_type, align 8
  %1247 = ptrtoint i8* %1246 to i64
  %1248 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1247)
  %1249 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call1132 = call i8* @t_strcpy(i8* %1248, i8* %1249)
  %1250 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1251 = load i8*, i8** %value_type, align 8
  %1252 = ptrtoint %Tstruct.json_object_t_t* %1250 to i32
  %1253 = call i8* @c_fetch_pointer_from_offset(i32 %1252)
  %1254 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1253)
  br i1 %1254, label %_Dynamic_check.succeeded1134, label %_Dynamic_check.failed1133

_Dynamic_check.succeeded1134:                     ; preds = %if.end1131
  %1255 = bitcast i8* %1253 to %Tstruct.json_object_t_t*
  %1256 = ptrtoint i8* %1251 to i32
  %1257 = call i8* @c_fetch_pointer_from_offset(i32 %1256)
  %1258 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1257)
  br i1 %1258, label %_Dynamic_check.succeeded1136, label %_Dynamic_check.failed1135

_Dynamic_check.succeeded1136:                     ; preds = %_Dynamic_check.succeeded1134
  %call1137 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %1255, i8* %1257)
  store %Tstruct.json_array_t_t* %call1137, %Tstruct.json_array_t_t** %array, align 8
  %1259 = load i8*, i8** %value_type, align 8
  %1260 = ptrtoint i8* %1259 to i64
  %1261 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1260)
  %1262 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call1138 = call i8* @t_strcpy(i8* %1261, i8* %1262)
  %1263 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 8
  %1264 = load i8*, i8** %value_type, align 8
  %1265 = ptrtoint %Tstruct.json_object_t_t* %1263 to i32
  %1266 = call i8* @c_fetch_pointer_from_offset(i32 %1265)
  %1267 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1266)
  br i1 %1267, label %_Dynamic_check.succeeded1140, label %_Dynamic_check.failed1139

_Dynamic_check.succeeded1140:                     ; preds = %_Dynamic_check.succeeded1136
  %1268 = bitcast i8* %1266 to %Tstruct.json_object_t_t*
  %1269 = ptrtoint i8* %1264 to i32
  %1270 = call i8* @c_fetch_pointer_from_offset(i32 %1269)
  %1271 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1270)
  br i1 %1271, label %_Dynamic_check.succeeded1142, label %_Dynamic_check.failed1141

_Dynamic_check.succeeded1142:                     ; preds = %_Dynamic_check.succeeded1140
  %call1143 = call %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %1268, i8* %1270)
  store %Tstruct.json_value_t_t* %call1143, %Tstruct.json_value_t_t** %array_value, align 8
  %call1144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 306, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.117, i64 0, i64 0))
  %1272 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 8
  %1273 = ptrtoint %Tstruct.json_array_t_t* %1272 to i32
  %1274 = call i8* @c_fetch_pointer_from_offset(i32 %1273)
  %1275 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1274)
  br i1 %1275, label %_Dynamic_check.succeeded1146, label %_Dynamic_check.failed1145

_Dynamic_check.succeeded1146:                     ; preds = %_Dynamic_check.succeeded1142
  %1276 = bitcast i8* %1274 to %Tstruct.json_array_t_t*
  %call1147 = call %Tstruct.json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %1276)
  %1277 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %array_value, align 8
  %cmp1148 = icmp eq %Tstruct.json_value_t_t* %call1147, %1277
  br i1 %cmp1148, label %if.then1150, label %if.else1153

if.then1150:                                      ; preds = %_Dynamic_check.succeeded1146
  %1278 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1151 = call i32 @puts(i8* %1278)
  %1279 = load i32, i32* @tests_passed, align 4
  %inc1152 = add nsw i32 %1279, 1
  store i32 %inc1152, i32* @tests_passed, align 4
  br label %if.end1156

_Dynamic_check.failed1133:                        ; preds = %if.end1131
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1135:                        ; preds = %_Dynamic_check.succeeded1134
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1139:                        ; preds = %_Dynamic_check.succeeded1136
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1141:                        ; preds = %_Dynamic_check.succeeded1140
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1145:                        ; preds = %_Dynamic_check.succeeded1142
  call void @llvm.trap() #6
  unreachable

if.else1153:                                      ; preds = %_Dynamic_check.succeeded1146
  %1280 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1154 = call i32 @puts(i8* %1280)
  %1281 = load i32, i32* @tests_failed, align 4
  %inc1155 = add nsw i32 %1281, 1
  store i32 %inc1155, i32* @tests_failed, align 4
  br label %if.end1156

if.end1156:                                       ; preds = %if.else1153, %if.then1150
  %call1157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 307, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.118, i64 0, i64 0))
  %1282 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %array_value, align 8
  %1283 = ptrtoint %Tstruct.json_value_t_t* %1282 to i32
  %1284 = call i8* @c_fetch_pointer_from_offset(i32 %1283)
  %1285 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1284)
  br i1 %1285, label %_Dynamic_check.succeeded1159, label %_Dynamic_check.failed1158

_Dynamic_check.succeeded1159:                     ; preds = %if.end1156
  %1286 = bitcast i8* %1284 to %Tstruct.json_value_t_t*
  %call1160 = call %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %1286)
  %1287 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 8
  %cmp1161 = icmp eq %Tstruct.json_value_t_t* %call1160, %1287
  br i1 %cmp1161, label %if.then1163, label %if.else1166

if.then1163:                                      ; preds = %_Dynamic_check.succeeded1159
  %1288 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1164 = call i32 @puts(i8* %1288)
  %1289 = load i32, i32* @tests_passed, align 4
  %inc1165 = add nsw i32 %1289, 1
  store i32 %inc1165, i32* @tests_passed, align 4
  br label %if.end1169

_Dynamic_check.failed1158:                        ; preds = %if.end1156
  call void @llvm.trap() #6
  unreachable

if.else1166:                                      ; preds = %_Dynamic_check.succeeded1159
  %1290 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1167 = call i32 @puts(i8* %1290)
  %1291 = load i32, i32* @tests_failed, align 4
  %inc1168 = add nsw i32 %1291, 1
  store i32 %inc1168, i32* @tests_failed, align 4
  br label %if.end1169

if.end1169:                                       ; preds = %if.else1166, %if.then1163
  %call1170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 308, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.119, i64 0, i64 0))
  %1292 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 8
  %1293 = ptrtoint %Tstruct.json_value_t_t* %1292 to i32
  %1294 = call i8* @c_fetch_pointer_from_offset(i32 %1293)
  %1295 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1294)
  br i1 %1295, label %_Dynamic_check.succeeded1172, label %_Dynamic_check.failed1171

_Dynamic_check.succeeded1172:                     ; preds = %if.end1169
  %1296 = bitcast i8* %1294 to %Tstruct.json_value_t_t*
  %call1173 = call %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %1296)
  %cmp1174 = icmp eq %Tstruct.json_value_t_t* %call1173, null
  br i1 %cmp1174, label %if.then1176, label %if.else1179

if.then1176:                                      ; preds = %_Dynamic_check.succeeded1172
  %1297 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.5 to i64))
  %call1177 = call i32 @puts(i8* %1297)
  %1298 = load i32, i32* @tests_passed, align 4
  %inc1178 = add nsw i32 %1298, 1
  store i32 %inc1178, i32* @tests_passed, align 4
  br label %if.end1182

_Dynamic_check.failed1171:                        ; preds = %if.end1169
  call void @llvm.trap() #6
  unreachable

if.else1179:                                      ; preds = %_Dynamic_check.succeeded1172
  %1299 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.6 to i64))
  %call1180 = call i32 @puts(i8* %1299)
  %1300 = load i32, i32* @tests_failed, align 4
  %inc1181 = add nsw i32 %1300, 1
  store i32 %inc1181, i32* @tests_failed, align 4
  br label %if.end1182

if.end1182:                                       ; preds = %if.else1179, %if.then1176
  ret void
}

declare dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t*) #1

declare dso_local %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t*) #1

declare dso_local i8* @t_strcpy(i8*, i8*) #1

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
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git f13a7c07dd7a6af0e953cbe39133cb8b36f61d89)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
