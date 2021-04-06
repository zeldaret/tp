lbl_80CDFC40:
/* 80CDFC40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDFC44  7C 08 02 A6 */	mflr r0
/* 80CDFC48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDFC4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDFC50  7C 7F 1B 78 */	mr r31, r3
/* 80CDFC54  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CDFC58  7C 03 07 74 */	extsb r3, r0
/* 80CDFC5C  4B 34 D4 11 */	bl dComIfGp_getReverb__Fi
/* 80CDFC60  7C 67 1B 78 */	mr r7, r3
/* 80CDFC64  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080204@ha */
/* 80CDFC68  38 03 02 04 */	addi r0, r3, 0x0204 /* 0x00080204@l */
/* 80CDFC6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDFC70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CDFC74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CDFC78  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDFC7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CDFC80  38 BF 05 80 */	addi r5, r31, 0x580
/* 80CDFC84  38 C0 00 00 */	li r6, 0
/* 80CDFC88  3D 00 80 CE */	lis r8, lit_3757@ha /* 0x80CE0258@ha */
/* 80CDFC8C  C0 28 02 58 */	lfs f1, lit_3757@l(r8)  /* 0x80CE0258@l */
/* 80CDFC90  FC 40 08 90 */	fmr f2, f1
/* 80CDFC94  3D 00 80 CE */	lis r8, lit_3758@ha /* 0x80CE025C@ha */
/* 80CDFC98  C0 68 02 5C */	lfs f3, lit_3758@l(r8)  /* 0x80CE025C@l */
/* 80CDFC9C  FC 80 18 90 */	fmr f4, f3
/* 80CDFCA0  39 00 00 00 */	li r8, 0
/* 80CDFCA4  4B 5C C8 69 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDFCA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDFCAC  7C 03 07 74 */	extsb r3, r0
/* 80CDFCB0  4B 34 D3 BD */	bl dComIfGp_getReverb__Fi
/* 80CDFCB4  7C 67 1B 78 */	mr r7, r3
/* 80CDFCB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A3@ha */
/* 80CDFCBC  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000800A3@l */
/* 80CDFCC0  90 01 00 08 */	stw r0, 8(r1)
/* 80CDFCC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CDFCC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CDFCCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDFCD0  38 81 00 08 */	addi r4, r1, 8
/* 80CDFCD4  38 BF 05 74 */	addi r5, r31, 0x574
/* 80CDFCD8  38 C0 00 00 */	li r6, 0
/* 80CDFCDC  3D 00 80 CE */	lis r8, lit_3757@ha /* 0x80CE0258@ha */
/* 80CDFCE0  C0 28 02 58 */	lfs f1, lit_3757@l(r8)  /* 0x80CE0258@l */
/* 80CDFCE4  FC 40 08 90 */	fmr f2, f1
/* 80CDFCE8  3D 00 80 CE */	lis r8, lit_3758@ha /* 0x80CE025C@ha */
/* 80CDFCEC  C0 68 02 5C */	lfs f3, lit_3758@l(r8)  /* 0x80CE025C@l */
/* 80CDFCF0  FC 80 18 90 */	fmr f4, f3
/* 80CDFCF4  39 00 00 00 */	li r8, 0
/* 80CDFCF8  4B 5C C8 15 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDFCFC  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80CDFD00  2C 00 00 01 */	cmpwi r0, 1
/* 80CDFD04  41 82 00 84 */	beq lbl_80CDFD88
/* 80CDFD08  40 80 00 EC */	bge lbl_80CDFDF4
/* 80CDFD0C  2C 00 00 00 */	cmpwi r0, 0
/* 80CDFD10  40 80 00 0C */	bge lbl_80CDFD1C
/* 80CDFD14  48 00 00 E0 */	b lbl_80CDFDF4
/* 80CDFD18  48 00 00 DC */	b lbl_80CDFDF4
lbl_80CDFD1C:
/* 80CDFD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDFD20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDFD24  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CDFD28  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80CDFD2C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80CDFD30  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 80CDFD34  4B 35 4C 89 */	bl isEventBit__11dSv_event_cCFUs
/* 80CDFD38  2C 03 00 00 */	cmpwi r3, 0
/* 80CDFD3C  41 82 00 B8 */	beq lbl_80CDFDF4
/* 80CDFD40  7F E3 FB 78 */	mr r3, r31
/* 80CDFD44  88 9F 05 C0 */	lbz r4, 0x5c0(r31)
/* 80CDFD48  48 00 03 ED */	bl deleteSmkEmtChange__15daObjSnowSoup_cFi
/* 80CDFD4C  38 00 00 01 */	li r0, 1
/* 80CDFD50  98 1F 05 C0 */	stb r0, 0x5c0(r31)
/* 80CDFD54  7F E3 FB 78 */	mr r3, r31
/* 80CDFD58  88 9F 05 C0 */	lbz r4, 0x5c0(r31)
/* 80CDFD5C  48 00 02 E1 */	bl createSmkEmtChange__15daObjSnowSoup_cFi
/* 80CDFD60  7F E3 FB 78 */	mr r3, r31
/* 80CDFD64  48 00 01 41 */	bl setModelMtx__15daObjSnowSoup_cFv
/* 80CDFD68  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80CDFD6C  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFD70  7C 7F 02 14 */	add r3, r31, r0
/* 80CDFD74  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80CDFD78  38 03 00 24 */	addi r0, r3, 0x24
/* 80CDFD7C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CDFD80  38 60 00 01 */	li r3, 1
/* 80CDFD84  48 00 00 7C */	b lbl_80CDFE00
lbl_80CDFD88:
/* 80CDFD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDFD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDFD90  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CDFD94  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80CDFD98  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80CDFD9C  A0 84 00 10 */	lhz r4, 0x10(r4)
/* 80CDFDA0  4B 35 4C 1D */	bl isEventBit__11dSv_event_cCFUs
/* 80CDFDA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CDFDA8  41 82 00 4C */	beq lbl_80CDFDF4
/* 80CDFDAC  7F E3 FB 78 */	mr r3, r31
/* 80CDFDB0  88 9F 05 C0 */	lbz r4, 0x5c0(r31)
/* 80CDFDB4  48 00 03 81 */	bl deleteSmkEmtChange__15daObjSnowSoup_cFi
/* 80CDFDB8  38 00 00 02 */	li r0, 2
/* 80CDFDBC  98 1F 05 C0 */	stb r0, 0x5c0(r31)
/* 80CDFDC0  7F E3 FB 78 */	mr r3, r31
/* 80CDFDC4  88 9F 05 C0 */	lbz r4, 0x5c0(r31)
/* 80CDFDC8  48 00 02 75 */	bl createSmkEmtChange__15daObjSnowSoup_cFi
/* 80CDFDCC  7F E3 FB 78 */	mr r3, r31
/* 80CDFDD0  48 00 00 D5 */	bl setModelMtx__15daObjSnowSoup_cFv
/* 80CDFDD4  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80CDFDD8  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFDDC  7C 7F 02 14 */	add r3, r31, r0
/* 80CDFDE0  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80CDFDE4  38 03 00 24 */	addi r0, r3, 0x24
/* 80CDFDE8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CDFDEC  38 60 00 01 */	li r3, 1
/* 80CDFDF0  48 00 00 10 */	b lbl_80CDFE00
lbl_80CDFDF4:
/* 80CDFDF4  7F E3 FB 78 */	mr r3, r31
/* 80CDFDF8  48 00 00 AD */	bl setModelMtx__15daObjSnowSoup_cFv
/* 80CDFDFC  38 60 00 01 */	li r3, 1
lbl_80CDFE00:
/* 80CDFE00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDFE04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDFE08  7C 08 03 A6 */	mtlr r0
/* 80CDFE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDFE10  4E 80 00 20 */	blr 
