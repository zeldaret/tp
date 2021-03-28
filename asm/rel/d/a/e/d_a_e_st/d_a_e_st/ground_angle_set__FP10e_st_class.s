lbl_807A3E44:
/* 807A3E44  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807A3E48  7C 08 02 A6 */	mflr r0
/* 807A3E4C  90 01 00 94 */	stw r0, 0x94(r1)
/* 807A3E50  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807A3E54  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807A3E58  39 61 00 80 */	addi r11, r1, 0x80
/* 807A3E5C  4B BB E3 78 */	b _savegpr_27
/* 807A3E60  7C 7B 1B 78 */	mr r27, r3
/* 807A3E64  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A3E68  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A3E6C  3B A0 00 00 */	li r29, 0
/* 807A3E70  3B 80 00 00 */	li r28, 0
/* 807A3E74  38 61 00 14 */	addi r3, r1, 0x14
/* 807A3E78  4B 8D 37 04 */	b __ct__11dBgS_GndChkFv
/* 807A3E7C  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 807A3E80  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A3E84  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A3E88  C0 03 00 08 */	lfs f0, 8(r3)
/* 807A3E8C  EF E1 00 32 */	fmuls f31, f1, f0
/* 807A3E90  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 807A3E94  C0 1B 08 D8 */	lfs f0, 0x8d8(r27)
/* 807A3E98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A3E9C  41 82 01 3C */	beq lbl_807A3FD8
/* 807A3EA0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807A3EA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A3EA8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A3EAC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807A3EB0  EC 01 00 2A */	fadds f0, f1, f0
/* 807A3EB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A3EB8  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 807A3EBC  EC 00 F8 2A */	fadds f0, f0, f31
/* 807A3EC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A3EC4  38 61 00 14 */	addi r3, r1, 0x14
/* 807A3EC8  38 81 00 08 */	addi r4, r1, 8
/* 807A3ECC  4B AC 3E 40 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807A3ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A3ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A3ED8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807A3EDC  7F C3 F3 78 */	mr r3, r30
/* 807A3EE0  38 81 00 14 */	addi r4, r1, 0x14
/* 807A3EE4  4B 8D 05 BC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807A3EE8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A3EEC  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 807A3EF0  FC 20 08 18 */	frsp f1, f1
/* 807A3EF4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807A3EF8  41 82 00 38 */	beq lbl_807A3F30
/* 807A3EFC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807A3F00  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A3F04  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807A3F08  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 807A3F0C  EC 42 00 28 */	fsubs f2, f2, f0
/* 807A3F10  4B AC 37 64 */	b cM_atan2s__Fff
/* 807A3F14  7C 03 00 D0 */	neg r0, r3
/* 807A3F18  7C 1C 07 34 */	extsh r28, r0
/* 807A3F1C  2C 1C 20 00 */	cmpwi r28, 0x2000
/* 807A3F20  41 81 00 0C */	bgt lbl_807A3F2C
/* 807A3F24  2C 1C E0 00 */	cmpwi r28, -8192
/* 807A3F28  40 80 00 08 */	bge lbl_807A3F30
lbl_807A3F2C:
/* 807A3F2C  3B 80 00 00 */	li r28, 0
lbl_807A3F30:
/* 807A3F30  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807A3F34  EC 00 F8 2A */	fadds f0, f0, f31
/* 807A3F38  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A3F3C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A3F40  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807A3F44  EC 01 00 2A */	fadds f0, f1, f0
/* 807A3F48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A3F4C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 807A3F50  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A3F54  38 61 00 14 */	addi r3, r1, 0x14
/* 807A3F58  38 81 00 08 */	addi r4, r1, 8
/* 807A3F5C  4B AC 3D B0 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807A3F60  7F C3 F3 78 */	mr r3, r30
/* 807A3F64  38 81 00 14 */	addi r4, r1, 0x14
/* 807A3F68  4B 8D 05 38 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807A3F6C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A3F70  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 807A3F74  FC 20 08 18 */	frsp f1, f1
/* 807A3F78  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807A3F7C  41 82 00 34 */	beq lbl_807A3FB0
/* 807A3F80  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807A3F84  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A3F88  C0 41 00 08 */	lfs f2, 8(r1)
/* 807A3F8C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807A3F90  EC 42 00 28 */	fsubs f2, f2, f0
/* 807A3F94  4B AC 36 E0 */	b cM_atan2s__Fff
/* 807A3F98  7C 7D 07 34 */	extsh r29, r3
/* 807A3F9C  2C 1D 20 00 */	cmpwi r29, 0x2000
/* 807A3FA0  41 81 00 0C */	bgt lbl_807A3FAC
/* 807A3FA4  2C 1D E0 00 */	cmpwi r29, -8192
/* 807A3FA8  40 80 00 08 */	bge lbl_807A3FB0
lbl_807A3FAC:
/* 807A3FAC  3B A0 00 00 */	li r29, 0
lbl_807A3FB0:
/* 807A3FB0  38 7B 06 A4 */	addi r3, r27, 0x6a4
/* 807A3FB4  7F 84 E3 78 */	mr r4, r28
/* 807A3FB8  38 A0 00 04 */	li r5, 4
/* 807A3FBC  38 C0 03 00 */	li r6, 0x300
/* 807A3FC0  4B AC C6 48 */	b cLib_addCalcAngleS2__FPssss
/* 807A3FC4  38 7B 06 A2 */	addi r3, r27, 0x6a2
/* 807A3FC8  7F A4 EB 78 */	mr r4, r29
/* 807A3FCC  38 A0 00 04 */	li r5, 4
/* 807A3FD0  38 C0 03 00 */	li r6, 0x300
/* 807A3FD4  4B AC C6 34 */	b cLib_addCalcAngleS2__FPssss
lbl_807A3FD8:
/* 807A3FD8  38 61 00 14 */	addi r3, r1, 0x14
/* 807A3FDC  38 80 FF FF */	li r4, -1
/* 807A3FE0  4B 8D 36 10 */	b __dt__11dBgS_GndChkFv
/* 807A3FE4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807A3FE8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807A3FEC  39 61 00 80 */	addi r11, r1, 0x80
/* 807A3FF0  4B BB E2 30 */	b _restgpr_27
/* 807A3FF4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807A3FF8  7C 08 03 A6 */	mtlr r0
/* 807A3FFC  38 21 00 90 */	addi r1, r1, 0x90
/* 807A4000  4E 80 00 20 */	blr 
