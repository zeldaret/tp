lbl_80BDC170:
/* 80BDC170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC174  7C 08 02 A6 */	mflr r0
/* 80BDC178  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC17C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC180  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDC184  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BDC188  7C 9F 23 78 */	mr r31, r4
/* 80BDC18C  41 82 00 40 */	beq lbl_80BDC1CC
/* 80BDC190  3C 80 80 BE */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80BDC4CC@ha */
/* 80BDC194  38 84 C4 CC */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80BDC4CC@l */
/* 80BDC198  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BDC19C  38 04 00 0C */	addi r0, r4, 0xc
/* 80BDC1A0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80BDC1A4  38 04 00 18 */	addi r0, r4, 0x18
/* 80BDC1A8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80BDC1AC  38 04 00 24 */	addi r0, r4, 0x24
/* 80BDC1B0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BDC1B4  38 80 00 00 */	li r4, 0
/* 80BDC1B8  4B 49 B4 39 */	bl __dt__11dBgS_GndChkFv
/* 80BDC1BC  7F E0 07 35 */	extsh. r0, r31
/* 80BDC1C0  40 81 00 0C */	ble lbl_80BDC1CC
/* 80BDC1C4  7F C3 F3 78 */	mr r3, r30
/* 80BDC1C8  4B 6F 2B 75 */	bl __dl__FPv
lbl_80BDC1CC:
/* 80BDC1CC  7F C3 F3 78 */	mr r3, r30
/* 80BDC1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC1D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDC1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC1DC  7C 08 03 A6 */	mtlr r0
/* 80BDC1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC1E4  4E 80 00 20 */	blr 
