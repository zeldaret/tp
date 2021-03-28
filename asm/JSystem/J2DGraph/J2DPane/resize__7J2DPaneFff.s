lbl_802F6FF8:
/* 802F6FF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802F6FFC  7C 08 02 A6 */	mflr r0
/* 802F7000  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F7004  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802F7008  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802F700C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802F7010  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802F7014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7018  7C 7F 1B 78 */	mr r31, r3
/* 802F701C  FF C0 08 90 */	fmr f30, f1
/* 802F7020  FF E0 10 90 */	fmr f31, f2
/* 802F7024  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F7028  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F702C  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 802F7030  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 802F7034  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 802F7038  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802F703C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802F7040  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802F7044  C0 83 00 D4 */	lfs f4, 0xd4(r3)
/* 802F7048  C0 A3 00 D8 */	lfs f5, 0xd8(r3)
/* 802F704C  EC 00 20 2A */	fadds f0, f0, f4
/* 802F7050  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F7054  EC 03 28 2A */	fadds f0, f3, f5
/* 802F7058  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F705C  EC 02 20 2A */	fadds f0, f2, f4
/* 802F7060  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F7064  EC 01 28 2A */	fadds f0, f1, f5
/* 802F7068  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802F706C  48 00 0A 91 */	bl getParentPane__7J2DPaneFv
/* 802F7070  28 03 00 00 */	cmplwi r3, 0
/* 802F7074  41 82 00 44 */	beq lbl_802F70B8
/* 802F7078  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F707C  FC 20 00 50 */	fneg f1, f0
/* 802F7080  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F7084  FC 40 00 50 */	fneg f2, f0
/* 802F7088  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F708C  EC 00 08 2A */	fadds f0, f0, f1
/* 802F7090  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F7094  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802F7098  EC 00 10 2A */	fadds f0, f0, f2
/* 802F709C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F70A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802F70A4  EC 00 08 2A */	fadds f0, f0, f1
/* 802F70A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F70AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802F70B0  EC 00 10 2A */	fadds f0, f0, f2
/* 802F70B4  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_802F70B8:
/* 802F70B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F70BC  EC 00 F0 2A */	fadds f0, f0, f30
/* 802F70C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F70C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802F70C8  EC 00 F8 2A */	fadds f0, f0, f31
/* 802F70CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802F70D0  7F E3 FB 78 */	mr r3, r31
/* 802F70D4  38 81 00 08 */	addi r4, r1, 8
/* 802F70D8  4B FF FC 41 */	bl func_802F6D18
/* 802F70DC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802F70E0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802F70E4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802F70E8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802F70EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F70F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F70F4  7C 08 03 A6 */	mtlr r0
/* 802F70F8  38 21 00 40 */	addi r1, r1, 0x40
/* 802F70FC  4E 80 00 20 */	blr 
