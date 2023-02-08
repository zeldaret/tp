lbl_80A85BC8:
/* 80A85BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A85BCC  7C 08 02 A6 */	mflr r0
/* 80A85BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A85BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A85BD8  7C 7F 1B 78 */	mr r31, r3
/* 80A85BDC  A0 03 0E 0A */	lhz r0, 0xe0a(r3)
/* 80A85BE0  2C 00 00 02 */	cmpwi r0, 2
/* 80A85BE4  41 82 00 54 */	beq lbl_80A85C38
/* 80A85BE8  40 80 00 60 */	bge lbl_80A85C48
/* 80A85BEC  2C 00 00 00 */	cmpwi r0, 0
/* 80A85BF0  41 82 00 0C */	beq lbl_80A85BFC
/* 80A85BF4  48 00 00 54 */	b lbl_80A85C48
/* 80A85BF8  48 00 00 50 */	b lbl_80A85C48
lbl_80A85BFC:
/* 80A85BFC  38 80 00 00 */	li r4, 0
/* 80A85C00  3C A0 80 A9 */	lis r5, lit_4982@ha /* 0x80A885C0@ha */
/* 80A85C04  C0 25 85 C0 */	lfs f1, lit_4982@l(r5)  /* 0x80A885C0@l */
/* 80A85C08  38 A0 00 00 */	li r5, 0
/* 80A85C0C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A85C10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A85C14  7D 89 03 A6 */	mtctr r12
/* 80A85C18  4E 80 04 21 */	bctrl 
/* 80A85C1C  7F E3 FB 78 */	mr r3, r31
/* 80A85C20  38 80 00 00 */	li r4, 0
/* 80A85C24  4B FF FF 81 */	bl setLookMode__13daNpc_myna2_cFi
/* 80A85C28  38 00 00 00 */	li r0, 0
/* 80A85C2C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A85C30  38 00 00 02 */	li r0, 2
/* 80A85C34  B0 1F 0E 0A */	sth r0, 0xe0a(r31)
lbl_80A85C38:
/* 80A85C38  7F E3 FB 78 */	mr r3, r31
/* 80A85C3C  4B 59 40 41 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80A85C40  38 60 00 01 */	li r3, 1
/* 80A85C44  48 00 00 08 */	b lbl_80A85C4C
lbl_80A85C48:
/* 80A85C48  38 60 00 01 */	li r3, 1
lbl_80A85C4C:
/* 80A85C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A85C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A85C54  7C 08 03 A6 */	mtlr r0
/* 80A85C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A85C5C  4E 80 00 20 */	blr 
