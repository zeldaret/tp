lbl_8049B120:
/* 8049B120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B124  7C 08 02 A6 */	mflr r0
/* 8049B128  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B12C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B130  4B EC 70 AD */	bl _savegpr_29
/* 8049B134  7C 7F 1B 78 */	mr r31, r3
/* 8049B138  4B FF FC 5D */	bl getVibAngle__9daArrow_cFv
/* 8049B13C  7C 7E 1B 78 */	mr r30, r3
/* 8049B140  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8049B144  90 01 00 08 */	stw r0, 8(r1)
/* 8049B148  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8049B14C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8049B150  38 81 00 08 */	addi r4, r1, 8
/* 8049B154  4B B7 E6 A5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8049B158  7C 7D 1B 79 */	or. r29, r3, r3
/* 8049B15C  40 82 00 0C */	bne lbl_8049B168
/* 8049B160  38 60 00 00 */	li r3, 0
/* 8049B164  48 00 00 98 */	b lbl_8049B1FC
lbl_8049B168:
/* 8049B168  80 7D 05 28 */	lwz r3, 0x528(r29)
/* 8049B16C  28 03 00 00 */	cmplwi r3, 0
/* 8049B170  40 82 00 0C */	bne lbl_8049B17C
/* 8049B174  38 60 00 00 */	li r3, 0
/* 8049B178  48 00 00 84 */	b lbl_8049B1FC
lbl_8049B17C:
/* 8049B17C  38 9F 09 A8 */	addi r4, r31, 0x9a8
/* 8049B180  38 BF 09 B4 */	addi r5, r31, 0x9b4
/* 8049B184  80 DF 09 60 */	lwz r6, 0x960(r31)
/* 8049B188  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8049B18C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8049B190  4B B9 BE 19 */	bl setArrowPosAndAngle__9dJntCol_cFPC4cXyzPC4cXyziP4cXyzP5csXyz
/* 8049B194  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B198  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B19C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8049B1A0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8049B1A4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8049B1A8  4B EA B7 41 */	bl PSMTXTrans
/* 8049B1AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B1B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B1B4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8049B1B8  7C 00 F2 14 */	add r0, r0, r30
/* 8049B1BC  7C 04 07 34 */	extsh r4, r0
/* 8049B1C0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 8049B1C4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 8049B1C8  4B B7 10 D9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8049B1CC  3C 60 80 4A */	lis r3, lit_4130@ha /* 0x8049DD1C@ha */
/* 8049B1D0  C0 23 DD 1C */	lfs f1, lit_4130@l(r3)  /* 0x8049DD1C@l */
/* 8049B1D4  FC 40 08 90 */	fmr f2, f1
/* 8049B1D8  3C 60 80 4A */	lis r3, lit_4606@ha /* 0x8049DD94@ha */
/* 8049B1DC  C0 63 DD 94 */	lfs f3, lit_4606@l(r3)  /* 0x8049DD94@l */
/* 8049B1E0  4B B7 1B BD */	bl transM__14mDoMtx_stack_cFfff
/* 8049B1E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B1E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B1EC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8049B1F0  38 84 00 24 */	addi r4, r4, 0x24
/* 8049B1F4  4B EA B2 BD */	bl PSMTXCopy
/* 8049B1F8  7F A3 EB 78 */	mr r3, r29
lbl_8049B1FC:
/* 8049B1FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B200  4B EC 70 29 */	bl _restgpr_29
/* 8049B204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B208  7C 08 03 A6 */	mtlr r0
/* 8049B20C  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B210  4E 80 00 20 */	blr 
