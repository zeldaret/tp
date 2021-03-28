lbl_80D63384:
/* 80D63384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63388  7C 08 02 A6 */	mflr r0
/* 80D6338C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63394  93 C1 00 08 */	stw r30, 8(r1)
/* 80D63398  7C 7F 1B 78 */	mr r31, r3
/* 80D6339C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D633A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D633A4  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80D633A8  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80D633AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D633B0  40 82 00 58 */	bne lbl_80D63408
/* 80D633B4  4B FF FB CD */	bl getSwitchFromParam__15daTag_SSDrink_cFv
/* 80D633B8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D633BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D633C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D633C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D633C8  7C 05 07 74 */	extsb r5, r0
/* 80D633CC  4B 2D 1F 94 */	b isSwitch__10dSv_info_cCFii
/* 80D633D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D633D4  41 82 00 34 */	beq lbl_80D63408
/* 80D633D8  88 1F 05 D3 */	lbz r0, 0x5d3(r31)
/* 80D633DC  28 00 00 60 */	cmplwi r0, 0x60
/* 80D633E0  41 82 00 28 */	beq lbl_80D63408
/* 80D633E4  7F E3 FB 78 */	mr r3, r31
/* 80D633E8  4B FF FB A5 */	bl getFlowNodeNum__15daTag_SSDrink_cFv
/* 80D633EC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D633F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D633F4  41 82 00 14 */	beq lbl_80D63408
/* 80D633F8  3C 60 40 00 */	lis r3, 0x4000 /* 0x40000008@ha */
/* 80D633FC  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x40000008@l */
/* 80D63400  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D63404  48 00 00 0C */	b lbl_80D63410
lbl_80D63408:
/* 80D63408  38 00 00 00 */	li r0, 0
/* 80D6340C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80D63410:
/* 80D63410  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 80D63414  3C 03 C0 00 */	addis r0, r3, 0xc000
/* 80D63418  28 00 00 08 */	cmplwi r0, 8
/* 80D6341C  40 82 00 58 */	bne lbl_80D63474
/* 80D63420  7F E3 FB 78 */	mr r3, r31
/* 80D63424  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D63428  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80D6342C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80D63430  4B 2B 75 34 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D63434  3C 60 80 D6 */	lis r3, lit_3947@ha
/* 80D63438  C0 03 37 B0 */	lfs f0, lit_3947@l(r3)
/* 80D6343C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D63440  4C 40 13 82 */	cror 2, 0, 2
/* 80D63444  40 82 00 30 */	bne lbl_80D63474
/* 80D63448  7F E3 FB 78 */	mr r3, r31
/* 80D6344C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80D63450  4B 2B 73 4C */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D63454  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80D63458  41 81 00 1C */	bgt lbl_80D63474
/* 80D6345C  38 00 00 9D */	li r0, 0x9d
/* 80D63460  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D63464  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80D63468  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D6346C  60 00 00 01 */	ori r0, r0, 1
/* 80D63470  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D63474:
/* 80D63474  38 60 00 01 */	li r3, 1
/* 80D63478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D6347C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D63480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63484  7C 08 03 A6 */	mtlr r0
/* 80D63488  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6348C  4E 80 00 20 */	blr 
