lbl_807B7454:
/* 807B7454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B7458  7C 08 02 A6 */	mflr r0
/* 807B745C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B7460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B7464  7C 7F 1B 78 */	mr r31, r3
/* 807B7468  88 03 1A 8D */	lbz r0, 0x1a8d(r3)
/* 807B746C  7C 00 07 74 */	extsb r0, r0
/* 807B7470  2C 00 00 01 */	cmpwi r0, 1
/* 807B7474  41 82 00 18 */	beq lbl_807B748C
/* 807B7478  40 80 00 08 */	bge lbl_807B7480
/* 807B747C  48 00 00 AC */	b lbl_807B7528
lbl_807B7480:
/* 807B7480  2C 00 00 03 */	cmpwi r0, 3
/* 807B7484  40 80 00 A4 */	bge lbl_807B7528
/* 807B7488  48 00 00 38 */	b lbl_807B74C0
lbl_807B748C:
/* 807B748C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807B7490  38 80 00 42 */	li r4, 0x42
/* 807B7494  38 A0 FF FF */	li r5, -1
/* 807B7498  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807B749C  7C 06 07 74 */	extsb r6, r0
/* 807B74A0  38 E0 00 00 */	li r7, 0
/* 807B74A4  39 00 00 00 */	li r8, 0
/* 807B74A8  4B 86 47 CC */	b fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 807B74AC  3C 80 80 7C */	lis r4, demo_id@ha
/* 807B74B0  90 64 80 E4 */	stw r3, demo_id@l(r4)
/* 807B74B4  38 00 00 02 */	li r0, 2
/* 807B74B8  98 1F 1A 8D */	stb r0, 0x1a8d(r31)
/* 807B74BC  48 00 00 6C */	b lbl_807B7528
lbl_807B74C0:
/* 807B74C0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 807B74C4  28 00 00 04 */	cmplwi r0, 4
/* 807B74C8  40 82 00 48 */	bne lbl_807B7510
/* 807B74CC  3C 60 80 7C */	lis r3, demo_id@ha
/* 807B74D0  80 83 80 E4 */	lwz r4, demo_id@l(r3)
/* 807B74D4  3C 04 00 01 */	addis r0, r4, 1
/* 807B74D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 807B74DC  41 82 00 14 */	beq lbl_807B74F0
/* 807B74E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B74E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B74E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807B74EC  4B 88 C2 00 */	b setPtI_Id__14dEvt_control_cFUi
lbl_807B74F0:
/* 807B74F0  38 00 00 01 */	li r0, 1
/* 807B74F4  98 1F 1A 8E */	stb r0, 0x1a8e(r31)
/* 807B74F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B74FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B7500  38 63 09 58 */	addi r3, r3, 0x958
/* 807B7504  38 80 00 5F */	li r4, 0x5f
/* 807B7508  4B 87 D3 08 */	b onSwitch__12dSv_memBit_cFi
/* 807B750C  48 00 00 1C */	b lbl_807B7528
lbl_807B7510:
/* 807B7510  38 80 00 00 */	li r4, 0
/* 807B7514  38 A0 00 00 */	li r5, 0
/* 807B7518  4B 86 44 B8 */	b fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 807B751C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 807B7520  60 00 00 08 */	ori r0, r0, 8
/* 807B7524  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_807B7528:
/* 807B7528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B752C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B7530  7C 08 03 A6 */	mtlr r0
/* 807B7534  38 21 00 10 */	addi r1, r1, 0x10
/* 807B7538  4E 80 00 20 */	blr 
