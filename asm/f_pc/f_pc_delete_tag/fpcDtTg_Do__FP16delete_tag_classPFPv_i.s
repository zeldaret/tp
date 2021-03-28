lbl_80020F9C:
/* 80020F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020FA0  7C 08 02 A6 */	mflr r0
/* 80020FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020FAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80020FB0  7C 7E 1B 78 */	mr r30, r3
/* 80020FB4  7C 9F 23 78 */	mr r31, r4
/* 80020FB8  A8 83 00 18 */	lha r4, 0x18(r3)
/* 80020FBC  2C 04 00 00 */	cmpwi r4, 0
/* 80020FC0  41 81 00 38 */	bgt lbl_80020FF8
/* 80020FC4  4B FF FF B9 */	bl fpcDtTg_DeleteQTo__FP16delete_tag_class
/* 80020FC8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80020FCC  7F EC FB 78 */	mr r12, r31
/* 80020FD0  7D 89 03 A6 */	mtctr r12
/* 80020FD4  4E 80 04 21 */	bctrl 
/* 80020FD8  2C 03 00 00 */	cmpwi r3, 0
/* 80020FDC  40 82 00 14 */	bne lbl_80020FF0
/* 80020FE0  7F C3 F3 78 */	mr r3, r30
/* 80020FE4  4B FF FF 65 */	bl fpcDtTg_ToDeleteQ__FP16delete_tag_class
/* 80020FE8  38 60 00 00 */	li r3, 0
/* 80020FEC  48 00 00 18 */	b lbl_80021004
lbl_80020FF0:
/* 80020FF0  38 60 00 01 */	li r3, 1
/* 80020FF4  48 00 00 10 */	b lbl_80021004
lbl_80020FF8:
/* 80020FF8  38 04 FF FF */	addi r0, r4, -1
/* 80020FFC  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 80021000  38 60 00 00 */	li r3, 0
lbl_80021004:
/* 80021004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021008  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002100C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021010  7C 08 03 A6 */	mtlr r0
/* 80021014  38 21 00 10 */	addi r1, r1, 0x10
/* 80021018  4E 80 00 20 */	blr 
