lbl_80D48414:
/* 80D48414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D48418  7C 08 02 A6 */	mflr r0
/* 80D4841C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D48420  39 61 00 20 */	addi r11, r1, 0x20
/* 80D48424  4B 61 9D B9 */	bl _savegpr_29
/* 80D48428  7C 7E 1B 78 */	mr r30, r3
/* 80D4842C  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D48430  3B E3 C0 60 */	addi r31, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D48434  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80D48438  2C 00 00 02 */	cmpwi r0, 2
/* 80D4843C  41 82 00 88 */	beq lbl_80D484C4
/* 80D48440  40 80 02 44 */	bge lbl_80D48684
/* 80D48444  2C 00 FF FF */	cmpwi r0, -1
/* 80D48448  41 82 02 3C */	beq lbl_80D48684
/* 80D4844C  40 80 00 08 */	bge lbl_80D48454
/* 80D48450  48 00 02 34 */	b lbl_80D48684
lbl_80D48454:
/* 80D48454  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80D48458  2C 00 00 00 */	cmpwi r0, 0
/* 80D4845C  40 82 02 28 */	bne lbl_80D48684
/* 80D48460  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80D48464  2C 00 00 02 */	cmpwi r0, 2
/* 80D48468  41 82 00 24 */	beq lbl_80D4848C
/* 80D4846C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80D48470  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80D48474  4B 3F D4 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48478  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80D4847C  38 00 00 02 */	li r0, 2
/* 80D48480  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80D48484  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80D48488  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80D4848C:
/* 80D4848C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80D48490  2C 00 00 00 */	cmpwi r0, 0
/* 80D48494  41 82 00 24 */	beq lbl_80D484B8
/* 80D48498  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80D4849C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80D484A0  4B 3F D3 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D484A4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80D484A8  38 00 00 00 */	li r0, 0
/* 80D484AC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80D484B0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80D484B4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80D484B8:
/* 80D484B8  38 00 00 02 */	li r0, 2
/* 80D484BC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80D484C0  48 00 01 C4 */	b lbl_80D48684
lbl_80D484C4:
/* 80D484C4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80D484C8  2C 00 00 00 */	cmpwi r0, 0
/* 80D484CC  40 82 01 8C */	bne lbl_80D48658
/* 80D484D0  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80D484D4  4B 3F D2 35 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D484D8  28 03 00 00 */	cmplwi r3, 0
/* 80D484DC  41 82 00 D0 */	beq lbl_80D485AC
/* 80D484E0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80D484E4  28 00 00 00 */	cmplwi r0, 0
/* 80D484E8  40 82 00 C4 */	bne lbl_80D485AC
/* 80D484EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80D484F0  2C 00 00 00 */	cmpwi r0, 0
/* 80D484F4  41 82 00 24 */	beq lbl_80D48518
/* 80D484F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D484FC  4B 3F D2 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D48500  38 00 00 00 */	li r0, 0
/* 80D48504  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80D48508  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D4850C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80D48510  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D48514  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80D48518:
/* 80D48518  38 00 00 00 */	li r0, 0
/* 80D4851C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D48520  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80D48524  4B 3F D1 E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D48528  7C 64 1B 78 */	mr r4, r3
/* 80D4852C  7F C3 F3 78 */	mr r3, r30
/* 80D48530  38 BF 00 00 */	addi r5, r31, 0
/* 80D48534  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80D48538  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80D4853C  4B 40 26 95 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80D48540  2C 03 00 00 */	cmpwi r3, 0
/* 80D48544  41 82 00 3C */	beq lbl_80D48580
/* 80D48548  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80D4854C  2C 00 00 01 */	cmpwi r0, 1
/* 80D48550  41 82 00 28 */	beq lbl_80D48578
/* 80D48554  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D48558  4B 3F D1 A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D4855C  38 00 00 00 */	li r0, 0
/* 80D48560  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80D48564  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D48568  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80D4856C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D48570  38 00 00 01 */	li r0, 1
/* 80D48574  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80D48578:
/* 80D48578  38 00 00 00 */	li r0, 0
/* 80D4857C  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80D48580:
/* 80D48580  7F C3 F3 78 */	mr r3, r30
/* 80D48584  4B 40 2D B5 */	bl srchPlayerActor__8daNpcT_cFv
/* 80D48588  2C 03 00 00 */	cmpwi r3, 0
/* 80D4858C  40 82 00 CC */	bne lbl_80D48658
/* 80D48590  A8 7E 0D 7A */	lha r3, 0xd7a(r30)
/* 80D48594  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80D48598  7C 03 00 00 */	cmpw r3, r0
/* 80D4859C  40 82 00 BC */	bne lbl_80D48658
/* 80D485A0  38 00 00 01 */	li r0, 1
/* 80D485A4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80D485A8  48 00 00 B0 */	b lbl_80D48658
lbl_80D485AC:
/* 80D485AC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80D485B0  2C 00 00 00 */	cmpwi r0, 0
/* 80D485B4  41 82 00 24 */	beq lbl_80D485D8
/* 80D485B8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D485BC  4B 3F D1 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D485C0  38 00 00 00 */	li r0, 0
/* 80D485C4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80D485C8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D485CC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80D485D0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D485D4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80D485D8:
/* 80D485D8  38 00 00 00 */	li r0, 0
/* 80D485DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80D485E0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80D485E4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80D485E8  7C 04 00 00 */	cmpw r4, r0
/* 80D485EC  41 82 00 58 */	beq lbl_80D48644
/* 80D485F0  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80D485F4  28 00 00 00 */	cmplwi r0, 0
/* 80D485F8  40 82 00 18 */	bne lbl_80D48610
/* 80D485FC  7F C3 F3 78 */	mr r3, r30
/* 80D48600  4B 40 24 19 */	bl setAngle__8daNpcT_cFs
/* 80D48604  38 00 00 01 */	li r0, 1
/* 80D48608  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80D4860C  48 00 00 2C */	b lbl_80D48638
lbl_80D48610:
/* 80D48610  7F C3 F3 78 */	mr r3, r30
/* 80D48614  38 A0 FF FF */	li r5, -1
/* 80D48618  38 C0 FF FF */	li r6, -1
/* 80D4861C  38 E0 00 0F */	li r7, 0xf
/* 80D48620  39 00 00 00 */	li r8, 0
/* 80D48624  4B 40 30 25 */	bl step__8daNpcT_cFsiiii
/* 80D48628  2C 03 00 00 */	cmpwi r3, 0
/* 80D4862C  41 82 00 0C */	beq lbl_80D48638
/* 80D48630  38 00 00 01 */	li r0, 1
/* 80D48634  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80D48638:
/* 80D48638  38 00 00 00 */	li r0, 0
/* 80D4863C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D48640  48 00 00 18 */	b lbl_80D48658
lbl_80D48644:
/* 80D48644  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80D48648  28 00 00 00 */	cmplwi r0, 0
/* 80D4864C  40 82 00 0C */	bne lbl_80D48658
/* 80D48650  7F C3 F3 78 */	mr r3, r30
/* 80D48654  4B 40 2C E5 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80D48658:
/* 80D48658  88 1E 11 28 */	lbz r0, 0x1128(r30)
/* 80D4865C  28 00 00 00 */	cmplwi r0, 0
/* 80D48660  40 82 00 24 */	bne lbl_80D48684
/* 80D48664  7F C3 F3 78 */	mr r3, r30
/* 80D48668  48 00 00 39 */	bl is_AppearDemo_start__8daPeru_cFv
/* 80D4866C  2C 03 00 00 */	cmpwi r3, 0
/* 80D48670  41 82 00 14 */	beq lbl_80D48684
/* 80D48674  38 00 00 01 */	li r0, 1
/* 80D48678  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80D4867C  7F C3 F3 78 */	mr r3, r30
/* 80D48680  48 00 00 A1 */	bl _AppearDemoTag_delete__8daPeru_cFv
lbl_80D48684:
/* 80D48684  38 60 00 01 */	li r3, 1
/* 80D48688  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4868C  4B 61 9B 9D */	bl _restgpr_29
/* 80D48690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D48694  7C 08 03 A6 */	mtlr r0
/* 80D48698  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4869C  4E 80 00 20 */	blr 
