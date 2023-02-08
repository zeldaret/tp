lbl_80AC53C8:
/* 80AC53C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC53CC  7C 08 02 A6 */	mflr r0
/* 80AC53D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC53D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC53D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC53DC  7C 7F 1B 78 */	mr r31, r3
/* 80AC53E0  3C 60 80 AC */	lis r3, l_bmdData@ha /* 0x80AC7118@ha */
/* 80AC53E4  38 83 71 18 */	addi r4, r3, l_bmdData@l /* 0x80AC7118@l */
/* 80AC53E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC53EC  54 00 10 3A */	slwi r0, r0, 2
/* 80AC53F0  3C 60 80 AC */	lis r3, l_resNameList@ha /* 0x80AC7138@ha */
/* 80AC53F4  38 63 71 38 */	addi r3, r3, l_resNameList@l /* 0x80AC7138@l */
/* 80AC53F8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC53FC  80 84 00 00 */	lwz r4, 0(r4)
/* 80AC5400  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC5404  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC5408  3C A5 00 02 */	addis r5, r5, 2
/* 80AC540C  38 C0 00 80 */	li r6, 0x80
/* 80AC5410  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AC5414  4B 57 6E D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC5418  7C 7E 1B 78 */	mr r30, r3
/* 80AC541C  38 60 00 58 */	li r3, 0x58
/* 80AC5420  4B 80 98 2D */	bl __nw__FUl
/* 80AC5424  7C 60 1B 79 */	or. r0, r3, r3
/* 80AC5428  41 82 00 4C */	beq lbl_80AC5474
/* 80AC542C  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AC5430  90 01 00 08 */	stw r0, 8(r1)
/* 80AC5434  38 00 00 00 */	li r0, 0
/* 80AC5438  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC543C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AC5440  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AC5444  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC5448  7F C4 F3 78 */	mr r4, r30
/* 80AC544C  38 A0 00 00 */	li r5, 0
/* 80AC5450  38 C0 00 00 */	li r6, 0
/* 80AC5454  38 E0 00 00 */	li r7, 0
/* 80AC5458  39 00 FF FF */	li r8, -1
/* 80AC545C  3D 20 80 AC */	lis r9, lit_4215@ha /* 0x80AC70C4@ha */
/* 80AC5460  C0 29 70 C4 */	lfs f1, lit_4215@l(r9)  /* 0x80AC70C4@l */
/* 80AC5464  39 20 00 00 */	li r9, 0
/* 80AC5468  39 40 FF FF */	li r10, -1
/* 80AC546C  4B 54 B3 65 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AC5470  7C 60 1B 78 */	mr r0, r3
lbl_80AC5474:
/* 80AC5474  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AC5478  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AC547C  28 03 00 00 */	cmplwi r3, 0
/* 80AC5480  41 82 00 1C */	beq lbl_80AC549C
/* 80AC5484  80 03 00 04 */	lwz r0, 4(r3)
/* 80AC5488  28 00 00 00 */	cmplwi r0, 0
/* 80AC548C  40 82 00 10 */	bne lbl_80AC549C
/* 80AC5490  4B 54 BE 81 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AC5494  38 00 00 00 */	li r0, 0
/* 80AC5498  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80AC549C:
/* 80AC549C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AC54A0  28 03 00 00 */	cmplwi r3, 0
/* 80AC54A4  40 82 00 0C */	bne lbl_80AC54B0
/* 80AC54A8  38 60 00 00 */	li r3, 0
/* 80AC54AC  48 00 00 5C */	b lbl_80AC5508
lbl_80AC54B0:
/* 80AC54B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC54B4  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80AC54B8  7F E3 FB 78 */	mr r3, r31
/* 80AC54BC  38 80 00 00 */	li r4, 0
/* 80AC54C0  38 A0 00 00 */	li r5, 0
/* 80AC54C4  4B 68 4E C5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AC54C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC54CC  41 82 00 38 */	beq lbl_80AC5504
/* 80AC54D0  7F E3 FB 78 */	mr r3, r31
/* 80AC54D4  38 80 00 00 */	li r4, 0
/* 80AC54D8  3C A0 80 AC */	lis r5, lit_4089@ha /* 0x80AC70B8@ha */
/* 80AC54DC  C0 25 70 B8 */	lfs f1, lit_4089@l(r5)  /* 0x80AC70B8@l */
/* 80AC54E0  38 A0 00 00 */	li r5, 0
/* 80AC54E4  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AC54E8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AC54EC  7D 89 03 A6 */	mtctr r12
/* 80AC54F0  4E 80 04 21 */	bctrl 
/* 80AC54F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC54F8  41 82 00 0C */	beq lbl_80AC5504
/* 80AC54FC  38 60 00 01 */	li r3, 1
/* 80AC5500  48 00 00 08 */	b lbl_80AC5508
lbl_80AC5504:
/* 80AC5504  38 60 00 00 */	li r3, 0
lbl_80AC5508:
/* 80AC5508  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC550C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC5510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC5514  7C 08 03 A6 */	mtlr r0
/* 80AC5518  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC551C  4E 80 00 20 */	blr 
