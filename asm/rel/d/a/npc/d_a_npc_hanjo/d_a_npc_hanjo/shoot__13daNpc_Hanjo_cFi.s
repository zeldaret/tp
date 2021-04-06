lbl_809FB90C:
/* 809FB90C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809FB910  7C 08 02 A6 */	mflr r0
/* 809FB914  90 01 00 54 */	stw r0, 0x54(r1)
/* 809FB918  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 809FB91C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 809FB920  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 809FB924  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 809FB928  39 61 00 30 */	addi r11, r1, 0x30
/* 809FB92C  4B 96 68 AD */	bl _savegpr_28
/* 809FB930  7C 7D 1B 78 */	mr r29, r3
/* 809FB934  7C 9C 23 78 */	mr r28, r4
/* 809FB938  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FB93C  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FB940  38 7F 00 00 */	addi r3, r31, 0
/* 809FB944  C3 E3 00 98 */	lfs f31, 0x98(r3)
/* 809FB948  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 809FB94C  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 809FB950  EC 01 00 32 */	fmuls f0, f1, f0
/* 809FB954  FC 00 00 1E */	fctiwz f0, f0
/* 809FB958  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809FB95C  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 809FB960  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809FB964  2C 00 00 10 */	cmpwi r0, 0x10
/* 809FB968  41 82 00 0C */	beq lbl_809FB974
/* 809FB96C  2C 00 00 0F */	cmpwi r0, 0xf
/* 809FB970  40 82 01 F8 */	bne lbl_809FBB68
lbl_809FB974:
/* 809FB974  80 1D 0B 84 */	lwz r0, 0xb84(r29)
/* 809FB978  2C 00 00 01 */	cmpwi r0, 1
/* 809FB97C  41 82 01 38 */	beq lbl_809FBAB4
/* 809FB980  40 80 01 E0 */	bge lbl_809FBB60
/* 809FB984  2C 00 00 00 */	cmpwi r0, 0
/* 809FB988  40 80 00 08 */	bge lbl_809FB990
/* 809FB98C  48 00 01 D4 */	b lbl_809FBB60
lbl_809FB990:
/* 809FB990  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809FB994  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809FB998  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 809FB99C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809FB9A0  40 80 01 C8 */	bge lbl_809FBB68
/* 809FB9A4  80 1D 17 0C */	lwz r0, 0x170c(r29)
/* 809FB9A8  2C 00 FF FF */	cmpwi r0, -1
/* 809FB9AC  40 82 01 BC */	bne lbl_809FBB68
/* 809FB9B0  3B C0 00 00 */	li r30, 0
/* 809FB9B4  38 60 00 00 */	li r3, 0
/* 809FB9B8  38 00 00 04 */	li r0, 4
/* 809FB9BC  7C 09 03 A6 */	mtctr r0
lbl_809FB9C0:
/* 809FB9C0  7C 9D 1A 14 */	add r4, r29, r3
/* 809FB9C4  80 04 11 10 */	lwz r0, 0x1110(r4)
/* 809FB9C8  28 00 00 00 */	cmplwi r0, 0
/* 809FB9CC  41 82 00 18 */	beq lbl_809FB9E4
/* 809FB9D0  80 84 12 80 */	lwz r4, 0x1280(r4)
/* 809FB9D4  30 04 FF FF */	addic r0, r4, -1
/* 809FB9D8  7C 00 21 10 */	subfe r0, r0, r4
/* 809FB9DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FB9E0  48 00 00 08 */	b lbl_809FB9E8
lbl_809FB9E4:
/* 809FB9E4  38 00 00 00 */	li r0, 0
lbl_809FB9E8:
/* 809FB9E8  2C 00 00 00 */	cmpwi r0, 0
/* 809FB9EC  41 82 00 10 */	beq lbl_809FB9FC
/* 809FB9F0  3B DE 00 01 */	addi r30, r30, 1
/* 809FB9F4  38 63 01 74 */	addi r3, r3, 0x174
/* 809FB9F8  42 00 FF C8 */	bdnz lbl_809FB9C0
lbl_809FB9FC:
/* 809FB9FC  2C 1E 00 04 */	cmpwi r30, 4
/* 809FBA00  40 80 01 68 */	bge lbl_809FBB68
/* 809FBA04  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FBA08  1C DE 01 74 */	mulli r6, r30, 0x174
/* 809FBA0C  7C 7D 32 14 */	add r3, r29, r6
/* 809FBA10  D0 23 11 20 */	stfs f1, 0x1120(r3)
/* 809FBA14  D0 23 11 24 */	stfs f1, 0x1124(r3)
/* 809FBA18  D0 23 11 28 */	stfs f1, 0x1128(r3)
/* 809FBA1C  C0 03 11 20 */	lfs f0, 0x1120(r3)
/* 809FBA20  D0 03 11 14 */	stfs f0, 0x1114(r3)
/* 809FBA24  C0 03 11 24 */	lfs f0, 0x1124(r3)
/* 809FBA28  D0 03 11 18 */	stfs f0, 0x1118(r3)
/* 809FBA2C  C0 03 11 28 */	lfs f0, 0x1128(r3)
/* 809FBA30  D0 03 11 1C */	stfs f0, 0x111c(r3)
/* 809FBA34  D0 23 11 2C */	stfs f1, 0x112c(r3)
/* 809FBA38  D0 23 11 30 */	stfs f1, 0x1130(r3)
/* 809FBA3C  D0 23 11 34 */	stfs f1, 0x1134(r3)
/* 809FBA40  38 00 00 00 */	li r0, 0
/* 809FBA44  B0 03 11 38 */	sth r0, 0x1138(r3)
/* 809FBA48  B0 03 11 3A */	sth r0, 0x113a(r3)
/* 809FBA4C  B0 03 11 3C */	sth r0, 0x113c(r3)
/* 809FBA50  D0 23 12 78 */	stfs f1, 0x1278(r3)
/* 809FBA54  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 809FBA58  D0 03 12 7C */	stfs f0, 0x127c(r3)
/* 809FBA5C  90 03 12 80 */	stw r0, 0x1280(r3)
/* 809FBA60  38 00 07 08 */	li r0, 0x708
/* 809FBA64  90 03 12 80 */	stw r0, 0x1280(r3)
/* 809FBA68  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 809FBA6C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 809FBA70  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 809FBA74  B0 A1 00 12 */	sth r5, 0x12(r1)
/* 809FBA78  A8 9D 04 E0 */	lha r4, 0x4e0(r29)
/* 809FBA7C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 809FBA80  38 7F 00 00 */	addi r3, r31, 0
/* 809FBA84  A8 03 00 AC */	lha r0, 0xac(r3)
/* 809FBA88  7C 05 02 14 */	add r0, r5, r0
/* 809FBA8C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 809FBA90  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809FBA94  90 01 00 08 */	stw r0, 8(r1)
/* 809FBA98  B0 81 00 0C */	sth r4, 0xc(r1)
/* 809FBA9C  38 66 11 10 */	addi r3, r6, 0x1110
/* 809FBAA0  7C 7D 1A 14 */	add r3, r29, r3
/* 809FBAA4  38 81 00 08 */	addi r4, r1, 8
/* 809FBAA8  48 00 4A 41 */	bl setAngle__18daNpc_HanjoStone_cF5csXyz
/* 809FBAAC  93 DD 17 0C */	stw r30, 0x170c(r29)
/* 809FBAB0  48 00 00 B8 */	b lbl_809FBB68
lbl_809FBAB4:
/* 809FBAB4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809FBAB8  38 63 00 0C */	addi r3, r3, 0xc
/* 809FBABC  C0 3F 01 94 */	lfs f1, 0x194(r31)
/* 809FBAC0  4B 92 C9 6D */	bl checkPass__12J3DFrameCtrlFf
/* 809FBAC4  2C 03 00 00 */	cmpwi r3, 0
/* 809FBAC8  41 82 00 A0 */	beq lbl_809FBB68
/* 809FBACC  80 1D 17 0C */	lwz r0, 0x170c(r29)
/* 809FBAD0  2C 00 00 00 */	cmpwi r0, 0
/* 809FBAD4  41 80 00 94 */	blt lbl_809FBB68
/* 809FBAD8  2C 1C 00 00 */	cmpwi r28, 0
/* 809FBADC  41 82 00 0C */	beq lbl_809FBAE8
/* 809FBAE0  C3 FF 01 98 */	lfs f31, 0x198(r31)
/* 809FBAE4  3B C0 37 77 */	li r30, 0x3777
lbl_809FBAE8:
/* 809FBAE8  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 809FBAEC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809FBAF0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809FBAF4  7C 03 04 2E */	lfsx f0, r3, r0
/* 809FBAF8  EF DF 00 32 */	fmuls f30, f31, f0
/* 809FBAFC  7C 63 02 14 */	add r3, r3, r0
/* 809FBB00  C0 03 00 04 */	lfs f0, 4(r3)
/* 809FBB04  EF FF 00 32 */	fmuls f31, f31, f0
/* 809FBB08  4B 86 BD 65 */	bl cM_rnd__Fv
/* 809FBB0C  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 809FBB10  EC 01 10 28 */	fsubs f0, f1, f2
/* 809FBB14  EC 20 10 24 */	fdivs f1, f0, f2
/* 809FBB18  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 809FBB1C  EC 20 00 72 */	fmuls f1, f0, f1
/* 809FBB20  2C 1C 00 00 */	cmpwi r28, 0
/* 809FBB24  41 82 00 08 */	beq lbl_809FBB2C
/* 809FBB28  C0 3F 00 FC */	lfs f1, 0xfc(r31)
lbl_809FBB2C:
/* 809FBB2C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 809FBB30  EC 1E 00 28 */	fsubs f0, f30, f0
/* 809FBB34  80 1D 17 0C */	lwz r0, 0x170c(r29)
/* 809FBB38  1C 60 01 74 */	mulli r3, r0, 0x174
/* 809FBB3C  38 03 11 30 */	addi r0, r3, 0x1130
/* 809FBB40  7C 1D 05 2E */	stfsx f0, r29, r0
/* 809FBB44  EC 1F 00 72 */	fmuls f0, f31, f1
/* 809FBB48  EC 1F 00 2A */	fadds f0, f31, f0
/* 809FBB4C  80 1D 17 0C */	lwz r0, 0x170c(r29)
/* 809FBB50  1C 60 01 74 */	mulli r3, r0, 0x174
/* 809FBB54  38 03 12 78 */	addi r0, r3, 0x1278
/* 809FBB58  7C 1D 05 2E */	stfsx f0, r29, r0
/* 809FBB5C  48 00 00 0C */	b lbl_809FBB68
lbl_809FBB60:
/* 809FBB60  38 60 00 01 */	li r3, 1
/* 809FBB64  48 00 00 08 */	b lbl_809FBB6C
lbl_809FBB68:
/* 809FBB68  38 60 00 00 */	li r3, 0
lbl_809FBB6C:
/* 809FBB6C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 809FBB70  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 809FBB74  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 809FBB78  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 809FBB7C  39 61 00 30 */	addi r11, r1, 0x30
/* 809FBB80  4B 96 66 A5 */	bl _restgpr_28
/* 809FBB84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809FBB88  7C 08 03 A6 */	mtlr r0
/* 809FBB8C  38 21 00 50 */	addi r1, r1, 0x50
/* 809FBB90  4E 80 00 20 */	blr 
