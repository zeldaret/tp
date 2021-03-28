lbl_80B54628:
/* 80B54628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5462C  7C 08 02 A6 */	mflr r0
/* 80B54630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B54634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B54638  7C 7F 1B 78 */	mr r31, r3
/* 80B5463C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B54640  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80B54644  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B54648  40 80 00 64 */	bge lbl_80B546AC
/* 80B5464C  28 1F 00 00 */	cmplwi r31, 0
/* 80B54650  41 82 00 5C */	beq lbl_80B546AC
/* 80B54654  7C 1F 20 40 */	cmplw r31, r4
/* 80B54658  41 82 00 54 */	beq lbl_80B546AC
/* 80B5465C  28 1F 00 00 */	cmplwi r31, 0
/* 80B54660  41 82 00 0C */	beq lbl_80B5466C
/* 80B54664  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B54668  48 00 00 08 */	b lbl_80B54670
lbl_80B5466C:
/* 80B5466C  38 60 FF FF */	li r3, -1
lbl_80B54670:
/* 80B54670  4B 4C CD 2C */	b fpcEx_IsExist__FUi
/* 80B54674  2C 03 00 00 */	cmpwi r3, 0
/* 80B54678  41 82 00 34 */	beq lbl_80B546AC
/* 80B5467C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B54680  2C 00 02 7C */	cmpwi r0, 0x27c
/* 80B54684  40 82 00 28 */	bne lbl_80B546AC
/* 80B54688  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B5468C  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 80B54690  80 85 00 00 */	lwz r4, 0(r5)
/* 80B54694  54 80 10 3A */	slwi r0, r4, 2
/* 80B54698  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80B5469C  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 80B546A0  7F E3 01 2E */	stwx r31, r3, r0
/* 80B546A4  38 04 00 01 */	addi r0, r4, 1
/* 80B546A8  90 05 00 00 */	stw r0, 0(r5)
lbl_80B546AC:
/* 80B546AC  38 60 00 00 */	li r3, 0
/* 80B546B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B546B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B546B8  7C 08 03 A6 */	mtlr r0
/* 80B546BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B546C0  4E 80 00 20 */	blr 
