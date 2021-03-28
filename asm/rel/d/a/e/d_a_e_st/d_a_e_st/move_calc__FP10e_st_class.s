lbl_8079F12C:
/* 8079F12C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8079F130  7C 08 02 A6 */	mflr r0
/* 8079F134  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079F138  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8079F13C  7C 7F 1B 78 */	mr r31, r3
/* 8079F140  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079F144  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079F148  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F14C  A8 9F 06 9E */	lha r4, 0x69e(r31)
/* 8079F150  4B 86 D2 8C */	b mDoMtx_YrotS__FPA4_fs
/* 8079F154  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079F158  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079F15C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F160  A8 9F 06 9C */	lha r4, 0x69c(r31)
/* 8079F164  4B 86 D2 38 */	b mDoMtx_XrotM__FPA4_fs
/* 8079F168  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079F16C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079F170  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F174  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8079F178  4B 86 D2 BC */	b mDoMtx_YrotM__FPA4_fs
/* 8079F17C  3C 60 80 7A */	lis r3, lit_3904@ha
/* 8079F180  C0 03 68 28 */	lfs f0, lit_3904@l(r3)
/* 8079F184  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8079F188  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079F18C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8079F190  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8079F194  38 61 00 14 */	addi r3, r1, 0x14
/* 8079F198  38 81 00 08 */	addi r4, r1, 8
/* 8079F19C  4B AD 1D 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079F1A0  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8079F1A4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8079F1A8  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8079F1AC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8079F1B0  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8079F1B4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8079F1B8  38 7F 06 90 */	addi r3, r31, 0x690
/* 8079F1BC  38 81 00 08 */	addi r4, r1, 8
/* 8079F1C0  7C 65 1B 78 */	mr r5, r3
/* 8079F1C4  4B BA 7E CC */	b PSVECAdd
/* 8079F1C8  7F E3 FB 78 */	mr r3, r31
/* 8079F1CC  4B FF FD 71 */	bl bg_pos_get__FP10e_st_class
/* 8079F1D0  2C 03 00 00 */	cmpwi r3, 0
/* 8079F1D4  40 82 00 28 */	bne lbl_8079F1FC
/* 8079F1D8  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 8079F1DC  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8079F1E0  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 8079F1E4  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 8079F1E8  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 8079F1EC  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 8079F1F0  38 00 00 00 */	li r0, 0
/* 8079F1F4  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 8079F1F8  B0 1F 06 80 */	sth r0, 0x680(r31)
lbl_8079F1FC:
/* 8079F1FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8079F200  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079F204  7C 08 03 A6 */	mtlr r0
/* 8079F208  38 21 00 30 */	addi r1, r1, 0x30
/* 8079F20C  4E 80 00 20 */	blr 
