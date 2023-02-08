lbl_802FCE9C:
/* 802FCE9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FCEA0  7C 08 02 A6 */	mflr r0
/* 802FCEA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FCEA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FCEAC  7C 7F 1B 78 */	mr r31, r3
/* 802FCEB0  3C 80 50 49 */	lis r4, 0x5049 /* 0x50494331@ha */
/* 802FCEB4  38 04 43 31 */	addi r0, r4, 0x4331 /* 0x50494331@l */
/* 802FCEB8  90 03 00 08 */	stw r0, 8(r3)
/* 802FCEBC  38 80 00 00 */	li r4, 0
/* 802FCEC0  38 A0 00 0F */	li r5, 0xf
/* 802FCEC4  38 C0 00 00 */	li r6, 0
/* 802FCEC8  38 E0 00 00 */	li r7, 0
/* 802FCECC  48 00 1E 79 */	bl setTexCoord__10J2DPictureFPC10JUTTexture10J2DBinding9J2DMirrorb
/* 802FCED0  7F E3 FB 78 */	mr r3, r31
/* 802FCED4  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FCED8  FC 40 08 90 */	fmr f2, f1
/* 802FCEDC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802FCEE0  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 802FCEE4  7D 89 03 A6 */	mtctr r12
/* 802FCEE8  4E 80 04 21 */	bctrl 
/* 802FCEEC  38 00 00 00 */	li r0, 0
/* 802FCEF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FCEF4  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 802FCEF8  98 1F 01 34 */	stb r0, 0x134(r31)
/* 802FCEFC  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 802FCF00  98 1F 01 35 */	stb r0, 0x135(r31)
/* 802FCF04  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 802FCF08  98 1F 01 36 */	stb r0, 0x136(r31)
/* 802FCF0C  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 802FCF10  98 1F 01 37 */	stb r0, 0x137(r31)
/* 802FCF14  38 60 FF FF */	li r3, -1
/* 802FCF18  90 61 00 28 */	stw r3, 0x28(r1)
/* 802FCF1C  88 01 00 28 */	lbz r0, 0x28(r1)
/* 802FCF20  98 1F 01 30 */	stb r0, 0x130(r31)
/* 802FCF24  88 01 00 29 */	lbz r0, 0x29(r1)
/* 802FCF28  98 1F 01 31 */	stb r0, 0x131(r31)
/* 802FCF2C  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 802FCF30  98 1F 01 32 */	stb r0, 0x132(r31)
/* 802FCF34  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 802FCF38  98 1F 01 33 */	stb r0, 0x133(r31)
/* 802FCF3C  90 61 00 08 */	stw r3, 8(r1)
/* 802FCF40  90 61 00 0C */	stw r3, 0xc(r1)
/* 802FCF44  90 61 00 10 */	stw r3, 0x10(r1)
/* 802FCF48  90 61 00 14 */	stw r3, 0x14(r1)
/* 802FCF4C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802FCF50  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802FCF54  90 61 00 20 */	stw r3, 0x20(r1)
/* 802FCF58  90 61 00 24 */	stw r3, 0x24(r1)
/* 802FCF5C  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802FCF60  98 1F 01 38 */	stb r0, 0x138(r31)
/* 802FCF64  88 01 00 25 */	lbz r0, 0x25(r1)
/* 802FCF68  98 1F 01 39 */	stb r0, 0x139(r31)
/* 802FCF6C  88 01 00 26 */	lbz r0, 0x26(r1)
/* 802FCF70  98 1F 01 3A */	stb r0, 0x13a(r31)
/* 802FCF74  88 01 00 27 */	lbz r0, 0x27(r1)
/* 802FCF78  98 1F 01 3B */	stb r0, 0x13b(r31)
/* 802FCF7C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802FCF80  98 1F 01 3C */	stb r0, 0x13c(r31)
/* 802FCF84  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 802FCF88  98 1F 01 3D */	stb r0, 0x13d(r31)
/* 802FCF8C  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 802FCF90  98 1F 01 3E */	stb r0, 0x13e(r31)
/* 802FCF94  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802FCF98  98 1F 01 3F */	stb r0, 0x13f(r31)
/* 802FCF9C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802FCFA0  98 1F 01 40 */	stb r0, 0x140(r31)
/* 802FCFA4  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802FCFA8  98 1F 01 41 */	stb r0, 0x141(r31)
/* 802FCFAC  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802FCFB0  98 1F 01 42 */	stb r0, 0x142(r31)
/* 802FCFB4  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802FCFB8  98 1F 01 43 */	stb r0, 0x143(r31)
/* 802FCFBC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802FCFC0  98 1F 01 44 */	stb r0, 0x144(r31)
/* 802FCFC4  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802FCFC8  98 1F 01 45 */	stb r0, 0x145(r31)
/* 802FCFCC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802FCFD0  98 1F 01 46 */	stb r0, 0x146(r31)
/* 802FCFD4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802FCFD8  98 1F 01 47 */	stb r0, 0x147(r31)
/* 802FCFDC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FCFE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FCFE4  7C 08 03 A6 */	mtlr r0
/* 802FCFE8  38 21 00 40 */	addi r1, r1, 0x40
/* 802FCFEC  4E 80 00 20 */	blr 
