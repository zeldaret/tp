lbl_80B1142C:
/* 80B1142C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B11430  7C 08 02 A6 */	mflr r0
/* 80B11434  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B11438  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B1143C  4B 85 0D 99 */	bl _savegpr_27
/* 80B11440  7C 7F 1B 78 */	mr r31, r3
/* 80B11444  3C 60 80 B1 */	lis r3, lit_3648@ha /* 0x80B142DC@ha */
/* 80B11448  3B A3 42 DC */	addi r29, r3, lit_3648@l /* 0x80B142DC@l */
/* 80B1144C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80B11450  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B11454  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80B11458  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B1145C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80B11460  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B11464  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B11468  4B 56 68 01 */	bl __ct__11dBgS_LinChkFv
/* 80B1146C  3B 60 00 00 */	li r27, 0
/* 80B11470  3B C0 00 00 */	li r30, 0
/* 80B11474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B11478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1147C  3B 83 0F 38 */	addi r28, r3, 0xf38
lbl_80B11480:
/* 80B11480  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B11484  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B11488  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B1148C  7C 00 F2 14 */	add r0, r0, r30
/* 80B11490  7C 05 07 34 */	extsh r5, r0
/* 80B11494  38 C1 00 30 */	addi r6, r1, 0x30
/* 80B11498  4B 75 F9 29 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B1149C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B114A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B114A4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80B114A8  38 C0 00 00 */	li r6, 0
/* 80B114AC  4B 56 68 B9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B114B0  7F 83 E3 78 */	mr r3, r28
/* 80B114B4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B114B8  4B 56 2E FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80B114BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B114C0  41 82 01 A8 */	beq lbl_80B11668
/* 80B114C4  3C 60 80 B1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80B144DC@ha */
/* 80B114C8  38 03 44 DC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80B144DC@l */
/* 80B114CC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B114D0  7F 83 E3 78 */	mr r3, r28
/* 80B114D4  38 81 00 70 */	addi r4, r1, 0x70
/* 80B114D8  38 A1 00 48 */	addi r5, r1, 0x48
/* 80B114DC  4B 56 32 69 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80B114E0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80B114E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B114E8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80B114EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B114F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B114F4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B114F8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B114FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B11500  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B11504  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B11508  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B1150C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B11510  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B11514  38 61 00 18 */	addi r3, r1, 0x18
/* 80B11518  38 81 00 0C */	addi r4, r1, 0xc
/* 80B1151C  4B 83 5E 81 */	bl PSVECSquareDistance
/* 80B11520  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80B11524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B11528  40 81 00 58 */	ble lbl_80B11580
/* 80B1152C  FC 00 08 34 */	frsqrte f0, f1
/* 80B11530  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 80B11534  FC 44 00 32 */	fmul f2, f4, f0
/* 80B11538  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 80B1153C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B11540  FC 01 00 32 */	fmul f0, f1, f0
/* 80B11544  FC 03 00 28 */	fsub f0, f3, f0
/* 80B11548  FC 02 00 32 */	fmul f0, f2, f0
/* 80B1154C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B11550  FC 00 00 32 */	fmul f0, f0, f0
/* 80B11554  FC 01 00 32 */	fmul f0, f1, f0
/* 80B11558  FC 03 00 28 */	fsub f0, f3, f0
/* 80B1155C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B11560  FC 44 00 32 */	fmul f2, f4, f0
/* 80B11564  FC 00 00 32 */	fmul f0, f0, f0
/* 80B11568  FC 01 00 32 */	fmul f0, f1, f0
/* 80B1156C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B11570  FC 02 00 32 */	fmul f0, f2, f0
/* 80B11574  FC 41 00 32 */	fmul f2, f1, f0
/* 80B11578  FC 40 10 18 */	frsp f2, f2
/* 80B1157C  48 00 00 90 */	b lbl_80B1160C
lbl_80B11580:
/* 80B11580  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 80B11584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B11588  40 80 00 10 */	bge lbl_80B11598
/* 80B1158C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B11590  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B11594  48 00 00 78 */	b lbl_80B1160C
lbl_80B11598:
/* 80B11598  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B1159C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B115A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B115A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B115A8  7C 03 00 00 */	cmpw r3, r0
/* 80B115AC  41 82 00 14 */	beq lbl_80B115C0
/* 80B115B0  40 80 00 40 */	bge lbl_80B115F0
/* 80B115B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B115B8  41 82 00 20 */	beq lbl_80B115D8
/* 80B115BC  48 00 00 34 */	b lbl_80B115F0
lbl_80B115C0:
/* 80B115C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B115C4  41 82 00 0C */	beq lbl_80B115D0
/* 80B115C8  38 00 00 01 */	li r0, 1
/* 80B115CC  48 00 00 28 */	b lbl_80B115F4
lbl_80B115D0:
/* 80B115D0  38 00 00 02 */	li r0, 2
/* 80B115D4  48 00 00 20 */	b lbl_80B115F4
lbl_80B115D8:
/* 80B115D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B115DC  41 82 00 0C */	beq lbl_80B115E8
/* 80B115E0  38 00 00 05 */	li r0, 5
/* 80B115E4  48 00 00 10 */	b lbl_80B115F4
lbl_80B115E8:
/* 80B115E8  38 00 00 03 */	li r0, 3
/* 80B115EC  48 00 00 08 */	b lbl_80B115F4
lbl_80B115F0:
/* 80B115F0  38 00 00 04 */	li r0, 4
lbl_80B115F4:
/* 80B115F4  2C 00 00 01 */	cmpwi r0, 1
/* 80B115F8  40 82 00 10 */	bne lbl_80B11608
/* 80B115FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B11600  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B11604  48 00 00 08 */	b lbl_80B1160C
lbl_80B11608:
/* 80B11608  FC 40 08 90 */	fmr f2, f1
lbl_80B1160C:
/* 80B1160C  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80B11610  4B 75 60 65 */	bl cM_atan2s__Fff
/* 80B11614  7C 03 00 D0 */	neg r0, r3
/* 80B11618  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
/* 80B1161C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80B11620  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80B11624  4B 75 60 51 */	bl cM_atan2s__Fff
/* 80B11628  B0 7F 05 EC */	sth r3, 0x5ec(r31)
/* 80B1162C  38 00 00 01 */	li r0, 1
/* 80B11630  98 1F 06 30 */	stb r0, 0x630(r31)
/* 80B11634  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B11638  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B1163C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B11640  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B11644  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B11648  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B1164C  3C 60 80 B1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80B144DC@ha */
/* 80B11650  38 03 44 DC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80B144DC@l */
/* 80B11654  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B11658  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B1165C  38 80 FF FF */	li r4, -1
/* 80B11660  4B 56 66 7D */	bl __dt__11dBgS_LinChkFv
/* 80B11664  48 00 00 20 */	b lbl_80B11684
lbl_80B11668:
/* 80B11668  3B 7B 00 01 */	addi r27, r27, 1
/* 80B1166C  2C 1B 00 04 */	cmpwi r27, 4
/* 80B11670  3B DE 40 00 */	addi r30, r30, 0x4000
/* 80B11674  41 80 FE 0C */	blt lbl_80B11480
/* 80B11678  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B1167C  38 80 FF FF */	li r4, -1
/* 80B11680  4B 56 66 5D */	bl __dt__11dBgS_LinChkFv
lbl_80B11684:
/* 80B11684  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B11688  4B 85 0B 99 */	bl _restgpr_27
/* 80B1168C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B11690  7C 08 03 A6 */	mtlr r0
/* 80B11694  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B11698  4E 80 00 20 */	blr 
