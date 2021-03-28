lbl_80B544B0:
/* 80B544B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B544B4  7C 08 02 A6 */	mflr r0
/* 80B544B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B544BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B544C0  7C 7F 1B 78 */	mr r31, r3
/* 80B544C4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B544C8  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80B544CC  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B544D0  40 80 00 64 */	bge lbl_80B54534
/* 80B544D4  28 1F 00 00 */	cmplwi r31, 0
/* 80B544D8  41 82 00 5C */	beq lbl_80B54534
/* 80B544DC  7C 1F 20 40 */	cmplw r31, r4
/* 80B544E0  41 82 00 54 */	beq lbl_80B54534
/* 80B544E4  28 1F 00 00 */	cmplwi r31, 0
/* 80B544E8  41 82 00 0C */	beq lbl_80B544F4
/* 80B544EC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B544F0  48 00 00 08 */	b lbl_80B544F8
lbl_80B544F4:
/* 80B544F4  38 60 FF FF */	li r3, -1
lbl_80B544F8:
/* 80B544F8  4B 4C CE A4 */	b fpcEx_IsExist__FUi
/* 80B544FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B54500  41 82 00 34 */	beq lbl_80B54534
/* 80B54504  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B54508  2C 00 02 7B */	cmpwi r0, 0x27b
/* 80B5450C  40 82 00 28 */	bne lbl_80B54534
/* 80B54510  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B54514  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 80B54518  80 85 00 00 */	lwz r4, 0(r5)
/* 80B5451C  54 80 10 3A */	slwi r0, r4, 2
/* 80B54520  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80B54524  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 80B54528  7F E3 01 2E */	stwx r31, r3, r0
/* 80B5452C  38 04 00 01 */	addi r0, r4, 1
/* 80B54530  90 05 00 00 */	stw r0, 0(r5)
lbl_80B54534:
/* 80B54534  38 60 00 00 */	li r3, 0
/* 80B54538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5453C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B54540  7C 08 03 A6 */	mtlr r0
/* 80B54544  38 21 00 10 */	addi r1, r1, 0x10
/* 80B54548  4E 80 00 20 */	blr 
