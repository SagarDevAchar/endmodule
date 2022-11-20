# m-Operand Fast Adder
Configurable m-Operand Adder

## Description
- Adds m *n*-bit Numbers
- *m* represents the Number of Operands
- *n* represents Bit Width of the Operands
- Based on Carry-Save Logic

## Contents
- fastadder.v
- csa.v
- cpa.v (Same as [rca.v](https://github.com/SagarDevAchar/endmodule/blob/modules/n-Bit%20Ripple%20Carry%20Adder/rca.v))
- fa.v

## Port List

**Top Module:** fastadder.v

| Port Name | Bit Width | Direction | Synchronous | Description |
|---|---|---|---|---|
| C | 1 | output | - | Carry Output |
| S | `n` | output | - | Sum Output |
| x | `m` $\times$ `n` | input | - | Concatenated *n*-bit operands
| c | 1 | input | - | Carry Input |

## Usage
Instantiate with defaults (`m` = 3, `n` = 64)
```
  fastadder INSTANCE_NAME (CARRY, SUM, {OP1, OP2, OP3})     // Performs {CARRY, SUM} = OP1 + OP2 + OP3
```
Instantiate with custom values
```
  fastadder #(m, n) INSTANCE_NAME (CARRY, SUM, {OP1, OP2, OP3, ... , OPm})     // Performs {CARRY, SUM} = OP1 + OP2 + OP3 + ... + OPm
```

**NOTE:**
- The Concatenation Operator `{}` is mandatory and is internally mapped as individual operands
- All Operands are strictly required to have the same bit width of `n`

## References

