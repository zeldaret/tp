lbl_802DC370:
/* 802DC370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC374  7C 08 02 A6 */	mflr r0
/* 802DC378  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC380  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC384  7C 7E 1B 78 */	mr r30, r3
/* 802DC388  7C 9F 23 78 */	mr r31, r4
/* 802DC38C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC390  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC394  7D 89 03 A6 */	mtctr r12
/* 802DC398  4E 80 04 21 */	bctrl 
/* 802DC39C  7C 9F 1A 14 */	add r4, r31, r3
/* 802DC3A0  38 84 FF FF */	addi r4, r4, -1
/* 802DC3A4  38 1F FF FF */	addi r0, r31, -1
/* 802DC3A8  7C 84 00 78 */	andc r4, r4, r0
/* 802DC3AC  7F E3 20 51 */	subf. r31, r3, r4
/* 802DC3B0  41 82 00 30 */	beq lbl_802DC3E0
/* 802DC3B4  7F C3 F3 78 */	mr r3, r30
/* 802DC3B8  38 A0 00 00 */	li r5, 0
/* 802DC3BC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DC3C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC3C4  7D 89 03 A6 */	mtctr r12
/* 802DC3C8  4E 80 04 21 */	bctrl 
/* 802DC3CC  7C 03 F8 00 */	cmpw r3, r31
/* 802DC3D0  41 82 00 10 */	beq lbl_802DC3E0
/* 802DC3D4  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DC3D8  60 00 00 01 */	ori r0, r0, 1
/* 802DC3DC  98 1E 00 04 */	stb r0, 4(r30)
lbl_802DC3E0:
/* 802DC3E0  7F E3 FB 78 */	mr r3, r31
/* 802DC3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC3E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC3F0  7C 08 03 A6 */	mtlr r0
/* 802DC3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC3F8  4E 80 00 20 */	blr 
