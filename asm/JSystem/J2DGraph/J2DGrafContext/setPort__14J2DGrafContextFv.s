lbl_802E8BB4:
/* 802E8BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8BB8  7C 08 02 A6 */	mflr r0
/* 802E8BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8BC4  7C 7F 1B 78 */	mr r31, r3
/* 802E8BC8  81 83 00 00 */	lwz r12, 0(r3)
/* 802E8BCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E8BD0  7D 89 03 A6 */	mtctr r12
/* 802E8BD4  4E 80 04 21 */	bctrl 
/* 802E8BD8  7F E3 FB 78 */	mr r3, r31
/* 802E8BDC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8BE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802E8BE4  7D 89 03 A6 */	mtctr r12
/* 802E8BE8  4E 80 04 21 */	bctrl 
/* 802E8BEC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 802E8BF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 802E8BF4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 802E8BF8  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 802E8BFC  C0 02 C7 48 */	lfs f0, lit_627(r2)
/* 802E8C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E8C04  40 80 00 08 */	bge lbl_802E8C0C
/* 802E8C08  FC 20 00 90 */	fmr f1, f0
lbl_802E8C0C:
/* 802E8C0C  C0 02 C7 48 */	lfs f0, lit_627(r2)
/* 802E8C10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E8C14  40 80 00 08 */	bge lbl_802E8C1C
/* 802E8C18  FC 40 00 90 */	fmr f2, f0
lbl_802E8C1C:
/* 802E8C1C  EC 63 08 28 */	fsubs f3, f3, f1
/* 802E8C20  EC 84 10 28 */	fsubs f4, f4, f2
/* 802E8C24  C0 A2 C7 48 */	lfs f5, lit_627(r2)
/* 802E8C28  C0 C2 C7 4C */	lfs f6, lit_628(r2)
/* 802E8C2C  48 07 78 39 */	bl GXSetViewport
/* 802E8C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E8C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8C38  7C 08 03 A6 */	mtlr r0
/* 802E8C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8C40  4E 80 00 20 */	blr 
