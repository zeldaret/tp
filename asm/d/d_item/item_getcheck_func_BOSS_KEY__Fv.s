lbl_80099AB4:
/* 80099AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099AB8  7C 08 02 A6 */	mflr r0
/* 80099ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099AC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099AC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099AC8  38 63 09 58 */	addi r3, r3, 0x958
/* 80099ACC  38 80 00 02 */	li r4, 2
/* 80099AD0  4B F9 AE 65 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80099AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099AD8  7C 08 03 A6 */	mtlr r0
/* 80099ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80099AE0  4E 80 00 20 */	blr 
