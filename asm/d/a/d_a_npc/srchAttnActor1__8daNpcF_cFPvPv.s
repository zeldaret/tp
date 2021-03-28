lbl_80152654:
/* 80152654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152658  7C 08 02 A6 */	mflr r0
/* 8015265C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80152664  7C 7F 1B 78 */	mr r31, r3
/* 80152668  80 0D 8A 70 */	lwz r0, mFindCount__8daNpcF_c(r13)
/* 8015266C  2C 00 00 64 */	cmpwi r0, 0x64
/* 80152670  40 80 00 60 */	bge lbl_801526D0
/* 80152674  4B EC 66 6D */	bl fopAc_IsActor__FPv
/* 80152678  2C 03 00 00 */	cmpwi r3, 0
/* 8015267C  41 82 00 54 */	beq lbl_801526D0
/* 80152680  A8 1F 00 08 */	lha r0, 8(r31)
/* 80152684  2C 00 01 08 */	cmpwi r0, 0x108
/* 80152688  41 82 00 2C */	beq lbl_801526B4
/* 8015268C  2C 00 01 06 */	cmpwi r0, 0x106
/* 80152690  41 82 00 24 */	beq lbl_801526B4
/* 80152694  2C 00 01 0D */	cmpwi r0, 0x10d
/* 80152698  41 82 00 1C */	beq lbl_801526B4
/* 8015269C  2C 00 01 0C */	cmpwi r0, 0x10c
/* 801526A0  41 82 00 14 */	beq lbl_801526B4
/* 801526A4  2C 00 01 0A */	cmpwi r0, 0x10a
/* 801526A8  41 82 00 0C */	beq lbl_801526B4
/* 801526AC  2C 00 03 00 */	cmpwi r0, 0x300
/* 801526B0  40 82 00 20 */	bne lbl_801526D0
lbl_801526B4:
/* 801526B4  80 8D 8A 70 */	lwz r4, mFindCount__8daNpcF_c(r13)
/* 801526B8  54 80 10 3A */	slwi r0, r4, 2
/* 801526BC  3C 60 80 42 */	lis r3, mFindActorPList__8daNpcF_c@ha
/* 801526C0  38 63 57 E8 */	addi r3, r3, mFindActorPList__8daNpcF_c@l
/* 801526C4  7F E3 01 2E */	stwx r31, r3, r0
/* 801526C8  38 04 00 01 */	addi r0, r4, 1
/* 801526CC  90 0D 8A 70 */	stw r0, mFindCount__8daNpcF_c(r13)
lbl_801526D0:
/* 801526D0  38 60 00 00 */	li r3, 0
/* 801526D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801526D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801526DC  7C 08 03 A6 */	mtlr r0
/* 801526E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801526E4  4E 80 00 20 */	blr 
