lbl_8051B820:
/* 8051B820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B824  7C 08 02 A6 */	mflr r0
/* 8051B828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B830  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051B834  41 82 00 1C */	beq lbl_8051B850
/* 8051B838  3C A0 80 52 */	lis r5, __vt__8cM3dGSph@ha /* 0x8051BBB0@ha */
/* 8051B83C  38 05 BB B0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8051BBB0@l */
/* 8051B840  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8051B844  7C 80 07 35 */	extsh. r0, r4
/* 8051B848  40 81 00 08 */	ble lbl_8051B850
/* 8051B84C  4B DB 34 F1 */	bl __dl__FPv
lbl_8051B850:
/* 8051B850  7F E3 FB 78 */	mr r3, r31
/* 8051B854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B85C  7C 08 03 A6 */	mtlr r0
/* 8051B860  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B864  4E 80 00 20 */	blr 
