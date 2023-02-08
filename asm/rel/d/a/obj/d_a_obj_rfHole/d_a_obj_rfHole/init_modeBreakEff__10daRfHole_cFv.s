lbl_80CB96CC:
/* 80CB96CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB96D0  7C 08 02 A6 */	mflr r0
/* 80CB96D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB96D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB96DC  7C 7F 1B 78 */	mr r31, r3
/* 80CB96E0  48 00 00 89 */	bl setBreakEffect__10daRfHole_cFv
/* 80CB96E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB96E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB96EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB96F0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB96F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CB96F8  7C 05 07 74 */	extsb r5, r0
/* 80CB96FC  4B 37 BB 05 */	bl onSwitch__10dSv_info_cFii
/* 80CB9700  38 00 00 02 */	li r0, 2
/* 80CB9704  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CB9708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB970C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9710  7C 08 03 A6 */	mtlr r0
/* 80CB9714  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9718  4E 80 00 20 */	blr 
