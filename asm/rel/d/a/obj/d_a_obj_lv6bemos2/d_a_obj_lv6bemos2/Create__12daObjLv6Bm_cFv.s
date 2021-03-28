lbl_80C7E448:
/* 80C7E448  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7E44C  7C 08 02 A6 */	mflr r0
/* 80C7E450  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7E454  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7E458  4B 6E 3D 6C */	b _savegpr_23
/* 80C7E45C  7C 7A 1B 78 */	mr r26, r3
/* 80C7E460  3C 60 80 C8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C7E464  3B E3 1D 04 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C7E468  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E46C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C7E470  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80C7E474  38 7A 05 C4 */	addi r3, r26, 0x5c4
/* 80C7E478  38 80 00 FF */	li r4, 0xff
/* 80C7E47C  38 A0 00 FF */	li r5, 0xff
/* 80C7E480  7F 46 D3 78 */	mr r6, r26
/* 80C7E484  4B 40 53 DC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C7E488  38 7A 06 00 */	addi r3, r26, 0x600
/* 80C7E48C  38 9F 00 68 */	addi r4, r31, 0x68
/* 80C7E490  4B 40 65 A4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C7E494  38 1A 05 C4 */	addi r0, r26, 0x5c4
/* 80C7E498  90 1A 06 44 */	stw r0, 0x644(r26)
/* 80C7E49C  38 7A 07 38 */	addi r3, r26, 0x738
/* 80C7E4A0  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80C7E4A4  4B 40 63 2C */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80C7E4A8  38 1A 05 C4 */	addi r0, r26, 0x5c4
/* 80C7E4AC  90 1A 07 7C */	stw r0, 0x77c(r26)
/* 80C7E4B0  38 7A 08 7C */	addi r3, r26, 0x87c
/* 80C7E4B4  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 80C7E4B8  4B 40 63 FC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C7E4BC  38 1A 05 C4 */	addi r0, r26, 0x5c4
/* 80C7E4C0  90 1A 08 C0 */	stw r0, 0x8c0(r26)
/* 80C7E4C4  7F 43 D3 78 */	mr r3, r26
/* 80C7E4C8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C7E4CC  38 9F 00 50 */	addi r4, r31, 0x50
/* 80C7E4D0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C7E4D4  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C7E4D8  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C7E4DC  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C7E4E0  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C7E4E4  4B 39 C0 64 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C7E4E8  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E4EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7E4F0  82 E3 00 54 */	lwz r23, 0x54(r3)
/* 80C7E4F4  3B 80 00 00 */	li r28, 0
/* 80C7E4F8  3B 20 00 00 */	li r25, 0
/* 80C7E4FC  3B 00 00 00 */	li r24, 0
/* 80C7E500  3B DF 00 3C */	addi r30, r31, 0x3c
lbl_80C7E504:
/* 80C7E504  3B 60 00 00 */	li r27, 0
/* 80C7E508  3B B9 09 B8 */	addi r29, r25, 0x9b8
/* 80C7E50C  48 00 00 48 */	b lbl_80C7E554
lbl_80C7E510:
/* 80C7E510  7E E3 BB 78 */	mr r3, r23
/* 80C7E514  7F 64 DB 78 */	mr r4, r27
/* 80C7E518  4B 66 05 E0 */	b getName__10JUTNameTabCFUs
/* 80C7E51C  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80C7E520  4B 6E A4 74 */	b strcmp
/* 80C7E524  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E528  40 82 00 28 */	bne lbl_80C7E550
/* 80C7E52C  7F 7A EB 2E */	sthx r27, r26, r29
/* 80C7E530  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E534  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7E538  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C7E53C  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80C7E540  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C7E544  3C 60 80 C8 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80C7E548  38 03 E1 B8 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 80C7E54C  90 04 00 04 */	stw r0, 4(r4)
lbl_80C7E550:
/* 80C7E550  3B 7B 00 01 */	addi r27, r27, 1
lbl_80C7E554:
/* 80C7E554  80 9A 05 A8 */	lwz r4, 0x5a8(r26)
/* 80C7E558  80 64 00 04 */	lwz r3, 4(r4)
/* 80C7E55C  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80C7E560  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80C7E564  7C 00 18 40 */	cmplw r0, r3
/* 80C7E568  41 80 FF A8 */	blt lbl_80C7E510
/* 80C7E56C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C7E570  2C 1C 00 05 */	cmpwi r28, 5
/* 80C7E574  3B 39 00 02 */	addi r25, r25, 2
/* 80C7E578  3B 18 00 04 */	addi r24, r24, 4
/* 80C7E57C  41 80 FF 88 */	blt lbl_80C7E504
/* 80C7E580  93 44 00 14 */	stw r26, 0x14(r4)
/* 80C7E584  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E588  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7E58C  82 E3 00 64 */	lwz r23, 0x64(r3)
/* 80C7E590  3B 00 00 00 */	li r24, 0
/* 80C7E594  48 00 00 3C */	b lbl_80C7E5D0
lbl_80C7E598:
/* 80C7E598  7E E3 BB 78 */	mr r3, r23
/* 80C7E59C  7F 04 C3 78 */	mr r4, r24
/* 80C7E5A0  4B 66 05 58 */	b getName__10JUTNameTabCFUs
/* 80C7E5A4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80C7E5A8  4B 6E A3 EC */	b strcmp
/* 80C7E5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E5B0  40 82 00 1C */	bne lbl_80C7E5CC
/* 80C7E5B4  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E5B8  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7E5BC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C7E5C0  57 00 13 BA */	rlwinm r0, r24, 2, 0xe, 0x1d
/* 80C7E5C4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C7E5C8  90 1A 09 E0 */	stw r0, 0x9e0(r26)
lbl_80C7E5CC:
/* 80C7E5CC  3B 18 00 01 */	addi r24, r24, 1
lbl_80C7E5D0:
/* 80C7E5D0  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E5D4  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7E5D8  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 80C7E5DC  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 80C7E5E0  7C 00 18 40 */	cmplw r0, r3
/* 80C7E5E4  41 80 FF B4 */	blt lbl_80C7E598
/* 80C7E5E8  38 7A 0A 7C */	addi r3, r26, 0xa7c
/* 80C7E5EC  38 9A 0A 64 */	addi r4, r26, 0xa64
/* 80C7E5F0  38 A0 00 01 */	li r5, 1
/* 80C7E5F4  81 9A 0A 8C */	lwz r12, 0xa8c(r26)
/* 80C7E5F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C7E5FC  7D 89 03 A6 */	mtctr r12
/* 80C7E600  4E 80 04 21 */	bctrl 
/* 80C7E604  38 7A 0A 9C */	addi r3, r26, 0xa9c
/* 80C7E608  38 9A 0A 70 */	addi r4, r26, 0xa70
/* 80C7E60C  38 A0 00 01 */	li r5, 1
/* 80C7E610  81 9A 0A AC */	lwz r12, 0xaac(r26)
/* 80C7E614  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C7E618  7D 89 03 A6 */	mtctr r12
/* 80C7E61C  4E 80 04 21 */	bctrl 
/* 80C7E620  38 00 00 01 */	li r0, 1
/* 80C7E624  98 1A 0A 19 */	stb r0, 0xa19(r26)
/* 80C7E628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7E62C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7E630  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C7E634  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C7E638  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80C7E63C  7C 05 07 74 */	extsb r5, r0
/* 80C7E640  4B 3B 6D 20 */	b isSwitch__10dSv_info_cCFii
/* 80C7E644  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E648  41 82 00 18 */	beq lbl_80C7E660
/* 80C7E64C  38 00 00 00 */	li r0, 0
/* 80C7E650  98 1A 0A 1B */	stb r0, 0xa1b(r26)
/* 80C7E654  7F 43 D3 78 */	mr r3, r26
/* 80C7E658  48 00 2D D1 */	bl initActionEnd__12daObjLv6Bm_cFv
/* 80C7E65C  48 00 00 D0 */	b lbl_80C7E72C
lbl_80C7E660:
/* 80C7E660  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C7E664  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C7E668  28 04 00 FF */	cmplwi r4, 0xff
/* 80C7E66C  41 82 00 34 */	beq lbl_80C7E6A0
/* 80C7E670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7E674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7E678  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80C7E67C  7C 05 07 74 */	extsb r5, r0
/* 80C7E680  4B 3B 6C E0 */	b isSwitch__10dSv_info_cCFii
/* 80C7E684  2C 03 00 00 */	cmpwi r3, 0
/* 80C7E688  40 82 00 18 */	bne lbl_80C7E6A0
/* 80C7E68C  38 00 00 00 */	li r0, 0
/* 80C7E690  98 1A 0A 1B */	stb r0, 0xa1b(r26)
/* 80C7E694  7F 43 D3 78 */	mr r3, r26
/* 80C7E698  48 00 18 E1 */	bl initActionSwWait__12daObjLv6Bm_cFv
/* 80C7E69C  48 00 00 90 */	b lbl_80C7E72C
lbl_80C7E6A0:
/* 80C7E6A0  38 00 00 01 */	li r0, 1
/* 80C7E6A4  98 1A 0A 1B */	stb r0, 0xa1b(r26)
/* 80C7E6A8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80C7E6AC  38 80 00 15 */	li r4, 0x15
/* 80C7E6B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C7E6B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C7E6B8  3C A5 00 02 */	addis r5, r5, 2
/* 80C7E6BC  38 C0 00 80 */	li r6, 0x80
/* 80C7E6C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C7E6C4  4B 3B DC 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7E6C8  7C 65 1B 78 */	mr r5, r3
/* 80C7E6CC  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E6D0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7E6D4  80 7A 05 AC */	lwz r3, 0x5ac(r26)
/* 80C7E6D8  38 84 00 58 */	addi r4, r4, 0x58
/* 80C7E6DC  38 C0 00 01 */	li r6, 1
/* 80C7E6E0  38 E0 00 02 */	li r7, 2
/* 80C7E6E4  3D 00 80 C8 */	lis r8, lit_3855@ha
/* 80C7E6E8  C0 28 1C 48 */	lfs f1, lit_3855@l(r8)
/* 80C7E6EC  39 00 00 00 */	li r8, 0
/* 80C7E6F0  39 20 FF FF */	li r9, -1
/* 80C7E6F4  4B 38 F0 18 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C7E6F8  80 9A 05 B0 */	lwz r4, 0x5b0(r26)
/* 80C7E6FC  A8 04 00 08 */	lha r0, 8(r4)
/* 80C7E700  3C 60 80 C8 */	lis r3, lit_4012@ha
/* 80C7E704  C8 23 1C 4C */	lfd f1, lit_4012@l(r3)
/* 80C7E708  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C7E70C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7E710  3C 00 43 30 */	lis r0, 0x4330
/* 80C7E714  90 01 00 08 */	stw r0, 8(r1)
/* 80C7E718  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7E71C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C7E720  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80C7E724  7F 43 D3 78 */	mr r3, r26
/* 80C7E728  48 00 1B 85 */	bl initActionWarning__12daObjLv6Bm_cFv
lbl_80C7E72C:
/* 80C7E72C  7F 43 D3 78 */	mr r3, r26
/* 80C7E730  4B FF FB DD */	bl initBaseMtx__12daObjLv6Bm_cFv
/* 80C7E734  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80C7E738  81 83 00 00 */	lwz r12, 0(r3)
/* 80C7E73C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C7E740  7D 89 03 A6 */	mtctr r12
/* 80C7E744  4E 80 04 21 */	bctrl 
/* 80C7E748  38 60 00 01 */	li r3, 1
/* 80C7E74C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7E750  4B 6E 3A C0 */	b _restgpr_23
/* 80C7E754  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7E758  7C 08 03 A6 */	mtlr r0
/* 80C7E75C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7E760  4E 80 00 20 */	blr 
