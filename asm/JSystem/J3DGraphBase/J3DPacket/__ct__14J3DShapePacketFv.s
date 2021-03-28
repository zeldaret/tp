lbl_80312B20:
/* 80312B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312B24  7C 08 02 A6 */	mflr r0
/* 80312B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312B30  7C 7F 1B 78 */	mr r31, r3
/* 80312B34  4B FF FC 45 */	bl __ct__13J3DDrawPacketFv
/* 80312B38  3C 60 80 3D */	lis r3, __vt__14J3DShapePacket@ha
/* 80312B3C  38 03 D9 40 */	addi r0, r3, __vt__14J3DShapePacket@l
/* 80312B40  90 1F 00 00 */	stw r0, 0(r31)
/* 80312B44  38 00 00 00 */	li r0, 0
/* 80312B48  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80312B4C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80312B50  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80312B54  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80312B58  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80312B5C  7F E3 FB 78 */	mr r3, r31
/* 80312B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312B68  7C 08 03 A6 */	mtlr r0
/* 80312B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80312B70  4E 80 00 20 */	blr 
