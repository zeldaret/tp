lbl_80D5B08C:
/* 80D5B08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B090  7C 08 02 A6 */	mflr r0
/* 80D5B094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B098  4B FF FD 55 */	bl Delete__15daTag_Lv5Soup_cFv
/* 80D5B09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B0A0  7C 08 03 A6 */	mtlr r0
/* 80D5B0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B0A8  4E 80 00 20 */	blr 
