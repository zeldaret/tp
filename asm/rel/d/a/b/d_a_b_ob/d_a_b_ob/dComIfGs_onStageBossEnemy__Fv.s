lbl_8061A8DC:
/* 8061A8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A8E0  7C 08 02 A6 */	mflr r0
/* 8061A8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A8EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061A8F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061A8F4  3B E3 09 58 */	addi r31, r3, 0x958
/* 8061A8F8  7F E3 FB 78 */	mr r3, r31
/* 8061A8FC  38 80 00 03 */	li r4, 3
/* 8061A900  4B A1 A0 18 */	b onDungeonItem__12dSv_memBit_cFi
/* 8061A904  7F E3 FB 78 */	mr r3, r31
/* 8061A908  38 80 00 06 */	li r4, 6
/* 8061A90C  4B A1 A0 0C */	b onDungeonItem__12dSv_memBit_cFi
/* 8061A910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A918  7C 08 03 A6 */	mtlr r0
/* 8061A91C  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A920  4E 80 00 20 */	blr 
