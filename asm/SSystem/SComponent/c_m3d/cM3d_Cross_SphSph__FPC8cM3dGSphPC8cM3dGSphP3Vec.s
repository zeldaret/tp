lbl_8026BD88:
/* 8026BD88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026BD8C  7C 08 02 A6 */	mflr r0
/* 8026BD90  90 01 00 44 */	stw r0, 0x44(r1)
/* 8026BD94  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8026BD98  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8026BD9C  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BDA0  48 0F 64 3D */	bl _savegpr_29
/* 8026BDA4  7C 7D 1B 78 */	mr r29, r3
/* 8026BDA8  7C 9E 23 78 */	mr r30, r4
/* 8026BDAC  7C BF 2B 78 */	mr r31, r5
/* 8026BDB0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026BDB4  38 C1 00 08 */	addi r6, r1, 8
/* 8026BDB8  4B FF FF 45 */	bl cM3d_Cross_SphSph__FPC8cM3dGSphPC8cM3dGSphPfPf
/* 8026BDBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026BDC0  41 82 00 78 */	beq lbl_8026BE38
/* 8026BDC4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8026BDC8  FC 00 12 10 */	fabs f0, f2
/* 8026BDCC  FC 20 00 18 */	frsp f1, f0
/* 8026BDD0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026BDD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026BDD8  41 80 00 40 */	blt lbl_8026BE18
/* 8026BDDC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026BDE0  EF E0 10 24 */	fdivs f31, f0, f2
/* 8026BDE4  7F A3 EB 78 */	mr r3, r29
/* 8026BDE8  7F C4 F3 78 */	mr r4, r30
/* 8026BDEC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8026BDF0  48 0D B2 C5 */	bl PSVECSubtract
/* 8026BDF4  38 61 00 10 */	addi r3, r1, 0x10
/* 8026BDF8  7C 64 1B 78 */	mr r4, r3
/* 8026BDFC  FC 20 F8 90 */	fmr f1, f31
/* 8026BE00  48 0D B2 D9 */	bl PSVECScale
/* 8026BE04  38 61 00 10 */	addi r3, r1, 0x10
/* 8026BE08  7F C4 F3 78 */	mr r4, r30
/* 8026BE0C  7F E5 FB 78 */	mr r5, r31
/* 8026BE10  48 0D B2 81 */	bl PSVECAdd
/* 8026BE14  48 00 00 1C */	b lbl_8026BE30
lbl_8026BE18:
/* 8026BE18  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026BE1C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026BE20  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026BE24  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026BE28  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026BE2C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8026BE30:
/* 8026BE30  38 60 00 01 */	li r3, 1
/* 8026BE34  48 00 00 08 */	b lbl_8026BE3C
lbl_8026BE38:
/* 8026BE38  38 60 00 00 */	li r3, 0
lbl_8026BE3C:
/* 8026BE3C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8026BE40  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8026BE44  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BE48  48 0F 63 E1 */	bl _restgpr_29
/* 8026BE4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8026BE50  7C 08 03 A6 */	mtlr r0
/* 8026BE54  38 21 00 40 */	addi r1, r1, 0x40
/* 8026BE58  4E 80 00 20 */	blr 
