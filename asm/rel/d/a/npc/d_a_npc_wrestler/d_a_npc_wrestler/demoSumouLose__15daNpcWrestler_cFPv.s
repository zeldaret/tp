lbl_80B3B4B4:
/* 80B3B4B4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B3B4B8  7C 08 02 A6 */	mflr r0
/* 80B3B4BC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B3B4C0  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80B3B4C4  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80B3B4C8  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80B3B4CC  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80B3B4D0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80B3B4D4  4B 82 6D 05 */	bl _savegpr_28
/* 80B3B4D8  7C 7C 1B 78 */	mr r28, r3
/* 80B3B4DC  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3B4E0  3B E3 16 DC */	addi r31, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3B4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3B4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3B4EC  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B3B4F0  4B 64 61 51 */	bl dCam_getBody__Fv
/* 80B3B4F4  7C 7D 1B 78 */	mr r29, r3
/* 80B3B4F8  A0 1C 0E 96 */	lhz r0, 0xe96(r28)
/* 80B3B4FC  2C 00 00 02 */	cmpwi r0, 2
/* 80B3B500  41 82 00 64 */	beq lbl_80B3B564
/* 80B3B504  40 80 00 10 */	bge lbl_80B3B514
/* 80B3B508  2C 00 00 00 */	cmpwi r0, 0
/* 80B3B50C  41 82 00 14 */	beq lbl_80B3B520
/* 80B3B510  48 00 07 48 */	b lbl_80B3BC58
lbl_80B3B514:
/* 80B3B514  2C 00 00 04 */	cmpwi r0, 4
/* 80B3B518  40 80 07 40 */	bge lbl_80B3BC58
/* 80B3B51C  48 00 07 34 */	b lbl_80B3BC50
lbl_80B3B520:
/* 80B3B520  38 00 00 00 */	li r0, 0
/* 80B3B524  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3B528  38 00 00 14 */	li r0, 0x14
/* 80B3B52C  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3B530  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3B534  28 00 00 00 */	cmplwi r0, 0
/* 80B3B538  40 82 00 10 */	bne lbl_80B3B548
/* 80B3B53C  38 60 00 2E */	li r3, 0x2e
/* 80B3B540  4B 61 A1 B5 */	bl daNpcF_onTmpBit__FUl
/* 80B3B544  48 00 00 0C */	b lbl_80B3B550
lbl_80B3B548:
/* 80B3B548  38 60 00 3E */	li r3, 0x3e
/* 80B3B54C  4B 61 A1 29 */	bl daNpcF_onEvtBit__FUl
lbl_80B3B550:
/* 80B3B550  38 00 00 00 */	li r0, 0
/* 80B3B554  90 1C 0E 74 */	stw r0, 0xe74(r28)
/* 80B3B558  38 00 00 02 */	li r0, 2
/* 80B3B55C  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3B560  48 00 06 F8 */	b lbl_80B3BC58
lbl_80B3B564:
/* 80B3B564  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B3B568  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B3B56C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3B570  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3B574  38 80 00 05 */	li r4, 5
/* 80B3B578  4B 77 68 7D */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 80B3B57C  80 1C 0E 84 */	lwz r0, 0xe84(r28)
/* 80B3B580  2C 00 00 02 */	cmpwi r0, 2
/* 80B3B584  41 82 03 B4 */	beq lbl_80B3B938
/* 80B3B588  40 80 00 14 */	bge lbl_80B3B59C
/* 80B3B58C  2C 00 00 00 */	cmpwi r0, 0
/* 80B3B590  41 82 00 18 */	beq lbl_80B3B5A8
/* 80B3B594  40 80 01 6C */	bge lbl_80B3B700
/* 80B3B598  48 00 06 60 */	b lbl_80B3BBF8
lbl_80B3B59C:
/* 80B3B59C  2C 00 00 04 */	cmpwi r0, 4
/* 80B3B5A0  40 80 06 58 */	bge lbl_80B3BBF8
/* 80B3B5A4  48 00 04 64 */	b lbl_80B3BA08
lbl_80B3B5A8:
/* 80B3B5A8  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80B3B5AC  28 00 00 02 */	cmplwi r0, 2
/* 80B3B5B0  41 82 00 30 */	beq lbl_80B3B5E0
/* 80B3B5B4  7F 83 E3 78 */	mr r3, r28
/* 80B3B5B8  38 80 00 01 */	li r4, 1
/* 80B3B5BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B3B5C0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B3B5C4  38 C0 00 00 */	li r6, 0
/* 80B3B5C8  4B 4E 03 41 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3B5CC  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80B3B5D0  60 00 00 02 */	ori r0, r0, 2
/* 80B3B5D4  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80B3B5D8  38 60 00 00 */	li r3, 0
/* 80B3B5DC  48 00 06 80 */	b lbl_80B3BC5C
lbl_80B3B5E0:
/* 80B3B5E0  7F A3 EB 78 */	mr r3, r29
/* 80B3B5E4  4B 62 5E ED */	bl Stop__9dCamera_cFv
/* 80B3B5E8  7F A3 EB 78 */	mr r3, r29
/* 80B3B5EC  38 80 00 02 */	li r4, 2
/* 80B3B5F0  4B 62 7A 1D */	bl SetTrimSize__9dCamera_cFl
/* 80B3B5F4  38 61 00 98 */	addi r3, r1, 0x98
/* 80B3B5F8  7F A4 EB 78 */	mr r4, r29
/* 80B3B5FC  4B 64 68 9D */	bl Center__9dCamera_cFv
/* 80B3B600  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B3B604  D0 1C 0E 08 */	stfs f0, 0xe08(r28)
/* 80B3B608  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B3B60C  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B3B610  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80B3B614  D0 1C 0E 10 */	stfs f0, 0xe10(r28)
/* 80B3B618  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B3B61C  7F A4 EB 78 */	mr r4, r29
/* 80B3B620  4B 64 68 45 */	bl Eye__9dCamera_cFv
/* 80B3B624  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B3B628  D0 1C 0E 14 */	stfs f0, 0xe14(r28)
/* 80B3B62C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B3B630  D0 1C 0E 18 */	stfs f0, 0xe18(r28)
/* 80B3B634  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B3B638  D0 1C 0E 1C */	stfs f0, 0xe1c(r28)
/* 80B3B63C  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80B3B640  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 80B3B644  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3B648  D0 1C 0E 50 */	stfs f0, 0xe50(r28)
/* 80B3B64C  38 61 00 80 */	addi r3, r1, 0x80
/* 80B3B650  7F A4 EB 78 */	mr r4, r29
/* 80B3B654  4B 64 68 11 */	bl Eye__9dCamera_cFv
/* 80B3B658  38 61 00 74 */	addi r3, r1, 0x74
/* 80B3B65C  7F A4 EB 78 */	mr r4, r29
/* 80B3B660  4B 64 68 05 */	bl Eye__9dCamera_cFv
/* 80B3B664  38 61 00 68 */	addi r3, r1, 0x68
/* 80B3B668  7F A4 EB 78 */	mr r4, r29
/* 80B3B66C  4B 64 67 F9 */	bl Eye__9dCamera_cFv
/* 80B3B670  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80B3B674  C0 3F 06 4C */	lfs f1, 0x64c(r31)
/* 80B3B678  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B3B67C  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3B680  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B3B684  D0 1C 0E 2C */	stfs f0, 0xe2c(r28)
/* 80B3B688  D0 3C 0E 30 */	stfs f1, 0xe30(r28)
/* 80B3B68C  D0 5C 0E 34 */	stfs f2, 0xe34(r28)
/* 80B3B690  38 00 00 0D */	li r0, 0xd
/* 80B3B694  98 1E 05 6A */	stb r0, 0x56a(r30)
/* 80B3B698  7F 83 E3 78 */	mr r3, r28
/* 80B3B69C  38 80 00 03 */	li r4, 3
/* 80B3B6A0  38 A0 00 01 */	li r5, 1
/* 80B3B6A4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B3B6A8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3B6AC  7D 89 03 A6 */	mtctr r12
/* 80B3B6B0  4E 80 04 21 */	bctrl 
/* 80B3B6B4  7F 83 E3 78 */	mr r3, r28
/* 80B3B6B8  38 80 00 1A */	li r4, 0x1a
/* 80B3B6BC  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3B6C0  38 A0 00 00 */	li r5, 0
/* 80B3B6C4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B3B6C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3B6CC  7D 89 03 A6 */	mtctr r12
/* 80B3B6D0  4E 80 04 21 */	bctrl 
/* 80B3B6D4  A8 1C 0E 90 */	lha r0, 0xe90(r28)
/* 80B3B6D8  2C 00 00 00 */	cmpwi r0, 0
/* 80B3B6DC  41 82 00 0C */	beq lbl_80B3B6E8
/* 80B3B6E0  38 00 00 00 */	li r0, 0
/* 80B3B6E4  B0 1C 0E 90 */	sth r0, 0xe90(r28)
lbl_80B3B6E8:
/* 80B3B6E8  38 7C 0C 80 */	addi r3, r28, 0xc80
/* 80B3B6EC  4B 61 4F F5 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B3B6F0  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B3B6F4  38 03 00 01 */	addi r0, r3, 1
/* 80B3B6F8  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3B6FC  48 00 04 FC */	b lbl_80B3BBF8
lbl_80B3B700:
/* 80B3B700  A8 9C 09 DA */	lha r4, 0x9da(r28)
/* 80B3B704  7C 80 07 35 */	extsh. r0, r4
/* 80B3B708  40 82 00 C4 */	bne lbl_80B3B7CC
/* 80B3B70C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B3B710  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3B714  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80B3B718  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3B71C  40 82 00 B0 */	bne lbl_80B3B7CC
/* 80B3B720  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B3B724  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B3B728  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80B3B72C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B3B730  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B3B734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3B738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3B73C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B3B740  38 80 00 08 */	li r4, 8
/* 80B3B744  38 A0 00 0F */	li r5, 0xf
/* 80B3B748  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80B3B74C  4B 53 42 D9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80B3B750  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3B754  28 00 00 00 */	cmplwi r0, 0
/* 80B3B758  38 00 00 14 */	li r0, 0x14
/* 80B3B75C  40 82 00 08 */	bne lbl_80B3B764
/* 80B3B760  38 00 00 16 */	li r0, 0x16
lbl_80B3B764:
/* 80B3B764  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B3B768  80 63 00 04 */	lwz r3, 4(r3)
/* 80B3B76C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3B770  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B3B774  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B3B778  7C 63 02 14 */	add r3, r3, r0
/* 80B3B77C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B780  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B784  4B 80 AD 2D */	bl PSMTXCopy
/* 80B3B788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B78C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B790  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3B794  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B3B798  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3B79C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B3B7A0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3B7A4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B3B7A8  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80B3B7AC  38 9C 0D EC */	addi r4, r28, 0xdec
/* 80B3B7B0  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80B3B7B4  38 C0 00 00 */	li r6, 0
/* 80B3B7B8  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 80B3B7BC  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80B3B7C0  39 00 00 01 */	li r8, 1
/* 80B3B7C4  4B 4E 18 5D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B3B7C8  48 00 00 C8 */	b lbl_80B3B890
lbl_80B3B7CC:
/* 80B3B7CC  7C 80 07 35 */	extsh. r0, r4
/* 80B3B7D0  40 82 00 C0 */	bne lbl_80B3B890
/* 80B3B7D4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B3B7D8  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80B3B7DC  C8 3F 05 98 */	lfd f1, 0x598(r31)
/* 80B3B7E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B3B7E4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B3B7E8  3C 00 43 30 */	lis r0, 0x4330
/* 80B3B7EC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80B3B7F0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80B3B7F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B3B7F8  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80B3B7FC  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80B3B800  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3B804  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B3B808  40 81 00 88 */	ble lbl_80B3B890
/* 80B3B80C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B3B810  4B 4D 15 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3B814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B81C  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B3B820  4B 4D 0C 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3B824  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3B828  28 00 00 00 */	cmplwi r0, 0
/* 80B3B82C  40 82 00 20 */	bne lbl_80B3B84C
/* 80B3B830  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3B834  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B3B838  C0 1F 06 54 */	lfs f0, 0x654(r31)
/* 80B3B83C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B3B840  C0 1F 06 58 */	lfs f0, 0x658(r31)
/* 80B3B844  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80B3B848  48 00 00 1C */	b lbl_80B3B864
lbl_80B3B84C:
/* 80B3B84C  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3B850  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B3B854  C0 1F 06 5C */	lfs f0, 0x65c(r31)
/* 80B3B858  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B3B85C  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 80B3B860  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80B3B864:
/* 80B3B864  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B868  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B86C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B3B870  7C 85 23 78 */	mr r5, r4
/* 80B3B874  4B 80 B4 F9 */	bl PSMTXMultVec
/* 80B3B878  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B3B87C  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80B3B880  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B3B884  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80B3B888  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B3B88C  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
lbl_80B3B890:
/* 80B3B890  80 7C 0E 80 */	lwz r3, 0xe80(r28)
/* 80B3B894  38 03 FF FF */	addi r0, r3, -1
/* 80B3B898  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3B89C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3B8A0  41 81 03 58 */	bgt lbl_80B3BBF8
/* 80B3B8A4  38 61 00 50 */	addi r3, r1, 0x50
/* 80B3B8A8  7F 84 E3 78 */	mr r4, r28
/* 80B3B8AC  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3B8B0  28 00 00 00 */	cmplwi r0, 0
/* 80B3B8B4  38 A0 00 02 */	li r5, 2
/* 80B3B8B8  4B FF A0 39 */	bl getJointPos__15daNpcWrestler_cFi
/* 80B3B8BC  38 7C 0E 08 */	addi r3, r28, 0xe08
/* 80B3B8C0  38 81 00 50 */	addi r4, r1, 0x50
/* 80B3B8C4  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80B3B8C8  C0 5F 05 AC */	lfs f2, 0x5ac(r31)
/* 80B3B8CC  C0 7F 01 B4 */	lfs f3, 0x1b4(r31)
/* 80B3B8D0  4B 73 41 E9 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3B8D4  FF C0 08 90 */	fmr f30, f1
/* 80B3B8D8  38 7C 0E 18 */	addi r3, r28, 0xe18
/* 80B3B8DC  C0 3C 0E 30 */	lfs f1, 0xe30(r28)
/* 80B3B8E0  C0 5F 06 64 */	lfs f2, 0x664(r31)
/* 80B3B8E4  C0 7F 05 AC */	lfs f3, 0x5ac(r31)
/* 80B3B8E8  C0 9F 01 B4 */	lfs f4, 0x1b4(r31)
/* 80B3B8EC  4B 73 40 91 */	bl cLib_addCalc__FPfffff
/* 80B3B8F0  FF E0 08 90 */	fmr f31, f1
/* 80B3B8F4  38 7C 0E 50 */	addi r3, r28, 0xe50
/* 80B3B8F8  C0 3F 06 68 */	lfs f1, 0x668(r31)
/* 80B3B8FC  C0 5F 06 6C */	lfs f2, 0x66c(r31)
/* 80B3B900  C0 7F 06 48 */	lfs f3, 0x648(r31)
/* 80B3B904  C0 9F 06 70 */	lfs f4, 0x670(r31)
/* 80B3B908  4B 73 40 75 */	bl cLib_addCalc__FPfffff
/* 80B3B90C  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3B910  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80B3B914  40 82 02 E4 */	bne lbl_80B3BBF8
/* 80B3B918  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80B3B91C  40 82 02 DC */	bne lbl_80B3BBF8
/* 80B3B920  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3B924  40 82 02 D4 */	bne lbl_80B3BBF8
/* 80B3B928  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B3B92C  38 03 00 01 */	addi r0, r3, 1
/* 80B3B930  90 1C 0E 84 */	stw r0, 0xe84(r28)
/* 80B3B934  48 00 02 C4 */	b lbl_80B3BBF8
lbl_80B3B938:
/* 80B3B938  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3B93C  D0 1C 0E 14 */	stfs f0, 0xe14(r28)
/* 80B3B940  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 80B3B944  D0 1C 0E 18 */	stfs f0, 0xe18(r28)
/* 80B3B948  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80B3B94C  D0 1C 0E 1C */	stfs f0, 0xe1c(r28)
/* 80B3B950  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B3B954  4B 4D 14 11 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3B958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B960  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80B3B964  4B 4D 0A D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3B968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B96C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B970  38 9C 0E 14 */	addi r4, r28, 0xe14
/* 80B3B974  7C 85 23 78 */	mr r5, r4
/* 80B3B978  4B 80 B3 F5 */	bl PSMTXMultVec
/* 80B3B97C  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 80B3B980  D0 1C 0E 08 */	stfs f0, 0xe08(r28)
/* 80B3B984  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80B3B988  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B3B98C  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80B3B990  D0 1C 0E 10 */	stfs f0, 0xe10(r28)
/* 80B3B994  C0 3C 0E 0C */	lfs f1, 0xe0c(r28)
/* 80B3B998  C0 1F 06 68 */	lfs f0, 0x668(r31)
/* 80B3B99C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3B9A0  D0 1C 0E 0C */	stfs f0, 0xe0c(r28)
/* 80B3B9A4  C0 5C 0E 10 */	lfs f2, 0xe10(r28)
/* 80B3B9A8  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80B3B9AC  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B3B9B0  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3B9B4  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B3B9B8  D0 1C 0E 20 */	stfs f0, 0xe20(r28)
/* 80B3B9BC  D0 3C 0E 24 */	stfs f1, 0xe24(r28)
/* 80B3B9C0  D0 5C 0E 28 */	stfs f2, 0xe28(r28)
/* 80B3B9C4  C0 1F 05 E0 */	lfs f0, 0x5e0(r31)
/* 80B3B9C8  D0 1C 0E 50 */	stfs f0, 0xe50(r28)
/* 80B3B9CC  38 00 00 03 */	li r0, 3
/* 80B3B9D0  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 80B3B9D4  38 60 00 00 */	li r3, 0
/* 80B3B9D8  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 80B3B9DC  38 00 00 31 */	li r0, 0x31
/* 80B3B9E0  90 1E 06 14 */	stw r0, 0x614(r30)
/* 80B3B9E4  38 00 00 01 */	li r0, 1
/* 80B3B9E8  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80B3B9EC  90 7E 06 10 */	stw r3, 0x610(r30)
/* 80B3B9F0  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80B3B9F4  38 00 00 14 */	li r0, 0x14
/* 80B3B9F8  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3B9FC  80 7C 0E 84 */	lwz r3, 0xe84(r28)
/* 80B3BA00  38 03 00 01 */	addi r0, r3, 1
/* 80B3BA04  90 1C 0E 84 */	stw r0, 0xe84(r28)
lbl_80B3BA08:
/* 80B3BA08  38 7C 0E 0C */	addi r3, r28, 0xe0c
/* 80B3BA0C  C0 3C 0E 24 */	lfs f1, 0xe24(r28)
/* 80B3BA10  C0 5F 06 44 */	lfs f2, 0x644(r31)
/* 80B3BA14  C0 7F 06 48 */	lfs f3, 0x648(r31)
/* 80B3BA18  C0 9F 06 40 */	lfs f4, 0x640(r31)
/* 80B3BA1C  4B 73 3F 61 */	bl cLib_addCalc__FPfffff
/* 80B3BA20  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B3BA24  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3BA28  40 82 01 D0 */	bne lbl_80B3BBF8
/* 80B3BA2C  80 7C 0E 80 */	lwz r3, 0xe80(r28)
/* 80B3BA30  38 03 FF FF */	addi r0, r3, -1
/* 80B3BA34  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80B3BA38  2C 03 00 00 */	cmpwi r3, 0
/* 80B3BA3C  41 81 01 BC */	bgt lbl_80B3BBF8
/* 80B3BA40  38 00 00 01 */	li r0, 1
/* 80B3BA44  90 1E 06 14 */	stw r0, 0x614(r30)
/* 80B3BA48  38 00 00 00 */	li r0, 0
/* 80B3BA4C  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80B3BA50  90 1E 06 10 */	stw r0, 0x610(r30)
/* 80B3BA54  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B3BA58  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B3BA5C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B3BA60  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B3BA64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B3BA68  C0 1C 0E 10 */	lfs f0, 0xe10(r28)
/* 80B3BA6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B3BA70  C0 1C 0E 14 */	lfs f0, 0xe14(r28)
/* 80B3BA74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B3BA78  C0 1C 0E 18 */	lfs f0, 0xe18(r28)
/* 80B3BA7C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3BA80  C0 1C 0E 1C */	lfs f0, 0xe1c(r28)
/* 80B3BA84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B3BA88  7F A3 EB 78 */	mr r3, r29
/* 80B3BA8C  38 81 00 44 */	addi r4, r1, 0x44
/* 80B3BA90  38 A1 00 38 */	addi r5, r1, 0x38
/* 80B3BA94  4B 64 51 85 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80B3BA98  7F A3 EB 78 */	mr r3, r29
/* 80B3BA9C  4B 62 5A 11 */	bl Start__9dCamera_cFv
/* 80B3BAA0  7F A3 EB 78 */	mr r3, r29
/* 80B3BAA4  38 80 00 00 */	li r4, 0
/* 80B3BAA8  4B 62 75 65 */	bl SetTrimSize__9dCamera_cFl
/* 80B3BAAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3BAB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3BAB4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3BAB8  4B 50 69 B1 */	bl reset__14dEvt_control_cFv
/* 80B3BABC  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B3BAC0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3BAC4  D0 1C 0E 8C */	stfs f0, 0xe8c(r28)
/* 80B3BAC8  88 1C 0E 9B */	lbz r0, 0xe9b(r28)
/* 80B3BACC  28 00 00 00 */	cmplwi r0, 0
/* 80B3BAD0  40 82 00 98 */	bne lbl_80B3BB68
/* 80B3BAD4  3C 60 80 B4 */	lis r3, lit_9429@ha /* 0x80B42C24@ha */
/* 80B3BAD8  38 83 2C 24 */	addi r4, r3, lit_9429@l /* 0x80B42C24@l */
/* 80B3BADC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3BAE0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3BAE4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B3BAE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B3BAEC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3BAF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B3BAF4  38 00 00 03 */	li r0, 3
/* 80B3BAF8  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3BAFC  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3BB00  4B 82 65 19 */	bl __ptmf_test
/* 80B3BB04  2C 03 00 00 */	cmpwi r3, 0
/* 80B3BB08  41 82 00 18 */	beq lbl_80B3BB20
/* 80B3BB0C  7F 83 E3 78 */	mr r3, r28
/* 80B3BB10  38 80 00 00 */	li r4, 0
/* 80B3BB14  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3BB18  4B 82 65 6D */	bl __ptmf_scall
/* 80B3BB1C  60 00 00 00 */	nop 
lbl_80B3BB20:
/* 80B3BB20  38 00 00 00 */	li r0, 0
/* 80B3BB24  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3BB28  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B3BB2C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B3BB30  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B3BB34  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B3BB38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B3BB3C  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3BB40  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3BB44  4B 82 64 D5 */	bl __ptmf_test
/* 80B3BB48  2C 03 00 00 */	cmpwi r3, 0
/* 80B3BB4C  41 82 00 AC */	beq lbl_80B3BBF8
/* 80B3BB50  7F 83 E3 78 */	mr r3, r28
/* 80B3BB54  38 80 00 00 */	li r4, 0
/* 80B3BB58  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3BB5C  4B 82 65 29 */	bl __ptmf_scall
/* 80B3BB60  60 00 00 00 */	nop 
/* 80B3BB64  48 00 00 94 */	b lbl_80B3BBF8
lbl_80B3BB68:
/* 80B3BB68  3C 60 80 B4 */	lis r3, lit_9432@ha /* 0x80B42C30@ha */
/* 80B3BB6C  38 83 2C 30 */	addi r4, r3, lit_9432@l /* 0x80B42C30@l */
/* 80B3BB70  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3BB74  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3BB78  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B3BB7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3BB80  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3BB84  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3BB88  38 00 00 03 */	li r0, 3
/* 80B3BB8C  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3BB90  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3BB94  4B 82 64 85 */	bl __ptmf_test
/* 80B3BB98  2C 03 00 00 */	cmpwi r3, 0
/* 80B3BB9C  41 82 00 18 */	beq lbl_80B3BBB4
/* 80B3BBA0  7F 83 E3 78 */	mr r3, r28
/* 80B3BBA4  38 80 00 00 */	li r4, 0
/* 80B3BBA8  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3BBAC  4B 82 64 D9 */	bl __ptmf_scall
/* 80B3BBB0  60 00 00 00 */	nop 
lbl_80B3BBB4:
/* 80B3BBB4  38 00 00 00 */	li r0, 0
/* 80B3BBB8  B0 1C 0E 96 */	sth r0, 0xe96(r28)
/* 80B3BBBC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B3BBC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3BBC4  90 7C 0D CC */	stw r3, 0xdcc(r28)
/* 80B3BBC8  90 1C 0D D0 */	stw r0, 0xdd0(r28)
/* 80B3BBCC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B3BBD0  90 1C 0D D4 */	stw r0, 0xdd4(r28)
/* 80B3BBD4  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80B3BBD8  4B 82 64 41 */	bl __ptmf_test
/* 80B3BBDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3BBE0  41 82 00 18 */	beq lbl_80B3BBF8
/* 80B3BBE4  7F 83 E3 78 */	mr r3, r28
/* 80B3BBE8  38 80 00 00 */	li r4, 0
/* 80B3BBEC  39 9C 0D CC */	addi r12, r28, 0xdcc
/* 80B3BBF0  4B 82 64 95 */	bl __ptmf_scall
/* 80B3BBF4  60 00 00 00 */	nop 
lbl_80B3BBF8:
/* 80B3BBF8  80 1C 0E 84 */	lwz r0, 0xe84(r28)
/* 80B3BBFC  2C 00 00 00 */	cmpwi r0, 0
/* 80B3BC00  40 81 00 58 */	ble lbl_80B3BC58
/* 80B3BC04  C0 1C 0E 08 */	lfs f0, 0xe08(r28)
/* 80B3BC08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B3BC0C  C0 1C 0E 0C */	lfs f0, 0xe0c(r28)
/* 80B3BC10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3BC14  C0 1C 0E 10 */	lfs f0, 0xe10(r28)
/* 80B3BC18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B3BC1C  C0 1C 0E 14 */	lfs f0, 0xe14(r28)
/* 80B3BC20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3BC24  C0 1C 0E 18 */	lfs f0, 0xe18(r28)
/* 80B3BC28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3BC2C  C0 1C 0E 1C */	lfs f0, 0xe1c(r28)
/* 80B3BC30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3BC34  7F A3 EB 78 */	mr r3, r29
/* 80B3BC38  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3BC3C  38 A1 00 08 */	addi r5, r1, 8
/* 80B3BC40  C0 3C 0E 50 */	lfs f1, 0xe50(r28)
/* 80B3BC44  38 C0 00 00 */	li r6, 0
/* 80B3BC48  4B 64 4E 99 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3BC4C  48 00 00 0C */	b lbl_80B3BC58
lbl_80B3BC50:
/* 80B3BC50  38 00 00 01 */	li r0, 1
/* 80B3BC54  98 1C 0E 99 */	stb r0, 0xe99(r28)
lbl_80B3BC58:
/* 80B3BC58  38 60 00 01 */	li r3, 1
lbl_80B3BC5C:
/* 80B3BC5C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80B3BC60  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80B3BC64  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80B3BC68  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80B3BC6C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80B3BC70  4B 82 65 B5 */	bl _restgpr_28
/* 80B3BC74  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B3BC78  7C 08 03 A6 */	mtlr r0
/* 80B3BC7C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B3BC80  4E 80 00 20 */	blr 
