lbl_80A766DC:
/* 80A766DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A766E0  7C 08 02 A6 */	mflr r0
/* 80A766E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A766E8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80A766EC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80A766F0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80A766F4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80A766F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A766FC  4B 8E BA DC */	b _savegpr_28
/* 80A76700  7C 7D 1B 78 */	mr r29, r3
/* 80A76704  7C 9E 23 78 */	mr r30, r4
/* 80A76708  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha
/* 80A7670C  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l
/* 80A76710  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A76714  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A76718  4B 6C F1 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7671C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A76720  38 00 00 2B */	li r0, 0x2b
/* 80A76724  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A76728  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A7672C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A76730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A76734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A76738  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80A7673C  38 80 13 08 */	li r4, 0x1308
/* 80A76740  4B 5B E2 7C */	b isEventBit__11dSv_event_cCFUs
/* 80A76744  2C 03 00 00 */	cmpwi r3, 0
/* 80A76748  41 82 00 30 */	beq lbl_80A76778
/* 80A7674C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E5@ha */
/* 80A76750  38 03 01 E5 */	addi r0, r3, 0x01E5 /* 0x000501E5@l */
/* 80A76754  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A76758  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A7675C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A76760  38 A0 FF FF */	li r5, -1
/* 80A76764  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80A76768  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A7676C  7D 89 03 A6 */	mtctr r12
/* 80A76770  4E 80 04 21 */	bctrl 
/* 80A76774  48 00 00 2C */	b lbl_80A767A0
lbl_80A76778:
/* 80A76778  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500DB@ha */
/* 80A7677C  38 03 00 DB */	addi r0, r3, 0x00DB /* 0x000500DB@l */
/* 80A76780  90 01 00 08 */	stw r0, 8(r1)
/* 80A76784  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A76788  38 81 00 08 */	addi r4, r1, 8
/* 80A7678C  38 A0 FF FF */	li r5, -1
/* 80A76790  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80A76794  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A76798  7D 89 03 A6 */	mtctr r12
/* 80A7679C  4E 80 04 21 */	bctrl 
lbl_80A767A0:
/* 80A767A0  7F A3 EB 78 */	mr r3, r29
/* 80A767A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A767A8  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A767AC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A767B0  4B 5A 3F 60 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A767B4  B0 7D 16 64 */	sth r3, 0x1664(r29)
/* 80A767B8  C0 3F 01 94 */	lfs f1, 0x194(r31)
/* 80A767BC  38 7F 00 00 */	addi r3, r31, 0
/* 80A767C0  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 80A767C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A767C8  FC 00 00 1E */	fctiwz f0, f0
/* 80A767CC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A767D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A767D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A767D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A767DC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A767E0  7F E3 04 2E */	lfsx f31, r3, r0
/* 80A767E4  7C 63 02 14 */	add r3, r3, r0
/* 80A767E8  C3 C3 00 04 */	lfs f30, 4(r3)
/* 80A767EC  7F A3 EB 78 */	mr r3, r29
/* 80A767F0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A767F4  4B 5A 3F 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A767F8  7C 64 1B 78 */	mr r4, r3
/* 80A767FC  38 7F 00 00 */	addi r3, r31, 0
/* 80A76800  C0 03 00 B4 */	lfs f0, 0xb4(r3)
/* 80A76804  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A76808  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80A7680C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 80A76810  38 A0 00 01 */	li r5, 1
/* 80A76814  38 C0 00 00 */	li r6, 0
/* 80A76818  38 E0 00 00 */	li r7, 0
/* 80A7681C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A76820  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80A76824  7D 89 03 A6 */	mtctr r12
/* 80A76828  4E 80 04 21 */	bctrl 
/* 80A7682C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A76830  41 82 00 14 */	beq lbl_80A76844
/* 80A76834  38 00 00 01 */	li r0, 1
/* 80A76838  90 1D 16 60 */	stw r0, 0x1660(r29)
/* 80A7683C  38 00 00 CA */	li r0, 0xca
/* 80A76840  90 1D 16 5C */	stw r0, 0x165c(r29)
lbl_80A76844:
/* 80A76844  38 00 00 00 */	li r0, 0
/* 80A76848  90 1D 16 58 */	stw r0, 0x1658(r29)
/* 80A7684C  38 00 00 01 */	li r0, 1
/* 80A76850  98 1D 16 6B */	stb r0, 0x166b(r29)
/* 80A76854  98 1D 16 6C */	stb r0, 0x166c(r29)
/* 80A76858  38 60 00 47 */	li r3, 0x47
/* 80A7685C  4B 6D 62 90 */	b daNpcT_onTmpBit__FUl
/* 80A76860  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80A76864  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80A76868  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80A7686C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80A76870  39 61 00 30 */	addi r11, r1, 0x30
/* 80A76874  4B 8E B9 B0 */	b _restgpr_28
/* 80A76878  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A7687C  7C 08 03 A6 */	mtlr r0
/* 80A76880  38 21 00 50 */	addi r1, r1, 0x50
/* 80A76884  4E 80 00 20 */	blr 
