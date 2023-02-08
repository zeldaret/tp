lbl_80B83548:
/* 80B83548  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B8354C  7C 08 02 A6 */	mflr r0
/* 80B83550  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B83554  39 61 00 30 */	addi r11, r1, 0x30
/* 80B83558  4B 7D EC 7D */	bl _savegpr_27
/* 80B8355C  7C 7C 1B 78 */	mr r28, r3
/* 80B83560  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B8CE90@ha */
/* 80B83564  3B C4 CE 90 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B8CE90@l */
/* 80B83568  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B8356C  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B83570  3B A0 00 00 */	li r29, 0
/* 80B83574  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B83578  2C 00 00 02 */	cmpwi r0, 2
/* 80B8357C  41 82 00 64 */	beq lbl_80B835E0
/* 80B83580  40 80 02 4C */	bge lbl_80B837CC
/* 80B83584  2C 00 00 00 */	cmpwi r0, 0
/* 80B83588  41 82 00 0C */	beq lbl_80B83594
/* 80B8358C  48 00 02 40 */	b lbl_80B837CC
/* 80B83590  48 00 02 3C */	b lbl_80B837CC
lbl_80B83594:
/* 80B83594  80 1C 09 54 */	lwz r0, 0x954(r28)
/* 80B83598  2C 00 00 00 */	cmpwi r0, 0
/* 80B8359C  40 82 02 30 */	bne lbl_80B837CC
/* 80B835A0  38 80 00 14 */	li r4, 0x14
/* 80B835A4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B835A8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B835AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B835B0  7D 89 03 A6 */	mtctr r12
/* 80B835B4  4E 80 04 21 */	bctrl 
/* 80B835B8  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B835BC  38 00 00 00 */	li r0, 0
/* 80B835C0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80B835C4  38 00 00 02 */	li r0, 2
/* 80B835C8  B0 1C 14 E6 */	sth r0, 0x14e6(r28)
/* 80B835CC  7F 83 E3 78 */	mr r3, r28
/* 80B835D0  38 A0 00 00 */	li r5, 0
/* 80B835D4  4B 5D 07 49 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B835D8  38 00 00 00 */	li r0, 0
/* 80B835DC  90 1C 15 58 */	stw r0, 0x1558(r28)
lbl_80B835E0:
/* 80B835E0  80 1C 15 58 */	lwz r0, 0x1558(r28)
/* 80B835E4  2C 00 00 01 */	cmpwi r0, 1
/* 80B835E8  41 82 01 60 */	beq lbl_80B83748
/* 80B835EC  40 80 01 E0 */	bge lbl_80B837CC
/* 80B835F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B835F4  40 80 00 08 */	bge lbl_80B835FC
/* 80B835F8  48 00 01 D4 */	b lbl_80B837CC
lbl_80B835FC:
/* 80B835FC  7F 83 E3 78 */	mr r3, r28
/* 80B83600  4B FF ED 01 */	bl calcModulation__11daNpc_zrA_cFv
/* 80B83604  88 1C 09 EA */	lbz r0, 0x9ea(r28)
/* 80B83608  28 00 00 00 */	cmplwi r0, 0
/* 80B8360C  41 82 00 0C */	beq lbl_80B83618
/* 80B83610  3B A0 00 01 */	li r29, 1
/* 80B83614  48 00 00 70 */	b lbl_80B83684
lbl_80B83618:
/* 80B83618  7F 83 E3 78 */	mr r3, r28
/* 80B8361C  38 80 00 00 */	li r4, 0
/* 80B83620  4B FF B0 D5 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B83624  7F 83 E3 78 */	mr r3, r28
/* 80B83628  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8362C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B83630  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B83634  4B 49 70 DD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B83638  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B8363C  7C 60 07 34 */	extsh r0, r3
/* 80B83640  7C 04 00 00 */	cmpw r4, r0
/* 80B83644  40 82 00 0C */	bne lbl_80B83650
/* 80B83648  3B A0 00 01 */	li r29, 1
/* 80B8364C  48 00 00 38 */	b lbl_80B83684
lbl_80B83650:
/* 80B83650  7F 83 E3 78 */	mr r3, r28
/* 80B83654  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B83658  4B 49 70 B9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B8365C  7C 64 1B 78 */	mr r4, r3
/* 80B83660  7F 83 E3 78 */	mr r3, r28
/* 80B83664  38 A0 FF FF */	li r5, -1
/* 80B83668  38 C0 FF FF */	li r6, -1
/* 80B8366C  38 E0 00 0F */	li r7, 0xf
/* 80B83670  4B 5D 0A 35 */	bl step__8daNpcF_cFsiii
/* 80B83674  2C 03 00 00 */	cmpwi r3, 0
/* 80B83678  41 82 00 0C */	beq lbl_80B83684
/* 80B8367C  38 00 00 00 */	li r0, 0
/* 80B83680  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80B83684:
/* 80B83684  2C 1D 00 00 */	cmpwi r29, 0
/* 80B83688  41 82 01 44 */	beq lbl_80B837CC
/* 80B8368C  7F 83 E3 78 */	mr r3, r28
/* 80B83690  38 80 00 00 */	li r4, 0
/* 80B83694  38 A0 00 01 */	li r5, 1
/* 80B83698  38 C0 00 00 */	li r6, 0
/* 80B8369C  4B 5D 06 E9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B836A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B836A4  41 82 01 28 */	beq lbl_80B837CC
/* 80B836A8  A0 1C 0A 32 */	lhz r0, 0xa32(r28)
/* 80B836AC  7C 00 07 35 */	extsh. r0, r0
/* 80B836B0  40 82 00 50 */	bne lbl_80B83700
/* 80B836B4  38 00 00 01 */	li r0, 1
/* 80B836B8  90 1C 15 58 */	stw r0, 0x1558(r28)
/* 80B836BC  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B836C0  B0 1C 15 36 */	sth r0, 0x1536(r28)
/* 80B836C4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B836C8  B0 1C 15 38 */	sth r0, 0x1538(r28)
/* 80B836CC  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B836D0  B0 1C 15 3A */	sth r0, 0x153a(r28)
/* 80B836D4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B836D8  D0 1C 15 28 */	stfs f0, 0x1528(r28)
/* 80B836DC  C0 3C 15 28 */	lfs f1, 0x1528(r28)
/* 80B836E0  38 7F 00 00 */	addi r3, r31, 0
/* 80B836E4  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B836E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B836EC  D0 1C 15 24 */	stfs f0, 0x1524(r28)
/* 80B836F0  7F 83 E3 78 */	mr r3, r28
/* 80B836F4  38 80 00 00 */	li r4, 0
/* 80B836F8  4B FF AF FD */	bl setLookMode__11daNpc_zrA_cFi
/* 80B836FC  48 00 00 D0 */	b lbl_80B837CC
lbl_80B83700:
/* 80B83700  38 00 00 03 */	li r0, 3
/* 80B83704  B0 1C 14 E6 */	sth r0, 0x14e6(r28)
/* 80B83708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8370C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B83710  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B83714  4B 4B ED 55 */	bl reset__14dEvt_control_cFv
/* 80B83718  80 7E 08 D8 */	lwz r3, 0x8d8(r30)
/* 80B8371C  80 1E 08 DC */	lwz r0, 0x8dc(r30)
/* 80B83720  90 61 00 08 */	stw r3, 8(r1)
/* 80B83724  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B83728  80 1E 08 E0 */	lwz r0, 0x8e0(r30)
/* 80B8372C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B83730  7F 83 E3 78 */	mr r3, r28
/* 80B83734  38 81 00 08 */	addi r4, r1, 8
/* 80B83738  4B FF A3 E9 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B8373C  38 00 00 00 */	li r0, 0
/* 80B83740  98 1C 09 EC */	stb r0, 0x9ec(r28)
/* 80B83744  48 00 00 88 */	b lbl_80B837CC
lbl_80B83748:
/* 80B83748  38 00 00 03 */	li r0, 3
/* 80B8374C  B0 1C 14 E6 */	sth r0, 0x14e6(r28)
/* 80B83750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B83754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B83758  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B8375C  4B 4B ED 0D */	bl reset__14dEvt_control_cFv
/* 80B83760  38 00 00 01 */	li r0, 1
/* 80B83764  98 1C 15 94 */	stb r0, 0x1594(r28)
/* 80B83768  4B 61 C3 51 */	bl dKy_daynight_check__Fv
/* 80B8376C  2C 03 00 00 */	cmpwi r3, 0
/* 80B83770  40 82 00 10 */	bne lbl_80B83780
/* 80B83774  38 00 00 06 */	li r0, 6
/* 80B83778  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 80B8377C  48 00 00 0C */	b lbl_80B83788
lbl_80B83780:
/* 80B83780  38 00 00 07 */	li r0, 7
/* 80B83784  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
lbl_80B83788:
/* 80B83788  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80B8378C  54 06 18 38 */	slwi r6, r0, 3
/* 80B83790  7F 83 E3 78 */	mr r3, r28
/* 80B83794  38 BE 02 CC */	addi r5, r30, 0x2cc
/* 80B83798  7C 85 32 14 */	add r4, r5, r6
/* 80B8379C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B837A0  54 00 10 3A */	slwi r0, r0, 2
/* 80B837A4  38 9E 04 70 */	addi r4, r30, 0x470
/* 80B837A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B837AC  7C 05 30 2E */	lwzx r0, r5, r6
/* 80B837B0  54 00 10 3A */	slwi r0, r0, 2
/* 80B837B4  38 BE 03 34 */	addi r5, r30, 0x334
/* 80B837B8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B837BC  38 C0 00 01 */	li r6, 1
/* 80B837C0  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B837C4  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B837C8  4B 5D 01 8D */	bl changeEvent__8daNpcF_cFPcPcUsUs
lbl_80B837CC:
/* 80B837CC  38 60 00 00 */	li r3, 0
/* 80B837D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B837D4  4B 7D EA 4D */	bl _restgpr_27
/* 80B837D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B837DC  7C 08 03 A6 */	mtlr r0
/* 80B837E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B837E4  4E 80 00 20 */	blr 
