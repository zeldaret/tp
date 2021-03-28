lbl_8033CC08:
/* 8033CC08  7C 08 02 A6 */	mflr r0
/* 8033CC0C  90 01 00 04 */	stw r0, 4(r1)
/* 8033CC10  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033CC14  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033CC18  7C 7F 1B 78 */	mr r31, r3
/* 8033CC1C  4B FF EA A9 */	bl ICFlashInvalidate
/* 8033CC20  7C 00 04 AC */	sync
/* 8033CC24  4C 00 01 2C */	isync 
/* 8033CC28  7F E8 03 A6 */	mtlr r31
/* 8033CC2C  4E 80 00 20 */	blr 
/* 8033CC30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033CC34  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033CC38  38 21 00 18 */	addi r1, r1, 0x18
/* 8033CC3C  7C 08 03 A6 */	mtlr r0
/* 8033CC40  4E 80 00 20 */	blr 
