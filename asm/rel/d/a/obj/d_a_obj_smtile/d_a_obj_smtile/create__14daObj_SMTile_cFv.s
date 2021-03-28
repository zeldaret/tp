lbl_80CDD3E8:
/* 80CDD3E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDD3EC  7C 08 02 A6 */	mflr r0
/* 80CDD3F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDD3F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDD3F8  4B 68 4D E4 */	b _savegpr_29
/* 80CDD3FC  7C 7F 1B 78 */	mr r31, r3
/* 80CDD400  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDD404  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDD408  40 82 00 B0 */	bne lbl_80CDD4B8
/* 80CDD40C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CDD410  41 82 00 9C */	beq lbl_80CDD4AC
/* 80CDD414  7C 1E 03 78 */	mr r30, r0
/* 80CDD418  4B 33 B7 4C */	b __ct__10fopAc_ac_cFv
/* 80CDD41C  3C 60 80 CE */	lis r3, __vt__14daObj_SMTile_c@ha
/* 80CDD420  38 03 E4 54 */	addi r0, r3, __vt__14daObj_SMTile_c@l
/* 80CDD424  90 1E 0B 2C */	stw r0, 0xb2c(r30)
/* 80CDD428  3B BE 05 68 */	addi r29, r30, 0x568
/* 80CDD42C  3C 60 80 CE */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CDD430  38 03 E4 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CDD434  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CDD438  7F A3 EB 78 */	mr r3, r29
/* 80CDD43C  38 80 00 00 */	li r4, 0
/* 80CDD440  4B 64 AF BC */	b init__12J3DFrameCtrlFs
/* 80CDD444  38 00 00 00 */	li r0, 0
/* 80CDD448  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80CDD44C  38 7E 05 90 */	addi r3, r30, 0x590
/* 80CDD450  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha
/* 80CDD454  38 84 D5 80 */	addi r4, r4, __ct__4cXyzFv@l
/* 80CDD458  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha
/* 80CDD45C  38 A5 D3 AC */	addi r5, r5, __dt__4cXyzFv@l
/* 80CDD460  38 C0 00 0C */	li r6, 0xc
/* 80CDD464  38 E0 00 15 */	li r7, 0x15
/* 80CDD468  4B 68 48 F8 */	b __construct_array
/* 80CDD46C  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80CDD470  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha
/* 80CDD474  38 84 D5 80 */	addi r4, r4, __ct__4cXyzFv@l
/* 80CDD478  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha
/* 80CDD47C  38 A5 D3 AC */	addi r5, r5, __dt__4cXyzFv@l
/* 80CDD480  38 C0 00 0C */	li r6, 0xc
/* 80CDD484  38 E0 00 15 */	li r7, 0x15
/* 80CDD488  4B 68 48 D8 */	b __construct_array
/* 80CDD48C  38 7E 07 88 */	addi r3, r30, 0x788
/* 80CDD490  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha
/* 80CDD494  38 84 D5 80 */	addi r4, r4, __ct__4cXyzFv@l
/* 80CDD498  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha
/* 80CDD49C  38 A5 D3 AC */	addi r5, r5, __dt__4cXyzFv@l
/* 80CDD4A0  38 C0 00 0C */	li r6, 0xc
/* 80CDD4A4  38 E0 00 2A */	li r7, 0x2a
/* 80CDD4A8  4B 68 48 B8 */	b __construct_array
lbl_80CDD4AC:
/* 80CDD4AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CDD4B0  60 00 00 08 */	ori r0, r0, 8
/* 80CDD4B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CDD4B8:
/* 80CDD4B8  38 00 00 00 */	li r0, 0
/* 80CDD4BC  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 80CDD4C0  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CDD4C4  3C 80 80 CE */	lis r4, l_bmdData@ha
/* 80CDD4C8  38 84 E3 94 */	addi r4, r4, l_bmdData@l
/* 80CDD4CC  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 80CDD4D0  54 00 18 38 */	slwi r0, r0, 3
/* 80CDD4D4  7C 84 02 14 */	add r4, r4, r0
/* 80CDD4D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80CDD4DC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDD4E0  3C 80 80 CE */	lis r4, l_resNameList@ha
/* 80CDD4E4  38 84 E3 9C */	addi r4, r4, l_resNameList@l
/* 80CDD4E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDD4EC  4B 34 F9 D0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CDD4F0  7C 7E 1B 78 */	mr r30, r3
/* 80CDD4F4  2C 1E 00 04 */	cmpwi r30, 4
/* 80CDD4F8  40 82 00 6C */	bne lbl_80CDD564
/* 80CDD4FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDD500  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CDD504  28 04 00 FF */	cmplwi r4, 0xff
/* 80CDD508  41 82 00 28 */	beq lbl_80CDD530
/* 80CDD50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDD510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDD514  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDD518  7C 05 07 74 */	extsb r5, r0
/* 80CDD51C  4B 35 7E 44 */	b isSwitch__10dSv_info_cCFii
/* 80CDD520  2C 03 00 00 */	cmpwi r3, 0
/* 80CDD524  41 82 00 0C */	beq lbl_80CDD530
/* 80CDD528  38 60 00 05 */	li r3, 5
/* 80CDD52C  48 00 00 3C */	b lbl_80CDD568
lbl_80CDD530:
/* 80CDD530  7F E3 FB 78 */	mr r3, r31
/* 80CDD534  3C 80 80 CE */	lis r4, createHeapCallBack__14daObj_SMTile_cFP10fopAc_ac_c@ha
/* 80CDD538  38 84 DB 28 */	addi r4, r4, createHeapCallBack__14daObj_SMTile_cFP10fopAc_ac_c@l
/* 80CDD53C  38 A0 08 00 */	li r5, 0x800
/* 80CDD540  4B 33 CF 70 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CDD544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDD548  40 82 00 0C */	bne lbl_80CDD554
/* 80CDD54C  38 60 00 05 */	li r3, 5
/* 80CDD550  48 00 00 18 */	b lbl_80CDD568
lbl_80CDD554:
/* 80CDD554  38 00 00 01 */	li r0, 1
/* 80CDD558  98 1F 0B 2B */	stb r0, 0xb2b(r31)
/* 80CDD55C  7F E3 FB 78 */	mr r3, r31
/* 80CDD560  48 00 01 BD */	bl Execute__14daObj_SMTile_cFv
lbl_80CDD564:
/* 80CDD564  7F C3 F3 78 */	mr r3, r30
lbl_80CDD568:
/* 80CDD568  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDD56C  4B 68 4C BC */	b _restgpr_29
/* 80CDD570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDD574  7C 08 03 A6 */	mtlr r0
/* 80CDD578  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDD57C  4E 80 00 20 */	blr 
