lbl_80312DBC:
/* 80312DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312DC0  7C 08 02 A6 */	mflr r0
/* 80312DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312DCC  7C 7F 1B 78 */	mr r31, r3
/* 80312DD0  90 83 00 34 */	stw r4, 0x34(r3)
/* 80312DD4  4B FF FE 01 */	bl calcDifferedBufferSize__14J3DShapePacketFUl
/* 80312DD8  7C 64 1B 78 */	mr r4, r3
/* 80312DDC  7F E3 FB 78 */	mr r3, r31
/* 80312DE0  4B FF FA 2D */	bl newDisplayList__13J3DDrawPacketFUl
/* 80312DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80312DE8  41 82 00 08 */	beq lbl_80312DF0
/* 80312DEC  48 00 00 08 */	b lbl_80312DF4
lbl_80312DF0:
/* 80312DF0  38 60 00 00 */	li r3, 0
lbl_80312DF4:
/* 80312DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312DFC  7C 08 03 A6 */	mtlr r0
/* 80312E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80312E04  4E 80 00 20 */	blr 
