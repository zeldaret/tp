lbl_80D24198:
/* 80D24198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2419C  7C 08 02 A6 */	mflr r0
/* 80D241A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D241A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D241A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D241AC  80 04 5D AC */	lwz r0, 0x5dac(r4)
/* 80D241B0  28 03 00 00 */	cmplwi r3, 0
/* 80D241B4  41 82 00 18 */	beq lbl_80D241CC
/* 80D241B8  7C 03 03 78 */	mr r3, r0
/* 80D241BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D241C0  81 8C 02 10 */	lwz r12, 0x210(r12)
/* 80D241C4  7D 89 03 A6 */	mtctr r12
/* 80D241C8  4E 80 04 21 */	bctrl 
lbl_80D241CC:
/* 80D241CC  38 60 00 01 */	li r3, 1
/* 80D241D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D241D4  7C 08 03 A6 */	mtlr r0
/* 80D241D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D241DC  4E 80 00 20 */	blr 
