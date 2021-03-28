lbl_8023A9D8:
/* 8023A9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023A9DC  7C 08 02 A6 */	mflr r0
/* 8023A9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023A9E4  54 80 10 3A */	slwi r0, r4, 2
/* 8023A9E8  7C 63 02 14 */	add r3, r3, r0
/* 8023A9EC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8023A9F0  48 01 99 75 */	bl getGlobalPosY__8CPaneMgrFv
/* 8023A9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023A9F8  7C 08 03 A6 */	mtlr r0
/* 8023A9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023AA00  4E 80 00 20 */	blr 
