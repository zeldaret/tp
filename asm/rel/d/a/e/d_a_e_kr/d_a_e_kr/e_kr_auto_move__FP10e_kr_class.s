lbl_80700AF8:
/* 80700AF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80700AFC  7C 08 02 A6 */	mflr r0
/* 80700B00  90 01 00 54 */	stw r0, 0x54(r1)
/* 80700B04  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80700B08  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80700B0C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80700B10  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80700B14  39 61 00 30 */	addi r11, r1, 0x30
/* 80700B18  4B C6 16 C4 */	b _savegpr_29
/* 80700B1C  7C 7E 1B 78 */	mr r30, r3
/* 80700B20  3C 60 80 70 */	lis r3, lit_3903@ha
/* 80700B24  3B E3 5A F8 */	addi r31, r3, lit_3903@l
/* 80700B28  38 00 00 02 */	li r0, 2
/* 80700B2C  98 1E 0E 8C */	stb r0, 0xe8c(r30)
/* 80700B30  88 1E 06 70 */	lbz r0, 0x670(r30)
/* 80700B34  7C 00 07 74 */	extsb r0, r0
/* 80700B38  2C 00 00 0A */	cmpwi r0, 0xa
/* 80700B3C  41 82 01 64 */	beq lbl_80700CA0
/* 80700B40  40 80 00 1C */	bge lbl_80700B5C
/* 80700B44  2C 00 00 01 */	cmpwi r0, 1
/* 80700B48  41 82 00 8C */	beq lbl_80700BD4
/* 80700B4C  40 80 01 54 */	bge lbl_80700CA0
/* 80700B50  2C 00 00 00 */	cmpwi r0, 0
/* 80700B54  40 80 00 14 */	bge lbl_80700B68
/* 80700B58  48 00 01 48 */	b lbl_80700CA0
lbl_80700B5C:
/* 80700B5C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80700B60  41 82 00 DC */	beq lbl_80700C3C
/* 80700B64  48 00 01 3C */	b lbl_80700CA0
lbl_80700B68:
/* 80700B68  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80700B6C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80700B70  FC 00 00 1E */	fctiwz f0, f0
/* 80700B74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80700B78  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80700B7C  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80700B80  2C 00 00 00 */	cmpwi r0, 0
/* 80700B84  40 82 01 1C */	bne lbl_80700CA0
/* 80700B88  2C 03 00 09 */	cmpwi r3, 9
/* 80700B8C  40 82 01 14 */	bne lbl_80700CA0
/* 80700B90  38 00 00 01 */	li r0, 1
/* 80700B94  98 1E 06 70 */	stb r0, 0x670(r30)
/* 80700B98  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80700B9C  4B B6 6D B8 */	b cM_rndF__Ff
/* 80700BA0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80700BA4  EC 00 08 2A */	fadds f0, f0, f1
/* 80700BA8  FC 00 00 1E */	fctiwz f0, f0
/* 80700BAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80700BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80700BB4  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80700BB8  7F C3 F3 78 */	mr r3, r30
/* 80700BBC  38 80 00 0D */	li r4, 0xd
/* 80700BC0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80700BC4  38 A0 00 02 */	li r5, 2
/* 80700BC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80700BCC  4B FF F1 0D */	bl anm_init__FP10e_kr_classifUcf
/* 80700BD0  48 00 00 D0 */	b lbl_80700CA0
lbl_80700BD4:
/* 80700BD4  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80700BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80700BDC  40 82 00 C4 */	bne lbl_80700CA0
/* 80700BE0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80700BE4  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80700BE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80700BEC  40 80 00 B4 */	bge lbl_80700CA0
/* 80700BF0  38 00 00 00 */	li r0, 0
/* 80700BF4  98 1E 06 70 */	stb r0, 0x670(r30)
/* 80700BF8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80700BFC  4B B6 6D 58 */	b cM_rndF__Ff
/* 80700C00  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80700C04  EC 00 08 2A */	fadds f0, f0, f1
/* 80700C08  FC 00 00 1E */	fctiwz f0, f0
/* 80700C0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80700C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80700C14  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80700C18  7F C3 F3 78 */	mr r3, r30
/* 80700C1C  38 80 00 08 */	li r4, 8
/* 80700C20  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80700C24  38 A0 00 02 */	li r5, 2
/* 80700C28  3C C0 80 70 */	lis r6, l_e_krHIO@ha
/* 80700C2C  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l
/* 80700C30  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80700C34  4B FF F0 A5 */	bl anm_init__FP10e_kr_classifUcf
/* 80700C38  48 00 00 68 */	b lbl_80700CA0
lbl_80700C3C:
/* 80700C3C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80700C40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80700C44  FC 00 00 1E */	fctiwz f0, f0
/* 80700C48  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80700C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80700C50  2C 00 00 22 */	cmpwi r0, 0x22
/* 80700C54  40 82 00 4C */	bne lbl_80700CA0
/* 80700C58  38 00 00 00 */	li r0, 0
/* 80700C5C  98 1E 06 70 */	stb r0, 0x670(r30)
/* 80700C60  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80700C64  4B B6 6C F0 */	b cM_rndF__Ff
/* 80700C68  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80700C6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80700C70  FC 00 00 1E */	fctiwz f0, f0
/* 80700C74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80700C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80700C7C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80700C80  7F C3 F3 78 */	mr r3, r30
/* 80700C84  38 80 00 08 */	li r4, 8
/* 80700C88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80700C8C  38 A0 00 02 */	li r5, 2
/* 80700C90  3C C0 80 70 */	lis r6, l_e_krHIO@ha
/* 80700C94  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l
/* 80700C98  C0 46 00 28 */	lfs f2, 0x28(r6)
/* 80700C9C  4B FF F0 3D */	bl anm_init__FP10e_kr_classifUcf
lbl_80700CA0:
/* 80700CA0  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 80700CA4  2C 00 00 00 */	cmpwi r0, 0
/* 80700CA8  41 82 00 08 */	beq lbl_80700CB0
/* 80700CAC  48 00 01 60 */	b lbl_80700E0C
lbl_80700CB0:
/* 80700CB0  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 80700CB4  2C 00 00 00 */	cmpwi r0, 0
/* 80700CB8  40 82 01 54 */	bne lbl_80700E0C
/* 80700CBC  3C 60 80 70 */	lis r3, l_e_krHIO@ha
/* 80700CC0  3B A3 5F F4 */	addi r29, r3, l_e_krHIO@l
/* 80700CC4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80700CC8  4B B6 6C C4 */	b cM_rndFX__Ff
/* 80700CCC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80700CD0  EC 20 08 2A */	fadds f1, f0, f1
/* 80700CD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80700CD8  EF E1 00 28 */	fsubs f31, f1, f0
/* 80700CDC  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80700CE0  4B B6 6C AC */	b cM_rndFX__Ff
/* 80700CE4  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80700CE8  EC 20 08 2A */	fadds f1, f0, f1
/* 80700CEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80700CF0  EF C1 00 28 */	fsubs f30, f1, f0
/* 80700CF4  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80700CF8  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80700CFC  EC 21 00 2A */	fadds f1, f1, f0
/* 80700D00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80700D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80700D08  40 81 00 0C */	ble lbl_80700D14
/* 80700D0C  FC 00 08 34 */	frsqrte f0, f1
/* 80700D10  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80700D14:
/* 80700D14  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80700D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80700D1C  40 81 00 F0 */	ble lbl_80700E0C
/* 80700D20  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80700D24  4B B6 6C 30 */	b cM_rndF__Ff
/* 80700D28  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80700D2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80700D30  FC 00 00 1E */	fctiwz f0, f0
/* 80700D34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80700D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80700D3C  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 80700D40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80700D44  EC 1F 00 2A */	fadds f0, f31, f0
/* 80700D48  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80700D4C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80700D50  4B B6 6C 04 */	b cM_rndF__Ff
/* 80700D54  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80700D58  EC 00 08 2A */	fadds f0, f0, f1
/* 80700D5C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80700D60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80700D64  EC 1E 00 2A */	fadds f0, f30, f0
/* 80700D68  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 80700D6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80700D70  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80700D74  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80700D78  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 80700D7C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80700D80  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80700D84  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80700D88  4B B6 6B CC */	b cM_rndF__Ff
/* 80700D8C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80700D90  EC 00 08 2A */	fadds f0, f0, f1
/* 80700D94  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 80700D98  3C 60 80 70 */	lis r3, l_e_krHIO@ha
/* 80700D9C  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l
/* 80700DA0  88 03 00 06 */	lbz r0, 6(r3)
/* 80700DA4  28 00 00 00 */	cmplwi r0, 0
/* 80700DA8  40 82 00 1C */	bne lbl_80700DC4
/* 80700DAC  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80700DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80700DB4  40 82 00 58 */	bne lbl_80700E0C
/* 80700DB8  88 1E 06 6B */	lbz r0, 0x66b(r30)
/* 80700DBC  28 00 00 00 */	cmplwi r0, 0
/* 80700DC0  40 82 00 4C */	bne lbl_80700E0C
lbl_80700DC4:
/* 80700DC4  7F C3 F3 78 */	mr r3, r30
/* 80700DC8  4B FF F1 8D */	bl e_kr_player_view_check__FP10e_kr_class
/* 80700DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80700DD0  41 82 00 3C */	beq lbl_80700E0C
/* 80700DD4  38 00 00 03 */	li r0, 3
/* 80700DD8  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80700DDC  38 00 00 00 */	li r0, 0
/* 80700DE0  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80700DE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007002D@ha */
/* 80700DE8  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0007002D@l */
/* 80700DEC  90 01 00 08 */	stw r0, 8(r1)
/* 80700DF0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80700DF4  38 81 00 08 */	addi r4, r1, 8
/* 80700DF8  38 A0 FF FF */	li r5, -1
/* 80700DFC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80700E00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80700E04  7D 89 03 A6 */	mtctr r12
/* 80700E08  4E 80 04 21 */	bctrl 
lbl_80700E0C:
/* 80700E0C  7F C3 F3 78 */	mr r3, r30
/* 80700E10  4B FF F5 3D */	bl e_kr_pos_move__FP10e_kr_class
/* 80700E14  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80700E18  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80700E1C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80700E20  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80700E24  39 61 00 30 */	addi r11, r1, 0x30
/* 80700E28  4B C6 14 00 */	b _restgpr_29
/* 80700E2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80700E30  7C 08 03 A6 */	mtlr r0
/* 80700E34  38 21 00 50 */	addi r1, r1, 0x50
/* 80700E38  4E 80 00 20 */	blr 
