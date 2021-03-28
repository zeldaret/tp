lbl_801FBE94:
/* 801FBE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBE98  7C 08 02 A6 */	mflr r0
/* 801FBE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBEA4  93 C1 00 08 */	stw r30, 8(r1)
/* 801FBEA8  7C 7E 1B 78 */	mr r30, r3
/* 801FBEAC  7C 9F 23 78 */	mr r31, r4
/* 801FBEB0  48 00 11 E5 */	bl markMemSize__5dMw_cFv
/* 801FBEB4  38 60 00 01 */	li r3, 1
/* 801FBEB8  4B E3 22 29 */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FBEBC  38 60 06 D4 */	li r3, 0x6d4
/* 801FBEC0  48 0D 2D 8D */	bl __nw__FUl
/* 801FBEC4  7C 60 1B 79 */	or. r0, r3, r3
/* 801FBEC8  41 82 00 1C */	beq lbl_801FBEE4
/* 801FBECC  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 801FBED0  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 801FBED4  80 DE 01 08 */	lwz r6, 0x108(r30)
/* 801FBED8  7F E7 FB 78 */	mr r7, r31
/* 801FBEDC  4B FE D2 3D */	bl __ct__12dMenu_Ring_cFP10JKRExpHeapP9STControlP10CSTControlUc
/* 801FBEE0  7C 60 1B 78 */	mr r0, r3
lbl_801FBEE4:
/* 801FBEE4  90 1E 01 10 */	stw r0, 0x110(r30)
/* 801FBEE8  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 801FBEEC  4B FE EC 91 */	bl _create__12dMenu_Ring_cFv
/* 801FBEF0  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 801FBEF4  28 00 00 00 */	cmplwi r0, 0
/* 801FBEF8  40 82 00 44 */	bne lbl_801FBF3C
/* 801FBEFC  38 60 00 08 */	li r3, 8
/* 801FBF00  48 0D 2D 4D */	bl __nw__FUl
/* 801FBF04  28 03 00 00 */	cmplwi r3, 0
/* 801FBF08  41 82 00 30 */	beq lbl_801FBF38
/* 801FBF0C  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 801FBF10  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 801FBF14  90 03 00 00 */	stw r0, 0(r3)
/* 801FBF18  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha
/* 801FBF1C  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l
/* 801FBF20  90 03 00 00 */	stw r0, 0(r3)
/* 801FBF24  38 80 00 00 */	li r4, 0
/* 801FBF28  98 83 00 04 */	stb r4, 4(r3)
/* 801FBF2C  38 00 00 FF */	li r0, 0xff
/* 801FBF30  98 03 00 05 */	stb r0, 5(r3)
/* 801FBF34  98 83 00 06 */	stb r4, 6(r3)
lbl_801FBF38:
/* 801FBF38  90 7E 01 0C */	stw r3, 0x10c(r30)
lbl_801FBF3C:
/* 801FBF3C  38 00 00 01 */	li r0, 1
/* 801FBF40  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 801FBF44  98 03 00 04 */	stb r0, 4(r3)
/* 801FBF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBF4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FBF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBF54  7C 08 03 A6 */	mtlr r0
/* 801FBF58  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBF5C  4E 80 00 20 */	blr 
