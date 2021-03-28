lbl_8003ECD8:
/* 8003ECD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003ECDC  7C 08 02 A6 */	mflr r0
/* 8003ECE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003ECE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003ECE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003ECEC  38 63 09 58 */	addi r3, r3, 0x958
/* 8003ECF0  38 80 00 00 */	li r4, 0
/* 8003ECF4  4B FF 5C 41 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8003ECF8  30 03 FF FF */	addic r0, r3, -1
/* 8003ECFC  7C 60 19 10 */	subfe r3, r0, r3
/* 8003ED00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003ED04  7C 08 03 A6 */	mtlr r0
/* 8003ED08  38 21 00 10 */	addi r1, r1, 0x10
/* 8003ED0C  4E 80 00 20 */	blr 
