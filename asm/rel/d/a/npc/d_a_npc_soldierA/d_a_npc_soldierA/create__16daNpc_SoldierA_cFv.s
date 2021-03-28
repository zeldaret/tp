lbl_80AEF9A0:
/* 80AEF9A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AEF9A4  7C 08 02 A6 */	mflr r0
/* 80AEF9A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AEF9AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AEF9B0  4B 87 28 18 */	b _savegpr_24
/* 80AEF9B4  7C 7E 1B 78 */	mr r30, r3
/* 80AEF9B8  3C 60 80 AF */	lis r3, m__22daNpc_SoldierA_Param_c@ha
/* 80AEF9BC  3B E3 26 E8 */	addi r31, r3, m__22daNpc_SoldierA_Param_c@l
/* 80AEF9C0  4B 6B CB BC */	b dKy_darkworld_check__Fv
/* 80AEF9C4  98 7E 09 F4 */	stb r3, 0x9f4(r30)
/* 80AEF9C8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AEF9CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AEF9D0  40 82 00 20 */	bne lbl_80AEF9F0
/* 80AEF9D4  28 1E 00 00 */	cmplwi r30, 0
/* 80AEF9D8  41 82 00 0C */	beq lbl_80AEF9E4
/* 80AEF9DC  7F C3 F3 78 */	mr r3, r30
/* 80AEF9E0  4B FF FB AD */	bl __ct__16daNpc_SoldierA_cFv
lbl_80AEF9E4:
/* 80AEF9E4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AEF9E8  60 00 00 08 */	ori r0, r0, 8
/* 80AEF9EC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AEF9F0:
/* 80AEF9F0  7F C3 F3 78 */	mr r3, r30
/* 80AEF9F4  48 00 11 3D */	bl getTypeFromParam__16daNpc_SoldierA_cFv
/* 80AEF9F8  98 7E 0E 18 */	stb r3, 0xe18(r30)
/* 80AEF9FC  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 80AEFA00  3C 03 00 00 */	addis r0, r3, 0
/* 80AEFA04  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AEFA08  41 82 00 0C */	beq lbl_80AEFA14
/* 80AEFA0C  90 7E 0E 10 */	stw r3, 0xe10(r30)
/* 80AEFA10  48 00 00 0C */	b lbl_80AEFA1C
lbl_80AEFA14:
/* 80AEFA14  38 00 FF FF */	li r0, -1
/* 80AEFA18  90 1E 0E 10 */	stw r0, 0xe10(r30)
lbl_80AEFA1C:
/* 80AEFA1C  7F C3 F3 78 */	mr r3, r30
/* 80AEFA20  48 00 11 5D */	bl isDelete__16daNpc_SoldierA_cFv
/* 80AEFA24  2C 03 00 00 */	cmpwi r3, 0
/* 80AEFA28  41 82 00 0C */	beq lbl_80AEFA34
/* 80AEFA2C  38 60 00 05 */	li r3, 5
/* 80AEFA30  48 00 02 38 */	b lbl_80AEFC68
lbl_80AEFA34:
/* 80AEFA34  3B 20 00 00 */	li r25, 0
/* 80AEFA38  3B 00 00 00 */	li r24, 0
/* 80AEFA3C  3B A0 00 00 */	li r29, 0
/* 80AEFA40  3B 80 00 00 */	li r28, 0
/* 80AEFA44  3C 60 80 AF */	lis r3, l_resNames@ha
/* 80AEFA48  3B 43 29 30 */	addi r26, r3, l_resNames@l
/* 80AEFA4C  3C 60 80 AF */	lis r3, l_loadRes_list@ha
/* 80AEFA50  3B 63 29 20 */	addi r27, r3, l_loadRes_list@l
/* 80AEFA54  48 00 00 48 */	b lbl_80AEFA9C
lbl_80AEFA58:
/* 80AEFA58  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AEFA5C  7C 7E 1A 14 */	add r3, r30, r3
/* 80AEFA60  54 00 10 3A */	slwi r0, r0, 2
/* 80AEFA64  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AEFA68  4B 53 D4 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AEFA6C  2C 03 00 05 */	cmpwi r3, 5
/* 80AEFA70  41 82 00 0C */	beq lbl_80AEFA7C
/* 80AEFA74  2C 03 00 03 */	cmpwi r3, 3
/* 80AEFA78  40 82 00 0C */	bne lbl_80AEFA84
lbl_80AEFA7C:
/* 80AEFA7C  38 60 00 05 */	li r3, 5
/* 80AEFA80  48 00 01 E8 */	b lbl_80AEFC68
lbl_80AEFA84:
/* 80AEFA84  2C 03 00 04 */	cmpwi r3, 4
/* 80AEFA88  40 82 00 08 */	bne lbl_80AEFA90
/* 80AEFA8C  3B 39 00 01 */	addi r25, r25, 1
lbl_80AEFA90:
/* 80AEFA90  3B 18 00 01 */	addi r24, r24, 1
/* 80AEFA94  3B BD 00 04 */	addi r29, r29, 4
/* 80AEFA98  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AEFA9C:
/* 80AEFA9C  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 80AEFAA0  54 00 10 3A */	slwi r0, r0, 2
/* 80AEFAA4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AEFAA8  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AEFAAC  2C 00 00 00 */	cmpwi r0, 0
/* 80AEFAB0  40 80 FF A8 */	bge lbl_80AEFA58
/* 80AEFAB4  7C 19 C0 00 */	cmpw r25, r24
/* 80AEFAB8  40 82 01 AC */	bne lbl_80AEFC64
/* 80AEFABC  7F C3 F3 78 */	mr r3, r30
/* 80AEFAC0  3C 80 80 AF */	lis r4, createHeapCallBack__16daNpc_SoldierA_cFP10fopAc_ac_c@ha
/* 80AEFAC4  38 84 01 10 */	addi r4, r4, createHeapCallBack__16daNpc_SoldierA_cFP10fopAc_ac_c@l
/* 80AEFAC8  38 A0 2B 20 */	li r5, 0x2b20
/* 80AEFACC  4B 52 A9 E4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AEFAD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AEFAD4  40 82 00 0C */	bne lbl_80AEFAE0
/* 80AEFAD8  38 60 00 05 */	li r3, 5
/* 80AEFADC  48 00 01 8C */	b lbl_80AEFC68
lbl_80AEFAE0:
/* 80AEFAE0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AEFAE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80AEFAE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80AEFAEC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80AEFAF0  7F C3 F3 78 */	mr r3, r30
/* 80AEFAF4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80AEFAF8  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80AEFAFC  FC 60 08 90 */	fmr f3, f1
/* 80AEFB00  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 80AEFB04  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 80AEFB08  FC C0 20 90 */	fmr f6, f4
/* 80AEFB0C  4B 52 AA 3C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AEFB10  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AEFB14  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AEFB18  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AEFB1C  38 C0 00 03 */	li r6, 3
/* 80AEFB20  38 E0 00 01 */	li r7, 1
/* 80AEFB24  4B 7D 0A 0C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AEFB28  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AEFB2C  38 9F 00 00 */	addi r4, r31, 0
/* 80AEFB30  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AEFB34  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80AEFB38  4B 58 64 20 */	b SetWall__12dBgS_AcchCirFff
/* 80AEFB3C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AEFB40  90 01 00 08 */	stw r0, 8(r1)
/* 80AEFB44  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AEFB48  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AEFB4C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AEFB50  7F C6 F3 78 */	mr r6, r30
/* 80AEFB54  38 E0 00 01 */	li r7, 1
/* 80AEFB58  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 80AEFB5C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AEFB60  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AEFB64  4B 58 66 E4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AEFB68  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80AEFB6C  38 9F 00 00 */	addi r4, r31, 0
/* 80AEFB70  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AEFB74  FC 00 00 1E */	fctiwz f0, f0
/* 80AEFB78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AEFB7C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AEFB80  38 A0 00 00 */	li r5, 0
/* 80AEFB84  7F C6 F3 78 */	mr r6, r30
/* 80AEFB88  4B 59 3C D8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AEFB8C  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AEFB90  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80AEFB94  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80AEFB98  4B 59 4D 1C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AEFB9C  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 80AEFBA0  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 80AEFBA4  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80AEFBA8  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80AEFBAC  90 1E 0D 38 */	stw r0, 0xd38(r30)
/* 80AEFBB0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AEFBB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AEFBB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AEFBBC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AEFBC0  4B 58 6E EC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AEFBC4  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 80AEFBC8  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 80AEFBCC  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80AEFBD0  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 80AEFBD4  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80AEFBD8  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80AEFBDC  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 80AEFBE0  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 80AEFBE4  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 80AEFBE8  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 80AEFBEC  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 80AEFBF0  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 80AEFBF4  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 80AEFBF8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AEFBFC  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80AEFC00  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80AEFC04  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 80AEFC08  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 80AEFC0C  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 80AEFC10  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 80AEFC14  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 80AEFC18  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80AEFC1C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80AEFC20  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80AEFC24  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80AEFC28  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80AEFC2C  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 80AEFC30  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80AEFC34  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 80AEFC38  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80AEFC3C  7F C3 F3 78 */	mr r3, r30
/* 80AEFC40  4B 66 31 44 */	b setEnvTevColor__8daNpcF_cFv
/* 80AEFC44  7F C3 F3 78 */	mr r3, r30
/* 80AEFC48  4B 66 31 98 */	b setRoomNo__8daNpcF_cFv
/* 80AEFC4C  7F C3 F3 78 */	mr r3, r30
/* 80AEFC50  48 00 0F 61 */	bl reset__16daNpc_SoldierA_cFv
/* 80AEFC54  7F C3 F3 78 */	mr r3, r30
/* 80AEFC58  48 00 02 29 */	bl Execute__16daNpc_SoldierA_cFv
/* 80AEFC5C  38 60 00 04 */	li r3, 4
/* 80AEFC60  48 00 00 08 */	b lbl_80AEFC68
lbl_80AEFC64:
/* 80AEFC64  38 60 00 00 */	li r3, 0
lbl_80AEFC68:
/* 80AEFC68  39 61 00 40 */	addi r11, r1, 0x40
/* 80AEFC6C  4B 87 25 A8 */	b _restgpr_24
/* 80AEFC70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AEFC74  7C 08 03 A6 */	mtlr r0
/* 80AEFC78  38 21 00 40 */	addi r1, r1, 0x40
/* 80AEFC7C  4E 80 00 20 */	blr 
