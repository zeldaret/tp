lbl_8058E244:
/* 8058E244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058E248  7C 08 02 A6 */	mflr r0
/* 8058E24C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058E250  39 61 00 20 */	addi r11, r1, 0x20
/* 8058E254  4B DD 3F 88 */	b _savegpr_29
/* 8058E258  7C 7E 1B 78 */	mr r30, r3
/* 8058E25C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8058E260  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8058E264  40 82 00 B0 */	bne lbl_8058E314
/* 8058E268  7F C0 F3 79 */	or. r0, r30, r30
/* 8058E26C  41 82 00 9C */	beq lbl_8058E308
/* 8058E270  7C 1F 03 78 */	mr r31, r0
/* 8058E274  4B A8 A8 F0 */	b __ct__10fopAc_ac_cFv
/* 8058E278  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8058E27C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8058E280  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8058E284  38 7F 05 90 */	addi r3, r31, 0x590
/* 8058E288  4B AF 54 D8 */	b __ct__10dCcD_GSttsFv
/* 8058E28C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8058E290  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8058E294  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 8058E298  38 03 00 20 */	addi r0, r3, 0x20
/* 8058E29C  90 1F 05 90 */	stw r0, 0x590(r31)
/* 8058E2A0  3B BF 05 B0 */	addi r29, r31, 0x5b0
/* 8058E2A4  7F A3 EB 78 */	mr r3, r29
/* 8058E2A8  4B AF 57 80 */	b __ct__12dCcD_GObjInfFv
/* 8058E2AC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8058E2B0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8058E2B4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8058E2B8  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha
/* 8058E2BC  38 03 F2 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8058E2C0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8058E2C4  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha
/* 8058E2C8  38 03 F2 68 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8058E2CC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8058E2D0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8058E2D4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8058E2D8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8058E2DC  38 03 00 58 */	addi r0, r3, 0x58
/* 8058E2E0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8058E2E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8058E2E8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8058E2EC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8058E2F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058E2F4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8058E2F8  38 03 00 84 */	addi r0, r3, 0x84
/* 8058E2FC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8058E300  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8058E304  4B D3 05 40 */	b __ct__16Z2SoundObjSimpleFv
lbl_8058E308:
/* 8058E308  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8058E30C  60 00 00 08 */	ori r0, r0, 8
/* 8058E310  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8058E314:
/* 8058E314  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058E318  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 8058E31C  98 1E 06 FD */	stb r0, 0x6fd(r30)
/* 8058E320  88 1E 06 FD */	lbz r0, 0x6fd(r30)
/* 8058E324  28 00 00 0F */	cmplwi r0, 0xf
/* 8058E328  40 82 00 0C */	bne lbl_8058E334
/* 8058E32C  38 00 00 00 */	li r0, 0
/* 8058E330  98 1E 06 FD */	stb r0, 0x6fd(r30)
lbl_8058E334:
/* 8058E334  38 7E 05 68 */	addi r3, r30, 0x568
/* 8058E338  88 1E 06 FD */	lbz r0, 0x6fd(r30)
/* 8058E33C  54 00 10 3A */	slwi r0, r0, 2
/* 8058E340  3C 80 80 59 */	lis r4, l_resNameIdx@ha
/* 8058E344  38 84 F2 0C */	addi r4, r4, l_resNameIdx@l
/* 8058E348  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058E34C  4B A9 EB 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8058E350  7C 7F 1B 78 */	mr r31, r3
/* 8058E354  2C 1F 00 04 */	cmpwi r31, 4
/* 8058E358  40 82 01 B8 */	bne lbl_8058E510
/* 8058E35C  7F C3 F3 78 */	mr r3, r30
/* 8058E360  3C 80 80 59 */	lis r4, createHeapCallBack__13daLv2Candle_cFP10fopAc_ac_c@ha
/* 8058E364  38 84 E6 08 */	addi r4, r4, createHeapCallBack__13daLv2Candle_cFP10fopAc_ac_c@l
/* 8058E368  38 A0 10 00 */	li r5, 0x1000
/* 8058E36C  4B A8 C1 44 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8058E370  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058E374  40 82 00 0C */	bne lbl_8058E380
/* 8058E378  38 60 00 05 */	li r3, 5
/* 8058E37C  48 00 01 98 */	b lbl_8058E514
lbl_8058E380:
/* 8058E380  7F C3 F3 78 */	mr r3, r30
/* 8058E384  4B FF FD B9 */	bl setBaseMtx__13daLv2Candle_cFv
/* 8058E388  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8058E38C  38 03 00 24 */	addi r0, r3, 0x24
/* 8058E390  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8058E394  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8058E398  80 83 00 04 */	lwz r4, 4(r3)
/* 8058E39C  7F C3 F3 78 */	mr r3, r30
/* 8058E3A0  4B A8 C1 D8 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 8058E3A4  38 7E 05 74 */	addi r3, r30, 0x574
/* 8058E3A8  38 80 00 FF */	li r4, 0xff
/* 8058E3AC  38 A0 00 FF */	li r5, 0xff
/* 8058E3B0  7F C6 F3 78 */	mr r6, r30
/* 8058E3B4  4B AF 54 AC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8058E3B8  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 8058E3BC  3C 80 80 59 */	lis r4, mCcDCyl__13daLv2Candle_c@ha
/* 8058E3C0  38 84 F1 C8 */	addi r4, r4, mCcDCyl__13daLv2Candle_c@l
/* 8058E3C4  4B AF 64 F0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8058E3C8  38 1E 05 74 */	addi r0, r30, 0x574
/* 8058E3CC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 8058E3D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8058E3D4  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 8058E3D8  3C 60 80 59 */	lis r3, lit_3778@ha
/* 8058E3DC  C0 23 F1 80 */	lfs f1, lit_3778@l(r3)
/* 8058E3E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8058E3E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8058E3E8  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 8058E3EC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8058E3F0  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 8058E3F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058E3F8  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 8058E3FC  98 1E 06 FE */	stb r0, 0x6fe(r30)
/* 8058E400  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058E404  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8058E408  98 1E 07 0C */	stb r0, 0x70c(r30)
/* 8058E40C  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 8058E410  28 00 00 0F */	cmplwi r0, 0xf
/* 8058E414  40 82 00 0C */	bne lbl_8058E420
/* 8058E418  38 00 00 00 */	li r0, 0
/* 8058E41C  98 1E 07 0C */	stb r0, 0x70c(r30)
lbl_8058E420:
/* 8058E420  7F C3 F3 78 */	mr r3, r30
/* 8058E424  48 00 02 55 */	bl lightInit__13daLv2Candle_cFv
/* 8058E428  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058E42C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8058E430  98 1E 06 FC */	stb r0, 0x6fc(r30)
/* 8058E434  88 1E 06 FC */	lbz r0, 0x6fc(r30)
/* 8058E438  28 00 00 0F */	cmplwi r0, 0xf
/* 8058E43C  40 82 00 0C */	bne lbl_8058E448
/* 8058E440  38 00 00 00 */	li r0, 0
/* 8058E444  98 1E 06 FC */	stb r0, 0x6fc(r30)
lbl_8058E448:
/* 8058E448  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 8058E44C  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8058E450  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 8058E454  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8058E458  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 8058E45C  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8058E460  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058E464  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 8058E468  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 8058E46C  28 00 00 FF */	cmplwi r0, 0xff
/* 8058E470  40 82 00 1C */	bne lbl_8058E48C
/* 8058E474  38 00 00 01 */	li r0, 1
/* 8058E478  98 1E 06 F9 */	stb r0, 0x6f9(r30)
/* 8058E47C  98 1E 06 25 */	stb r0, 0x625(r30)
/* 8058E480  7F C3 F3 78 */	mr r3, r30
/* 8058E484  48 00 02 9D */	bl setLight__13daLv2Candle_cFv
/* 8058E488  48 00 00 38 */	b lbl_8058E4C0
lbl_8058E48C:
/* 8058E48C  7F C3 F3 78 */	mr r3, r30
/* 8058E490  48 00 01 2D */	bl isSwitch__13daLv2Candle_cFv
/* 8058E494  98 7E 06 FA */	stb r3, 0x6fa(r30)
/* 8058E498  38 00 00 00 */	li r0, 0
/* 8058E49C  98 1E 06 F9 */	stb r0, 0x6f9(r30)
/* 8058E4A0  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 8058E4A4  28 00 00 00 */	cmplwi r0, 0
/* 8058E4A8  41 82 00 18 */	beq lbl_8058E4C0
/* 8058E4AC  38 00 00 01 */	li r0, 1
/* 8058E4B0  98 1E 06 F9 */	stb r0, 0x6f9(r30)
/* 8058E4B4  98 1E 06 25 */	stb r0, 0x625(r30)
/* 8058E4B8  7F C3 F3 78 */	mr r3, r30
/* 8058E4BC  48 00 02 65 */	bl setLight__13daLv2Candle_cFv
lbl_8058E4C0:
/* 8058E4C0  38 00 00 00 */	li r0, 0
/* 8058E4C4  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 8058E4C8  38 7E 07 3C */	addi r3, r30, 0x73c
/* 8058E4CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8058E4D0  38 A0 00 01 */	li r5, 1
/* 8058E4D4  81 9E 07 4C */	lwz r12, 0x74c(r30)
/* 8058E4D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8058E4DC  7D 89 03 A6 */	mtctr r12
/* 8058E4E0  4E 80 04 21 */	bctrl 
/* 8058E4E4  38 00 00 00 */	li r0, 0
/* 8058E4E8  98 1E 07 38 */	stb r0, 0x738(r30)
/* 8058E4EC  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8058E4F0  88 1E 06 FD */	lbz r0, 0x6fd(r30)
/* 8058E4F4  28 00 00 01 */	cmplwi r0, 1
/* 8058E4F8  40 82 00 18 */	bne lbl_8058E510
/* 8058E4FC  3C 60 80 59 */	lis r3, searchDemoTagAct__13daLv2Candle_cFPvPv@ha
/* 8058E500  38 63 E6 28 */	addi r3, r3, searchDemoTagAct__13daLv2Candle_cFPvPv@l
/* 8058E504  7F C4 F3 78 */	mr r4, r30
/* 8058E508  4B A8 B2 F0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8058E50C  90 7E 07 34 */	stw r3, 0x734(r30)
lbl_8058E510:
/* 8058E510  7F E3 FB 78 */	mr r3, r31
lbl_8058E514:
/* 8058E514  39 61 00 20 */	addi r11, r1, 0x20
/* 8058E518  4B DD 3D 10 */	b _restgpr_29
/* 8058E51C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058E520  7C 08 03 A6 */	mtlr r0
/* 8058E524  38 21 00 20 */	addi r1, r1, 0x20
/* 8058E528  4E 80 00 20 */	blr 
