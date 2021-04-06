lbl_80254FB8:
/* 80254FB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80254FBC  7C 08 02 A6 */	mflr r0
/* 80254FC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80254FC4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80254FC8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80254FCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80254FD0  48 10 D2 0D */	bl _savegpr_29
/* 80254FD4  7C 7D 1B 78 */	mr r29, r3
/* 80254FD8  7C 9E 23 78 */	mr r30, r4
/* 80254FDC  7F C3 F3 78 */	mr r3, r30
/* 80254FE0  48 0A 21 21 */	bl getBounds__7J2DPaneFv
/* 80254FE4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80254FE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80254FEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80254FF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80254FF4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80254FF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80254FFC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80255000  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80255004  7F C3 F3 78 */	mr r3, r30
/* 80255008  48 0A 2A F5 */	bl getParentPane__7J2DPaneFv
/* 8025500C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80255010  41 82 00 54 */	beq lbl_80255064
/* 80255014  7F A3 EB 78 */	mr r3, r29
/* 80255018  7F E4 FB 78 */	mr r4, r31
/* 8025501C  4B FF FF 9D */	bl getBounds__8CPaneMgrFP7J2DPane
/* 80255020  C3 E3 00 04 */	lfs f31, 4(r3)
/* 80255024  7F A3 EB 78 */	mr r3, r29
/* 80255028  7F E4 FB 78 */	mr r4, r31
/* 8025502C  4B FF FF 8D */	bl getBounds__8CPaneMgrFP7J2DPane
/* 80255030  C0 23 00 00 */	lfs f1, 0(r3)
/* 80255034  C0 01 00 08 */	lfs f0, 8(r1)
/* 80255038  EC 00 08 2A */	fadds f0, f0, f1
/* 8025503C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80255040  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80255044  EC 00 F8 2A */	fadds f0, f0, f31
/* 80255048  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8025504C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80255050  EC 00 08 2A */	fadds f0, f0, f1
/* 80255054  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80255058  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8025505C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80255060  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80255064:
/* 80255064  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80255068  FC 20 00 50 */	fneg f1, f0
/* 8025506C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80255070  FC 40 00 50 */	fneg f2, f0
/* 80255074  C0 01 00 08 */	lfs f0, 8(r1)
/* 80255078  EC 00 08 2A */	fadds f0, f0, f1
/* 8025507C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80255080  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80255084  EC 00 10 2A */	fadds f0, f0, f2
/* 80255088  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8025508C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80255090  EC 00 08 2A */	fadds f0, f0, f1
/* 80255094  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80255098  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8025509C  EC 00 10 2A */	fadds f0, f0, f2
/* 802550A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802550A4  3C 60 80 43 */	lis r3, static_mBounds@ha /* 0x80430748@ha */
/* 802550A8  80 81 00 08 */	lwz r4, 8(r1)
/* 802550AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802550B0  94 83 07 48 */	stwu r4, static_mBounds@l(r3)  /* 0x80430748@l */
/* 802550B4  90 03 00 04 */	stw r0, 4(r3)
/* 802550B8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802550BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802550C0  90 83 00 08 */	stw r4, 8(r3)
/* 802550C4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802550C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802550CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802550D0  39 61 00 30 */	addi r11, r1, 0x30
/* 802550D4  48 10 D1 55 */	bl _restgpr_29
/* 802550D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802550DC  7C 08 03 A6 */	mtlr r0
/* 802550E0  38 21 00 40 */	addi r1, r1, 0x40
/* 802550E4  4E 80 00 20 */	blr 
