lbl_800983EC:
/* 800983EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800983F0  7C 08 02 A6 */	mflr r0
/* 800983F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800983F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800983FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098400  38 63 09 58 */	addi r3, r3, 0x958
/* 80098404  38 80 00 02 */	li r4, 2
/* 80098408  4B F9 C5 11 */	bl onDungeonItem__12dSv_memBit_cFi
/* 8009840C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098410  7C 08 03 A6 */	mtlr r0
/* 80098414  38 21 00 10 */	addi r1, r1, 0x10
/* 80098418  4E 80 00 20 */	blr 
