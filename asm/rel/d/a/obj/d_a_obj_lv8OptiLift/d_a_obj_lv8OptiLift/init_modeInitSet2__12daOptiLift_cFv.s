lbl_80C8B484:
/* 80C8B484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B488  7C 08 02 A6 */	mflr r0
/* 80C8B48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B494  7C 7F 1B 78 */	mr r31, r3
/* 80C8B498  48 00 00 41 */	bl liftReset__12daOptiLift_cFv
/* 80C8B49C  38 00 00 08 */	li r0, 8
/* 80C8B4A0  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C8B4A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B4AC  7C 08 03 A6 */	mtlr r0
/* 80C8B4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B4B4  4E 80 00 20 */	blr 
