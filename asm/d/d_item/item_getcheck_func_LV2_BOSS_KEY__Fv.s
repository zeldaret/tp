lbl_8009B648:
/* 8009B648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B64C  7C 08 02 A6 */	mflr r0
/* 8009B650  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B65C  38 63 09 58 */	addi r3, r3, 0x958
/* 8009B660  38 80 00 02 */	li r4, 2
/* 8009B664  4B F9 92 D1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8009B668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B66C  7C 08 03 A6 */	mtlr r0
/* 8009B670  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B674  4E 80 00 20 */	blr 
