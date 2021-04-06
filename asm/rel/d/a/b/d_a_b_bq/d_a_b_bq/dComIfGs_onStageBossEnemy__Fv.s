lbl_805BA0DC:
/* 805BA0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA0E0  7C 08 02 A6 */	mflr r0
/* 805BA0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BA0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BA0F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BA0F4  3B E3 09 58 */	addi r31, r3, 0x958
/* 805BA0F8  7F E3 FB 78 */	mr r3, r31
/* 805BA0FC  38 80 00 03 */	li r4, 3
/* 805BA100  4B A7 A8 19 */	bl onDungeonItem__12dSv_memBit_cFi
/* 805BA104  7F E3 FB 78 */	mr r3, r31
/* 805BA108  38 80 00 06 */	li r4, 6
/* 805BA10C  4B A7 A8 0D */	bl onDungeonItem__12dSv_memBit_cFi
/* 805BA110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BA114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA118  7C 08 03 A6 */	mtlr r0
/* 805BA11C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA120  4E 80 00 20 */	blr 
