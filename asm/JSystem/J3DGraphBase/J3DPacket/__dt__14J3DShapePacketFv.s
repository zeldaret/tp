lbl_80312B74:
/* 80312B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312B78  7C 08 02 A6 */	mflr r0
/* 80312B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312B84  93 C1 00 08 */	stw r30, 8(r1)
/* 80312B88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80312B8C  7C 9F 23 78 */	mr r31, r4
/* 80312B90  41 82 00 28 */	beq lbl_80312BB8
/* 80312B94  3C 80 80 3D */	lis r4, __vt__14J3DShapePacket@ha /* 0x803CD940@ha */
/* 80312B98  38 04 D9 40 */	addi r0, r4, __vt__14J3DShapePacket@l /* 0x803CD940@l */
/* 80312B9C  90 1E 00 00 */	stw r0, 0(r30)
/* 80312BA0  38 80 00 00 */	li r4, 0
/* 80312BA4  4B FF FC 0D */	bl __dt__13J3DDrawPacketFv
/* 80312BA8  7F E0 07 35 */	extsh. r0, r31
/* 80312BAC  40 81 00 0C */	ble lbl_80312BB8
/* 80312BB0  7F C3 F3 78 */	mr r3, r30
/* 80312BB4  4B FB C1 89 */	bl __dl__FPv
lbl_80312BB8:
/* 80312BB8  7F C3 F3 78 */	mr r3, r30
/* 80312BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312BC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80312BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312BC8  7C 08 03 A6 */	mtlr r0
/* 80312BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80312BD0  4E 80 00 20 */	blr 
