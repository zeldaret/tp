lbl_800B26DC:
/* 800B26DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B26E0  7C 08 02 A6 */	mflr r0
/* 800B26E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B26E8  48 00 0B 51 */	bl setRStatusEmphasys__9daAlink_cFUc
/* 800B26EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B26F0  7C 08 03 A6 */	mtlr r0
/* 800B26F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B26F8  4E 80 00 20 */	blr 
