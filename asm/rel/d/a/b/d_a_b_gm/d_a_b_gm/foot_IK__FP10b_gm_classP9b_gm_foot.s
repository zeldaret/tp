lbl_805EFB28:
/* 805EFB28  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805EFB2C  7C 08 02 A6 */	mflr r0
/* 805EFB30  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805EFB34  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805EFB38  4B D7 26 A1 */	bl _savegpr_28
/* 805EFB3C  7C 7C 1B 78 */	mr r28, r3
/* 805EFB40  7C 9E 23 78 */	mr r30, r4
/* 805EFB44  3C 60 80 5F */	lis r3, lit_3774@ha /* 0x805F4188@ha */
/* 805EFB48  3B A3 41 88 */	addi r29, r3, lit_3774@l /* 0x805F4188@l */
/* 805EFB4C  3B E0 00 00 */	li r31, 0
/* 805EFB50  38 61 00 18 */	addi r3, r1, 0x18
/* 805EFB54  4B A8 81 15 */	bl __ct__11dBgS_LinChkFv
/* 805EFB58  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805EFB5C  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805EFB60  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805EFB64  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 805EFB68  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805EFB6C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805EFB70  38 61 00 18 */	addi r3, r1, 0x18
/* 805EFB74  38 9C 07 30 */	addi r4, r28, 0x730
/* 805EFB78  38 BE 00 10 */	addi r5, r30, 0x10
/* 805EFB7C  7F 86 E3 78 */	mr r6, r28
/* 805EFB80  4B A8 81 E5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805EFB84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EFB88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EFB8C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805EFB90  38 81 00 18 */	addi r4, r1, 0x18
/* 805EFB94  4B A8 48 21 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 805EFB98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805EFB9C  41 82 01 60 */	beq lbl_805EFCFC
/* 805EFBA0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805EFBA4  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 805EFBA8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805EFBAC  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 805EFBB0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805EFBB4  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805EFBB8  38 61 00 0C */	addi r3, r1, 0xc
/* 805EFBBC  38 9E 00 1C */	addi r4, r30, 0x1c
/* 805EFBC0  38 BE 00 10 */	addi r5, r30, 0x10
/* 805EFBC4  4B C7 6F 71 */	bl __mi__4cXyzCFRC3Vec
/* 805EFBC8  38 61 00 0C */	addi r3, r1, 0xc
/* 805EFBCC  4B D5 75 6D */	bl PSVECSquareMag
/* 805EFBD0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805EFBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFBD8  40 81 00 58 */	ble lbl_805EFC30
/* 805EFBDC  FC 00 08 34 */	frsqrte f0, f1
/* 805EFBE0  C8 9D 00 60 */	lfd f4, 0x60(r29)
/* 805EFBE4  FC 44 00 32 */	fmul f2, f4, f0
/* 805EFBE8  C8 7D 00 68 */	lfd f3, 0x68(r29)
/* 805EFBEC  FC 00 00 32 */	fmul f0, f0, f0
/* 805EFBF0  FC 01 00 32 */	fmul f0, f1, f0
/* 805EFBF4  FC 03 00 28 */	fsub f0, f3, f0
/* 805EFBF8  FC 02 00 32 */	fmul f0, f2, f0
/* 805EFBFC  FC 44 00 32 */	fmul f2, f4, f0
/* 805EFC00  FC 00 00 32 */	fmul f0, f0, f0
/* 805EFC04  FC 01 00 32 */	fmul f0, f1, f0
/* 805EFC08  FC 03 00 28 */	fsub f0, f3, f0
/* 805EFC0C  FC 02 00 32 */	fmul f0, f2, f0
/* 805EFC10  FC 44 00 32 */	fmul f2, f4, f0
/* 805EFC14  FC 00 00 32 */	fmul f0, f0, f0
/* 805EFC18  FC 01 00 32 */	fmul f0, f1, f0
/* 805EFC1C  FC 03 00 28 */	fsub f0, f3, f0
/* 805EFC20  FC 02 00 32 */	fmul f0, f2, f0
/* 805EFC24  FC 21 00 32 */	fmul f1, f1, f0
/* 805EFC28  FC 20 08 18 */	frsp f1, f1
/* 805EFC2C  48 00 00 88 */	b lbl_805EFCB4
lbl_805EFC30:
/* 805EFC30  C8 1D 00 70 */	lfd f0, 0x70(r29)
/* 805EFC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFC38  40 80 00 10 */	bge lbl_805EFC48
/* 805EFC3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805EFC40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805EFC44  48 00 00 70 */	b lbl_805EFCB4
lbl_805EFC48:
/* 805EFC48  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EFC4C  80 81 00 08 */	lwz r4, 8(r1)
/* 805EFC50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805EFC54  3C 00 7F 80 */	lis r0, 0x7f80
/* 805EFC58  7C 03 00 00 */	cmpw r3, r0
/* 805EFC5C  41 82 00 14 */	beq lbl_805EFC70
/* 805EFC60  40 80 00 40 */	bge lbl_805EFCA0
/* 805EFC64  2C 03 00 00 */	cmpwi r3, 0
/* 805EFC68  41 82 00 20 */	beq lbl_805EFC88
/* 805EFC6C  48 00 00 34 */	b lbl_805EFCA0
lbl_805EFC70:
/* 805EFC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EFC74  41 82 00 0C */	beq lbl_805EFC80
/* 805EFC78  38 00 00 01 */	li r0, 1
/* 805EFC7C  48 00 00 28 */	b lbl_805EFCA4
lbl_805EFC80:
/* 805EFC80  38 00 00 02 */	li r0, 2
/* 805EFC84  48 00 00 20 */	b lbl_805EFCA4
lbl_805EFC88:
/* 805EFC88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EFC8C  41 82 00 0C */	beq lbl_805EFC98
/* 805EFC90  38 00 00 05 */	li r0, 5
/* 805EFC94  48 00 00 10 */	b lbl_805EFCA4
lbl_805EFC98:
/* 805EFC98  38 00 00 03 */	li r0, 3
/* 805EFC9C  48 00 00 08 */	b lbl_805EFCA4
lbl_805EFCA0:
/* 805EFCA0  38 00 00 04 */	li r0, 4
lbl_805EFCA4:
/* 805EFCA4  2C 00 00 01 */	cmpwi r0, 1
/* 805EFCA8  40 82 00 0C */	bne lbl_805EFCB4
/* 805EFCAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805EFCB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805EFCB4:
/* 805EFCB4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805EFCB8  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 805EFCBC  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 805EFCC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805EFCC4  EC 02 00 2A */	fadds f0, f2, f0
/* 805EFCC8  EC 02 00 2A */	fadds f0, f2, f0
/* 805EFCCC  EC 03 00 2A */	fadds f0, f3, f0
/* 805EFCD0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EFCD4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805EFCD8  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 805EFCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFCE0  40 81 00 0C */	ble lbl_805EFCEC
/* 805EFCE4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EFCE8  48 00 00 08 */	b lbl_805EFCF0
lbl_805EFCEC:
/* 805EFCEC  3B E0 00 01 */	li r31, 1
lbl_805EFCF0:
/* 805EFCF0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805EFCF4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 805EFCF8  48 00 00 3C */	b lbl_805EFD34
lbl_805EFCFC:
/* 805EFCFC  7F C3 F3 78 */	mr r3, r30
/* 805EFD00  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 805EFD04  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805EFD08  C0 7E 00 04 */	lfs f3, 4(r30)
/* 805EFD0C  4B C7 FD 31 */	bl cLib_addCalc2__FPffff
/* 805EFD10  38 7E 00 04 */	addi r3, r30, 4
/* 805EFD14  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 805EFD18  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805EFD1C  C0 9D 00 AC */	lfs f4, 0xac(r29)
/* 805EFD20  C0 7D 00 84 */	lfs f3, 0x84(r29)
/* 805EFD24  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 805EFD28  EC 03 00 32 */	fmuls f0, f3, f0
/* 805EFD2C  EC 64 00 2A */	fadds f3, f4, f0
/* 805EFD30  4B C7 FD 0D */	bl cLib_addCalc2__FPffff
lbl_805EFD34:
/* 805EFD34  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805EFD38  3C 60 80 5F */	lis r3, l_HIO@ha /* 0x805F47DC@ha */
/* 805EFD3C  38 63 47 DC */	addi r3, r3, l_HIO@l /* 0x805F47DC@l */
/* 805EFD40  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 805EFD44  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFD48  FC 00 00 1E */	fctiwz f0, f0
/* 805EFD4C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805EFD50  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805EFD54  B0 1E 00 08 */	sth r0, 8(r30)
/* 805EFD58  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805EFD5C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805EFD60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFD64  40 81 00 3C */	ble lbl_805EFDA0
/* 805EFD68  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 805EFD6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFD70  FC 00 00 1E */	fctiwz f0, f0
/* 805EFD74  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805EFD78  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805EFD7C  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 805EFD80  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805EFD84  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 805EFD88  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFD8C  FC 00 00 1E */	fctiwz f0, f0
/* 805EFD90  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 805EFD94  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805EFD98  B0 1E 00 0C */	sth r0, 0xc(r30)
/* 805EFD9C  48 00 00 10 */	b lbl_805EFDAC
lbl_805EFDA0:
/* 805EFDA0  38 00 00 00 */	li r0, 0
/* 805EFDA4  B0 1E 00 0C */	sth r0, 0xc(r30)
/* 805EFDA8  B0 1E 00 0A */	sth r0, 0xa(r30)
lbl_805EFDAC:
/* 805EFDAC  38 61 00 18 */	addi r3, r1, 0x18
/* 805EFDB0  38 80 FF FF */	li r4, -1
/* 805EFDB4  4B A8 7F 29 */	bl __dt__11dBgS_LinChkFv
/* 805EFDB8  7F E3 FB 78 */	mr r3, r31
/* 805EFDBC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805EFDC0  4B D7 24 65 */	bl _restgpr_28
/* 805EFDC4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805EFDC8  7C 08 03 A6 */	mtlr r0
/* 805EFDCC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805EFDD0  4E 80 00 20 */	blr 
