lbl_80737C48:
/* 80737C48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80737C4C  7C 08 02 A6 */	mflr r0
/* 80737C50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80737C54  39 61 00 70 */	addi r11, r1, 0x70
/* 80737C58  4B C2 A5 80 */	b _savegpr_28
/* 80737C5C  7C 7C 1B 78 */	mr r28, r3
/* 80737C60  3C 60 80 74 */	lis r3, lit_3768@ha
/* 80737C64  3B C3 9D 60 */	addi r30, r3, lit_3768@l
/* 80737C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80737C6C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80737C70  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80737C74  80 1C 0B 70 */	lwz r0, 0xb70(r28)
/* 80737C78  2C 00 00 00 */	cmpwi r0, 0
/* 80737C7C  40 82 00 50 */	bne lbl_80737CCC
/* 80737C80  38 00 00 01 */	li r0, 1
/* 80737C84  98 1C 0B 74 */	stb r0, 0xb74(r28)
/* 80737C88  3C 60 80 74 */	lis r3, struct_8073A14C+0x26@ha
/* 80737C8C  38 83 A1 72 */	addi r4, r3, struct_8073A14C+0x26@l
/* 80737C90  88 64 00 00 */	lbz r3, 0(r4)
/* 80737C94  38 03 00 01 */	addi r0, r3, 1
/* 80737C98  98 04 00 00 */	stb r0, 0(r4)
/* 80737C9C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80737CA0  4B B2 FC EC */	b cM_rndFX__Ff
/* 80737CA4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80737CA8  EC 00 08 2A */	fadds f0, f0, f1
/* 80737CAC  FC 00 00 1E */	fctiwz f0, f0
/* 80737CB0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80737CB4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80737CB8  98 1C 0B AE */	stb r0, 0xbae(r28)
/* 80737CBC  80 7C 0B 70 */	lwz r3, 0xb70(r28)
/* 80737CC0  38 03 00 01 */	addi r0, r3, 1
/* 80737CC4  90 1C 0B 70 */	stw r0, 0xb70(r28)
/* 80737CC8  48 00 04 6C */	b lbl_80738134
lbl_80737CCC:
/* 80737CCC  2C 00 FF FF */	cmpwi r0, -1
/* 80737CD0  40 82 00 24 */	bne lbl_80737CF4
/* 80737CD4  38 00 00 00 */	li r0, 0
/* 80737CD8  98 1C 0B 74 */	stb r0, 0xb74(r28)
/* 80737CDC  3C 60 80 74 */	lis r3, struct_8073A14C+0x26@ha
/* 80737CE0  38 83 A1 72 */	addi r4, r3, struct_8073A14C+0x26@l
/* 80737CE4  88 64 00 00 */	lbz r3, 0(r4)
/* 80737CE8  38 03 FF FF */	addi r0, r3, -1
/* 80737CEC  98 04 00 00 */	stb r0, 0(r4)
/* 80737CF0  48 00 04 44 */	b lbl_80738134
lbl_80737CF4:
/* 80737CF4  2C 00 00 01 */	cmpwi r0, 1
/* 80737CF8  40 82 01 4C */	bne lbl_80737E44
/* 80737CFC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80737D00  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80737D04  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80737D08  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80737D0C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80737D10  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80737D14  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 80737D18  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80737D1C  41 82 00 14 */	beq lbl_80737D30
/* 80737D20  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80737D24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80737D28  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80737D2C  48 00 00 10 */	b lbl_80737D3C
lbl_80737D30:
/* 80737D30  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80737D34  EC 01 00 2A */	fadds f0, f1, f0
/* 80737D38  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80737D3C:
/* 80737D3C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80737D40  38 81 00 48 */	addi r4, r1, 0x48
/* 80737D44  4B B3 8E C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80737D48  B0 7C 0B 96 */	sth r3, 0xb96(r28)
/* 80737D4C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80737D50  A8 1C 0B 96 */	lha r0, 0xb96(r28)
/* 80737D54  7C 03 00 50 */	subf r0, r3, r0
/* 80737D58  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
/* 80737D5C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80737D60  A8 9C 0B 96 */	lha r4, 0xb96(r28)
/* 80737D64  38 A0 04 00 */	li r5, 0x400
/* 80737D68  4B B3 8E 28 */	b cLib_chaseAngleS__FPsss
/* 80737D6C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80737D70  38 81 00 48 */	addi r4, r1, 0x48
/* 80737D74  4B B3 8F 00 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80737D78  7C 03 00 D0 */	neg r0, r3
/* 80737D7C  7C 04 07 34 */	extsh r4, r0
/* 80737D80  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80737D84  38 A0 04 00 */	li r5, 0x400
/* 80737D88  4B B3 8E 08 */	b cLib_chaseAngleS__FPsss
/* 80737D8C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737D90  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737D94  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80737D98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737D9C  7C 63 02 14 */	add r3, r3, r0
/* 80737DA0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80737DA4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80737DA8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80737DAC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737DB0  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80737DB4  4B B3 89 8C */	b cLib_chaseF__FPfff
/* 80737DB8  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80737DBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737DC0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737DC4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737DC8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80737DCC  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80737DD0  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80737DD4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737DD8  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80737DDC  4B B3 89 64 */	b cLib_chaseF__FPfff
/* 80737DE0  7F 83 E3 78 */	mr r3, r28
/* 80737DE4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80737DE8  4B 8E 29 28 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80737DEC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80737DF0  7C 00 18 50 */	subf r0, r0, r3
/* 80737DF4  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
/* 80737DF8  38 7C 0B 80 */	addi r3, r28, 0xb80
/* 80737DFC  38 80 04 00 */	li r4, 0x400
/* 80737E00  38 A0 00 20 */	li r5, 0x20
/* 80737E04  38 C0 04 00 */	li r6, 0x400
/* 80737E08  38 E0 00 80 */	li r7, 0x80
/* 80737E0C  4B B3 87 34 */	b cLib_addCalcAngleS__FPsssss
/* 80737E10  A8 7C 0B 7C */	lha r3, 0xb7c(r28)
/* 80737E14  A8 1C 0B 80 */	lha r0, 0xb80(r28)
/* 80737E18  7C 03 02 14 */	add r0, r3, r0
/* 80737E1C  B0 1C 0B 7C */	sth r0, 0xb7c(r28)
/* 80737E20  88 1C 0B AE */	lbz r0, 0xbae(r28)
/* 80737E24  28 00 00 00 */	cmplwi r0, 0
/* 80737E28  40 82 03 0C */	bne lbl_80738134
/* 80737E2C  38 00 00 78 */	li r0, 0x78
/* 80737E30  98 1C 0B AE */	stb r0, 0xbae(r28)
/* 80737E34  80 7C 0B 70 */	lwz r3, 0xb70(r28)
/* 80737E38  38 03 00 01 */	addi r0, r3, 1
/* 80737E3C  90 1C 0B 70 */	stw r0, 0xb70(r28)
/* 80737E40  48 00 02 F4 */	b lbl_80738134
lbl_80737E44:
/* 80737E44  2C 00 00 02 */	cmpwi r0, 2
/* 80737E48  40 82 02 EC */	bne lbl_80738134
/* 80737E4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80737E50  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80737E54  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80737E58  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80737E5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80737E60  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80737E64  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 80737E68  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80737E6C  41 82 00 14 */	beq lbl_80737E80
/* 80737E70  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80737E74  EC 01 00 28 */	fsubs f0, f1, f0
/* 80737E78  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80737E7C  48 00 00 10 */	b lbl_80737E8C
lbl_80737E80:
/* 80737E80  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80737E84  EC 01 00 2A */	fadds f0, f1, f0
/* 80737E88  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_80737E8C:
/* 80737E8C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80737E90  38 81 00 3C */	addi r4, r1, 0x3c
/* 80737E94  4B B3 8D 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80737E98  B0 7C 0B 96 */	sth r3, 0xb96(r28)
/* 80737E9C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80737EA0  A8 1C 0B 96 */	lha r0, 0xb96(r28)
/* 80737EA4  7C 03 00 50 */	subf r0, r3, r0
/* 80737EA8  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
/* 80737EAC  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80737EB0  A8 9C 0B 96 */	lha r4, 0xb96(r28)
/* 80737EB4  38 A0 04 00 */	li r5, 0x400
/* 80737EB8  4B B3 8C D8 */	b cLib_chaseAngleS__FPsss
/* 80737EBC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80737EC0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80737EC4  4B B3 8D B0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80737EC8  7C 03 00 D0 */	neg r0, r3
/* 80737ECC  7C 04 07 34 */	extsh r4, r0
/* 80737ED0  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80737ED4  38 A0 04 00 */	li r5, 0x400
/* 80737ED8  4B B3 8C B8 */	b cLib_chaseAngleS__FPsss
/* 80737EDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737EE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737EE4  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80737EE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737EEC  7C 63 02 14 */	add r3, r3, r0
/* 80737EF0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80737EF4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80737EF8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80737EFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737F00  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80737F04  4B B3 88 3C */	b cLib_chaseF__FPfff
/* 80737F08  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80737F0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737F10  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737F14  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737F18  7C 23 04 2E */	lfsx f1, r3, r0
/* 80737F1C  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80737F20  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80737F24  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737F28  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80737F2C  4B B3 88 14 */	b cLib_chaseF__FPfff
/* 80737F30  7F 83 E3 78 */	mr r3, r28
/* 80737F34  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80737F38  4B 8E 27 D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80737F3C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80737F40  7C 00 18 50 */	subf r0, r0, r3
/* 80737F44  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
/* 80737F48  38 7C 0B 80 */	addi r3, r28, 0xb80
/* 80737F4C  38 80 24 00 */	li r4, 0x2400
/* 80737F50  38 A0 00 20 */	li r5, 0x20
/* 80737F54  38 C0 04 00 */	li r6, 0x400
/* 80737F58  38 E0 00 80 */	li r7, 0x80
/* 80737F5C  4B B3 85 E4 */	b cLib_addCalcAngleS__FPsssss
/* 80737F60  A8 7C 0B 7C */	lha r3, 0xb7c(r28)
/* 80737F64  A8 1C 0B 80 */	lha r0, 0xb80(r28)
/* 80737F68  7C 03 02 14 */	add r0, r3, r0
/* 80737F6C  B0 1C 0B 7C */	sth r0, 0xb7c(r28)
/* 80737F70  C0 5C 04 B0 */	lfs f2, 0x4b0(r28)
/* 80737F74  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80737F78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80737F7C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80737F80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80737F84  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80737F88  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80737F8C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80737F90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80737F94  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80737F98  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80737F9C  38 61 00 0C */	addi r3, r1, 0xc
/* 80737FA0  38 81 00 18 */	addi r4, r1, 0x18
/* 80737FA4  4B C0 F3 F8 */	b PSVECSquareDistance
/* 80737FA8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80737FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80737FB0  40 81 00 58 */	ble lbl_80738008
/* 80737FB4  FC 00 08 34 */	frsqrte f0, f1
/* 80737FB8  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80737FBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80737FC0  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80737FC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80737FC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80737FCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80737FD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80737FD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80737FD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80737FDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80737FE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80737FE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80737FE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80737FEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80737FF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80737FF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80737FF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80737FFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80738000  FC 20 08 18 */	frsp f1, f1
/* 80738004  48 00 00 88 */	b lbl_8073808C
lbl_80738008:
/* 80738008  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 8073800C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80738010  40 80 00 10 */	bge lbl_80738020
/* 80738014  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80738018  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8073801C  48 00 00 70 */	b lbl_8073808C
lbl_80738020:
/* 80738020  D0 21 00 08 */	stfs f1, 8(r1)
/* 80738024  80 81 00 08 */	lwz r4, 8(r1)
/* 80738028  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073802C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80738030  7C 03 00 00 */	cmpw r3, r0
/* 80738034  41 82 00 14 */	beq lbl_80738048
/* 80738038  40 80 00 40 */	bge lbl_80738078
/* 8073803C  2C 03 00 00 */	cmpwi r3, 0
/* 80738040  41 82 00 20 */	beq lbl_80738060
/* 80738044  48 00 00 34 */	b lbl_80738078
lbl_80738048:
/* 80738048  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073804C  41 82 00 0C */	beq lbl_80738058
/* 80738050  38 00 00 01 */	li r0, 1
/* 80738054  48 00 00 28 */	b lbl_8073807C
lbl_80738058:
/* 80738058  38 00 00 02 */	li r0, 2
/* 8073805C  48 00 00 20 */	b lbl_8073807C
lbl_80738060:
/* 80738060  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80738064  41 82 00 0C */	beq lbl_80738070
/* 80738068  38 00 00 05 */	li r0, 5
/* 8073806C  48 00 00 10 */	b lbl_8073807C
lbl_80738070:
/* 80738070  38 00 00 03 */	li r0, 3
/* 80738074  48 00 00 08 */	b lbl_8073807C
lbl_80738078:
/* 80738078  38 00 00 04 */	li r0, 4
lbl_8073807C:
/* 8073807C  2C 00 00 01 */	cmpwi r0, 1
/* 80738080  40 82 00 0C */	bne lbl_8073808C
/* 80738084  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80738088  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8073808C:
/* 8073808C  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80738090  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l
/* 80738094  C0 03 00 08 */	lfs f0, 8(r3)
/* 80738098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073809C  4C 41 13 82 */	cror 2, 1, 2
/* 807380A0  40 82 00 48 */	bne lbl_807380E8
/* 807380A4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807380A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807380AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807380B0  4C 41 13 82 */	cror 2, 1, 2
/* 807380B4  40 82 00 34 */	bne lbl_807380E8
/* 807380B8  3C 60 80 74 */	lis r3, lit_4476@ha
/* 807380BC  38 83 9F 78 */	addi r4, r3, lit_4476@l
/* 807380C0  80 64 00 00 */	lwz r3, 0(r4)
/* 807380C4  80 04 00 04 */	lwz r0, 4(r4)
/* 807380C8  90 61 00 30 */	stw r3, 0x30(r1)
/* 807380CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807380D0  80 04 00 08 */	lwz r0, 8(r4)
/* 807380D4  90 01 00 38 */	stw r0, 0x38(r1)
/* 807380D8  7F 83 E3 78 */	mr r3, r28
/* 807380DC  38 81 00 30 */	addi r4, r1, 0x30
/* 807380E0  4B FF E1 8D */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 807380E4  48 00 00 50 */	b lbl_80738134
lbl_807380E8:
/* 807380E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807380EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807380F0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807380F4  28 00 00 00 */	cmplwi r0, 0
/* 807380F8  40 82 00 10 */	bne lbl_80738108
/* 807380FC  88 1C 0B AE */	lbz r0, 0xbae(r28)
/* 80738100  28 00 00 00 */	cmplwi r0, 0
/* 80738104  40 82 00 30 */	bne lbl_80738134
lbl_80738108:
/* 80738108  3C 60 80 74 */	lis r3, lit_4481@ha
/* 8073810C  38 83 9F 84 */	addi r4, r3, lit_4481@l
/* 80738110  80 64 00 00 */	lwz r3, 0(r4)
/* 80738114  80 04 00 04 */	lwz r0, 4(r4)
/* 80738118  90 61 00 24 */	stw r3, 0x24(r1)
/* 8073811C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80738120  80 04 00 08 */	lwz r0, 8(r4)
/* 80738124  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80738128  7F 83 E3 78 */	mr r3, r28
/* 8073812C  38 81 00 24 */	addi r4, r1, 0x24
/* 80738130  4B FF E1 3D */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
lbl_80738134:
/* 80738134  39 61 00 70 */	addi r11, r1, 0x70
/* 80738138  4B C2 A0 EC */	b _restgpr_28
/* 8073813C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80738140  7C 08 03 A6 */	mtlr r0
/* 80738144  38 21 00 70 */	addi r1, r1, 0x70
/* 80738148  4E 80 00 20 */	blr 
