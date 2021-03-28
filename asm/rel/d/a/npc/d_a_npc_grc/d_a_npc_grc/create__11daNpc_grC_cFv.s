lbl_809CB8E0:
/* 809CB8E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809CB8E4  7C 08 02 A6 */	mflr r0
/* 809CB8E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809CB8EC  39 61 00 40 */	addi r11, r1, 0x40
/* 809CB8F0  4B 99 68 D8 */	b _savegpr_24
/* 809CB8F4  7C 7E 1B 78 */	mr r30, r3
/* 809CB8F8  3C 80 80 9D */	lis r4, m__17daNpc_grC_Param_c@ha
/* 809CB8FC  3B E4 F5 1C */	addi r31, r4, m__17daNpc_grC_Param_c@l
/* 809CB900  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809CB904  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809CB908  40 82 00 1C */	bne lbl_809CB924
/* 809CB90C  28 1E 00 00 */	cmplwi r30, 0
/* 809CB910  41 82 00 08 */	beq lbl_809CB918
/* 809CB914  4B FF FB B9 */	bl __ct__11daNpc_grC_cFv
lbl_809CB918:
/* 809CB918  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809CB91C  60 00 00 08 */	ori r0, r0, 8
/* 809CB920  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809CB924:
/* 809CB924  4B 7E 0C 58 */	b dKy_darkworld_check__Fv
/* 809CB928  98 7E 09 F4 */	stb r3, 0x9f4(r30)
/* 809CB92C  7F C3 F3 78 */	mr r3, r30
/* 809CB930  48 00 15 91 */	bl getTypeFromParam__11daNpc_grC_cFv
/* 809CB934  98 7E 0E 48 */	stb r3, 0xe48(r30)
/* 809CB938  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809CB93C  3C 03 00 00 */	addis r0, r3, 0
/* 809CB940  28 00 FF FF */	cmplwi r0, 0xffff
/* 809CB944  41 82 00 0C */	beq lbl_809CB950
/* 809CB948  90 7E 0E 40 */	stw r3, 0xe40(r30)
/* 809CB94C  48 00 00 0C */	b lbl_809CB958
lbl_809CB950:
/* 809CB950  38 00 FF FF */	li r0, -1
/* 809CB954  90 1E 0E 40 */	stw r0, 0xe40(r30)
lbl_809CB958:
/* 809CB958  7F C3 F3 78 */	mr r3, r30
/* 809CB95C  48 00 15 DD */	bl isDelete__11daNpc_grC_cFv
/* 809CB960  2C 03 00 00 */	cmpwi r3, 0
/* 809CB964  41 82 00 0C */	beq lbl_809CB970
/* 809CB968  38 60 00 05 */	li r3, 5
/* 809CB96C  48 00 02 50 */	b lbl_809CBBBC
lbl_809CB970:
/* 809CB970  3B 20 00 00 */	li r25, 0
/* 809CB974  3B 00 00 00 */	li r24, 0
/* 809CB978  3B A0 00 00 */	li r29, 0
/* 809CB97C  3B 80 00 00 */	li r28, 0
/* 809CB980  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809CB984  3B 43 F9 64 */	addi r26, r3, l_resNames@l
/* 809CB988  3C 60 80 9D */	lis r3, l_loadRes_list@ha
/* 809CB98C  3B 63 F9 48 */	addi r27, r3, l_loadRes_list@l
/* 809CB990  48 00 00 48 */	b lbl_809CB9D8
lbl_809CB994:
/* 809CB994  38 7C 0E 18 */	addi r3, r28, 0xe18
/* 809CB998  7C 7E 1A 14 */	add r3, r30, r3
/* 809CB99C  54 00 10 3A */	slwi r0, r0, 2
/* 809CB9A0  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809CB9A4  4B 66 15 18 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809CB9A8  2C 03 00 05 */	cmpwi r3, 5
/* 809CB9AC  41 82 00 0C */	beq lbl_809CB9B8
/* 809CB9B0  2C 03 00 03 */	cmpwi r3, 3
/* 809CB9B4  40 82 00 0C */	bne lbl_809CB9C0
lbl_809CB9B8:
/* 809CB9B8  38 60 00 05 */	li r3, 5
/* 809CB9BC  48 00 02 00 */	b lbl_809CBBBC
lbl_809CB9C0:
/* 809CB9C0  2C 03 00 04 */	cmpwi r3, 4
/* 809CB9C4  40 82 00 08 */	bne lbl_809CB9CC
/* 809CB9C8  3B 39 00 01 */	addi r25, r25, 1
lbl_809CB9CC:
/* 809CB9CC  3B 18 00 01 */	addi r24, r24, 1
/* 809CB9D0  3B BD 00 04 */	addi r29, r29, 4
/* 809CB9D4  3B 9C 00 08 */	addi r28, r28, 8
lbl_809CB9D8:
/* 809CB9D8  88 1E 0E 48 */	lbz r0, 0xe48(r30)
/* 809CB9DC  54 00 10 3A */	slwi r0, r0, 2
/* 809CB9E0  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809CB9E4  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809CB9E8  2C 00 00 00 */	cmpwi r0, 0
/* 809CB9EC  40 80 FF A8 */	bge lbl_809CB994
/* 809CB9F0  7C 19 C0 00 */	cmpw r25, r24
/* 809CB9F4  40 82 01 C4 */	bne lbl_809CBBB8
/* 809CB9F8  7F C3 F3 78 */	mr r3, r30
/* 809CB9FC  3C 80 80 9D */	lis r4, createHeapCallBack__11daNpc_grC_cFP10fopAc_ac_c@ha
/* 809CBA00  38 84 C0 C0 */	addi r4, r4, createHeapCallBack__11daNpc_grC_cFP10fopAc_ac_c@l
/* 809CBA04  38 A0 36 E0 */	li r5, 0x36e0
/* 809CBA08  4B 64 EA A8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809CBA0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809CBA10  40 82 00 0C */	bne lbl_809CBA1C
/* 809CBA14  38 60 00 05 */	li r3, 5
/* 809CBA18  48 00 01 A4 */	b lbl_809CBBBC
lbl_809CBA1C:
/* 809CBA1C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809CBA20  80 63 00 04 */	lwz r3, 4(r3)
/* 809CBA24  38 03 00 24 */	addi r0, r3, 0x24
/* 809CBA28  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809CBA2C  7F C3 F3 78 */	mr r3, r30
/* 809CBA30  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 809CBA34  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809CBA38  FC 60 08 90 */	fmr f3, f1
/* 809CBA3C  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 809CBA40  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 809CBA44  FC C0 20 90 */	fmr f6, f4
/* 809CBA48  4B 64 EB 00 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809CBA4C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809CBA50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809CBA54  38 BE 05 38 */	addi r5, r30, 0x538
/* 809CBA58  38 C0 00 03 */	li r6, 3
/* 809CBA5C  38 E0 00 01 */	li r7, 1
/* 809CBA60  4B 8F 4A D0 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809CBA64  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809CBA68  38 9F 00 00 */	addi r4, r31, 0
/* 809CBA6C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809CBA70  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809CBA74  4B 6A A4 E4 */	b SetWall__12dBgS_AcchCirFff
/* 809CBA78  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809CBA7C  90 01 00 08 */	stw r0, 8(r1)
/* 809CBA80  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809CBA84  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809CBA88  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809CBA8C  7F C6 F3 78 */	mr r6, r30
/* 809CBA90  38 E0 00 01 */	li r7, 1
/* 809CBA94  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809CBA98  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809CBA9C  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809CBAA0  4B 6A A7 A8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809CBAA4  38 7F 00 00 */	addi r3, r31, 0
/* 809CBAA8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 809CBAAC  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809CBAB0  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 809CBAB4  FC 40 08 90 */	fmr f2, f1
/* 809CBAB8  4B 68 51 E4 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 809CBABC  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809CBAC0  38 9F 00 00 */	addi r4, r31, 0
/* 809CBAC4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809CBAC8  FC 00 00 1E */	fctiwz f0, f0
/* 809CBACC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809CBAD0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809CBAD4  38 A0 00 00 */	li r5, 0
/* 809CBAD8  7F C6 F3 78 */	mr r6, r30
/* 809CBADC  4B 6B 7D 84 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809CBAE0  38 7E 0C C4 */	addi r3, r30, 0xcc4
/* 809CBAE4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809CBAE8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809CBAEC  4B 6B 8D C8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809CBAF0  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809CBAF4  90 1E 0D 08 */	stw r0, 0xd08(r30)
/* 809CBAF8  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 809CBAFC  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 809CBB00  90 1E 0D 68 */	stw r0, 0xd68(r30)
/* 809CBB04  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809CBB08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809CBB0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809CBB10  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809CBB14  4B 6A AF 98 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809CBB18  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809CBB1C  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809CBB20  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809CBB24  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809CBB28  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809CBB2C  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809CBB30  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809CBB34  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809CBB38  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809CBB3C  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809CBB40  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809CBB44  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809CBB48  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809CBB4C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809CBB50  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809CBB54  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809CBB58  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809CBB5C  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809CBB60  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809CBB64  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809CBB68  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809CBB6C  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809CBB70  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809CBB74  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809CBB78  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809CBB7C  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809CBB80  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809CBB84  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809CBB88  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809CBB8C  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809CBB90  7F C3 F3 78 */	mr r3, r30
/* 809CBB94  4B 78 71 F0 */	b setEnvTevColor__8daNpcF_cFv
/* 809CBB98  7F C3 F3 78 */	mr r3, r30
/* 809CBB9C  4B 78 72 44 */	b setRoomNo__8daNpcF_cFv
/* 809CBBA0  7F C3 F3 78 */	mr r3, r30
/* 809CBBA4  48 00 14 19 */	bl reset__11daNpc_grC_cFv
/* 809CBBA8  7F C3 F3 78 */	mr r3, r30
/* 809CBBAC  48 00 02 4D */	bl Execute__11daNpc_grC_cFv
/* 809CBBB0  38 60 00 04 */	li r3, 4
/* 809CBBB4  48 00 00 08 */	b lbl_809CBBBC
lbl_809CBBB8:
/* 809CBBB8  38 60 00 00 */	li r3, 0
lbl_809CBBBC:
/* 809CBBBC  39 61 00 40 */	addi r11, r1, 0x40
/* 809CBBC0  4B 99 66 54 */	b _restgpr_24
/* 809CBBC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809CBBC8  7C 08 03 A6 */	mtlr r0
/* 809CBBCC  38 21 00 40 */	addi r1, r1, 0x40
/* 809CBBD0  4E 80 00 20 */	blr 
