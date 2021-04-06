lbl_8015EE00:
/* 8015EE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015EE04  7C 08 02 A6 */	mflr r0
/* 8015EE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015EE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8015EE10  48 20 33 CD */	bl _savegpr_29
/* 8015EE14  7C 7D 1B 78 */	mr r29, r3
/* 8015EE18  7C 9E 23 78 */	mr r30, r4
/* 8015EE1C  2C 1E 00 04 */	cmpwi r30, 4
/* 8015EE20  40 82 00 0C */	bne lbl_8015EE2C
/* 8015EE24  83 FD 00 08 */	lwz r31, 8(r29)
/* 8015EE28  48 00 00 38 */	b lbl_8015EE60
lbl_8015EE2C:
/* 8015EE2C  2C 1E 00 03 */	cmpwi r30, 3
/* 8015EE30  40 82 00 0C */	bne lbl_8015EE3C
/* 8015EE34  3B E0 00 50 */	li r31, 0x50
/* 8015EE38  48 00 00 28 */	b lbl_8015EE60
lbl_8015EE3C:
/* 8015EE3C  2C 1E 00 00 */	cmpwi r30, 0
/* 8015EE40  40 82 00 0C */	bne lbl_8015EE4C
/* 8015EE44  3B E0 00 40 */	li r31, 0x40
/* 8015EE48  48 00 00 18 */	b lbl_8015EE60
lbl_8015EE4C:
/* 8015EE4C  2C 1E 00 01 */	cmpwi r30, 1
/* 8015EE50  40 82 00 0C */	bne lbl_8015EE5C
/* 8015EE54  3B E0 00 40 */	li r31, 0x40
/* 8015EE58  48 00 00 08 */	b lbl_8015EE60
lbl_8015EE5C:
/* 8015EE5C  3B E0 00 A0 */	li r31, 0xa0
lbl_8015EE60:
/* 8015EE60  38 61 00 08 */	addi r3, r1, 8
/* 8015EE64  7F E4 FB 78 */	mr r4, r31
/* 8015EE68  38 A0 00 20 */	li r5, 0x20
/* 8015EE6C  4B EB 01 89 */	bl mDoExt_createSolidHeapFromGameToCurrent__FPP7JKRHeapUlUl
/* 8015EE70  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8015EE74  2C 1E 00 04 */	cmpwi r30, 4
/* 8015EE78  40 82 00 10 */	bne lbl_8015EE88
/* 8015EE7C  7F E3 FB 78 */	mr r3, r31
/* 8015EE80  48 16 FE 45 */	bl __nwa__FUl
/* 8015EE84  48 00 00 D8 */	b lbl_8015EF5C
lbl_8015EE88:
/* 8015EE88  2C 1E 00 03 */	cmpwi r30, 3
/* 8015EE8C  40 82 00 54 */	bne lbl_8015EEE0
/* 8015EE90  38 60 00 2C */	li r3, 0x2c
/* 8015EE94  48 16 FD B9 */	bl __nw__FUl
/* 8015EE98  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015EE9C  41 82 00 C0 */	beq lbl_8015EF5C
/* 8015EEA0  38 80 00 00 */	li r4, 0
/* 8015EEA4  38 A0 00 00 */	li r5, 0
/* 8015EEA8  38 C0 00 00 */	li r6, 0
/* 8015EEAC  38 E0 00 00 */	li r7, 0
/* 8015EEB0  48 1C 9F 91 */	bl __ct__15J3DAnmTransformFsPfPsPf
/* 8015EEB4  3C 60 80 3A */	lis r3, __vt__18J3DAnmTransformKey@ha /* 0x803A7C70@ha */
/* 8015EEB8  38 03 7C 70 */	addi r0, r3, __vt__18J3DAnmTransformKey@l /* 0x803A7C70@l */
/* 8015EEBC  90 1F 00 00 */	stw r0, 0(r31)
/* 8015EEC0  38 80 00 00 */	li r4, 0
/* 8015EEC4  90 9F 00 20 */	stw r4, 0x20(r31)
/* 8015EEC8  90 9F 00 24 */	stw r4, 0x24(r31)
/* 8015EECC  3C 60 80 3A */	lis r3, __vt__18mDoExt_transAnmBas@ha /* 0x803A7C5C@ha */
/* 8015EED0  38 03 7C 5C */	addi r0, r3, __vt__18mDoExt_transAnmBas@l /* 0x803A7C5C@l */
/* 8015EED4  90 1F 00 00 */	stw r0, 0(r31)
/* 8015EED8  90 9F 00 28 */	stw r4, 0x28(r31)
/* 8015EEDC  48 00 00 80 */	b lbl_8015EF5C
lbl_8015EEE0:
/* 8015EEE0  2C 1E 00 00 */	cmpwi r30, 0
/* 8015EEE4  40 82 00 44 */	bne lbl_8015EF28
/* 8015EEE8  38 60 00 28 */	li r3, 0x28
/* 8015EEEC  48 16 FD 61 */	bl __nw__FUl
/* 8015EEF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015EEF4  41 82 00 68 */	beq lbl_8015EF5C
/* 8015EEF8  38 80 00 00 */	li r4, 0
/* 8015EEFC  38 A0 00 00 */	li r5, 0
/* 8015EF00  38 C0 00 00 */	li r6, 0
/* 8015EF04  38 E0 00 00 */	li r7, 0
/* 8015EF08  48 1C 9F 39 */	bl __ct__15J3DAnmTransformFsPfPsPf
/* 8015EF0C  3C 60 80 3A */	lis r3, __vt__18J3DAnmTransformKey@ha /* 0x803A7C70@ha */
/* 8015EF10  38 03 7C 70 */	addi r0, r3, __vt__18J3DAnmTransformKey@l /* 0x803A7C70@l */
/* 8015EF14  90 1F 00 00 */	stw r0, 0(r31)
/* 8015EF18  38 00 00 00 */	li r0, 0
/* 8015EF1C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8015EF20  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8015EF24  48 00 00 38 */	b lbl_8015EF5C
lbl_8015EF28:
/* 8015EF28  2C 1E 00 01 */	cmpwi r30, 1
/* 8015EF2C  40 82 00 1C */	bne lbl_8015EF48
/* 8015EF30  38 60 00 2C */	li r3, 0x2c
/* 8015EF34  48 16 FD 19 */	bl __nw__FUl
/* 8015EF38  28 03 00 00 */	cmplwi r3, 0
/* 8015EF3C  41 82 00 20 */	beq lbl_8015EF5C
/* 8015EF40  48 1C BF 99 */	bl __ct__16J3DAnmTexPatternFv
/* 8015EF44  48 00 00 18 */	b lbl_8015EF5C
lbl_8015EF48:
/* 8015EF48  38 60 00 7C */	li r3, 0x7c
/* 8015EF4C  48 16 FD 01 */	bl __nw__FUl
/* 8015EF50  28 03 00 00 */	cmplwi r3, 0
/* 8015EF54  41 82 00 08 */	beq lbl_8015EF5C
/* 8015EF58  48 1C AF 05 */	bl __ct__19J3DAnmTextureSRTKeyFv
lbl_8015EF5C:
/* 8015EF5C  80 61 00 08 */	lwz r3, 8(r1)
/* 8015EF60  4B EB 02 6D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8015EF64  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8015EF68  4B EB 01 25 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8015EF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8015EF70  48 20 32 B9 */	bl _restgpr_29
/* 8015EF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015EF78  7C 08 03 A6 */	mtlr r0
/* 8015EF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015EF80  4E 80 00 20 */	blr 
