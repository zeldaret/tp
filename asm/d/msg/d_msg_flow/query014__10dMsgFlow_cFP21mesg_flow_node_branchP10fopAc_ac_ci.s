lbl_8024B5BC:
/* 8024B5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B5C0  7C 08 02 A6 */	mflr r0
/* 8024B5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B5C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B5CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B5D0  38 63 09 58 */	addi r3, r3, 0x958
/* 8024B5D4  A0 84 00 04 */	lhz r4, 4(r4)
/* 8024B5D8  4B DE 93 15 */	bl isItem__12dSv_memBit_cCFi
/* 8024B5DC  7C 60 00 34 */	cntlzw r0, r3
/* 8024B5E0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8024B5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B5E8  7C 08 03 A6 */	mtlr r0
/* 8024B5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B5F0  4E 80 00 20 */	blr 
