lbl_80CDC610:
/* 80CDC610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDC614  7C 08 02 A6 */	mflr r0
/* 80CDC618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDC61C  7C 64 1B 78 */	mr r4, r3
/* 80CDC620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDC624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDC628  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CDC62C  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80CDC630  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80CDC634  38 A0 00 FF */	li r5, 0xff
/* 80CDC638  38 C0 00 00 */	li r6, 0
/* 80CDC63C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CDC640  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 80CDC644  7D 89 03 A6 */	mtctr r12
/* 80CDC648  4E 80 04 21 */	bctrl 
/* 80CDC64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDC650  7C 08 03 A6 */	mtlr r0
/* 80CDC654  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDC658  4E 80 00 20 */	blr 
