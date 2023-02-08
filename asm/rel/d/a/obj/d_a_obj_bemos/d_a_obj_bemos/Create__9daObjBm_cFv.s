lbl_80BAE778:
/* 80BAE778  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BAE77C  7C 08 02 A6 */	mflr r0
/* 80BAE780  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BAE784  39 61 00 40 */	addi r11, r1, 0x40
/* 80BAE788  4B 7B 3A 3D */	bl _savegpr_23
/* 80BAE78C  7C 7A 1B 78 */	mr r26, r3
/* 80BAE790  3C 60 80 BB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BB3A74@ha */
/* 80BAE794  3B E3 3A 74 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BB3A74@l */
/* 80BAE798  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAE79C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BAE7A0  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80BAE7A4  38 7A 07 E4 */	addi r3, r26, 0x7e4
/* 80BAE7A8  38 80 00 FF */	li r4, 0xff
/* 80BAE7AC  38 A0 00 FF */	li r5, 0xff
/* 80BAE7B0  7F 46 D3 78 */	mr r6, r26
/* 80BAE7B4  4B 4D 50 AD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BAE7B8  38 7A 08 20 */	addi r3, r26, 0x820
/* 80BAE7BC  38 9F 00 68 */	addi r4, r31, 0x68
/* 80BAE7C0  4B 4D 62 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BAE7C4  38 1A 07 E4 */	addi r0, r26, 0x7e4
/* 80BAE7C8  90 1A 08 64 */	stw r0, 0x864(r26)
/* 80BAE7CC  38 7A 09 58 */	addi r3, r26, 0x958
/* 80BAE7D0  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80BAE7D4  4B 4D 5F FD */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80BAE7D8  3B 3A 07 E4 */	addi r25, r26, 0x7e4
/* 80BAE7DC  93 3A 09 9C */	stw r25, 0x99c(r26)
/* 80BAE7E0  3B 60 00 00 */	li r27, 0
/* 80BAE7E4  3B 00 00 00 */	li r24, 0
lbl_80BAE7E8:
/* 80BAE7E8  7E FA C2 14 */	add r23, r26, r24
/* 80BAE7EC  38 77 0A 9C */	addi r3, r23, 0xa9c
/* 80BAE7F0  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 80BAE7F4  4B 4D 60 C1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BAE7F8  93 37 0A E0 */	stw r25, 0xae0(r23)
/* 80BAE7FC  3B 7B 00 01 */	addi r27, r27, 1
/* 80BAE800  2C 1B 00 04 */	cmpwi r27, 4
/* 80BAE804  3B 18 01 3C */	addi r24, r24, 0x13c
/* 80BAE808  41 80 FF E0 */	blt lbl_80BAE7E8
/* 80BAE80C  7F 43 D3 78 */	mr r3, r26
/* 80BAE810  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BAE814  38 9F 00 50 */	addi r4, r31, 0x50
/* 80BAE818  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BAE81C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BAE820  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BAE824  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BAE828  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BAE82C  4B 46 BD 1D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BAE830  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAE834  80 63 00 04 */	lwz r3, 4(r3)
/* 80BAE838  82 E3 00 54 */	lwz r23, 0x54(r3)
/* 80BAE83C  3B 80 00 00 */	li r28, 0
/* 80BAE840  3B 20 00 00 */	li r25, 0
/* 80BAE844  3B 00 00 00 */	li r24, 0
/* 80BAE848  3B DF 00 3C */	addi r30, r31, 0x3c
lbl_80BAE84C:
/* 80BAE84C  3B 60 00 00 */	li r27, 0
/* 80BAE850  3B B9 0F 8C */	addi r29, r25, 0xf8c
/* 80BAE854  48 00 00 48 */	b lbl_80BAE89C
lbl_80BAE858:
/* 80BAE858  7E E3 BB 78 */	mr r3, r23
/* 80BAE85C  7F 64 DB 78 */	mr r4, r27
/* 80BAE860  4B 73 02 99 */	bl getName__10JUTNameTabCFUs
/* 80BAE864  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80BAE868  4B 7B A1 2D */	bl strcmp
/* 80BAE86C  2C 03 00 00 */	cmpwi r3, 0
/* 80BAE870  40 82 00 28 */	bne lbl_80BAE898
/* 80BAE874  7F 7A EB 2E */	sthx r27, r26, r29
/* 80BAE878  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAE87C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BAE880  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BAE884  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80BAE888  7C 83 00 2E */	lwzx r4, r3, r0
/* 80BAE88C  3C 60 80 BB */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80BAE4A8@ha */
/* 80BAE890  38 03 E4 A8 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l /* 0x80BAE4A8@l */
/* 80BAE894  90 04 00 04 */	stw r0, 4(r4)
lbl_80BAE898:
/* 80BAE898  3B 7B 00 01 */	addi r27, r27, 1
lbl_80BAE89C:
/* 80BAE89C  80 9A 05 A8 */	lwz r4, 0x5a8(r26)
/* 80BAE8A0  80 64 00 04 */	lwz r3, 4(r4)
/* 80BAE8A4  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80BAE8A8  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80BAE8AC  7C 00 18 40 */	cmplw r0, r3
/* 80BAE8B0  41 80 FF A8 */	blt lbl_80BAE858
/* 80BAE8B4  3B 9C 00 01 */	addi r28, r28, 1
/* 80BAE8B8  2C 1C 00 05 */	cmpwi r28, 5
/* 80BAE8BC  3B 39 00 02 */	addi r25, r25, 2
/* 80BAE8C0  3B 18 00 04 */	addi r24, r24, 4
/* 80BAE8C4  41 80 FF 88 */	blt lbl_80BAE84C
/* 80BAE8C8  93 44 00 14 */	stw r26, 0x14(r4)
/* 80BAE8CC  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAE8D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80BAE8D4  82 E3 00 64 */	lwz r23, 0x64(r3)
/* 80BAE8D8  3B 00 00 00 */	li r24, 0
/* 80BAE8DC  48 00 00 3C */	b lbl_80BAE918
lbl_80BAE8E0:
/* 80BAE8E0  7E E3 BB 78 */	mr r3, r23
/* 80BAE8E4  7F 04 C3 78 */	mr r4, r24
/* 80BAE8E8  4B 73 02 11 */	bl getName__10JUTNameTabCFUs
/* 80BAE8EC  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80BAE8F0  4B 7B A0 A5 */	bl strcmp
/* 80BAE8F4  2C 03 00 00 */	cmpwi r3, 0
/* 80BAE8F8  40 82 00 1C */	bne lbl_80BAE914
/* 80BAE8FC  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAE900  80 63 00 04 */	lwz r3, 4(r3)
/* 80BAE904  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80BAE908  57 00 13 BA */	rlwinm r0, r24, 2, 0xe, 0x1d
/* 80BAE90C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80BAE910  90 1A 0F B4 */	stw r0, 0xfb4(r26)
lbl_80BAE914:
/* 80BAE914  3B 18 00 01 */	addi r24, r24, 1
lbl_80BAE918:
/* 80BAE918  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAE91C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BAE920  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 80BAE924  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 80BAE928  7C 00 18 40 */	cmplw r0, r3
/* 80BAE92C  41 80 FF B4 */	blt lbl_80BAE8E0
/* 80BAE930  38 7A 10 60 */	addi r3, r26, 0x1060
/* 80BAE934  38 9A 10 48 */	addi r4, r26, 0x1048
/* 80BAE938  38 A0 00 01 */	li r5, 1
/* 80BAE93C  81 9A 10 70 */	lwz r12, 0x1070(r26)
/* 80BAE940  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BAE944  7D 89 03 A6 */	mtctr r12
/* 80BAE948  4E 80 04 21 */	bctrl 
/* 80BAE94C  38 7A 10 80 */	addi r3, r26, 0x1080
/* 80BAE950  38 9A 10 54 */	addi r4, r26, 0x1054
/* 80BAE954  38 A0 00 01 */	li r5, 1
/* 80BAE958  81 9A 10 90 */	lwz r12, 0x1090(r26)
/* 80BAE95C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BAE960  7D 89 03 A6 */	mtctr r12
/* 80BAE964  4E 80 04 21 */	bctrl 
/* 80BAE968  38 00 00 01 */	li r0, 1
/* 80BAE96C  98 1A 10 39 */	stb r0, 0x1039(r26)
/* 80BAE970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAE974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAE978  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80BAE97C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80BAE980  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80BAE984  7C 05 07 74 */	extsb r5, r0
/* 80BAE988  4B 48 69 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80BAE98C  2C 03 00 00 */	cmpwi r3, 0
/* 80BAE990  41 82 00 54 */	beq lbl_80BAE9E4
/* 80BAE994  38 00 00 00 */	li r0, 0
/* 80BAE998  98 1A 0F F7 */	stb r0, 0xff7(r26)
/* 80BAE99C  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80BAE9A0  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80BAE9A4  28 00 00 01 */	cmplwi r0, 1
/* 80BAE9A8  41 82 00 30 */	beq lbl_80BAE9D8
/* 80BAE9AC  80 9A 05 C8 */	lwz r4, 0x5c8(r26)
/* 80BAE9B0  A8 04 00 08 */	lha r0, 8(r4)
/* 80BAE9B4  3C 60 80 BB */	lis r3, lit_4106@ha /* 0x80BB3828@ha */
/* 80BAE9B8  C8 23 38 28 */	lfd f1, lit_4106@l(r3)  /* 0x80BB3828@l */
/* 80BAE9BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAE9C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAE9C4  3C 00 43 30 */	lis r0, 0x4330
/* 80BAE9C8  90 01 00 08 */	stw r0, 8(r1)
/* 80BAE9CC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BAE9D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAE9D4  D0 04 00 10 */	stfs f0, 0x10(r4)
lbl_80BAE9D8:
/* 80BAE9D8  7F 43 D3 78 */	mr r3, r26
/* 80BAE9DC  48 00 09 A1 */	bl initActionObjBemos__9daObjBm_cFv
/* 80BAE9E0  48 00 00 D8 */	b lbl_80BAEAB8
lbl_80BAE9E4:
/* 80BAE9E4  7F 43 D3 78 */	mr r3, r26
/* 80BAE9E8  48 00 09 41 */	bl initActionEnBemos__9daObjBm_cFv
/* 80BAE9EC  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80BAE9F0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BAE9F4  28 04 00 FF */	cmplwi r4, 0xff
/* 80BAE9F8  41 82 00 34 */	beq lbl_80BAEA2C
/* 80BAE9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAEA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAEA04  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80BAEA08  7C 05 07 74 */	extsb r5, r0
/* 80BAEA0C  4B 48 69 55 */	bl isSwitch__10dSv_info_cCFii
/* 80BAEA10  2C 03 00 00 */	cmpwi r3, 0
/* 80BAEA14  40 82 00 18 */	bne lbl_80BAEA2C
/* 80BAEA18  38 00 00 00 */	li r0, 0
/* 80BAEA1C  98 1A 0F F7 */	stb r0, 0xff7(r26)
/* 80BAEA20  7F 43 D3 78 */	mr r3, r26
/* 80BAEA24  48 00 27 71 */	bl initActionSwWait__9daObjBm_cFv
/* 80BAEA28  48 00 00 90 */	b lbl_80BAEAB8
lbl_80BAEA2C:
/* 80BAEA2C  38 00 00 01 */	li r0, 1
/* 80BAEA30  98 1A 0F F7 */	stb r0, 0xff7(r26)
/* 80BAEA34  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80BAEA38  38 80 00 14 */	li r4, 0x14
/* 80BAEA3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAEA40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAEA44  3C A5 00 02 */	addis r5, r5, 2
/* 80BAEA48  38 C0 00 80 */	li r6, 0x80
/* 80BAEA4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BAEA50  4B 48 D8 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEA54  7C 65 1B 78 */	mr r5, r3
/* 80BAEA58  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80BAEA5C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BAEA60  80 7A 05 AC */	lwz r3, 0x5ac(r26)
/* 80BAEA64  38 84 00 58 */	addi r4, r4, 0x58
/* 80BAEA68  38 C0 00 01 */	li r6, 1
/* 80BAEA6C  38 E0 00 02 */	li r7, 2
/* 80BAEA70  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAEA74  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BAEA78  39 00 00 00 */	li r8, 0
/* 80BAEA7C  39 20 FF FF */	li r9, -1
/* 80BAEA80  4B 45 EC 8D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BAEA84  80 9A 05 B0 */	lwz r4, 0x5b0(r26)
/* 80BAEA88  A8 04 00 08 */	lha r0, 8(r4)
/* 80BAEA8C  3C 60 80 BB */	lis r3, lit_4106@ha /* 0x80BB3828@ha */
/* 80BAEA90  C8 23 38 28 */	lfd f1, lit_4106@l(r3)  /* 0x80BB3828@l */
/* 80BAEA94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAEA98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAEA9C  3C 00 43 30 */	lis r0, 0x4330
/* 80BAEAA0  90 01 00 08 */	stw r0, 8(r1)
/* 80BAEAA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BAEAA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAEAAC  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80BAEAB0  7F 43 D3 78 */	mr r3, r26
/* 80BAEAB4  48 00 2A 15 */	bl initActionWarning__9daObjBm_cFv
lbl_80BAEAB8:
/* 80BAEAB8  7F 43 D3 78 */	mr r3, r26
/* 80BAEABC  4B FF FB 41 */	bl initBaseMtx__9daObjBm_cFv
/* 80BAEAC0  38 60 00 01 */	li r3, 1
/* 80BAEAC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BAEAC8  4B 7B 37 49 */	bl _restgpr_23
/* 80BAEACC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BAEAD0  7C 08 03 A6 */	mtlr r0
/* 80BAEAD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BAEAD8  4E 80 00 20 */	blr 
