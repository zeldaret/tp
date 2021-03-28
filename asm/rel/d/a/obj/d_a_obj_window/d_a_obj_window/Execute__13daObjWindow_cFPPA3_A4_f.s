lbl_80D38B04:
/* 80D38B04  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D38B08  7C 08 02 A6 */	mflr r0
/* 80D38B0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D38B10  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D38B14  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D38B18  39 61 00 50 */	addi r11, r1, 0x50
/* 80D38B1C  4B 62 96 C0 */	b _savegpr_29
/* 80D38B20  7C 7E 1B 78 */	mr r30, r3
/* 80D38B24  7C 9D 23 78 */	mr r29, r4
/* 80D38B28  3C 60 80 D4 */	lis r3, l_bck@ha
/* 80D38B2C  3B E3 92 2C */	addi r31, r3, l_bck@l
/* 80D38B30  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80D38B34  28 03 00 00 */	cmplwi r3, 0
/* 80D38B38  41 82 03 44 */	beq lbl_80D38E7C
/* 80D38B3C  4B 2D 48 EC */	b play__14mDoExt_baseAnmFv
/* 80D38B40  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80D38B44  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 80D38B48  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D38B4C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80D38B50  41 82 00 10 */	beq lbl_80D38B60
/* 80D38B54  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D38B58  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80D38B5C  40 82 00 50 */	bne lbl_80D38BAC
lbl_80D38B60:
/* 80D38B60  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38B64  7C 03 07 74 */	extsb r3, r0
/* 80D38B68  4B 2F 45 04 */	b dComIfGp_getReverb__Fi
/* 80D38B6C  7C 67 1B 78 */	mr r7, r3
/* 80D38B70  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080105@ha */
/* 80D38B74  38 03 01 05 */	addi r0, r3, 0x0105 /* 0x00080105@l */
/* 80D38B78  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D38B7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38B80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38B84  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38B88  38 81 00 28 */	addi r4, r1, 0x28
/* 80D38B8C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38B90  38 C0 00 00 */	li r6, 0
/* 80D38B94  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38B98  FC 40 08 90 */	fmr f2, f1
/* 80D38B9C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38BA0  FC 80 18 90 */	fmr f4, f3
/* 80D38BA4  39 00 00 00 */	li r8, 0
/* 80D38BA8  4B 57 2D DC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D38BAC:
/* 80D38BAC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D38BB0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38BB4  40 80 00 54 */	bge lbl_80D38C08
/* 80D38BB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38BBC  7C 03 07 74 */	extsb r3, r0
/* 80D38BC0  4B 2F 44 AC */	b dComIfGp_getReverb__Fi
/* 80D38BC4  7C 67 1B 78 */	mr r7, r3
/* 80D38BC8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800FD@ha */
/* 80D38BCC  38 03 00 FD */	addi r0, r3, 0x00FD /* 0x000800FD@l */
/* 80D38BD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D38BD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38BD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38BDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38BE0  38 81 00 24 */	addi r4, r1, 0x24
/* 80D38BE4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38BE8  38 C0 00 00 */	li r6, 0
/* 80D38BEC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38BF0  FC 40 08 90 */	fmr f2, f1
/* 80D38BF4  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38BF8  FC 80 18 90 */	fmr f4, f3
/* 80D38BFC  39 00 00 00 */	li r8, 0
/* 80D38C00  4B 57 39 0C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38C04  48 00 02 78 */	b lbl_80D38E7C
lbl_80D38C08:
/* 80D38C08  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D38C0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38C10  40 80 00 54 */	bge lbl_80D38C64
/* 80D38C14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38C18  7C 03 07 74 */	extsb r3, r0
/* 80D38C1C  4B 2F 44 50 */	b dComIfGp_getReverb__Fi
/* 80D38C20  7C 67 1B 78 */	mr r7, r3
/* 80D38C24  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800FE@ha */
/* 80D38C28  38 03 00 FE */	addi r0, r3, 0x00FE /* 0x000800FE@l */
/* 80D38C2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D38C30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38C34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38C38  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38C3C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D38C40  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38C44  38 C0 00 00 */	li r6, 0
/* 80D38C48  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38C4C  FC 40 08 90 */	fmr f2, f1
/* 80D38C50  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38C54  FC 80 18 90 */	fmr f4, f3
/* 80D38C58  39 00 00 00 */	li r8, 0
/* 80D38C5C  4B 57 38 B0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38C60  48 00 02 1C */	b lbl_80D38E7C
lbl_80D38C64:
/* 80D38C64  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80D38C68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38C6C  40 80 00 54 */	bge lbl_80D38CC0
/* 80D38C70  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38C74  7C 03 07 74 */	extsb r3, r0
/* 80D38C78  4B 2F 43 F4 */	b dComIfGp_getReverb__Fi
/* 80D38C7C  7C 67 1B 78 */	mr r7, r3
/* 80D38C80  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800FF@ha */
/* 80D38C84  38 03 00 FF */	addi r0, r3, 0x00FF /* 0x000800FF@l */
/* 80D38C88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D38C8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38C90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38C94  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38C98  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D38C9C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38CA0  38 C0 00 00 */	li r6, 0
/* 80D38CA4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38CA8  FC 40 08 90 */	fmr f2, f1
/* 80D38CAC  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38CB0  FC 80 18 90 */	fmr f4, f3
/* 80D38CB4  39 00 00 00 */	li r8, 0
/* 80D38CB8  4B 57 38 54 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38CBC  48 00 01 C0 */	b lbl_80D38E7C
lbl_80D38CC0:
/* 80D38CC0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80D38CC4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38CC8  40 80 00 54 */	bge lbl_80D38D1C
/* 80D38CCC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38CD0  7C 03 07 74 */	extsb r3, r0
/* 80D38CD4  4B 2F 43 98 */	b dComIfGp_getReverb__Fi
/* 80D38CD8  7C 67 1B 78 */	mr r7, r3
/* 80D38CDC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080100@ha */
/* 80D38CE0  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x00080100@l */
/* 80D38CE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D38CE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38CEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38CF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38CF4  38 81 00 18 */	addi r4, r1, 0x18
/* 80D38CF8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38CFC  38 C0 00 00 */	li r6, 0
/* 80D38D00  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38D04  FC 40 08 90 */	fmr f2, f1
/* 80D38D08  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38D0C  FC 80 18 90 */	fmr f4, f3
/* 80D38D10  39 00 00 00 */	li r8, 0
/* 80D38D14  4B 57 37 F8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38D18  48 00 01 64 */	b lbl_80D38E7C
lbl_80D38D1C:
/* 80D38D1C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80D38D20  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38D24  40 80 00 54 */	bge lbl_80D38D78
/* 80D38D28  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38D2C  7C 03 07 74 */	extsb r3, r0
/* 80D38D30  4B 2F 43 3C */	b dComIfGp_getReverb__Fi
/* 80D38D34  7C 67 1B 78 */	mr r7, r3
/* 80D38D38  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080101@ha */
/* 80D38D3C  38 03 01 01 */	addi r0, r3, 0x0101 /* 0x00080101@l */
/* 80D38D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38D44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38D48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38D4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38D50  38 81 00 14 */	addi r4, r1, 0x14
/* 80D38D54  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38D58  38 C0 00 00 */	li r6, 0
/* 80D38D5C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38D60  FC 40 08 90 */	fmr f2, f1
/* 80D38D64  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38D68  FC 80 18 90 */	fmr f4, f3
/* 80D38D6C  39 00 00 00 */	li r8, 0
/* 80D38D70  4B 57 37 9C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38D74  48 00 01 08 */	b lbl_80D38E7C
lbl_80D38D78:
/* 80D38D78  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D38D7C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38D80  40 80 00 54 */	bge lbl_80D38DD4
/* 80D38D84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38D88  7C 03 07 74 */	extsb r3, r0
/* 80D38D8C  4B 2F 42 E0 */	b dComIfGp_getReverb__Fi
/* 80D38D90  7C 67 1B 78 */	mr r7, r3
/* 80D38D94  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080102@ha */
/* 80D38D98  38 03 01 02 */	addi r0, r3, 0x0102 /* 0x00080102@l */
/* 80D38D9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D38DA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38DA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38DA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38DAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80D38DB0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38DB4  38 C0 00 00 */	li r6, 0
/* 80D38DB8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38DBC  FC 40 08 90 */	fmr f2, f1
/* 80D38DC0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38DC4  FC 80 18 90 */	fmr f4, f3
/* 80D38DC8  39 00 00 00 */	li r8, 0
/* 80D38DCC  4B 57 37 40 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38DD0  48 00 00 AC */	b lbl_80D38E7C
lbl_80D38DD4:
/* 80D38DD4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D38DD8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D38DDC  40 80 00 54 */	bge lbl_80D38E30
/* 80D38DE0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38DE4  7C 03 07 74 */	extsb r3, r0
/* 80D38DE8  4B 2F 42 84 */	b dComIfGp_getReverb__Fi
/* 80D38DEC  7C 67 1B 78 */	mr r7, r3
/* 80D38DF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080103@ha */
/* 80D38DF4  38 03 01 03 */	addi r0, r3, 0x0103 /* 0x00080103@l */
/* 80D38DF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D38DFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38E00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38E04  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38E08  38 81 00 0C */	addi r4, r1, 0xc
/* 80D38E0C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38E10  38 C0 00 00 */	li r6, 0
/* 80D38E14  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38E18  FC 40 08 90 */	fmr f2, f1
/* 80D38E1C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38E20  FC 80 18 90 */	fmr f4, f3
/* 80D38E24  39 00 00 00 */	li r8, 0
/* 80D38E28  4B 57 36 E4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D38E2C  48 00 00 50 */	b lbl_80D38E7C
lbl_80D38E30:
/* 80D38E30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D38E34  7C 03 07 74 */	extsb r3, r0
/* 80D38E38  4B 2F 42 34 */	b dComIfGp_getReverb__Fi
/* 80D38E3C  7C 67 1B 78 */	mr r7, r3
/* 80D38E40  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080104@ha */
/* 80D38E44  38 03 01 04 */	addi r0, r3, 0x0104 /* 0x00080104@l */
/* 80D38E48  90 01 00 08 */	stw r0, 8(r1)
/* 80D38E4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D38E50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D38E54  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38E58  38 81 00 08 */	addi r4, r1, 8
/* 80D38E5C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D38E60  38 C0 00 00 */	li r6, 0
/* 80D38E64  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D38E68  FC 40 08 90 */	fmr f2, f1
/* 80D38E6C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80D38E70  FC 80 18 90 */	fmr f4, f3
/* 80D38E74  39 00 00 00 */	li r8, 0
/* 80D38E78  4B 57 36 94 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D38E7C:
/* 80D38E7C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D38E80  90 1D 00 00 */	stw r0, 0(r29)
/* 80D38E84  7F C3 F3 78 */	mr r3, r30
/* 80D38E88  4B FF F9 31 */	bl setBaseMtx__13daObjWindow_cFv
/* 80D38E8C  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80D38E90  28 00 00 01 */	cmplwi r0, 1
/* 80D38E94  40 82 00 70 */	bne lbl_80D38F04
/* 80D38E98  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D38E9C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D38EA0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D38EA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D38EA8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D38EAC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D38EB0  4B 2D 3E B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D38EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D38EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D38EBC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D38EC0  4B 2D 35 74 */	b mDoMtx_YrotM__FPA4_fs
/* 80D38EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D38EC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D38ECC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D38ED0  7C 85 23 78 */	mr r5, r4
/* 80D38ED4  4B 60 DE 98 */	b PSMTXMultVec
/* 80D38ED8  38 7E 07 14 */	addi r3, r30, 0x714
/* 80D38EDC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D38EE0  4B 53 62 FC */	b SetC__8cM3dGCylFRC4cXyz
/* 80D38EE4  38 7E 07 14 */	addi r3, r30, 0x714
/* 80D38EE8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D38EEC  4B 53 63 14 */	b SetR__8cM3dGCylFf
/* 80D38EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38EF8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D38EFC  38 9E 05 F0 */	addi r4, r30, 0x5f0
/* 80D38F00  4B 52 BC A8 */	b Set__4cCcSFP8cCcD_Obj
lbl_80D38F04:
/* 80D38F04  38 60 00 01 */	li r3, 1
/* 80D38F08  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D38F0C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D38F10  39 61 00 50 */	addi r11, r1, 0x50
/* 80D38F14  4B 62 93 14 */	b _restgpr_29
/* 80D38F18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D38F1C  7C 08 03 A6 */	mtlr r0
/* 80D38F20  38 21 00 60 */	addi r1, r1, 0x60
/* 80D38F24  4E 80 00 20 */	blr 
