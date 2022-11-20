# n-Bit Ripple Carry Adder
Configurable Two-Operand Adder

## Description
- This design adds two *n*-bit operands
- *n* can be configured using `parameter bit_width`
- Based on a single full adder and `generate` statements

## Contents
- rca.v
- fa.v

## Port List
**Top Module:** rca.v

| Port Name | Bit Width | Direction | Synchronous | Description |
|---|---|---|---|---|
| CARRY | 1 | output | - | Carry Output |
| SUM | `bit_width` | output | - | Sum Output |
| a | `bit_width` | input | - | n-bit Operand 1 |
| b | `bit_width` | input | - | n-bit Operand 2 |
| c | 1 | input | - | Carry Input |

## Usage

Instantiate with default `bit_width` (64)
```
  rca INSTANCE_NAME (PORT_MAP);
```

Instantiate with custom `bit_width` (n)
```
  rca #(n) INSTANCE_NAME (PORT_MAP)
```

## References
