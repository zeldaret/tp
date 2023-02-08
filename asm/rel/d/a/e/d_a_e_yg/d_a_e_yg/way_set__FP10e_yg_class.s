lbl_807F8C60:
/* 807F8C60  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 807F8C64  7C 08 02 A6 */	mflr r0
/* 807F8C68  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807F8C6C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 807F8C70  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 807F8C74  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 807F8C78  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 807F8C7C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 807F8C80  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 807F8C84  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807F8C88  4B B6 95 49 */	bl _savegpr_26
/* 807F8C8C  7C 7C 1B 78 */	mr r28, r3
/* 807F8C90  3C 60 80 80 */	lis r3, lit_3801@ha /* 0x807FCCB4@ha */
/* 807F8C94  3B C3 CC B4 */	addi r30, r3, lit_3801@l /* 0x807FCCB4@l */
/* 807F8C98  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807F8C9C  4B A6 EC B9 */	bl cM_rndF__Ff
/* 807F8CA0  FC 00 08 1E */	fctiwz f0, f1
/* 807F8CA4  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 807F8CA8  83 61 00 A4 */	lwz r27, 0xa4(r1)
/* 807F8CAC  C3 BE 00 6C */	lfs f29, 0x6c(r30)
/* 807F8CB0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807F8CB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F8CB8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807F8CBC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807F8CC0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807F8CC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F8CC8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 807F8CCC  EC 01 00 2A */	fadds f0, f1, f0
/* 807F8CD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F8CD4  3B 40 00 00 */	li r26, 0
/* 807F8CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F8CDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F8CE0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807F8CE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F8CE8  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 807F8CEC  C3 DE 00 04 */	lfs f30, 4(r30)
/* 807F8CF0  C3 FE 00 74 */	lfs f31, 0x74(r30)
lbl_807F8CF4:
/* 807F8CF4  3B C0 00 00 */	li r30, 0
lbl_807F8CF8:
/* 807F8CF8  80 7F 00 00 */	lwz r3, 0(r31)
/* 807F8CFC  7F 64 DB 78 */	mr r4, r27
/* 807F8D00  4B 81 36 DD */	bl mDoMtx_YrotS__FPA4_fs
/* 807F8D04  D3 C1 00 08 */	stfs f30, 8(r1)
/* 807F8D08  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 807F8D0C  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 807F8D10  38 61 00 08 */	addi r3, r1, 8
/* 807F8D14  38 81 00 14 */	addi r4, r1, 0x14
/* 807F8D18  4B A7 81 D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F8D1C  38 61 00 14 */	addi r3, r1, 0x14
/* 807F8D20  38 81 00 20 */	addi r4, r1, 0x20
/* 807F8D24  7C 65 1B 78 */	mr r5, r3
/* 807F8D28  4B B4 E3 69 */	bl PSVECAdd
/* 807F8D2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F8D30  4B 87 EF 39 */	bl __ct__11dBgS_LinChkFv
/* 807F8D34  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F8D38  38 81 00 20 */	addi r4, r1, 0x20
/* 807F8D3C  38 A1 00 14 */	addi r5, r1, 0x14
/* 807F8D40  7F 86 E3 78 */	mr r6, r28
/* 807F8D44  4B 87 F0 21 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807F8D48  7F A3 EB 78 */	mr r3, r29
/* 807F8D4C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807F8D50  4B 87 B6 65 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807F8D54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F8D58  41 82 00 0C */	beq lbl_807F8D64
/* 807F8D5C  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 807F8D60  48 00 00 1C */	b lbl_807F8D7C
lbl_807F8D64:
/* 807F8D64  B3 7C 05 C8 */	sth r27, 0x5c8(r28)
/* 807F8D68  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F8D6C  38 80 FF FF */	li r4, -1
/* 807F8D70  4B 87 EF 6D */	bl __dt__11dBgS_LinChkFv
/* 807F8D74  38 60 00 01 */	li r3, 1
/* 807F8D78  48 00 00 30 */	b lbl_807F8DA8
lbl_807F8D7C:
/* 807F8D7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F8D80  38 80 FF FF */	li r4, -1
/* 807F8D84  4B 87 EF 59 */	bl __dt__11dBgS_LinChkFv
/* 807F8D88  3B DE 00 01 */	addi r30, r30, 1
/* 807F8D8C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 807F8D90  41 80 FF 68 */	blt lbl_807F8CF8
/* 807F8D94  EF BD F8 28 */	fsubs f29, f29, f31
/* 807F8D98  3B 5A 00 01 */	addi r26, r26, 1
/* 807F8D9C  2C 1A 00 05 */	cmpwi r26, 5
/* 807F8DA0  41 80 FF 54 */	blt lbl_807F8CF4
/* 807F8DA4  38 60 00 00 */	li r3, 0
lbl_807F8DA8:
/* 807F8DA8  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 807F8DAC  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 807F8DB0  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 807F8DB4  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 807F8DB8  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 807F8DBC  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 807F8DC0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807F8DC4  4B B6 94 59 */	bl _restgpr_26
/* 807F8DC8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 807F8DCC  7C 08 03 A6 */	mtlr r0
/* 807F8DD0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 807F8DD4  4E 80 00 20 */	blr 
