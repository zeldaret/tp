lbl_80566A70:
/* 80566A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566A74  7C 08 02 A6 */	mflr r0
/* 80566A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566A80  7C 7F 1B 78 */	mr r31, r3
/* 80566A84  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80566A88  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80566A8C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80566A90  40 80 00 64 */	bge lbl_80566AF4
/* 80566A94  28 1F 00 00 */	cmplwi r31, 0
/* 80566A98  41 82 00 5C */	beq lbl_80566AF4
/* 80566A9C  7C 1F 20 40 */	cmplw r31, r4
/* 80566AA0  41 82 00 54 */	beq lbl_80566AF4
/* 80566AA4  28 1F 00 00 */	cmplwi r31, 0
/* 80566AA8  41 82 00 0C */	beq lbl_80566AB4
/* 80566AAC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80566AB0  48 00 00 08 */	b lbl_80566AB8
lbl_80566AB4:
/* 80566AB4  38 60 FF FF */	li r3, -1
lbl_80566AB8:
/* 80566AB8  4B AB A8 E4 */	b fpcEx_IsExist__FUi
/* 80566ABC  2C 03 00 00 */	cmpwi r3, 0
/* 80566AC0  41 82 00 34 */	beq lbl_80566AF4
/* 80566AC4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80566AC8  2C 00 03 08 */	cmpwi r0, 0x308
/* 80566ACC  40 82 00 28 */	bne lbl_80566AF4
/* 80566AD0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80566AD4  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 80566AD8  80 85 00 00 */	lwz r4, 0(r5)
/* 80566ADC  54 80 10 3A */	slwi r0, r4, 2
/* 80566AE0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80566AE4  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 80566AE8  7F E3 01 2E */	stwx r31, r3, r0
/* 80566AEC  38 04 00 01 */	addi r0, r4, 1
/* 80566AF0  90 05 00 00 */	stw r0, 0(r5)
lbl_80566AF4:
/* 80566AF4  38 60 00 00 */	li r3, 0
/* 80566AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566B00  7C 08 03 A6 */	mtlr r0
/* 80566B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80566B08  4E 80 00 20 */	blr 
