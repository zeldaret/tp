lbl_80683DDC:
/* 80683DDC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80683DE0  7C 08 02 A6 */	mflr r0
/* 80683DE4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80683DE8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80683DEC  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80683DF0  7C 7F 1B 78 */	mr r31, r3
/* 80683DF4  3C 60 80 68 */	lis r3, lit_3770@ha /* 0x80685434@ha */
/* 80683DF8  3B C3 54 34 */	addi r30, r3, lit_3770@l /* 0x80685434@l */
/* 80683DFC  88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 80683E00  7C 00 07 74 */	extsb r0, r0
/* 80683E04  2C 00 00 01 */	cmpwi r0, 1
/* 80683E08  41 81 01 98 */	bgt lbl_80683FA0
/* 80683E0C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80683E10  38 9F 00 28 */	addi r4, r31, 0x28
/* 80683E14  7C 65 1B 78 */	mr r5, r3
/* 80683E18  4B CC 32 79 */	bl PSVECAdd
/* 80683E1C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80683E20  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80683E24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80683E28  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80683E2C  A8 7F 00 34 */	lha r3, 0x34(r31)
/* 80683E30  38 03 20 00 */	addi r0, r3, 0x2000
/* 80683E34  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 80683E38  A8 7F 00 38 */	lha r3, 0x38(r31)
/* 80683E3C  38 03 13 00 */	addi r0, r3, 0x1300
/* 80683E40  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 80683E44  38 61 00 14 */	addi r3, r1, 0x14
/* 80683E48  4B 9F 37 35 */	bl __ct__11dBgS_GndChkFv
/* 80683E4C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80683E50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80683E54  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80683E58  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80683E5C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80683E60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80683E64  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80683E68  EC 01 00 2A */	fadds f0, f1, f0
/* 80683E6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80683E70  38 61 00 14 */	addi r3, r1, 0x14
/* 80683E74  38 81 00 08 */	addi r4, r1, 8
/* 80683E78  4B BE 3E B1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80683E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80683E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80683E84  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80683E88  38 81 00 14 */	addi r4, r1, 0x14
/* 80683E8C  4B 9F 06 15 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80683E90  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80683E94  EC 60 08 2A */	fadds f3, f0, f1
/* 80683E98  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80683E9C  EC 03 08 28 */	fsubs f0, f3, f1
/* 80683EA0  FC 00 02 10 */	fabs f0, f0
/* 80683EA4  FC 40 00 18 */	frsp f2, f0
/* 80683EA8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80683EAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80683EB0  40 81 00 08 */	ble lbl_80683EB8
/* 80683EB4  FC 60 08 90 */	fmr f3, f1
lbl_80683EB8:
/* 80683EB8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80683EBC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80683EC0  4C 40 13 82 */	cror 2, 0, 2
/* 80683EC4  40 82 00 CC */	bne lbl_80683F90
/* 80683EC8  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 80683ECC  88 1F 00 4D */	lbz r0, 0x4d(r31)
/* 80683ED0  7C 00 07 75 */	extsb. r0, r0
/* 80683ED4  40 82 00 60 */	bne lbl_80683F34
/* 80683ED8  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80683EDC  4B BE 3A 79 */	bl cM_rndF__Ff
/* 80683EE0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80683EE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80683EE8  FC 20 00 50 */	fneg f1, f0
/* 80683EEC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80683EF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80683EF4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80683EF8  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80683EFC  4B BE 3A 59 */	bl cM_rndF__Ff
/* 80683F00  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80683F04  EC 20 08 2A */	fadds f1, f0, f1
/* 80683F08  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80683F0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80683F10  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80683F14  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80683F18  4B BE 3A 3D */	bl cM_rndF__Ff
/* 80683F1C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80683F20  EC 20 08 2A */	fadds f1, f0, f1
/* 80683F24  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80683F28  EC 00 00 72 */	fmuls f0, f0, f1
/* 80683F2C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80683F30  48 00 00 54 */	b lbl_80683F84
lbl_80683F34:
/* 80683F34  7F E3 FB 78 */	mr r3, r31
/* 80683F38  4B FF EB 39 */	bl bee_ground_ang_set__FP5bee_s
/* 80683F3C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80683F40  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80683F44  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80685684@ha */
/* 80683F48  38 63 56 84 */	addi r3, r3, l_HIO@l /* 0x80685684@l */
/* 80683F4C  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80683F50  28 00 00 00 */	cmplwi r0, 0
/* 80683F54  40 82 00 28 */	bne lbl_80683F7C
/* 80683F58  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80683F5C  4B BE 39 F9 */	bl cM_rndF__Ff
/* 80683F60  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80683F64  EC 00 08 2A */	fadds f0, f0, f1
/* 80683F68  FC 00 00 1E */	fctiwz f0, f0
/* 80683F6C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80683F70  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80683F74  98 1F 00 4F */	stb r0, 0x4f(r31)
/* 80683F78  48 00 00 0C */	b lbl_80683F84
lbl_80683F7C:
/* 80683F7C  38 00 00 01 */	li r0, 1
/* 80683F80  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80683F84:
/* 80683F84  88 7F 00 4D */	lbz r3, 0x4d(r31)
/* 80683F88  38 03 00 01 */	addi r0, r3, 1
/* 80683F8C  98 1F 00 4D */	stb r0, 0x4d(r31)
lbl_80683F90:
/* 80683F90  38 61 00 14 */	addi r3, r1, 0x14
/* 80683F94  38 80 FF FF */	li r4, -1
/* 80683F98  4B 9F 36 59 */	bl __dt__11dBgS_GndChkFv
/* 80683F9C  48 00 00 38 */	b lbl_80683FD4
lbl_80683FA0:
/* 80683FA0  88 1F 00 4F */	lbz r0, 0x4f(r31)
/* 80683FA4  28 00 00 00 */	cmplwi r0, 0
/* 80683FA8  40 82 00 2C */	bne lbl_80683FD4
/* 80683FAC  38 7F 00 40 */	addi r3, r31, 0x40
/* 80683FB0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80683FB4  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80683FB8  4B BE BA C9 */	bl cLib_addCalc0__FPfff
/* 80683FBC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80683FC0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80683FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80683FC8  40 80 00 0C */	bge lbl_80683FD4
/* 80683FCC  38 00 00 00 */	li r0, 0
/* 80683FD0  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80683FD4:
/* 80683FD4  7F E3 FB 78 */	mr r3, r31
/* 80683FD8  4B FF E9 D1 */	bl bee_mtxset__FP5bee_s
/* 80683FDC  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80683FE0  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80683FE4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80683FE8  7C 08 03 A6 */	mtlr r0
/* 80683FEC  38 21 00 80 */	addi r1, r1, 0x80
/* 80683FF0  4E 80 00 20 */	blr 
