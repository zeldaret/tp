lbl_806D3308:
/* 806D3308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D330C  7C 08 02 A6 */	mflr r0
/* 806D3310  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D3314  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D3318  7C 7F 1B 78 */	mr r31, r3
/* 806D331C  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D3320  2C 00 00 00 */	cmpwi r0, 0
/* 806D3324  40 82 00 90 */	bne lbl_806D33B4
/* 806D3328  38 00 00 00 */	li r0, 0
/* 806D332C  98 1F 0A 75 */	stb r0, 0xa75(r31)
/* 806D3330  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806D3334  7C 03 07 74 */	extsb r3, r0
/* 806D3338  4B 95 9D 34 */	b dComIfGp_getReverb__Fi
/* 806D333C  7C 67 1B 78 */	mr r7, r3
/* 806D3340  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 806D3344  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 806D3348  90 01 00 08 */	stw r0, 8(r1)
/* 806D334C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806D3350  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806D3354  80 63 00 00 */	lwz r3, 0(r3)
/* 806D3358  38 81 00 08 */	addi r4, r1, 8
/* 806D335C  38 BF 05 38 */	addi r5, r31, 0x538
/* 806D3360  38 C0 00 00 */	li r6, 0
/* 806D3364  3D 00 80 6D */	lis r8, lit_3908@ha
/* 806D3368  C0 28 79 A8 */	lfs f1, lit_3908@l(r8)
/* 806D336C  FC 40 08 90 */	fmr f2, f1
/* 806D3370  3D 00 80 6D */	lis r8, lit_4100@ha
/* 806D3374  C0 68 79 E4 */	lfs f3, lit_4100@l(r8)
/* 806D3378  FC 80 18 90 */	fmr f4, f3
/* 806D337C  39 00 00 00 */	li r8, 0
/* 806D3380  4B BD 86 04 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806D3384  7F E3 FB 78 */	mr r3, r31
/* 806D3388  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D338C  38 A0 00 14 */	li r5, 0x14
/* 806D3390  38 C0 00 00 */	li r6, 0
/* 806D3394  38 E0 00 FF */	li r7, 0xff
/* 806D3398  4B 94 97 40 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806D339C  38 00 00 24 */	li r0, 0x24
/* 806D33A0  98 1F 0A 6B */	stb r0, 0xa6b(r31)
/* 806D33A4  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 806D33A8  38 03 00 01 */	addi r0, r3, 1
/* 806D33AC  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 806D33B0  48 00 00 88 */	b lbl_806D3438
lbl_806D33B4:
/* 806D33B4  2C 00 FF FF */	cmpwi r0, -1
/* 806D33B8  41 82 00 80 */	beq lbl_806D3438
/* 806D33BC  88 1F 0A 6B */	lbz r0, 0xa6b(r31)
/* 806D33C0  28 00 00 00 */	cmplwi r0, 0
/* 806D33C4  40 82 00 74 */	bne lbl_806D3438
/* 806D33C8  3C 80 80 6D */	lis r4, struct_806D7F1C+0x2@ha
/* 806D33CC  88 04 7F 1E */	lbz r0, struct_806D7F1C+0x2@l(r4)
/* 806D33D0  28 00 00 00 */	cmplwi r0, 0
/* 806D33D4  40 82 00 64 */	bne lbl_806D3438
/* 806D33D8  4B 94 68 A4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806D33DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080284@ha */
/* 806D33E0  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x00080284@l */
/* 806D33E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D33E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806D33EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806D33F0  80 63 00 00 */	lwz r3, 0(r3)
/* 806D33F4  38 81 00 0C */	addi r4, r1, 0xc
/* 806D33F8  38 A0 00 00 */	li r5, 0
/* 806D33FC  38 C0 00 00 */	li r6, 0
/* 806D3400  38 E0 00 00 */	li r7, 0
/* 806D3404  3D 00 80 6D */	lis r8, lit_3908@ha
/* 806D3408  C0 28 79 A8 */	lfs f1, lit_3908@l(r8)
/* 806D340C  FC 40 08 90 */	fmr f2, f1
/* 806D3410  3D 00 80 6D */	lis r8, lit_4100@ha
/* 806D3414  C0 68 79 E4 */	lfs f3, lit_4100@l(r8)
/* 806D3418  FC 80 18 90 */	fmr f4, f3
/* 806D341C  39 00 00 00 */	li r8, 0
/* 806D3420  4B BD 85 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806D3424  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D3428  38 83 7F 1E */	addi r4, r3, struct_806D7F1C+0x2@l
/* 806D342C  88 64 00 00 */	lbz r3, 0(r4)
/* 806D3430  38 03 00 01 */	addi r0, r3, 1
/* 806D3434  98 04 00 00 */	stb r0, 0(r4)
lbl_806D3438:
/* 806D3438  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D343C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D3440  7C 08 03 A6 */	mtlr r0
/* 806D3444  38 21 00 20 */	addi r1, r1, 0x20
/* 806D3448  4E 80 00 20 */	blr 
