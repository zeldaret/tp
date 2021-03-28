lbl_802DC4DC:
/* 802DC4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC4E0  7C 08 02 A6 */	mflr r0
/* 802DC4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC4EC  7C 7F 1B 78 */	mr r31, r3
/* 802DC4F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC4F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DC4F8  7D 89 03 A6 */	mtctr r12
/* 802DC4FC  4E 80 04 21 */	bctrl 
/* 802DC500  88 1F 00 04 */	lbz r0, 4(r31)
/* 802DC504  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 802DC508  98 1F 00 04 */	stb r0, 4(r31)
/* 802DC50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC514  7C 08 03 A6 */	mtlr r0
/* 802DC518  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC51C  4E 80 00 20 */	blr 
