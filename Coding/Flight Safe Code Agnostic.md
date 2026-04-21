# How to write Flight safe code
This Document describes how Eclipse plans to write Flight safe code. 
It will be code Agnostic but may show Language spesific exsamples on best pracises.


(dette dokumentet skal være en sourse of thruth hvordan vi lager code som ikke under noen omstendigheter kresher på slik måte den ikke kan redde seg selv inn igjen)

## Abriviations and terms
| Abriviation | Meaning |
|-|-|
|FSC| Flight Safe Code |
|agnostic| code that is not spesific to a language but can be applied to all languages|



# Changelog


|Name|Date|Change|
|-|-|-| 
|Gabriel Røer | 18-03-26 | Started doc|
|Gabriel Røer | 25-03-26 | revised spitt (formating | |FSC)|
|Lasse Lindholm | 21-04-26 | Added conventions for code |

(add your name on change with coment on change to show outside partners we keep our docs uppdated)

# Conventions for production safe code

---

## Overall
- Code should be deterministic and predictable
- Continuous testing during development incase anything breaks
- Readability over speed
- All software should have failsafe functionality

## 1 General conventions 
### 1.1 Readability
- No shortcuts or "clever solutions"
- A function should have no more than 1 purpose
- A function should not be longer than 40 lines long

### 1.2 Naming
- variables: snake_case
- data-encapsulation: _data
- constants: UPPER_CASE
- Functions: verb_object()

### 1.3 No Magic numbers
- Do: #DEFINE max_temp 85
- Do not: if (temp > 85):

### 1.4 Functions and Loops
- There should be no recursion in any software.
- avoid deep nested code

## 2 System Reliability constraints

### 2.1 Memory
- All memory usage should be defined
- Meaning no undefined behavior
- No dynamic memory allocation (Everything should be defined statically or in init())
  
### 2.2 Input Handling
- Sensors can fail and communication can corrupt
- Therefore all reads and inputs should be validated

# 3 Error handling
### 3.1
- No error should stop the running software
- Example: <br>
  if (error) { <br>
  log_error(error); <br>
  enter_safe_mode()<br>
  }
### 3.2 Define "safe mode"
- Low battery
- Dead sensors (depends on which and what the mission goal is)
- lost communication

## 4 Testing
### 4.1 Requirements
- All logic should be testable without hardware
- Use "mocks" or "stubs"
### 4.2 Test levels
- Unittest every single function
- integration tests
- HIL (hardware in the loop)
### 4.3
- Never merge code without tests/testing

## 5 Code reviews
### 5.1 reviewing
- reviewer can not be the author of the code
- review should be done by at least 1, preferably 2 people
### 5.2 Checklist for review
- Is it readable? (Do I understand the code without an explanation)
- What happens if an input is wrong?
- Could this crash?
- Could it lead to undefined behavior?

## 6 Architecture
#### HAL (Hardware Abstraction Layer)
- Interface between hardware and software
- Standardized APIs for sensors and actuators
- Must not contain any mission logic or decision making
#### Core Logic
- Contains all critical decision making
- Receives and processes data from HAL
- Determines system behavior based on state
- Must be hardware independent
#### Fault Handling
- Monitors and detects anomalies/errors
- Handles error clasification









