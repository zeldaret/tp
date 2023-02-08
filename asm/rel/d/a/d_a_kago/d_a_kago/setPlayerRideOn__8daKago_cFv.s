lbl_8084AB8C:
/* 8084AB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084AB90  7C 08 02 A6 */	mflr r0
/* 8084AB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084AB98  7C 64 1B 78 */	mr r4, r3
/* 8084AB9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084ABA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084ABA4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084ABA8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8084ABAC  81 8C 02 40 */	lwz r12, 0x240(r12)
/* 8084ABB0  7D 89 03 A6 */	mtctr r12
/* 8084ABB4  4E 80 04 21 */	bctrl 
/* 8084ABB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084ABBC  7C 08 03 A6 */	mtlr r0
/* 8084ABC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8084ABC4  4E 80 00 20 */	blr 
