lbl_80703990:
/* 80703990  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80703994  7C 08 02 A6 */	mflr r0
/* 80703998  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070399C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807039A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807039A4  7C 7E 1B 78 */	mr r30, r3
/* 807039A8  3C 60 80 70 */	lis r3, lit_3903@ha
/* 807039AC  3B E3 5A F8 */	addi r31, r3, lit_3903@l
/* 807039B0  38 7E 09 40 */	addi r3, r30, 0x940
/* 807039B4  4B 97 FE 7C */	b Move__10dCcD_GSttsFv
/* 807039B8  38 7E 0B D0 */	addi r3, r30, 0xbd0
/* 807039BC  4B 98 0A A4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807039C0  28 03 00 00 */	cmplwi r3, 0
/* 807039C4  40 82 00 14 */	bne lbl_807039D8
/* 807039C8  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 807039CC  4B 98 0A 94 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807039D0  28 03 00 00 */	cmplwi r3, 0
/* 807039D4  41 82 03 88 */	beq lbl_80703D5C
lbl_807039D8:
/* 807039D8  A8 1E 06 C8 */	lha r0, 0x6c8(r30)
/* 807039DC  2C 00 00 00 */	cmpwi r0, 0
/* 807039E0  40 82 03 7C */	bne lbl_80703D5C
/* 807039E4  38 7E 0B D0 */	addi r3, r30, 0xbd0
/* 807039E8  4B 98 0A 78 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807039EC  28 03 00 00 */	cmplwi r3, 0
/* 807039F0  41 82 00 14 */	beq lbl_80703A04
/* 807039F4  38 7E 0B D0 */	addi r3, r30, 0xbd0
/* 807039F8  4B 98 0B 00 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807039FC  90 7E 0E 40 */	stw r3, 0xe40(r30)
/* 80703A00  48 00 00 20 */	b lbl_80703A20
lbl_80703A04:
/* 80703A04  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80703A08  4B 98 0A 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80703A0C  28 03 00 00 */	cmplwi r3, 0
/* 80703A10  41 82 00 10 */	beq lbl_80703A20
/* 80703A14  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80703A18  4B 98 0A E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80703A1C  90 7E 0E 40 */	stw r3, 0xe40(r30)
lbl_80703A20:
/* 80703A20  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80703A24  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80703A28  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 80703A2C  41 82 00 10 */	beq lbl_80703A3C
/* 80703A30  38 00 00 14 */	li r0, 0x14
/* 80703A34  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 80703A38  48 00 00 0C */	b lbl_80703A44
lbl_80703A3C:
/* 80703A3C  38 00 00 0A */	li r0, 0xa
/* 80703A40  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
lbl_80703A44:
/* 80703A44  7F C3 F3 78 */	mr r3, r30
/* 80703A48  38 9E 0E 40 */	addi r4, r30, 0xe40
/* 80703A4C  4B 98 41 B8 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80703A50  90 7E 0E 44 */	stw r3, 0xe44(r30)
/* 80703A54  88 1E 06 6B */	lbz r0, 0x66b(r30)
/* 80703A58  28 00 00 00 */	cmplwi r0, 0
/* 80703A5C  41 82 01 08 */	beq lbl_80703B64
/* 80703A60  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 80703A64  90 01 00 08 */	stw r0, 8(r1)
/* 80703A68  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80703A6C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80703A70  38 81 00 08 */	addi r4, r1, 8
/* 80703A74  4B 91 5D 84 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80703A78  28 03 00 00 */	cmplwi r3, 0
/* 80703A7C  41 82 00 14 */	beq lbl_80703A90
/* 80703A80  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80703A84  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80703A88  7D 89 03 A6 */	mtctr r12
/* 80703A8C  4E 80 04 21 */	bctrl 
lbl_80703A90:
/* 80703A90  38 60 00 00 */	li r3, 0
/* 80703A94  98 7E 06 6B */	stb r3, 0x66b(r30)
/* 80703A98  38 00 FF FF */	li r0, -1
/* 80703A9C  90 1E 0F 00 */	stw r0, 0xf00(r30)
/* 80703AA0  90 7E 0F 04 */	stw r3, 0xf04(r30)
/* 80703AA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80703AA8  B0 1E 06 CA */	sth r0, 0x6ca(r30)
/* 80703AAC  B0 7E 06 CC */	sth r3, 0x6cc(r30)
/* 80703AB0  38 00 00 09 */	li r0, 9
/* 80703AB4  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80703AB8  B0 7E 06 72 */	sth r3, 0x672(r30)
/* 80703ABC  3C 60 80 70 */	lis r3, l_e_krHIO@ha
/* 80703AC0  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l
/* 80703AC4  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 80703AC8  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
/* 80703ACC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80703AD0  4B B6 3E 84 */	b cM_rndF__Ff
/* 80703AD4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80703AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80703ADC  40 80 00 28 */	bge lbl_80703B04
/* 80703AE0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80703AE4  4B B6 3E 70 */	b cM_rndF__Ff
/* 80703AE8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80703AEC  EC 00 08 2A */	fadds f0, f0, f1
/* 80703AF0  FC 00 00 1E */	fctiwz f0, f0
/* 80703AF4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80703AF8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80703AFC  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 80703B00  48 00 00 28 */	b lbl_80703B28
lbl_80703B04:
/* 80703B04  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80703B08  4B B6 3E 4C */	b cM_rndF__Ff
/* 80703B0C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80703B10  EC 00 08 2A */	fadds f0, f0, f1
/* 80703B14  FC 00 00 50 */	fneg f0, f0
/* 80703B18  FC 00 00 1E */	fctiwz f0, f0
/* 80703B1C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80703B20  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80703B24  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
lbl_80703B28:
/* 80703B28  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070029@ha */
/* 80703B2C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00070029@l */
/* 80703B30  90 01 00 18 */	stw r0, 0x18(r1)
/* 80703B34  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80703B38  38 81 00 18 */	addi r4, r1, 0x18
/* 80703B3C  38 A0 FF FF */	li r5, -1
/* 80703B40  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80703B44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80703B48  7D 89 03 A6 */	mtctr r12
/* 80703B4C  4E 80 04 21 */	bctrl 
/* 80703B50  38 00 00 01 */	li r0, 1
/* 80703B54  98 1E 0E FC */	stb r0, 0xefc(r30)
/* 80703B58  38 00 00 00 */	li r0, 0
/* 80703B5C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80703B60  48 00 01 FC */	b lbl_80703D5C
lbl_80703B64:
/* 80703B64  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80703B68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80703B6C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80703B70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80703B74  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80703B78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80703B7C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80703B80  38 80 00 64 */	li r4, 0x64
/* 80703B84  28 1E 00 00 */	cmplwi r30, 0
/* 80703B88  41 82 00 0C */	beq lbl_80703B94
/* 80703B8C  80 BE 00 04 */	lwz r5, 4(r30)
/* 80703B90  48 00 00 08 */	b lbl_80703B98
lbl_80703B94:
/* 80703B94  38 A0 FF FF */	li r5, -1
lbl_80703B98:
/* 80703B98  38 C0 00 05 */	li r6, 5
/* 80703B9C  4B AA 46 24 */	b dKy_Sound_set__F4cXyziUii
/* 80703BA0  A0 1E 0E 5C */	lhz r0, 0xe5c(r30)
/* 80703BA4  28 00 00 00 */	cmplwi r0, 0
/* 80703BA8  40 82 00 80 */	bne lbl_80703C28
/* 80703BAC  38 00 00 03 */	li r0, 3
/* 80703BB0  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80703BB4  38 00 00 0A */	li r0, 0xa
/* 80703BB8  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80703BBC  3C 60 80 70 */	lis r3, l_e_krHIO@ha
/* 80703BC0  38 C3 5F F4 */	addi r6, r3, l_e_krHIO@l
/* 80703BC4  A8 06 00 34 */	lha r0, 0x34(r6)
/* 80703BC8  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80703BCC  7F C3 F3 78 */	mr r3, r30
/* 80703BD0  38 80 00 10 */	li r4, 0x10
/* 80703BD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80703BD8  38 A0 00 00 */	li r5, 0
/* 80703BDC  C0 46 00 38 */	lfs f2, 0x38(r6)
/* 80703BE0  4B FF C0 F9 */	bl anm_init__FP10e_kr_classifUcf
/* 80703BE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80703BE8  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 80703BEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80703BF0  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80703BF4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80703BF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80703BFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070030@ha */
/* 80703C00  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00070030@l */
/* 80703C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80703C08  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80703C0C  38 81 00 14 */	addi r4, r1, 0x14
/* 80703C10  38 A0 FF FF */	li r5, -1
/* 80703C14  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80703C18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80703C1C  7D 89 03 A6 */	mtctr r12
/* 80703C20  4E 80 04 21 */	bctrl 
/* 80703C24  48 00 01 38 */	b lbl_80703D5C
lbl_80703C28:
/* 80703C28  88 1E 0E 60 */	lbz r0, 0xe60(r30)
/* 80703C2C  28 00 00 01 */	cmplwi r0, 1
/* 80703C30  40 82 00 18 */	bne lbl_80703C48
/* 80703C34  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 80703C38  B0 1E 06 CA */	sth r0, 0x6ca(r30)
/* 80703C3C  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 80703C40  B0 1E 06 CC */	sth r0, 0x6cc(r30)
/* 80703C44  48 00 00 14 */	b lbl_80703C58
lbl_80703C48:
/* 80703C48  A8 1E 0E 4E */	lha r0, 0xe4e(r30)
/* 80703C4C  B0 1E 06 CA */	sth r0, 0x6ca(r30)
/* 80703C50  38 00 00 00 */	li r0, 0
/* 80703C54  B0 1E 06 CC */	sth r0, 0x6cc(r30)
lbl_80703C58:
/* 80703C58  38 00 00 09 */	li r0, 9
/* 80703C5C  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80703C60  38 00 00 00 */	li r0, 0
/* 80703C64  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80703C68  88 1E 0E 5F */	lbz r0, 0xe5f(r30)
/* 80703C6C  7C 00 07 75 */	extsb. r0, r0
/* 80703C70  41 82 00 18 */	beq lbl_80703C88
/* 80703C74  3C 60 80 70 */	lis r3, l_e_krHIO@ha
/* 80703C78  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l
/* 80703C7C  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 80703C80  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
/* 80703C84  48 00 00 14 */	b lbl_80703C98
lbl_80703C88:
/* 80703C88  3C 60 80 70 */	lis r3, l_e_krHIO@ha
/* 80703C8C  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l
/* 80703C90  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80703C94  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
lbl_80703C98:
/* 80703C98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80703C9C  4B B6 3C B8 */	b cM_rndF__Ff
/* 80703CA0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80703CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80703CA8  40 80 00 28 */	bge lbl_80703CD0
/* 80703CAC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80703CB0  4B B6 3C A4 */	b cM_rndF__Ff
/* 80703CB4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80703CB8  EC 00 08 2A */	fadds f0, f0, f1
/* 80703CBC  FC 00 00 1E */	fctiwz f0, f0
/* 80703CC0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80703CC4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80703CC8  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 80703CCC  48 00 00 28 */	b lbl_80703CF4
lbl_80703CD0:
/* 80703CD0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80703CD4  4B B6 3C 80 */	b cM_rndF__Ff
/* 80703CD8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80703CDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80703CE0  FC 00 00 50 */	fneg f0, f0
/* 80703CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80703CE8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80703CEC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80703CF0  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
lbl_80703CF4:
/* 80703CF4  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80703CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80703CFC  41 81 00 38 */	bgt lbl_80703D34
/* 80703D00  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070029@ha */
/* 80703D04  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00070029@l */
/* 80703D08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80703D0C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80703D10  38 81 00 10 */	addi r4, r1, 0x10
/* 80703D14  38 A0 FF FF */	li r5, -1
/* 80703D18  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80703D1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80703D20  7D 89 03 A6 */	mtctr r12
/* 80703D24  4E 80 04 21 */	bctrl 
/* 80703D28  38 00 00 01 */	li r0, 1
/* 80703D2C  98 1E 0E FC */	stb r0, 0xefc(r30)
/* 80703D30  48 00 00 2C */	b lbl_80703D5C
lbl_80703D34:
/* 80703D34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070028@ha */
/* 80703D38  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00070028@l */
/* 80703D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80703D40  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80703D44  38 81 00 0C */	addi r4, r1, 0xc
/* 80703D48  38 A0 FF FF */	li r5, -1
/* 80703D4C  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80703D50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80703D54  7D 89 03 A6 */	mtctr r12
/* 80703D58  4E 80 04 21 */	bctrl 
lbl_80703D5C:
/* 80703D5C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80703D60  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80703D64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80703D68  7C 08 03 A6 */	mtlr r0
/* 80703D6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80703D70  4E 80 00 20 */	blr 
