# ifelse

*This will check if the string exists. If it does it will print the first output, otherwise it will print the second output.*

### **Usage**

    {{ string_to_check | ifelse: if_output, else_output }}

### **Parameters**

- `string_to_check` string. required. The string to check if it exists
- `if_output` string. The string to output if *string_to_check* exists.
- `else_output` string. The string to output if *string_to_check* doesn't exist.

### Return

- string. This will return the value of either *output_1* or *output_2*.

## **Example**

### Input

    {% assign content = "hello world! hello world!" %}
    {% assign empty_content = "" %}
    
    {{ content | ifelse: "string exists", "string doesn't exist" }}
    {{ empty_content | ifelse: "string exists", "string doesn't exist" }}

### **Output**

    string exists
    string doesn't exist
