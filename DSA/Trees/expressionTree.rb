# Build an Expression Tree
# ● Problem: Given an infix expression (e.g., "3 + 4 * 2"), build an expression tree where:
# ○ Operators are internal nodes.
# ○ Operands are leaf nodes.
# ● Solution Approach:
# ○ Use a stack to handle operator precedence.
# ○ Traverse the expression:
# ■ If it's an operand, create a leaf node.
# ■ If it's an operator:
# ■ Pop two operands from the stack.
# ■ Create a new node with the operator and the popped operands as
# children.
# ■ Push the new node back onto the stack.


