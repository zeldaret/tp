lbl_80D242A8:
/* 80D242A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D242AC  7C 08 02 A6 */	mflr r0
/* 80D242B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D242B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D242B8  4B 63 DF 19 */	bl _savegpr_26
/* 80D242BC  7C 7D 1B 78 */	mr r29, r3
/* 80D242C0  3C 60 80 D2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D26C54@ha */
/* 80D242C4  3B C3 6C 54 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80D26C54@l */
/* 80D242C8  3C 60 80 D2 */	lis r3, l_midna_offset@ha /* 0x80D26B5C@ha */
/* 80D242CC  3B E3 6B 5C */	addi r31, r3, l_midna_offset@l /* 0x80D26B5C@l */
/* 80D242D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D242D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D242D8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D242DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D242E0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D242E4  7C 05 07 74 */	extsb r5, r0
/* 80D242E8  4B 31 10 79 */	bl isSwitch__10dSv_info_cCFii
/* 80D242EC  2C 03 00 00 */	cmpwi r3, 0
/* 80D242F0  41 82 00 20 */	beq lbl_80D24310
/* 80D242F4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D242F8  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 80D242FC  7F A3 EB 78 */	mr r3, r29
/* 80D24300  48 00 0F 3D */	bl setSmoke__14daObjVolcBom_cFv
/* 80D24304  7F A3 EB 78 */	mr r3, r29
/* 80D24308  48 00 0D 8D */	bl init_modeWait__14daObjVolcBom_cFv
/* 80D2430C  48 00 00 0C */	b lbl_80D24318
lbl_80D24310:
/* 80D24310  7F A3 EB 78 */	mr r3, r29
/* 80D24314  48 00 08 05 */	bl init_modeWaitAppear__14daObjVolcBom_cFv
lbl_80D24318:
/* 80D24318  7F A3 EB 78 */	mr r3, r29
/* 80D2431C  4B FF FE C5 */	bl initBaseMtx__14daObjVolcBom_cFv
/* 80D24320  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D24324  38 03 00 24 */	addi r0, r3, 0x24
/* 80D24328  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D2432C  38 7D 07 A4 */	addi r3, r29, 0x7a4
/* 80D24330  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D24334  FC 40 08 90 */	fmr f2, f1
/* 80D24338  4B 35 1C 21 */	bl SetWall__12dBgS_AcchCirFff
/* 80D2433C  38 00 00 00 */	li r0, 0
/* 80D24340  90 01 00 08 */	stw r0, 8(r1)
/* 80D24344  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 80D24348  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D2434C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D24350  7F A6 EB 78 */	mr r6, r29
/* 80D24354  38 E0 00 01 */	li r7, 1
/* 80D24358  39 1D 07 A4 */	addi r8, r29, 0x7a4
/* 80D2435C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D24360  39 40 00 00 */	li r10, 0
/* 80D24364  4B 35 1E E5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D24368  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80D2436C  38 80 00 FF */	li r4, 0xff
/* 80D24370  38 A0 00 FF */	li r5, 0xff
/* 80D24374  7F A6 EB 78 */	mr r6, r29
/* 80D24378  4B 35 F4 E9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D2437C  38 7D 08 20 */	addi r3, r29, 0x820
/* 80D24380  38 9E 00 2C */	addi r4, r30, 0x2c
/* 80D24384  4B 36 05 31 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D24388  38 1D 07 E4 */	addi r0, r29, 0x7e4
/* 80D2438C  90 1D 08 64 */	stw r0, 0x864(r29)
/* 80D24390  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D24394  80 83 00 04 */	lwz r4, 4(r3)
/* 80D24398  7F A3 EB 78 */	mr r3, r29
/* 80D2439C  4B 2F 61 DD */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D243A0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D243A4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80D243A8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D243AC  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80D243B0  38 00 00 36 */	li r0, 0x36
/* 80D243B4  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80D243B8  98 1D 05 47 */	stb r0, 0x547(r29)
/* 80D243BC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80D243C0  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80D243C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D243C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D243CC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D243D0  7F A4 EB 78 */	mr r4, r29
/* 80D243D4  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 80D243D8  38 C0 00 FF */	li r6, 0xff
/* 80D243DC  4B 32 33 7D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D243E0  B0 7D 09 F0 */	sth r3, 0x9f0(r29)
/* 80D243E4  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D243E8  80 63 00 04 */	lwz r3, 4(r3)
/* 80D243EC  83 63 00 54 */	lwz r27, 0x54(r3)
/* 80D243F0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80D243F4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80D243F8  B0 1D 0A 18 */	sth r0, 0xa18(r29)
/* 80D243FC  3B 40 00 00 */	li r26, 0
/* 80D24400  3C 60 80 D2 */	lis r3, d_a_obj_volcbom__stringBase0@ha /* 0x80D26C0C@ha */
/* 80D24404  3B 83 6C 0C */	addi r28, r3, d_a_obj_volcbom__stringBase0@l /* 0x80D26C0C@l */
/* 80D24408  48 00 00 2C */	b lbl_80D24434
lbl_80D2440C:
/* 80D2440C  7F 63 DB 78 */	mr r3, r27
/* 80D24410  7F 44 D3 78 */	mr r4, r26
/* 80D24414  4B 5B A6 E5 */	bl getName__10JUTNameTabCFUs
/* 80D24418  38 9C 00 26 */	addi r4, r28, 0x26
/* 80D2441C  4B 64 45 79 */	bl strcmp
/* 80D24420  2C 03 00 00 */	cmpwi r3, 0
/* 80D24424  40 82 00 0C */	bne lbl_80D24430
/* 80D24428  B3 5D 0A 18 */	sth r26, 0xa18(r29)
/* 80D2442C  48 00 00 20 */	b lbl_80D2444C
lbl_80D24430:
/* 80D24430  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D24434:
/* 80D24434  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D24438  80 63 00 04 */	lwz r3, 4(r3)
/* 80D2443C  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80D24440  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 80D24444  7C 00 18 40 */	cmplw r0, r3
/* 80D24448  41 80 FF C4 */	blt lbl_80D2440C
lbl_80D2444C:
/* 80D2444C  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D24450  80 83 00 04 */	lwz r4, 4(r3)
/* 80D24454  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80D24458  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D2445C  38 84 00 58 */	addi r4, r4, 0x58
/* 80D24460  4B 2E 92 79 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D24464  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D24468  81 83 00 00 */	lwz r12, 0(r3)
/* 80D2446C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D24470  7D 89 03 A6 */	mtctr r12
/* 80D24474  4E 80 04 21 */	bctrl 
/* 80D24478  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80D2447C  38 80 00 14 */	li r4, 0x14
/* 80D24480  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D24484  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D24488  3C A5 00 02 */	addis r5, r5, 2
/* 80D2448C  38 C0 00 80 */	li r6, 0x80
/* 80D24490  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D24494  4B 31 7E 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D24498  7C 65 1B 78 */	mr r5, r3
/* 80D2449C  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D244A0  80 83 00 04 */	lwz r4, 4(r3)
/* 80D244A4  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80D244A8  38 84 00 58 */	addi r4, r4, 0x58
/* 80D244AC  38 C0 00 00 */	li r6, 0
/* 80D244B0  38 E0 00 02 */	li r7, 2
/* 80D244B4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D244B8  39 00 00 00 */	li r8, 0
/* 80D244BC  39 20 FF FF */	li r9, -1
/* 80D244C0  4B 2E 91 7D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D244C4  38 60 00 01 */	li r3, 1
/* 80D244C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D244CC  4B 63 DD 51 */	bl _restgpr_26
/* 80D244D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D244D4  7C 08 03 A6 */	mtlr r0
/* 80D244D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D244DC  4E 80 00 20 */	blr 
