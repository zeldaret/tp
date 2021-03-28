lbl_8002D878:
/* 8002D878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D87C  7C 08 02 A6 */	mflr r0
/* 8002D880  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D888  7C 7F 1B 78 */	mr r31, r3
/* 8002D88C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D894  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8002D898  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002D89C  7D 89 03 A6 */	mtctr r12
/* 8002D8A0  4E 80 04 21 */	bctrl 
/* 8002D8A4  88 03 00 09 */	lbz r0, 9(r3)
/* 8002D8A8  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8002D8AC  7C 1F 00 00 */	cmpw r31, r0
/* 8002D8B0  40 82 00 1C */	bne lbl_8002D8CC
/* 8002D8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D8BC  38 63 09 58 */	addi r3, r3, 0x958
/* 8002D8C0  38 80 00 06 */	li r4, 6
/* 8002D8C4  48 00 70 71 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8002D8C8  48 00 00 20 */	b lbl_8002D8E8
lbl_8002D8CC:
/* 8002D8CC  57 E4 28 34 */	slwi r4, r31, 5
/* 8002D8D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D8D4  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8002D8D8  7C 60 22 14 */	add r3, r0, r4
/* 8002D8DC  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8002D8E0  38 80 00 06 */	li r4, 6
/* 8002D8E4  48 00 70 51 */	bl isDungeonItem__12dSv_memBit_cCFi
lbl_8002D8E8:
/* 8002D8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D8F0  7C 08 03 A6 */	mtlr r0
/* 8002D8F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D8F8  4E 80 00 20 */	blr 
