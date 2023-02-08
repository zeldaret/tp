lbl_809A43A0:
/* 809A43A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A43A4  7C 08 02 A6 */	mflr r0
/* 809A43A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A43AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A43B0  7C 7F 1B 78 */	mr r31, r3
/* 809A43B4  48 00 00 29 */	bl setBaseMtx__12daNpcCoach_cFv
/* 809A43B8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A43BC  80 63 00 04 */	lwz r3, 4(r3)
/* 809A43C0  38 03 00 24 */	addi r0, r3, 0x24
/* 809A43C4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 809A43C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A43CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A43D0  7C 08 03 A6 */	mtlr r0
/* 809A43D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A43D8  4E 80 00 20 */	blr 
