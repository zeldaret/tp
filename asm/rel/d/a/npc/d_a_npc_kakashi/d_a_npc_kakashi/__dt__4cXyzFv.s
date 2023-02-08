lbl_8054DDD0:
/* 8054DDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DDD4  7C 08 02 A6 */	mflr r0
/* 8054DDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DDDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DDE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054DDE4  41 82 00 10 */	beq lbl_8054DDF4
/* 8054DDE8  7C 80 07 35 */	extsh. r0, r4
/* 8054DDEC  40 81 00 08 */	ble lbl_8054DDF4
/* 8054DDF0  4B D8 0F 4D */	bl __dl__FPv
lbl_8054DDF4:
/* 8054DDF4  7F E3 FB 78 */	mr r3, r31
/* 8054DDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DE00  7C 08 03 A6 */	mtlr r0
/* 8054DE04  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DE08  4E 80 00 20 */	blr 
