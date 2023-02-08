lbl_8045E4E8:
/* 8045E4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E4EC  7C 08 02 A6 */	mflr r0
/* 8045E4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E4F4  4B FF FF 35 */	bl Delete__12daDbDoor00_cFv
/* 8045E4F8  38 60 00 01 */	li r3, 1
/* 8045E4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E500  7C 08 03 A6 */	mtlr r0
/* 8045E504  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E508  4E 80 00 20 */	blr 
