lbl_804A2084:
/* 804A2084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A2088  7C 08 02 A6 */	mflr r0
/* 804A208C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A2090  39 61 00 20 */	addi r11, r1, 0x20
/* 804A2094  4B EC 01 49 */	bl _savegpr_29
/* 804A2098  7C 7E 1B 78 */	mr r30, r3
/* 804A209C  3C 80 80 4A */	lis r4, cNullVec__6Z2Calc@ha /* 0x804A2ADC@ha */
/* 804A20A0  3B E4 2A DC */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x804A2ADC@l */
/* 804A20A4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804A20A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A20AC  40 82 00 1C */	bne lbl_804A20C8
/* 804A20B0  28 1E 00 00 */	cmplwi r30, 0
/* 804A20B4  41 82 00 08 */	beq lbl_804A20BC
/* 804A20B8  48 00 02 55 */	bl __ct__13daBoomerang_cFv
lbl_804A20BC:
/* 804A20BC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804A20C0  60 00 00 08 */	ori r0, r0, 8
/* 804A20C4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804A20C8:
/* 804A20C8  7F C3 F3 78 */	mr r3, r30
/* 804A20CC  3C 80 80 4A */	lis r4, daBoomerang_createHeap__FP10fopAc_ac_c@ha /* 0x804A2064@ha */
/* 804A20D0  38 84 20 64 */	addi r4, r4, daBoomerang_createHeap__FP10fopAc_ac_c@l /* 0x804A2064@l */
/* 804A20D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000C0D0@ha */
/* 804A20D8  38 A5 C0 D0 */	addi r5, r5, 0xC0D0 /* 0x0000C0D0@l */
/* 804A20DC  4B B7 83 D5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804A20E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A20E4  40 82 00 0C */	bne lbl_804A20F0
/* 804A20E8  38 60 00 05 */	li r3, 5
/* 804A20EC  48 00 02 08 */	b lbl_804A22F4
lbl_804A20F0:
/* 804A20F0  38 00 FF FF */	li r0, -1
/* 804A20F4  90 1E 06 A8 */	stw r0, 0x6a8(r30)
/* 804A20F8  38 7E 07 40 */	addi r3, r30, 0x740
/* 804A20FC  7F C4 F3 78 */	mr r4, r30
/* 804A2100  38 A0 00 00 */	li r5, 0
/* 804A2104  38 C0 00 00 */	li r6, 0
/* 804A2108  4B BD 41 81 */	bl Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir
/* 804A210C  38 7E 09 18 */	addi r3, r30, 0x918
/* 804A2110  38 9E 07 40 */	addi r4, r30, 0x740
/* 804A2114  3C A0 80 4A */	lis r5, lit_6077@ha /* 0x804A298C@ha */
/* 804A2118  C0 25 29 8C */	lfs f1, lit_6077@l(r5)  /* 0x804A298C@l */
/* 804A211C  FC 40 08 90 */	fmr f2, f1
/* 804A2120  4B BA EB 7D */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 804A2124  7F C3 F3 78 */	mr r3, r30
/* 804A2128  4B FF D9 7D */	bl setKeepMatrix__13daBoomerang_cFv
/* 804A212C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 804A2130  38 03 00 24 */	addi r0, r3, 0x24
/* 804A2134  90 1E 05 04 */	stw r0, 0x504(r30)
/* 804A2138  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 804A213C  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 804A2140  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 804A2144  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 804A2148  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 804A214C  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 804A2150  38 7E 09 D0 */	addi r3, r30, 0x9d0
/* 804A2154  38 80 00 3C */	li r4, 0x3c
/* 804A2158  38 A0 00 FF */	li r5, 0xff
/* 804A215C  7F C6 F3 78 */	mr r6, r30
/* 804A2160  4B BE 17 01 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804A2164  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 804A2168  38 9F 00 38 */	addi r4, r31, 0x38
/* 804A216C  4B BE 26 65 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 804A2170  38 1E 09 D0 */	addi r0, r30, 0x9d0
/* 804A2174  90 1E 0A 50 */	stw r0, 0xa50(r30)
/* 804A2178  3C 60 80 4A */	lis r3, daBoomerang_lockLineCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8049F63C@ha */
/* 804A217C  38 03 F6 3C */	addi r0, r3, daBoomerang_lockLineCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8049F63C@l */
/* 804A2180  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 804A2184  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 804A2188  38 9F 00 84 */	addi r4, r31, 0x84
/* 804A218C  4B BE 27 29 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804A2190  38 1E 09 D0 */	addi r0, r30, 0x9d0
/* 804A2194  90 1E 0B 94 */	stw r0, 0xb94(r30)
/* 804A2198  3C 60 80 4A */	lis r3, daBoomerang_moveLineCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8049F6EC@ha */
/* 804A219C  38 03 F6 EC */	addi r0, r3, daBoomerang_moveLineCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8049F6EC@l */
/* 804A21A0  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 804A21A4  80 1E 0C D8 */	lwz r0, 0xcd8(r30)
/* 804A21A8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 804A21AC  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 804A21B0  38 60 00 00 */	li r3, 0
/* 804A21B4  38 80 FF FF */	li r4, -1
/* 804A21B8  38 00 00 05 */	li r0, 5
/* 804A21BC  7C 09 03 A6 */	mtctr r0
lbl_804A21C0:
/* 804A21C0  38 03 06 AC */	addi r0, r3, 0x6ac
/* 804A21C4  7C 9E 01 2E */	stwx r4, r30, r0
/* 804A21C8  38 63 00 04 */	addi r3, r3, 4
/* 804A21CC  42 00 FF F4 */	bdnz lbl_804A21C0
/* 804A21D0  4B BF B6 B5 */	bl getAlinkArcName__9daAlink_cFv
/* 804A21D4  38 80 00 48 */	li r4, 0x48
/* 804A21D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A21DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A21E0  3F A5 00 02 */	addis r29, r5, 2
/* 804A21E4  3B BD C2 F8 */	addi r29, r29, -15624
/* 804A21E8  7F A5 EB 78 */	mr r5, r29
/* 804A21EC  38 C0 00 80 */	li r6, 0x80
/* 804A21F0  4B B9 A0 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A21F4  90 7E 05 70 */	stw r3, 0x570(r30)
/* 804A21F8  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 804A21FC  80 83 00 04 */	lwz r4, 4(r3)
/* 804A2200  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804A2204  4B E8 8F D1 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804A2208  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 804A220C  80 63 00 04 */	lwz r3, 4(r3)
/* 804A2210  38 63 00 58 */	addi r3, r3, 0x58
/* 804A2214  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 804A2218  4B E8 DA AD */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 804A221C  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 804A2220  80 63 00 04 */	lwz r3, 4(r3)
/* 804A2224  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804A2228  80 83 00 10 */	lwz r4, 0x10(r3)
/* 804A222C  3C 60 80 4A */	lis r3, daBoomeang_windModelCallBack__FP8J3DJointi@ha /* 0x8049F360@ha */
/* 804A2230  38 03 F3 60 */	addi r0, r3, daBoomeang_windModelCallBack__FP8J3DJointi@l /* 0x8049F360@l */
/* 804A2234  90 04 00 04 */	stw r0, 4(r4)
/* 804A2238  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 804A223C  93 C3 00 14 */	stw r30, 0x14(r3)
/* 804A2240  4B BF B6 45 */	bl getAlinkArcName__9daAlink_cFv
/* 804A2244  38 80 00 47 */	li r4, 0x47
/* 804A2248  7F A5 EB 78 */	mr r5, r29
/* 804A224C  38 C0 00 80 */	li r6, 0x80
/* 804A2250  4B B9 A0 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A2254  90 7E 05 94 */	stw r3, 0x594(r30)
/* 804A2258  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 804A225C  80 83 00 04 */	lwz r4, 4(r3)
/* 804A2260  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 804A2264  4B E8 8F 71 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804A2268  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 804A226C  80 63 00 04 */	lwz r3, 4(r3)
/* 804A2270  38 63 00 58 */	addi r3, r3, 0x58
/* 804A2274  80 9E 05 94 */	lwz r4, 0x594(r30)
/* 804A2278  4B E8 DA 4D */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 804A227C  7F C3 F3 78 */	mr r3, r30
/* 804A2280  4B FF D7 71 */	bl setRoomInfo__13daBoomerang_cFv
/* 804A2284  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 804A2288  90 1E 05 24 */	stw r0, 0x524(r30)
/* 804A228C  38 00 00 96 */	li r0, 0x96
/* 804A2290  B0 1E 05 4E */	sth r0, 0x54e(r30)
/* 804A2294  7F C3 F3 78 */	mr r3, r30
/* 804A2298  4B B7 76 2D */	bl fopAcM_setStageLayer__FPv
/* 804A229C  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 804A22A0  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 804A22A4  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 804A22A8  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 804A22AC  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 804A22B0  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 804A22B4  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 804A22B8  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 804A22BC  90 7E 0D D8 */	stw r3, 0xdd8(r30)
/* 804A22C0  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 804A22C4  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 804A22C8  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 804A22CC  80 1E 0D 68 */	lwz r0, 0xd68(r30)
/* 804A22D0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 804A22D4  90 1E 0D 68 */	stw r0, 0xd68(r30)
/* 804A22D8  80 1E 0D 68 */	lwz r0, 0xd68(r30)
/* 804A22DC  60 00 00 02 */	ori r0, r0, 2
/* 804A22E0  90 1E 0D 68 */	stw r0, 0xd68(r30)
/* 804A22E4  3C 60 80 4A */	lis r3, lit_4945@ha /* 0x804A2910@ha */
/* 804A22E8  C0 03 29 10 */	lfs f0, lit_4945@l(r3)  /* 0x804A2910@l */
/* 804A22EC  D0 1E 09 A8 */	stfs f0, 0x9a8(r30)
/* 804A22F0  38 60 00 04 */	li r3, 4
lbl_804A22F4:
/* 804A22F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A22F8  4B EB FF 31 */	bl _restgpr_29
/* 804A22FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A2300  7C 08 03 A6 */	mtlr r0
/* 804A2304  38 21 00 20 */	addi r1, r1, 0x20
/* 804A2308  4E 80 00 20 */	blr 
