lbl_80B3C278:
/* 80B3C278  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B3C27C  7C 08 02 A6 */	mflr r0
/* 80B3C280  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B3C284  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80B3C288  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80B3C28C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80B3C290  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80B3C294  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80B3C298  4B 82 5F 41 */	bl _savegpr_28
/* 80B3C29C  7C 7C 1B 78 */	mr r28, r3
/* 80B3C2A0  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3C2A4  3B E3 16 DC */	addi r31, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3C2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3C2AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3C2B0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B3C2B4  4B 64 53 8D */	bl dCam_getBody__Fv
/* 80B3C2B8  7C 7D 1B 78 */	mr r29, r3
/* 80B3C2BC  A0 1C 0E 96 */	lhz r0, 0xe96(r28)
/* 80B3C2C0  2C 00 00 02 */	cmpwi r0, 2
/* 80B3C2C4  41 82 00 5C */	beq lbl_80B3C320
/* 80B3C2C8  40 80 00 10 */	bge lbl_80B3C2D8
/* 80B3C2CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B3C2D0  41 82 00 14 */	beq lbl_80B3C2E4
/* 80B3C2D4  48 00 07 2C */	b lbl_80B3CA00
lbl_80B3C2D8:
/* 80B3C2D8  2C 00 00 04 */	cmpwi r0, 4
/* 80B3C2DC  40 80 07 24 */	bge lbl_80B3CA00
/* 80B3C2E0  48 00 07 18 */	b lbl_80B3C9F8
lbl_80B3C2E4:
/* 80B3C2E4  38 00 00 00 */	li r0, 0
/* 80B3C2E8  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3C2EC  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3C2F0  28 00 00 00 */	cmplwi r0, 0
/* 80B3C2F4  40 82 00 10 */	bne lbl_80B3C304
/* 80B3C2F8  38 60 00 2E */	li r3, 0x2e
/* 80B3C2FC  4B 61 93 F9 */	bl daNpcF_onTmpBit__FUl
/* 80B3C300  48 00 00 0C */	b lbl_80B3C30C
lbl_80B3C304:
/* 80B3C304  38 60 00 3E */	li r3, 0x3e
/* 80B3C308  4B 61 93 6D */	bl daNpcF_onEvtBit__FUl
lbl_80B3C30C:
/* 80B3C30C  38 00 00 00 */	li r0, 0
/* 80B3C310  90 1C 0E 74 */	stw r0, 0xe74(r28)
/* 80B3C314  38 00 00 02 */	li r0, 2
/* 80B3C318  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3C31C  48 00 06 E4 */	b lbl_80B3CA00
lbl_80B3C320:
/* 80B3C320  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B3C324  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B3C328  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3C32C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3C330  38 80 00 05 */	li r4, 5
/* 80B3C334  4B 77 5A C1 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 80B3C338  80 1C 0E 84 */	lwz r0, 0xe84(r28)
/* 80B3C33C  2C 00 00 02 */	cmpwi r0, 2
/* 80B3C340  41 82 03 A0 */	beq lbl_80B3C6E0
/* 80B3C344  40 80 00 14 */	bge lbl_80B3C358
/* 80B3C348  2C 00 00 00 */	cmpwi r0, 0
/* 80B3C34C  41 82 00 18 */	beq lbl_80B3C364
/* 80B3C350  40 80 01 6C */	bge lbl_80B3C4BC
/* 80B3C354  48 00 06 4C */	b lbl_80B3C9A0
lbl_80B3C358:
/* 80B3C358  2C 00 00 04 */	cmpwi r0, 4
/* 80B3C35C  40 80 06 44 */	bge lbl_80B3C9A0
/* 80B3C360  48 00 04 50 */	b lbl_80B3C7B0
lbl_80B3C364:
/* 80B3C364  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80B3C368  28 00 00 02 */	cmplwi r0, 2
/* 80B3C36C  41 82 00 30 */	beq lbl_80B3C39C
/* 80B3C370  7F 83 E3 78 */	mr r3, r28
/* 80B3C374  38 80 00 01 */	li r4, 1
/* 80B3C378  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B3C37C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B3C380  38 C0 00 00 */	li r6, 0
/* 80B3C384  4B 4D F5 85 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3C388  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80B3C38C  60 00 00 02 */	ori r0, r0, 2
/* 80B3C390  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80B3C394  38 60 00 00 */	li r3, 0
/* 80B3C398  48 00 06 6C */	b lbl_80B3CA04
lbl_80B3C39C:
/* 80B3C39C  7F A3 EB 78 */	mr r3, r29
/* 80B3C3A0  4B 62 51 31 */	bl Stop__9dCamera_cFv
/* 80B3C3A4  7F A3 EB 78 */	mr r3, r29
/* 80B3C3A8  38 80 00 02 */	li r4, 2
/* 80B3C3AC  4B 62 6C 61 */	bl SetTrimSize__9dCamera_cFl
/* 80B3C3B0  38 61 00 98 */	addi r3, r1, 0x98
/* 80B3C3B4  7F A4 EB 78 */	mr r4, r29
/* 80B3C3B8  4B 64 5A E1 */	bl Center__9dCamera_cFv
/* 80B3C3BC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B3C3C0  D0 1C 0E 08 */	stfs f0, 0xe08(r28)
/* 80B3C3C4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B3C3C8  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B3C3CC  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80B3C3D0  D0 1C 0E 10 */	stfs f0, 0xe10(r28)
/* 80B3C3D4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B3C3D8  7F A4 EB 78 */	mr r4, r29
/* 80B3C3DC  4B 64 5A 89 */	bl Eye__9dCamera_cFv
/* 80B3C3E0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B3C3E4  D0 1C 0E 14 */	stfs f0, 0xe14(r28)
/* 80B3C3E8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B3C3EC  D0 1C 0E 18 */	stfs f0, 0xe18(r28)
/* 80B3C3F0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B3C3F4  D0 1C 0E 1C */	stfs f0, 0xe1c(r28)
/* 80B3C3F8  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80B3C3FC  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B3C400  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3C404  D0 1C 0E 50 */	stfs f0, 0xe50(r28)
/* 80B3C408  38 61 00 80 */	addi r3, r1, 0x80
/* 80B3C40C  7F A4 EB 78 */	mr r4, r29
/* 80B3C410  4B 64 5A 55 */	bl Eye__9dCamera_cFv
/* 80B3C414  38 61 00 74 */	addi r3, r1, 0x74
/* 80B3C418  7F A4 EB 78 */	mr r4, r29
/* 80B3C41C  4B 64 5A 49 */	bl Eye__9dCamera_cFv
/* 80B3C420  38 61 00 68 */	addi r3, r1, 0x68
/* 80B3C424  7F A4 EB 78 */	mr r4, r29
/* 80B3C428  4B 64 5A 3D */	bl Eye__9dCamera_cFv
/* 80B3C42C  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80B3C430  C0 3F 06 4C */	lfs f1, 0x64c(r31)
/* 80B3C434  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B3C438  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3C43C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B3C440  D0 1C 0E 2C */	stfs f0, 0xe2c(r28)
/* 80B3C444  D0 3C 0E 30 */	stfs f1, 0xe30(r28)
/* 80B3C448  D0 5C 0E 34 */	stfs f2, 0xe34(r28)
/* 80B3C44C  38 00 00 0B */	li r0, 0xb
/* 80B3C450  98 1E 05 6A */	stb r0, 0x56a(r30)
/* 80B3C454  7F 83 E3 78 */	mr r3, r28
/* 80B3C458  38 80 00 04 */	li r4, 4
/* 80B3C45C  38 A0 00 01 */	li r5, 1
/* 80B3C460  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B3C464  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3C468  7D 89 03 A6 */	mtctr r12
/* 80B3C46C  4E 80 04 21 */	bctrl 
/* 80B3C470  7F 83 E3 78 */	mr r3, r28
/* 80B3C474  38 80 00 1B */	li r4, 0x1b
/* 80B3C478  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3C47C  38 A0 00 00 */	li r5, 0
/* 80B3C480  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B3C484  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3C488  7D 89 03 A6 */	mtctr r12
/* 80B3C48C  4E 80 04 21 */	bctrl 
/* 80B3C490  A8 1C 0E 90 */	lha r0, 0xe90(r28)
/* 80B3C494  2C 00 00 00 */	cmpwi r0, 0
/* 80B3C498  41 82 00 0C */	beq lbl_80B3C4A4
/* 80B3C49C  38 00 00 00 */	li r0, 0
/* 80B3C4A0  B0 1C 0E 90 */	sth r0, 0xe90(r28)
lbl_80B3C4A4:
/* 80B3C4A4  38 7C 0C 80 */	addi r3, r28, 0xc80
/* 80B3C4A8  4B 61 42 39 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B3C4AC  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B3C4B0  38 03 00 01 */	addi r0, r3, 1
/* 80B3C4B4  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3C4B8  48 00 04 E8 */	b lbl_80B3C9A0
lbl_80B3C4BC:
/* 80B3C4BC  A8 9C 09 DA */	lha r4, 0x9da(r28)
/* 80B3C4C0  7C 80 07 35 */	extsh. r0, r4
/* 80B3C4C4  40 82 00 C4 */	bne lbl_80B3C588
/* 80B3C4C8  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B3C4CC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3C4D0  C0 1F 05 A0 */	lfs f0, 0x5a0(r31)
/* 80B3C4D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3C4D8  40 82 00 B0 */	bne lbl_80B3C588
/* 80B3C4DC  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B3C4E0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B3C4E4  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80B3C4E8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B3C4EC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B3C4F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3C4F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3C4F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B3C4FC  38 80 00 08 */	li r4, 8
/* 80B3C500  38 A0 00 0F */	li r5, 0xf
/* 80B3C504  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80B3C508  4B 53 35 1D */	bl StartShock__12dVibration_cFii4cXyz
/* 80B3C50C  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3C510  28 00 00 00 */	cmplwi r0, 0
/* 80B3C514  38 00 00 14 */	li r0, 0x14
/* 80B3C518  40 82 00 08 */	bne lbl_80B3C520
/* 80B3C51C  38 00 00 16 */	li r0, 0x16
lbl_80B3C520:
/* 80B3C520  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B3C524  80 63 00 04 */	lwz r3, 4(r3)
/* 80B3C528  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3C52C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B3C530  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B3C534  7C 63 02 14 */	add r3, r3, r0
/* 80B3C538  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3C53C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3C540  4B 80 9F 71 */	bl PSMTXCopy
/* 80B3C544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3C548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3C54C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3C550  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B3C554  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3C558  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B3C55C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3C560  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B3C564  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80B3C568  38 9C 0D EC */	addi r4, r28, 0xdec
/* 80B3C56C  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80B3C570  38 C0 00 00 */	li r6, 0
/* 80B3C574  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 80B3C578  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80B3C57C  39 00 00 01 */	li r8, 1
/* 80B3C580  4B 4E 0A A1 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B3C584  48 00 00 C8 */	b lbl_80B3C64C
lbl_80B3C588:
/* 80B3C588  7C 80 07 35 */	extsh. r0, r4
/* 80B3C58C  40 82 00 C0 */	bne lbl_80B3C64C
/* 80B3C590  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B3C594  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80B3C598  C8 3F 05 98 */	lfd f1, 0x598(r31)
/* 80B3C59C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B3C5A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B3C5A4  3C 00 43 30 */	lis r0, 0x4330
/* 80B3C5A8  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80B3C5AC  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80B3C5B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B3C5B4  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80B3C5B8  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80B3C5BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3C5C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B3C5C4  40 81 00 88 */	ble lbl_80B3C64C
/* 80B3C5C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B3C5CC  4B 4D 07 99 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3C5D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3C5D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3C5D8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B3C5DC  4B 4C FE 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3C5E0  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3C5E4  28 00 00 00 */	cmplwi r0, 0
/* 80B3C5E8  40 82 00 20 */	bne lbl_80B3C608
/* 80B3C5EC  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3C5F0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B3C5F4  C0 1F 06 54 */	lfs f0, 0x654(r31)
/* 80B3C5F8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B3C5FC  C0 1F 06 58 */	lfs f0, 0x658(r31)
/* 80B3C600  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80B3C604  48 00 00 1C */	b lbl_80B3C620
lbl_80B3C608:
/* 80B3C608  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3C60C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B3C610  C0 1F 06 5C */	lfs f0, 0x65c(r31)
/* 80B3C614  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B3C618  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 80B3C61C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80B3C620:
/* 80B3C620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3C624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3C628  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B3C62C  7C 85 23 78 */	mr r5, r4
/* 80B3C630  4B 80 A7 3D */	bl PSMTXMultVec
/* 80B3C634  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B3C638  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80B3C63C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B3C640  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80B3C644  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B3C648  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
lbl_80B3C64C:
/* 80B3C64C  38 61 00 50 */	addi r3, r1, 0x50
/* 80B3C650  7F 84 E3 78 */	mr r4, r28
/* 80B3C654  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3C658  28 00 00 00 */	cmplwi r0, 0
/* 80B3C65C  38 A0 00 02 */	li r5, 2
/* 80B3C660  4B FF 92 91 */	bl getJointPos__15daNpcWrestler_cFi
/* 80B3C664  38 7C 0E 08 */	addi r3, r28, 0xe08
/* 80B3C668  38 81 00 50 */	addi r4, r1, 0x50
/* 80B3C66C  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80B3C670  C0 5F 05 AC */	lfs f2, 0x5ac(r31)
/* 80B3C674  C0 7F 01 B4 */	lfs f3, 0x1b4(r31)
/* 80B3C678  4B 73 34 41 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3C67C  FF C0 08 90 */	fmr f30, f1
/* 80B3C680  38 7C 0E 18 */	addi r3, r28, 0xe18
/* 80B3C684  C0 3C 0E 30 */	lfs f1, 0xe30(r28)
/* 80B3C688  C0 5F 06 64 */	lfs f2, 0x664(r31)
/* 80B3C68C  C0 7F 05 AC */	lfs f3, 0x5ac(r31)
/* 80B3C690  C0 9F 01 B4 */	lfs f4, 0x1b4(r31)
/* 80B3C694  4B 73 32 E9 */	bl cLib_addCalc__FPfffff
/* 80B3C698  FF E0 08 90 */	fmr f31, f1
/* 80B3C69C  38 7C 0E 50 */	addi r3, r28, 0xe50
/* 80B3C6A0  C0 3F 06 68 */	lfs f1, 0x668(r31)
/* 80B3C6A4  C0 5F 06 6C */	lfs f2, 0x66c(r31)
/* 80B3C6A8  C0 7F 06 48 */	lfs f3, 0x648(r31)
/* 80B3C6AC  C0 9F 06 70 */	lfs f4, 0x670(r31)
/* 80B3C6B0  4B 73 32 CD */	bl cLib_addCalc__FPfffff
/* 80B3C6B4  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3C6B8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80B3C6BC  40 82 02 E4 */	bne lbl_80B3C9A0
/* 80B3C6C0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80B3C6C4  40 82 02 DC */	bne lbl_80B3C9A0
/* 80B3C6C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3C6CC  40 82 02 D4 */	bne lbl_80B3C9A0
/* 80B3C6D0  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B3C6D4  38 03 00 01 */	addi r0, r3, 1
/* 80B3C6D8  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3C6DC  48 00 02 C4 */	b lbl_80B3C9A0
lbl_80B3C6E0:
/* 80B3C6E0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3C6E4  D0 1C 0E 14 */	stfs f0, 0xe14(r28)
/* 80B3C6E8  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 80B3C6EC  D0 1C 0E 18 */	stfs f0, 0xe18(r28)
/* 80B3C6F0  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80B3C6F4  D0 1C 0E 1C */	stfs f0, 0xe1c(r28)
/* 80B3C6F8  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B3C6FC  4B 4D 06 69 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3C700  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3C704  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3C708  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80B3C70C  4B 4C FD 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3C710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3C714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3C718  38 9C 0E 14 */	addi r4, r28, 0xe14
/* 80B3C71C  7C 85 23 78 */	mr r5, r4
/* 80B3C720  4B 80 A6 4D */	bl PSMTXMultVec
/* 80B3C724  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 80B3C728  D0 1C 0E 08 */	stfs f0, 0xe08(r28)
/* 80B3C72C  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80B3C730  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B3C734  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80B3C738  D0 1C 0E 10 */	stfs f0, 0xe10(r28)
/* 80B3C73C  C0 3C 0E 0C */	lfs f1, 0xe0c(r28)
/* 80B3C740  C0 1F 06 68 */	lfs f0, 0x668(r31)
/* 80B3C744  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3C748  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B3C74C  C0 5C 0E 10 */	lfs f2, 0xe10(r28)
/* 80B3C750  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80B3C754  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B3C758  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3C75C  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B3C760  D0 1C 0E 20 */	stfs f0, 0xe20(r28)
/* 80B3C764  D0 3C 0E 24 */	stfs f1, 0xe24(r28)
/* 80B3C768  D0 5C 0E 28 */	stfs f2, 0xe28(r28)
/* 80B3C76C  C0 1F 05 E0 */	lfs f0, 0x5e0(r31)
/* 80B3C770  D0 1C 0E 50 */	stfs f0, 0xe50(r28)
/* 80B3C774  38 00 00 03 */	li r0, 3
/* 80B3C778  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 80B3C77C  38 60 00 00 */	li r3, 0
/* 80B3C780  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 80B3C784  38 00 00 31 */	li r0, 0x31
/* 80B3C788  90 1E 06 14 */	stw r0, 0x614(r30)
/* 80B3C78C  38 00 00 01 */	li r0, 1
/* 80B3C790  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80B3C794  90 7E 06 10 */	stw r3, 0x610(r30)
/* 80B3C798  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80B3C79C  38 00 00 14 */	li r0, 0x14
/* 80B3C7A0  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3C7A4  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B3C7A8  38 03 00 01 */	addi r0, r3, 1
/* 80B3C7AC  90 1C 0E 84 */	stw r0, 0xe84(r28)
lbl_80B3C7B0:
/* 80B3C7B0  38 7C 0E 0C */	addi r3, r28, 0xe0c
/* 80B3C7B4  C0 3C 0E 24 */	lfs f1, 0xe24(r28)
/* 80B3C7B8  C0 5F 06 44 */	lfs f2, 0x644(r31)
/* 80B3C7BC  C0 7F 06 48 */	lfs f3, 0x648(r31)
/* 80B3C7C0  C0 9F 06 40 */	lfs f4, 0x640(r31)
/* 80B3C7C4  4B 73 31 B9 */	bl cLib_addCalc__FPfffff
/* 80B3C7C8  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3C7CC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3C7D0  40 82 01 D0 */	bne lbl_80B3C9A0
/* 80B3C7D4  80 7C 0E 80 */	lwz r3, 0xe80(r28)
/* 80B3C7D8  38 03 FF FF */	addi r0, r3, -1
/* 80B3C7DC  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3C7E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C7E4  41 81 01 BC */	bgt lbl_80B3C9A0
/* 80B3C7E8  38 00 00 01 */	li r0, 1
/* 80B3C7EC  90 1E 06 14 */	stw r0, 0x614(r30)
/* 80B3C7F0  38 00 00 00 */	li r0, 0
/* 80B3C7F4  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80B3C7F8  90 1E 06 10 */	stw r0, 0x610(r30)
/* 80B3C7FC  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B3C800  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B3C804  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B3C808  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B3C80C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B3C810  C0 1C 0E 10 */	lfs f0, 0xe10(r28)
/* 80B3C814  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B3C818  C0 1C 0E 14 */	lfs f0, 0xe14(r28)
/* 80B3C81C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B3C820  C0 1C 0E 18 */	lfs f0, 0xe18(r28)
/* 80B3C824  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3C828  C0 1C 0E 1C */	lfs f0, 0xe1c(r28)
/* 80B3C82C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B3C830  7F A3 EB 78 */	mr r3, r29
/* 80B3C834  38 81 00 44 */	addi r4, r1, 0x44
/* 80B3C838  38 A1 00 38 */	addi r5, r1, 0x38
/* 80B3C83C  4B 64 43 DD */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80B3C840  7F A3 EB 78 */	mr r3, r29
/* 80B3C844  4B 62 4C 69 */	bl Start__9dCamera_cFv
/* 80B3C848  7F A3 EB 78 */	mr r3, r29
/* 80B3C84C  38 80 00 00 */	li r4, 0
/* 80B3C850  4B 62 67 BD */	bl SetTrimSize__9dCamera_cFl
/* 80B3C854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3C858  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3C85C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3C860  4B 50 5C 09 */	bl reset__14dEvt_control_cFv
/* 80B3C864  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B3C868  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3C86C  D0 1C 0E 8C */	stfs f0, 0xe8c(r28)
/* 80B3C870  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3C874  28 00 00 00 */	cmplwi r0, 0
/* 80B3C878  40 82 00 98 */	bne lbl_80B3C910
/* 80B3C87C  3C 60 80 B4 */	lis r3, lit_9717@ha /* 0x80B42C48@ha */
/* 80B3C880  38 83 2C 48 */	addi r4, r3, lit_9717@l /* 0x80B42C48@l */
/* 80B3C884  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3C888  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3C88C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B3C890  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B3C894  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3C898  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B3C89C  38 00 00 03 */	li r0, 3
/* 80B3C8A0  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3C8A4  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3C8A8  4B 82 57 71 */	bl __ptmf_test
/* 80B3C8AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C8B0  41 82 00 18 */	beq lbl_80B3C8C8
/* 80B3C8B4  7F 83 E3 78 */	mr r3, r28
/* 80B3C8B8  38 80 00 00 */	li r4, 0
/* 80B3C8BC  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3C8C0  4B 82 57 C5 */	bl __ptmf_scall
/* 80B3C8C4  60 00 00 00 */	nop 
lbl_80B3C8C8:
/* 80B3C8C8  38 00 00 00 */	li r0, 0
/* 80B3C8CC  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3C8D0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B3C8D4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B3C8D8  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B3C8DC  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B3C8E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B3C8E4  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3C8E8  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3C8EC  4B 82 57 2D */	bl __ptmf_test
/* 80B3C8F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C8F4  41 82 00 AC */	beq lbl_80B3C9A0
/* 80B3C8F8  7F 83 E3 78 */	mr r3, r28
/* 80B3C8FC  38 80 00 00 */	li r4, 0
/* 80B3C900  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3C904  4B 82 57 81 */	bl __ptmf_scall
/* 80B3C908  60 00 00 00 */	nop 
/* 80B3C90C  48 00 00 94 */	b lbl_80B3C9A0
lbl_80B3C910:
/* 80B3C910  3C 60 80 B4 */	lis r3, lit_9720@ha /* 0x80B42C54@ha */
/* 80B3C914  38 83 2C 54 */	addi r4, r3, lit_9720@l /* 0x80B42C54@l */
/* 80B3C918  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3C91C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3C920  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B3C924  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3C928  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3C92C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3C930  38 00 00 03 */	li r0, 3
/* 80B3C934  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3C938  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3C93C  4B 82 56 DD */	bl __ptmf_test
/* 80B3C940  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C944  41 82 00 18 */	beq lbl_80B3C95C
/* 80B3C948  7F 83 E3 78 */	mr r3, r28
/* 80B3C94C  38 80 00 00 */	li r4, 0
/* 80B3C950  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3C954  4B 82 57 31 */	bl __ptmf_scall
/* 80B3C958  60 00 00 00 */	nop 
lbl_80B3C95C:
/* 80B3C95C  38 00 00 00 */	li r0, 0
/* 80B3C960  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3C964  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B3C968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3C96C  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B3C970  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B3C974  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B3C978  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3C97C  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3C980  4B 82 56 99 */	bl __ptmf_test
/* 80B3C984  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C988  41 82 00 18 */	beq lbl_80B3C9A0
/* 80B3C98C  7F 83 E3 78 */	mr r3, r28
/* 80B3C990  38 80 00 00 */	li r4, 0
/* 80B3C994  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3C998  4B 82 56 ED */	bl __ptmf_scall
/* 80B3C99C  60 00 00 00 */	nop 
lbl_80B3C9A0:
/* 80B3C9A0  80 1C 0E 84 */	lwz r0, 0xe84(r28)
/* 80B3C9A4  2C 00 00 00 */	cmpwi r0, 0
/* 80B3C9A8  40 81 00 58 */	ble lbl_80B3CA00
/* 80B3C9AC  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B3C9B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B3C9B4  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B3C9B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3C9BC  C0 1C 0E 10 */	lfs f0, 0xe10(r28)
/* 80B3C9C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B3C9C4  C0 1C 0E 14 */	lfs f0, 0xe14(r28)
/* 80B3C9C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3C9CC  C0 1C 0E 18 */	lfs f0, 0xe18(r28)
/* 80B3C9D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3C9D4  C0 1C 0E 1C */	lfs f0, 0xe1c(r28)
/* 80B3C9D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3C9DC  7F A3 EB 78 */	mr r3, r29
/* 80B3C9E0  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3C9E4  38 A1 00 08 */	addi r5, r1, 8
/* 80B3C9E8  C0 3C 0E 50 */	lfs f1, 0xe50(r28)
/* 80B3C9EC  38 C0 00 00 */	li r6, 0
/* 80B3C9F0  4B 64 40 F1 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3C9F4  48 00 00 0C */	b lbl_80B3CA00
lbl_80B3C9F8:
/* 80B3C9F8  38 00 00 01 */	li r0, 1
/* 80B3C9FC  98 1C 0E 99 */	stb r0, 0xe99(r28)
lbl_80B3CA00:
/* 80B3CA00  38 60 00 01 */	li r3, 1
lbl_80B3CA04:
/* 80B3CA04  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80B3CA08  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80B3CA0C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80B3CA10  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80B3CA14  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80B3CA18  4B 82 58 0D */	bl _restgpr_28
/* 80B3CA1C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B3CA20  7C 08 03 A6 */	mtlr r0
/* 80B3CA24  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B3CA28  4E 80 00 20 */	blr 
