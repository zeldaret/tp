lbl_80B872F0:
/* 80B872F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B872F4  7C 08 02 A6 */	mflr r0
/* 80B872F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B872FC  39 61 00 50 */	addi r11, r1, 0x50
/* 80B87300  4B 7D AE D0 */	b _savegpr_26
/* 80B87304  7C 7D 1B 78 */	mr r29, r3
/* 80B87308  7C 9A 23 78 */	mr r26, r4
/* 80B8730C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B87310  3B 83 C4 58 */	addi r28, r3, m__17daNpc_zrA_Param_c@l
/* 80B87314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B87318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8731C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B87320  3B E0 00 00 */	li r31, 0
/* 80B87324  3B C0 FF FF */	li r30, -1
/* 80B87328  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B8732C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B87330  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B87334  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B87338  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B8733C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B87340  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B87344  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80B87348  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B8734C  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80B87350  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B87354  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80B87358  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B8735C  7F 63 DB 78 */	mr r3, r27
/* 80B87360  3C A0 80 B9 */	lis r5, struct_80B8CD30+0x0@ha
/* 80B87364  38 A5 CD 30 */	addi r5, r5, struct_80B8CD30+0x0@l
/* 80B87368  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B8736C  38 C0 00 03 */	li r6, 3
/* 80B87370  4B 4C 0D 7C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B87374  28 03 00 00 */	cmplwi r3, 0
/* 80B87378  41 82 00 08 */	beq lbl_80B87380
/* 80B8737C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B87380:
/* 80B87380  7F 63 DB 78 */	mr r3, r27
/* 80B87384  7F 44 D3 78 */	mr r4, r26
/* 80B87388  4B 4C 09 C4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B8738C  2C 03 00 00 */	cmpwi r3, 0
/* 80B87390  41 82 00 C8 */	beq lbl_80B87458
/* 80B87394  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80B87398  41 82 00 B0 */	beq lbl_80B87448
/* 80B8739C  40 80 00 BC */	bge lbl_80B87458
/* 80B873A0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B873A4  41 82 00 08 */	beq lbl_80B873AC
/* 80B873A8  48 00 00 B0 */	b lbl_80B87458
lbl_80B873AC:
/* 80B873AC  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80B873B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B873B4  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80B873B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B873BC  C0 1C 08 78 */	lfs f0, 0x878(r28)
/* 80B873C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B873C4  7F A3 EB 78 */	mr r3, r29
/* 80B873C8  38 80 00 00 */	li r4, 0
/* 80B873CC  4B FF 73 29 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B873D0  38 00 00 00 */	li r0, 0
/* 80B873D4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B873D8  7F A3 EB 78 */	mr r3, r29
/* 80B873DC  4B FF AE F1 */	bl calcWaistAngleStop__11daNpc_zrA_cFv
/* 80B873E0  38 00 00 01 */	li r0, 1
/* 80B873E4  98 1D 15 50 */	stb r0, 0x1550(r29)
/* 80B873E8  C0 1C 00 B0 */	lfs f0, 0xb0(r28)
/* 80B873EC  D0 1D 15 24 */	stfs f0, 0x1524(r29)
/* 80B873F0  98 1D 15 91 */	stb r0, 0x1591(r29)
/* 80B873F4  C0 1C 08 00 */	lfs f0, 0x800(r28)
/* 80B873F8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B873FC  C0 1C 08 04 */	lfs f0, 0x804(r28)
/* 80B87400  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B87404  C0 1C 08 08 */	lfs f0, 0x808(r28)
/* 80B87408  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B8740C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B87410  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80B87414  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B87418  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80B8741C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B87420  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80B87424  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B87428  38 81 00 08 */	addi r4, r1, 8
/* 80B8742C  4B 6E 97 D8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B87430  7C 64 1B 78 */	mr r4, r3
/* 80B87434  7F A3 EB 78 */	mr r3, r29
/* 80B87438  4B 5C CE 18 */	b setAngle__8daNpcF_cFs
/* 80B8743C  38 00 00 02 */	li r0, 2
/* 80B87440  98 1D 15 C0 */	stb r0, 0x15c0(r29)
/* 80B87444  48 00 00 14 */	b lbl_80B87458
lbl_80B87448:
/* 80B87448  7F A3 EB 78 */	mr r3, r29
/* 80B8744C  80 9D 14 E0 */	lwz r4, 0x14e0(r29)
/* 80B87450  38 A0 00 00 */	li r5, 0
/* 80B87454  4B 5C C8 C8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80B87458:
/* 80B87458  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80B8745C  41 82 00 14 */	beq lbl_80B87470
/* 80B87460  40 80 00 90 */	bge lbl_80B874F0
/* 80B87464  2C 1E 00 00 */	cmpwi r30, 0
/* 80B87468  41 82 00 08 */	beq lbl_80B87470
/* 80B8746C  48 00 00 84 */	b lbl_80B874F0
lbl_80B87470:
/* 80B87470  7F A3 EB 78 */	mr r3, r29
/* 80B87474  38 80 00 01 */	li r4, 1
/* 80B87478  4B FF B1 85 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B8747C  3C 60 80 B8 */	lis r3, s_sub__FPvPv@ha
/* 80B87480  38 63 42 4C */	addi r3, r3, s_sub__FPvPv@l
/* 80B87484  7F A4 EB 78 */	mr r4, r29
/* 80B87488  4B 49 9E B0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B8748C  28 03 00 00 */	cmplwi r3, 0
/* 80B87490  41 82 00 2C */	beq lbl_80B874BC
/* 80B87494  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B87498  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B8749C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B874A0  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B874A4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B874A8  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B874AC  38 00 CA 18 */	li r0, -13800
/* 80B874B0  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80B874B4  38 00 00 01 */	li r0, 1
/* 80B874B8  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80B874BC:
/* 80B874BC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B874C0  40 82 00 0C */	bne lbl_80B874CC
/* 80B874C4  3B E0 00 01 */	li r31, 1
/* 80B874C8  48 00 00 2C */	b lbl_80B874F4
lbl_80B874CC:
/* 80B874CC  7F A3 EB 78 */	mr r3, r29
/* 80B874D0  38 80 00 00 */	li r4, 0
/* 80B874D4  38 A0 00 01 */	li r5, 1
/* 80B874D8  38 C0 00 00 */	li r6, 0
/* 80B874DC  4B 5C C8 A8 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B874E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B874E4  41 82 00 10 */	beq lbl_80B874F4
/* 80B874E8  3B E0 00 01 */	li r31, 1
/* 80B874EC  48 00 00 08 */	b lbl_80B874F4
lbl_80B874F0:
/* 80B874F0  3B E0 00 01 */	li r31, 1
lbl_80B874F4:
/* 80B874F4  7F E3 FB 78 */	mr r3, r31
/* 80B874F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B874FC  4B 7D AD 20 */	b _restgpr_26
/* 80B87500  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B87504  7C 08 03 A6 */	mtlr r0
/* 80B87508  38 21 00 50 */	addi r1, r1, 0x50
/* 80B8750C  4E 80 00 20 */	blr 
