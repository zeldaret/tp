lbl_8003ECA0:
/* 8003ECA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003ECA4  7C 08 02 A6 */	mflr r0
/* 8003ECA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003ECAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003ECB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003ECB4  38 63 09 58 */	addi r3, r3, 0x958
/* 8003ECB8  38 80 00 01 */	li r4, 1
/* 8003ECBC  4B FF 5C 79 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8003ECC0  30 03 FF FF */	addic r0, r3, -1
/* 8003ECC4  7C 60 19 10 */	subfe r3, r0, r3
/* 8003ECC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003ECCC  7C 08 03 A6 */	mtlr r0
/* 8003ECD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003ECD4  4E 80 00 20 */	blr 
