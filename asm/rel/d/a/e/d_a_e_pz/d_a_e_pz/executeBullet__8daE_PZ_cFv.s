lbl_8075F0BC:
/* 8075F0BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8075F0C0  7C 08 02 A6 */	mflr r0
/* 8075F0C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8075F0C8  39 61 00 70 */	addi r11, r1, 0x70
/* 8075F0CC  4B C0 30 FC */	b _savegpr_24
/* 8075F0D0  7C 7D 1B 78 */	mr r29, r3
/* 8075F0D4  3C 60 80 76 */	lis r3, lit_3906@ha
/* 8075F0D8  3B C3 14 FC */	addi r30, r3, lit_3906@l
/* 8075F0DC  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 8075F0E0  2C 00 00 01 */	cmpwi r0, 1
/* 8075F0E4  41 82 00 B4 */	beq lbl_8075F198
/* 8075F0E8  40 80 00 F0 */	bge lbl_8075F1D8
/* 8075F0EC  2C 00 00 00 */	cmpwi r0, 0
/* 8075F0F0  40 80 00 08 */	bge lbl_8075F0F8
/* 8075F0F4  48 00 00 E4 */	b lbl_8075F1D8
lbl_8075F0F8:
/* 8075F0F8  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075F0FC  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075F100  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8075F104  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8075F108  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075F10C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8075F110  80 63 00 00 */	lwz r3, 0(r3)
/* 8075F114  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8075F118  4B 8A D2 C4 */	b mDoMtx_YrotS__FPA4_fs
/* 8075F11C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8075F120  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8075F124  80 63 00 00 */	lwz r3, 0(r3)
/* 8075F128  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8075F12C  4B 8A D2 70 */	b mDoMtx_XrotM__FPA4_fs
/* 8075F130  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075F134  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8075F138  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8075F13C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8075F140  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8075F144  38 61 00 44 */	addi r3, r1, 0x44
/* 8075F148  38 81 00 38 */	addi r4, r1, 0x38
/* 8075F14C  4B B1 1D A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8075F150  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8075F154  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8075F158  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703FA@ha */
/* 8075F15C  38 03 03 FA */	addi r0, r3, 0x03FA /* 0x000703FA@l */
/* 8075F160  90 01 00 28 */	stw r0, 0x28(r1)
/* 8075F164  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 8075F168  38 81 00 28 */	addi r4, r1, 0x28
/* 8075F16C  38 A0 00 00 */	li r5, 0
/* 8075F170  38 C0 FF FF */	li r6, -1
/* 8075F174  81 9D 05 DC */	lwz r12, 0x5dc(r29)
/* 8075F178  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8075F17C  7D 89 03 A6 */	mtctr r12
/* 8075F180  4E 80 04 21 */	bctrl 
/* 8075F184  38 00 00 64 */	li r0, 0x64
/* 8075F188  98 1D 07 D0 */	stb r0, 0x7d0(r29)
/* 8075F18C  80 7D 06 84 */	lwz r3, 0x684(r29)
/* 8075F190  38 03 00 01 */	addi r0, r3, 1
/* 8075F194  90 1D 06 84 */	stw r0, 0x684(r29)
lbl_8075F198:
/* 8075F198  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703FB@ha */
/* 8075F19C  38 03 03 FB */	addi r0, r3, 0x03FB /* 0x000703FB@l */
/* 8075F1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8075F1A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8075F1A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8075F1AC  80 63 00 00 */	lwz r3, 0(r3)
/* 8075F1B0  38 81 00 24 */	addi r4, r1, 0x24
/* 8075F1B4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8075F1B8  38 C0 00 00 */	li r6, 0
/* 8075F1BC  38 E0 00 00 */	li r7, 0
/* 8075F1C0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075F1C4  FC 40 08 90 */	fmr f2, f1
/* 8075F1C8  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075F1CC  FC 80 18 90 */	fmr f4, f3
/* 8075F1D0  39 00 00 00 */	li r8, 0
/* 8075F1D4  4B B4 D3 38 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8075F1D8:
/* 8075F1D8  3B 00 00 00 */	li r24, 0
/* 8075F1DC  3B 80 00 00 */	li r28, 0
/* 8075F1E0  3B 60 00 00 */	li r27, 0
/* 8075F1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075F1E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8075F1EC  3C 60 80 76 */	lis r3, eff_bullet_id@ha
/* 8075F1F0  3B 43 1C C4 */	addi r26, r3, eff_bullet_id@l
lbl_8075F1F4:
/* 8075F1F4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8075F1F8  38 00 00 FF */	li r0, 0xff
/* 8075F1FC  90 01 00 08 */	stw r0, 8(r1)
/* 8075F200  38 80 00 00 */	li r4, 0
/* 8075F204  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075F208  38 00 FF FF */	li r0, -1
/* 8075F20C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075F210  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075F214  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075F218  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075F21C  3B 3B 0A 68 */	addi r25, r27, 0xa68
/* 8075F220  7C 9D C8 2E */	lwzx r4, r29, r25
/* 8075F224  38 A0 00 00 */	li r5, 0
/* 8075F228  7C DA E2 2E */	lhzx r6, r26, r28
/* 8075F22C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8075F230  39 00 00 00 */	li r8, 0
/* 8075F234  39 20 00 00 */	li r9, 0
/* 8075F238  39 40 00 00 */	li r10, 0
/* 8075F23C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075F240  4B 8E E2 8C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075F244  7C 7D C9 2E */	stwx r3, r29, r25
/* 8075F248  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8075F24C  38 63 02 10 */	addi r3, r3, 0x210
/* 8075F250  7C 9D C8 2E */	lwzx r4, r29, r25
/* 8075F254  4B 8E C6 C4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8075F258  28 03 00 00 */	cmplwi r3, 0
/* 8075F25C  41 82 00 28 */	beq lbl_8075F284
/* 8075F260  E0 1D 04 D0 */	psq_l f0, 1232(r29), 0, 0 /* qr0 */
/* 8075F264  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8075F268  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 8075F26C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8075F270  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8075F274  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 8075F278  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8075F27C  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 8075F280  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_8075F284:
/* 8075F284  3B 18 00 01 */	addi r24, r24, 1
/* 8075F288  2C 18 00 03 */	cmpwi r24, 3
/* 8075F28C  3B 9C 00 02 */	addi r28, r28, 2
/* 8075F290  3B 7B 00 04 */	addi r27, r27, 4
/* 8075F294  41 80 FF 60 */	blt lbl_8075F1F4
/* 8075F298  80 7D 08 BC */	lwz r3, 0x8bc(r29)
/* 8075F29C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8075F2A0  40 82 00 44 */	bne lbl_8075F2E4
/* 8075F2A4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8075F2A8  40 82 00 3C */	bne lbl_8075F2E4
/* 8075F2AC  88 1D 07 D0 */	lbz r0, 0x7d0(r29)
/* 8075F2B0  28 00 00 00 */	cmplwi r0, 0
/* 8075F2B4  41 82 00 30 */	beq lbl_8075F2E4
/* 8075F2B8  38 7D 0D 88 */	addi r3, r29, 0xd88
/* 8075F2BC  4B 92 50 04 */	b ChkAtHit__12dCcD_GObjInfFv
/* 8075F2C0  28 03 00 00 */	cmplwi r3, 0
/* 8075F2C4  40 82 00 20 */	bne lbl_8075F2E4
/* 8075F2C8  38 7D 0D 88 */	addi r3, r29, 0xd88
/* 8075F2CC  4B 92 51 94 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8075F2D0  28 03 00 00 */	cmplwi r3, 0
/* 8075F2D4  40 82 00 10 */	bne lbl_8075F2E4
/* 8075F2D8  80 1D 0D E4 */	lwz r0, 0xde4(r29)
/* 8075F2DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075F2E0  41 82 00 B0 */	beq lbl_8075F390
lbl_8075F2E4:
/* 8075F2E4  3B 00 00 00 */	li r24, 0
/* 8075F2E8  3B 80 00 00 */	li r28, 0
/* 8075F2EC  3C 60 80 76 */	lis r3, eff_bullet_delete_id@ha
/* 8075F2F0  3B 63 1C CC */	addi r27, r3, eff_bullet_delete_id@l
lbl_8075F2F4:
/* 8075F2F4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8075F2F8  38 80 00 00 */	li r4, 0
/* 8075F2FC  90 81 00 08 */	stw r4, 8(r1)
/* 8075F300  38 00 FF FF */	li r0, -1
/* 8075F304  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075F308  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075F30C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075F310  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075F314  38 80 00 00 */	li r4, 0
/* 8075F318  7C BB E2 2E */	lhzx r5, r27, r28
/* 8075F31C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8075F320  38 E0 00 00 */	li r7, 0
/* 8075F324  39 00 00 00 */	li r8, 0
/* 8075F328  39 20 00 00 */	li r9, 0
/* 8075F32C  39 40 00 FF */	li r10, 0xff
/* 8075F330  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075F334  4B 8E D7 5C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075F338  3B 18 00 01 */	addi r24, r24, 1
/* 8075F33C  2C 18 00 04 */	cmpwi r24, 4
/* 8075F340  3B 9C 00 02 */	addi r28, r28, 2
/* 8075F344  41 80 FF B0 */	blt lbl_8075F2F4
/* 8075F348  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703FC@ha */
/* 8075F34C  38 03 03 FC */	addi r0, r3, 0x03FC /* 0x000703FC@l */
/* 8075F350  90 01 00 20 */	stw r0, 0x20(r1)
/* 8075F354  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8075F358  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8075F35C  80 63 00 00 */	lwz r3, 0(r3)
/* 8075F360  38 81 00 20 */	addi r4, r1, 0x20
/* 8075F364  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8075F368  38 C0 00 00 */	li r6, 0
/* 8075F36C  38 E0 00 00 */	li r7, 0
/* 8075F370  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075F374  FC 40 08 90 */	fmr f2, f1
/* 8075F378  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075F37C  FC 80 18 90 */	fmr f4, f3
/* 8075F380  39 00 00 00 */	li r8, 0
/* 8075F384  4B B4 C6 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075F388  7F A3 EB 78 */	mr r3, r29
/* 8075F38C  4B 8B A8 F0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8075F390:
/* 8075F390  39 61 00 70 */	addi r11, r1, 0x70
/* 8075F394  4B C0 2E 80 */	b _restgpr_24
/* 8075F398  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8075F39C  7C 08 03 A6 */	mtlr r0
/* 8075F3A0  38 21 00 70 */	addi r1, r1, 0x70
/* 8075F3A4  4E 80 00 20 */	blr 
