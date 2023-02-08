lbl_800AF7D0:
/* 800AF7D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AF7D4  7C 08 02 A6 */	mflr r0
/* 800AF7D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AF7DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AF7E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AF7E4  7C 7E 1B 78 */	mr r30, r3
/* 800AF7E8  B0 81 00 08 */	sth r4, 8(r1)
/* 800AF7EC  7C BF 2B 78 */	mr r31, r5
/* 800AF7F0  B0 C1 00 0A */	sth r6, 0xa(r1)
/* 800AF7F4  38 81 00 0A */	addi r4, r1, 0xa
/* 800AF7F8  38 A1 00 08 */	addi r5, r1, 8
/* 800AF7FC  4B FF 44 E9 */	bl setIdxMask__9daAlink_cFPUsPUs
/* 800AF800  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 800AF804  28 05 FF FF */	cmplwi r5, 0xffff
/* 800AF808  41 82 00 20 */	beq lbl_800AF828
/* 800AF80C  38 7E 21 2C */	addi r3, r30, 0x212c
/* 800AF810  A0 81 00 08 */	lhz r4, 8(r1)
/* 800AF814  48 0A F9 05 */	bl loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 800AF818  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800AF81C  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800AF820  90 1E 05 74 */	stw r0, 0x574(r30)
/* 800AF824  48 00 00 28 */	b lbl_800AF84C
lbl_800AF828:
/* 800AF828  2C 1F 00 00 */	cmpwi r31, 0
/* 800AF82C  41 82 00 14 */	beq lbl_800AF840
/* 800AF830  38 7E 21 2C */	addi r3, r30, 0x212c
/* 800AF834  A0 81 00 08 */	lhz r4, 8(r1)
/* 800AF838  48 0A F8 99 */	bl loadDataPriIdx__14daPy_anmHeap_cFUs
/* 800AF83C  48 00 00 10 */	b lbl_800AF84C
lbl_800AF840:
/* 800AF840  38 7E 21 2C */	addi r3, r30, 0x212c
/* 800AF844  A0 81 00 08 */	lhz r4, 8(r1)
/* 800AF848  48 0A F8 21 */	bl loadDataIdx__14daPy_anmHeap_cFUs
lbl_800AF84C:
/* 800AF84C  28 03 00 00 */	cmplwi r3, 0
/* 800AF850  41 82 00 38 */	beq lbl_800AF888
/* 800AF854  90 7E 21 58 */	stw r3, 0x2158(r30)
/* 800AF858  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AF85C  80 9E 06 C0 */	lwz r4, 0x6c0(r30)
/* 800AF860  48 27 B9 75 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 800AF864  80 7E 06 C0 */	lwz r3, 0x6c0(r30)
/* 800AF868  38 63 00 58 */	addi r3, r3, 0x58
/* 800AF86C  80 9E 21 58 */	lwz r4, 0x2158(r30)
/* 800AF870  48 28 04 55 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 800AF874  38 00 00 03 */	li r0, 3
/* 800AF878  98 0D 8A 49 */	stb r0, struct_80450FC8+0x1(r13)
/* 800AF87C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AF880  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AF884  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800AF888:
/* 800AF888  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AF88C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AF890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AF894  7C 08 03 A6 */	mtlr r0
/* 800AF898  38 21 00 20 */	addi r1, r1, 0x20
/* 800AF89C  4E 80 00 20 */	blr 
