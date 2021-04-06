lbl_8077BC8C:
/* 8077BC8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077BC90  7C 08 02 A6 */	mflr r0
/* 8077BC94  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077BC98  39 61 00 30 */	addi r11, r1, 0x30
/* 8077BC9C  4B BE 65 41 */	bl _savegpr_29
/* 8077BCA0  7C 7E 1B 78 */	mr r30, r3
/* 8077BCA4  3C 80 80 78 */	lis r4, lit_3903@ha /* 0x80780DC4@ha */
/* 8077BCA8  3B E4 0D C4 */	addi r31, r4, lit_3903@l /* 0x80780DC4@l */
/* 8077BCAC  3B A0 00 00 */	li r29, 0
/* 8077BCB0  A8 03 06 98 */	lha r0, 0x698(r3)
/* 8077BCB4  2C 00 00 02 */	cmpwi r0, 2
/* 8077BCB8  41 82 00 CC */	beq lbl_8077BD84
/* 8077BCBC  40 80 00 14 */	bge lbl_8077BCD0
/* 8077BCC0  2C 00 00 00 */	cmpwi r0, 0
/* 8077BCC4  41 82 00 1C */	beq lbl_8077BCE0
/* 8077BCC8  40 80 00 34 */	bge lbl_8077BCFC
/* 8077BCCC  48 00 01 B0 */	b lbl_8077BE7C
lbl_8077BCD0:
/* 8077BCD0  2C 00 00 04 */	cmpwi r0, 4
/* 8077BCD4  41 82 01 6C */	beq lbl_8077BE40
/* 8077BCD8  40 80 01 A4 */	bge lbl_8077BE7C
/* 8077BCDC  48 00 00 EC */	b lbl_8077BDC8
lbl_8077BCE0:
/* 8077BCE0  38 80 00 1C */	li r4, 0x1c
/* 8077BCE4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077BCE8  38 A0 00 02 */	li r5, 2
/* 8077BCEC  FC 40 08 90 */	fmr f2, f1
/* 8077BCF0  4B FF EF 09 */	bl anm_init__FP10e_s1_classifUcf
/* 8077BCF4  38 00 00 01 */	li r0, 1
/* 8077BCF8  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077BCFC:
/* 8077BCFC  3B A0 00 01 */	li r29, 1
/* 8077BD00  88 9E 05 B7 */	lbz r4, 0x5b7(r30)
/* 8077BD04  28 04 00 FF */	cmplwi r4, 0xff
/* 8077BD08  41 82 00 30 */	beq lbl_8077BD38
/* 8077BD0C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8077BD10  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8077BD14  7C A5 07 74 */	extsb r5, r5
/* 8077BD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077BD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077BD20  4B 8B 96 41 */	bl isSwitch__10dSv_info_cCFii
/* 8077BD24  2C 03 00 00 */	cmpwi r3, 0
/* 8077BD28  41 82 01 54 */	beq lbl_8077BE7C
/* 8077BD2C  38 00 00 02 */	li r0, 2
/* 8077BD30  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077BD34  48 00 01 48 */	b lbl_8077BE7C
lbl_8077BD38:
/* 8077BD38  7F C3 F3 78 */	mr r3, r30
/* 8077BD3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077BD40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077BD44  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8077BD48  4B 89 EC 1D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077BD4C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8077BD50  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 8077BD54  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 8077BD58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077BD5C  3C 00 43 30 */	lis r0, 0x4330
/* 8077BD60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077BD64  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8077BD68  EC 00 10 28 */	fsubs f0, f0, f2
/* 8077BD6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8077BD70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077BD74  40 80 01 08 */	bge lbl_8077BE7C
/* 8077BD78  38 00 00 02 */	li r0, 2
/* 8077BD7C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077BD80  48 00 00 FC */	b lbl_8077BE7C
lbl_8077BD84:
/* 8077BD84  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000E@ha */
/* 8077BD88  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0007000E@l */
/* 8077BD8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077BD90  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077BD94  38 81 00 0C */	addi r4, r1, 0xc
/* 8077BD98  38 A0 00 00 */	li r5, 0
/* 8077BD9C  38 C0 FF FF */	li r6, -1
/* 8077BDA0  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077BDA4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077BDA8  7D 89 03 A6 */	mtctr r12
/* 8077BDAC  4E 80 04 21 */	bctrl 
/* 8077BDB0  38 00 00 03 */	li r0, 3
/* 8077BDB4  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077BDB8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8078138C@ha */
/* 8077BDBC  38 63 13 8C */	addi r3, r3, l_HIO@l /* 0x8078138C@l */
/* 8077BDC0  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 8077BDC4  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8077BDC8:
/* 8077BDC8  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 8077BDCC  2C 00 00 00 */	cmpwi r0, 0
/* 8077BDD0  40 82 00 68 */	bne lbl_8077BE38
/* 8077BDD4  38 00 00 01 */	li r0, 1
/* 8077BDD8  98 1E 06 9A */	stb r0, 0x69a(r30)
/* 8077BDDC  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8077BDE0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8077BDE4  41 82 00 98 */	beq lbl_8077BE7C
/* 8077BDE8  7F C3 F3 78 */	mr r3, r30
/* 8077BDEC  38 80 00 13 */	li r4, 0x13
/* 8077BDF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077BDF4  38 A0 00 00 */	li r5, 0
/* 8077BDF8  FC 40 08 90 */	fmr f2, f1
/* 8077BDFC  4B FF ED FD */	bl anm_init__FP10e_s1_classifUcf
/* 8077BE00  38 00 00 04 */	li r0, 4
/* 8077BE04  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077BE08  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000F@ha */
/* 8077BE0C  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0007000F@l */
/* 8077BE10  90 01 00 08 */	stw r0, 8(r1)
/* 8077BE14  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077BE18  38 81 00 08 */	addi r4, r1, 8
/* 8077BE1C  38 A0 00 00 */	li r5, 0
/* 8077BE20  38 C0 FF FF */	li r6, -1
/* 8077BE24  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077BE28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077BE2C  7D 89 03 A6 */	mtctr r12
/* 8077BE30  4E 80 04 21 */	bctrl 
/* 8077BE34  48 00 00 48 */	b lbl_8077BE7C
lbl_8077BE38:
/* 8077BE38  3B A0 00 01 */	li r29, 1
/* 8077BE3C  48 00 00 40 */	b lbl_8077BE7C
lbl_8077BE40:
/* 8077BE40  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077BE44  38 80 00 01 */	li r4, 1
/* 8077BE48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077BE4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077BE50  40 82 00 18 */	bne lbl_8077BE68
/* 8077BE54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077BE58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077BE5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077BE60  41 82 00 08 */	beq lbl_8077BE68
/* 8077BE64  38 80 00 00 */	li r4, 0
lbl_8077BE68:
/* 8077BE68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077BE6C  41 82 00 10 */	beq lbl_8077BE7C
/* 8077BE70  38 00 00 00 */	li r0, 0
/* 8077BE74  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8077BE78  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077BE7C:
/* 8077BE7C  7F A0 07 75 */	extsb. r0, r29
/* 8077BE80  41 82 00 14 */	beq lbl_8077BE94
/* 8077BE84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077BE88  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8077BE8C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8077BE90  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_8077BE94:
/* 8077BE94  39 61 00 30 */	addi r11, r1, 0x30
/* 8077BE98  4B BE 63 91 */	bl _restgpr_29
/* 8077BE9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077BEA0  7C 08 03 A6 */	mtlr r0
/* 8077BEA4  38 21 00 30 */	addi r1, r1, 0x30
/* 8077BEA8  4E 80 00 20 */	blr 
