lbl_8020BF00:
/* 8020BF00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020BF04  7C 08 02 A6 */	mflr r0
/* 8020BF08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020BF0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020BF10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020BF14  7C 7E 1B 78 */	mr r30, r3
/* 8020BF18  7C 9F 23 78 */	mr r31, r4
/* 8020BF1C  88 03 00 29 */	lbz r0, 0x29(r3)
/* 8020BF20  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020BF24  41 82 01 3C */	beq lbl_8020C060
/* 8020BF28  28 1F 00 00 */	cmplwi r31, 0
/* 8020BF2C  41 82 00 98 */	beq lbl_8020BFC4
/* 8020BF30  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 8020BF34  28 00 00 04 */	cmplwi r0, 4
/* 8020BF38  40 82 00 20 */	bne lbl_8020BF58
/* 8020BF3C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8020BF40  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BF44  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BF48  C0 03 05 34 */	lfs f0, 0x534(r3)
/* 8020BF4C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020BF50  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8020BF54  48 00 00 1C */	b lbl_8020BF70
lbl_8020BF58:
/* 8020BF58  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8020BF5C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BF60  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BF64  C0 03 05 04 */	lfs f0, 0x504(r3)
/* 8020BF68  EC 01 00 2A */	fadds f0, f1, f0
/* 8020BF6C  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_8020BF70:
/* 8020BF70  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8020BF74  A8 9F 00 06 */	lha r4, 6(r31)
/* 8020BF78  C8 22 AD F8 */	lfd f1, lit_4189(r2)
/* 8020BF7C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8020BF80  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020BF84  3C 60 43 30 */	lis r3, 0x4330
/* 8020BF88  90 61 00 08 */	stw r3, 8(r1)
/* 8020BF8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020BF90  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020BF94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8020BF98  4C 41 13 82 */	cror 2, 1, 2
/* 8020BF9C  40 82 00 30 */	bne lbl_8020BFCC
/* 8020BFA0  7C 80 07 34 */	extsh r0, r4
/* 8020BFA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020BFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020BFAC  90 61 00 08 */	stw r3, 8(r1)
/* 8020BFB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020BFB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020BFB8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8020BFBC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8020BFC0  48 00 00 0C */	b lbl_8020BFCC
lbl_8020BFC4:
/* 8020BFC4  C0 02 AD F0 */	lfs f0, lit_4165(r2)
/* 8020BFC8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
lbl_8020BFCC:
/* 8020BFCC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8020BFD0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8020BFD4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8020BFD8  3C 80 61 6E */	lis r4, 0x616E /* 0x616E696D@ha */
/* 8020BFDC  38 C4 69 6D */	addi r6, r4, 0x696D /* 0x616E696D@l */
/* 8020BFE0  38 A0 6E 5F */	li r5, 0x6e5f
/* 8020BFE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BFE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020BFEC  7D 89 03 A6 */	mtctr r12
/* 8020BFF0  4E 80 04 21 */	bctrl 
/* 8020BFF4  7F E4 FB 78 */	mr r4, r31
/* 8020BFF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BFFC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8020C000  7D 89 03 A6 */	mtctr r12
/* 8020C004  4E 80 04 21 */	bctrl 
/* 8020C008  80 7E 00 04 */	lwz r3, 4(r30)
/* 8020C00C  3C 80 61 6E */	lis r4, 0x616E /* 0x616E696D@ha */
/* 8020C010  38 C4 69 6D */	addi r6, r4, 0x696D /* 0x616E696D@l */
/* 8020C014  38 A0 6E 5F */	li r5, 0x6e5f
/* 8020C018  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C01C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020C020  7D 89 03 A6 */	mtctr r12
/* 8020C024  4E 80 04 21 */	bctrl 
/* 8020C028  48 0E BF A5 */	bl animationTransform__7J2DPaneFv
/* 8020C02C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8020C030  3C 80 61 6E */	lis r4, 0x616E /* 0x616E696D@ha */
/* 8020C034  38 C4 69 6D */	addi r6, r4, 0x696D /* 0x616E696D@l */
/* 8020C038  38 A0 6E 5F */	li r5, 0x6e5f
/* 8020C03C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C040  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020C044  7D 89 03 A6 */	mtctr r12
/* 8020C048  4E 80 04 21 */	bctrl 
/* 8020C04C  38 80 00 00 */	li r4, 0
/* 8020C050  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C054  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8020C058  7D 89 03 A6 */	mtctr r12
/* 8020C05C  4E 80 04 21 */	bctrl 
lbl_8020C060:
/* 8020C060  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020C064  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020C068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C06C  7C 08 03 A6 */	mtlr r0
/* 8020C070  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C074  4E 80 00 20 */	blr 
