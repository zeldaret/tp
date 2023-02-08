lbl_80CB54A0:
/* 80CB54A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB54A4  7C 08 02 A6 */	mflr r0
/* 80CB54A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB54AC  A8 A3 04 E6 */	lha r5, 0x4e6(r3)
/* 80CB54B0  88 03 05 78 */	lbz r0, 0x578(r3)
/* 80CB54B4  54 00 08 3C */	slwi r0, r0, 1
/* 80CB54B8  3C 80 80 CB */	lis r4, ADD_ANGLE@ha /* 0x80CB561C@ha */
/* 80CB54BC  38 84 56 1C */	addi r4, r4, ADD_ANGLE@l /* 0x80CB561C@l */
/* 80CB54C0  7C 04 02 AE */	lhax r0, r4, r0
/* 80CB54C4  7C 05 02 14 */	add r0, r5, r0
/* 80CB54C8  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80CB54CC  48 00 00 29 */	bl setModelMtx__11daObjProp_cFv
/* 80CB54D0  38 60 00 01 */	li r3, 1
/* 80CB54D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB54D8  7C 08 03 A6 */	mtlr r0
/* 80CB54DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB54E0  4E 80 00 20 */	blr 
