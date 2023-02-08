lbl_802FCCDC:
/* 802FCCDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802FCCE0  7C 08 02 A6 */	mflr r0
/* 802FCCE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FCCE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802FCCEC  7C 7F 1B 78 */	mr r31, r3
/* 802FCCF0  48 00 00 81 */	bl private_initiate__10J2DPictureFPC7ResTIMGPC7ResTLUT
/* 802FCCF4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 802FCCF8  28 03 00 00 */	cmplwi r3, 0
/* 802FCCFC  41 82 00 60 */	beq lbl_802FCD5C
/* 802FCD00  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802FCD04  A0 83 00 04 */	lhz r4, 4(r3)
/* 802FCD08  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FCD0C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FCD10  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FCD14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FCD18  C8 22 C8 70 */	lfd f1, lit_2021(r2)
/* 802FCD1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FCD20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FCD24  3C 60 43 30 */	lis r3, 0x4330
/* 802FCD28  90 61 00 18 */	stw r3, 0x18(r1)
/* 802FCD2C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802FCD30  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FCD34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FCD38  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802FCD3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FCD40  90 61 00 20 */	stw r3, 0x20(r1)
/* 802FCD44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FCD48  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FCD4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FCD50  7F E3 FB 78 */	mr r3, r31
/* 802FCD54  38 81 00 08 */	addi r4, r1, 8
/* 802FCD58  4B FF 9F C1 */	bl func_802F6D18
lbl_802FCD5C:
/* 802FCD5C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802FCD60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802FCD64  7C 08 03 A6 */	mtlr r0
/* 802FCD68  38 21 00 30 */	addi r1, r1, 0x30
/* 802FCD6C  4E 80 00 20 */	blr 
