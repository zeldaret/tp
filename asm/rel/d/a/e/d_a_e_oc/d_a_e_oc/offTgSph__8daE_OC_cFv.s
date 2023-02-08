lbl_8072DD8C:
/* 8072DD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072DD90  7C 08 02 A6 */	mflr r0
/* 8072DD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072DD98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072DD9C  7C 7F 1B 78 */	mr r31, r3
/* 8072DDA0  80 03 09 74 */	lwz r0, 0x974(r3)
/* 8072DDA4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8072DDA8  90 03 09 74 */	stw r0, 0x974(r3)
/* 8072DDAC  38 7F 09 5C */	addi r3, r31, 0x95c
/* 8072DDB0  81 9F 09 98 */	lwz r12, 0x998(r31)
/* 8072DDB4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8072DDB8  7D 89 03 A6 */	mtctr r12
/* 8072DDBC  4E 80 04 21 */	bctrl 
/* 8072DDC0  80 1F 0A AC */	lwz r0, 0xaac(r31)
/* 8072DDC4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8072DDC8  90 1F 0A AC */	stw r0, 0xaac(r31)
/* 8072DDCC  38 7F 0A 94 */	addi r3, r31, 0xa94
/* 8072DDD0  81 9F 0A D0 */	lwz r12, 0xad0(r31)
/* 8072DDD4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8072DDD8  7D 89 03 A6 */	mtctr r12
/* 8072DDDC  4E 80 04 21 */	bctrl 
/* 8072DDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072DDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072DDE8  7C 08 03 A6 */	mtlr r0
/* 8072DDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8072DDF0  4E 80 00 20 */	blr 
