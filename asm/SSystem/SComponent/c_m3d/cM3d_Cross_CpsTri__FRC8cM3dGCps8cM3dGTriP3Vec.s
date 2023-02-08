lbl_8026E12C:
/* 8026E12C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8026E130  7C 08 02 A6 */	mflr r0
/* 8026E134  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8026E138  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8026E13C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8026E140  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8026E144  48 0F 40 99 */	bl _savegpr_29
/* 8026E148  7C 7D 1B 78 */	mr r29, r3
/* 8026E14C  7C 9E 23 78 */	mr r30, r4
/* 8026E150  7C BF 2B 78 */	mr r31, r5
/* 8026E154  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E158  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E15C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E160  38 61 00 74 */	addi r3, r1, 0x74
/* 8026E164  7F A4 EB 78 */	mr r4, r29
/* 8026E168  48 00 14 E1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8026E16C  38 61 00 74 */	addi r3, r1, 0x74
/* 8026E170  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8026E174  48 00 15 95 */	bl SetR__8cM3dGSphFf
/* 8026E178  38 61 00 74 */	addi r3, r1, 0x74
/* 8026E17C  7F C4 F3 78 */	mr r4, r30
/* 8026E180  7F E5 FB 78 */	mr r5, r31
/* 8026E184  4B FF DD 81 */	bl cM3d_Cross_SphTri__FPC8cM3dGSphPC8cM3dGTriP3Vec
/* 8026E188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E18C  41 82 00 18 */	beq lbl_8026E1A4
/* 8026E190  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E194  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E198  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E19C  38 60 00 01 */	li r3, 1
/* 8026E1A0  48 00 03 3C */	b lbl_8026E4DC
lbl_8026E1A4:
/* 8026E1A4  38 61 00 74 */	addi r3, r1, 0x74
/* 8026E1A8  38 9D 00 0C */	addi r4, r29, 0xc
/* 8026E1AC  48 00 14 9D */	bl SetC__8cM3dGSphFRC4cXyz
/* 8026E1B0  38 61 00 74 */	addi r3, r1, 0x74
/* 8026E1B4  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8026E1B8  48 00 15 51 */	bl SetR__8cM3dGSphFf
/* 8026E1BC  38 61 00 74 */	addi r3, r1, 0x74
/* 8026E1C0  7F C4 F3 78 */	mr r4, r30
/* 8026E1C4  7F E5 FB 78 */	mr r5, r31
/* 8026E1C8  4B FF DD 3D */	bl cM3d_Cross_SphTri__FPC8cM3dGSphPC8cM3dGTriP3Vec
/* 8026E1CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E1D0  41 82 00 18 */	beq lbl_8026E1E8
/* 8026E1D4  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E1D8  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E1DC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E1E0  38 60 00 01 */	li r3, 1
/* 8026E1E4  48 00 02 F8 */	b lbl_8026E4DC
lbl_8026E1E8:
/* 8026E1E8  7F A3 EB 78 */	mr r3, r29
/* 8026E1EC  7F C4 F3 78 */	mr r4, r30
/* 8026E1F0  7F E5 FB 78 */	mr r5, r31
/* 8026E1F4  38 C0 00 01 */	li r6, 1
/* 8026E1F8  38 E0 00 01 */	li r7, 1
/* 8026E1FC  4B FF AD 39 */	bl cM3d_Cross_LinPla__FPC8cM3dGLinPC8cM3dGPlaP3Vecbb
/* 8026E200  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E204  40 82 00 18 */	bne lbl_8026E21C
/* 8026E208  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E20C  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E210  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E214  38 60 00 00 */	li r3, 0
/* 8026E218  48 00 02 C4 */	b lbl_8026E4DC
lbl_8026E21C:
/* 8026E21C  7F C3 F3 78 */	mr r3, r30
/* 8026E220  7F E4 FB 78 */	mr r4, r31
/* 8026E224  4B FF CF 59 */	bl cM3d_Cross_LinTri_Easy__FPC8cM3dGTriPC3Vec
/* 8026E228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026E22C  41 82 00 18 */	beq lbl_8026E244
/* 8026E230  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E234  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E238  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E23C  38 60 00 01 */	li r3, 1
/* 8026E240  48 00 02 9C */	b lbl_8026E4DC
lbl_8026E244:
/* 8026E244  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E248  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E24C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8026E250  38 61 00 58 */	addi r3, r1, 0x58
/* 8026E254  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026E258  38 BE 00 20 */	addi r5, r30, 0x20
/* 8026E25C  48 00 10 C1 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E260  7F A3 EB 78 */	mr r3, r29
/* 8026E264  38 81 00 58 */	addi r4, r1, 0x58
/* 8026E268  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026E26C  38 C1 00 08 */	addi r6, r1, 8
/* 8026E270  4B FF A9 ED */	bl cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
/* 8026E274  2C 03 00 02 */	cmpwi r3, 2
/* 8026E278  41 80 00 A8 */	blt lbl_8026E320
/* 8026E27C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026E280  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026E284  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026E288  40 81 00 98 */	ble lbl_8026E320
/* 8026E28C  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026E290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E294  40 80 00 8C */	bge lbl_8026E320
/* 8026E298  C3 E1 00 08 */	lfs f31, 8(r1)
/* 8026E29C  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8026E2A0  40 81 00 80 */	ble lbl_8026E320
/* 8026E2A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026E2A8  40 80 00 78 */	bge lbl_8026E320
/* 8026E2AC  7F A3 EB 78 */	mr r3, r29
/* 8026E2B0  38 81 00 40 */	addi r4, r1, 0x40
/* 8026E2B4  48 00 10 9D */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026E2B8  38 61 00 58 */	addi r3, r1, 0x58
/* 8026E2BC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8026E2C0  FC 20 F8 90 */	fmr f1, f31
/* 8026E2C4  48 00 10 8D */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026E2C8  38 61 00 40 */	addi r3, r1, 0x40
/* 8026E2CC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8026E2D0  7F E5 FB 78 */	mr r5, r31
/* 8026E2D4  48 0D 8D BD */	bl PSVECAdd
/* 8026E2D8  7F E3 FB 78 */	mr r3, r31
/* 8026E2DC  7F E4 FB 78 */	mr r4, r31
/* 8026E2E0  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026E2E4  48 0D 8D F5 */	bl PSVECScale
/* 8026E2E8  38 61 00 40 */	addi r3, r1, 0x40
/* 8026E2EC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8026E2F0  48 0D 90 D5 */	bl PSVECDistance
/* 8026E2F4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8026E2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E2FC  40 80 00 24 */	bge lbl_8026E320
/* 8026E300  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E304  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E308  90 01 00 70 */	stw r0, 0x70(r1)
/* 8026E30C  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E310  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E314  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E318  38 60 00 01 */	li r3, 1
/* 8026E31C  48 00 01 C0 */	b lbl_8026E4DC
lbl_8026E320:
/* 8026E320  38 61 00 58 */	addi r3, r1, 0x58
/* 8026E324  38 9E 00 20 */	addi r4, r30, 0x20
/* 8026E328  38 BE 00 2C */	addi r5, r30, 0x2c
/* 8026E32C  48 00 0F F1 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E330  7F A3 EB 78 */	mr r3, r29
/* 8026E334  38 81 00 58 */	addi r4, r1, 0x58
/* 8026E338  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026E33C  38 C1 00 08 */	addi r6, r1, 8
/* 8026E340  4B FF A9 1D */	bl cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
/* 8026E344  2C 03 00 02 */	cmpwi r3, 2
/* 8026E348  41 80 00 A8 */	blt lbl_8026E3F0
/* 8026E34C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026E350  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026E354  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026E358  40 81 00 98 */	ble lbl_8026E3F0
/* 8026E35C  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026E360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E364  40 80 00 8C */	bge lbl_8026E3F0
/* 8026E368  C3 E1 00 08 */	lfs f31, 8(r1)
/* 8026E36C  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8026E370  40 81 00 80 */	ble lbl_8026E3F0
/* 8026E374  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026E378  40 80 00 78 */	bge lbl_8026E3F0
/* 8026E37C  7F A3 EB 78 */	mr r3, r29
/* 8026E380  38 81 00 28 */	addi r4, r1, 0x28
/* 8026E384  48 00 0F CD */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026E388  38 61 00 58 */	addi r3, r1, 0x58
/* 8026E38C  38 81 00 34 */	addi r4, r1, 0x34
/* 8026E390  FC 20 F8 90 */	fmr f1, f31
/* 8026E394  48 00 0F BD */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026E398  38 61 00 28 */	addi r3, r1, 0x28
/* 8026E39C  38 81 00 34 */	addi r4, r1, 0x34
/* 8026E3A0  7F E5 FB 78 */	mr r5, r31
/* 8026E3A4  48 0D 8C ED */	bl PSVECAdd
/* 8026E3A8  7F E3 FB 78 */	mr r3, r31
/* 8026E3AC  7F E4 FB 78 */	mr r4, r31
/* 8026E3B0  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026E3B4  48 0D 8D 25 */	bl PSVECScale
/* 8026E3B8  38 61 00 28 */	addi r3, r1, 0x28
/* 8026E3BC  38 81 00 34 */	addi r4, r1, 0x34
/* 8026E3C0  48 0D 90 05 */	bl PSVECDistance
/* 8026E3C4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8026E3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E3CC  40 80 00 24 */	bge lbl_8026E3F0
/* 8026E3D0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E3D4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E3D8  90 01 00 70 */	stw r0, 0x70(r1)
/* 8026E3DC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E3E0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E3E4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E3E8  38 60 00 01 */	li r3, 1
/* 8026E3EC  48 00 00 F0 */	b lbl_8026E4DC
lbl_8026E3F0:
/* 8026E3F0  38 61 00 58 */	addi r3, r1, 0x58
/* 8026E3F4  38 9E 00 2C */	addi r4, r30, 0x2c
/* 8026E3F8  38 BE 00 14 */	addi r5, r30, 0x14
/* 8026E3FC  48 00 0F 21 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E400  7F A3 EB 78 */	mr r3, r29
/* 8026E404  38 81 00 58 */	addi r4, r1, 0x58
/* 8026E408  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026E40C  38 C1 00 08 */	addi r6, r1, 8
/* 8026E410  4B FF A8 4D */	bl cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
/* 8026E414  2C 03 00 02 */	cmpwi r3, 2
/* 8026E418  41 80 00 A8 */	blt lbl_8026E4C0
/* 8026E41C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026E420  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026E424  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026E428  40 81 00 98 */	ble lbl_8026E4C0
/* 8026E42C  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026E430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E434  40 80 00 8C */	bge lbl_8026E4C0
/* 8026E438  C3 E1 00 08 */	lfs f31, 8(r1)
/* 8026E43C  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8026E440  40 81 00 80 */	ble lbl_8026E4C0
/* 8026E444  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026E448  40 80 00 78 */	bge lbl_8026E4C0
/* 8026E44C  7F A3 EB 78 */	mr r3, r29
/* 8026E450  38 81 00 10 */	addi r4, r1, 0x10
/* 8026E454  48 00 0E FD */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026E458  38 61 00 58 */	addi r3, r1, 0x58
/* 8026E45C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8026E460  FC 20 F8 90 */	fmr f1, f31
/* 8026E464  48 00 0E ED */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026E468  38 61 00 10 */	addi r3, r1, 0x10
/* 8026E46C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8026E470  7F E5 FB 78 */	mr r5, r31
/* 8026E474  48 0D 8C 1D */	bl PSVECAdd
/* 8026E478  7F E3 FB 78 */	mr r3, r31
/* 8026E47C  7F E4 FB 78 */	mr r4, r31
/* 8026E480  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026E484  48 0D 8C 55 */	bl PSVECScale
/* 8026E488  38 61 00 10 */	addi r3, r1, 0x10
/* 8026E48C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8026E490  48 0D 8F 35 */	bl PSVECDistance
/* 8026E494  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8026E498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026E49C  40 80 00 24 */	bge lbl_8026E4C0
/* 8026E4A0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E4A4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E4A8  90 01 00 70 */	stw r0, 0x70(r1)
/* 8026E4AC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E4B0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E4B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E4B8  38 60 00 01 */	li r3, 1
/* 8026E4BC  48 00 00 20 */	b lbl_8026E4DC
lbl_8026E4C0:
/* 8026E4C0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026E4C4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026E4C8  90 01 00 70 */	stw r0, 0x70(r1)
/* 8026E4CC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026E4D0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026E4D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8026E4D8  38 60 00 00 */	li r3, 0
lbl_8026E4DC:
/* 8026E4DC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8026E4E0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8026E4E4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8026E4E8  48 0F 3D 41 */	bl _restgpr_29
/* 8026E4EC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8026E4F0  7C 08 03 A6 */	mtlr r0
/* 8026E4F4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8026E4F8  4E 80 00 20 */	blr 
