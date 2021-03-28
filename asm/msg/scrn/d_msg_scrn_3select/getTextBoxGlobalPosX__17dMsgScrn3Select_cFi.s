lbl_8023A9AC:
/* 8023A9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023A9B0  7C 08 02 A6 */	mflr r0
/* 8023A9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023A9B8  54 80 10 3A */	slwi r0, r4, 2
/* 8023A9BC  7C 63 02 14 */	add r3, r3, r0
/* 8023A9C0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8023A9C4  48 01 99 25 */	bl getGlobalPosX__8CPaneMgrFv
/* 8023A9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023A9CC  7C 08 03 A6 */	mtlr r0
/* 8023A9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8023A9D4  4E 80 00 20 */	blr 
