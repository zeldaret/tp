lbl_80049BC0:
/* 80049BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80049BC4  7C 08 02 A6 */	mflr r0
/* 80049BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80049BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80049BD0  7C 7F 1B 78 */	mr r31, r3
/* 80049BD4  38 60 00 00 */	li r3, 0
/* 80049BD8  48 31 60 6D */	bl GXSetColorUpdate
/* 80049BDC  88 9F 00 BB */	lbz r4, 0xbb(r31)
/* 80049BE0  38 60 00 06 */	li r3, 6
/* 80049BE4  38 A0 00 01 */	li r5, 1
/* 80049BE8  38 C0 00 06 */	li r6, 6
/* 80049BEC  7C 87 23 78 */	mr r7, r4
/* 80049BF0  48 31 5A 35 */	bl GXSetAlphaCompare
/* 80049BF4  38 60 00 01 */	li r3, 1
/* 80049BF8  38 80 00 03 */	li r4, 3
/* 80049BFC  38 A0 00 01 */	li r5, 1
/* 80049C00  48 31 60 9D */	bl GXSetZMode
/* 80049C04  38 60 00 00 */	li r3, 0
/* 80049C08  48 31 60 C9 */	bl GXSetZCompLoc
/* 80049C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80049C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80049C14  7C 08 03 A6 */	mtlr r0
/* 80049C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80049C1C  4E 80 00 20 */	blr 
