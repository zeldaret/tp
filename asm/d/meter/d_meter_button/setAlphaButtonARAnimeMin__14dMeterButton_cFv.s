lbl_80208340:
/* 80208340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208344  7C 08 02 A6 */	mflr r0
/* 80208348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020834C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208350  7C 7F 1B 78 */	mr r31, r3
/* 80208354  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80208358  28 03 00 00 */	cmplwi r3, 0
/* 8020835C  41 82 00 68 */	beq lbl_802083C4
/* 80208360  48 04 D4 C9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208364  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208368  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020836C  41 82 00 58 */	beq lbl_802083C4
/* 80208370  A8 1F 04 9C */	lha r0, 0x49c(r31)
/* 80208374  2C 00 00 00 */	cmpwi r0, 0
/* 80208378  40 82 00 0C */	bne lbl_80208384
/* 8020837C  38 00 00 1E */	li r0, 0x1e
/* 80208380  B0 1F 04 9C */	sth r0, 0x49c(r31)
lbl_80208384:
/* 80208384  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80208388  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 8020838C  48 04 D4 45 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208390  38 00 00 00 */	li r0, 0
/* 80208394  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80208398  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8020839C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802083A0  48 04 D4 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802083A4  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802083A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802083AC  40 82 00 18 */	bne lbl_802083C4
/* 802083B0  7F E3 FB 78 */	mr r3, r31
/* 802083B4  38 80 00 0C */	li r4, 0xc
/* 802083B8  48 00 25 95 */	bl hide_button__14dMeterButton_cFUc
/* 802083BC  38 00 00 00 */	li r0, 0
/* 802083C0  98 1F 04 CC */	stb r0, 0x4cc(r31)
lbl_802083C4:
/* 802083C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802083C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802083CC  7C 08 03 A6 */	mtlr r0
/* 802083D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802083D4  4E 80 00 20 */	blr 
