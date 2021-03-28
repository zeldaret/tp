lbl_80099A38:
/* 80099A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099A3C  7C 08 02 A6 */	mflr r0
/* 80099A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099A44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099A48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099A4C  38 63 09 58 */	addi r3, r3, 0x958
/* 80099A50  38 80 00 00 */	li r4, 0
/* 80099A54  4B F9 AE E1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80099A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099A5C  7C 08 03 A6 */	mtlr r0
/* 80099A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80099A64  4E 80 00 20 */	blr 
