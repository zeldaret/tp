lbl_809CE490:
/* 809CE490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CE494  7C 08 02 A6 */	mflr r0
/* 809CE498  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CE49C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CE4A0  7C 7F 1B 78 */	mr r31, r3
/* 809CE4A4  A0 03 0E 46 */	lhz r0, 0xe46(r3)
/* 809CE4A8  2C 00 00 02 */	cmpwi r0, 2
/* 809CE4AC  41 82 00 C8 */	beq lbl_809CE574
/* 809CE4B0  40 80 01 C0 */	bge lbl_809CE670
/* 809CE4B4  2C 00 00 00 */	cmpwi r0, 0
/* 809CE4B8  41 82 00 0C */	beq lbl_809CE4C4
/* 809CE4BC  48 00 01 B4 */	b lbl_809CE670
/* 809CE4C0  48 00 01 B0 */	b lbl_809CE670
lbl_809CE4C4:
/* 809CE4C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809CE4C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809CE4CC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809CE4D0  3C 80 80 9D */	lis r4, d_a_npc_grc__stringBase0@ha /* 0x809CF7F0@ha */
/* 809CE4D4  38 84 F7 F0 */	addi r4, r4, d_a_npc_grc__stringBase0@l /* 0x809CF7F0@l */
/* 809CE4D8  38 84 00 14 */	addi r4, r4, 0x14
/* 809CE4DC  4B 99 A4 B9 */	bl strcmp
/* 809CE4E0  2C 03 00 00 */	cmpwi r3, 0
/* 809CE4E4  40 82 00 28 */	bne lbl_809CE50C
/* 809CE4E8  7F E3 FB 78 */	mr r3, r31
/* 809CE4EC  38 80 00 0A */	li r4, 0xa
/* 809CE4F0  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE4F4  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE4F8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE4FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE500  7D 89 03 A6 */	mtctr r12
/* 809CE504  4E 80 04 21 */	bctrl 
/* 809CE508  48 00 00 24 */	b lbl_809CE52C
lbl_809CE50C:
/* 809CE50C  7F E3 FB 78 */	mr r3, r31
/* 809CE510  38 80 00 0E */	li r4, 0xe
/* 809CE514  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE518  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE51C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE520  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE524  7D 89 03 A6 */	mtctr r12
/* 809CE528  4E 80 04 21 */	bctrl 
lbl_809CE52C:
/* 809CE52C  7F E3 FB 78 */	mr r3, r31
/* 809CE530  38 80 00 05 */	li r4, 5
/* 809CE534  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE538  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE53C  38 A0 00 00 */	li r5, 0
/* 809CE540  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE544  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CE548  7D 89 03 A6 */	mtctr r12
/* 809CE54C  4E 80 04 21 */	bctrl 
/* 809CE550  7F E3 FB 78 */	mr r3, r31
/* 809CE554  38 80 00 00 */	li r4, 0
/* 809CE558  4B FF F7 F9 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE55C  38 00 00 00 */	li r0, 0
/* 809CE560  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE564  38 00 00 02 */	li r0, 2
/* 809CE568  B0 1F 0E 46 */	sth r0, 0xe46(r31)
/* 809CE56C  38 00 00 01 */	li r0, 1
/* 809CE570  98 1F 09 EA */	stb r0, 0x9ea(r31)
lbl_809CE574:
/* 809CE574  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809CE578  28 00 00 00 */	cmplwi r0, 0
/* 809CE57C  40 82 00 F4 */	bne lbl_809CE670
/* 809CE580  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE584  4B 78 21 69 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809CE588  28 03 00 00 */	cmplwi r3, 0
/* 809CE58C  41 82 00 20 */	beq lbl_809CE5AC
/* 809CE590  7F E3 FB 78 */	mr r3, r31
/* 809CE594  4B FF FA 69 */	bl chkFindPlayer__11daNpc_grC_cFv
/* 809CE598  2C 03 00 00 */	cmpwi r3, 0
/* 809CE59C  40 82 00 28 */	bne lbl_809CE5C4
/* 809CE5A0  38 00 00 00 */	li r0, 0
/* 809CE5A4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE5A8  48 00 00 1C */	b lbl_809CE5C4
lbl_809CE5AC:
/* 809CE5AC  7F E3 FB 78 */	mr r3, r31
/* 809CE5B0  4B FF FA 4D */	bl chkFindPlayer__11daNpc_grC_cFv
/* 809CE5B4  2C 03 00 00 */	cmpwi r3, 0
/* 809CE5B8  41 82 00 0C */	beq lbl_809CE5C4
/* 809CE5BC  38 00 00 00 */	li r0, 0
/* 809CE5C0  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809CE5C4:
/* 809CE5C4  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE5C8  4B 78 21 25 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809CE5CC  28 03 00 00 */	cmplwi r3, 0
/* 809CE5D0  41 82 00 14 */	beq lbl_809CE5E4
/* 809CE5D4  7F E3 FB 78 */	mr r3, r31
/* 809CE5D8  38 80 00 02 */	li r4, 2
/* 809CE5DC  4B FF F7 75 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE5E0  48 00 00 10 */	b lbl_809CE5F0
lbl_809CE5E4:
/* 809CE5E4  7F E3 FB 78 */	mr r3, r31
/* 809CE5E8  38 80 00 00 */	li r4, 0
/* 809CE5EC  4B FF F7 65 */	bl setLookMode__11daNpc_grC_cFi
lbl_809CE5F0:
/* 809CE5F0  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809CE5F4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809CE5F8  7C 03 00 00 */	cmpw r3, r0
/* 809CE5FC  40 82 00 6C */	bne lbl_809CE668
/* 809CE600  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE604  4B 78 20 E9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809CE608  30 03 FF FF */	addic r0, r3, -1
/* 809CE60C  7C 00 19 10 */	subfe r0, r0, r3
/* 809CE610  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809CE614  7F E3 FB 78 */	mr r3, r31
/* 809CE618  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 809CE61C  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 809CE620  3C C0 80 9D */	lis r6, m__17daNpc_grC_Param_c@ha /* 0x809CF51C@ha */
/* 809CE624  38 C6 F5 1C */	addi r6, r6, m__17daNpc_grC_Param_c@l /* 0x809CF51C@l */
/* 809CE628  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809CE62C  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809CE630  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809CE634  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809CE638  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 809CE63C  38 E0 00 78 */	li r7, 0x78
/* 809CE640  39 00 00 01 */	li r8, 1
/* 809CE644  4B 78 5D 29 */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809CE648  7C 64 1B 79 */	or. r4, r3, r3
/* 809CE64C  41 82 00 24 */	beq lbl_809CE670
/* 809CE650  38 7F 0C B8 */	addi r3, r31, 0xcb8
/* 809CE654  4B 78 20 69 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809CE658  7F E3 FB 78 */	mr r3, r31
/* 809CE65C  38 80 00 04 */	li r4, 4
/* 809CE660  4B FF F6 F1 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE664  48 00 00 0C */	b lbl_809CE670
lbl_809CE668:
/* 809CE668  38 00 00 00 */	li r0, 0
/* 809CE66C  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_809CE670:
/* 809CE670  38 60 00 01 */	li r3, 1
/* 809CE674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CE678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CE67C  7C 08 03 A6 */	mtlr r0
/* 809CE680  38 21 00 10 */	addi r1, r1, 0x10
/* 809CE684  4E 80 00 20 */	blr 
