lbl_809BFD04:
/* 809BFD04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFD08  7C 08 02 A6 */	mflr r0
/* 809BFD0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFD10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFD14  93 C1 00 08 */	stw r30, 8(r1)
/* 809BFD18  7C 7E 1B 78 */	mr r30, r3
/* 809BFD1C  7C 9F 23 78 */	mr r31, r4
/* 809BFD20  4B 65 8F C0 */	b fopAc_IsActor__FPv
/* 809BFD24  2C 03 00 00 */	cmpwi r3, 0
/* 809BFD28  41 82 00 1C */	beq lbl_809BFD44
/* 809BFD2C  A8 1E 00 08 */	lha r0, 8(r30)
/* 809BFD30  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 809BFD34  40 82 00 10 */	bne lbl_809BFD44
/* 809BFD38  88 7F 16 92 */	lbz r3, 0x1692(r31)
/* 809BFD3C  38 03 00 01 */	addi r0, r3, 1
/* 809BFD40  98 1F 16 92 */	stb r0, 0x1692(r31)
lbl_809BFD44:
/* 809BFD44  38 60 00 00 */	li r3, 0
/* 809BFD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFD4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BFD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFD54  7C 08 03 A6 */	mtlr r0
/* 809BFD58  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFD5C  4E 80 00 20 */	blr 
