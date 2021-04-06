lbl_80D14584:
/* 80D14584  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D14588  7C 08 02 A6 */	mflr r0
/* 80D1458C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D14590  39 61 00 70 */	addi r11, r1, 0x70
/* 80D14594  4B 64 DC 49 */	bl _savegpr_29
/* 80D14598  7C 7F 1B 78 */	mr r31, r3
/* 80D1459C  3C 80 80 D1 */	lis r4, lit_3806@ha /* 0x80D155E8@ha */
/* 80D145A0  3B C4 55 E8 */	addi r30, r4, lit_3806@l /* 0x80D155E8@l */
/* 80D145A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D145A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D145AC  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80D145B0  7C 00 07 74 */	extsb r0, r0
/* 80D145B4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80D145B8  7C 84 02 14 */	add r4, r4, r0
/* 80D145BC  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 80D145C0  A8 03 63 50 */	lha r0, 0x6350(r3)
/* 80D145C4  2C 00 00 01 */	cmpwi r0, 1
/* 80D145C8  41 82 00 18 */	beq lbl_80D145E0
/* 80D145CC  40 80 00 08 */	bge lbl_80D145D4
/* 80D145D0  48 00 01 B0 */	b lbl_80D14780
lbl_80D145D4:
/* 80D145D4  2C 00 00 03 */	cmpwi r0, 3
/* 80D145D8  40 80 01 A8 */	bge lbl_80D14780
/* 80D145DC  48 00 00 60 */	b lbl_80D1463C
lbl_80D145E0:
/* 80D145E0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D145E4  28 00 00 02 */	cmplwi r0, 2
/* 80D145E8  41 82 00 28 */	beq lbl_80D14610
/* 80D145EC  38 80 00 02 */	li r4, 2
/* 80D145F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80D145F4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80D145F8  38 C0 00 00 */	li r6, 0
/* 80D145FC  4B 30 73 0D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80D14600  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D14604  60 00 00 02 */	ori r0, r0, 2
/* 80D14608  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80D1460C  48 00 01 EC */	b lbl_80D147F8
lbl_80D14610:
/* 80D14610  38 7D 02 48 */	addi r3, r29, 0x248
/* 80D14614  4B 44 CE BD */	bl Stop__9dCamera_cFv
/* 80D14618  38 00 00 02 */	li r0, 2
/* 80D1461C  B0 1F 63 50 */	sth r0, 0x6350(r31)
/* 80D14620  38 00 00 00 */	li r0, 0
/* 80D14624  B0 1F 63 52 */	sth r0, 0x6352(r31)
/* 80D14628  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80D1462C  D0 1F 63 6C */	stfs f0, 0x636c(r31)
/* 80D14630  38 7D 02 48 */	addi r3, r29, 0x248
/* 80D14634  38 80 00 03 */	li r4, 3
/* 80D14638  4B 44 E9 D5 */	bl SetTrimSize__9dCamera_cFl
lbl_80D1463C:
/* 80D1463C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D14640  D0 1F 63 60 */	stfs f0, 0x6360(r31)
/* 80D14644  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D14648  D0 1F 63 64 */	stfs f0, 0x6364(r31)
/* 80D1464C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D14650  D0 1F 63 68 */	stfs f0, 0x6368(r31)
/* 80D14654  C0 3F 63 64 */	lfs f1, 0x6364(r31)
/* 80D14658  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80D1465C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D14660  D0 1F 63 64 */	stfs f0, 0x6364(r31)
/* 80D14664  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D14668  D0 1F 63 54 */	stfs f0, 0x6354(r31)
/* 80D1466C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D14670  D0 1F 63 58 */	stfs f0, 0x6358(r31)
/* 80D14674  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D14678  D0 1F 63 5C */	stfs f0, 0x635c(r31)
/* 80D1467C  C0 3F 63 54 */	lfs f1, 0x6354(r31)
/* 80D14680  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80D14684  EC 01 00 2A */	fadds f0, f1, f0
/* 80D14688  D0 1F 63 54 */	stfs f0, 0x6354(r31)
/* 80D1468C  C0 3F 63 58 */	lfs f1, 0x6358(r31)
/* 80D14690  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80D14694  EC 01 00 2A */	fadds f0, f1, f0
/* 80D14698  D0 1F 63 58 */	stfs f0, 0x6358(r31)
/* 80D1469C  C0 3F 63 5C */	lfs f1, 0x635c(r31)
/* 80D146A0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D146A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80D146A8  D0 1F 63 5C */	stfs f0, 0x635c(r31)
/* 80D146AC  38 7F 63 6C */	addi r3, r31, 0x636c
/* 80D146B0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80D146B4  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80D146B8  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80D146BC  4B 55 B3 81 */	bl cLib_addCalc2__FPffff
/* 80D146C0  A8 1F 63 52 */	lha r0, 0x6352(r31)
/* 80D146C4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80D146C8  40 82 00 40 */	bne lbl_80D14708
/* 80D146CC  38 00 00 0C */	li r0, 0xc
/* 80D146D0  90 01 00 08 */	stw r0, 8(r1)
/* 80D146D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D146D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D146DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D146E0  38 81 00 08 */	addi r4, r1, 8
/* 80D146E4  38 A0 00 00 */	li r5, 0
/* 80D146E8  38 C0 00 00 */	li r6, 0
/* 80D146EC  38 E0 00 00 */	li r7, 0
/* 80D146F0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D146F4  FC 40 08 90 */	fmr f2, f1
/* 80D146F8  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80D146FC  FC 80 18 90 */	fmr f4, f3
/* 80D14700  39 00 00 00 */	li r8, 0
/* 80D14704  4B 59 72 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D14708:
/* 80D14708  A8 1F 63 52 */	lha r0, 0x6352(r31)
/* 80D1470C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80D14710  40 82 00 70 */	bne lbl_80D14780
/* 80D14714  C0 1F 63 60 */	lfs f0, 0x6360(r31)
/* 80D14718  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D1471C  C0 1F 63 64 */	lfs f0, 0x6364(r31)
/* 80D14720  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D14724  C0 1F 63 68 */	lfs f0, 0x6368(r31)
/* 80D14728  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D1472C  C0 1F 63 54 */	lfs f0, 0x6354(r31)
/* 80D14730  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D14734  C0 1F 63 58 */	lfs f0, 0x6358(r31)
/* 80D14738  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D1473C  C0 1F 63 5C */	lfs f0, 0x635c(r31)
/* 80D14740  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D14744  38 7D 02 48 */	addi r3, r29, 0x248
/* 80D14748  38 81 00 30 */	addi r4, r1, 0x30
/* 80D1474C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80D14750  4B 46 C4 C9 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80D14754  38 7D 02 48 */	addi r3, r29, 0x248
/* 80D14758  4B 44 CD 55 */	bl Start__9dCamera_cFv
/* 80D1475C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80D14760  38 80 00 00 */	li r4, 0
/* 80D14764  4B 44 E8 A9 */	bl SetTrimSize__9dCamera_cFl
/* 80D14768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1476C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D14770  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D14774  4B 32 DC F5 */	bl reset__14dEvt_control_cFv
/* 80D14778  38 00 00 00 */	li r0, 0
/* 80D1477C  B0 1F 63 50 */	sth r0, 0x6350(r31)
lbl_80D14780:
/* 80D14780  A8 1F 63 50 */	lha r0, 0x6350(r31)
/* 80D14784  2C 00 00 00 */	cmpwi r0, 0
/* 80D14788  41 82 00 70 */	beq lbl_80D147F8
/* 80D1478C  C0 BF 63 60 */	lfs f5, 0x6360(r31)
/* 80D14790  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 80D14794  C0 9F 63 64 */	lfs f4, 0x6364(r31)
/* 80D14798  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80D1479C  C0 7F 63 68 */	lfs f3, 0x6368(r31)
/* 80D147A0  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80D147A4  C0 5F 63 54 */	lfs f2, 0x6354(r31)
/* 80D147A8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80D147AC  C0 3F 63 58 */	lfs f1, 0x6358(r31)
/* 80D147B0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D147B4  C0 1F 63 5C */	lfs f0, 0x635c(r31)
/* 80D147B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D147BC  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80D147C0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80D147C4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80D147C8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80D147CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D147D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D147D4  38 7D 02 48 */	addi r3, r29, 0x248
/* 80D147D8  38 81 00 18 */	addi r4, r1, 0x18
/* 80D147DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80D147E0  C0 3F 63 6C */	lfs f1, 0x636c(r31)
/* 80D147E4  38 C0 00 00 */	li r6, 0
/* 80D147E8  4B 46 C2 F9 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80D147EC  A8 7F 63 52 */	lha r3, 0x6352(r31)
/* 80D147F0  38 03 00 01 */	addi r0, r3, 1
/* 80D147F4  B0 1F 63 52 */	sth r0, 0x6352(r31)
lbl_80D147F8:
/* 80D147F8  39 61 00 70 */	addi r11, r1, 0x70
/* 80D147FC  4B 64 DA 2D */	bl _restgpr_29
/* 80D14800  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D14804  7C 08 03 A6 */	mtlr r0
/* 80D14808  38 21 00 70 */	addi r1, r1, 0x70
/* 80D1480C  4E 80 00 20 */	blr 
