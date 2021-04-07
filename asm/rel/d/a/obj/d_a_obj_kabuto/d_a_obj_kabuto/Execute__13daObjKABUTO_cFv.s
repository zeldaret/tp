lbl_80C2CC18:
/* 80C2CC18  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80C2CC1C  7C 08 02 A6 */	mflr r0
/* 80C2CC20  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80C2CC24  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80C2CC28  4B 73 55 B1 */	bl _savegpr_28
/* 80C2CC2C  7C 7D 1B 78 */	mr r29, r3
/* 80C2CC30  3C 80 80 C3 */	lis r4, lit_3775@ha /* 0x80C2E110@ha */
/* 80C2CC34  3B E4 E1 10 */	addi r31, r4, lit_3775@l /* 0x80C2E110@l */
/* 80C2CC38  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80C2CC3C  2C 00 00 00 */	cmpwi r0, 0
/* 80C2CC40  40 81 00 70 */	ble lbl_80C2CCB0
/* 80C2CC44  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 80C2CC48  80 1D 07 7C */	lwz r0, 0x77c(r29)
/* 80C2CC4C  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80C2CC50  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C2CC54  3C 00 43 30 */	lis r0, 0x4330
/* 80C2CC58  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80C2CC5C  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C2CC60  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C2CC64  EC 02 00 2A */	fadds f0, f2, f0
/* 80C2CC68  D0 1D 07 78 */	stfs f0, 0x778(r29)
/* 80C2CC6C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C2CC70  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C2CC74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2CC78  38 7D 09 70 */	addi r3, r29, 0x970
/* 80C2CC7C  38 81 00 24 */	addi r4, r1, 0x24
/* 80C2CC80  38 A0 00 00 */	li r5, 0
/* 80C2CC84  38 C0 FF FF */	li r6, -1
/* 80C2CC88  81 9D 09 70 */	lwz r12, 0x970(r29)
/* 80C2CC8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2CC90  7D 89 03 A6 */	mtctr r12
/* 80C2CC94  4E 80 04 21 */	bctrl 
/* 80C2CC98  7F A3 EB 78 */	mr r3, r29
/* 80C2CC9C  4B 53 13 DD */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80C2CCA0  7F A3 EB 78 */	mr r3, r29
/* 80C2CCA4  4B FF FE 39 */	bl ParticleSet__13daObjKABUTO_cFv
/* 80C2CCA8  38 60 00 01 */	li r3, 1
/* 80C2CCAC  48 00 05 58 */	b lbl_80C2D204
lbl_80C2CCB0:
/* 80C2CCB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2CCB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2CCB8  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80C2CCBC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2CCC0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80C2CCC4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2CCC8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80C2CCCC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2CCD0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80C2CCD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2CCD8  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80C2CCDC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2CCE0  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C2CCE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2CCE8  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80C2CCEC  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80C2CCF0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C2CCF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2CCF8  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C2CCFC  88 1D 07 36 */	lbz r0, 0x736(r29)
/* 80C2CD00  2C 00 00 01 */	cmpwi r0, 1
/* 80C2CD04  41 82 04 88 */	beq lbl_80C2D18C
/* 80C2CD08  40 80 04 88 */	bge lbl_80C2D190
/* 80C2CD0C  2C 00 00 00 */	cmpwi r0, 0
/* 80C2CD10  40 80 00 08 */	bge lbl_80C2CD18
/* 80C2CD14  48 00 04 7C */	b lbl_80C2D190
lbl_80C2CD18:
/* 80C2CD18  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80C2CD1C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80C2CD20  40 82 00 0C */	bne lbl_80C2CD2C
/* 80C2CD24  4B FF FC 21 */	bl Action__13daObjKABUTO_cFv
/* 80C2CD28  48 00 00 1C */	b lbl_80C2CD44
lbl_80C2CD2C:
/* 80C2CD2C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2CD30  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80C2CD34  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2CD38  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80C2CD3C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2CD40  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
lbl_80C2CD44:
/* 80C2CD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2CD48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2CD4C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C2CD50  38 00 00 FF */	li r0, 0xff
/* 80C2CD54  90 01 00 08 */	stw r0, 8(r1)
/* 80C2CD58  38 80 00 00 */	li r4, 0
/* 80C2CD5C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C2CD60  38 00 FF FF */	li r0, -1
/* 80C2CD64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2CD68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C2CD6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C2CD70  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C2CD74  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80C2CD78  38 A0 00 00 */	li r5, 0
/* 80C2CD7C  38 C0 0A 1C */	li r6, 0xa1c
/* 80C2CD80  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80C2CD84  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80C2CD88  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80C2CD8C  39 40 00 00 */	li r10, 0
/* 80C2CD90  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C2CD94  4B 42 07 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C2CD98  90 7D 05 74 */	stw r3, 0x574(r29)
/* 80C2CD9C  7F A3 EB 78 */	mr r3, r29
/* 80C2CDA0  4B FF E1 71 */	bl SetCcSph__13daObjKABUTO_cFv
/* 80C2CDA4  7F A3 EB 78 */	mr r3, r29
/* 80C2CDA8  48 00 04 75 */	bl ObjHit__13daObjKABUTO_cFv
/* 80C2CDAC  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 80C2CDB0  28 00 00 00 */	cmplwi r0, 0
/* 80C2CDB4  41 82 03 80 */	beq lbl_80C2D134
/* 80C2CDB8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2CDBC  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80C2CDC0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2CDC4  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80C2CDC8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2CDCC  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80C2CDD0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C2CDD4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C2CDD8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C2CDDC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C2CDE0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C2CDE4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C2CDE8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C2CDEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2CDF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C2CDF4  38 7D 07 04 */	addi r3, r29, 0x704
/* 80C2CDF8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C2CDFC  38 BD 04 E6 */	addi r5, r29, 0x4e6
/* 80C2CE00  38 C0 00 00 */	li r6, 0
/* 80C2CE04  38 E0 1C 00 */	li r7, 0x1c00
/* 80C2CE08  4B 53 18 4D */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80C2CE0C  2C 03 00 00 */	cmpwi r3, 0
/* 80C2CE10  41 82 00 24 */	beq lbl_80C2CE34
/* 80C2CE14  38 7D 07 04 */	addi r3, r29, 0x704
/* 80C2CE18  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C2CE1C  4B 53 1A 61 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C2CE20  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C2CE24  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80C2CE28  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2CE2C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2CE30  48 00 03 04 */	b lbl_80C2D134
lbl_80C2CE34:
/* 80C2CE34  38 61 00 60 */	addi r3, r1, 0x60
/* 80C2CE38  4B 44 AE 31 */	bl __ct__11dBgS_LinChkFv
/* 80C2CE3C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80C2CE40  4B 44 C0 29 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2CE44  38 61 00 60 */	addi r3, r1, 0x60
/* 80C2CE48  38 81 00 40 */	addi r4, r1, 0x40
/* 80C2CE4C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C2CE50  38 C0 00 00 */	li r6, 0
/* 80C2CE54  4B 44 AF 11 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2CE58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2CE5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2CE60  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C2CE64  7F 83 E3 78 */	mr r3, r28
/* 80C2CE68  38 81 00 60 */	addi r4, r1, 0x60
/* 80C2CE6C  4B 44 75 49 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2CE70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2CE74  41 82 01 D0 */	beq lbl_80C2D044
/* 80C2CE78  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2CE7C  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2CE80  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C2CE84  7F 83 E3 78 */	mr r3, r28
/* 80C2CE88  38 81 00 74 */	addi r4, r1, 0x74
/* 80C2CE8C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C2CE90  4B 44 78 B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2CE94  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C2CE98  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80C2CE9C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C2CEA0  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80C2CEA4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80C2CEA8  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80C2CEAC  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 80C2CEB0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C2CEB4  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80C2CEB8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2CEBC  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 80C2CEC0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C2CEC4  38 00 00 00 */	li r0, 0
/* 80C2CEC8  98 1D 07 10 */	stb r0, 0x710(r29)
/* 80C2CECC  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80C2CED0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C2CED4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C2CED8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C2CEDC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2CEE0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80C2CEE4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C2CEE8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2CEEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C2CEF0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C2CEF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C2CEF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2CEFC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C2CF00  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2CF04  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C2CF08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C2CF0C  38 61 00 34 */	addi r3, r1, 0x34
/* 80C2CF10  38 81 00 28 */	addi r4, r1, 0x28
/* 80C2CF14  4B 71 A4 89 */	bl PSVECSquareDistance
/* 80C2CF18  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2CF1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2CF20  40 81 00 58 */	ble lbl_80C2CF78
/* 80C2CF24  FC 00 08 34 */	frsqrte f0, f1
/* 80C2CF28  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C2CF2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2CF30  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C2CF34  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2CF38  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2CF3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2CF40  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2CF44  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2CF48  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2CF4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2CF50  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2CF54  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2CF58  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2CF5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2CF60  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2CF64  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2CF68  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2CF6C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C2CF70  FC 40 10 18 */	frsp f2, f2
/* 80C2CF74  48 00 00 90 */	b lbl_80C2D004
lbl_80C2CF78:
/* 80C2CF78  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C2CF7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2CF80  40 80 00 10 */	bge lbl_80C2CF90
/* 80C2CF84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2CF88  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2CF8C  48 00 00 78 */	b lbl_80C2D004
lbl_80C2CF90:
/* 80C2CF90  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C2CF94  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80C2CF98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2CF9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2CFA0  7C 03 00 00 */	cmpw r3, r0
/* 80C2CFA4  41 82 00 14 */	beq lbl_80C2CFB8
/* 80C2CFA8  40 80 00 40 */	bge lbl_80C2CFE8
/* 80C2CFAC  2C 03 00 00 */	cmpwi r3, 0
/* 80C2CFB0  41 82 00 20 */	beq lbl_80C2CFD0
/* 80C2CFB4  48 00 00 34 */	b lbl_80C2CFE8
lbl_80C2CFB8:
/* 80C2CFB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2CFBC  41 82 00 0C */	beq lbl_80C2CFC8
/* 80C2CFC0  38 00 00 01 */	li r0, 1
/* 80C2CFC4  48 00 00 28 */	b lbl_80C2CFEC
lbl_80C2CFC8:
/* 80C2CFC8  38 00 00 02 */	li r0, 2
/* 80C2CFCC  48 00 00 20 */	b lbl_80C2CFEC
lbl_80C2CFD0:
/* 80C2CFD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2CFD4  41 82 00 0C */	beq lbl_80C2CFE0
/* 80C2CFD8  38 00 00 05 */	li r0, 5
/* 80C2CFDC  48 00 00 10 */	b lbl_80C2CFEC
lbl_80C2CFE0:
/* 80C2CFE0  38 00 00 03 */	li r0, 3
/* 80C2CFE4  48 00 00 08 */	b lbl_80C2CFEC
lbl_80C2CFE8:
/* 80C2CFE8  38 00 00 04 */	li r0, 4
lbl_80C2CFEC:
/* 80C2CFEC  2C 00 00 01 */	cmpwi r0, 1
/* 80C2CFF0  40 82 00 10 */	bne lbl_80C2D000
/* 80C2CFF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2CFF8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2CFFC  48 00 00 08 */	b lbl_80C2D004
lbl_80C2D000:
/* 80C2D000  FC 40 08 90 */	fmr f2, f1
lbl_80C2D004:
/* 80C2D004  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80C2D008  4B 63 A6 6D */	bl cM_atan2s__Fff
/* 80C2D00C  7C 03 00 D0 */	neg r0, r3
/* 80C2D010  B0 1D 07 2E */	sth r0, 0x72e(r29)
/* 80C2D014  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80C2D018  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80C2D01C  4B 63 A6 59 */	bl cM_atan2s__Fff
/* 80C2D020  B0 7D 07 2A */	sth r3, 0x72a(r29)
/* 80C2D024  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80C2D028  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80C2D02C  4B 63 A6 49 */	bl cM_atan2s__Fff
/* 80C2D030  B0 7D 07 32 */	sth r3, 0x732(r29)
/* 80C2D034  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C2E2C0@ha */
/* 80C2D038  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C2E2C0@l */
/* 80C2D03C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C2D040  48 00 00 E0 */	b lbl_80C2D120
lbl_80C2D044:
/* 80C2D044  38 00 00 01 */	li r0, 1
/* 80C2D048  98 1D 07 10 */	stb r0, 0x710(r29)
/* 80C2D04C  38 00 00 02 */	li r0, 2
/* 80C2D050  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80C2D054  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2D058  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2D05C  38 80 00 06 */	li r4, 6
/* 80C2D060  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D064  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D068  3C A5 00 02 */	addis r5, r5, 2
/* 80C2D06C  38 C0 00 80 */	li r6, 0x80
/* 80C2D070  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2D074  4B 40 F2 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2D078  7C 64 1B 78 */	mr r4, r3
/* 80C2D07C  80 7D 0A 04 */	lwz r3, 0xa04(r29)
/* 80C2D080  38 A0 00 02 */	li r5, 2
/* 80C2D084  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2D088  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C2D08C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C2D090  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C2D094  4B 3E 3D DD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2D098  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80C2D09C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C2D0A0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2D0A4  4B 63 A8 B1 */	bl cM_rndF__Ff
/* 80C2D0A8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80C2D0AC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2D0B0  D0 1D 07 18 */	stfs f0, 0x718(r29)
/* 80C2D0B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2D0B8  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80C2D0BC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2D0C0  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80C2D0C4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2D0C8  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80C2D0CC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2D0D0  D0 3D 07 1C */	stfs f1, 0x71c(r29)
/* 80C2D0D4  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 80C2D0D8  38 00 00 32 */	li r0, 0x32
/* 80C2D0DC  B0 1D 07 12 */	sth r0, 0x712(r29)
/* 80C2D0E0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80C2D0E4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C2D0E8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C2D0EC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C2D0F0  4B 63 A8 65 */	bl cM_rndF__Ff
/* 80C2D0F4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C2D0F8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2D0FC  FC 00 00 1E */	fctiwz f0, f0
/* 80C2D100  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80C2D104  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2D108  B0 1D 07 14 */	sth r0, 0x714(r29)
/* 80C2D10C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C2D110  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C2D114  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2D118  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80C2D11C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_80C2D120:
/* 80C2D120  38 00 00 00 */	li r0, 0
/* 80C2D124  98 1D 07 37 */	stb r0, 0x737(r29)
/* 80C2D128  38 61 00 60 */	addi r3, r1, 0x60
/* 80C2D12C  38 80 FF FF */	li r4, -1
/* 80C2D130  4B 44 AB AD */	bl __dt__11dBgS_LinChkFv
lbl_80C2D134:
/* 80C2D134  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C2D138  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80C2D13C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2D140  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C2D144  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C2D148  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80C2D14C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80C2D150  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80C2D154  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2D158  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C2D15C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80C2D160  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80C2D164  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80C2D168  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80C2D16C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80C2D170  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80C2D174  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80C2D178  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2D17C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80C2D180  7F A3 EB 78 */	mr r3, r29
/* 80C2D184  4B FF F9 59 */	bl ParticleSet__13daObjKABUTO_cFv
/* 80C2D188  48 00 00 08 */	b lbl_80C2D190
lbl_80C2D18C:
/* 80C2D18C  4B FF F8 7D */	bl ShopAction__13daObjKABUTO_cFv
lbl_80C2D190:
/* 80C2D190  88 1D 07 10 */	lbz r0, 0x710(r29)
/* 80C2D194  28 00 00 01 */	cmplwi r0, 1
/* 80C2D198  40 82 00 34 */	bne lbl_80C2D1CC
/* 80C2D19C  88 1D 07 11 */	lbz r0, 0x711(r29)
/* 80C2D1A0  28 00 00 02 */	cmplwi r0, 2
/* 80C2D1A4  40 82 00 28 */	bne lbl_80C2D1CC
/* 80C2D1A8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80C2D1AC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2D1B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2D1B4  40 80 00 18 */	bge lbl_80C2D1CC
/* 80C2D1B8  38 7D 07 98 */	addi r3, r29, 0x798
/* 80C2D1BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D1C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D1C4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C2D1C8  4B 44 98 E5 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80C2D1CC:
/* 80C2D1CC  80 7D 07 90 */	lwz r3, 0x790(r29)
/* 80C2D1D0  4B 3E 02 59 */	bl play__14mDoExt_baseAnmFv
/* 80C2D1D4  80 7D 07 8C */	lwz r3, 0x78c(r29)
/* 80C2D1D8  4B 3E 02 51 */	bl play__14mDoExt_baseAnmFv
/* 80C2D1DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C2D1E0  7C 03 07 74 */	extsb r3, r0
/* 80C2D1E4  4B 3F FE 89 */	bl dComIfGp_getReverb__Fi
/* 80C2D1E8  7C 65 1B 78 */	mr r5, r3
/* 80C2D1EC  80 7D 0A 04 */	lwz r3, 0xa04(r29)
/* 80C2D1F0  38 80 00 00 */	li r4, 0
/* 80C2D1F4  4B 3E 3E BD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80C2D1F8  7F A3 EB 78 */	mr r3, r29
/* 80C2D1FC  48 00 02 11 */	bl setBaseMtx__13daObjKABUTO_cFv
/* 80C2D200  38 60 00 01 */	li r3, 1
lbl_80C2D204:
/* 80C2D204  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80C2D208  4B 73 50 1D */	bl _restgpr_28
/* 80C2D20C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80C2D210  7C 08 03 A6 */	mtlr r0
/* 80C2D214  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80C2D218  4E 80 00 20 */	blr 
