lbl_800995EC:
/* 800995EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800995F0  7C 08 02 A6 */	mflr r0
/* 800995F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800995F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800995FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099600  38 63 09 58 */	addi r3, r3, 0x958
/* 80099604  38 80 00 02 */	li r4, 2
/* 80099608  4B F9 B3 11 */	bl onDungeonItem__12dSv_memBit_cFi
/* 8009960C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099610  7C 08 03 A6 */	mtlr r0
/* 80099614  38 21 00 10 */	addi r1, r1, 0x10
/* 80099618  4E 80 00 20 */	blr 
