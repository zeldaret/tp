lbl_800437C4:
/* 800437C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800437C8  7C 08 02 A6 */	mflr r0
/* 800437CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800437D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800437D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800437D8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 800437DC  4B FF FF 51 */	bl getTelopNo__FPCc
/* 800437E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800437E4  7C 08 03 A6 */	mtlr r0
/* 800437E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800437EC  4E 80 00 20 */	blr 
