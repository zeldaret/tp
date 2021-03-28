lbl_80A815D4:
/* 80A815D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A815D8  7C 08 02 A6 */	mflr r0
/* 80A815DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A815E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A815E4  4B 8E 0B F0 */	b _savegpr_27
/* 80A815E8  7C 7C 1B 78 */	mr r28, r3
/* 80A815EC  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha
/* 80A815F0  3B E4 32 AC */	addi r31, r4, m__17daNpcMoiR_Param_c@l
/* 80A815F4  80 A3 05 68 */	lwz r5, 0x568(r3)
/* 80A815F8  80 85 00 04 */	lwz r4, 4(r5)
/* 80A815FC  83 C4 00 04 */	lwz r30, 4(r4)
/* 80A81600  83 A5 00 08 */	lwz r29, 8(r5)
/* 80A81604  88 03 0E 0B */	lbz r0, 0xe0b(r3)
/* 80A81608  28 00 00 00 */	cmplwi r0, 0
/* 80A8160C  40 82 01 48 */	bne lbl_80A81754
/* 80A81610  3C 80 80 A8 */	lis r4, l_arcNames@ha
/* 80A81614  3B 64 3A F8 */	addi r27, r4, l_arcNames@l
/* 80A81618  80 9B 00 04 */	lwz r4, 4(r27)
/* 80A8161C  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A81620  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A81624  80 A5 01 68 */	lwz r5, 0x168(r5)
/* 80A81628  4B 6D 15 04 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A8162C  7C 1D 18 40 */	cmplw r29, r3
/* 80A81630  40 82 00 40 */	bne lbl_80A81670
/* 80A81634  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A81638  38 63 00 0C */	addi r3, r3, 0xc
/* 80A8163C  C0 3F 05 64 */	lfs f1, 0x564(r31)
/* 80A81640  4B 8A 6D EC */	b checkPass__12J3DFrameCtrlFf
/* 80A81644  2C 03 00 00 */	cmpwi r3, 0
/* 80A81648  41 82 02 54 */	beq lbl_80A8189C
/* 80A8164C  38 00 00 00 */	li r0, 0
/* 80A81650  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A81654  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A81658  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A8165C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A81660  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A81664  60 00 00 01 */	ori r0, r0, 1
/* 80A81668  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A8166C  48 00 02 30 */	b lbl_80A8189C
lbl_80A81670:
/* 80A81670  7F 83 E3 78 */	mr r3, r28
/* 80A81674  80 9B 00 04 */	lwz r4, 4(r27)
/* 80A81678  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A8167C  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A81680  80 A5 01 74 */	lwz r5, 0x174(r5)
/* 80A81684  4B 6D 14 A8 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A81688  7C 1D 18 40 */	cmplw r29, r3
/* 80A8168C  40 82 00 28 */	bne lbl_80A816B4
/* 80A81690  38 00 00 00 */	li r0, 0
/* 80A81694  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A81698  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A8169C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A816A0  80 63 00 08 */	lwz r3, 8(r3)
/* 80A816A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A816A8  60 00 00 01 */	ori r0, r0, 1
/* 80A816AC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A816B0  48 00 01 EC */	b lbl_80A8189C
lbl_80A816B4:
/* 80A816B4  7F 83 E3 78 */	mr r3, r28
/* 80A816B8  80 9B 00 04 */	lwz r4, 4(r27)
/* 80A816BC  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A816C0  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A816C4  80 A5 01 80 */	lwz r5, 0x180(r5)
/* 80A816C8  4B 6D 14 64 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A816CC  7C 1D 18 40 */	cmplw r29, r3
/* 80A816D0  40 82 00 28 */	bne lbl_80A816F8
/* 80A816D4  38 00 00 00 */	li r0, 0
/* 80A816D8  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A816DC  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A816E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A816E4  80 63 00 08 */	lwz r3, 8(r3)
/* 80A816E8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A816EC  60 00 00 01 */	ori r0, r0, 1
/* 80A816F0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A816F4  48 00 01 A8 */	b lbl_80A8189C
lbl_80A816F8:
/* 80A816F8  7F 83 E3 78 */	mr r3, r28
/* 80A816FC  80 9B 00 04 */	lwz r4, 4(r27)
/* 80A81700  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A81704  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A81708  80 A5 01 8C */	lwz r5, 0x18c(r5)
/* 80A8170C  4B 6D 14 20 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A81710  7C 1D 18 40 */	cmplw r29, r3
/* 80A81714  40 82 01 88 */	bne lbl_80A8189C
/* 80A81718  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A8171C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A81720  C0 3F 05 68 */	lfs f1, 0x568(r31)
/* 80A81724  4B 8A 6D 08 */	b checkPass__12J3DFrameCtrlFf
/* 80A81728  2C 03 00 00 */	cmpwi r3, 0
/* 80A8172C  41 82 01 70 */	beq lbl_80A8189C
/* 80A81730  38 00 00 01 */	li r0, 1
/* 80A81734  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A81738  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A8173C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A81740  80 63 00 08 */	lwz r3, 8(r3)
/* 80A81744  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A81748  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A8174C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A81750  48 00 01 4C */	b lbl_80A8189C
lbl_80A81754:
/* 80A81754  28 00 00 01 */	cmplwi r0, 1
/* 80A81758  40 82 01 44 */	bne lbl_80A8189C
/* 80A8175C  3C 80 80 A8 */	lis r4, l_arcNames@ha
/* 80A81760  3B 64 3A F8 */	addi r27, r4, l_arcNames@l
/* 80A81764  80 9B 00 08 */	lwz r4, 8(r27)
/* 80A81768  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A8176C  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A81770  80 A5 01 20 */	lwz r5, 0x120(r5)
/* 80A81774  4B 6D 13 B8 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A81778  7C 1D 18 40 */	cmplw r29, r3
/* 80A8177C  40 82 00 40 */	bne lbl_80A817BC
/* 80A81780  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A81784  38 63 00 0C */	addi r3, r3, 0xc
/* 80A81788  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
/* 80A8178C  4B 8A 6C A0 */	b checkPass__12J3DFrameCtrlFf
/* 80A81790  2C 03 00 00 */	cmpwi r3, 0
/* 80A81794  41 82 01 08 */	beq lbl_80A8189C
/* 80A81798  38 00 00 00 */	li r0, 0
/* 80A8179C  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A817A0  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A817A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A817A8  80 63 00 08 */	lwz r3, 8(r3)
/* 80A817AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A817B0  60 00 00 01 */	ori r0, r0, 1
/* 80A817B4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A817B8  48 00 00 E4 */	b lbl_80A8189C
lbl_80A817BC:
/* 80A817BC  7F 83 E3 78 */	mr r3, r28
/* 80A817C0  80 9B 00 08 */	lwz r4, 8(r27)
/* 80A817C4  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A817C8  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A817CC  80 A5 01 2C */	lwz r5, 0x12c(r5)
/* 80A817D0  4B 6D 13 5C */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A817D4  7C 1D 18 40 */	cmplw r29, r3
/* 80A817D8  40 82 00 28 */	bne lbl_80A81800
/* 80A817DC  38 00 00 00 */	li r0, 0
/* 80A817E0  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A817E4  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A817E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A817EC  80 63 00 08 */	lwz r3, 8(r3)
/* 80A817F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A817F4  60 00 00 01 */	ori r0, r0, 1
/* 80A817F8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A817FC  48 00 00 A0 */	b lbl_80A8189C
lbl_80A81800:
/* 80A81800  7F 83 E3 78 */	mr r3, r28
/* 80A81804  80 9B 00 08 */	lwz r4, 8(r27)
/* 80A81808  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A8180C  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A81810  80 A5 01 38 */	lwz r5, 0x138(r5)
/* 80A81814  4B 6D 13 18 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A81818  7C 1D 18 40 */	cmplw r29, r3
/* 80A8181C  40 82 00 28 */	bne lbl_80A81844
/* 80A81820  38 00 00 00 */	li r0, 0
/* 80A81824  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A81828  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A8182C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A81830  80 63 00 08 */	lwz r3, 8(r3)
/* 80A81834  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A81838  60 00 00 01 */	ori r0, r0, 1
/* 80A8183C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80A81840  48 00 00 5C */	b lbl_80A8189C
lbl_80A81844:
/* 80A81844  7F 83 E3 78 */	mr r3, r28
/* 80A81848  80 9B 00 08 */	lwz r4, 8(r27)
/* 80A8184C  3C A0 80 A8 */	lis r5, l_bckGetParamList@ha
/* 80A81850  38 A5 38 D0 */	addi r5, r5, l_bckGetParamList@l
/* 80A81854  80 A5 01 44 */	lwz r5, 0x144(r5)
/* 80A81858  4B 6D 12 D4 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A8185C  7C 1D 18 40 */	cmplw r29, r3
/* 80A81860  40 82 00 3C */	bne lbl_80A8189C
/* 80A81864  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A81868  38 63 00 0C */	addi r3, r3, 0xc
/* 80A8186C  C0 3F 05 6C */	lfs f1, 0x56c(r31)
/* 80A81870  4B 8A 6B BC */	b checkPass__12J3DFrameCtrlFf
/* 80A81874  2C 03 00 00 */	cmpwi r3, 0
/* 80A81878  41 82 00 24 */	beq lbl_80A8189C
/* 80A8187C  38 00 00 01 */	li r0, 1
/* 80A81880  98 1C 0E 0A */	stb r0, 0xe0a(r28)
/* 80A81884  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80A81888  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A8188C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A81890  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A81894  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A81898  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80A8189C:
/* 80A8189C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A818A0  4B 8E 09 80 */	b _restgpr_27
/* 80A818A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A818A8  7C 08 03 A6 */	mtlr r0
/* 80A818AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A818B0  4E 80 00 20 */	blr 
