lbl_8028C7B4:
/* 8028C7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028C7B8  7C 08 02 A6 */	mflr r0
/* 8028C7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028C7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028C7C4  83 E3 00 8C */	lwz r31, 0x8c(r3)
/* 8028C7C8  7F E3 FB 78 */	mr r3, r31
/* 8028C7CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028C7D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028C7D4  7D 89 03 A6 */	mtctr r12
/* 8028C7D8  4E 80 04 21 */	bctrl 
/* 8028C7DC  54 64 00 3C */	rlwinm r4, r3, 0, 0, 0x1e
/* 8028C7E0  7F E3 FB 78 */	mr r3, r31
/* 8028C7E4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028C7E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028C7EC  7D 89 03 A6 */	mtctr r12
/* 8028C7F0  4E 80 04 21 */	bctrl 
/* 8028C7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028C7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028C7FC  7C 08 03 A6 */	mtlr r0
/* 8028C800  38 21 00 10 */	addi r1, r1, 0x10
/* 8028C804  4E 80 00 20 */	blr 
