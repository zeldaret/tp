lbl_8026D3D4:
/* 8026D3D4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8026D3D8  7C 08 02 A6 */	mflr r0
/* 8026D3DC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8026D3E0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8026D3E4  48 0F 4D F5 */	bl _savegpr_28
/* 8026D3E8  7C 7C 1B 78 */	mr r28, r3
/* 8026D3EC  7C 9D 23 78 */	mr r29, r4
/* 8026D3F0  7C BE 2B 78 */	mr r30, r5
/* 8026D3F4  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D3F8  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D3FC  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D400  7F A3 EB 78 */	mr r3, r29
/* 8026D404  38 9C 00 0C */	addi r4, r28, 0xc
/* 8026D408  4B FF FC A9 */	bl cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
/* 8026D40C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026D410  41 82 00 30 */	beq lbl_8026D440
/* 8026D414  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8026D418  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026D41C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8026D420  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026D424  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8026D428  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026D42C  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D430  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D434  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D438  38 60 00 01 */	li r3, 1
/* 8026D43C  48 00 06 8C */	b lbl_8026DAC8
lbl_8026D440:
/* 8026D440  7F A3 EB 78 */	mr r3, r29
/* 8026D444  7F 84 E3 78 */	mr r4, r28
/* 8026D448  4B FF FC 69 */	bl cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
/* 8026D44C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026D450  41 82 00 30 */	beq lbl_8026D480
/* 8026D454  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8026D458  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026D45C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8026D460  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026D464  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8026D468  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026D46C  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D470  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D474  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D478  38 60 00 01 */	li r3, 1
/* 8026D47C  48 00 06 4C */	b lbl_8026DAC8
lbl_8026D480:
/* 8026D480  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8026D484  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8026D488  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8026D48C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8026D490  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026D494  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8026D498  3B E1 00 74 */	addi r31, r1, 0x74
/* 8026D49C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8026D4A0  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8026D4A4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8026D4A8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8026D4AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8026D4B0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8026D4B4  7F 83 E3 78 */	mr r3, r28
/* 8026D4B8  7F E4 FB 78 */	mr r4, r31
/* 8026D4BC  38 A1 00 48 */	addi r5, r1, 0x48
/* 8026D4C0  38 C1 00 14 */	addi r6, r1, 0x14
/* 8026D4C4  4B FF B2 4D */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8026D4C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026D4CC  41 82 00 68 */	beq lbl_8026D534
/* 8026D4D0  7F E3 FB 78 */	mr r3, r31
/* 8026D4D4  38 81 00 48 */	addi r4, r1, 0x48
/* 8026D4D8  48 0D 9E ED */	bl PSVECDistance
/* 8026D4DC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8026D4E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D4E4  40 80 00 50 */	bge lbl_8026D534
/* 8026D4E8  7F E3 FB 78 */	mr r3, r31
/* 8026D4EC  38 81 00 48 */	addi r4, r1, 0x48
/* 8026D4F0  7F C5 F3 78 */	mr r5, r30
/* 8026D4F4  48 0D 9B 9D */	bl PSVECAdd
/* 8026D4F8  7F C3 F3 78 */	mr r3, r30
/* 8026D4FC  7F C4 F3 78 */	mr r4, r30
/* 8026D500  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D504  48 0D 9B D5 */	bl PSVECScale
/* 8026D508  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8026D50C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026D510  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8026D514  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026D518  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8026D51C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026D520  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D524  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D528  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D52C  38 60 00 01 */	li r3, 1
/* 8026D530  48 00 05 98 */	b lbl_8026DAC8
lbl_8026D534:
/* 8026D534  7F 83 E3 78 */	mr r3, r28
/* 8026D538  38 81 00 68 */	addi r4, r1, 0x68
/* 8026D53C  38 A1 00 48 */	addi r5, r1, 0x48
/* 8026D540  38 C1 00 14 */	addi r6, r1, 0x14
/* 8026D544  4B FF B1 CD */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8026D548  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026D54C  41 82 00 50 */	beq lbl_8026D59C
/* 8026D550  38 61 00 68 */	addi r3, r1, 0x68
/* 8026D554  38 81 00 48 */	addi r4, r1, 0x48
/* 8026D558  48 0D 9E 6D */	bl PSVECDistance
/* 8026D55C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8026D560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D564  40 80 00 38 */	bge lbl_8026D59C
/* 8026D568  38 61 00 68 */	addi r3, r1, 0x68
/* 8026D56C  38 81 00 48 */	addi r4, r1, 0x48
/* 8026D570  7F C5 F3 78 */	mr r5, r30
/* 8026D574  48 0D 9B 1D */	bl PSVECAdd
/* 8026D578  7F C3 F3 78 */	mr r3, r30
/* 8026D57C  7F C4 F3 78 */	mr r4, r30
/* 8026D580  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D584  48 0D 9B 55 */	bl PSVECScale
/* 8026D588  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D58C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D590  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D594  38 60 00 01 */	li r3, 1
/* 8026D598  48 00 05 30 */	b lbl_8026DAC8
lbl_8026D59C:
/* 8026D59C  7F 83 E3 78 */	mr r3, r28
/* 8026D5A0  38 81 00 68 */	addi r4, r1, 0x68
/* 8026D5A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8026D5A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8026D5AC  4B FF B6 B1 */	bl cM3d_Check_LinLin__FPC8cM3dGLinPC8cM3dGLinPfPf
/* 8026D5B0  2C 03 00 01 */	cmpwi r3, 1
/* 8026D5B4  40 82 00 58 */	bne lbl_8026D60C
/* 8026D5B8  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026D5BC  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026D5C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8026D5C4  38 61 00 54 */	addi r3, r1, 0x54
/* 8026D5C8  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8026D5CC  48 00 21 3D */	bl SetR__8cM3dGSphFf
/* 8026D5D0  38 61 00 54 */	addi r3, r1, 0x54
/* 8026D5D4  7F 84 E3 78 */	mr r4, r28
/* 8026D5D8  48 00 20 71 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8026D5DC  7F A3 EB 78 */	mr r3, r29
/* 8026D5E0  38 81 00 54 */	addi r4, r1, 0x54
/* 8026D5E4  7F C5 F3 78 */	mr r5, r30
/* 8026D5E8  38 C1 00 08 */	addi r6, r1, 8
/* 8026D5EC  4B FF E4 5D */	bl cM3d_Cross_CylSph__FPC8cM3dGCylPC8cM3dGSphP3VecPf
/* 8026D5F0  3C 80 80 3A */	lis r4, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 8026D5F4  38 04 79 04 */	addi r0, r4, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 8026D5F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8026D5FC  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D600  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D604  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D608  48 00 04 C0 */	b lbl_8026DAC8
lbl_8026D60C:
/* 8026D60C  2C 03 00 02 */	cmpwi r3, 2
/* 8026D610  40 82 00 B4 */	bne lbl_8026D6C4
/* 8026D614  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8026D618  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026D61C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026D620  4C 41 13 82 */	cror 2, 1, 2
/* 8026D624  40 82 04 94 */	bne lbl_8026DAB8
/* 8026D628  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026D62C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D630  4C 40 13 82 */	cror 2, 0, 2
/* 8026D634  40 82 04 84 */	bne lbl_8026DAB8
/* 8026D638  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8026D63C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8026D640  4C 41 13 82 */	cror 2, 1, 2
/* 8026D644  40 82 04 74 */	bne lbl_8026DAB8
/* 8026D648  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8026D64C  4C 40 13 82 */	cror 2, 0, 2
/* 8026D650  40 82 04 68 */	bne lbl_8026DAB8
/* 8026D654  7F 83 E3 78 */	mr r3, r28
/* 8026D658  38 81 00 3C */	addi r4, r1, 0x3c
/* 8026D65C  48 00 1C F5 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D660  38 61 00 68 */	addi r3, r1, 0x68
/* 8026D664  38 81 00 30 */	addi r4, r1, 0x30
/* 8026D668  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026D66C  48 00 1C E5 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D670  38 61 00 3C */	addi r3, r1, 0x3c
/* 8026D674  38 81 00 30 */	addi r4, r1, 0x30
/* 8026D678  48 0D 9D 4D */	bl PSVECDistance
/* 8026D67C  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D680  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D684  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D68C  40 80 04 2C */	bge lbl_8026DAB8
/* 8026D690  38 61 00 3C */	addi r3, r1, 0x3c
/* 8026D694  38 81 00 30 */	addi r4, r1, 0x30
/* 8026D698  7F C5 F3 78 */	mr r5, r30
/* 8026D69C  48 0D 99 F5 */	bl PSVECAdd
/* 8026D6A0  7F C3 F3 78 */	mr r3, r30
/* 8026D6A4  7F C4 F3 78 */	mr r4, r30
/* 8026D6A8  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D6AC  48 0D 9A 2D */	bl PSVECScale
/* 8026D6B0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D6B4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D6B8  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D6BC  38 60 00 01 */	li r3, 1
/* 8026D6C0  48 00 04 08 */	b lbl_8026DAC8
lbl_8026D6C4:
/* 8026D6C4  2C 03 00 03 */	cmpwi r3, 3
/* 8026D6C8  40 82 03 F0 */	bne lbl_8026DAB8
/* 8026D6CC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8026D6D0  C0 62 B7 18 */	lfs f3, lit_2256(r2)
/* 8026D6D4  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026D6D8  40 80 01 2C */	bge lbl_8026D804
/* 8026D6DC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8026D6E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8026D6E4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8026D6E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8026D6EC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8026D6F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8026D6F4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026D6F8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026D6FC  40 80 00 78 */	bge lbl_8026D774
/* 8026D700  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8026D704  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D708  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8026D70C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D710  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8026D714  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D718  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D71C  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D720  48 0D 9C A5 */	bl PSVECDistance
/* 8026D724  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D728  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D72C  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D734  40 80 00 2C */	bge lbl_8026D760
/* 8026D738  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D73C  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D740  7F C5 F3 78 */	mr r5, r30
/* 8026D744  48 0D 99 4D */	bl PSVECAdd
/* 8026D748  7F C3 F3 78 */	mr r3, r30
/* 8026D74C  7F C4 F3 78 */	mr r4, r30
/* 8026D750  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D754  48 0D 99 85 */	bl PSVECScale
/* 8026D758  38 60 00 01 */	li r3, 1
/* 8026D75C  48 00 00 08 */	b lbl_8026D764
lbl_8026D760:
/* 8026D760  38 60 00 00 */	li r3, 0
lbl_8026D764:
/* 8026D764  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D768  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D76C  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D770  48 00 03 58 */	b lbl_8026DAC8
lbl_8026D774:
/* 8026D774  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026D778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D77C  40 81 00 78 */	ble lbl_8026D7F4
/* 8026D780  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8026D784  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D788  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8026D78C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D790  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8026D794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D798  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D79C  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D7A0  48 0D 9C 25 */	bl PSVECDistance
/* 8026D7A4  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D7A8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D7AC  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D7B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D7B4  40 80 00 2C */	bge lbl_8026D7E0
/* 8026D7B8  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D7BC  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D7C0  7F C5 F3 78 */	mr r5, r30
/* 8026D7C4  48 0D 98 CD */	bl PSVECAdd
/* 8026D7C8  7F C3 F3 78 */	mr r3, r30
/* 8026D7CC  7F C4 F3 78 */	mr r4, r30
/* 8026D7D0  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D7D4  48 0D 99 05 */	bl PSVECScale
/* 8026D7D8  38 60 00 01 */	li r3, 1
/* 8026D7DC  48 00 00 08 */	b lbl_8026D7E4
lbl_8026D7E0:
/* 8026D7E0  38 60 00 00 */	li r3, 0
lbl_8026D7E4:
/* 8026D7E4  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D7E8  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D7EC  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D7F0  48 00 02 D8 */	b lbl_8026DAC8
lbl_8026D7F4:
/* 8026D7F4  38 61 00 68 */	addi r3, r1, 0x68
/* 8026D7F8  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D7FC  48 00 1B 55 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D800  48 00 02 50 */	b lbl_8026DA50
lbl_8026D804:
/* 8026D804  C0 42 B7 38 */	lfs f2, lit_2273(r2)
/* 8026D808  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026D80C  40 81 01 28 */	ble lbl_8026D934
/* 8026D810  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8026D814  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8026D818  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8026D81C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8026D820  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8026D824  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8026D828  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026D82C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026D830  40 80 00 78 */	bge lbl_8026D8A8
/* 8026D834  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8026D838  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D83C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8026D840  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D844  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8026D848  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D84C  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D850  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D854  48 0D 9B 71 */	bl PSVECDistance
/* 8026D858  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D85C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D860  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D868  40 80 00 2C */	bge lbl_8026D894
/* 8026D86C  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D870  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D874  7F C5 F3 78 */	mr r5, r30
/* 8026D878  48 0D 98 19 */	bl PSVECAdd
/* 8026D87C  7F C3 F3 78 */	mr r3, r30
/* 8026D880  7F C4 F3 78 */	mr r4, r30
/* 8026D884  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D888  48 0D 98 51 */	bl PSVECScale
/* 8026D88C  38 60 00 01 */	li r3, 1
/* 8026D890  48 00 00 08 */	b lbl_8026D898
lbl_8026D894:
/* 8026D894  38 60 00 00 */	li r3, 0
lbl_8026D898:
/* 8026D898  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D89C  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D8A0  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D8A4  48 00 02 24 */	b lbl_8026DAC8
lbl_8026D8A8:
/* 8026D8A8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026D8AC  40 81 00 78 */	ble lbl_8026D924
/* 8026D8B0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8026D8B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D8B8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8026D8BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D8C0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8026D8C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D8C8  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D8CC  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D8D0  48 0D 9A F5 */	bl PSVECDistance
/* 8026D8D4  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D8D8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D8DC  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D8E4  40 80 00 2C */	bge lbl_8026D910
/* 8026D8E8  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D8EC  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D8F0  7F C5 F3 78 */	mr r5, r30
/* 8026D8F4  48 0D 97 9D */	bl PSVECAdd
/* 8026D8F8  7F C3 F3 78 */	mr r3, r30
/* 8026D8FC  7F C4 F3 78 */	mr r4, r30
/* 8026D900  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D904  48 0D 97 D5 */	bl PSVECScale
/* 8026D908  38 60 00 01 */	li r3, 1
/* 8026D90C  48 00 00 08 */	b lbl_8026D914
lbl_8026D910:
/* 8026D910  38 60 00 00 */	li r3, 0
lbl_8026D914:
/* 8026D914  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D918  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D91C  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D920  48 00 01 A8 */	b lbl_8026DAC8
lbl_8026D924:
/* 8026D924  38 61 00 68 */	addi r3, r1, 0x68
/* 8026D928  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D92C  48 00 1A 25 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D930  48 00 01 20 */	b lbl_8026DA50
lbl_8026D934:
/* 8026D934  7F 83 E3 78 */	mr r3, r28
/* 8026D938  38 81 00 24 */	addi r4, r1, 0x24
/* 8026D93C  48 00 1A 15 */	bl CalcPos__8cM3dGLinCFP3Vecf
/* 8026D940  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8026D944  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026D948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D94C  40 80 00 78 */	bge lbl_8026D9C4
/* 8026D950  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8026D954  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D958  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8026D95C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D960  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8026D964  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D968  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D96C  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D970  48 0D 9A 55 */	bl PSVECDistance
/* 8026D974  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D978  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D97C  EC 02 00 2A */	fadds f0, f2, f0
/* 8026D980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D984  40 80 00 2C */	bge lbl_8026D9B0
/* 8026D988  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D98C  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D990  7F C5 F3 78 */	mr r5, r30
/* 8026D994  48 0D 96 FD */	bl PSVECAdd
/* 8026D998  7F C3 F3 78 */	mr r3, r30
/* 8026D99C  7F C4 F3 78 */	mr r4, r30
/* 8026D9A0  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026D9A4  48 0D 97 35 */	bl PSVECScale
/* 8026D9A8  38 60 00 01 */	li r3, 1
/* 8026D9AC  48 00 00 08 */	b lbl_8026D9B4
lbl_8026D9B0:
/* 8026D9B0  38 60 00 00 */	li r3, 0
lbl_8026D9B4:
/* 8026D9B4  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026D9B8  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026D9BC  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026D9C0  48 00 01 08 */	b lbl_8026DAC8
lbl_8026D9C4:
/* 8026D9C4  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026D9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D9CC  40 81 00 78 */	ble lbl_8026DA44
/* 8026D9D0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8026D9D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026D9D8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8026D9DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8026D9E0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8026D9E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026D9E8  38 61 00 24 */	addi r3, r1, 0x24
/* 8026D9EC  38 81 00 18 */	addi r4, r1, 0x18
/* 8026D9F0  48 0D 99 D5 */	bl PSVECDistance
/* 8026D9F4  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026D9F8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026D9FC  EC 02 00 2A */	fadds f0, f2, f0
/* 8026DA00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DA04  40 80 00 2C */	bge lbl_8026DA30
/* 8026DA08  38 61 00 24 */	addi r3, r1, 0x24
/* 8026DA0C  38 81 00 18 */	addi r4, r1, 0x18
/* 8026DA10  7F C5 F3 78 */	mr r5, r30
/* 8026DA14  48 0D 96 7D */	bl PSVECAdd
/* 8026DA18  7F C3 F3 78 */	mr r3, r30
/* 8026DA1C  7F C4 F3 78 */	mr r4, r30
/* 8026DA20  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026DA24  48 0D 96 B5 */	bl PSVECScale
/* 8026DA28  38 60 00 01 */	li r3, 1
/* 8026DA2C  48 00 00 08 */	b lbl_8026DA34
lbl_8026DA30:
/* 8026DA30  38 60 00 00 */	li r3, 0
lbl_8026DA34:
/* 8026DA34  3C 80 80 3A */	lis r4, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DA38  38 04 78 F8 */	addi r0, r4, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DA3C  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026DA40  48 00 00 88 */	b lbl_8026DAC8
lbl_8026DA44:
/* 8026DA44  38 61 00 68 */	addi r3, r1, 0x68
/* 8026DA48  38 81 00 18 */	addi r4, r1, 0x18
/* 8026DA4C  48 00 19 05 */	bl CalcPos__8cM3dGLinCFP3Vecf
lbl_8026DA50:
/* 8026DA50  38 61 00 24 */	addi r3, r1, 0x24
/* 8026DA54  38 81 00 18 */	addi r4, r1, 0x18
/* 8026DA58  48 0D 99 6D */	bl PSVECDistance
/* 8026DA5C  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 8026DA60  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026DA64  EC 02 00 2A */	fadds f0, f2, f0
/* 8026DA68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DA6C  40 80 00 38 */	bge lbl_8026DAA4
/* 8026DA70  38 61 00 24 */	addi r3, r1, 0x24
/* 8026DA74  38 81 00 18 */	addi r4, r1, 0x18
/* 8026DA78  7F C5 F3 78 */	mr r5, r30
/* 8026DA7C  48 0D 96 15 */	bl PSVECAdd
/* 8026DA80  7F C3 F3 78 */	mr r3, r30
/* 8026DA84  7F C4 F3 78 */	mr r4, r30
/* 8026DA88  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026DA8C  48 0D 96 4D */	bl PSVECScale
/* 8026DA90  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DA94  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DA98  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026DA9C  38 60 00 01 */	li r3, 1
/* 8026DAA0  48 00 00 28 */	b lbl_8026DAC8
lbl_8026DAA4:
/* 8026DAA4  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DAA8  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DAAC  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026DAB0  38 60 00 00 */	li r3, 0
/* 8026DAB4  48 00 00 14 */	b lbl_8026DAC8
lbl_8026DAB8:
/* 8026DAB8  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026DABC  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026DAC0  90 01 00 80 */	stw r0, 0x80(r1)
/* 8026DAC4  38 60 00 00 */	li r3, 0
lbl_8026DAC8:
/* 8026DAC8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8026DACC  48 0F 47 59 */	bl _restgpr_28
/* 8026DAD0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8026DAD4  7C 08 03 A6 */	mtlr r0
/* 8026DAD8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8026DADC  4E 80 00 20 */	blr 
