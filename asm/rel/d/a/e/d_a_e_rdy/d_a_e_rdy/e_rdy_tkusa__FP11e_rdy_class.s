lbl_8076F71C:
/* 8076F71C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8076F720  7C 08 02 A6 */	mflr r0
/* 8076F724  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8076F728  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8076F72C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8076F730  39 61 00 90 */	addi r11, r1, 0x90
/* 8076F734  4B BF 2A A1 */	bl _savegpr_27
/* 8076F738  7C 7B 1B 78 */	mr r27, r3
/* 8076F73C  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 8076F740  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 8076F744  38 00 00 14 */	li r0, 0x14
/* 8076F748  B0 1B 0A 68 */	sth r0, 0xa68(r27)
/* 8076F74C  80 7B 0A 5C */	lwz r3, 0xa5c(r27)
/* 8076F750  3C 03 00 01 */	addis r0, r3, 1
/* 8076F754  28 00 FF FF */	cmplwi r0, 0xffff
/* 8076F758  40 82 00 34 */	bne lbl_8076F78C
/* 8076F75C  38 00 00 F5 */	li r0, 0xf5
/* 8076F760  B0 01 00 08 */	sth r0, 8(r1)
/* 8076F764  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8076F768  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8076F76C  38 81 00 08 */	addi r4, r1, 8
/* 8076F770  4B 8A A0 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8076F774  28 03 00 00 */	cmplwi r3, 0
/* 8076F778  41 82 00 0C */	beq lbl_8076F784
/* 8076F77C  80 03 00 04 */	lwz r0, 4(r3)
/* 8076F780  48 00 00 08 */	b lbl_8076F788
lbl_8076F784:
/* 8076F784  38 00 FF FF */	li r0, -1
lbl_8076F788:
/* 8076F788  90 1B 0A 5C */	stw r0, 0xa5c(r27)
lbl_8076F78C:
/* 8076F78C  80 1B 0A 5C */	lwz r0, 0xa5c(r27)
/* 8076F790  90 01 00 18 */	stw r0, 0x18(r1)
/* 8076F794  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8076F798  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8076F79C  38 81 00 18 */	addi r4, r1, 0x18
/* 8076F7A0  4B 8A A0 59 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8076F7A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8076F7A8  41 82 00 1C */	beq lbl_8076F7C4
/* 8076F7AC  28 1B 00 00 */	cmplwi r27, 0
/* 8076F7B0  41 82 00 0C */	beq lbl_8076F7BC
/* 8076F7B4  80 1B 00 04 */	lwz r0, 4(r27)
/* 8076F7B8  48 00 00 08 */	b lbl_8076F7C0
lbl_8076F7BC:
/* 8076F7BC  38 00 FF FF */	li r0, -1
lbl_8076F7C0:
/* 8076F7C0  90 1E 06 AC */	stw r0, 0x6ac(r30)
lbl_8076F7C4:
/* 8076F7C4  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 8076F7C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8076F7CC  FC 00 00 1E */	fctiwz f0, f0
/* 8076F7D0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8076F7D4  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 8076F7D8  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8076F7DC  3C 60 80 77 */	lis r3, s_kusa_sub__FPvPv@ha /* 0x8076F59C@ha */
/* 8076F7E0  38 63 F5 9C */	addi r3, r3, s_kusa_sub__FPvPv@l /* 0x8076F59C@l */
/* 8076F7E4  7F 64 DB 78 */	mr r4, r27
/* 8076F7E8  4B 8B 1B 51 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8076F7EC  7C 7C 1B 79 */	or. r28, r3, r3
/* 8076F7F0  41 82 09 E4 */	beq lbl_807701D4
/* 8076F7F4  A8 1B 05 B4 */	lha r0, 0x5b4(r27)
/* 8076F7F8  2C 00 00 01 */	cmpwi r0, 1
/* 8076F7FC  41 81 00 44 */	bgt lbl_8076F840
/* 8076F800  C0 3B 0A 48 */	lfs f1, 0xa48(r27)
/* 8076F804  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8076F808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076F80C  40 80 00 34 */	bge lbl_8076F840
/* 8076F810  38 00 00 0A */	li r0, 0xa
/* 8076F814  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 8076F818  38 00 00 00 */	li r0, 0
/* 8076F81C  B0 1B 13 72 */	sth r0, 0x1372(r27)
/* 8076F820  38 00 00 02 */	li r0, 2
/* 8076F824  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076F828  7F 63 DB 78 */	mr r3, r27
/* 8076F82C  38 80 00 4C */	li r4, 0x4c
/* 8076F830  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8076F834  38 A0 00 02 */	li r5, 2
/* 8076F838  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F83C  4B FF C6 45 */	bl anm_init__FP11e_rdy_classifUcf
lbl_8076F840:
/* 8076F840  A8 1B 05 B4 */	lha r0, 0x5b4(r27)
/* 8076F844  28 00 00 0D */	cmplwi r0, 0xd
/* 8076F848  41 81 09 40 */	bgt lbl_80770188
/* 8076F84C  3C 60 80 78 */	lis r3, lit_5899@ha /* 0x8077A1F8@ha */
/* 8076F850  38 63 A1 F8 */	addi r3, r3, lit_5899@l /* 0x8077A1F8@l */
/* 8076F854  54 00 10 3A */	slwi r0, r0, 2
/* 8076F858  7C 03 00 2E */	lwzx r0, r3, r0
/* 8076F85C  7C 09 03 A6 */	mtctr r0
/* 8076F860  4E 80 04 20 */	bctr 
lbl_8076F864:
/* 8076F864  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076F868  2C 00 00 00 */	cmpwi r0, 0
/* 8076F86C  40 82 09 1C */	bne lbl_80770188
/* 8076F870  7F 63 DB 78 */	mr r3, r27
/* 8076F874  38 80 00 4D */	li r4, 0x4d
/* 8076F878  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8076F87C  38 A0 00 02 */	li r5, 2
/* 8076F880  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F884  4B FF C5 FD */	bl anm_init__FP11e_rdy_classifUcf
/* 8076F888  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8076F88C  4B AF 80 C9 */	bl cM_rndF__Ff
/* 8076F890  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8076F894  EC 00 08 2A */	fadds f0, f0, f1
/* 8076F898  FC 00 00 1E */	fctiwz f0, f0
/* 8076F89C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8076F8A0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8076F8A4  B0 1B 0A 60 */	sth r0, 0xa60(r27)
/* 8076F8A8  38 00 00 01 */	li r0, 1
/* 8076F8AC  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076F8B0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8076F8B4  4B AF 80 D9 */	bl cM_rndFX__Ff
/* 8076F8B8  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 8076F8BC  EC 20 08 2A */	fadds f1, f0, f1
/* 8076F8C0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8076F8C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8076F8C8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8076F8CC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8076F8D0  4B AF 80 BD */	bl cM_rndFX__Ff
/* 8076F8D4  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 8076F8D8  EC 20 08 2A */	fadds f1, f0, f1
/* 8076F8DC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8076F8E0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8076F8E4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8076F8E8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8076F8EC  4B AF 7D 89 */	bl cM_atan2s__Fff
/* 8076F8F0  B0 7B 05 C8 */	sth r3, 0x5c8(r27)
/* 8076F8F4  48 00 08 94 */	b lbl_80770188
lbl_8076F8F8:
/* 8076F8F8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076F8FC  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076F900  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 8076F904  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076F908  2C 00 00 00 */	cmpwi r0, 0
/* 8076F90C  40 82 08 7C */	bne lbl_80770188
/* 8076F910  7F 63 DB 78 */	mr r3, r27
/* 8076F914  38 80 00 1E */	li r4, 0x1e
/* 8076F918  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8076F91C  38 A0 00 02 */	li r5, 2
/* 8076F920  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F924  4B FF C5 5D */	bl anm_init__FP11e_rdy_classifUcf
/* 8076F928  38 00 00 00 */	li r0, 0
/* 8076F92C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076F930  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8076F934  4B AF 80 21 */	bl cM_rndF__Ff
/* 8076F938  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8076F93C  EC 00 08 2A */	fadds f0, f0, f1
/* 8076F940  FC 00 00 1E */	fctiwz f0, f0
/* 8076F944  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8076F948  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8076F94C  B0 1B 0A 60 */	sth r0, 0xa60(r27)
/* 8076F950  48 00 08 38 */	b lbl_80770188
lbl_8076F954:
/* 8076F954  A8 1B 13 70 */	lha r0, 0x1370(r27)
/* 8076F958  2C 00 00 0B */	cmpwi r0, 0xb
/* 8076F95C  40 82 00 90 */	bne lbl_8076F9EC
/* 8076F960  A8 1B 13 72 */	lha r0, 0x1372(r27)
/* 8076F964  2C 00 00 46 */	cmpwi r0, 0x46
/* 8076F968  40 81 00 3C */	ble lbl_8076F9A4
/* 8076F96C  38 61 00 50 */	addi r3, r1, 0x50
/* 8076F970  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8076F974  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8076F978  4B AF 71 BD */	bl __mi__4cXyzCFRC3Vec
/* 8076F97C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8076F980  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8076F984  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8076F988  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8076F98C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8076F990  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8076F994  4B AF 7C E1 */	bl cM_atan2s__Fff
/* 8076F998  38 03 FC 18 */	addi r0, r3, -1000
/* 8076F99C  B0 1B 05 C8 */	sth r0, 0x5c8(r27)
/* 8076F9A0  48 00 07 E8 */	b lbl_80770188
lbl_8076F9A4:
/* 8076F9A4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8076F9A8  40 81 07 E0 */	ble lbl_80770188
/* 8076F9AC  A8 1B 0A 4C */	lha r0, 0xa4c(r27)
/* 8076F9B0  B0 1B 05 C8 */	sth r0, 0x5c8(r27)
/* 8076F9B4  A8 1B 13 72 */	lha r0, 0x1372(r27)
/* 8076F9B8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8076F9BC  40 82 07 CC */	bne lbl_80770188
/* 8076F9C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007001C@ha */
/* 8076F9C4  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0007001C@l */
/* 8076F9C8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8076F9CC  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 8076F9D0  38 81 00 28 */	addi r4, r1, 0x28
/* 8076F9D4  38 A0 FF FF */	li r5, -1
/* 8076F9D8  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 8076F9DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8076F9E0  7D 89 03 A6 */	mtctr r12
/* 8076F9E4  4E 80 04 21 */	bctrl 
/* 8076F9E8  48 00 07 A0 */	b lbl_80770188
lbl_8076F9EC:
/* 8076F9EC  A8 1B 13 72 */	lha r0, 0x1372(r27)
/* 8076F9F0  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8076F9F4  40 82 07 94 */	bne lbl_80770188
/* 8076F9F8  7F 63 DB 78 */	mr r3, r27
/* 8076F9FC  38 80 00 3E */	li r4, 0x3e
/* 8076FA00  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076FA04  38 A0 00 02 */	li r5, 2
/* 8076FA08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FA0C  4B FF C4 75 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FA10  38 00 00 03 */	li r0, 3
/* 8076FA14  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FA18  A8 7B 13 70 */	lha r3, 0x1370(r27)
/* 8076FA1C  38 03 00 01 */	addi r0, r3, 1
/* 8076FA20  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 8076FA24  38 00 00 00 */	li r0, 0
/* 8076FA28  B0 1B 13 72 */	sth r0, 0x1372(r27)
/* 8076FA2C  48 00 07 5C */	b lbl_80770188
lbl_8076FA30:
/* 8076FA30  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076FA34  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076FA38  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 8076FA3C  38 61 00 44 */	addi r3, r1, 0x44
/* 8076FA40  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8076FA44  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8076FA48  4B AF 70 ED */	bl __mi__4cXyzCFRC3Vec
/* 8076FA4C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8076FA50  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8076FA54  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8076FA58  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8076FA5C  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8076FA60  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8076FA64  4B AF 7C 11 */	bl cM_atan2s__Fff
/* 8076FA68  B0 7B 05 C8 */	sth r3, 0x5c8(r27)
/* 8076FA6C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8076FA70  4B BD 76 C9 */	bl PSVECSquareMag
/* 8076FA74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076FA78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076FA7C  40 81 00 58 */	ble lbl_8076FAD4
/* 8076FA80  FC 00 08 34 */	frsqrte f0, f1
/* 8076FA84  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8076FA88  FC 44 00 32 */	fmul f2, f4, f0
/* 8076FA8C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8076FA90  FC 00 00 32 */	fmul f0, f0, f0
/* 8076FA94  FC 01 00 32 */	fmul f0, f1, f0
/* 8076FA98  FC 03 00 28 */	fsub f0, f3, f0
/* 8076FA9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8076FAA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8076FAA4  FC 00 00 32 */	fmul f0, f0, f0
/* 8076FAA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8076FAAC  FC 03 00 28 */	fsub f0, f3, f0
/* 8076FAB0  FC 02 00 32 */	fmul f0, f2, f0
/* 8076FAB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8076FAB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8076FABC  FC 01 00 32 */	fmul f0, f1, f0
/* 8076FAC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8076FAC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8076FAC8  FC 21 00 32 */	fmul f1, f1, f0
/* 8076FACC  FC 20 08 18 */	frsp f1, f1
/* 8076FAD0  48 00 00 88 */	b lbl_8076FB58
lbl_8076FAD4:
/* 8076FAD4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8076FAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076FADC  40 80 00 10 */	bge lbl_8076FAEC
/* 8076FAE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8076FAE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8076FAE8  48 00 00 70 */	b lbl_8076FB58
lbl_8076FAEC:
/* 8076FAEC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8076FAF0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8076FAF4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8076FAF8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8076FAFC  7C 03 00 00 */	cmpw r3, r0
/* 8076FB00  41 82 00 14 */	beq lbl_8076FB14
/* 8076FB04  40 80 00 40 */	bge lbl_8076FB44
/* 8076FB08  2C 03 00 00 */	cmpwi r3, 0
/* 8076FB0C  41 82 00 20 */	beq lbl_8076FB2C
/* 8076FB10  48 00 00 34 */	b lbl_8076FB44
lbl_8076FB14:
/* 8076FB14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076FB18  41 82 00 0C */	beq lbl_8076FB24
/* 8076FB1C  38 00 00 01 */	li r0, 1
/* 8076FB20  48 00 00 28 */	b lbl_8076FB48
lbl_8076FB24:
/* 8076FB24  38 00 00 02 */	li r0, 2
/* 8076FB28  48 00 00 20 */	b lbl_8076FB48
lbl_8076FB2C:
/* 8076FB2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076FB30  41 82 00 0C */	beq lbl_8076FB3C
/* 8076FB34  38 00 00 05 */	li r0, 5
/* 8076FB38  48 00 00 10 */	b lbl_8076FB48
lbl_8076FB3C:
/* 8076FB3C  38 00 00 03 */	li r0, 3
/* 8076FB40  48 00 00 08 */	b lbl_8076FB48
lbl_8076FB44:
/* 8076FB44  38 00 00 04 */	li r0, 4
lbl_8076FB48:
/* 8076FB48  2C 00 00 01 */	cmpwi r0, 1
/* 8076FB4C  40 82 00 0C */	bne lbl_8076FB58
/* 8076FB50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8076FB54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8076FB58:
/* 8076FB58  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8076FB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076FB60  40 80 06 28 */	bge lbl_80770188
/* 8076FB64  7F 63 DB 78 */	mr r3, r27
/* 8076FB68  38 80 00 4C */	li r4, 0x4c
/* 8076FB6C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076FB70  38 A0 00 02 */	li r5, 2
/* 8076FB74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FB78  4B FF C3 09 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FB7C  38 00 00 14 */	li r0, 0x14
/* 8076FB80  B0 1B 0A 60 */	sth r0, 0xa60(r27)
/* 8076FB84  38 00 00 04 */	li r0, 4
/* 8076FB88  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FB8C  48 00 05 FC */	b lbl_80770188
lbl_8076FB90:
/* 8076FB90  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076FB94  2C 00 00 00 */	cmpwi r0, 0
/* 8076FB98  40 82 05 F0 */	bne lbl_80770188
/* 8076FB9C  7F 63 DB 78 */	mr r3, r27
/* 8076FBA0  38 80 00 20 */	li r4, 0x20
/* 8076FBA4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076FBA8  38 A0 00 00 */	li r5, 0
/* 8076FBAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FBB0  4B FF C2 D1 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FBB4  38 00 00 05 */	li r0, 5
/* 8076FBB8  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FBBC  48 00 05 CC */	b lbl_80770188
lbl_8076FBC0:
/* 8076FBC0  2C 1D 00 0F */	cmpwi r29, 0xf
/* 8076FBC4  40 82 00 6C */	bne lbl_8076FC30
/* 8076FBC8  7F 83 E3 78 */	mr r3, r28
/* 8076FBCC  38 80 00 00 */	li r4, 0
/* 8076FBD0  4B 8A CF 79 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 8076FBD4  38 00 00 01 */	li r0, 1
/* 8076FBD8  98 1B 06 9C */	stb r0, 0x69c(r27)
/* 8076FBDC  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020056@ha */
/* 8076FBE0  38 03 00 56 */	addi r0, r3, 0x0056 /* 0x00020056@l */
/* 8076FBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076FBE8  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 8076FBEC  38 81 00 24 */	addi r4, r1, 0x24
/* 8076FBF0  38 A0 00 00 */	li r5, 0
/* 8076FBF4  38 C0 FF FF */	li r6, -1
/* 8076FBF8  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 8076FBFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8076FC00  7D 89 03 A6 */	mtctr r12
/* 8076FC04  4E 80 04 21 */	bctrl 
/* 8076FC08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070037@ha */
/* 8076FC0C  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00070037@l */
/* 8076FC10  90 01 00 20 */	stw r0, 0x20(r1)
/* 8076FC14  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 8076FC18  38 81 00 20 */	addi r4, r1, 0x20
/* 8076FC1C  38 A0 FF FF */	li r5, -1
/* 8076FC20  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 8076FC24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8076FC28  7D 89 03 A6 */	mtctr r12
/* 8076FC2C  4E 80 04 21 */	bctrl 
lbl_8076FC30:
/* 8076FC30  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 8076FC34  40 82 00 10 */	bne lbl_8076FC44
/* 8076FC38  A8 7B 13 70 */	lha r3, 0x1370(r27)
/* 8076FC3C  38 03 00 01 */	addi r0, r3, 1
/* 8076FC40  B0 1B 13 70 */	sth r0, 0x1370(r27)
lbl_8076FC44:
/* 8076FC44  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 8076FC48  38 80 00 01 */	li r4, 1
/* 8076FC4C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076FC50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076FC54  40 82 00 18 */	bne lbl_8076FC6C
/* 8076FC58  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076FC5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076FC60  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076FC64  41 82 00 08 */	beq lbl_8076FC6C
/* 8076FC68  38 80 00 00 */	li r4, 0
lbl_8076FC6C:
/* 8076FC6C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076FC70  41 82 05 18 */	beq lbl_80770188
/* 8076FC74  7F 63 DB 78 */	mr r3, r27
/* 8076FC78  38 80 00 07 */	li r4, 7
/* 8076FC7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076FC80  38 A0 00 02 */	li r5, 2
/* 8076FC84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FC88  4B FF C1 F9 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FC8C  38 00 00 06 */	li r0, 6
/* 8076FC90  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FC94  38 00 00 DC */	li r0, 0xdc
/* 8076FC98  B0 1B 0A 60 */	sth r0, 0xa60(r27)
/* 8076FC9C  48 00 04 EC */	b lbl_80770188
lbl_8076FCA0:
/* 8076FCA0  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076FCA4  2C 00 00 D7 */	cmpwi r0, 0xd7
/* 8076FCA8  40 82 00 4C */	bne lbl_8076FCF4
/* 8076FCAC  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002001E@ha */
/* 8076FCB0  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0002001E@l */
/* 8076FCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076FCB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8076FCBC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8076FCC0  80 63 00 00 */	lwz r3, 0(r3)
/* 8076FCC4  38 81 00 14 */	addi r4, r1, 0x14
/* 8076FCC8  38 A0 00 00 */	li r5, 0
/* 8076FCCC  38 C0 00 00 */	li r6, 0
/* 8076FCD0  38 E0 00 00 */	li r7, 0
/* 8076FCD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076FCD8  FC 40 08 90 */	fmr f2, f1
/* 8076FCDC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8076FCE0  FC 80 18 90 */	fmr f4, f3
/* 8076FCE4  39 00 00 00 */	li r8, 0
/* 8076FCE8  4B B3 BC 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8076FCEC  38 00 00 64 */	li r0, 0x64
/* 8076FCF0  B0 1B 0A 64 */	sth r0, 0xa64(r27)
lbl_8076FCF4:
/* 8076FCF4  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076FCF8  2C 00 00 8C */	cmpwi r0, 0x8c
/* 8076FCFC  40 82 00 18 */	bne lbl_8076FD14
/* 8076FD00  A8 7B 13 70 */	lha r3, 0x1370(r27)
/* 8076FD04  38 03 00 01 */	addi r0, r3, 1
/* 8076FD08  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 8076FD0C  38 00 00 00 */	li r0, 0
/* 8076FD10  B0 1B 13 72 */	sth r0, 0x1372(r27)
lbl_8076FD14:
/* 8076FD14  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076FD18  2C 00 00 64 */	cmpwi r0, 0x64
/* 8076FD1C  40 82 00 4C */	bne lbl_8076FD68
/* 8076FD20  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002001E@ha */
/* 8076FD24  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0002001E@l */
/* 8076FD28  90 01 00 10 */	stw r0, 0x10(r1)
/* 8076FD2C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8076FD30  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8076FD34  80 63 00 00 */	lwz r3, 0(r3)
/* 8076FD38  38 81 00 10 */	addi r4, r1, 0x10
/* 8076FD3C  38 A0 00 00 */	li r5, 0
/* 8076FD40  38 C0 00 00 */	li r6, 0
/* 8076FD44  38 E0 00 00 */	li r7, 0
/* 8076FD48  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076FD4C  FC 40 08 90 */	fmr f2, f1
/* 8076FD50  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8076FD54  FC 80 18 90 */	fmr f4, f3
/* 8076FD58  39 00 00 00 */	li r8, 0
/* 8076FD5C  4B B3 BC 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8076FD60  38 00 00 64 */	li r0, 0x64
/* 8076FD64  B0 1B 0A 64 */	sth r0, 0xa64(r27)
lbl_8076FD68:
/* 8076FD68  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076FD6C  2C 00 00 32 */	cmpwi r0, 0x32
/* 8076FD70  40 82 04 18 */	bne lbl_80770188
/* 8076FD74  38 00 00 07 */	li r0, 7
/* 8076FD78  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FD7C  38 00 00 03 */	li r0, 3
/* 8076FD80  B0 1B 0A 60 */	sth r0, 0xa60(r27)
/* 8076FD84  38 00 00 02 */	li r0, 2
/* 8076FD88  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8076FD8C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8076FD90  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8076FD94  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8076FD98  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8076FD9C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8076FDA0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8076FDA4  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 8076FDA8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8076FDAC  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8076FDB0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8076FDB4  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 8076FDB8  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8076FDBC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8076FDC0  98 1E 04 E2 */	stb r0, 0x4e2(r30)
/* 8076FDC4  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 8076FDC8  98 1E 04 E3 */	stb r0, 0x4e3(r30)
/* 8076FDCC  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8076FDD0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8076FDD4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8076FDD8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8076FDDC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8076FDE0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8076FDE4  38 00 00 01 */	li r0, 1
/* 8076FDE8  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 8076FDEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076FDF0  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 8076FDF4  48 00 03 94 */	b lbl_80770188
lbl_8076FDF8:
/* 8076FDF8  A8 1B 0A 60 */	lha r0, 0xa60(r27)
/* 8076FDFC  2C 00 00 01 */	cmpwi r0, 1
/* 8076FE00  40 82 00 44 */	bne lbl_8076FE44
/* 8076FE04  38 00 00 10 */	li r0, 0x10
/* 8076FE08  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 8076FE0C  38 00 00 00 */	li r0, 0
/* 8076FE10  B0 1B 13 72 */	sth r0, 0x1372(r27)
/* 8076FE14  7F 63 DB 78 */	mr r3, r27
/* 8076FE18  38 80 00 4C */	li r4, 0x4c
/* 8076FE1C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8076FE20  38 A0 00 02 */	li r5, 2
/* 8076FE24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FE28  4B FF C0 59 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FE2C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8076FE30  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8076FE34  80 63 00 00 */	lwz r3, 0(r3)
/* 8076FE38  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8076FE3C  38 80 00 00 */	li r4, 0
/* 8076FE40  4B B4 43 25 */	bl setBattleBgmOff__8Z2SeqMgrFb
lbl_8076FE44:
/* 8076FE44  A8 1B 13 72 */	lha r0, 0x1372(r27)
/* 8076FE48  2C 00 01 35 */	cmpwi r0, 0x135
/* 8076FE4C  40 82 03 3C */	bne lbl_80770188
/* 8076FE50  7F 63 DB 78 */	mr r3, r27
/* 8076FE54  38 80 00 1F */	li r4, 0x1f
/* 8076FE58  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076FE5C  38 A0 00 00 */	li r5, 0
/* 8076FE60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FE64  4B FF C0 1D */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FE68  38 00 00 00 */	li r0, 0
/* 8076FE6C  98 1B 06 9C */	stb r0, 0x69c(r27)
/* 8076FE70  38 00 00 04 */	li r0, 4
/* 8076FE74  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8076FE78  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8076FE7C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8076FE80  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8076FE84  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8076FE88  80 63 00 00 */	lwz r3, 0(r3)
/* 8076FE8C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 8076FE90  4B 89 C5 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 8076FE94  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8076FE98  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8076FE9C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8076FEA0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8076FEA4  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8076FEA8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8076FEAC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8076FEB0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8076FEB4  4B B0 10 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8076FEB8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8076FEBC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8076FEC0  7C 65 1B 78 */	mr r5, r3
/* 8076FEC4  4B BD 71 CD */	bl PSVECAdd
/* 8076FEC8  38 61 00 38 */	addi r3, r1, 0x38
/* 8076FECC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8076FED0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8076FED4  4B AF 6C 61 */	bl __mi__4cXyzCFRC3Vec
/* 8076FED8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8076FEDC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8076FEE0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8076FEE4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8076FEE8  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8076FEEC  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8076FEF0  4B AF 77 85 */	bl cM_atan2s__Fff
/* 8076FEF4  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8076FEF8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8076FEFC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8076FF00  38 00 20 00 */	li r0, 0x2000
/* 8076FF04  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8076FF08  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8076FF0C  38 00 00 11 */	li r0, 0x11
/* 8076FF10  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 8076FF14  38 00 00 00 */	li r0, 0
/* 8076FF18  B0 1B 13 72 */	sth r0, 0x1372(r27)
/* 8076FF1C  38 00 00 08 */	li r0, 8
/* 8076FF20  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FF24  48 00 02 64 */	b lbl_80770188
lbl_8076FF28:
/* 8076FF28  A8 1B 13 72 */	lha r0, 0x1372(r27)
/* 8076FF2C  2C 00 00 5F */	cmpwi r0, 0x5f
/* 8076FF30  40 82 02 58 */	bne lbl_80770188
/* 8076FF34  7F 63 DB 78 */	mr r3, r27
/* 8076FF38  38 80 00 3E */	li r4, 0x3e
/* 8076FF3C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076FF40  38 A0 00 02 */	li r5, 2
/* 8076FF44  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FF48  4B FF BF 39 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FF4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076FF50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8076FF54  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8076FF58  4B AF 6B DD */	bl __mi__4cXyzCFRC3Vec
/* 8076FF5C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8076FF60  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8076FF64  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8076FF68  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8076FF6C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8076FF70  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8076FF74  4B AF 77 01 */	bl cM_atan2s__Fff
/* 8076FF78  B0 7B 05 C8 */	sth r3, 0x5c8(r27)
/* 8076FF7C  38 00 00 12 */	li r0, 0x12
/* 8076FF80  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 8076FF84  38 00 00 00 */	li r0, 0
/* 8076FF88  B0 1B 13 72 */	sth r0, 0x1372(r27)
/* 8076FF8C  38 00 00 09 */	li r0, 9
/* 8076FF90  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FF94  38 00 00 05 */	li r0, 5
/* 8076FF98  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8076FF9C  48 00 01 EC */	b lbl_80770188
lbl_8076FFA0:
/* 8076FFA0  A8 1B 13 72 */	lha r0, 0x1372(r27)
/* 8076FFA4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8076FFA8  40 82 01 E0 */	bne lbl_80770188
/* 8076FFAC  7F 63 DB 78 */	mr r3, r27
/* 8076FFB0  38 80 00 19 */	li r4, 0x19
/* 8076FFB4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8076FFB8  38 A0 00 00 */	li r5, 0
/* 8076FFBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076FFC0  4B FF BE C1 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076FFC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070038@ha */
/* 8076FFC8  38 03 00 38 */	addi r0, r3, 0x0038 /* 0x00070038@l */
/* 8076FFCC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8076FFD0  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 8076FFD4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8076FFD8  38 A0 FF FF */	li r5, -1
/* 8076FFDC  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 8076FFE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8076FFE4  7D 89 03 A6 */	mtctr r12
/* 8076FFE8  4E 80 04 21 */	bctrl 
/* 8076FFEC  38 00 00 0A */	li r0, 0xa
/* 8076FFF0  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8076FFF4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8076FFF8  D0 1B 04 A8 */	stfs f0, 0x4a8(r27)
/* 8076FFFC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80770000  D0 1B 04 AC */	stfs f0, 0x4ac(r27)
/* 80770004  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80770008  D0 1B 04 B0 */	stfs f0, 0x4b0(r27)
/* 8077000C  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80770010  B0 1B 04 B4 */	sth r0, 0x4b4(r27)
/* 80770014  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80770018  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
/* 8077001C  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80770020  B0 1B 04 B8 */	sth r0, 0x4b8(r27)
/* 80770024  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80770028  98 1B 04 BA */	stb r0, 0x4ba(r27)
/* 8077002C  88 1B 04 E3 */	lbz r0, 0x4e3(r27)
/* 80770030  98 1B 04 BB */	stb r0, 0x4bb(r27)
/* 80770034  48 00 01 54 */	b lbl_80770188
lbl_80770038:
/* 80770038  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 8077003C  38 80 00 01 */	li r4, 1
/* 80770040  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80770044  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80770048  40 82 00 18 */	bne lbl_80770060
/* 8077004C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80770050  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80770054  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80770058  41 82 00 08 */	beq lbl_80770060
/* 8077005C  38 80 00 00 */	li r4, 0
lbl_80770060:
/* 80770060  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80770064  41 82 01 24 */	beq lbl_80770188
/* 80770068  38 00 00 0B */	li r0, 0xb
/* 8077006C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80770070  7F 63 DB 78 */	mr r3, r27
/* 80770074  38 80 00 1A */	li r4, 0x1a
/* 80770078  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8077007C  38 A0 00 00 */	li r5, 0
/* 80770080  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770084  4B FF BD FD */	bl anm_init__FP11e_rdy_classifUcf
/* 80770088  38 00 00 01 */	li r0, 1
/* 8077008C  98 1B 0A 8C */	stb r0, 0xa8c(r27)
/* 80770090  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80770094  D0 1B 0A 94 */	stfs f0, 0xa94(r27)
/* 80770098  38 00 00 1E */	li r0, 0x1e
/* 8077009C  B0 1B 0A 66 */	sth r0, 0xa66(r27)
/* 807700A0  48 00 00 E8 */	b lbl_80770188
lbl_807700A4:
/* 807700A4  C0 3B 0A 90 */	lfs f1, 0xa90(r27)
/* 807700A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807700AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807700B0  4C 40 13 82 */	cror 2, 0, 2
/* 807700B4  40 82 00 D4 */	bne lbl_80770188
/* 807700B8  7F 63 DB 78 */	mr r3, r27
/* 807700BC  38 80 00 31 */	li r4, 0x31
/* 807700C0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807700C4  38 A0 00 00 */	li r5, 0
/* 807700C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807700CC  4B FF BD B5 */	bl anm_init__FP11e_rdy_classifUcf
/* 807700D0  38 00 00 0C */	li r0, 0xc
/* 807700D4  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807700D8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807700DC  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 807700E0  48 00 00 A8 */	b lbl_80770188
lbl_807700E4:
/* 807700E4  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 807700E8  38 80 00 01 */	li r4, 1
/* 807700EC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807700F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807700F4  40 82 00 18 */	bne lbl_8077010C
/* 807700F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807700FC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80770100  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80770104  41 82 00 08 */	beq lbl_8077010C
/* 80770108  38 80 00 00 */	li r4, 0
lbl_8077010C:
/* 8077010C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80770110  41 82 00 78 */	beq lbl_80770188
/* 80770114  7F 63 DB 78 */	mr r3, r27
/* 80770118  38 80 00 30 */	li r4, 0x30
/* 8077011C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80770120  38 A0 00 02 */	li r5, 2
/* 80770124  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80770128  4B FF BD 59 */	bl anm_init__FP11e_rdy_classifUcf
/* 8077012C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80770130  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80770134  FC 00 00 1E */	fctiwz f0, f0
/* 80770138  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8077013C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80770140  7C 00 07 34 */	extsh r0, r0
/* 80770144  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80770148  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8077014C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80770150  3C 00 43 30 */	lis r0, 0x4330
/* 80770154  90 01 00 70 */	stw r0, 0x70(r1)
/* 80770158  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8077015C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80770160  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 80770164  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80770168  38 00 00 0D */	li r0, 0xd
/* 8077016C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80770170  38 00 00 06 */	li r0, 6
/* 80770174  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80770178  38 00 00 13 */	li r0, 0x13
/* 8077017C  B0 1B 13 70 */	sth r0, 0x1370(r27)
/* 80770180  38 00 00 00 */	li r0, 0
/* 80770184  B0 1B 13 72 */	sth r0, 0x1372(r27)
lbl_80770188:
/* 80770188  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8077018C  A8 9B 05 C8 */	lha r4, 0x5c8(r27)
/* 80770190  38 A0 00 02 */	li r5, 2
/* 80770194  38 C0 10 00 */	li r6, 0x1000
/* 80770198  4B B0 04 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8077019C  A8 7B 05 C8 */	lha r3, 0x5c8(r27)
/* 807701A0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 807701A4  7C 03 00 50 */	subf r0, r3, r0
/* 807701A8  7C 00 07 34 */	extsh r0, r0
/* 807701AC  2C 00 04 00 */	cmpwi r0, 0x400
/* 807701B0  41 81 00 0C */	bgt lbl_807701BC
/* 807701B4  2C 00 FC 00 */	cmpwi r0, -1024
/* 807701B8  40 80 00 08 */	bge lbl_807701C0
lbl_807701BC:
/* 807701BC  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_807701C0:
/* 807701C0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 807701C4  FC 20 F8 90 */	fmr f1, f31
/* 807701C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807701CC  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807701D0  4B AF F8 6D */	bl cLib_addCalc2__FPffff
lbl_807701D4:
/* 807701D4  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 807701D8  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 807701DC  39 61 00 90 */	addi r11, r1, 0x90
/* 807701E0  4B BF 20 41 */	bl _restgpr_27
/* 807701E4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807701E8  7C 08 03 A6 */	mtlr r0
/* 807701EC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807701F0  4E 80 00 20 */	blr 
