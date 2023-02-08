lbl_80B914F4:
/* 80B914F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B914F8  7C 08 02 A6 */	mflr r0
/* 80B914FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B91500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B91504  93 C1 00 08 */	stw r30, 8(r1)
/* 80B91508  7C 7F 1B 78 */	mr r31, r3
/* 80B9150C  A0 03 0E 26 */	lhz r0, 0xe26(r3)
/* 80B91510  2C 00 00 02 */	cmpwi r0, 2
/* 80B91514  41 82 00 74 */	beq lbl_80B91588
/* 80B91518  40 80 01 C8 */	bge lbl_80B916E0
/* 80B9151C  2C 00 00 00 */	cmpwi r0, 0
/* 80B91520  41 82 00 0C */	beq lbl_80B9152C
/* 80B91524  48 00 01 BC */	b lbl_80B916E0
/* 80B91528  48 00 01 B8 */	b lbl_80B916E0
lbl_80B9152C:
/* 80B9152C  38 80 00 11 */	li r4, 0x11
/* 80B91530  3C A0 80 B9 */	lis r5, lit_4767@ha /* 0x80B932A8@ha */
/* 80B91534  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)  /* 0x80B932A8@l */
/* 80B91538  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B9153C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91540  7D 89 03 A6 */	mtctr r12
/* 80B91544  4E 80 04 21 */	bctrl 
/* 80B91548  7F E3 FB 78 */	mr r3, r31
/* 80B9154C  38 80 00 00 */	li r4, 0
/* 80B91550  3C A0 80 B9 */	lis r5, lit_4767@ha /* 0x80B932A8@ha */
/* 80B91554  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)  /* 0x80B932A8@l */
/* 80B91558  38 A0 00 00 */	li r5, 0
/* 80B9155C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B91560  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91564  7D 89 03 A6 */	mtctr r12
/* 80B91568  4E 80 04 21 */	bctrl 
/* 80B9156C  7F E3 FB 78 */	mr r3, r31
/* 80B91570  38 80 00 00 */	li r4, 0
/* 80B91574  4B FF FB C9 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B91578  38 00 00 00 */	li r0, 0
/* 80B9157C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B91580  38 00 00 02 */	li r0, 2
/* 80B91584  B0 1F 0E 26 */	sth r0, 0xe26(r31)
lbl_80B91588:
/* 80B91588  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80B9158C  28 00 00 00 */	cmplwi r0, 0
/* 80B91590  40 82 01 50 */	bne lbl_80B916E0
/* 80B91594  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B91598  4B 5B F1 55 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B9159C  30 03 FF FF */	addic r0, r3, -1
/* 80B915A0  7C 00 19 10 */	subfe r0, r0, r3
/* 80B915A4  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80B915A8  7F E3 FB 78 */	mr r3, r31
/* 80B915AC  7F C4 F3 78 */	mr r4, r30
/* 80B915B0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B915B4  4B 5C 34 2D */	bl chkFindPlayer2__8daNpcF_cFis
/* 80B915B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B915BC  41 82 00 2C */	beq lbl_80B915E8
/* 80B915C0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B915C4  40 82 00 3C */	bne lbl_80B91600
/* 80B915C8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B915CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B915D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B915D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B915D8  4B 5B F0 E5 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B915DC  38 00 00 00 */	li r0, 0
/* 80B915E0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B915E4  48 00 00 1C */	b lbl_80B91600
lbl_80B915E8:
/* 80B915E8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B915EC  41 82 00 14 */	beq lbl_80B91600
/* 80B915F0  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B915F4  4B 5B F0 ED */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B915F8  38 00 00 00 */	li r0, 0
/* 80B915FC  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B91600:
/* 80B91600  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B91604  4B 5B F0 E9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B91608  28 03 00 00 */	cmplwi r3, 0
/* 80B9160C  41 82 00 14 */	beq lbl_80B91620
/* 80B91610  7F E3 FB 78 */	mr r3, r31
/* 80B91614  38 80 00 02 */	li r4, 2
/* 80B91618  4B FF FB 25 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B9161C  48 00 00 44 */	b lbl_80B91660
lbl_80B91620:
/* 80B91620  7F E3 FB 78 */	mr r3, r31
/* 80B91624  38 80 00 00 */	li r4, 0
/* 80B91628  4B FF FB 15 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B9162C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B91630  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B91634  7C 04 00 00 */	cmpw r4, r0
/* 80B91638  41 82 00 28 */	beq lbl_80B91660
/* 80B9163C  7F E3 FB 78 */	mr r3, r31
/* 80B91640  38 A0 00 0C */	li r5, 0xc
/* 80B91644  38 C0 00 0C */	li r6, 0xc
/* 80B91648  38 E0 00 0F */	li r7, 0xf
/* 80B9164C  4B 5C 2A 59 */	bl step__8daNpcF_cFsiii
/* 80B91650  2C 03 00 00 */	cmpwi r3, 0
/* 80B91654  41 82 00 0C */	beq lbl_80B91660
/* 80B91658  38 00 00 00 */	li r0, 0
/* 80B9165C  B0 1F 0E 26 */	sth r0, 0xe26(r31)
lbl_80B91660:
/* 80B91660  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B91664  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B91668  7C 03 00 00 */	cmpw r3, r0
/* 80B9166C  40 82 00 6C */	bne lbl_80B916D8
/* 80B91670  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B91674  4B 5B F0 79 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B91678  30 03 FF FF */	addic r0, r3, -1
/* 80B9167C  7C 00 19 10 */	subfe r0, r0, r3
/* 80B91680  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B91684  7F E3 FB 78 */	mr r3, r31
/* 80B91688  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 80B9168C  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 80B91690  3C C0 80 B9 */	lis r6, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B91694  38 C6 31 FC */	addi r6, r6, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B91698  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 80B9169C  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 80B916A0  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 80B916A4  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 80B916A8  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 80B916AC  38 E0 00 78 */	li r7, 0x78
/* 80B916B0  39 00 00 01 */	li r8, 1
/* 80B916B4  4B 5C 2C B9 */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 80B916B8  7C 64 1B 79 */	or. r4, r3, r3
/* 80B916BC  41 82 00 24 */	beq lbl_80B916E0
/* 80B916C0  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80B916C4  4B 5B EF F9 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B916C8  7F E3 FB 78 */	mr r3, r31
/* 80B916CC  38 80 00 04 */	li r4, 4
/* 80B916D0  4B FF FA 6D */	bl setLookMode__11daNpc_zrC_cFi
/* 80B916D4  48 00 00 0C */	b lbl_80B916E0
lbl_80B916D8:
/* 80B916D8  38 00 00 00 */	li r0, 0
/* 80B916DC  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_80B916E0:
/* 80B916E0  38 60 00 01 */	li r3, 1
/* 80B916E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B916E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B916EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B916F0  7C 08 03 A6 */	mtlr r0
/* 80B916F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B916F8  4E 80 00 20 */	blr 
