lbl_80D5B0AC:
/* 80D5B0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B0B0  7C 08 02 A6 */	mflr r0
/* 80D5B0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B0B8  4B FF FD 3D */	bl Execute__15daTag_Lv5Soup_cFv
/* 80D5B0BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B0C0  7C 08 03 A6 */	mtlr r0
/* 80D5B0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B0C8  4E 80 00 20 */	blr 
