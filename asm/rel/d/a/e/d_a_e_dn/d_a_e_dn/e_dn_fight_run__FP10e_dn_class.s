lbl_804E7D18:
/* 804E7D18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E7D1C  7C 08 02 A6 */	mflr r0
/* 804E7D20  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E7D24  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804E7D28  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804E7D2C  39 61 00 40 */	addi r11, r1, 0x40
/* 804E7D30  4B E7 A4 A8 */	b _savegpr_28
/* 804E7D34  7C 7E 1B 78 */	mr r30, r3
/* 804E7D38  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E7D3C  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E7D40  C3 FF 00 04 */	lfs f31, 4(r31)
/* 804E7D44  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 804E7D48  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804E7D4C  FC 00 00 1E */	fctiwz f0, f0
/* 804E7D50  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E7D54  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 804E7D58  3B 80 00 01 */	li r28, 1
/* 804E7D5C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E7D60  C0 03 06 D8 */	lfs f0, 0x6d8(r3)
/* 804E7D64  EC 21 00 2A */	fadds f1, f1, f0
/* 804E7D68  38 80 7F FF */	li r4, 0x7fff
/* 804E7D6C  4B FF E4 F9 */	bl pl_check__FP10e_dn_classfs
/* 804E7D70  2C 03 00 00 */	cmpwi r3, 0
/* 804E7D74  40 82 00 24 */	bne lbl_804E7D98
/* 804E7D78  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E7D7C  2C 00 00 00 */	cmpwi r0, 0
/* 804E7D80  40 82 00 18 */	bne lbl_804E7D98
/* 804E7D84  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 804E7D88  2C 00 00 00 */	cmpwi r0, 0
/* 804E7D8C  40 82 00 14 */	bne lbl_804E7DA0
/* 804E7D90  3B 80 00 00 */	li r28, 0
/* 804E7D94  48 00 00 0C */	b lbl_804E7DA0
lbl_804E7D98:
/* 804E7D98  38 00 00 28 */	li r0, 0x28
/* 804E7D9C  B0 1E 06 EA */	sth r0, 0x6ea(r30)
lbl_804E7DA0:
/* 804E7DA0  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 804E7DA4  2C 00 00 00 */	cmpwi r0, 0
/* 804E7DA8  41 82 00 C4 */	beq lbl_804E7E6C
/* 804E7DAC  40 80 00 1C */	bge lbl_804E7DC8
/* 804E7DB0  2C 00 FF F7 */	cmpwi r0, -9
/* 804E7DB4  41 82 00 90 */	beq lbl_804E7E44
/* 804E7DB8  40 80 03 70 */	bge lbl_804E8128
/* 804E7DBC  2C 00 FF F6 */	cmpwi r0, -10
/* 804E7DC0  40 80 00 18 */	bge lbl_804E7DD8
/* 804E7DC4  48 00 03 64 */	b lbl_804E8128
lbl_804E7DC8:
/* 804E7DC8  2C 00 00 02 */	cmpwi r0, 2
/* 804E7DCC  41 82 01 F0 */	beq lbl_804E7FBC
/* 804E7DD0  40 80 03 58 */	bge lbl_804E8128
/* 804E7DD4  48 00 00 CC */	b lbl_804E7EA0
lbl_804E7DD8:
/* 804E7DD8  7F C3 F3 78 */	mr r3, r30
/* 804E7DDC  38 80 00 1F */	li r4, 0x1f
/* 804E7DE0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E7DE4  38 A0 00 02 */	li r5, 2
/* 804E7DE8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7DEC  4B FF D4 E5 */	bl anm_init__FP10e_dn_classifUcf
/* 804E7DF0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E7DF4  4B D7 FB 60 */	b cM_rndF__Ff
/* 804E7DF8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 804E7DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 804E7E00  FC 00 00 1E */	fctiwz f0, f0
/* 804E7E04  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E7E08  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E7E0C  B0 1E 06 E2 */	sth r0, 0x6e2(r30)
/* 804E7E10  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003F@ha */
/* 804E7E14  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0007003F@l */
/* 804E7E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7E1C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7E20  38 81 00 14 */	addi r4, r1, 0x14
/* 804E7E24  38 A0 FF FF */	li r5, -1
/* 804E7E28  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E7E2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7E30  7D 89 03 A6 */	mtctr r12
/* 804E7E34  4E 80 04 21 */	bctrl 
/* 804E7E38  38 00 FF F7 */	li r0, -9
/* 804E7E3C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7E40  48 00 02 E8 */	b lbl_804E8128
lbl_804E7E44:
/* 804E7E44  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E7E48  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E7E4C  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 804E7E50  4B D8 7C 30 */	b cLib_addCalc0__FPfff
/* 804E7E54  A8 1E 06 E2 */	lha r0, 0x6e2(r30)
/* 804E7E58  2C 00 00 00 */	cmpwi r0, 0
/* 804E7E5C  40 82 02 CC */	bne lbl_804E8128
/* 804E7E60  38 00 00 00 */	li r0, 0
/* 804E7E64  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7E68  48 00 02 C0 */	b lbl_804E8128
lbl_804E7E6C:
/* 804E7E6C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804E7E70  4B D7 FB 1C */	b cM_rndFX__Ff
/* 804E7E74  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E7E78  EC 40 08 2A */	fadds f2, f0, f1
/* 804E7E7C  7F C3 F3 78 */	mr r3, r30
/* 804E7E80  38 80 00 1E */	li r4, 0x1e
/* 804E7E84  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E7E88  38 A0 00 02 */	li r5, 2
/* 804E7E8C  4B FF D4 45 */	bl anm_init__FP10e_dn_classifUcf
/* 804E7E90  38 00 00 01 */	li r0, 1
/* 804E7E94  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7E98  38 00 00 00 */	li r0, 0
/* 804E7E9C  B0 1E 08 2C */	sth r0, 0x82c(r30)
lbl_804E7EA0:
/* 804E7EA0  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E7EA4  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E7EA8  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 804E7EAC  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 804E7EB0  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 804E7EB4  40 82 00 20 */	bne lbl_804E7ED4
/* 804E7EB8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804E7EBC  41 82 00 10 */	beq lbl_804E7ECC
/* 804E7EC0  38 00 00 01 */	li r0, 1
/* 804E7EC4  98 1E 10 E4 */	stb r0, 0x10e4(r30)
/* 804E7EC8  48 00 00 0C */	b lbl_804E7ED4
lbl_804E7ECC:
/* 804E7ECC  38 00 00 02 */	li r0, 2
/* 804E7ED0  98 1E 10 E4 */	stb r0, 0x10e4(r30)
lbl_804E7ED4:
/* 804E7ED4  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 804E7ED8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804E7EDC  41 82 00 2C */	beq lbl_804E7F08
/* 804E7EE0  7F C3 F3 78 */	mr r3, r30
/* 804E7EE4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804E7EE8  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 804E7EEC  4B B3 4F E4 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 804E7EF0  2C 03 00 00 */	cmpwi r3, 0
/* 804E7EF4  40 82 00 14 */	bne lbl_804E7F08
/* 804E7EF8  A8 7E 08 2C */	lha r3, 0x82c(r30)
/* 804E7EFC  38 03 00 01 */	addi r0, r3, 1
/* 804E7F00  B0 1E 08 2C */	sth r0, 0x82c(r30)
/* 804E7F04  48 00 00 5C */	b lbl_804E7F60
lbl_804E7F08:
/* 804E7F08  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 804E7F0C  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E7F10  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E7F14  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 804E7F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7F1C  40 80 00 44 */	bge lbl_804E7F60
/* 804E7F20  7F C3 F3 78 */	mr r3, r30
/* 804E7F24  38 80 00 20 */	li r4, 0x20
/* 804E7F28  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E7F2C  38 A0 00 02 */	li r5, 2
/* 804E7F30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7F34  4B FF D3 9D */	bl anm_init__FP10e_dn_classifUcf
/* 804E7F38  38 00 00 02 */	li r0, 2
/* 804E7F3C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7F40  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804E7F44  4B D7 FA 10 */	b cM_rndF__Ff
/* 804E7F48  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E7F4C  EC 00 08 2A */	fadds f0, f0, f1
/* 804E7F50  FC 00 00 1E */	fctiwz f0, f0
/* 804E7F54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E7F58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E7F5C  B0 1E 06 E4 */	sth r0, 0x6e4(r30)
lbl_804E7F60:
/* 804E7F60  A8 1E 08 2C */	lha r0, 0x82c(r30)
/* 804E7F64  2C 00 00 14 */	cmpwi r0, 0x14
/* 804E7F68  40 81 00 18 */	ble lbl_804E7F80
/* 804E7F6C  38 00 00 08 */	li r0, 8
/* 804E7F70  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E7F74  38 00 00 00 */	li r0, 0
/* 804E7F78  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7F7C  48 00 06 84 */	b lbl_804E8600
lbl_804E7F80:
/* 804E7F80  7F C3 F3 78 */	mr r3, r30
/* 804E7F84  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E7F88  38 80 00 00 */	li r4, 0
/* 804E7F8C  4B FF E3 B5 */	bl move_gake_check__FP10e_dn_classfSc
/* 804E7F90  2C 03 00 00 */	cmpwi r3, 0
/* 804E7F94  41 82 01 94 */	beq lbl_804E8128
/* 804E7F98  38 00 00 19 */	li r0, 0x19
/* 804E7F9C  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E7FA0  38 00 00 00 */	li r0, 0
/* 804E7FA4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7FA8  38 00 00 64 */	li r0, 0x64
/* 804E7FAC  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E7FB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E7FB4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E7FB8  48 00 06 48 */	b lbl_804E8600
lbl_804E7FBC:
/* 804E7FBC  38 00 00 01 */	li r0, 1
/* 804E7FC0  98 1E 08 2E */	stb r0, 0x82e(r30)
/* 804E7FC4  2C 1D 00 07 */	cmpwi r29, 7
/* 804E7FC8  41 82 00 0C */	beq lbl_804E7FD4
/* 804E7FCC  2C 1D 00 15 */	cmpwi r29, 0x15
/* 804E7FD0  40 82 00 CC */	bne lbl_804E809C
lbl_804E7FD4:
/* 804E7FD4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804E7FD8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804E7FDC  C0 7E 06 D0 */	lfs f3, 0x6d0(r30)
/* 804E7FE0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 804E7FE4  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E7FE8  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E7FEC  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 804E7FF0  EC 00 10 2A */	fadds f0, f0, f2
/* 804E7FF4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804E7FF8  40 81 00 18 */	ble lbl_804E8010
/* 804E7FFC  38 00 00 00 */	li r0, 0
/* 804E8000  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E8004  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E8008  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804E800C  48 00 01 1C */	b lbl_804E8128
lbl_804E8010:
/* 804E8010  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804E8014  EC 01 10 2A */	fadds f0, f1, f2
/* 804E8018  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804E801C  40 81 00 10 */	ble lbl_804E802C
/* 804E8020  A8 1E 06 D4 */	lha r0, 0x6d4(r30)
/* 804E8024  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804E8028  48 00 00 38 */	b lbl_804E8060
lbl_804E802C:
/* 804E802C  EC 02 08 28 */	fsubs f0, f2, f1
/* 804E8030  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804E8034  40 80 00 14 */	bge lbl_804E8048
/* 804E8038  A8 1E 06 D4 */	lha r0, 0x6d4(r30)
/* 804E803C  7C 00 00 D0 */	neg r0, r0
/* 804E8040  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804E8044  48 00 00 1C */	b lbl_804E8060
lbl_804E8048:
/* 804E8048  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 804E804C  4B D7 F9 40 */	b cM_rndFX__Ff
/* 804E8050  FC 00 08 1E */	fctiwz f0, f1
/* 804E8054  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E8058  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E805C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_804E8060:
/* 804E8060  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E8064  4B D7 F8 F0 */	b cM_rndF__Ff
/* 804E8068  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804E806C  EC 00 08 2A */	fadds f0, f0, f1
/* 804E8070  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E8074  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070045@ha */
/* 804E8078  38 03 00 45 */	addi r0, r3, 0x0045 /* 0x00070045@l */
/* 804E807C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E8080  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8084  38 81 00 10 */	addi r4, r1, 0x10
/* 804E8088  38 A0 FF FF */	li r5, -1
/* 804E808C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E8090  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E8094  7D 89 03 A6 */	mtctr r12
/* 804E8098  4E 80 04 21 */	bctrl 
lbl_804E809C:
/* 804E809C  2C 1D 00 0D */	cmpwi r29, 0xd
/* 804E80A0  41 82 00 0C */	beq lbl_804E80AC
/* 804E80A4  2C 1D 00 1B */	cmpwi r29, 0x1b
/* 804E80A8  40 82 00 78 */	bne lbl_804E8120
lbl_804E80AC:
/* 804E80AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E80B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E80B4  38 00 00 03 */	li r0, 3
/* 804E80B8  98 1E 10 E4 */	stb r0, 0x10e4(r30)
/* 804E80BC  2C 1D 00 0D */	cmpwi r29, 0xd
/* 804E80C0  40 82 00 34 */	bne lbl_804E80F4
/* 804E80C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003B@ha */
/* 804E80C8  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0007003B@l */
/* 804E80CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E80D0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E80D4  38 81 00 0C */	addi r4, r1, 0xc
/* 804E80D8  38 A0 00 00 */	li r5, 0
/* 804E80DC  38 C0 FF FF */	li r6, -1
/* 804E80E0  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E80E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E80E8  7D 89 03 A6 */	mtctr r12
/* 804E80EC  4E 80 04 21 */	bctrl 
/* 804E80F0  48 00 00 30 */	b lbl_804E8120
lbl_804E80F4:
/* 804E80F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003C@ha */
/* 804E80F8  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0007003C@l */
/* 804E80FC  90 01 00 08 */	stw r0, 8(r1)
/* 804E8100  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8104  38 81 00 08 */	addi r4, r1, 8
/* 804E8108  38 A0 00 00 */	li r5, 0
/* 804E810C  38 C0 FF FF */	li r6, -1
/* 804E8110  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E8114  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E8118  7D 89 03 A6 */	mtctr r12
/* 804E811C  4E 80 04 21 */	bctrl 
lbl_804E8120:
/* 804E8120  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804E8124  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_804E8128:
/* 804E8128  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 804E812C  2C 00 00 00 */	cmpwi r0, 0
/* 804E8130  41 80 00 C0 */	blt lbl_804E81F0
/* 804E8134  88 1E 08 2E */	lbz r0, 0x82e(r30)
/* 804E8138  7C 00 07 75 */	extsb. r0, r0
/* 804E813C  40 82 00 5C */	bne lbl_804E8198
/* 804E8140  AB BE 04 DE */	lha r29, 0x4de(r30)
/* 804E8144  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804E8148  A8 9E 06 D4 */	lha r4, 0x6d4(r30)
/* 804E814C  38 A0 00 02 */	li r5, 2
/* 804E8150  38 C0 08 00 */	li r6, 0x800
/* 804E8154  4B D8 84 B4 */	b cLib_addCalcAngleS2__FPssss
/* 804E8158  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 804E815C  7F A3 E8 50 */	subf r29, r3, r29
/* 804E8160  A8 1E 06 D4 */	lha r0, 0x6d4(r30)
/* 804E8164  7C 00 18 50 */	subf r0, r0, r3
/* 804E8168  7C 00 07 34 */	extsh r0, r0
/* 804E816C  2C 00 08 00 */	cmpwi r0, 0x800
/* 804E8170  41 81 00 0C */	bgt lbl_804E817C
/* 804E8174  2C 00 F8 00 */	cmpwi r0, -2048
/* 804E8178  40 80 00 08 */	bge lbl_804E8180
lbl_804E817C:
/* 804E817C  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_804E8180:
/* 804E8180  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E8184  FC 20 F8 90 */	fmr f1, f31
/* 804E8188  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E818C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 804E8190  4B D8 78 AC */	b cLib_addCalc2__FPffff
/* 804E8194  48 00 00 24 */	b lbl_804E81B8
lbl_804E8198:
/* 804E8198  AB BE 04 E6 */	lha r29, 0x4e6(r30)
/* 804E819C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804E81A0  A8 9E 06 D4 */	lha r4, 0x6d4(r30)
/* 804E81A4  38 A0 00 04 */	li r5, 4
/* 804E81A8  38 C0 08 00 */	li r6, 0x800
/* 804E81AC  4B D8 84 5C */	b cLib_addCalcAngleS2__FPssss
/* 804E81B0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E81B4  7F A0 E8 50 */	subf r29, r0, r29
lbl_804E81B8:
/* 804E81B8  57 A0 08 3C */	slwi r0, r29, 1
/* 804E81BC  7C 1D 07 34 */	extsh r29, r0
/* 804E81C0  2C 1D 10 00 */	cmpwi r29, 0x1000
/* 804E81C4  40 81 00 0C */	ble lbl_804E81D0
/* 804E81C8  3B A0 10 00 */	li r29, 0x1000
/* 804E81CC  48 00 00 10 */	b lbl_804E81DC
lbl_804E81D0:
/* 804E81D0  2C 1D F0 00 */	cmpwi r29, -4096
/* 804E81D4  40 80 00 08 */	bge lbl_804E81DC
/* 804E81D8  3B A0 F0 00 */	li r29, -4096
lbl_804E81DC:
/* 804E81DC  38 7E 08 26 */	addi r3, r30, 0x826
/* 804E81E0  7F A4 EB 78 */	mr r4, r29
/* 804E81E4  38 A0 00 02 */	li r5, 2
/* 804E81E8  38 C0 04 00 */	li r6, 0x400
/* 804E81EC  4B D8 84 1C */	b cLib_addCalcAngleS2__FPssss
lbl_804E81F0:
/* 804E81F0  3B A0 00 00 */	li r29, 0
/* 804E81F4  80 1E 07 44 */	lwz r0, 0x744(r30)
/* 804E81F8  3C 60 80 4F */	lis r3, learn_check@ha
/* 804E81FC  90 03 EF 90 */	stw r0, learn_check@l(r3)
/* 804E8200  3C 60 80 4E */	lis r3, shot_s_sub__FPvPv@ha
/* 804E8204  38 63 7B 74 */	addi r3, r3, shot_s_sub__FPvPv@l
/* 804E8208  7F C4 F3 78 */	mr r4, r30
/* 804E820C  4B B3 91 2C */	b fpcEx_Search__FPFPvPv_PvPv
/* 804E8210  28 03 00 00 */	cmplwi r3, 0
/* 804E8214  40 82 00 34 */	bne lbl_804E8248
/* 804E8218  80 1E 07 44 */	lwz r0, 0x744(r30)
/* 804E821C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 804E8220  41 82 00 2C */	beq lbl_804E824C
/* 804E8224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E8228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E822C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E8230  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804E8234  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 804E8238  7D 89 03 A6 */	mtctr r12
/* 804E823C  4E 80 04 21 */	bctrl 
/* 804E8240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E8244  41 82 00 08 */	beq lbl_804E824C
lbl_804E8248:
/* 804E8248  3B A0 00 01 */	li r29, 1
lbl_804E824C:
/* 804E824C  7F 80 07 75 */	extsb. r0, r28
/* 804E8250  40 82 00 6C */	bne lbl_804E82BC
/* 804E8254  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 804E8258  2C 00 00 00 */	cmpwi r0, 0
/* 804E825C  40 82 02 24 */	bne lbl_804E8480
/* 804E8260  38 00 00 00 */	li r0, 0
/* 804E8264  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8268  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E826C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E8270  4B D7 F6 E4 */	b cM_rndF__Ff
/* 804E8274  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804E8278  EC 00 08 2A */	fadds f0, f0, f1
/* 804E827C  FC 00 00 1E */	fctiwz f0, f0
/* 804E8280  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E8284  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E8288  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E828C  7F C3 F3 78 */	mr r3, r30
/* 804E8290  38 80 00 21 */	li r4, 0x21
/* 804E8294  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E8298  38 A0 00 02 */	li r5, 2
/* 804E829C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E82A0  4B FF D0 31 */	bl anm_init__FP10e_dn_classifUcf
/* 804E82A4  88 1E 08 2E */	lbz r0, 0x82e(r30)
/* 804E82A8  7C 00 07 75 */	extsb. r0, r0
/* 804E82AC  41 82 03 54 */	beq lbl_804E8600
/* 804E82B0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E82B4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804E82B8  48 00 03 48 */	b lbl_804E8600
lbl_804E82BC:
/* 804E82BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E82C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E82C4  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 804E82C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804E82CC  40 82 00 30 */	bne lbl_804E82FC
/* 804E82D0  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 804E82D4  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804E82D8  40 80 00 0C */	bge lbl_804E82E4
/* 804E82DC  2C 00 F0 00 */	cmpwi r0, -4096
/* 804E82E0  41 81 00 0C */	bgt lbl_804E82EC
lbl_804E82E4:
/* 804E82E4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804E82E8  41 82 01 98 */	beq lbl_804E8480
lbl_804E82EC:
/* 804E82EC  7F C3 F3 78 */	mr r3, r30
/* 804E82F0  4B FF DF 31 */	bl player_way_check__FP10e_dn_class
/* 804E82F4  2C 03 00 00 */	cmpwi r3, 0
/* 804E82F8  41 82 01 88 */	beq lbl_804E8480
lbl_804E82FC:
/* 804E82FC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804E8300  40 82 00 5C */	bne lbl_804E835C
/* 804E8304  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 804E8308  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E830C  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E8310  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 804E8314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8318  40 80 00 A4 */	bge lbl_804E83BC
/* 804E831C  4B B9 F0 B8 */	b cc_pl_cut_bit_get__Fv
/* 804E8320  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804E8324  80 9E 07 44 */	lwz r4, 0x744(r30)
/* 804E8328  7C 80 00 39 */	and. r0, r4, r0
/* 804E832C  41 82 00 90 */	beq lbl_804E83BC
/* 804E8330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E8334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E8338  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E833C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804E8340  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804E8344  40 82 00 18 */	bne lbl_804E835C
/* 804E8348  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804E834C  28 00 00 0A */	cmplwi r0, 0xa
/* 804E8350  41 82 00 0C */	beq lbl_804E835C
/* 804E8354  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 804E8358  41 82 00 64 */	beq lbl_804E83BC
lbl_804E835C:
/* 804E835C  C0 3E 07 4C */	lfs f1, 0x74c(r30)
/* 804E8360  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E8364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8368  40 80 00 54 */	bge lbl_804E83BC
/* 804E836C  38 00 00 07 */	li r0, 7
/* 804E8370  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8374  4B B9 F0 60 */	b cc_pl_cut_bit_get__Fv
/* 804E8378  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804E837C  28 00 01 00 */	cmplwi r0, 0x100
/* 804E8380  40 82 00 10 */	bne lbl_804E8390
/* 804E8384  38 00 00 00 */	li r0, 0
/* 804E8388  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E838C  48 00 00 0C */	b lbl_804E8398
lbl_804E8390:
/* 804E8390  38 00 00 05 */	li r0, 5
/* 804E8394  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E8398:
/* 804E8398  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E839C  D0 1E 07 08 */	stfs f0, 0x708(r30)
/* 804E83A0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E83A4  B0 1E 07 0C */	sth r0, 0x70c(r30)
/* 804E83A8  38 00 00 00 */	li r0, 0
/* 804E83AC  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E83B0  38 00 00 0F */	li r0, 0xf
/* 804E83B4  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E83B8  48 00 00 C8 */	b lbl_804E8480
lbl_804E83BC:
/* 804E83BC  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 804E83C0  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E83C4  3B 83 EF 3C */	addi r28, r3, l_HIO@l
/* 804E83C8  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 804E83CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E83D0  40 80 00 B0 */	bge lbl_804E8480
/* 804E83D4  A8 1E 06 E4 */	lha r0, 0x6e4(r30)
/* 804E83D8  2C 00 00 00 */	cmpwi r0, 0
/* 804E83DC  40 82 00 A4 */	bne lbl_804E8480
/* 804E83E0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804E83E4  4B D7 F5 70 */	b cM_rndF__Ff
/* 804E83E8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E83EC  EC 00 08 2A */	fadds f0, f0, f1
/* 804E83F0  FC 00 00 1E */	fctiwz f0, f0
/* 804E83F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E83F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E83FC  B0 1E 06 E4 */	sth r0, 0x6e4(r30)
/* 804E8400  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E8404  4B D7 F5 50 */	b cM_rndF__Ff
/* 804E8408  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804E840C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8410  40 80 00 70 */	bge lbl_804E8480
/* 804E8414  7F C3 F3 78 */	mr r3, r30
/* 804E8418  4B FF F7 1D */	bl way_check__FP10e_dn_class
/* 804E841C  2C 03 00 00 */	cmpwi r3, 0
/* 804E8420  40 82 00 50 */	bne lbl_804E8470
/* 804E8424  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E8428  4B D7 F5 2C */	b cM_rndF__Ff
/* 804E842C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 804E8430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8434  40 80 00 3C */	bge lbl_804E8470
/* 804E8438  C0 5E 06 D0 */	lfs f2, 0x6d0(r30)
/* 804E843C  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 804E8440  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804E8444  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E8448  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E844C  40 80 00 10 */	bge lbl_804E845C
/* 804E8450  38 00 00 04 */	li r0, 4
/* 804E8454  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8458  48 00 00 0C */	b lbl_804E8464
lbl_804E845C:
/* 804E845C  38 00 00 05 */	li r0, 5
/* 804E8460  B0 1E 06 CE */	sth r0, 0x6ce(r30)
lbl_804E8464:
/* 804E8464  38 00 00 00 */	li r0, 0
/* 804E8468  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E846C  48 00 00 14 */	b lbl_804E8480
lbl_804E8470:
/* 804E8470  38 00 00 06 */	li r0, 6
/* 804E8474  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8478  38 00 00 00 */	li r0, 0
/* 804E847C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E8480:
/* 804E8480  38 00 00 01 */	li r0, 1
/* 804E8484  98 1E 06 F4 */	stb r0, 0x6f4(r30)
/* 804E8488  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 804E848C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804E8490  40 82 00 24 */	bne lbl_804E84B4
/* 804E8494  7F C3 F3 78 */	mr r3, r30
/* 804E8498  4B FF DD 41 */	bl bomb_view_check__FP10e_dn_class
/* 804E849C  28 03 00 00 */	cmplwi r3, 0
/* 804E84A0  41 82 00 14 */	beq lbl_804E84B4
/* 804E84A4  38 00 00 0B */	li r0, 0xb
/* 804E84A8  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E84AC  38 00 00 00 */	li r0, 0
/* 804E84B0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E84B4:
/* 804E84B4  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 804E84B8  28 00 00 01 */	cmplwi r0, 1
/* 804E84BC  40 82 00 74 */	bne lbl_804E8530
/* 804E84C0  7F C3 F3 78 */	mr r3, r30
/* 804E84C4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 804E84C8  38 80 00 01 */	li r4, 1
/* 804E84CC  4B FF DE 75 */	bl move_gake_check__FP10e_dn_classfSc
/* 804E84D0  2C 03 00 00 */	cmpwi r3, 0
/* 804E84D4  41 82 00 5C */	beq lbl_804E8530
/* 804E84D8  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 804E84DC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804E84E0  40 82 00 50 */	bne lbl_804E8530
/* 804E84E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E84E8  4B D7 F4 6C */	b cM_rndF__Ff
/* 804E84EC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 804E84F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E84F4  40 80 00 3C */	bge lbl_804E8530
/* 804E84F8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E84FC  4B D7 F4 58 */	b cM_rndF__Ff
/* 804E8500  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804E8504  EC 00 08 2A */	fadds f0, f0, f1
/* 804E8508  FC 00 00 1E */	fctiwz f0, f0
/* 804E850C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E8510  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E8514  98 1E 07 00 */	stb r0, 0x700(r30)
/* 804E8518  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 804E851C  4B D7 F4 38 */	b cM_rndF__Ff
/* 804E8520  FC 00 08 1E */	fctiwz f0, f1
/* 804E8524  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804E8528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E852C  98 1E 07 01 */	stb r0, 0x701(r30)
lbl_804E8530:
/* 804E8530  7F C3 F3 78 */	mr r3, r30
/* 804E8534  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E8538  38 80 00 01 */	li r4, 1
/* 804E853C  4B FF DE 05 */	bl move_gake_check__FP10e_dn_classfSc
/* 804E8540  2C 03 00 00 */	cmpwi r3, 0
/* 804E8544  41 82 00 9C */	beq lbl_804E85E0
/* 804E8548  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 804E854C  28 00 00 01 */	cmplwi r0, 1
/* 804E8550  40 82 00 80 */	bne lbl_804E85D0
/* 804E8554  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E8558  4B D7 F3 FC */	b cM_rndF__Ff
/* 804E855C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 804E8560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8564  40 80 00 18 */	bge lbl_804E857C
/* 804E8568  38 00 00 06 */	li r0, 6
/* 804E856C  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8570  38 00 00 00 */	li r0, 0
/* 804E8574  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E8578  48 00 00 4C */	b lbl_804E85C4
lbl_804E857C:
/* 804E857C  38 00 00 19 */	li r0, 0x19
/* 804E8580  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8584  38 00 00 00 */	li r0, 0
/* 804E8588  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E858C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E8590  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 804E8594  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E8598  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 804E859C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E85A0  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 804E85A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E85A8  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 804E85AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E85B0  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 804E85B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E85B8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 804E85BC  38 00 00 64 */	li r0, 0x64
/* 804E85C0  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
lbl_804E85C4:
/* 804E85C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E85C8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E85CC  48 00 00 14 */	b lbl_804E85E0
lbl_804E85D0:
/* 804E85D0  38 00 00 17 */	li r0, 0x17
/* 804E85D4  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E85D8  38 00 00 00 */	li r0, 0
/* 804E85DC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E85E0:
/* 804E85E0  A8 1E 06 CE */	lha r0, 0x6ce(r30)
/* 804E85E4  2C 00 00 03 */	cmpwi r0, 3
/* 804E85E8  41 82 00 18 */	beq lbl_804E8600
/* 804E85EC  88 1E 08 2E */	lbz r0, 0x82e(r30)
/* 804E85F0  7C 00 07 75 */	extsb. r0, r0
/* 804E85F4  41 82 00 0C */	beq lbl_804E8600
/* 804E85F8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E85FC  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_804E8600:
/* 804E8600  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804E8604  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804E8608  39 61 00 40 */	addi r11, r1, 0x40
/* 804E860C  4B E7 9C 18 */	b _restgpr_28
/* 804E8610  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E8614  7C 08 03 A6 */	mtlr r0
/* 804E8618  38 21 00 50 */	addi r1, r1, 0x50
/* 804E861C  4E 80 00 20 */	blr 
