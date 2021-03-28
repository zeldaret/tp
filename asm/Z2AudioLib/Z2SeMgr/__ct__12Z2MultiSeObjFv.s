lbl_802AB710:
/* 802AB710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB714  7C 08 02 A6 */	mflr r0
/* 802AB718  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB71C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB720  7C 7F 1B 78 */	mr r31, r3
/* 802AB724  48 00 33 E1 */	bl __ct__12Z2MultiSeMgrFv
/* 802AB728  38 00 FF FF */	li r0, -1
/* 802AB72C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802AB730  38 00 00 00 */	li r0, 0
/* 802AB734  98 1F 00 20 */	stb r0, 0x20(r31)
/* 802AB738  7F E3 FB 78 */	mr r3, r31
/* 802AB73C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB744  7C 08 03 A6 */	mtlr r0
/* 802AB748  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB74C  4E 80 00 20 */	blr 
