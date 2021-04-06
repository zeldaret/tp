lbl_807C9C8C:
/* 807C9C8C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807C9C90  7C 08 02 A6 */	mflr r0
/* 807C9C94  90 01 00 64 */	stw r0, 0x64(r1)
/* 807C9C98  39 61 00 60 */	addi r11, r1, 0x60
/* 807C9C9C  4B B9 85 39 */	bl _savegpr_27
/* 807C9CA0  7C 7B 1B 78 */	mr r27, r3
/* 807C9CA4  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807C9CA8  3B A4 EC A8 */	addi r29, r4, lit_3907@l /* 0x807CECA8@l */
/* 807C9CAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C9CB0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C9CB4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807C9CB8  4B 85 0A 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C9CBC  7C 7C 1B 78 */	mr r28, r3
/* 807C9CC0  38 7B 04 A8 */	addi r3, r27, 0x4a8
/* 807C9CC4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807C9CC8  4B AA 6F 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807C9CCC  7C 7F 1B 78 */	mr r31, r3
/* 807C9CD0  80 1B 13 20 */	lwz r0, 0x1320(r27)
/* 807C9CD4  2C 00 00 0C */	cmpwi r0, 0xc
/* 807C9CD8  41 82 04 C0 */	beq lbl_807CA198
/* 807C9CDC  40 80 00 1C */	bge lbl_807C9CF8
/* 807C9CE0  2C 00 00 00 */	cmpwi r0, 0
/* 807C9CE4  41 82 00 20 */	beq lbl_807C9D04
/* 807C9CE8  41 80 06 64 */	blt lbl_807CA34C
/* 807C9CEC  2C 00 00 0A */	cmpwi r0, 0xa
/* 807C9CF0  40 80 01 14 */	bge lbl_807C9E04
/* 807C9CF4  48 00 06 58 */	b lbl_807CA34C
lbl_807C9CF8:
/* 807C9CF8  2C 00 00 0E */	cmpwi r0, 0xe
/* 807C9CFC  40 80 06 50 */	bge lbl_807CA34C
/* 807C9D00  48 00 05 9C */	b lbl_807CA29C
lbl_807C9D04:
/* 807C9D04  38 00 00 00 */	li r0, 0
/* 807C9D08  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 807C9D0C  B3 FB 13 30 */	sth r31, 0x1330(r27)
/* 807C9D10  A8 1B 13 30 */	lha r0, 0x1330(r27)
/* 807C9D14  B0 1B 13 32 */	sth r0, 0x1332(r27)
/* 807C9D18  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807C9D1C  4B A9 DC 39 */	bl cM_rndF__Ff
/* 807C9D20  C0 1D 01 AC */	lfs f0, 0x1ac(r29)
/* 807C9D24  EC 40 00 72 */	fmuls f2, f0, f1
/* 807C9D28  A8 1B 13 32 */	lha r0, 0x1332(r27)
/* 807C9D2C  C8 3D 00 D8 */	lfd f1, 0xd8(r29)
/* 807C9D30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C9D34  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C9D38  3C 00 43 30 */	lis r0, 0x4330
/* 807C9D3C  90 01 00 30 */	stw r0, 0x30(r1)
/* 807C9D40  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807C9D44  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C9D48  EC 00 10 2A */	fadds f0, f0, f2
/* 807C9D4C  FC 00 00 1E */	fctiwz f0, f0
/* 807C9D50  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807C9D54  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 807C9D58  B0 1B 13 34 */	sth r0, 0x1334(r27)
/* 807C9D5C  4B A9 DB 11 */	bl cM_rnd__Fv
/* 807C9D60  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 807C9D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9D68  40 80 00 10 */	bge lbl_807C9D78
/* 807C9D6C  38 00 FC 00 */	li r0, -1024
/* 807C9D70  B0 1B 13 36 */	sth r0, 0x1336(r27)
/* 807C9D74  48 00 00 0C */	b lbl_807C9D80
lbl_807C9D78:
/* 807C9D78  38 00 04 00 */	li r0, 0x400
/* 807C9D7C  B0 1B 13 36 */	sth r0, 0x1336(r27)
lbl_807C9D80:
/* 807C9D80  A8 7B 13 30 */	lha r3, 0x1330(r27)
/* 807C9D84  A8 1B 13 36 */	lha r0, 0x1336(r27)
/* 807C9D88  7C 03 02 14 */	add r0, r3, r0
/* 807C9D8C  B0 1B 13 30 */	sth r0, 0x1330(r27)
/* 807C9D90  38 00 00 0A */	li r0, 0xa
/* 807C9D94  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807C9D98  38 00 00 1E */	li r0, 0x1e
/* 807C9D9C  90 1B 13 44 */	stw r0, 0x1344(r27)
/* 807C9DA0  7F 63 DB 78 */	mr r3, r27
/* 807C9DA4  38 80 00 1E */	li r4, 0x1e
/* 807C9DA8  38 A0 00 02 */	li r5, 2
/* 807C9DAC  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 807C9DB0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 807C9DB4  4B FF 9A 65 */	bl setBck__8daE_VA_cFiUcff
/* 807C9DB8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C9DBC  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 807C9DC0  38 00 00 00 */	li r0, 0
/* 807C9DC4  90 1B 13 24 */	stw r0, 0x1324(r27)
/* 807C9DC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C9DCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C9DD0  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C9DD4  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C9DD8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807C9DDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807C9DE0  38 7B 12 F8 */	addi r3, r27, 0x12f8
/* 807C9DE4  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 807C9DE8  A8 BB 13 30 */	lha r5, 0x1330(r27)
/* 807C9DEC  38 C1 00 24 */	addi r6, r1, 0x24
/* 807C9DF0  4B AA 6F D1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807C9DF4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807C9DF8  38 9B 12 F8 */	addi r4, r27, 0x12f8
/* 807C9DFC  4B AA 6E 09 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807C9E00  B0 7B 04 DE */	sth r3, 0x4de(r27)
lbl_807C9E04:
/* 807C9E04  38 00 00 01 */	li r0, 1
/* 807C9E08  98 1B 13 88 */	stb r0, 0x1388(r27)
/* 807C9E0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070331@ha */
/* 807C9E10  38 03 03 31 */	addi r0, r3, 0x0331 /* 0x00070331@l */
/* 807C9E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C9E18  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807C9E1C  38 81 00 14 */	addi r4, r1, 0x14
/* 807C9E20  38 A0 FF FF */	li r5, -1
/* 807C9E24  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807C9E28  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807C9E2C  7D 89 03 A6 */	mtctr r12
/* 807C9E30  4E 80 04 21 */	bctrl 
/* 807C9E34  80 1B 13 44 */	lwz r0, 0x1344(r27)
/* 807C9E38  2C 00 00 00 */	cmpwi r0, 0
/* 807C9E3C  40 82 00 34 */	bne lbl_807C9E70
/* 807C9E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C9E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C9E48  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807C9E4C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807C9E50  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807C9E54  40 82 00 1C */	bne lbl_807C9E70
/* 807C9E58  80 1B 1C C8 */	lwz r0, 0x1cc8(r27)
/* 807C9E5C  60 00 00 01 */	ori r0, r0, 1
/* 807C9E60  90 1B 1C C8 */	stw r0, 0x1cc8(r27)
/* 807C9E64  80 1B 1E 04 */	lwz r0, 0x1e04(r27)
/* 807C9E68  60 00 00 01 */	ori r0, r0, 1
/* 807C9E6C  90 1B 1E 04 */	stw r0, 0x1e04(r27)
lbl_807C9E70:
/* 807C9E70  80 1B 13 24 */	lwz r0, 0x1324(r27)
/* 807C9E74  2C 00 00 01 */	cmpwi r0, 1
/* 807C9E78  41 82 00 3C */	beq lbl_807C9EB4
/* 807C9E7C  40 80 00 74 */	bge lbl_807C9EF0
/* 807C9E80  2C 00 00 00 */	cmpwi r0, 0
/* 807C9E84  40 80 00 0C */	bge lbl_807C9E90
/* 807C9E88  48 00 00 68 */	b lbl_807C9EF0
/* 807C9E8C  48 00 00 64 */	b lbl_807C9EF0
lbl_807C9E90:
/* 807C9E90  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 807C9E94  C0 3D 01 B0 */	lfs f1, 0x1b0(r29)
/* 807C9E98  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807C9E9C  4B AA 68 A5 */	bl cLib_chaseF__FPfff
/* 807C9EA0  2C 03 00 00 */	cmpwi r3, 0
/* 807C9EA4  41 82 00 4C */	beq lbl_807C9EF0
/* 807C9EA8  38 00 00 01 */	li r0, 1
/* 807C9EAC  90 1B 13 24 */	stw r0, 0x1324(r27)
/* 807C9EB0  48 00 00 40 */	b lbl_807C9EF0
lbl_807C9EB4:
/* 807C9EB4  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 807C9EB8  C0 3D 01 B4 */	lfs f1, 0x1b4(r29)
/* 807C9EBC  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807C9EC0  4B AA 68 81 */	bl cLib_chaseF__FPfff
/* 807C9EC4  2C 03 00 00 */	cmpwi r3, 0
/* 807C9EC8  41 82 00 0C */	beq lbl_807C9ED4
/* 807C9ECC  38 00 00 00 */	li r0, 0
/* 807C9ED0  90 1B 13 24 */	stw r0, 0x1324(r27)
lbl_807C9ED4:
/* 807C9ED4  80 1B 15 24 */	lwz r0, 0x1524(r27)
/* 807C9ED8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807C9EDC  41 82 00 14 */	beq lbl_807C9EF0
/* 807C9EE0  38 00 00 02 */	li r0, 2
/* 807C9EE4  90 1B 13 24 */	stw r0, 0x1324(r27)
/* 807C9EE8  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 807C9EEC  D0 1B 05 30 */	stfs f0, 0x530(r27)
lbl_807C9EF0:
/* 807C9EF0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807C9EF4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807C9EF8  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807C9EFC  4B AA 68 45 */	bl cLib_chaseF__FPfff
/* 807C9F00  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C9F04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C9F08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C9F0C  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C9F10  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C9F14  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807C9F18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807C9F1C  38 7B 12 F8 */	addi r3, r27, 0x12f8
/* 807C9F20  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 807C9F24  A8 BB 13 30 */	lha r5, 0x1330(r27)
/* 807C9F28  38 C1 00 24 */	addi r6, r1, 0x24
/* 807C9F2C  4B AA 6E 95 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807C9F30  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807C9F34  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807C9F38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807C9F3C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C9F40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807C9F44  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807C9F48  38 61 00 18 */	addi r3, r1, 0x18
/* 807C9F4C  4B B7 D1 ED */	bl PSVECSquareMag
/* 807C9F50  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C9F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9F58  40 81 00 58 */	ble lbl_807C9FB0
/* 807C9F5C  FC 00 08 34 */	frsqrte f0, f1
/* 807C9F60  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807C9F64  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9F68  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807C9F6C  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9F70  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9F74  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9F78  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9F7C  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9F80  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9F84  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9F88  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9F8C  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9F90  FC 44 00 32 */	fmul f2, f4, f0
/* 807C9F94  FC 00 00 32 */	fmul f0, f0, f0
/* 807C9F98  FC 01 00 32 */	fmul f0, f1, f0
/* 807C9F9C  FC 03 00 28 */	fsub f0, f3, f0
/* 807C9FA0  FC 02 00 32 */	fmul f0, f2, f0
/* 807C9FA4  FC 21 00 32 */	fmul f1, f1, f0
/* 807C9FA8  FC 20 08 18 */	frsp f1, f1
/* 807C9FAC  48 00 00 88 */	b lbl_807CA034
lbl_807C9FB0:
/* 807C9FB0  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807C9FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C9FB8  40 80 00 10 */	bge lbl_807C9FC8
/* 807C9FBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807C9FC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807C9FC4  48 00 00 70 */	b lbl_807CA034
lbl_807C9FC8:
/* 807C9FC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 807C9FCC  80 81 00 08 */	lwz r4, 8(r1)
/* 807C9FD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C9FD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C9FD8  7C 03 00 00 */	cmpw r3, r0
/* 807C9FDC  41 82 00 14 */	beq lbl_807C9FF0
/* 807C9FE0  40 80 00 40 */	bge lbl_807CA020
/* 807C9FE4  2C 03 00 00 */	cmpwi r3, 0
/* 807C9FE8  41 82 00 20 */	beq lbl_807CA008
/* 807C9FEC  48 00 00 34 */	b lbl_807CA020
lbl_807C9FF0:
/* 807C9FF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C9FF4  41 82 00 0C */	beq lbl_807CA000
/* 807C9FF8  38 00 00 01 */	li r0, 1
/* 807C9FFC  48 00 00 28 */	b lbl_807CA024
lbl_807CA000:
/* 807CA000  38 00 00 02 */	li r0, 2
/* 807CA004  48 00 00 20 */	b lbl_807CA024
lbl_807CA008:
/* 807CA008  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807CA00C  41 82 00 0C */	beq lbl_807CA018
/* 807CA010  38 00 00 05 */	li r0, 5
/* 807CA014  48 00 00 10 */	b lbl_807CA024
lbl_807CA018:
/* 807CA018  38 00 00 03 */	li r0, 3
/* 807CA01C  48 00 00 08 */	b lbl_807CA024
lbl_807CA020:
/* 807CA020  38 00 00 04 */	li r0, 4
lbl_807CA024:
/* 807CA024  2C 00 00 01 */	cmpwi r0, 1
/* 807CA028  40 82 00 0C */	bne lbl_807CA034
/* 807CA02C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807CA030  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807CA034:
/* 807CA034  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 807CA038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CA03C  40 81 00 3C */	ble lbl_807CA078
/* 807CA040  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807CA044  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 807CA048  4B A9 D6 2D */	bl cM_atan2s__Fff
/* 807CA04C  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 807CA050  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 807CA054  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807CA058  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807CA05C  7C 03 04 2E */	lfsx f0, r3, r0
/* 807CA060  EC 01 00 32 */	fmuls f0, f1, f0
/* 807CA064  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 807CA068  7C 63 02 14 */	add r3, r3, r0
/* 807CA06C  C0 03 00 04 */	lfs f0, 4(r3)
/* 807CA070  EC 01 00 32 */	fmuls f0, f1, f0
/* 807CA074  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_807CA078:
/* 807CA078  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 807CA07C  7F 84 E3 78 */	mr r4, r28
/* 807CA080  38 A0 00 08 */	li r5, 8
/* 807CA084  38 C0 08 00 */	li r6, 0x800
/* 807CA088  38 E0 00 80 */	li r7, 0x80
/* 807CA08C  4B AA 64 B5 */	bl cLib_addCalcAngleS__FPsssss
/* 807CA090  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807CA094  38 9B 12 F8 */	addi r4, r27, 0x12f8
/* 807CA098  4B AA 6B 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807CA09C  7C 64 07 34 */	extsh r4, r3
/* 807CA0A0  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807CA0A4  38 A0 00 08 */	li r5, 8
/* 807CA0A8  38 C0 08 00 */	li r6, 0x800
/* 807CA0AC  38 E0 00 80 */	li r7, 0x80
/* 807CA0B0  4B AA 64 91 */	bl cLib_addCalcAngleS__FPsssss
/* 807CA0B4  A8 1B 13 30 */	lha r0, 0x1330(r27)
/* 807CA0B8  7C 1F 00 50 */	subf r0, r31, r0
/* 807CA0BC  7C 03 07 34 */	extsh r3, r0
/* 807CA0C0  4B B9 B0 11 */	bl abs
/* 807CA0C4  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807CA0C8  40 80 02 84 */	bge lbl_807CA34C
/* 807CA0CC  AB BB 13 30 */	lha r29, 0x1330(r27)
/* 807CA0D0  A8 1B 13 36 */	lha r0, 0x1336(r27)
/* 807CA0D4  7C 1D 02 14 */	add r0, r29, r0
/* 807CA0D8  B0 1B 13 30 */	sth r0, 0x1330(r27)
/* 807CA0DC  80 1B 13 20 */	lwz r0, 0x1320(r27)
/* 807CA0E0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807CA0E4  40 82 00 78 */	bne lbl_807CA15C
/* 807CA0E8  A8 7B 13 36 */	lha r3, 0x1336(r27)
/* 807CA0EC  4B B9 AF E5 */	bl abs
/* 807CA0F0  7C 7C 1B 78 */	mr r28, r3
/* 807CA0F4  A8 7B 13 30 */	lha r3, 0x1330(r27)
/* 807CA0F8  A8 1B 13 32 */	lha r0, 0x1332(r27)
/* 807CA0FC  7C 03 00 50 */	subf r0, r3, r0
/* 807CA100  7C 03 07 34 */	extsh r3, r0
/* 807CA104  4B B9 AF CD */	bl abs
/* 807CA108  7C 03 E0 00 */	cmpw r3, r28
/* 807CA10C  41 81 02 40 */	bgt lbl_807CA34C
/* 807CA110  A8 7B 13 36 */	lha r3, 0x1336(r27)
/* 807CA114  4B B9 AF BD */	bl abs
/* 807CA118  7C 7C 1B 78 */	mr r28, r3
/* 807CA11C  A8 1B 13 32 */	lha r0, 0x1332(r27)
/* 807CA120  7C 1D 00 50 */	subf r0, r29, r0
/* 807CA124  7C 03 07 34 */	extsh r3, r0
/* 807CA128  4B B9 AF A9 */	bl abs
/* 807CA12C  7C 03 E0 00 */	cmpw r3, r28
/* 807CA130  41 81 02 1C */	bgt lbl_807CA34C
/* 807CA134  A8 7B 13 32 */	lha r3, 0x1332(r27)
/* 807CA138  A8 1B 13 34 */	lha r0, 0x1334(r27)
/* 807CA13C  7C 03 00 00 */	cmpw r3, r0
/* 807CA140  40 82 00 10 */	bne lbl_807CA150
/* 807CA144  38 00 00 0C */	li r0, 0xc
/* 807CA148  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807CA14C  48 00 02 00 */	b lbl_807CA34C
lbl_807CA150:
/* 807CA150  38 00 00 0B */	li r0, 0xb
/* 807CA154  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807CA158  48 00 01 F4 */	b lbl_807CA34C
lbl_807CA15C:
/* 807CA15C  A8 7B 13 36 */	lha r3, 0x1336(r27)
/* 807CA160  4B B9 AF 71 */	bl abs
/* 807CA164  7C 7C 1B 78 */	mr r28, r3
/* 807CA168  A8 7B 13 30 */	lha r3, 0x1330(r27)
/* 807CA16C  A8 1B 13 34 */	lha r0, 0x1334(r27)
/* 807CA170  7C 03 00 50 */	subf r0, r3, r0
/* 807CA174  7C 03 07 34 */	extsh r3, r0
/* 807CA178  4B B9 AF 59 */	bl abs
/* 807CA17C  7C 03 E0 00 */	cmpw r3, r28
/* 807CA180  41 81 01 CC */	bgt lbl_807CA34C
/* 807CA184  38 00 00 0C */	li r0, 0xc
/* 807CA188  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807CA18C  38 00 00 04 */	li r0, 4
/* 807CA190  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 807CA194  48 00 01 B8 */	b lbl_807CA34C
lbl_807CA198:
/* 807CA198  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070331@ha */
/* 807CA19C  38 03 03 31 */	addi r0, r3, 0x0331 /* 0x00070331@l */
/* 807CA1A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CA1A4  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807CA1A8  38 81 00 10 */	addi r4, r1, 0x10
/* 807CA1AC  38 A0 FF FF */	li r5, -1
/* 807CA1B0  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807CA1B4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807CA1B8  7D 89 03 A6 */	mtctr r12
/* 807CA1BC  4E 80 04 21 */	bctrl 
/* 807CA1C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CA1C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CA1C8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807CA1CC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807CA1D0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807CA1D4  40 82 00 1C */	bne lbl_807CA1F0
/* 807CA1D8  80 1B 1C C8 */	lwz r0, 0x1cc8(r27)
/* 807CA1DC  60 00 00 01 */	ori r0, r0, 1
/* 807CA1E0  90 1B 1C C8 */	stw r0, 0x1cc8(r27)
/* 807CA1E4  80 1B 1E 04 */	lwz r0, 0x1e04(r27)
/* 807CA1E8  60 00 00 01 */	ori r0, r0, 1
/* 807CA1EC  90 1B 1E 04 */	stw r0, 0x1e04(r27)
lbl_807CA1F0:
/* 807CA1F0  38 00 00 01 */	li r0, 1
/* 807CA1F4  98 1B 13 88 */	stb r0, 0x1388(r27)
/* 807CA1F8  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 807CA1FC  7F 84 E3 78 */	mr r4, r28
/* 807CA200  38 A0 00 08 */	li r5, 8
/* 807CA204  38 C0 08 00 */	li r6, 0x800
/* 807CA208  38 E0 00 80 */	li r7, 0x80
/* 807CA20C  4B AA 63 35 */	bl cLib_addCalcAngleS__FPsssss
/* 807CA210  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807CA214  7F 84 E3 78 */	mr r4, r28
/* 807CA218  38 A0 00 08 */	li r5, 8
/* 807CA21C  38 C0 08 00 */	li r6, 0x800
/* 807CA220  38 E0 00 80 */	li r7, 0x80
/* 807CA224  4B AA 63 1D */	bl cLib_addCalcAngleS__FPsssss
/* 807CA228  7F 63 DB 78 */	mr r3, r27
/* 807CA22C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807CA230  4B 85 05 B1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807CA234  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CA238  3B 83 F4 C4 */	addi r28, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CA23C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 807CA240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CA244  40 81 00 18 */	ble lbl_807CA25C
/* 807CA248  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807CA24C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807CA250  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807CA254  4B AA 64 ED */	bl cLib_chaseF__FPfff
/* 807CA258  48 00 00 F4 */	b lbl_807CA34C
lbl_807CA25C:
/* 807CA25C  7F 63 DB 78 */	mr r3, r27
/* 807CA260  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 807CA264  4B 85 05 7D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807CA268  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 807CA26C  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 807CA270  EC 02 00 28 */	fsubs f0, f2, f0
/* 807CA274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CA278  40 80 00 18 */	bge lbl_807CA290
/* 807CA27C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807CA280  C0 3D 01 A8 */	lfs f1, 0x1a8(r29)
/* 807CA284  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807CA288  4B AA 64 B9 */	bl cLib_chaseF__FPfff
/* 807CA28C  48 00 00 C0 */	b lbl_807CA34C
lbl_807CA290:
/* 807CA290  38 00 00 0D */	li r0, 0xd
/* 807CA294  90 1B 13 20 */	stw r0, 0x1320(r27)
/* 807CA298  48 00 00 B4 */	b lbl_807CA34C
lbl_807CA29C:
/* 807CA29C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070331@ha */
/* 807CA2A0  38 03 03 31 */	addi r0, r3, 0x0331 /* 0x00070331@l */
/* 807CA2A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CA2A8  38 7B 12 54 */	addi r3, r27, 0x1254
/* 807CA2AC  38 81 00 0C */	addi r4, r1, 0xc
/* 807CA2B0  38 A0 FF FF */	li r5, -1
/* 807CA2B4  81 9B 12 54 */	lwz r12, 0x1254(r27)
/* 807CA2B8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807CA2BC  7D 89 03 A6 */	mtctr r12
/* 807CA2C0  4E 80 04 21 */	bctrl 
/* 807CA2C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CA2C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CA2CC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807CA2D0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807CA2D4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807CA2D8  40 82 00 1C */	bne lbl_807CA2F4
/* 807CA2DC  80 1B 1C C8 */	lwz r0, 0x1cc8(r27)
/* 807CA2E0  60 00 00 01 */	ori r0, r0, 1
/* 807CA2E4  90 1B 1C C8 */	stw r0, 0x1cc8(r27)
/* 807CA2E8  80 1B 1E 04 */	lwz r0, 0x1e04(r27)
/* 807CA2EC  60 00 00 01 */	ori r0, r0, 1
/* 807CA2F0  90 1B 1E 04 */	stw r0, 0x1e04(r27)
lbl_807CA2F4:
/* 807CA2F4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 807CA2F8  7F 84 E3 78 */	mr r4, r28
/* 807CA2FC  38 A0 00 08 */	li r5, 8
/* 807CA300  38 C0 08 00 */	li r6, 0x800
/* 807CA304  38 E0 00 80 */	li r7, 0x80
/* 807CA308  4B AA 62 39 */	bl cLib_addCalcAngleS__FPsssss
/* 807CA30C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807CA310  7F 84 E3 78 */	mr r4, r28
/* 807CA314  38 A0 00 08 */	li r5, 8
/* 807CA318  38 C0 08 00 */	li r6, 0x800
/* 807CA31C  38 E0 00 80 */	li r7, 0x80
/* 807CA320  4B AA 62 21 */	bl cLib_addCalcAngleS__FPsssss
/* 807CA324  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807CA328  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807CA32C  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 807CA330  4B AA 64 11 */	bl cLib_chaseF__FPfff
/* 807CA334  2C 03 00 00 */	cmpwi r3, 0
/* 807CA338  41 82 00 14 */	beq lbl_807CA34C
/* 807CA33C  7F 63 DB 78 */	mr r3, r27
/* 807CA340  38 80 00 10 */	li r4, 0x10
/* 807CA344  38 A0 00 00 */	li r5, 0
/* 807CA348  4B FF 95 D1 */	bl setActionMode__8daE_VA_cFii
lbl_807CA34C:
/* 807CA34C  39 61 00 60 */	addi r11, r1, 0x60
/* 807CA350  4B B9 7E D1 */	bl _restgpr_27
/* 807CA354  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807CA358  7C 08 03 A6 */	mtlr r0
/* 807CA35C  38 21 00 60 */	addi r1, r1, 0x60
/* 807CA360  4E 80 00 20 */	blr 
