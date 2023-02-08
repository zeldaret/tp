lbl_8045E49C:
/* 8045E49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E4A0  7C 08 02 A6 */	mflr r0
/* 8045E4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E4A8  4B FF FE 75 */	bl draw__12daDbDoor00_cFv
/* 8045E4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E4B0  7C 08 03 A6 */	mtlr r0
/* 8045E4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E4B8  4E 80 00 20 */	blr 
