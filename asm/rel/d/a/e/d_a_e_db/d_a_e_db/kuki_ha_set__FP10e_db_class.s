lbl_8069E114:
/* 8069E114  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069E118  7C 08 02 A6 */	mflr r0
/* 8069E11C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069E120  39 61 00 30 */	addi r11, r1, 0x30
/* 8069E124  4B CC 40 A9 */	bl _savegpr_25
/* 8069E128  7C 7C 1B 78 */	mr r28, r3
/* 8069E12C  3B FC 06 9C */	addi r31, r28, 0x69c
/* 8069E130  3B DC 07 2C */	addi r30, r28, 0x72c
/* 8069E134  3B A0 00 00 */	li r29, 0
/* 8069E138  3B 60 00 00 */	li r27, 0
/* 8069E13C  3B 40 00 00 */	li r26, 0
lbl_8069E140:
/* 8069E140  2C 1D 00 00 */	cmpwi r29, 0
/* 8069E144  40 81 00 88 */	ble lbl_8069E1CC
/* 8069E148  2C 1D 00 0B */	cmpwi r29, 0xb
/* 8069E14C  40 80 00 80 */	bge lbl_8069E1CC
/* 8069E150  7F 3C D2 14 */	add r25, r28, r26
/* 8069E154  80 19 07 74 */	lwz r0, 0x774(r25)
/* 8069E158  28 00 00 00 */	cmplwi r0, 0
/* 8069E15C  41 82 00 70 */	beq lbl_8069E1CC
/* 8069E160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069E164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069E168  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8069E16C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8069E170  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8069E174  4B CA 87 75 */	bl PSMTXTrans
/* 8069E178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069E17C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069E180  A8 9E 00 02 */	lha r4, 2(r30)
/* 8069E184  4B 96 E2 B1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8069E188  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069E18C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069E190  A8 9E 00 00 */	lha r4, 0(r30)
/* 8069E194  4B 96 E2 09 */	bl mDoMtx_XrotM__FPA4_fs
/* 8069E198  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069E19C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069E1A0  7F 64 07 34 */	extsh r4, r27
/* 8069E1A4  4B 96 E3 29 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8069E1A8  C0 39 07 D4 */	lfs f1, 0x7d4(r25)
/* 8069E1AC  FC 40 08 90 */	fmr f2, f1
/* 8069E1B0  FC 60 08 90 */	fmr f3, f1
/* 8069E1B4  4B 96 EC 85 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8069E1B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8069E1BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069E1C0  80 99 07 74 */	lwz r4, 0x774(r25)
/* 8069E1C4  38 84 00 24 */	addi r4, r4, 0x24
/* 8069E1C8  4B CA 82 E9 */	bl PSMTXCopy
lbl_8069E1CC:
/* 8069E1CC  3B BD 00 01 */	addi r29, r29, 1
/* 8069E1D0  2C 1D 00 0C */	cmpwi r29, 0xc
/* 8069E1D4  3B 7B 20 00 */	addi r27, r27, 0x2000
/* 8069E1D8  3B 5A 00 04 */	addi r26, r26, 4
/* 8069E1DC  3B FF 00 0C */	addi r31, r31, 0xc
/* 8069E1E0  3B DE 00 06 */	addi r30, r30, 6
/* 8069E1E4  41 80 FF 5C */	blt lbl_8069E140
/* 8069E1E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8069E1EC  4B CC 40 2D */	bl _restgpr_25
/* 8069E1F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069E1F4  7C 08 03 A6 */	mtlr r0
/* 8069E1F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8069E1FC  4E 80 00 20 */	blr 
