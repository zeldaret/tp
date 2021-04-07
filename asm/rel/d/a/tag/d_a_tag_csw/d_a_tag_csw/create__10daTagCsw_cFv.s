lbl_80D573C0:
/* 80D573C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D573C4  7C 08 02 A6 */	mflr r0
/* 80D573C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D573CC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D573D0  4B 60 AD F9 */	bl _savegpr_24
/* 80D573D4  7C 7C 1B 78 */	mr r28, r3
/* 80D573D8  3C 80 80 D6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80D58628@ha */
/* 80D573DC  3B C4 86 28 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80D58628@l */
/* 80D573E0  3C 80 80 D6 */	lis r4, l_bmd_idx@ha /* 0x80D585B8@ha */
/* 80D573E4  3B E4 85 B8 */	addi r31, r4, l_bmd_idx@l /* 0x80D585B8@l */
/* 80D573E8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D573EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D573F0  40 82 00 FC */	bne lbl_80D574EC
/* 80D573F4  7F 80 E3 79 */	or. r0, r28, r28
/* 80D573F8  41 82 00 E8 */	beq lbl_80D574E0
/* 80D573FC  7C 1D 03 78 */	mr r29, r0
/* 80D57400  4B 2C 17 65 */	bl __ct__10fopAc_ac_cFv
/* 80D57404  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D57408  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D5740C  90 1D 06 44 */	stw r0, 0x644(r29)
/* 80D57410  38 7D 06 48 */	addi r3, r29, 0x648
/* 80D57414  4B 32 C3 4D */	bl __ct__10dCcD_GSttsFv
/* 80D57418  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D5741C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D57420  90 7D 06 44 */	stw r3, 0x644(r29)
/* 80D57424  38 03 00 20 */	addi r0, r3, 0x20
/* 80D57428  90 1D 06 48 */	stw r0, 0x648(r29)
/* 80D5742C  3B 1D 06 68 */	addi r24, r29, 0x668
/* 80D57430  7F 03 C3 78 */	mr r3, r24
/* 80D57434  4B 32 C5 F5 */	bl __ct__12dCcD_GObjInfFv
/* 80D57438  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D5743C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D57440  90 18 01 20 */	stw r0, 0x120(r24)
/* 80D57444  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D58748@ha */
/* 80D57448  38 03 87 48 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D58748@l */
/* 80D5744C  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80D57450  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D58754@ha */
/* 80D57454  38 03 87 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D58754@l */
/* 80D57458  90 18 01 38 */	stw r0, 0x138(r24)
/* 80D5745C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D57460  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D57464  90 78 01 20 */	stw r3, 0x120(r24)
/* 80D57468  3B 63 00 58 */	addi r27, r3, 0x58
/* 80D5746C  93 78 01 38 */	stw r27, 0x138(r24)
/* 80D57470  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D57474  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D57478  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80D5747C  3B 43 00 2C */	addi r26, r3, 0x2c
/* 80D57480  93 58 01 20 */	stw r26, 0x120(r24)
/* 80D57484  3B 23 00 84 */	addi r25, r3, 0x84
/* 80D57488  93 38 01 38 */	stw r25, 0x138(r24)
/* 80D5748C  3B 1D 07 A4 */	addi r24, r29, 0x7a4
/* 80D57490  7F 03 C3 78 */	mr r3, r24
/* 80D57494  4B 32 C5 95 */	bl __ct__12dCcD_GObjInfFv
/* 80D57498  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D5749C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D574A0  90 18 01 20 */	stw r0, 0x120(r24)
/* 80D574A4  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D58748@ha */
/* 80D574A8  38 03 87 48 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D58748@l */
/* 80D574AC  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80D574B0  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D58754@ha */
/* 80D574B4  38 03 87 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D58754@l */
/* 80D574B8  90 18 01 38 */	stw r0, 0x138(r24)
/* 80D574BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D574C0  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D574C4  90 18 01 20 */	stw r0, 0x120(r24)
/* 80D574C8  93 78 01 38 */	stw r27, 0x138(r24)
/* 80D574CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D574D0  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D574D4  90 18 00 3C */	stw r0, 0x3c(r24)
/* 80D574D8  93 58 01 20 */	stw r26, 0x120(r24)
/* 80D574DC  93 38 01 38 */	stw r25, 0x138(r24)
lbl_80D574E0:
/* 80D574E0  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80D574E4  60 00 00 08 */	ori r0, r0, 8
/* 80D574E8  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80D574EC:
/* 80D574EC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D574F0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80D574F4  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80D574F8  7F 83 E3 78 */	mr r3, r28
/* 80D574FC  28 1C 00 00 */	cmplwi r28, 0
/* 80D57500  41 82 00 08 */	beq lbl_80D57508
/* 80D57504  38 7C 05 68 */	addi r3, r28, 0x568
lbl_80D57508:
/* 80D57508  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80D5750C  4B 2D 59 B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D57510  7C 7D 1B 78 */	mr r29, r3
/* 80D57514  2C 1D 00 04 */	cmpwi r29, 4
/* 80D57518  40 82 01 A0 */	bne lbl_80D576B8
/* 80D5751C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80D57520  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D57524  90 1C 08 E4 */	stw r0, 0x8e4(r28)
/* 80D57528  38 00 00 00 */	li r0, 0
/* 80D5752C  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 80D57530  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D57534  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 80D57538  D0 1C 06 28 */	stfs f0, 0x628(r28)
/* 80D5753C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80D57540  2C 00 00 00 */	cmpwi r0, 0
/* 80D57544  40 82 00 10 */	bne lbl_80D57554
/* 80D57548  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D5754C  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 80D57550  48 00 00 84 */	b lbl_80D575D4
lbl_80D57554:
/* 80D57554  7F 83 E3 78 */	mr r3, r28
/* 80D57558  4B FF FD C9 */	bl chkInsideStatueStart__10daTagCsw_cFv
/* 80D5755C  2C 03 00 00 */	cmpwi r3, 0
/* 80D57560  41 82 00 3C */	beq lbl_80D5759C
/* 80D57564  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D57568  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 80D5756C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D57570  D0 1C 06 28 */	stfs f0, 0x628(r28)
/* 80D57574  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D57578  54 04 BE 3E */	rlwinm r4, r0, 0x17, 0x18, 0x1f
/* 80D5757C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D57580  41 82 00 54 */	beq lbl_80D575D4
/* 80D57584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5758C  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D57590  7C 05 07 74 */	extsb r5, r0
/* 80D57594  4B 2D DC 6D */	bl onSwitch__10dSv_info_cFii
/* 80D57598  48 00 00 3C */	b lbl_80D575D4
lbl_80D5759C:
/* 80D5759C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D575A0  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D575A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D575A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D575AC  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D575B0  7C 05 07 74 */	extsb r5, r0
/* 80D575B4  4B 2D DD AD */	bl isSwitch__10dSv_info_cCFii
/* 80D575B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D575BC  40 82 00 10 */	bne lbl_80D575CC
/* 80D575C0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D575C4  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 80D575C8  48 00 00 0C */	b lbl_80D575D4
lbl_80D575CC:
/* 80D575CC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D575D0  D0 1C 06 24 */	stfs f0, 0x624(r28)
lbl_80D575D4:
/* 80D575D4  7F 83 E3 78 */	mr r3, r28
/* 80D575D8  3C 80 80 D5 */	lis r4, daTagCsw_c_createHeap__FP10fopAc_ac_c@ha /* 0x80D57300@ha */
/* 80D575DC  38 84 73 00 */	addi r4, r4, daTagCsw_c_createHeap__FP10fopAc_ac_c@l /* 0x80D57300@l */
/* 80D575E0  38 A0 4E 00 */	li r5, 0x4e00
/* 80D575E4  4B 2C 2E CD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D575E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D575EC  40 82 00 0C */	bne lbl_80D575F8
/* 80D575F0  38 60 00 05 */	li r3, 5
/* 80D575F4  48 00 00 C8 */	b lbl_80D576BC
lbl_80D575F8:
/* 80D575F8  38 00 00 00 */	li r0, 0
/* 80D575FC  98 1C 08 E0 */	stb r0, 0x8e0(r28)
/* 80D57600  7F 83 E3 78 */	mr r3, r28
/* 80D57604  48 00 03 A5 */	bl offLight__10daTagCsw_cFv
/* 80D57608  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80D5760C  2C 00 00 01 */	cmpwi r0, 1
/* 80D57610  40 82 00 1C */	bne lbl_80D5762C
/* 80D57614  7F 83 E3 78 */	mr r3, r28
/* 80D57618  4B FF FD 09 */	bl chkInsideStatueStart__10daTagCsw_cFv
/* 80D5761C  2C 03 00 00 */	cmpwi r3, 0
/* 80D57620  41 82 00 0C */	beq lbl_80D5762C
/* 80D57624  7F 83 E3 78 */	mr r3, r28
/* 80D57628  48 00 03 41 */	bl onLight__10daTagCsw_cFv
lbl_80D5762C:
/* 80D5762C  38 1C 05 8C */	addi r0, r28, 0x58c
/* 80D57630  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80D57634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5763C  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80D57640  7F 23 CB 78 */	mr r3, r25
/* 80D57644  80 9C 05 84 */	lwz r4, 0x584(r28)
/* 80D57648  7F 85 E3 78 */	mr r5, r28
/* 80D5764C  4B 31 D3 BD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D57650  80 9C 05 F0 */	lwz r4, 0x5f0(r28)
/* 80D57654  28 04 00 00 */	cmplwi r4, 0
/* 80D57658  41 82 00 10 */	beq lbl_80D57668
/* 80D5765C  7F 23 CB 78 */	mr r3, r25
/* 80D57660  7F 85 E3 78 */	mr r5, r28
/* 80D57664  4B 31 D3 A5 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D57668:
/* 80D57668  38 7C 06 2C */	addi r3, r28, 0x62c
/* 80D5766C  38 80 00 FF */	li r4, 0xff
/* 80D57670  38 A0 00 00 */	li r5, 0
/* 80D57674  7F 86 E3 78 */	mr r6, r28
/* 80D57678  4B 32 C1 E9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D5767C  38 7C 06 68 */	addi r3, r28, 0x668
/* 80D57680  38 9E 00 24 */	addi r4, r30, 0x24
/* 80D57684  4B 32 D2 31 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D57688  38 1C 06 2C */	addi r0, r28, 0x62c
/* 80D5768C  90 1C 06 AC */	stw r0, 0x6ac(r28)
/* 80D57690  38 7C 07 A4 */	addi r3, r28, 0x7a4
/* 80D57694  38 9E 00 68 */	addi r4, r30, 0x68
/* 80D57698  4B 32 D2 1D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D5769C  38 1C 06 2C */	addi r0, r28, 0x62c
/* 80D576A0  90 1C 07 E8 */	stw r0, 0x7e8(r28)
/* 80D576A4  38 00 00 00 */	li r0, 0
/* 80D576A8  98 1C 08 F4 */	stb r0, 0x8f4(r28)
/* 80D576AC  B0 1C 08 E2 */	sth r0, 0x8e2(r28)
/* 80D576B0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D576B4  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
lbl_80D576B8:
/* 80D576B8  7F A3 EB 78 */	mr r3, r29
lbl_80D576BC:
/* 80D576BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D576C0  4B 60 AB 55 */	bl _restgpr_24
/* 80D576C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D576C8  7C 08 03 A6 */	mtlr r0
/* 80D576CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80D576D0  4E 80 00 20 */	blr 
