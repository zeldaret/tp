lbl_8028B7B0:
/* 8028B7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028B7B4  7C 08 02 A6 */	mflr r0
/* 8028B7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028B7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028B7C0  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 8028B7C4  7F E3 FB 78 */	mr r3, r31
/* 8028B7C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028B7CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028B7D0  7D 89 03 A6 */	mtctr r12
/* 8028B7D4  4E 80 04 21 */	bctrl 
/* 8028B7D8  54 64 00 3C */	rlwinm r4, r3, 0, 0, 0x1e
/* 8028B7DC  7F E3 FB 78 */	mr r3, r31
/* 8028B7E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028B7E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028B7E8  7D 89 03 A6 */	mtctr r12
/* 8028B7EC  4E 80 04 21 */	bctrl 
/* 8028B7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028B7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028B7F8  7C 08 03 A6 */	mtlr r0
/* 8028B7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028B800  4E 80 00 20 */	blr 
