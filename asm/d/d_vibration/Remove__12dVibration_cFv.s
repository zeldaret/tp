lbl_8006FFF8:
/* 8006FFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006FFFC  7C 08 02 A6 */	mflr r0
/* 80070000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80070004  4B FF FD FD */	bl Kill__12dVibration_cFv
/* 80070008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007000C  7C 08 03 A6 */	mtlr r0
/* 80070010  38 21 00 10 */	addi r1, r1, 0x10
/* 80070014  4E 80 00 20 */	blr 
