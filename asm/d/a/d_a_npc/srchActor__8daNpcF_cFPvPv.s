lbl_801526E8:
/* 801526E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801526EC  7C 08 02 A6 */	mflr r0
/* 801526F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801526F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801526F8  93 C1 00 08 */	stw r30, 8(r1)
/* 801526FC  7C 7E 1B 78 */	mr r30, r3
/* 80152700  7C 9F 23 78 */	mr r31, r4
/* 80152704  80 0D 8A 70 */	lwz r0, mFindCount__8daNpcF_c(r13)
/* 80152708  2C 00 00 64 */	cmpwi r0, 0x64
/* 8015270C  40 80 00 44 */	bge lbl_80152750
/* 80152710  4B EC 65 D1 */	bl fopAc_IsActor__FPv
/* 80152714  2C 03 00 00 */	cmpwi r3, 0
/* 80152718  41 82 00 38 */	beq lbl_80152750
/* 8015271C  7C 1E F8 40 */	cmplw r30, r31
/* 80152720  41 82 00 30 */	beq lbl_80152750
/* 80152724  A8 6D 8A 74 */	lha r3, mSrchActorName__8daNpcF_c(r13)
/* 80152728  A8 1E 00 08 */	lha r0, 8(r30)
/* 8015272C  7C 03 00 00 */	cmpw r3, r0
/* 80152730  40 82 00 20 */	bne lbl_80152750
/* 80152734  80 8D 8A 70 */	lwz r4, mFindCount__8daNpcF_c(r13)
/* 80152738  54 80 10 3A */	slwi r0, r4, 2
/* 8015273C  3C 60 80 42 */	lis r3, mFindActorPList__8daNpcF_c@ha /* 0x804257E8@ha */
/* 80152740  38 63 57 E8 */	addi r3, r3, mFindActorPList__8daNpcF_c@l /* 0x804257E8@l */
/* 80152744  7F C3 01 2E */	stwx r30, r3, r0
/* 80152748  38 04 00 01 */	addi r0, r4, 1
/* 8015274C  90 0D 8A 70 */	stw r0, mFindCount__8daNpcF_c(r13)
lbl_80152750:
/* 80152750  38 60 00 00 */	li r3, 0
/* 80152754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80152758  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015275C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152760  7C 08 03 A6 */	mtlr r0
/* 80152764  38 21 00 10 */	addi r1, r1, 0x10
/* 80152768  4E 80 00 20 */	blr 
