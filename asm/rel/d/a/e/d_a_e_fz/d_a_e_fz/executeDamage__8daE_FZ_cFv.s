lbl_806BFB60:
/* 806BFB60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806BFB64  7C 08 02 A6 */	mflr r0
/* 806BFB68  90 01 00 54 */	stw r0, 0x54(r1)
/* 806BFB6C  39 61 00 50 */	addi r11, r1, 0x50
/* 806BFB70  4B CA 26 6D */	bl _savegpr_29
/* 806BFB74  7C 7E 1B 78 */	mr r30, r3
/* 806BFB78  3C 80 80 6C */	lis r4, lit_3803@ha /* 0x806C1938@ha */
/* 806BFB7C  3B E4 19 38 */	addi r31, r4, lit_3803@l /* 0x806C1938@l */
/* 806BFB80  3C 80 80 6C */	lis r4, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BFB84  38 A4 1B B0 */	addi r5, r4, l_HIO@l /* 0x806C1BB0@l */
/* 806BFB88  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 806BFB8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BFB90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BFB94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BFB98  80 03 06 F8 */	lwz r0, 0x6f8(r3)
/* 806BFB9C  28 00 00 06 */	cmplwi r0, 6
/* 806BFBA0  41 81 03 DC */	bgt lbl_806BFF7C
/* 806BFBA4  3C 80 80 6C */	lis r4, lit_4324@ha /* 0x806C1AB8@ha */
/* 806BFBA8  38 84 1A B8 */	addi r4, r4, lit_4324@l /* 0x806C1AB8@l */
/* 806BFBAC  54 00 10 3A */	slwi r0, r0, 2
/* 806BFBB0  7C 04 00 2E */	lwzx r0, r4, r0
/* 806BFBB4  7C 09 03 A6 */	mtctr r0
/* 806BFBB8  4E 80 04 20 */	bctr 
lbl_806BFBBC:
/* 806BFBBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BFBC0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BFBC4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806BFBC8  38 80 00 00 */	li r4, 0
/* 806BFBCC  90 81 00 08 */	stw r4, 8(r1)
/* 806BFBD0  38 00 FF FF */	li r0, -1
/* 806BFBD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BFBD8  90 81 00 10 */	stw r4, 0x10(r1)
/* 806BFBDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806BFBE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806BFBE4  38 80 00 00 */	li r4, 0
/* 806BFBE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085B8@ha */
/* 806BFBEC  38 A5 85 B8 */	addi r5, r5, 0x85B8 /* 0x000085B8@l */
/* 806BFBF0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806BFBF4  38 E0 00 00 */	li r7, 0
/* 806BFBF8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806BFBFC  39 21 00 20 */	addi r9, r1, 0x20
/* 806BFC00  39 40 00 FF */	li r10, 0xff
/* 806BFC04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BFC08  4B 98 CE 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BFC0C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806BFC10  38 80 00 00 */	li r4, 0
/* 806BFC14  90 81 00 08 */	stw r4, 8(r1)
/* 806BFC18  38 00 FF FF */	li r0, -1
/* 806BFC1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BFC20  90 81 00 10 */	stw r4, 0x10(r1)
/* 806BFC24  90 81 00 14 */	stw r4, 0x14(r1)
/* 806BFC28  90 81 00 18 */	stw r4, 0x18(r1)
/* 806BFC2C  38 80 00 00 */	li r4, 0
/* 806BFC30  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085B9@ha */
/* 806BFC34  38 A5 85 B9 */	addi r5, r5, 0x85B9 /* 0x000085B9@l */
/* 806BFC38  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806BFC3C  38 E0 00 00 */	li r7, 0
/* 806BFC40  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806BFC44  39 21 00 20 */	addi r9, r1, 0x20
/* 806BFC48  39 40 00 FF */	li r10, 0xff
/* 806BFC4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BFC50  4B 98 CE 41 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BFC54  88 1E 07 14 */	lbz r0, 0x714(r30)
/* 806BFC58  28 00 00 03 */	cmplwi r0, 3
/* 806BFC5C  41 82 00 34 */	beq lbl_806BFC90
/* 806BFC60  38 00 00 19 */	li r0, 0x19
/* 806BFC64  98 1E 05 64 */	stb r0, 0x564(r30)
/* 806BFC68  88 7E 05 64 */	lbz r3, 0x564(r30)
/* 806BFC6C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BFC70  38 A0 FF FF */	li r5, -1
/* 806BFC74  38 C0 FF FF */	li r6, -1
/* 806BFC78  38 E0 00 00 */	li r7, 0
/* 806BFC7C  39 00 00 00 */	li r8, 0
/* 806BFC80  39 20 00 00 */	li r9, 0
/* 806BFC84  39 40 00 00 */	li r10, 0
/* 806BFC88  4B 95 C1 8D */	bl fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 806BFC8C  48 00 00 34 */	b lbl_806BFCC0
lbl_806BFC90:
/* 806BFC90  4B BA 7B DD */	bl cM_rnd__Fv
/* 806BFC94  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806BFC98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BFC9C  40 80 00 24 */	bge lbl_806BFCC0
/* 806BFCA0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806BFCA4  38 80 00 00 */	li r4, 0
/* 806BFCA8  38 A0 FF FF */	li r5, -1
/* 806BFCAC  38 C0 FF FF */	li r6, -1
/* 806BFCB0  38 E0 00 00 */	li r7, 0
/* 806BFCB4  39 00 00 00 */	li r8, 0
/* 806BFCB8  39 20 00 00 */	li r9, 0
/* 806BFCBC  4B 95 C5 85 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_806BFCC0:
/* 806BFCC0  7F C3 F3 78 */	mr r3, r30
/* 806BFCC4  4B 95 9F B9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806BFCC8  48 00 02 B4 */	b lbl_806BFF7C
lbl_806BFCCC:
/* 806BFCCC  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 806BFCD0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806BFCD4  D0 1E 06 FC */	stfs f0, 0x6fc(r30)
lbl_806BFCD8:
/* 806BFCD8  38 00 00 76 */	li r0, 0x76
/* 806BFCDC  98 1E 09 58 */	stb r0, 0x958(r30)
/* 806BFCE0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806BFCE4  2C 00 00 00 */	cmpwi r0, 0
/* 806BFCE8  40 80 00 10 */	bge lbl_806BFCF8
/* 806BFCEC  38 00 00 00 */	li r0, 0
/* 806BFCF0  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 806BFCF4  48 00 00 0C */	b lbl_806BFD00
lbl_806BFCF8:
/* 806BFCF8  38 00 00 01 */	li r0, 1
/* 806BFCFC  B0 1E 07 04 */	sth r0, 0x704(r30)
lbl_806BFD00:
/* 806BFD00  38 00 00 02 */	li r0, 2
/* 806BFD04  90 1E 06 F8 */	stw r0, 0x6f8(r30)
lbl_806BFD08:
/* 806BFD08  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 806BFD0C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806BFD10  41 82 00 28 */	beq lbl_806BFD38
/* 806BFD14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BFD18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BFD1C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806BFD20  38 9E 08 5C */	addi r4, r30, 0x85c
/* 806BFD24  4B 9B 51 2D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 806BFD28  2C 03 00 08 */	cmpwi r3, 8
/* 806BFD2C  40 82 00 0C */	bne lbl_806BFD38
/* 806BFD30  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806BFD34  48 00 00 08 */	b lbl_806BFD3C
lbl_806BFD38:
/* 806BFD38  C0 5F 00 08 */	lfs f2, 8(r31)
lbl_806BFD3C:
/* 806BFD3C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BFD40  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BFD44  4B BA FD 3D */	bl cLib_addCalc0__FPfff
/* 806BFD48  A8 1E 07 04 */	lha r0, 0x704(r30)
/* 806BFD4C  2C 00 00 00 */	cmpwi r0, 0
/* 806BFD50  40 82 00 3C */	bne lbl_806BFD8C
/* 806BFD54  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806BFD58  C0 7E 06 FC */	lfs f3, 0x6fc(r30)
/* 806BFD5C  EC 22 18 24 */	fdivs f1, f2, f3
/* 806BFD60  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806BFD64  EC 03 00 28 */	fsubs f0, f3, f0
/* 806BFD68  EC 01 00 32 */	fmuls f0, f1, f0
/* 806BFD6C  EC 02 00 28 */	fsubs f0, f2, f0
/* 806BFD70  FC 00 00 1E */	fctiwz f0, f0
/* 806BFD74  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806BFD78  80 61 00 34 */	lwz r3, 0x34(r1)
/* 806BFD7C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BFD80  7C 03 00 50 */	subf r0, r3, r0
/* 806BFD84  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806BFD88  48 00 00 38 */	b lbl_806BFDC0
lbl_806BFD8C:
/* 806BFD8C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806BFD90  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806BFD94  C0 7E 06 FC */	lfs f3, 0x6fc(r30)
/* 806BFD98  EC 22 18 24 */	fdivs f1, f2, f3
/* 806BFD9C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806BFDA0  EC 03 00 28 */	fsubs f0, f3, f0
/* 806BFDA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806BFDA8  EC 02 00 28 */	fsubs f0, f2, f0
/* 806BFDAC  FC 00 00 1E */	fctiwz f0, f0
/* 806BFDB0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806BFDB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BFDB8  7C 03 02 14 */	add r0, r3, r0
/* 806BFDBC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_806BFDC0:
/* 806BFDC0  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 806BFDC4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806BFDC8  41 82 00 1C */	beq lbl_806BFDE4
/* 806BFDCC  A8 1E 07 68 */	lha r0, 0x768(r30)
/* 806BFDD0  B0 1E 07 08 */	sth r0, 0x708(r30)
/* 806BFDD4  7F C3 F3 78 */	mr r3, r30
/* 806BFDD8  4B FF ED 2D */	bl setReflectAngle__8daE_FZ_cFv
/* 806BFDDC  7F C3 F3 78 */	mr r3, r30
/* 806BFDE0  4B FF ED C1 */	bl mBoundSoundset__8daE_FZ_cFv
lbl_806BFDE4:
/* 806BFDE4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806BFDE8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806BFDEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BFDF0  40 80 01 8C */	bge lbl_806BFF7C
/* 806BFDF4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BFDF8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BFDFC  38 00 00 64 */	li r0, 0x64
/* 806BFE00  98 1E 09 58 */	stb r0, 0x958(r30)
/* 806BFE04  7F C3 F3 78 */	mr r3, r30
/* 806BFE08  38 80 00 00 */	li r4, 0
/* 806BFE0C  38 A0 00 00 */	li r5, 0
/* 806BFE10  4B FF EC E9 */	bl setActionMode__8daE_FZ_cFii
/* 806BFE14  48 00 01 68 */	b lbl_806BFF7C
lbl_806BFE18:
/* 806BFE18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BFE1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BFE20  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806BFE24  4B 95 A8 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BFE28  B0 7E 07 06 */	sth r3, 0x706(r30)
/* 806BFE2C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806BFE30  2C 00 00 00 */	cmpwi r0, 0
/* 806BFE34  40 80 00 10 */	bge lbl_806BFE44
/* 806BFE38  38 00 00 00 */	li r0, 0
/* 806BFE3C  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 806BFE40  48 00 00 0C */	b lbl_806BFE4C
lbl_806BFE44:
/* 806BFE44  38 00 00 01 */	li r0, 1
/* 806BFE48  B0 1E 07 04 */	sth r0, 0x704(r30)
lbl_806BFE4C:
/* 806BFE4C  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BFE50  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806BFE54  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806BFE58  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806BFE5C  D0 1E 06 FC */	stfs f0, 0x6fc(r30)
/* 806BFE60  38 00 00 04 */	li r0, 4
/* 806BFE64  90 1E 06 F8 */	stw r0, 0x6f8(r30)
lbl_806BFE68:
/* 806BFE68  A8 1E 07 04 */	lha r0, 0x704(r30)
/* 806BFE6C  2C 00 00 00 */	cmpwi r0, 0
/* 806BFE70  40 82 00 3C */	bne lbl_806BFEAC
/* 806BFE74  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806BFE78  C0 7E 06 FC */	lfs f3, 0x6fc(r30)
/* 806BFE7C  EC 22 18 24 */	fdivs f1, f2, f3
/* 806BFE80  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806BFE84  EC 03 00 28 */	fsubs f0, f3, f0
/* 806BFE88  EC 01 00 32 */	fmuls f0, f1, f0
/* 806BFE8C  EC 02 00 28 */	fsubs f0, f2, f0
/* 806BFE90  FC 00 00 1E */	fctiwz f0, f0
/* 806BFE94  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806BFE98  80 61 00 34 */	lwz r3, 0x34(r1)
/* 806BFE9C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BFEA0  7C 03 00 50 */	subf r0, r3, r0
/* 806BFEA4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806BFEA8  48 00 00 38 */	b lbl_806BFEE0
lbl_806BFEAC:
/* 806BFEAC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806BFEB0  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806BFEB4  C0 7E 06 FC */	lfs f3, 0x6fc(r30)
/* 806BFEB8  EC 22 18 24 */	fdivs f1, f2, f3
/* 806BFEBC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806BFEC0  EC 03 00 28 */	fsubs f0, f3, f0
/* 806BFEC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806BFEC8  EC 02 00 28 */	fsubs f0, f2, f0
/* 806BFECC  FC 00 00 1E */	fctiwz f0, f0
/* 806BFED0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806BFED4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BFED8  7C 03 02 14 */	add r0, r3, r0
/* 806BFEDC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_806BFEE0:
/* 806BFEE0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806BFEE4  A8 9E 07 06 */	lha r4, 0x706(r30)
/* 806BFEE8  38 A0 00 01 */	li r5, 1
/* 806BFEEC  38 C0 02 00 */	li r6, 0x200
/* 806BFEF0  4B BB 07 19 */	bl cLib_addCalcAngleS2__FPssss
/* 806BFEF4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BFEF8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BFEFC  FC 40 08 90 */	fmr f2, f1
/* 806BFF00  4B BA FB 81 */	bl cLib_addCalc0__FPfff
/* 806BFF04  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 806BFF08  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806BFF0C  41 82 00 1C */	beq lbl_806BFF28
/* 806BFF10  A8 1E 07 68 */	lha r0, 0x768(r30)
/* 806BFF14  B0 1E 07 08 */	sth r0, 0x708(r30)
/* 806BFF18  7F C3 F3 78 */	mr r3, r30
/* 806BFF1C  4B FF EB E9 */	bl setReflectAngle__8daE_FZ_cFv
/* 806BFF20  7F C3 F3 78 */	mr r3, r30
/* 806BFF24  4B FF EC 7D */	bl mBoundSoundset__8daE_FZ_cFv
lbl_806BFF28:
/* 806BFF28  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806BFF2C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806BFF30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BFF34  40 80 00 48 */	bge lbl_806BFF7C
/* 806BFF38  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BFF3C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BFF40  7F C3 F3 78 */	mr r3, r30
/* 806BFF44  38 80 00 02 */	li r4, 2
/* 806BFF48  38 A0 00 00 */	li r5, 0
/* 806BFF4C  4B FF EB AD */	bl setActionMode__8daE_FZ_cFii
/* 806BFF50  48 00 00 2C */	b lbl_806BFF7C
lbl_806BFF54:
/* 806BFF54  38 00 00 00 */	li r0, 0
/* 806BFF58  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806BFF5C  88 1E 07 10 */	lbz r0, 0x710(r30)
/* 806BFF60  28 00 00 01 */	cmplwi r0, 1
/* 806BFF64  41 82 00 10 */	beq lbl_806BFF74
/* 806BFF68  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 806BFF6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806BFF70  41 82 00 0C */	beq lbl_806BFF7C
lbl_806BFF74:
/* 806BFF74  38 00 00 00 */	li r0, 0
/* 806BFF78  90 1E 06 F8 */	stw r0, 0x6f8(r30)
lbl_806BFF7C:
/* 806BFF7C  39 61 00 50 */	addi r11, r1, 0x50
/* 806BFF80  4B CA 22 A9 */	bl _restgpr_29
/* 806BFF84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806BFF88  7C 08 03 A6 */	mtlr r0
/* 806BFF8C  38 21 00 50 */	addi r1, r1, 0x50
/* 806BFF90  4E 80 00 20 */	blr 
