lbl_800995A4:
/* 800995A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800995A8  7C 08 02 A6 */	mflr r0
/* 800995AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800995B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800995B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800995B8  38 63 09 58 */	addi r3, r3, 0x958
/* 800995BC  38 80 00 02 */	li r4, 2
/* 800995C0  4B F9 B3 59 */	bl onDungeonItem__12dSv_memBit_cFi
/* 800995C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800995C8  7C 08 03 A6 */	mtlr r0
/* 800995CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800995D0  4E 80 00 20 */	blr 
