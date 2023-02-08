lbl_80338A7C:
/* 80338A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338A80  7C 08 02 A6 */	mflr r0
/* 80338A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338A88  7C 85 23 78 */	mr r5, r4
/* 80338A8C  80 83 00 04 */	lwz r4, 4(r3)
/* 80338A90  48 00 00 15 */	bl setAnmVisibility__20J3DAnmFullLoader_v15FP20J3DAnmVisibilityFullPC24J3DAnmVisibilityFullData
/* 80338A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338A98  7C 08 03 A6 */	mtlr r0
/* 80338A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80338AA0  4E 80 00 20 */	blr 
