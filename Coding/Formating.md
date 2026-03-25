# How to write good formated code
This Document describes how Eclipse plans to write code. 
It will be code Agnostic but may show Language spesific exsamples on best pracises.


(dette dokumentet skal være en sourse of thruth fra alt fra "snakeCase eller Pascal_Case, hva er variabel hva er funk" til "dokumentasjons retningslinjer, selvforklarende code dokumentert med hvorfor ikke hvordan")

## Naming conventions
| Type | Convention |
|-|-|
|FileName| PascalCase |
|class| PascalCase |
|function| camelCase |
|variable| camelCase |
|constant| UPPER_SNAKE_CASE |
|interface| IPascalCase |
|enum| PascalCase |
|namespace| PascalCase |
|package| lowercase |
|test Filename| PascalCase_test |
|test|test_snake_case |

'''python
# filename: ExampleScript.py
class MyClass:
    def my_function(self, myVariable):
        MY_CONSTANT = 42
        return myVariable + MY_CONSTANT
        
# filename: MyClass_test.py
def test_my_function():
    # test code here
'''

## Code formatting
- Use 4 spaces for indentation, no tabs.
- Limit lines to 80 characters.
- Use blank lines to separate logical sections of code.
- Place opening braces on the same line as the declaration.
- Use spaces around operators and after commas.
- Use descriptive names for variables, functions, and classes.
- Single responsibility principle: each function or class should have one responsibility.
- Avoid deep nesting of code, refactor into smaller functions.

'''C++
// filename: ExampleClass.cpp
class ExampleClass ...
'''


## Checklist for code review
### naming
- [ ] Are every variable, function, and class names descriptive and follow naming conventions?

### formatting
- [ ] Is the code properly indented and formatted according to guidelines?

# Changelog
|Name|Date|Change|
|-|-|-| 
|Gabriel Røer | 25-03-26 | Started doc,Added formatting guidelines, start on Checklist|


(add your name on change with coment on change to show outside partners we keep our docs uppdated)