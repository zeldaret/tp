lbl_8000FD10:
/* 8000FD10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000FD14  7C 08 02 A6 */	mflr r0
/* 8000FD18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000FD1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000FD20  93 C1 00 08 */	stw r30, 8(r1)
/* 8000FD24  7C 7E 1B 79 */	or. r30, r3, r3
/* 8000FD28  7C 9F 23 78 */	mr r31, r4
/* 8000FD2C  41 82 00 4C */	beq lbl_8000FD78
/* 8000FD30  3C 60 80 3A */	lis r3, __vt__14mDoExt_McaMorf@ha /* 0x803A32FC@ha */
/* 8000FD34  38 03 32 FC */	addi r0, r3, __vt__14mDoExt_McaMorf@l /* 0x803A32FC@l */
/* 8000FD38  90 1E 00 00 */	stw r0, 0(r30)
/* 8000FD3C  88 1E 00 50 */	lbz r0, 0x50(r30)
/* 8000FD40  28 00 00 00 */	cmplwi r0, 0
/* 8000FD44  41 82 00 18 */	beq lbl_8000FD5C
/* 8000FD48  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8000FD4C  28 03 00 00 */	cmplwi r3, 0
/* 8000FD50  41 82 00 0C */	beq lbl_8000FD5C
/* 8000FD54  38 00 00 00 */	li r0, 0
/* 8000FD58  90 03 00 20 */	stw r0, 0x20(r3)
lbl_8000FD5C:
/* 8000FD5C  7F C3 F3 78 */	mr r3, r30
/* 8000FD60  38 80 00 00 */	li r4, 0
/* 8000FD64  4B FF FD 85 */	bl __dt__13mDoExt_morf_cFv
/* 8000FD68  7F E0 07 35 */	extsh. r0, r31
/* 8000FD6C  40 81 00 0C */	ble lbl_8000FD78
/* 8000FD70  7F C3 F3 78 */	mr r3, r30
/* 8000FD74  48 2B EF C9 */	bl __dl__FPv
lbl_8000FD78:
/* 8000FD78  7F C3 F3 78 */	mr r3, r30
/* 8000FD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000FD80  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000FD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000FD88  7C 08 03 A6 */	mtlr r0
/* 8000FD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000FD90  4E 80 00 20 */	blr 
