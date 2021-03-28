lbl_80C9D148:
/* 80C9D148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D14C  7C 08 02 A6 */	mflr r0
/* 80C9D150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D158  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9D15C  7C 7F 1B 78 */	mr r31, r3
/* 80C9D160  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C9D164  38 04 00 24 */	addi r0, r4, 0x24
/* 80C9D168  90 03 05 04 */	stw r0, 0x504(r3)
/* 80C9D16C  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C9D170  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9D174  4B 37 D4 04 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C9D178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D17C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D180  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80C9D184  7F E4 FB 78 */	mr r4, r31
/* 80C9D188  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D18C  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 80C9D190  4B 3A A5 08 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80C9D194  B0 7F 06 40 */	sth r3, 0x640(r31)
/* 80C9D198  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D19C  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80C9D1A0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9D1A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D1A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D1AC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9D1B0  7C 05 07 74 */	extsb r5, r0
/* 80C9D1B4  4B 39 81 AC */	b isSwitch__10dSv_info_cCFii
/* 80C9D1B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C9D1BC  41 82 00 18 */	beq lbl_80C9D1D4
/* 80C9D1C0  38 00 00 03 */	li r0, 3
/* 80C9D1C4  98 1F 06 3D */	stb r0, 0x63d(r31)
/* 80C9D1C8  7F E3 FB 78 */	mr r3, r31
/* 80C9D1CC  48 00 0D 4D */	bl modeWaitLowerInit__12daObjStair_cFv
/* 80C9D1D0  48 00 00 78 */	b lbl_80C9D248
lbl_80C9D1D4:
/* 80C9D1D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D1D8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C9D1DC  28 00 00 FF */	cmplwi r0, 0xff
/* 80C9D1E0  40 82 00 10 */	bne lbl_80C9D1F0
/* 80C9D1E4  38 00 00 03 */	li r0, 3
/* 80C9D1E8  98 1F 06 3D */	stb r0, 0x63d(r31)
/* 80C9D1EC  48 00 00 0C */	b lbl_80C9D1F8
lbl_80C9D1F0:
/* 80C9D1F0  38 00 00 00 */	li r0, 0
/* 80C9D1F4  98 1F 06 3D */	stb r0, 0x63d(r31)
lbl_80C9D1F8:
/* 80C9D1F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D1FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D200  7F C4 F3 78 */	mr r4, r30
/* 80C9D204  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9D208  7C 05 07 74 */	extsb r5, r0
/* 80C9D20C  4B 39 81 54 */	b isSwitch__10dSv_info_cCFii
/* 80C9D210  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D214  54 00 27 FF */	rlwinm. r0, r0, 4, 0x1f, 0x1f
/* 80C9D218  40 82 00 0C */	bne lbl_80C9D224
/* 80C9D21C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9D220  40 82 00 14 */	bne lbl_80C9D234
lbl_80C9D224:
/* 80C9D224  2C 00 00 01 */	cmpwi r0, 1
/* 80C9D228  40 82 00 18 */	bne lbl_80C9D240
/* 80C9D22C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9D230  40 82 00 10 */	bne lbl_80C9D240
lbl_80C9D234:
/* 80C9D234  7F E3 FB 78 */	mr r3, r31
/* 80C9D238  48 00 0C E1 */	bl modeWaitLowerInit__12daObjStair_cFv
/* 80C9D23C  48 00 00 0C */	b lbl_80C9D248
lbl_80C9D240:
/* 80C9D240  7F E3 FB 78 */	mr r3, r31
/* 80C9D244  48 00 07 81 */	bl modeWaitUpperInit__12daObjStair_cFv
lbl_80C9D248:
/* 80C9D248  7F E3 FB 78 */	mr r3, r31
/* 80C9D24C  4B FF FE 4D */	bl initBaseMtx__12daObjStair_cFv
/* 80C9D250  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D254  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D258  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D25C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C9D260  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9D264  7C 05 07 74 */	extsb r5, r0
/* 80C9D268  4B 39 80 F8 */	b isSwitch__10dSv_info_cCFii
/* 80C9D26C  98 7F 06 3F */	stb r3, 0x63f(r31)
/* 80C9D270  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80C9D274  D0 1F 06 30 */	stfs f0, 0x630(r31)
/* 80C9D278  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C9D27C  D0 1F 06 34 */	stfs f0, 0x634(r31)
/* 80C9D280  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80C9D284  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 80C9D288  3C 60 80 CA */	lis r3, lit_3709@ha
/* 80C9D28C  C0 23 E8 DC */	lfs f1, lit_3709@l(r3)
/* 80C9D290  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C9D294  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9D298  D0 1F 06 34 */	stfs f0, 0x634(r31)
/* 80C9D29C  38 60 00 01 */	li r3, 1
/* 80C9D2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D2A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9D2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D2AC  7C 08 03 A6 */	mtlr r0
/* 80C9D2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D2B4  4E 80 00 20 */	blr 
