lbl_8028BAF8:
/* 8028BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BAFC  7C 08 02 A6 */	mflr r0
/* 8028BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028BB08  83 E3 01 04 */	lwz r31, 0x104(r3)
/* 8028BB0C  7F E3 FB 78 */	mr r3, r31
/* 8028BB10  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028BB14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028BB18  7D 89 03 A6 */	mtctr r12
/* 8028BB1C  4E 80 04 21 */	bctrl 
/* 8028BB20  54 64 00 3C */	rlwinm r4, r3, 0, 0, 0x1e
/* 8028BB24  7F E3 FB 78 */	mr r3, r31
/* 8028BB28  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028BB2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028BB30  7D 89 03 A6 */	mtctr r12
/* 8028BB34  4E 80 04 21 */	bctrl 
/* 8028BB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028BB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BB40  7C 08 03 A6 */	mtlr r0
/* 8028BB44  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BB48  4E 80 00 20 */	blr 
