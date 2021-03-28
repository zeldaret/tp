lbl_809DA980:
/* 809DA980  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809DA984  7C 08 02 A6 */	mflr r0
/* 809DA988  90 01 00 44 */	stw r0, 0x44(r1)
/* 809DA98C  39 61 00 40 */	addi r11, r1, 0x40
/* 809DA990  4B 98 78 38 */	b _savegpr_24
/* 809DA994  7C 7E 1B 78 */	mr r30, r3
/* 809DA998  3C 80 80 9E */	lis r4, m__17daNpc_grO_Param_c@ha
/* 809DA99C  3B E4 EF 7C */	addi r31, r4, m__17daNpc_grO_Param_c@l
/* 809DA9A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809DA9A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809DA9A8  40 82 00 1C */	bne lbl_809DA9C4
/* 809DA9AC  28 1E 00 00 */	cmplwi r30, 0
/* 809DA9B0  41 82 00 08 */	beq lbl_809DA9B8
/* 809DA9B4  4B FF FB B9 */	bl __ct__11daNpc_grO_cFv
lbl_809DA9B8:
/* 809DA9B8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809DA9BC  60 00 00 08 */	ori r0, r0, 8
/* 809DA9C0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809DA9C4:
/* 809DA9C4  7F C3 F3 78 */	mr r3, r30
/* 809DA9C8  48 00 1A 15 */	bl getTypeFromParam__11daNpc_grO_cFv
/* 809DA9CC  98 7E 0E 24 */	stb r3, 0xe24(r30)
/* 809DA9D0  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809DA9D4  3C 03 00 00 */	addis r0, r3, 0
/* 809DA9D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 809DA9DC  41 82 00 0C */	beq lbl_809DA9E8
/* 809DA9E0  90 7E 0E 1C */	stw r3, 0xe1c(r30)
/* 809DA9E4  48 00 00 0C */	b lbl_809DA9F0
lbl_809DA9E8:
/* 809DA9E8  38 00 FF FF */	li r0, -1
/* 809DA9EC  90 1E 0E 1C */	stw r0, 0xe1c(r30)
lbl_809DA9F0:
/* 809DA9F0  7F C3 F3 78 */	mr r3, r30
/* 809DA9F4  48 00 1A 49 */	bl isDelete__11daNpc_grO_cFv
/* 809DA9F8  2C 03 00 00 */	cmpwi r3, 0
/* 809DA9FC  41 82 00 0C */	beq lbl_809DAA08
/* 809DAA00  38 60 00 05 */	li r3, 5
/* 809DAA04  48 00 02 3C */	b lbl_809DAC40
lbl_809DAA08:
/* 809DAA08  3B 20 00 00 */	li r25, 0
/* 809DAA0C  3B 00 00 00 */	li r24, 0
/* 809DAA10  3B A0 00 00 */	li r29, 0
/* 809DAA14  3B 80 00 00 */	li r28, 0
/* 809DAA18  3C 60 80 9E */	lis r3, l_resNames@ha
/* 809DAA1C  3B 43 F4 A4 */	addi r26, r3, l_resNames@l
/* 809DAA20  3C 60 80 9E */	lis r3, l_loadRes_list@ha
/* 809DAA24  3B 63 F4 84 */	addi r27, r3, l_loadRes_list@l
/* 809DAA28  48 00 00 48 */	b lbl_809DAA70
lbl_809DAA2C:
/* 809DAA2C  38 7C 0D EC */	addi r3, r28, 0xdec
/* 809DAA30  7C 7E 1A 14 */	add r3, r30, r3
/* 809DAA34  54 00 10 3A */	slwi r0, r0, 2
/* 809DAA38  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809DAA3C  4B 65 24 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809DAA40  2C 03 00 05 */	cmpwi r3, 5
/* 809DAA44  41 82 00 0C */	beq lbl_809DAA50
/* 809DAA48  2C 03 00 03 */	cmpwi r3, 3
/* 809DAA4C  40 82 00 0C */	bne lbl_809DAA58
lbl_809DAA50:
/* 809DAA50  38 60 00 05 */	li r3, 5
/* 809DAA54  48 00 01 EC */	b lbl_809DAC40
lbl_809DAA58:
/* 809DAA58  2C 03 00 04 */	cmpwi r3, 4
/* 809DAA5C  40 82 00 08 */	bne lbl_809DAA64
/* 809DAA60  3B 39 00 01 */	addi r25, r25, 1
lbl_809DAA64:
/* 809DAA64  3B 18 00 01 */	addi r24, r24, 1
/* 809DAA68  3B BD 00 04 */	addi r29, r29, 4
/* 809DAA6C  3B 9C 00 08 */	addi r28, r28, 8
lbl_809DAA70:
/* 809DAA70  88 1E 0E 24 */	lbz r0, 0xe24(r30)
/* 809DAA74  54 06 10 3A */	slwi r6, r0, 2
/* 809DAA78  7C 7B 30 2E */	lwzx r3, r27, r6
/* 809DAA7C  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809DAA80  2C 00 00 00 */	cmpwi r0, 0
/* 809DAA84  40 80 FF A8 */	bge lbl_809DAA2C
/* 809DAA88  7C 19 C0 00 */	cmpw r25, r24
/* 809DAA8C  40 82 01 B0 */	bne lbl_809DAC3C
/* 809DAA90  7F C3 F3 78 */	mr r3, r30
/* 809DAA94  3C 80 80 9E */	lis r4, createHeapCallBack__11daNpc_grO_cFP10fopAc_ac_c@ha
/* 809DAA98  38 84 B4 48 */	addi r4, r4, createHeapCallBack__11daNpc_grO_cFP10fopAc_ac_c@l
/* 809DAA9C  38 BF 00 6C */	addi r5, r31, 0x6c
/* 809DAAA0  7C A5 30 2E */	lwzx r5, r5, r6
/* 809DAAA4  4B 63 FA 0C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809DAAA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809DAAAC  40 82 00 0C */	bne lbl_809DAAB8
/* 809DAAB0  38 60 00 05 */	li r3, 5
/* 809DAAB4  48 00 01 8C */	b lbl_809DAC40
lbl_809DAAB8:
/* 809DAAB8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809DAABC  80 63 00 04 */	lwz r3, 4(r3)
/* 809DAAC0  38 03 00 24 */	addi r0, r3, 0x24
/* 809DAAC4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809DAAC8  7F C3 F3 78 */	mr r3, r30
/* 809DAACC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809DAAD0  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 809DAAD4  FC 60 08 90 */	fmr f3, f1
/* 809DAAD8  C0 9F 00 84 */	lfs f4, 0x84(r31)
/* 809DAADC  C0 BF 00 88 */	lfs f5, 0x88(r31)
/* 809DAAE0  FC C0 20 90 */	fmr f6, f4
/* 809DAAE4  4B 63 FA 64 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809DAAE8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809DAAEC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809DAAF0  38 BE 05 38 */	addi r5, r30, 0x538
/* 809DAAF4  38 C0 00 03 */	li r6, 3
/* 809DAAF8  38 E0 00 01 */	li r7, 1
/* 809DAAFC  4B 8E 5A 34 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809DAB00  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809DAB04  38 9F 00 00 */	addi r4, r31, 0
/* 809DAB08  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809DAB0C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809DAB10  4B 69 B4 48 */	b SetWall__12dBgS_AcchCirFff
/* 809DAB14  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809DAB18  90 01 00 08 */	stw r0, 8(r1)
/* 809DAB1C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809DAB20  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809DAB24  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809DAB28  7F C6 F3 78 */	mr r6, r30
/* 809DAB2C  38 E0 00 01 */	li r7, 1
/* 809DAB30  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809DAB34  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809DAB38  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809DAB3C  4B 69 B7 0C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809DAB40  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809DAB44  38 9F 00 00 */	addi r4, r31, 0
/* 809DAB48  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809DAB4C  FC 00 00 1E */	fctiwz f0, f0
/* 809DAB50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809DAB54  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809DAB58  38 A0 00 00 */	li r5, 0
/* 809DAB5C  7F C6 F3 78 */	mr r6, r30
/* 809DAB60  4B 6A 8D 00 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809DAB64  38 7E 0C 98 */	addi r3, r30, 0xc98
/* 809DAB68  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809DAB6C  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809DAB70  4B 6A 9D 44 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809DAB74  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809DAB78  90 1E 0C DC */	stw r0, 0xcdc(r30)
/* 809DAB7C  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 809DAB80  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 809DAB84  90 1E 0D 3C */	stw r0, 0xd3c(r30)
/* 809DAB88  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809DAB8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809DAB90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809DAB94  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809DAB98  4B 69 BF 14 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809DAB9C  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809DABA0  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809DABA4  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809DABA8  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809DABAC  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809DABB0  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809DABB4  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809DABB8  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809DABBC  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809DABC0  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809DABC4  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809DABC8  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809DABCC  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809DABD0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809DABD4  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809DABD8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809DABDC  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809DABE0  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809DABE4  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809DABE8  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809DABEC  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809DABF0  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809DABF4  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809DABF8  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809DABFC  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809DAC00  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809DAC04  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809DAC08  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809DAC0C  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809DAC10  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809DAC14  7F C3 F3 78 */	mr r3, r30
/* 809DAC18  4B 77 81 6C */	b setEnvTevColor__8daNpcF_cFv
/* 809DAC1C  7F C3 F3 78 */	mr r3, r30
/* 809DAC20  4B 77 81 C0 */	b setRoomNo__8daNpcF_cFv
/* 809DAC24  7F C3 F3 78 */	mr r3, r30
/* 809DAC28  48 00 18 CD */	bl reset__11daNpc_grO_cFv
/* 809DAC2C  7F C3 F3 78 */	mr r3, r30
/* 809DAC30  48 00 05 35 */	bl Execute__11daNpc_grO_cFv
/* 809DAC34  38 60 00 04 */	li r3, 4
/* 809DAC38  48 00 00 08 */	b lbl_809DAC40
lbl_809DAC3C:
/* 809DAC3C  38 60 00 00 */	li r3, 0
lbl_809DAC40:
/* 809DAC40  39 61 00 40 */	addi r11, r1, 0x40
/* 809DAC44  4B 98 75 D0 */	b _restgpr_24
/* 809DAC48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809DAC4C  7C 08 03 A6 */	mtlr r0
/* 809DAC50  38 21 00 40 */	addi r1, r1, 0x40
/* 809DAC54  4E 80 00 20 */	blr 
