lbl_801CCFB0:
/* 801CCFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCFB4  7C 08 02 A6 */	mflr r0
/* 801CCFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCFBC  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CCFC0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801CCFC4  88 03 02 FC */	lbz r0, 0x2fc(r3)
/* 801CCFC8  28 00 00 00 */	cmplwi r0, 0
/* 801CCFCC  41 82 00 0C */	beq lbl_801CCFD8
/* 801CCFD0  38 60 00 01 */	li r3, 1
/* 801CCFD4  48 00 00 1C */	b lbl_801CCFF0
lbl_801CCFD8:
/* 801CCFD8  7C 83 23 78 */	mr r3, r4
/* 801CCFDC  7C A4 2B 78 */	mr r4, r5
/* 801CCFE0  4B E6 07 61 */	bl dComIfGs_isStageSwitch__Fii
/* 801CCFE4  30 03 FF FF */	addic r0, r3, -1
/* 801CCFE8  7C 00 19 10 */	subfe r0, r0, r3
/* 801CCFEC  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_801CCFF0:
/* 801CCFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCFF4  7C 08 03 A6 */	mtlr r0
/* 801CCFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCFFC  4E 80 00 20 */	blr 
