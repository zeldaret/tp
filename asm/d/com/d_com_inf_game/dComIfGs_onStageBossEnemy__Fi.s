lbl_8002D7D0:
/* 8002D7D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D7D4  7C 08 02 A6 */	mflr r0
/* 8002D7D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D7DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D7E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8002D7E4  7C 7E 1B 78 */	mr r30, r3
/* 8002D7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D7F0  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8002D7F4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002D7F8  7D 89 03 A6 */	mtctr r12
/* 8002D7FC  4E 80 04 21 */	bctrl 
/* 8002D800  88 03 00 09 */	lbz r0, 9(r3)
/* 8002D804  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8002D808  7C 1E 00 00 */	cmpw r30, r0
/* 8002D80C  40 82 00 28 */	bne lbl_8002D834
/* 8002D810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D818  3B E3 09 58 */	addi r31, r3, 0x958
/* 8002D81C  7F E3 FB 78 */	mr r3, r31
/* 8002D820  38 80 00 03 */	li r4, 3
/* 8002D824  48 00 70 F5 */	bl onDungeonItem__12dSv_memBit_cFi
/* 8002D828  7F E3 FB 78 */	mr r3, r31
/* 8002D82C  38 80 00 06 */	li r4, 6
/* 8002D830  48 00 70 E9 */	bl onDungeonItem__12dSv_memBit_cFi
lbl_8002D834:
/* 8002D834  57 C4 28 34 */	slwi r4, r30, 5
/* 8002D838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D83C  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8002D840  7C 60 22 14 */	add r3, r0, r4
/* 8002D844  3B E3 01 F0 */	addi r31, r3, 0x1f0
/* 8002D848  7F E3 FB 78 */	mr r3, r31
/* 8002D84C  38 80 00 03 */	li r4, 3
/* 8002D850  48 00 70 C9 */	bl onDungeonItem__12dSv_memBit_cFi
/* 8002D854  7F E3 FB 78 */	mr r3, r31
/* 8002D858  38 80 00 06 */	li r4, 6
/* 8002D85C  48 00 70 BD */	bl onDungeonItem__12dSv_memBit_cFi
/* 8002D860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D864  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002D868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D86C  7C 08 03 A6 */	mtlr r0
/* 8002D870  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D874  4E 80 00 20 */	blr 
