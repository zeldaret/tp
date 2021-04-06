lbl_80785D30:
/* 80785D30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80785D34  7C 08 02 A6 */	mflr r0
/* 80785D38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80785D3C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80785D40  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80785D44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80785D48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80785D4C  7C 7E 1B 78 */	mr r30, r3
/* 80785D50  3C 80 80 79 */	lis r4, lit_3908@ha /* 0x80789C38@ha */
/* 80785D54  3B E4 9C 38 */	addi r31, r4, lit_3908@l /* 0x80789C38@l */
/* 80785D58  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80785D5C  A8 83 05 B4 */	lha r4, 0x5b4(r3)
/* 80785D60  38 04 00 0A */	addi r0, r4, 0xa
/* 80785D64  28 00 00 0D */	cmplwi r0, 0xd
/* 80785D68  41 81 01 F0 */	bgt lbl_80785F58
/* 80785D6C  3C 80 80 79 */	lis r4, lit_4353@ha /* 0x80789DC8@ha */
/* 80785D70  38 84 9D C8 */	addi r4, r4, lit_4353@l /* 0x80789DC8@l */
/* 80785D74  54 00 10 3A */	slwi r0, r0, 2
/* 80785D78  7C 04 00 2E */	lwzx r0, r4, r0
/* 80785D7C  7C 09 03 A6 */	mtctr r0
/* 80785D80  4E 80 04 20 */	bctr 
lbl_80785D84:
/* 80785D84  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80785D88  28 00 00 00 */	cmplwi r0, 0
/* 80785D8C  40 82 00 1C */	bne lbl_80785DA8
/* 80785D90  38 80 00 0C */	li r4, 0xc
/* 80785D94  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785D98  38 A0 00 02 */	li r5, 2
/* 80785D9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785DA0  4B FF F3 E9 */	bl anm_init__FP10e_sf_classifUcf
/* 80785DA4  48 00 00 18 */	b lbl_80785DBC
lbl_80785DA8:
/* 80785DA8  38 80 00 0D */	li r4, 0xd
/* 80785DAC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785DB0  38 A0 00 02 */	li r5, 2
/* 80785DB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785DB8  4B FF F3 D1 */	bl anm_init__FP10e_sf_classifUcf
lbl_80785DBC:
/* 80785DBC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785DC0  4B AE 1B 95 */	bl cM_rndF__Ff
/* 80785DC4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80785DC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80785DCC  FC 00 00 1E */	fctiwz f0, f0
/* 80785DD0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80785DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80785DD8  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 80785DDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008F@ha */
/* 80785DE0  38 03 00 8F */	addi r0, r3, 0x008F /* 0x0007008F@l */
/* 80785DE4  90 01 00 08 */	stw r0, 8(r1)
/* 80785DE8  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80785DEC  38 81 00 08 */	addi r4, r1, 8
/* 80785DF0  38 A0 FF FF */	li r5, -1
/* 80785DF4  81 9E 05 E4 */	lwz r12, 0x5e4(r30)
/* 80785DF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80785DFC  7D 89 03 A6 */	mtctr r12
/* 80785E00  4E 80 04 21 */	bctrl 
/* 80785E04  38 00 FF F7 */	li r0, -9
/* 80785E08  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785E0C  48 00 01 4C */	b lbl_80785F58
lbl_80785E10:
/* 80785E10  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 80785E14  2C 00 00 00 */	cmpwi r0, 0
/* 80785E18  40 82 01 40 */	bne lbl_80785F58
/* 80785E1C  38 00 00 00 */	li r0, 0
/* 80785E20  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785E24  48 00 01 34 */	b lbl_80785F58
lbl_80785E28:
/* 80785E28  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80785E2C  28 00 00 00 */	cmplwi r0, 0
/* 80785E30  40 82 00 2C */	bne lbl_80785E5C
/* 80785E34  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80785E38  4B AE 1B 55 */	bl cM_rndFX__Ff
/* 80785E3C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80785E40  EC 40 08 2A */	fadds f2, f0, f1
/* 80785E44  7F C3 F3 78 */	mr r3, r30
/* 80785E48  38 80 00 0F */	li r4, 0xf
/* 80785E4C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80785E50  38 A0 00 02 */	li r5, 2
/* 80785E54  4B FF F3 35 */	bl anm_init__FP10e_sf_classifUcf
/* 80785E58  48 00 00 28 */	b lbl_80785E80
lbl_80785E5C:
/* 80785E5C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80785E60  4B AE 1B 2D */	bl cM_rndFX__Ff
/* 80785E64  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80785E68  EC 40 08 2A */	fadds f2, f0, f1
/* 80785E6C  7F C3 F3 78 */	mr r3, r30
/* 80785E70  38 80 00 10 */	li r4, 0x10
/* 80785E74  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80785E78  38 A0 00 02 */	li r5, 2
/* 80785E7C  4B FF F3 0D */	bl anm_init__FP10e_sf_classifUcf
lbl_80785E80:
/* 80785E80  38 00 00 01 */	li r0, 1
/* 80785E84  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80785E88:
/* 80785E88  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 80785E8C  38 63 A0 7C */	addi r3, r3, l_HIO@l /* 0x8078A07C@l */
/* 80785E90  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 80785E94  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 80785E98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80785E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80785EA0  40 80 00 B8 */	bge lbl_80785F58
/* 80785EA4  38 00 00 02 */	li r0, 2
/* 80785EA8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785EAC  48 00 00 AC */	b lbl_80785F58
lbl_80785EB0:
/* 80785EB0  3C 80 80 79 */	lis r4, l_HIO@ha /* 0x8078A07C@ha */
/* 80785EB4  38 84 A0 7C */	addi r4, r4, l_HIO@l /* 0x8078A07C@l */
/* 80785EB8  C3 E4 00 0C */	lfs f31, 0xc(r4)
/* 80785EBC  C0 7E 06 8C */	lfs f3, 0x68c(r30)
/* 80785EC0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80785EC4  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80785EC8  EC 01 10 2A */	fadds f0, f1, f2
/* 80785ECC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80785ED0  40 81 00 10 */	ble lbl_80785EE0
/* 80785ED4  38 00 00 00 */	li r0, 0
/* 80785ED8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785EDC  48 00 00 7C */	b lbl_80785F58
lbl_80785EE0:
/* 80785EE0  EC 02 08 28 */	fsubs f0, f2, f1
/* 80785EE4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80785EE8  40 80 00 70 */	bge lbl_80785F58
/* 80785EEC  38 00 00 03 */	li r0, 3
/* 80785EF0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785EF4  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80785EF8  28 00 00 00 */	cmplwi r0, 0
/* 80785EFC  40 82 00 1C */	bne lbl_80785F18
/* 80785F00  38 80 00 0F */	li r4, 0xf
/* 80785F04  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80785F08  38 A0 00 02 */	li r5, 2
/* 80785F0C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80785F10  4B FF F2 79 */	bl anm_init__FP10e_sf_classifUcf
/* 80785F14  48 00 00 44 */	b lbl_80785F58
lbl_80785F18:
/* 80785F18  38 80 00 10 */	li r4, 0x10
/* 80785F1C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80785F20  38 A0 00 02 */	li r5, 2
/* 80785F24  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80785F28  4B FF F2 61 */	bl anm_init__FP10e_sf_classifUcf
/* 80785F2C  48 00 00 2C */	b lbl_80785F58
lbl_80785F30:
/* 80785F30  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 80785F34  38 63 A0 7C */	addi r3, r3, l_HIO@l /* 0x8078A07C@l */
/* 80785F38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80785F3C  FF E0 00 50 */	fneg f31, f0
/* 80785F40  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 80785F44  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80785F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80785F4C  40 81 00 0C */	ble lbl_80785F58
/* 80785F50  38 00 00 02 */	li r0, 2
/* 80785F54  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80785F58:
/* 80785F58  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80785F5C  FC 20 F8 90 */	fmr f1, f31
/* 80785F60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80785F64  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80785F68  4B AE 9A D5 */	bl cLib_addCalc2__FPffff
/* 80785F6C  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80785F70  2C 00 00 00 */	cmpwi r0, 0
/* 80785F74  41 80 00 18 */	blt lbl_80785F8C
/* 80785F78  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80785F7C  A8 9E 06 90 */	lha r4, 0x690(r30)
/* 80785F80  38 A0 00 04 */	li r5, 4
/* 80785F84  38 C0 08 00 */	li r6, 0x800
/* 80785F88  4B AE A6 81 */	bl cLib_addCalcAngleS2__FPssss
lbl_80785F8C:
/* 80785F8C  7F C3 F3 78 */	mr r3, r30
/* 80785F90  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80785F94  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80785F98  EC 21 00 2A */	fadds f1, f1, f0
/* 80785F9C  38 80 7F FF */	li r4, 0x7fff
/* 80785FA0  4B FF F8 E1 */	bl pl_check__FP10e_sf_classfs
/* 80785FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80785FA8  40 82 00 80 */	bne lbl_80786028
/* 80785FAC  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80785FB0  2C 00 00 00 */	cmpwi r0, 0
/* 80785FB4  40 82 00 74 */	bne lbl_80786028
/* 80785FB8  38 00 00 00 */	li r0, 0
/* 80785FBC  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80785FC0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80785FC4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80785FC8  4B AE 19 8D */	bl cM_rndF__Ff
/* 80785FCC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80785FD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80785FD4  FC 00 00 1E */	fctiwz f0, f0
/* 80785FD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80785FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80785FE0  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80785FE4  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80785FE8  28 00 00 00 */	cmplwi r0, 0
/* 80785FEC  40 82 00 20 */	bne lbl_8078600C
/* 80785FF0  7F C3 F3 78 */	mr r3, r30
/* 80785FF4  38 80 00 0C */	li r4, 0xc
/* 80785FF8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80785FFC  38 A0 00 02 */	li r5, 2
/* 80786000  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80786004  4B FF F1 85 */	bl anm_init__FP10e_sf_classifUcf
/* 80786008  48 00 00 CC */	b lbl_807860D4
lbl_8078600C:
/* 8078600C  7F C3 F3 78 */	mr r3, r30
/* 80786010  38 80 00 0D */	li r4, 0xd
/* 80786014  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80786018  38 A0 00 02 */	li r5, 2
/* 8078601C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80786020  4B FF F1 69 */	bl anm_init__FP10e_sf_classifUcf
/* 80786024  48 00 00 B0 */	b lbl_807860D4
lbl_80786028:
/* 80786028  A8 1E 06 92 */	lha r0, 0x692(r30)
/* 8078602C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80786030  40 80 00 9C */	bge lbl_807860CC
/* 80786034  2C 00 F0 00 */	cmpwi r0, -4096
/* 80786038  40 81 00 94 */	ble lbl_807860CC
/* 8078603C  7F C3 F3 78 */	mr r3, r30
/* 80786040  4B FF F6 ED */	bl player_way_check__FP10e_sf_class
/* 80786044  2C 03 00 00 */	cmpwi r3, 0
/* 80786048  41 82 00 84 */	beq lbl_807860CC
/* 8078604C  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 80786050  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 80786054  38 63 A0 7C */	addi r3, r3, l_HIO@l /* 0x8078A07C@l */
/* 80786058  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8078605C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80786060  40 80 00 6C */	bge lbl_807860CC
/* 80786064  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 80786068  2C 00 00 00 */	cmpwi r0, 0
/* 8078606C  40 82 00 60 */	bne lbl_807860CC
/* 80786070  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80786074  4B AE 18 E1 */	bl cM_rndF__Ff
/* 80786078  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8078607C  EC 00 08 2A */	fadds f0, f0, f1
/* 80786080  FC 00 00 1E */	fctiwz f0, f0
/* 80786084  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80786088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078608C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 80786090  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80786094  4B AE 18 C1 */	bl cM_rndF__Ff
/* 80786098  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8078609C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807860A0  40 80 00 2C */	bge lbl_807860CC
/* 807860A4  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 807860A8  28 00 00 00 */	cmplwi r0, 0
/* 807860AC  40 82 00 10 */	bne lbl_807860BC
/* 807860B0  38 00 00 05 */	li r0, 5
/* 807860B4  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807860B8  48 00 00 0C */	b lbl_807860C4
lbl_807860BC:
/* 807860BC  38 00 00 04 */	li r0, 4
/* 807860C0  B0 1E 06 8A */	sth r0, 0x68a(r30)
lbl_807860C4:
/* 807860C4  38 00 00 00 */	li r0, 0
/* 807860C8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807860CC:
/* 807860CC  38 00 00 01 */	li r0, 1
/* 807860D0  98 1E 06 AE */	stb r0, 0x6ae(r30)
lbl_807860D4:
/* 807860D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807860D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807860DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807860E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807860E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807860E8  7C 08 03 A6 */	mtlr r0
/* 807860EC  38 21 00 30 */	addi r1, r1, 0x30
/* 807860F0  4E 80 00 20 */	blr 
