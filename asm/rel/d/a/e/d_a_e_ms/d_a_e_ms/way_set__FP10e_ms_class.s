lbl_807261E8:
/* 807261E8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 807261EC  7C 08 02 A6 */	mflr r0
/* 807261F0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807261F4  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 807261F8  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 807261FC  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80726200  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80726204  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80726208  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 8072620C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80726210  4B C3 BF C1 */	bl _savegpr_26
/* 80726214  7C 7C 1B 78 */	mr r28, r3
/* 80726218  3C 60 80 73 */	lis r3, lit_3800@ha /* 0x80729504@ha */
/* 8072621C  3B C3 95 04 */	addi r30, r3, lit_3800@l /* 0x80729504@l */
/* 80726220  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80726224  4B B4 17 31 */	bl cM_rndF__Ff
/* 80726228  FC 00 08 1E */	fctiwz f0, f1
/* 8072622C  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80726230  83 61 00 A4 */	lwz r27, 0xa4(r1)
/* 80726234  C3 BE 00 48 */	lfs f29, 0x48(r30)
/* 80726238  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8072623C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80726240  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80726244  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80726248  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8072624C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80726250  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80726254  EC 01 00 2A */	fadds f0, f1, f0
/* 80726258  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8072625C  3B 40 00 00 */	li r26, 0
/* 80726260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80726264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80726268  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8072626C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80726270  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 80726274  C3 DE 00 04 */	lfs f30, 4(r30)
/* 80726278  C3 FE 00 50 */	lfs f31, 0x50(r30)
lbl_8072627C:
/* 8072627C  3B C0 00 00 */	li r30, 0
lbl_80726280:
/* 80726280  80 7F 00 00 */	lwz r3, 0(r31)
/* 80726284  7F 64 DB 78 */	mr r4, r27
/* 80726288  4B 8E 61 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 8072628C  D3 C1 00 08 */	stfs f30, 8(r1)
/* 80726290  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80726294  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 80726298  38 61 00 08 */	addi r3, r1, 8
/* 8072629C  38 81 00 14 */	addi r4, r1, 0x14
/* 807262A0  4B B4 AC 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807262A4  38 61 00 14 */	addi r3, r1, 0x14
/* 807262A8  38 81 00 20 */	addi r4, r1, 0x20
/* 807262AC  7C 65 1B 78 */	mr r5, r3
/* 807262B0  4B C2 0D E1 */	bl PSVECAdd
/* 807262B4  38 61 00 2C */	addi r3, r1, 0x2c
/* 807262B8  4B 95 19 B1 */	bl __ct__11dBgS_LinChkFv
/* 807262BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807262C0  38 81 00 20 */	addi r4, r1, 0x20
/* 807262C4  38 A1 00 14 */	addi r5, r1, 0x14
/* 807262C8  7F 86 E3 78 */	mr r6, r28
/* 807262CC  4B 95 1A 99 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807262D0  7F A3 EB 78 */	mr r3, r29
/* 807262D4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807262D8  4B 94 E0 DD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807262DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807262E0  41 82 00 0C */	beq lbl_807262EC
/* 807262E4  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 807262E8  48 00 00 1C */	b lbl_80726304
lbl_807262EC:
/* 807262EC  B3 7C 05 C8 */	sth r27, 0x5c8(r28)
/* 807262F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807262F4  38 80 FF FF */	li r4, -1
/* 807262F8  4B 95 19 E5 */	bl __dt__11dBgS_LinChkFv
/* 807262FC  38 60 00 01 */	li r3, 1
/* 80726300  48 00 00 30 */	b lbl_80726330
lbl_80726304:
/* 80726304  38 61 00 2C */	addi r3, r1, 0x2c
/* 80726308  38 80 FF FF */	li r4, -1
/* 8072630C  4B 95 19 D1 */	bl __dt__11dBgS_LinChkFv
/* 80726310  3B DE 00 01 */	addi r30, r30, 1
/* 80726314  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80726318  41 80 FF 68 */	blt lbl_80726280
/* 8072631C  EF BD F8 28 */	fsubs f29, f29, f31
/* 80726320  3B 5A 00 01 */	addi r26, r26, 1
/* 80726324  2C 1A 00 05 */	cmpwi r26, 5
/* 80726328  41 80 FF 54 */	blt lbl_8072627C
/* 8072632C  38 60 00 00 */	li r3, 0
lbl_80726330:
/* 80726330  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80726334  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80726338  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 8072633C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80726340  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80726344  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80726348  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8072634C  4B C3 BE D1 */	bl _restgpr_26
/* 80726350  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80726354  7C 08 03 A6 */	mtlr r0
/* 80726358  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8072635C  4E 80 00 20 */	blr 
