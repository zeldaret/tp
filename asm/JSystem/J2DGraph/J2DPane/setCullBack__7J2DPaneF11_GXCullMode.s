lbl_802F7680:
/* 802F7680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F7684  7C 08 02 A6 */	mflr r0
/* 802F7688  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F768C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F7690  93 C1 00 08 */	stw r30, 8(r1)
/* 802F7694  7C 9E 23 78 */	mr r30, r4
/* 802F7698  9B C3 00 B1 */	stb r30, 0xb1(r3)
/* 802F769C  83 E3 00 DC */	lwz r31, 0xdc(r3)
/* 802F76A0  28 1F 00 00 */	cmplwi r31, 0
/* 802F76A4  41 82 00 34 */	beq lbl_802F76D8
/* 802F76A8  3B FF FF F4 */	addi r31, r31, -12
/* 802F76AC  48 00 00 2C */	b lbl_802F76D8
lbl_802F76B0:
/* 802F76B0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802F76B4  7F C4 F3 78 */	mr r4, r30
/* 802F76B8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F76BC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F76C0  7D 89 03 A6 */	mtctr r12
/* 802F76C4  4E 80 04 21 */	bctrl 
/* 802F76C8  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802F76CC  28 1F 00 00 */	cmplwi r31, 0
/* 802F76D0  41 82 00 08 */	beq lbl_802F76D8
/* 802F76D4  3B FF FF F4 */	addi r31, r31, -12
lbl_802F76D8:
/* 802F76D8  28 1F 00 00 */	cmplwi r31, 0
/* 802F76DC  40 82 FF D4 */	bne lbl_802F76B0
/* 802F76E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F76E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F76E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F76EC  7C 08 03 A6 */	mtlr r0
/* 802F76F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F76F4  4E 80 00 20 */	blr 
