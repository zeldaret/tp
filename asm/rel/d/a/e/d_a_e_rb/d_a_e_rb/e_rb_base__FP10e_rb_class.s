lbl_80763DB0:
/* 80763DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80763DB4  7C 08 02 A6 */	mflr r0
/* 80763DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80763DBC  A8 03 0A 42 */	lha r0, 0xa42(r3)
/* 80763DC0  2C 00 00 01 */	cmpwi r0, 1
/* 80763DC4  41 82 00 1C */	beq lbl_80763DE0
/* 80763DC8  40 80 00 1C */	bge lbl_80763DE4
/* 80763DCC  2C 00 00 00 */	cmpwi r0, 0
/* 80763DD0  40 80 00 08 */	bge lbl_80763DD8
/* 80763DD4  48 00 00 10 */	b lbl_80763DE4
lbl_80763DD8:
/* 80763DD8  4B FF F7 7D */	bl e_rb_base_0__FP10e_rb_class
/* 80763DDC  48 00 00 08 */	b lbl_80763DE4
lbl_80763DE0:
/* 80763DE0  4B FF F8 DD */	bl e_rb_base_1__FP10e_rb_class
lbl_80763DE4:
/* 80763DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80763DE8  7C 08 03 A6 */	mtlr r0
/* 80763DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80763DF0  4E 80 00 20 */	blr 
