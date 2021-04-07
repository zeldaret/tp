lbl_80B98540:
/* 80B98540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B98544  7C 08 02 A6 */	mflr r0
/* 80B98548  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B9854C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B98550  4B 7C 9C 85 */	bl _savegpr_27
/* 80B98554  7C 7E 1B 78 */	mr r30, r3
/* 80B98558  7C 9B 23 78 */	mr r27, r4
/* 80B9855C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B98560  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B98564  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80B98568  3B E0 00 00 */	li r31, 0
/* 80B9856C  3B 80 FF FF */	li r28, -1
/* 80B98570  7F A3 EB 78 */	mr r3, r29
/* 80B98574  3C A0 80 BA */	lis r5, d_a_npc_zrz__stringBase0@ha /* 0x80B9B220@ha */
/* 80B98578  38 A5 B2 20 */	addi r5, r5, d_a_npc_zrz__stringBase0@l /* 0x80B9B220@l */
/* 80B9857C  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B98580  38 C0 00 03 */	li r6, 3
/* 80B98584  4B 4A FB 69 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B98588  28 03 00 00 */	cmplwi r3, 0
/* 80B9858C  41 82 00 08 */	beq lbl_80B98594
/* 80B98590  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B98594:
/* 80B98594  7F A3 EB 78 */	mr r3, r29
/* 80B98598  7F 64 DB 78 */	mr r4, r27
/* 80B9859C  4B 4A F7 B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B985A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B985A4  41 82 00 98 */	beq lbl_80B9863C
/* 80B985A8  2C 1C 00 50 */	cmpwi r28, 0x50
/* 80B985AC  41 82 00 44 */	beq lbl_80B985F0
/* 80B985B0  40 80 00 1C */	bge lbl_80B985CC
/* 80B985B4  2C 1C 00 46 */	cmpwi r28, 0x46
/* 80B985B8  41 82 00 20 */	beq lbl_80B985D8
/* 80B985BC  40 80 00 80 */	bge lbl_80B9863C
/* 80B985C0  2C 1C 00 00 */	cmpwi r28, 0
/* 80B985C4  41 82 00 78 */	beq lbl_80B9863C
/* 80B985C8  48 00 00 74 */	b lbl_80B9863C
lbl_80B985CC:
/* 80B985CC  2C 1C 00 5A */	cmpwi r28, 0x5a
/* 80B985D0  41 82 00 64 */	beq lbl_80B98634
/* 80B985D4  48 00 00 68 */	b lbl_80B9863C
lbl_80B985D8:
/* 80B985D8  38 00 00 1E */	li r0, 0x1e
/* 80B985DC  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80B985E0  7F C3 F3 78 */	mr r3, r30
/* 80B985E4  38 80 00 00 */	li r4, 0
/* 80B985E8  4B FF E8 95 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B985EC  48 00 00 50 */	b lbl_80B9863C
lbl_80B985F0:
/* 80B985F0  7F C3 F3 78 */	mr r3, r30
/* 80B985F4  38 80 00 09 */	li r4, 9
/* 80B985F8  38 A0 00 00 */	li r5, 0
/* 80B985FC  4B 5B B7 21 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B98600  3C 60 80 B9 */	lis r3, s_sub__FPvPv@ha /* 0x80B95160@ha */
/* 80B98604  38 63 51 60 */	addi r3, r3, s_sub__FPvPv@l /* 0x80B95160@l */
/* 80B98608  7F C4 F3 78 */	mr r4, r30
/* 80B9860C  4B 48 8D 2D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B98610  28 03 00 00 */	cmplwi r3, 0
/* 80B98614  41 82 00 28 */	beq lbl_80B9863C
/* 80B98618  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80B9861C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80B98620  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80B98624  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80B98628  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80B9862C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80B98630  48 00 00 0C */	b lbl_80B9863C
lbl_80B98634:
/* 80B98634  38 00 00 78 */	li r0, 0x78
/* 80B98638  90 1E 09 60 */	stw r0, 0x960(r30)
lbl_80B9863C:
/* 80B9863C  2C 1C 00 50 */	cmpwi r28, 0x50
/* 80B98640  41 82 00 70 */	beq lbl_80B986B0
/* 80B98644  40 80 00 1C */	bge lbl_80B98660
/* 80B98648  2C 1C 00 46 */	cmpwi r28, 0x46
/* 80B9864C  41 82 00 4C */	beq lbl_80B98698
/* 80B98650  40 80 01 0C */	bge lbl_80B9875C
/* 80B98654  2C 1C 00 00 */	cmpwi r28, 0
/* 80B98658  41 82 00 14 */	beq lbl_80B9866C
/* 80B9865C  48 00 01 00 */	b lbl_80B9875C
lbl_80B98660:
/* 80B98660  2C 1C 00 5A */	cmpwi r28, 0x5a
/* 80B98664  41 82 00 70 */	beq lbl_80B986D4
/* 80B98668  48 00 00 F4 */	b lbl_80B9875C
lbl_80B9866C:
/* 80B9866C  7F C3 F3 78 */	mr r3, r30
/* 80B98670  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B98674  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B98678  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B9867C  4B 48 20 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B98680  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B98684  3C 63 00 01 */	addis r3, r3, 1
/* 80B98688  38 03 80 00 */	addi r0, r3, -32768
/* 80B9868C  B0 04 06 06 */	sth r0, 0x606(r4)
/* 80B98690  3B E0 00 01 */	li r31, 1
/* 80B98694  48 00 00 CC */	b lbl_80B98760
lbl_80B98698:
/* 80B98698  38 7E 09 60 */	addi r3, r30, 0x960
/* 80B9869C  48 00 27 A9 */	bl func_80B9AE44
/* 80B986A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B986A4  40 82 00 BC */	bne lbl_80B98760
/* 80B986A8  3B E0 00 01 */	li r31, 1
/* 80B986AC  48 00 00 B4 */	b lbl_80B98760
lbl_80B986B0:
/* 80B986B0  7F C3 F3 78 */	mr r3, r30
/* 80B986B4  38 80 00 00 */	li r4, 0
/* 80B986B8  38 A0 00 01 */	li r5, 1
/* 80B986BC  38 C0 00 00 */	li r6, 0
/* 80B986C0  4B 5B B6 C5 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B986C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B986C8  41 82 00 98 */	beq lbl_80B98760
/* 80B986CC  3B E0 00 01 */	li r31, 1
/* 80B986D0  48 00 00 90 */	b lbl_80B98760
lbl_80B986D4:
/* 80B986D4  38 7E 09 60 */	addi r3, r30, 0x960
/* 80B986D8  48 00 27 6D */	bl func_80B9AE44
/* 80B986DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B986E0  40 82 00 14 */	bne lbl_80B986F4
/* 80B986E4  3B E0 00 01 */	li r31, 1
/* 80B986E8  38 00 00 00 */	li r0, 0
/* 80B986EC  B0 1E 04 6A */	sth r0, 0x46a(r30)
/* 80B986F0  48 00 00 70 */	b lbl_80B98760
lbl_80B986F4:
/* 80B986F4  80 1E 09 60 */	lwz r0, 0x960(r30)
/* 80B986F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B986FC  40 81 00 54 */	ble lbl_80B98750
/* 80B98700  3C 60 80 BA */	lis r3, lit_5903@ha /* 0x80B9B1CC@ha */
/* 80B98704  C0 43 B1 CC */	lfs f2, lit_5903@l(r3)  /* 0x80B9B1CC@l */
/* 80B98708  3C 60 80 BA */	lis r3, lit_4677@ha /* 0x80B9B08C@ha */
/* 80B9870C  C8 23 B0 8C */	lfd f1, lit_4677@l(r3)  /* 0x80B9B08C@l */
/* 80B98710  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B98714  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B98718  3C 00 43 30 */	lis r0, 0x4330
/* 80B9871C  90 01 00 08 */	stw r0, 8(r1)
/* 80B98720  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B98724  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B98728  3C 60 80 BA */	lis r3, lit_6101@ha /* 0x80B9B1F8@ha */
/* 80B9872C  C0 03 B1 F8 */	lfs f0, lit_6101@l(r3)  /* 0x80B9B1F8@l */
/* 80B98730  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B98734  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B98738  FC 00 00 1E */	fctiwz f0, f0
/* 80B9873C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B98740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B98744  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B98748  B0 1E 04 6A */	sth r0, 0x46a(r30)
/* 80B9874C  48 00 00 14 */	b lbl_80B98760
lbl_80B98750:
/* 80B98750  38 00 00 00 */	li r0, 0
/* 80B98754  B0 1E 04 6A */	sth r0, 0x46a(r30)
/* 80B98758  48 00 00 08 */	b lbl_80B98760
lbl_80B9875C:
/* 80B9875C  3B E0 00 01 */	li r31, 1
lbl_80B98760:
/* 80B98760  7F E3 FB 78 */	mr r3, r31
/* 80B98764  39 61 00 30 */	addi r11, r1, 0x30
/* 80B98768  4B 7C 9A B9 */	bl _restgpr_27
/* 80B9876C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B98770  7C 08 03 A6 */	mtlr r0
/* 80B98774  38 21 00 30 */	addi r1, r1, 0x30
/* 80B98778  4E 80 00 20 */	blr 
