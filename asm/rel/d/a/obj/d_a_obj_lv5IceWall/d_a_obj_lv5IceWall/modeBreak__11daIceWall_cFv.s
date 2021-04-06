lbl_80C6C1C0:
/* 80C6C1C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C6C1C4  7C 08 02 A6 */	mflr r0
/* 80C6C1C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C6C1CC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C6C1D0  4B 6F 60 0D */	bl _savegpr_29
/* 80C6C1D4  7C 7E 1B 78 */	mr r30, r3
/* 80C6C1D8  3C 60 80 C7 */	lis r3, lit_3656@ha /* 0x80C6C640@ha */
/* 80C6C1DC  3B E3 C6 40 */	addi r31, r3, lit_3656@l /* 0x80C6C640@l */
/* 80C6C1E0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6C1E4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C6C1E8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C6C1EC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C6C1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6C1F4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6C1F8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C6C1FC  38 00 00 FF */	li r0, 0xff
/* 80C6C200  90 01 00 08 */	stw r0, 8(r1)
/* 80C6C204  38 80 00 00 */	li r4, 0
/* 80C6C208  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6C20C  38 00 FF FF */	li r0, -1
/* 80C6C210  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6C214  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6C218  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6C21C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6C220  80 9E 08 78 */	lwz r4, 0x878(r30)
/* 80C6C224  38 A0 00 00 */	li r5, 0
/* 80C6C228  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000867B@ha */
/* 80C6C22C  38 C6 86 7B */	addi r6, r6, 0x867B /* 0x0000867B@l */
/* 80C6C230  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6C234  39 00 00 00 */	li r8, 0
/* 80C6C238  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C6C23C  39 41 00 3C */	addi r10, r1, 0x3c
/* 80C6C240  4B 3E 12 8D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6C244  90 7E 08 78 */	stw r3, 0x878(r30)
/* 80C6C248  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C6C24C  38 00 00 FF */	li r0, 0xff
/* 80C6C250  90 01 00 08 */	stw r0, 8(r1)
/* 80C6C254  38 80 00 00 */	li r4, 0
/* 80C6C258  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6C25C  38 00 FF FF */	li r0, -1
/* 80C6C260  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6C264  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6C268  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6C26C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6C270  80 9E 08 7C */	lwz r4, 0x87c(r30)
/* 80C6C274  38 A0 00 00 */	li r5, 0
/* 80C6C278  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6C27C  54 00 08 3C */	slwi r0, r0, 1
/* 80C6C280  38 DF 00 78 */	addi r6, r31, 0x78
/* 80C6C284  7C C6 02 2E */	lhzx r6, r6, r0
/* 80C6C288  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6C28C  39 00 00 00 */	li r8, 0
/* 80C6C290  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C6C294  39 41 00 3C */	addi r10, r1, 0x3c
/* 80C6C298  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6C29C  4B 3E 12 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6C2A0  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80C6C2A4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C6C2A8  38 63 02 10 */	addi r3, r3, 0x210
/* 80C6C2AC  80 9E 08 7C */	lwz r4, 0x87c(r30)
/* 80C6C2B0  4B 3D F6 69 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80C6C2B4  28 03 00 00 */	cmplwi r3, 0
/* 80C6C2B8  41 82 00 50 */	beq lbl_80C6C308
/* 80C6C2BC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C6C2C0  C0 1E 08 6C */	lfs f0, 0x86c(r30)
/* 80C6C2C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6C2C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C6C2CC  C0 1E 08 74 */	lfs f0, 0x874(r30)
/* 80C6C2D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C6C2D4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C6C2D8  C0 1E 08 70 */	lfs f0, 0x870(r30)
/* 80C6C2DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C6C2E0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C6C2E4  E0 01 00 30 */	psq_l f0, 48(r1), 0, 0 /* qr0 */
/* 80C6C2E8  F0 01 00 24 */	psq_st f0, 36(r1), 0, 0 /* qr0 */
/* 80C6C2EC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C6C2F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C6C2F4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C6C2F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C6C2FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C6C300  FC 00 08 18 */	frsp f0, f1
/* 80C6C304  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80C6C308:
/* 80C6C308  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C6C30C  7C 03 07 74 */	extsb r3, r0
/* 80C6C310  4B 3C 0D 5D */	bl dComIfGp_getReverb__Fi
/* 80C6C314  7C 67 1B 78 */	mr r7, r3
/* 80C6C318  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C7@ha */
/* 80C6C31C  38 03 01 C7 */	addi r0, r3, 0x01C7 /* 0x000801C7@l */
/* 80C6C320  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C6C324  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6C328  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6C32C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6C330  38 81 00 20 */	addi r4, r1, 0x20
/* 80C6C334  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6C338  38 C0 00 00 */	li r6, 0
/* 80C6C33C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6C340  FC 40 08 90 */	fmr f2, f1
/* 80C6C344  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C6C348  FC 80 18 90 */	fmr f4, f3
/* 80C6C34C  39 00 00 00 */	li r8, 0
/* 80C6C350  4B 63 F6 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6C354  7F C3 F3 78 */	mr r3, r30
/* 80C6C358  4B 3A D9 25 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C6C35C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C6C360  4B 6F 5E C9 */	bl _restgpr_29
/* 80C6C364  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C6C368  7C 08 03 A6 */	mtlr r0
/* 80C6C36C  38 21 00 60 */	addi r1, r1, 0x60
/* 80C6C370  4E 80 00 20 */	blr 
