lbl_807CF7D8:
/* 807CF7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CF7DC  7C 08 02 A6 */	mflr r0
/* 807CF7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CF7E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CF7E8  93 C1 00 08 */	stw r30, 8(r1)
/* 807CF7EC  7C 7F 1B 78 */	mr r31, r3
/* 807CF7F0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 807CF7F4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 807CF7F8  2C 04 00 FF */	cmpwi r4, 0xff
/* 807CF7FC  41 82 00 28 */	beq lbl_807CF824
/* 807CF800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807CF804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807CF808  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807CF80C  7C 05 07 74 */	extsb r5, r0
/* 807CF810  4B 86 5B 50 */	b isSwitch__10dSv_info_cCFii
/* 807CF814  2C 03 00 00 */	cmpwi r3, 0
/* 807CF818  40 82 00 0C */	bne lbl_807CF824
/* 807CF81C  38 60 00 01 */	li r3, 1
/* 807CF820  48 00 00 84 */	b lbl_807CF8A4
lbl_807CF824:
/* 807CF824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807CF828  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 807CF82C  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 807CF830  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807CF834  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 807CF838  90 1E 00 48 */	stw r0, 0x48(r30)
/* 807CF83C  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 807CF840  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 807CF844  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 807CF848  80 83 00 04 */	lwz r4, 4(r3)
/* 807CF84C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 807CF850  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807CF854  38 84 00 58 */	addi r4, r4, 0x58
/* 807CF858  4B 83 DE 80 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 807CF85C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 807CF860  80 83 00 04 */	lwz r4, 4(r3)
/* 807CF864  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 807CF868  54 00 10 3A */	slwi r0, r0, 2
/* 807CF86C  7C 7F 02 14 */	add r3, r31, r0
/* 807CF870  80 63 05 7C */	lwz r3, 0x57c(r3)
/* 807CF874  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807CF878  38 84 00 58 */	addi r4, r4, 0x58
/* 807CF87C  4B 83 DF 2C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 807CF880  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 807CF884  4B 83 E4 40 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 807CF888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807CF88C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807CF890  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 807CF894  90 1E 00 48 */	stw r0, 0x48(r30)
/* 807CF898  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 807CF89C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 807CF8A0  38 60 00 01 */	li r3, 1
lbl_807CF8A4:
/* 807CF8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CF8A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CF8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CF8B0  7C 08 03 A6 */	mtlr r0
/* 807CF8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 807CF8B8  4E 80 00 20 */	blr 
