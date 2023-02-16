lbl_802BCFE4:
/* 802BCFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCFE8  7C 08 02 A6 */	mflr r0
/* 802BCFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCFF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BCFF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BCFF8  40 81 00 10 */	ble lbl_802BD008
/* 802BCFFC  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802BD000  80 63 00 70 */	lwz r3, 0x70(r3)
/* 802BD004  48 00 00 28 */	b lbl_802BD02C
lbl_802BD008:
/* 802BD008  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BD00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD010  40 80 00 0C */	bge lbl_802BD01C
/* 802BD014  38 60 00 00 */	li r3, 0
/* 802BD018  48 00 00 14 */	b lbl_802BD02C
lbl_802BD01C:
/* 802BD01C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 802BD020  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BD024  EC 22 00 32 */	fmuls f1, f2, f0
/* 802BD028  48 0A 50 85 */	bl __cvt_fp2unsigned
lbl_802BD02C:
/* 802BD02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD030  7C 08 03 A6 */	mtlr r0
/* 802BD034  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD038  4E 80 00 20 */	blr 
