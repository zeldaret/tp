lbl_809A3864:
/* 809A3864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A3868  7C 08 02 A6 */	mflr r0
/* 809A386C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A3870  48 00 00 15 */	bl create__12daNpcCoach_cFv
/* 809A3874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A3878  7C 08 03 A6 */	mtlr r0
/* 809A387C  38 21 00 10 */	addi r1, r1, 0x10
/* 809A3880  4E 80 00 20 */	blr 
