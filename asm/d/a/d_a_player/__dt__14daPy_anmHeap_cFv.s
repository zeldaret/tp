lbl_8015ED50:
/* 8015ED50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ED54  7C 08 02 A6 */	mflr r0
/* 8015ED58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ED5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015ED60  93 C1 00 08 */	stw r30, 8(r1)
/* 8015ED64  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015ED68  7C 9F 23 78 */	mr r31, r4
/* 8015ED6C  41 82 00 24 */	beq lbl_8015ED90
/* 8015ED70  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8015ED74  28 03 00 00 */	cmplwi r3, 0
/* 8015ED78  41 82 00 08 */	beq lbl_8015ED80
/* 8015ED7C  4B EB 04 11 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
lbl_8015ED80:
/* 8015ED80  7F E0 07 35 */	extsh. r0, r31
/* 8015ED84  40 81 00 0C */	ble lbl_8015ED90
/* 8015ED88  7F C3 F3 78 */	mr r3, r30
/* 8015ED8C  48 16 FF B1 */	bl __dl__FPv
lbl_8015ED90:
/* 8015ED90  7F C3 F3 78 */	mr r3, r30
/* 8015ED94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015ED98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015ED9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015EDA0  7C 08 03 A6 */	mtlr r0
/* 8015EDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015EDA8  4E 80 00 20 */	blr 
