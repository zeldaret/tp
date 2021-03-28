lbl_80182260:
/* 80182260  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80182264  7C 08 02 A6 */	mflr r0
/* 80182268  90 01 00 94 */	stw r0, 0x94(r1)
/* 8018226C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80182270  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80182274  39 61 00 80 */	addi r11, r1, 0x80
/* 80182278  48 1D FF 61 */	bl _savegpr_28
/* 8018227C  7C 7F 1B 78 */	mr r31, r3
/* 80182280  3B DF 02 48 */	addi r30, r31, 0x248
/* 80182284  4B E9 C0 85 */	bl fopCamM_GetParam__FP12camera_class
/* 80182288  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 8018228C  38 03 00 01 */	addi r0, r3, 1
/* 80182290  90 1F 02 38 */	stw r0, 0x238(r31)
/* 80182294  7F E3 FB 78 */	mr r3, r31
/* 80182298  4B E9 C0 71 */	bl fopCamM_GetParam__FP12camera_class
/* 8018229C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801822A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801822A4  1C 03 00 38 */	mulli r0, r3, 0x38
/* 801822A8  7C 64 02 14 */	add r3, r4, r0
/* 801822AC  88 03 5D 79 */	lbz r0, 0x5d79(r3)
/* 801822B0  7C 00 07 74 */	extsb r0, r0
/* 801822B4  54 00 18 38 */	slwi r0, r0, 3
/* 801822B8  7C 64 02 14 */	add r3, r4, r0
/* 801822BC  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 801822C0  7C 1C 03 78 */	mr r28, r0
/* 801822C4  28 00 00 00 */	cmplwi r0, 0
/* 801822C8  40 82 00 0C */	bne lbl_801822D4
/* 801822CC  38 60 00 00 */	li r3, 0
/* 801822D0  48 00 01 64 */	b lbl_80182434
lbl_801822D4:
/* 801822D4  38 61 00 14 */	addi r3, r1, 0x14
/* 801822D8  4B EF 52 A5 */	bl __ct__11dBgS_GndChkFv
/* 801822DC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 801822E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 801822E4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 801822E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801822EC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 801822F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801822F4  C0 02 9D 88 */	lfs f0, lit_10557(r2)
/* 801822F8  EC 01 00 2A */	fadds f0, f1, f0
/* 801822FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80182300  38 61 00 14 */	addi r3, r1, 0x14
/* 80182304  38 81 00 08 */	addi r4, r1, 8
/* 80182308  48 0E 5A 21 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8018230C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80182310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80182314  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80182318  7F A3 EB 78 */	mr r3, r29
/* 8018231C  38 81 00 14 */	addi r4, r1, 0x14
/* 80182320  4B EF 21 81 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80182324  C0 02 9C AC */	lfs f0, lit_5659(r2)
/* 80182328  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8018232C  40 82 00 18 */	bne lbl_80182344
/* 80182330  38 61 00 14 */	addi r3, r1, 0x14
/* 80182334  38 80 FF FF */	li r4, -1
/* 80182338  4B EF 52 B9 */	bl __dt__11dBgS_GndChkFv
/* 8018233C  38 60 00 00 */	li r3, 0
/* 80182340  48 00 00 F4 */	b lbl_80182434
lbl_80182344:
/* 80182344  7F 83 E3 78 */	mr r3, r28
/* 80182348  4B E9 75 7D */	bl fopAcM_setStageLayer__FPv
/* 8018234C  38 00 00 01 */	li r0, 1
/* 80182350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80182354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80182358  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 8018235C  28 1E 00 00 */	cmplwi r30, 0
/* 80182360  41 82 00 10 */	beq lbl_80182370
/* 80182364  7F C3 F3 78 */	mr r3, r30
/* 80182368  7F E4 FB 78 */	mr r4, r31
/* 8018236C  4B FD DD 21 */	bl __ct__9dCamera_cFP12camera_class
lbl_80182370:
/* 80182370  C3 E2 9F 20 */	lfs f31, lit_17948(r2)
/* 80182374  3B DD 3E E8 */	addi r30, r29, 0x3ee8
/* 80182378  7F C3 F3 78 */	mr r3, r30
/* 8018237C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80182380  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80182384  7D 89 03 A6 */	mtctr r12
/* 80182388  4E 80 04 21 */	bctrl 
/* 8018238C  28 03 00 00 */	cmplwi r3, 0
/* 80182390  41 82 00 30 */	beq lbl_801823C0
/* 80182394  7F C3 F3 78 */	mr r3, r30
/* 80182398  81 9E 00 00 */	lwz r12, 0(r30)
/* 8018239C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801823A0  7D 89 03 A6 */	mtctr r12
/* 801823A4  4E 80 04 21 */	bctrl 
/* 801823A8  7F C3 F3 78 */	mr r3, r30
/* 801823AC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801823B0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801823B4  7D 89 03 A6 */	mtctr r12
/* 801823B8  4E 80 04 21 */	bctrl 
/* 801823BC  C3 E3 00 04 */	lfs f31, 4(r3)
lbl_801823C0:
/* 801823C0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801823C4  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 801823C8  D3 FF 00 CC */	stfs f31, 0xcc(r31)
/* 801823CC  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 801823D0  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 801823D4  C0 02 9F 1C */	lfs f0, lit_17525(r2)
/* 801823D8  D0 1F 00 D4 */	stfs f0, 0xd4(r31)
/* 801823DC  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 801823E0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 801823E4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 801823E8  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 801823EC  D0 3F 00 E8 */	stfs f1, 0xe8(r31)
/* 801823F0  D0 5F 00 EC */	stfs f2, 0xec(r31)
/* 801823F4  38 00 00 00 */	li r0, 0
/* 801823F8  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 801823FC  7F E3 FB 78 */	mr r3, r31
/* 80182400  4B FF F4 05 */	bl store__FP20camera_process_class
/* 80182404  7F E3 FB 78 */	mr r3, r31
/* 80182408  4B FF F3 01 */	bl view_setup__FP20camera_process_class
/* 8018240C  38 00 00 01 */	li r0, 1
/* 80182410  98 1F 0D 54 */	stb r0, 0xd54(r31)
/* 80182414  38 00 00 00 */	li r0, 0
/* 80182418  90 1F 02 38 */	stw r0, 0x238(r31)
/* 8018241C  93 9D 47 80 */	stw r28, 0x4780(r29)
/* 80182420  90 1D 47 8C */	stw r0, 0x478c(r29)
/* 80182424  38 61 00 14 */	addi r3, r1, 0x14
/* 80182428  38 80 FF FF */	li r4, -1
/* 8018242C  4B EF 51 C5 */	bl __dt__11dBgS_GndChkFv
/* 80182430  38 60 00 02 */	li r3, 2
lbl_80182434:
/* 80182434  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80182438  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8018243C  39 61 00 80 */	addi r11, r1, 0x80
/* 80182440  48 1D FD E5 */	bl _restgpr_28
/* 80182444  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80182448  7C 08 03 A6 */	mtlr r0
/* 8018244C  38 21 00 90 */	addi r1, r1, 0x90
/* 80182450  4E 80 00 20 */	blr 
