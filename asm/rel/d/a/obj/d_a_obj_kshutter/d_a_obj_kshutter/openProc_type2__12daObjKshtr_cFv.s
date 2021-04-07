lbl_80C48F94:
/* 80C48F94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C48F98  7C 08 02 A6 */	mflr r0
/* 80C48F9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C48FA0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C48FA4  4B 71 92 29 */	bl _savegpr_25
/* 80C48FA8  7C 7D 1B 78 */	mr r29, r3
/* 80C48FAC  3C 60 80 C5 */	lis r3, l_bmd@ha /* 0x80C49CA8@ha */
/* 80C48FB0  3B E3 9C A8 */	addi r31, r3, l_bmd@l /* 0x80C49CA8@l */
/* 80C48FB4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80C48FB8  4B 3C 44 71 */	bl play__14mDoExt_baseAnmFv
/* 80C48FBC  7C 7E 1B 78 */	mr r30, r3
/* 80C48FC0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80C48FC4  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80C48FC8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48FCC  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80C48FD0  40 82 00 74 */	bne lbl_80C49044
/* 80C48FD4  3B 20 00 00 */	li r25, 0
/* 80C48FD8  3B 80 00 00 */	li r28, 0
/* 80C48FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C48FE0  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C48FE4  3B 7F 00 84 */	addi r27, r31, 0x84
lbl_80C48FE8:
/* 80C48FE8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C48FEC  7C 04 07 74 */	extsb r4, r0
/* 80C48FF0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C48FF4  38 00 00 00 */	li r0, 0
/* 80C48FF8  90 01 00 08 */	stw r0, 8(r1)
/* 80C48FFC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C49000  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C49004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49008  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C4900C  38 80 00 00 */	li r4, 0
/* 80C49010  7C BB E2 2E */	lhzx r5, r27, r28
/* 80C49014  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80C49018  38 E0 00 00 */	li r7, 0
/* 80C4901C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80C49020  39 20 00 00 */	li r9, 0
/* 80C49024  39 40 00 FF */	li r10, 0xff
/* 80C49028  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C4902C  4B 40 3A 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C49030  3B 39 00 01 */	addi r25, r25, 1
/* 80C49034  28 19 00 05 */	cmplwi r25, 5
/* 80C49038  3B 9C 00 02 */	addi r28, r28, 2
/* 80C4903C  41 80 FF AC */	blt lbl_80C48FE8
/* 80C49040  48 00 00 3C */	b lbl_80C4907C
lbl_80C49044:
/* 80C49044  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C49048  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80C4904C  40 82 00 30 */	bne lbl_80C4907C
/* 80C49050  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C49054  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C49058  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C4905C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C49060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C49064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49068  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C4906C  38 80 00 04 */	li r4, 4
/* 80C49070  38 A0 00 0F */	li r5, 0xf
/* 80C49074  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C49078  4B 42 69 AD */	bl StartShock__12dVibration_cFii4cXyz
lbl_80C4907C:
/* 80C4907C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80C49080  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C49084  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C49088  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C4908C  40 82 00 50 */	bne lbl_80C490DC
/* 80C49090  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C49094  7C 03 07 74 */	extsb r3, r0
/* 80C49098  4B 3E 3F D5 */	bl dComIfGp_getReverb__Fi
/* 80C4909C  7C 67 1B 78 */	mr r7, r3
/* 80C490A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080194@ha */
/* 80C490A4  38 03 01 94 */	addi r0, r3, 0x0194 /* 0x00080194@l */
/* 80C490A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C490AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C490B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C490B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C490B8  38 81 00 20 */	addi r4, r1, 0x20
/* 80C490BC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C490C0  38 C0 00 00 */	li r6, 0
/* 80C490C4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C490C8  FC 40 08 90 */	fmr f2, f1
/* 80C490CC  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C490D0  FC 80 18 90 */	fmr f4, f3
/* 80C490D4  39 00 00 00 */	li r8, 0
/* 80C490D8  4B 66 28 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C490DC:
/* 80C490DC  7F C3 F3 78 */	mr r3, r30
/* 80C490E0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C490E4  4B 71 91 35 */	bl _restgpr_25
/* 80C490E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C490EC  7C 08 03 A6 */	mtlr r0
/* 80C490F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80C490F4  4E 80 00 20 */	blr 
