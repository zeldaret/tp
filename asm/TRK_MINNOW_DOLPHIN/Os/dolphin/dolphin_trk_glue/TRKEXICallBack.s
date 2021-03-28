lbl_80372114:
/* 80372114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372118  7C 08 02 A6 */	mflr r0
/* 8037211C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372124  7C 9F 23 78 */	mr r31, r4
/* 80372128  4B FC EB DD */	bl OSEnableScheduler
/* 8037212C  7F E3 FB 78 */	mr r3, r31
/* 80372130  38 80 05 00 */	li r4, 0x500
/* 80372134  4B FF FA C1 */	bl TRKLoadContext
/* 80372138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037213C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372140  7C 08 03 A6 */	mtlr r0
/* 80372144  38 21 00 10 */	addi r1, r1, 0x10
/* 80372148  4E 80 00 20 */	blr 
