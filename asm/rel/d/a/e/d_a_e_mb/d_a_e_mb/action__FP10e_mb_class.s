lbl_80707570:
/* 80707570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80707574  7C 08 02 A6 */	mflr r0
/* 80707578  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070757C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80707580  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80707584  7C 7E 1B 78 */	mr r30, r3
/* 80707588  3B E0 00 00 */	li r31, 0
/* 8070758C  A8 03 06 9A */	lha r0, 0x69a(r3)
/* 80707590  2C 00 00 03 */	cmpwi r0, 3
/* 80707594  41 82 00 4C */	beq lbl_807075E0
/* 80707598  40 80 00 1C */	bge lbl_807075B4
/* 8070759C  2C 00 00 01 */	cmpwi r0, 1
/* 807075A0  41 82 00 2C */	beq lbl_807075CC
/* 807075A4  40 80 00 30 */	bge lbl_807075D4
/* 807075A8  2C 00 00 00 */	cmpwi r0, 0
/* 807075AC  40 80 00 18 */	bge lbl_807075C4
/* 807075B0  48 00 00 44 */	b lbl_807075F4
lbl_807075B4:
/* 807075B4  2C 00 00 05 */	cmpwi r0, 5
/* 807075B8  41 82 00 38 */	beq lbl_807075F0
/* 807075BC  40 80 00 38 */	bge lbl_807075F4
/* 807075C0  48 00 00 28 */	b lbl_807075E8
lbl_807075C4:
/* 807075C4  4B FF ED ED */	bl e_mb_standby__FP10e_mb_class
/* 807075C8  48 00 00 2C */	b lbl_807075F4
lbl_807075CC:
/* 807075CC  4B FF F0 51 */	bl e_mb_walk1__FP10e_mb_class
/* 807075D0  48 00 00 24 */	b lbl_807075F4
lbl_807075D4:
/* 807075D4  4B FF F3 01 */	bl e_mb_move__FP10e_mb_class
/* 807075D8  7C 7F 1B 78 */	mr r31, r3
/* 807075DC  48 00 00 18 */	b lbl_807075F4
lbl_807075E0:
/* 807075E0  4B FF F9 B1 */	bl e_mb_walk2__FP10e_mb_class
/* 807075E4  48 00 00 10 */	b lbl_807075F4
lbl_807075E8:
/* 807075E8  4B FF FC 55 */	bl e_mb_firstdemo__FP10e_mb_class
/* 807075EC  48 00 00 08 */	b lbl_807075F4
lbl_807075F0:
/* 807075F0  4B FF FF 71 */	bl e_mb_end__FP10e_mb_class
lbl_807075F4:
/* 807075F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807075F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807075FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80707600  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80707604  4B 90 4D D8 */	b mDoMtx_YrotS__FPA4_fs
/* 80707608  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8070760C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80707610  80 63 00 00 */	lwz r3, 0(r3)
/* 80707614  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80707618  4B 90 4D 84 */	b mDoMtx_XrotM__FPA4_fs
/* 8070761C  3C 60 80 71 */	lis r3, lit_3767@ha
/* 80707620  C0 03 8A 1C */	lfs f0, lit_3767@l(r3)
/* 80707624  D0 01 00 08 */	stfs f0, 8(r1)
/* 80707628  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8070762C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80707630  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80707634  38 61 00 08 */	addi r3, r1, 8
/* 80707638  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8070763C  4B B6 98 B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80707640  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80707644  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80707648  7C 65 1B 78 */	mr r5, r3
/* 8070764C  4B C3 FA 44 */	b PSVECAdd
/* 80707650  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80707654  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80707658  38 A0 00 04 */	li r5, 4
/* 8070765C  38 C0 08 00 */	li r6, 0x800
/* 80707660  4B B6 8F A8 */	b cLib_addCalcAngleS2__FPssss
/* 80707664  7F E3 FB 78 */	mr r3, r31
/* 80707668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8070766C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80707670  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80707674  7C 08 03 A6 */	mtlr r0
/* 80707678  38 21 00 20 */	addi r1, r1, 0x20
/* 8070767C  4E 80 00 20 */	blr 
