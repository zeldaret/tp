lbl_8028CF68:
/* 8028CF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028CF6C  7C 08 02 A6 */	mflr r0
/* 8028CF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028CF74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028CF78  83 E3 01 18 */	lwz r31, 0x118(r3)
/* 8028CF7C  7F E3 FB 78 */	mr r3, r31
/* 8028CF80  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CF84  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028CF88  7D 89 03 A6 */	mtctr r12
/* 8028CF8C  4E 80 04 21 */	bctrl 
/* 8028CF90  54 64 00 3C */	rlwinm r4, r3, 0, 0, 0x1e
/* 8028CF94  7F E3 FB 78 */	mr r3, r31
/* 8028CF98  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CF9C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028CFA0  7D 89 03 A6 */	mtctr r12
/* 8028CFA4  4E 80 04 21 */	bctrl 
/* 8028CFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028CFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028CFB0  7C 08 03 A6 */	mtlr r0
/* 8028CFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8028CFB8  4E 80 00 20 */	blr 
