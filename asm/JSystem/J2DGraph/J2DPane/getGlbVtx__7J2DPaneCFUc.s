lbl_802F79A8:
/* 802F79A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F79AC  54 A6 06 3E */	clrlwi r6, r5, 0x18
/* 802F79B0  28 06 00 04 */	cmplwi r6, 4
/* 802F79B4  41 80 00 30 */	blt lbl_802F79E4
/* 802F79B8  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F79BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F79C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F79C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F79C8  80 81 00 08 */	lwz r4, 8(r1)
/* 802F79CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F79D0  90 83 00 00 */	stw r4, 0(r3)
/* 802F79D4  90 03 00 04 */	stw r0, 4(r3)
/* 802F79D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802F79DC  90 03 00 08 */	stw r0, 8(r3)
/* 802F79E0  48 00 00 A4 */	b lbl_802F7A84
lbl_802F79E4:
/* 802F79E4  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802F79E8  41 82 00 0C */	beq lbl_802F79F4
/* 802F79EC  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 802F79F0  48 00 00 08 */	b lbl_802F79F8
lbl_802F79F4:
/* 802F79F4  C0 64 00 20 */	lfs f3, 0x20(r4)
lbl_802F79F8:
/* 802F79F8  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 802F79FC  41 82 00 0C */	beq lbl_802F7A08
/* 802F7A00  C0 84 00 2C */	lfs f4, 0x2c(r4)
/* 802F7A04  48 00 00 08 */	b lbl_802F7A0C
lbl_802F7A08:
/* 802F7A08  C0 84 00 24 */	lfs f4, 0x24(r4)
lbl_802F7A0C:
/* 802F7A0C  C0 44 00 8C */	lfs f2, 0x8c(r4)
/* 802F7A10  C0 04 00 80 */	lfs f0, 0x80(r4)
/* 802F7A14  EC 23 00 32 */	fmuls f1, f3, f0
/* 802F7A18  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 802F7A1C  EC 04 00 32 */	fmuls f0, f4, f0
/* 802F7A20  EC 01 00 2A */	fadds f0, f1, f0
/* 802F7A24  EC 02 00 2A */	fadds f0, f2, f0
/* 802F7A28  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F7A2C  C0 44 00 9C */	lfs f2, 0x9c(r4)
/* 802F7A30  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 802F7A34  EC 23 00 32 */	fmuls f1, f3, f0
/* 802F7A38  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 802F7A3C  EC 04 00 32 */	fmuls f0, f4, f0
/* 802F7A40  EC 01 00 2A */	fadds f0, f1, f0
/* 802F7A44  EC 02 00 2A */	fadds f0, f2, f0
/* 802F7A48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F7A4C  C0 44 00 AC */	lfs f2, 0xac(r4)
/* 802F7A50  C0 04 00 A0 */	lfs f0, 0xa0(r4)
/* 802F7A54  EC 23 00 32 */	fmuls f1, f3, f0
/* 802F7A58  C0 04 00 A4 */	lfs f0, 0xa4(r4)
/* 802F7A5C  EC 04 00 32 */	fmuls f0, f4, f0
/* 802F7A60  EC 01 00 2A */	fadds f0, f1, f0
/* 802F7A64  EC 02 00 2A */	fadds f0, f2, f0
/* 802F7A68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F7A6C  80 81 00 08 */	lwz r4, 8(r1)
/* 802F7A70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F7A74  90 83 00 00 */	stw r4, 0(r3)
/* 802F7A78  90 03 00 04 */	stw r0, 4(r3)
/* 802F7A7C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802F7A80  90 03 00 08 */	stw r0, 8(r3)
lbl_802F7A84:
/* 802F7A84  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7A88  4E 80 00 20 */	blr 
