lbl_8026BC7C:
/* 8026BC7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026BC80  7C 08 02 A6 */	mflr r0
/* 8026BC84  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026BC88  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BC8C  48 0F 65 51 */	bl _savegpr_29
/* 8026BC90  7C 7D 1B 78 */	mr r29, r3
/* 8026BC94  7C 9E 23 78 */	mr r30, r4
/* 8026BC98  7C BF 2B 78 */	mr r31, r5
/* 8026BC9C  38 A1 00 08 */	addi r5, r1, 8
/* 8026BCA0  48 0D B4 15 */	bl PSVECSubtract
/* 8026BCA4  38 61 00 08 */	addi r3, r1, 8
/* 8026BCA8  48 0D B4 A9 */	bl PSVECMag
/* 8026BCAC  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8026BCB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026BCB4  EC 02 00 2A */	fadds f0, f2, f0
/* 8026BCB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026BCBC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026BCC0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8026BCC4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026BCC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026BCCC  40 81 00 0C */	ble lbl_8026BCD8
/* 8026BCD0  38 60 00 01 */	li r3, 1
/* 8026BCD4  48 00 00 10 */	b lbl_8026BCE4
lbl_8026BCD8:
/* 8026BCD8  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026BCDC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026BCE0  38 60 00 00 */	li r3, 0
lbl_8026BCE4:
/* 8026BCE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BCE8  48 0F 65 41 */	bl _restgpr_29
/* 8026BCEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026BCF0  7C 08 03 A6 */	mtlr r0
/* 8026BCF4  38 21 00 30 */	addi r1, r1, 0x30
/* 8026BCF8  4E 80 00 20 */	blr 
