lbl_80652DA8:
/* 80652DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80652DAC  7C 08 02 A6 */	mflr r0
/* 80652DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80652DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80652DB8  7C 7F 1B 78 */	mr r31, r3
/* 80652DBC  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80652DC0  4B 9B A6 68 */	b play__14mDoExt_baseAnmFv
/* 80652DC4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80652DC8  4B 9B A6 60 */	b play__14mDoExt_baseAnmFv
/* 80652DCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80652DD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80652DD4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80652DD8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80652DDC  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80652DE0  EC 42 00 2A */	fadds f2, f2, f0
/* 80652DE4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80652DE8  4B CF 3B 00 */	b PSMTXTrans
/* 80652DEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80652DF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80652DF4  A8 9F 05 8E */	lha r4, 0x58e(r31)
/* 80652DF8  4B 9B 96 3C */	b mDoMtx_YrotM__FPA4_fs
/* 80652DFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80652E00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80652E04  A8 9F 05 8C */	lha r4, 0x58c(r31)
/* 80652E08  4B 9B 95 94 */	b mDoMtx_XrotM__FPA4_fs
/* 80652E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80652E10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80652E14  A8 1F 05 8E */	lha r0, 0x58e(r31)
/* 80652E18  7C 00 00 D0 */	neg r0, r0
/* 80652E1C  7C 04 07 34 */	extsh r4, r0
/* 80652E20  4B 9B 96 14 */	b mDoMtx_YrotM__FPA4_fs
/* 80652E24  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80652E28  4B 9B A1 1C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80652E2C  3C 60 80 65 */	lis r3, lit_3800@ha
/* 80652E30  C0 23 33 2C */	lfs f1, lit_3800@l(r3)
/* 80652E34  3C 60 80 65 */	lis r3, lit_3831@ha
/* 80652E38  C0 43 33 4C */	lfs f2, lit_3831@l(r3)
/* 80652E3C  FC 60 08 90 */	fmr f3, f1
/* 80652E40  4B 9B 9F 5C */	b transM__14mDoMtx_stack_cFfff
/* 80652E44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80652E48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80652E4C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80652E50  38 84 00 24 */	addi r4, r4, 0x24
/* 80652E54  4B CF 36 5C */	b PSMTXCopy
/* 80652E58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80652E5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80652E60  38 9F 05 94 */	addi r4, r31, 0x594
/* 80652E64  4B CF 36 4C */	b PSMTXCopy
/* 80652E68  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80652E6C  28 03 00 00 */	cmplwi r3, 0
/* 80652E70  41 82 00 08 */	beq lbl_80652E78
/* 80652E74  4B A2 8B 4C */	b Move__4dBgWFv
lbl_80652E78:
/* 80652E78  7F E3 FB 78 */	mr r3, r31
/* 80652E7C  4B FF FC AD */	bl action__11daB_ZANTS_cFv
/* 80652E80  38 60 00 01 */	li r3, 1
/* 80652E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80652E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652E8C  7C 08 03 A6 */	mtlr r0
/* 80652E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80652E94  4E 80 00 20 */	blr 
