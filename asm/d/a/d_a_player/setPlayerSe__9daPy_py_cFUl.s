lbl_8015F520:
/* 8015F520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F524  7C 08 02 A6 */	mflr r0
/* 8015F528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F52C  7C 64 1B 78 */	mr r4, r3
/* 8015F530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F538  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8015F53C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015F540  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8015F544  7D 89 03 A6 */	mtctr r12
/* 8015F548  4E 80 04 21 */	bctrl 
/* 8015F54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F550  7C 08 03 A6 */	mtlr r0
/* 8015F554  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F558  4E 80 00 20 */	blr 
