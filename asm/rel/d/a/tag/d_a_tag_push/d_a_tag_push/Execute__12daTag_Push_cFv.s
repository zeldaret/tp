lbl_804904DC:
/* 804904DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804904E0  7C 08 02 A6 */	mflr r0
/* 804904E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804904E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804904EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804904F0  7C 7E 1B 78 */	mr r30, r3
/* 804904F4  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 804904F8  7C 04 07 74 */	extsb r4, r0
/* 804904FC  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80490500  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80490504  7C 00 07 74 */	extsb r0, r0
/* 80490508  7C 04 00 00 */	cmpw r4, r0
/* 8049050C  40 82 01 94 */	bne lbl_804906A0
/* 80490510  38 7E 05 68 */	addi r3, r30, 0x568
/* 80490514  4B CB 51 F5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80490518  7C 7F 1B 78 */	mr r31, r3
/* 8049051C  7F C3 F3 78 */	mr r3, r30
/* 80490520  48 00 01 A5 */	bl isDelete__12daTag_Push_cFv
/* 80490524  2C 03 00 00 */	cmpwi r3, 0
/* 80490528  41 82 00 44 */	beq lbl_8049056C
/* 8049052C  28 1F 00 00 */	cmplwi r31, 0
/* 80490530  41 82 00 2C */	beq lbl_8049055C
/* 80490534  A8 1F 00 08 */	lha r0, 8(r31)
/* 80490538  2C 00 02 58 */	cmpwi r0, 0x258
/* 8049053C  41 82 00 20 */	beq lbl_8049055C
/* 80490540  2C 00 02 3B */	cmpwi r0, 0x23b
/* 80490544  41 82 00 18 */	beq lbl_8049055C
/* 80490548  2C 00 02 39 */	cmpwi r0, 0x239
/* 8049054C  41 82 00 10 */	beq lbl_8049055C
/* 80490550  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80490554  38 80 00 00 */	li r4, 0
/* 80490558  4B CB 51 89 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8049055C:
/* 8049055C  7F C3 F3 78 */	mr r3, r30
/* 80490560  4B B8 97 1D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80490564  38 60 00 01 */	li r3, 1
/* 80490568  48 00 01 3C */	b lbl_804906A4
lbl_8049056C:
/* 8049056C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80490570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80490574  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80490578  28 00 00 00 */	cmplwi r0, 0
/* 8049057C  40 82 00 E4 */	bne lbl_80490660
/* 80490580  28 1F 00 00 */	cmplwi r31, 0
/* 80490584  40 82 00 28 */	bne lbl_804905AC
/* 80490588  3C 60 80 49 */	lis r3, srchActor__12daTag_Push_cFPvPv@ha /* 0x804902B8@ha */
/* 8049058C  38 63 02 B8 */	addi r3, r3, srchActor__12daTag_Push_cFPvPv@l /* 0x804902B8@l */
/* 80490590  7F C4 F3 78 */	mr r4, r30
/* 80490594  4B B9 0D A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80490598  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049059C  41 82 00 10 */	beq lbl_804905AC
/* 804905A0  38 7E 05 68 */	addi r3, r30, 0x568
/* 804905A4  7F E4 FB 78 */	mr r4, r31
/* 804905A8  4B CB 51 39 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_804905AC:
/* 804905AC  28 1F 00 00 */	cmplwi r31, 0
/* 804905B0  41 82 00 B0 */	beq lbl_80490660
/* 804905B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804905B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804905BC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804905C0  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 804905C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804905C8  41 82 00 98 */	beq lbl_80490660
/* 804905CC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804905D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804905D4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804905D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804905DC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804905E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804905E4  7F C3 F3 78 */	mr r3, r30
/* 804905E8  38 81 00 08 */	addi r4, r1, 8
/* 804905EC  48 00 01 39 */	bl chkPointInArea__12daTag_Push_cF4cXyz
/* 804905F0  2C 03 00 00 */	cmpwi r3, 0
/* 804905F4  41 82 00 6C */	beq lbl_80490660
/* 804905F8  A8 1F 00 08 */	lha r0, 8(r31)
/* 804905FC  2C 00 02 3B */	cmpwi r0, 0x23b
/* 80490600  41 82 00 0C */	beq lbl_8049060C
/* 80490604  2C 00 02 39 */	cmpwi r0, 0x239
/* 80490608  40 82 00 4C */	bne lbl_80490654
lbl_8049060C:
/* 8049060C  38 7F 08 24 */	addi r3, r31, 0x824
/* 80490610  7F C4 F3 78 */	mr r4, r30
/* 80490614  4B CC 00 A9 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80490618  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 8049061C  3C 03 00 00 */	addis r0, r3, 0
/* 80490620  28 00 FF FF */	cmplwi r0, 0xffff
/* 80490624  38 00 FF FF */	li r0, -1
/* 80490628  41 82 00 08 */	beq lbl_80490630
/* 8049062C  54 60 04 3E */	clrlwi r0, r3, 0x10
lbl_80490630:
/* 80490630  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 80490634  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80490638  54 03 46 3E */	srwi r3, r0, 0x18
/* 8049063C  28 03 00 FF */	cmplwi r3, 0xff
/* 80490640  38 00 FF FF */	li r0, -1
/* 80490644  41 82 00 08 */	beq lbl_8049064C
/* 80490648  7C 60 1B 78 */	mr r0, r3
lbl_8049064C:
/* 8049064C  98 1F 09 EF */	stb r0, 0x9ef(r31)
/* 80490650  48 00 00 10 */	b lbl_80490660
lbl_80490654:
/* 80490654  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80490658  7F C4 F3 78 */	mr r4, r30
/* 8049065C  4B CB 50 85 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80490660:
/* 80490660  38 00 00 00 */	li r0, 0
/* 80490664  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80490668  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8049066C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80490670  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80490674  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80490678  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8049067C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80490680  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80490684  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80490688  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 8049068C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80490690  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80490694  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80490698  38 60 00 01 */	li r3, 1
/* 8049069C  48 00 00 08 */	b lbl_804906A4
lbl_804906A0:
/* 804906A0  38 60 00 00 */	li r3, 0
lbl_804906A4:
/* 804906A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804906A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804906AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804906B0  7C 08 03 A6 */	mtlr r0
/* 804906B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804906B8  4E 80 00 20 */	blr 
