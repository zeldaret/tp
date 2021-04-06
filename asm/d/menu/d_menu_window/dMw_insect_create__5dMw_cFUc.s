lbl_801FCB94:
/* 801FCB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCB98  7C 08 02 A6 */	mflr r0
/* 801FCB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FCBA4  93 C1 00 08 */	stw r30, 8(r1)
/* 801FCBA8  7C 7E 1B 78 */	mr r30, r3
/* 801FCBAC  7C 9F 23 78 */	mr r31, r4
/* 801FCBB0  48 00 04 E5 */	bl markMemSize__5dMw_cFv
/* 801FCBB4  38 60 01 00 */	li r3, 0x100
/* 801FCBB8  48 0D 20 95 */	bl __nw__FUl
/* 801FCBBC  7C 60 1B 79 */	or. r0, r3, r3
/* 801FCBC0  41 82 00 1C */	beq lbl_801FCBDC
/* 801FCBC4  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 801FCBC8  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 801FCBCC  80 DE 01 08 */	lwz r6, 0x108(r30)
/* 801FCBD0  7F E7 FB 78 */	mr r7, r31
/* 801FCBD4  4B FD B5 41 */	bl __ct__14dMenu_Insect_cFP10JKRExpHeapP9STControlP10CSTControlUc
/* 801FCBD8  7C 60 1B 78 */	mr r0, r3
lbl_801FCBDC:
/* 801FCBDC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 801FCBE0  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 801FCBE4  28 00 00 00 */	cmplwi r0, 0
/* 801FCBE8  40 82 00 44 */	bne lbl_801FCC2C
/* 801FCBEC  38 60 00 08 */	li r3, 8
/* 801FCBF0  48 0D 20 5D */	bl __nw__FUl
/* 801FCBF4  28 03 00 00 */	cmplwi r3, 0
/* 801FCBF8  41 82 00 30 */	beq lbl_801FCC28
/* 801FCBFC  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801FCC00  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801FCC04  90 03 00 00 */	stw r0, 0(r3)
/* 801FCC08  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha /* 0x803BF0D4@ha */
/* 801FCC0C  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l /* 0x803BF0D4@l */
/* 801FCC10  90 03 00 00 */	stw r0, 0(r3)
/* 801FCC14  38 80 00 00 */	li r4, 0
/* 801FCC18  98 83 00 04 */	stb r4, 4(r3)
/* 801FCC1C  38 00 00 FF */	li r0, 0xff
/* 801FCC20  98 03 00 05 */	stb r0, 5(r3)
/* 801FCC24  98 83 00 06 */	stb r4, 6(r3)
lbl_801FCC28:
/* 801FCC28  90 7E 01 0C */	stw r3, 0x10c(r30)
lbl_801FCC2C:
/* 801FCC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FCC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCC38  7C 08 03 A6 */	mtlr r0
/* 801FCC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCC40  4E 80 00 20 */	blr 
