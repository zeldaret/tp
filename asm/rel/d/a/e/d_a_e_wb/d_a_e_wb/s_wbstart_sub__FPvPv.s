lbl_807D53AC:
/* 807D53AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D53B0  7C 08 02 A6 */	mflr r0
/* 807D53B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D53B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D53BC  7C 7F 1B 78 */	mr r31, r3
/* 807D53C0  4B 84 39 20 */	b fopAc_IsActor__FPv
/* 807D53C4  2C 03 00 00 */	cmpwi r3, 0
/* 807D53C8  41 82 00 28 */	beq lbl_807D53F0
/* 807D53CC  A8 1F 00 08 */	lha r0, 8(r31)
/* 807D53D0  2C 00 00 EF */	cmpwi r0, 0xef
/* 807D53D4  40 82 00 1C */	bne lbl_807D53F0
/* 807D53D8  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807D53DC  7C 00 07 75 */	extsb. r0, r0
/* 807D53E0  40 82 00 10 */	bne lbl_807D53F0
/* 807D53E4  38 00 00 01 */	li r0, 1
/* 807D53E8  98 1F 07 A6 */	stb r0, 0x7a6(r31)
/* 807D53EC  98 1F 07 A7 */	stb r0, 0x7a7(r31)
lbl_807D53F0:
/* 807D53F0  38 60 00 00 */	li r3, 0
/* 807D53F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D53F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D53FC  7C 08 03 A6 */	mtlr r0
/* 807D5400  38 21 00 10 */	addi r1, r1, 0x10
/* 807D5404  4E 80 00 20 */	blr 
