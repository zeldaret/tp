lbl_80CED0B8:
/* 80CED0B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CED0BC  7C 08 02 A6 */	mflr r0
/* 80CED0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CED0C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CED0C8  4B 67 51 15 */	bl _savegpr_29
/* 80CED0CC  7C 7E 1B 78 */	mr r30, r3
/* 80CED0D0  3C 60 80 CF */	lis r3, lit_3635@ha /* 0x80CEEFA0@ha */
/* 80CED0D4  3B E3 EF A0 */	addi r31, r3, lit_3635@l /* 0x80CEEFA0@l */
/* 80CED0D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CED0DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CED0E0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CED0E4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CED0E8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CED0EC  7C 05 07 74 */	extsb r5, r0
/* 80CED0F0  4B 34 82 71 */	bl isSwitch__10dSv_info_cCFii
/* 80CED0F4  2C 03 00 00 */	cmpwi r3, 0
/* 80CED0F8  41 82 00 18 */	beq lbl_80CED110
/* 80CED0FC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CED100  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CED104  38 00 00 04 */	li r0, 4
/* 80CED108  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 80CED10C  48 00 00 14 */	b lbl_80CED120
lbl_80CED110:
/* 80CED110  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CED114  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CED118  38 00 00 00 */	li r0, 0
/* 80CED11C  98 1E 09 3C */	stb r0, 0x93c(r30)
lbl_80CED120:
/* 80CED120  7F C3 F3 78 */	mr r3, r30
/* 80CED124  4B FF FE 11 */	bl initBaseMtx__14daObjStopper_cFv
/* 80CED128  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CED12C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CED130  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CED134  38 7E 07 84 */	addi r3, r30, 0x784
/* 80CED138  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CED13C  FC 40 08 90 */	fmr f2, f1
/* 80CED140  4B 38 8E 19 */	bl SetWall__12dBgS_AcchCirFff
/* 80CED144  38 00 00 00 */	li r0, 0
/* 80CED148  90 01 00 08 */	stw r0, 8(r1)
/* 80CED14C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80CED150  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CED154  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80CED158  7F C6 F3 78 */	mr r6, r30
/* 80CED15C  38 E0 00 01 */	li r7, 1
/* 80CED160  39 1E 07 84 */	addi r8, r30, 0x784
/* 80CED164  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80CED168  39 40 00 00 */	li r10, 0
/* 80CED16C  4B 38 90 DD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CED170  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CED174  80 83 00 04 */	lwz r4, 4(r3)
/* 80CED178  7F C3 F3 78 */	mr r3, r30
/* 80CED17C  4B 32 D3 FD */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CED180  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CED184  54 00 46 3E */	srwi r0, r0, 0x18
/* 80CED188  98 1E 09 4A */	stb r0, 0x94a(r30)
/* 80CED18C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CED190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CED194  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80CED198  7F A3 EB 78 */	mr r3, r29
/* 80CED19C  7F C4 F3 78 */	mr r4, r30
/* 80CED1A0  88 BE 09 4A */	lbz r5, 0x94a(r30)
/* 80CED1A4  4B 35 A4 F5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80CED1A8  B0 7E 09 44 */	sth r3, 0x944(r30)
/* 80CED1AC  A0 1E 09 F8 */	lhz r0, 0x9f8(r30)
/* 80CED1B0  98 1E 09 4B */	stb r0, 0x94b(r30)
/* 80CED1B4  7F A3 EB 78 */	mr r3, r29
/* 80CED1B8  7F C4 F3 78 */	mr r4, r30
/* 80CED1BC  88 BE 09 4B */	lbz r5, 0x94b(r30)
/* 80CED1C0  4B 35 A4 D9 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80CED1C4  B0 7E 09 46 */	sth r3, 0x946(r30)
/* 80CED1C8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CED1CC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CED1D0  98 1E 09 4C */	stb r0, 0x94c(r30)
/* 80CED1D4  7F A3 EB 78 */	mr r3, r29
/* 80CED1D8  7F C4 F3 78 */	mr r4, r30
/* 80CED1DC  88 BE 09 4C */	lbz r5, 0x94c(r30)
/* 80CED1E0  4B 35 A4 B9 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80CED1E4  B0 7E 09 48 */	sth r3, 0x948(r30)
/* 80CED1E8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80CED1EC  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80CED1F0  38 60 00 01 */	li r3, 1
/* 80CED1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CED1F8  4B 67 50 31 */	bl _restgpr_29
/* 80CED1FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CED200  7C 08 03 A6 */	mtlr r0
/* 80CED204  38 21 00 20 */	addi r1, r1, 0x20
/* 80CED208  4E 80 00 20 */	blr 
