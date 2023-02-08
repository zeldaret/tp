lbl_807726F0:
/* 807726F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807726F4  7C 08 02 A6 */	mflr r0
/* 807726F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807726FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80772700  4B BE FA DD */	bl _savegpr_29
/* 80772704  7C 7D 1B 78 */	mr r29, r3
/* 80772708  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 8077270C  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 80772710  A8 1D 0A 68 */	lha r0, 0xa68(r29)
/* 80772714  2C 00 00 00 */	cmpwi r0, 0
/* 80772718  40 82 00 70 */	bne lbl_80772788
/* 8077271C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 80772720  2C 00 00 05 */	cmpwi r0, 5
/* 80772724  41 82 00 64 */	beq lbl_80772788
/* 80772728  3C 60 80 77 */	lis r3, s_command3_sub__FPvPv@ha /* 0x8076EB4C@ha */
/* 8077272C  38 63 EB 4C */	addi r3, r3, s_command3_sub__FPvPv@l /* 0x8076EB4C@l */
/* 80772730  7F A4 EB 78 */	mr r4, r29
/* 80772734  4B 8A EC 05 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80772738  28 03 00 00 */	cmplwi r3, 0
/* 8077273C  40 82 00 4C */	bne lbl_80772788
/* 80772740  38 00 00 05 */	li r0, 5
/* 80772744  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80772748  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8077274C  4B AF 52 09 */	bl cM_rndF__Ff
/* 80772750  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80772754  EC 00 08 2A */	fadds f0, f0, f1
/* 80772758  FC 00 00 1E */	fctiwz f0, f0
/* 8077275C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80772760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80772764  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 80772768  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8077276C  4B AF 51 E9 */	bl cM_rndF__Ff
/* 80772770  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80772774  EC 00 08 2A */	fadds f0, f0, f1
/* 80772778  FC 00 00 1E */	fctiwz f0, f0
/* 8077277C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80772780  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80772784  B0 1D 0A 60 */	sth r0, 0xa60(r29)
lbl_80772788:
/* 80772788  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8077278C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80772790  FC 00 00 1E */	fctiwz f0, f0
/* 80772794  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80772798  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8077279C  3B C0 00 01 */	li r30, 1
/* 807727A0  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807727A4  28 00 00 0D */	cmplwi r0, 0xd
/* 807727A8  41 81 03 08 */	bgt lbl_80772AB0
/* 807727AC  3C 60 80 78 */	lis r3, lit_6943@ha /* 0x8077A2DC@ha */
/* 807727B0  38 63 A2 DC */	addi r3, r3, lit_6943@l /* 0x8077A2DC@l */
/* 807727B4  54 00 10 3A */	slwi r0, r0, 2
/* 807727B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 807727BC  7C 09 03 A6 */	mtctr r0
/* 807727C0  4E 80 04 20 */	bctr 
lbl_807727C4:
/* 807727C4  3B C0 00 00 */	li r30, 0
/* 807727C8  7F A3 EB 78 */	mr r3, r29
/* 807727CC  38 80 00 4C */	li r4, 0x4c
/* 807727D0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807727D4  38 A0 00 02 */	li r5, 2
/* 807727D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807727DC  4B FF 96 A5 */	bl anm_init__FP11e_rdy_classifUcf
/* 807727E0  38 00 00 01 */	li r0, 1
/* 807727E4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807727E8  48 00 02 C8 */	b lbl_80772AB0
lbl_807727EC:
/* 807727EC  3B C0 00 00 */	li r30, 0
/* 807727F0  48 00 02 C0 */	b lbl_80772AB0
lbl_807727F4:
/* 807727F4  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 807727F8  2C 00 00 00 */	cmpwi r0, 0
/* 807727FC  40 82 02 B4 */	bne lbl_80772AB0
/* 80772800  38 00 00 00 */	li r0, 0
/* 80772804  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80772808  48 00 02 A8 */	b lbl_80772AB0
lbl_8077280C:
/* 8077280C  A8 1D 0A 62 */	lha r0, 0xa62(r29)
/* 80772810  2C 00 00 01 */	cmpwi r0, 1
/* 80772814  40 82 00 1C */	bne lbl_80772830
/* 80772818  7F A3 EB 78 */	mr r3, r29
/* 8077281C  38 80 00 1E */	li r4, 0x1e
/* 80772820  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80772824  38 A0 00 02 */	li r5, 2
/* 80772828  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 8077282C  4B FF 96 55 */	bl anm_init__FP11e_rdy_classifUcf
lbl_80772830:
/* 80772830  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80772834  2C 00 00 0A */	cmpwi r0, 0xa
/* 80772838  40 82 00 1C */	bne lbl_80772854
/* 8077283C  7F A3 EB 78 */	mr r3, r29
/* 80772840  38 80 00 4C */	li r4, 0x4c
/* 80772844  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80772848  38 A0 00 02 */	li r5, 2
/* 8077284C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772850  4B FF 96 31 */	bl anm_init__FP11e_rdy_classifUcf
lbl_80772854:
/* 80772854  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80772858  2C 00 00 00 */	cmpwi r0, 0
/* 8077285C  40 82 02 54 */	bne lbl_80772AB0
/* 80772860  38 00 00 07 */	li r0, 7
/* 80772864  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80772868  38 00 00 00 */	li r0, 0
/* 8077286C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80772870  48 00 02 40 */	b lbl_80772AB0
lbl_80772874:
/* 80772874  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80772878  2C 00 00 00 */	cmpwi r0, 0
/* 8077287C  40 82 02 34 */	bne lbl_80772AB0
/* 80772880  7F A3 EB 78 */	mr r3, r29
/* 80772884  38 80 00 45 */	li r4, 0x45
/* 80772888  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8077288C  38 A0 00 00 */	li r5, 0
/* 80772890  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772894  4B FF 95 ED */	bl anm_init__FP11e_rdy_classifUcf
/* 80772898  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 8077289C  38 80 00 08 */	li r4, 8
/* 807728A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807728A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807728A8  3C A5 00 02 */	addis r5, r5, 2
/* 807728AC  38 C0 00 80 */	li r6, 0x80
/* 807728B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807728B4  4B 8C 9A 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807728B8  7C 64 1B 78 */	mr r4, r3
/* 807728BC  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 807728C0  38 A0 00 00 */	li r5, 0
/* 807728C4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807728C8  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 807728CC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807728D0  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 807728D4  4B 89 E5 9D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807728D8  38 00 00 0B */	li r0, 0xb
/* 807728DC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807728E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807728E4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807728E8  48 00 01 C8 */	b lbl_80772AB0
lbl_807728EC:
/* 807728EC  38 00 00 04 */	li r0, 4
/* 807728F0  98 1D 0A 98 */	stb r0, 0xa98(r29)
/* 807728F4  2C 04 00 0A */	cmpwi r4, 0xa
/* 807728F8  41 80 00 0C */	blt lbl_80772904
/* 807728FC  38 00 00 01 */	li r0, 1
/* 80772900  98 1D 0A 72 */	stb r0, 0xa72(r29)
lbl_80772904:
/* 80772904  2C 04 00 14 */	cmpwi r4, 0x14
/* 80772908  40 82 00 2C */	bne lbl_80772934
/* 8077290C  3C 00 00 08 */	lis r0, 8
/* 80772910  90 01 00 08 */	stw r0, 8(r1)
/* 80772914  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80772918  38 81 00 08 */	addi r4, r1, 8
/* 8077291C  38 A0 00 00 */	li r5, 0
/* 80772920  38 C0 FF FF */	li r6, -1
/* 80772924  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80772928  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077292C  7D 89 03 A6 */	mtctr r12
/* 80772930  4E 80 04 21 */	bctrl 
lbl_80772934:
/* 80772934  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80772938  38 80 00 01 */	li r4, 1
/* 8077293C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80772940  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80772944  40 82 00 18 */	bne lbl_8077295C
/* 80772948  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077294C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80772950  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80772954  41 82 00 08 */	beq lbl_8077295C
/* 80772958  38 80 00 00 */	li r4, 0
lbl_8077295C:
/* 8077295C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80772960  41 82 01 50 */	beq lbl_80772AB0
/* 80772964  7F A3 EB 78 */	mr r3, r29
/* 80772968  38 80 00 46 */	li r4, 0x46
/* 8077296C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80772970  38 A0 00 02 */	li r5, 2
/* 80772974  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80772978  4B FF 95 09 */	bl anm_init__FP11e_rdy_classifUcf
/* 8077297C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80772980  4B AF 4F D5 */	bl cM_rndF__Ff
/* 80772984  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80772988  EC 00 08 2A */	fadds f0, f0, f1
/* 8077298C  FC 00 00 1E */	fctiwz f0, f0
/* 80772990  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80772994  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80772998  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8077299C  38 00 00 0C */	li r0, 0xc
/* 807729A0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807729A4  48 00 01 0C */	b lbl_80772AB0
lbl_807729A8:
/* 807729A8  38 00 00 04 */	li r0, 4
/* 807729AC  98 1D 0A 98 */	stb r0, 0xa98(r29)
/* 807729B0  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 807729B4  2C 00 00 00 */	cmpwi r0, 0
/* 807729B8  40 82 00 8C */	bne lbl_80772A44
/* 807729BC  88 1D 0A 74 */	lbz r0, 0xa74(r29)
/* 807729C0  7C 00 07 75 */	extsb. r0, r0
/* 807729C4  40 82 00 80 */	bne lbl_80772A44
/* 807729C8  4B AC 58 65 */	bl getStatus__12dMsgObject_cFv
/* 807729CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 807729D0  20 60 00 01 */	subfic r3, r0, 1
/* 807729D4  30 03 FF FF */	addic r0, r3, -1
/* 807729D8  7C 00 19 10 */	subfe r0, r0, r3
/* 807729DC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 807729E0  40 82 00 64 */	bne lbl_80772A44
/* 807729E4  7F A3 EB 78 */	mr r3, r29
/* 807729E8  38 80 00 44 */	li r4, 0x44
/* 807729EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807729F0  38 A0 00 00 */	li r5, 0
/* 807729F4  FC 40 08 90 */	fmr f2, f1
/* 807729F8  4B FF 94 89 */	bl anm_init__FP11e_rdy_classifUcf
/* 807729FC  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 80772A00  38 80 00 0B */	li r4, 0xb
/* 80772A04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80772A08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80772A0C  3C A5 00 02 */	addis r5, r5, 2
/* 80772A10  38 C0 00 80 */	li r6, 0x80
/* 80772A14  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80772A18  4B 8C 98 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80772A1C  7C 64 1B 78 */	mr r4, r3
/* 80772A20  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 80772A24  38 A0 00 00 */	li r5, 0
/* 80772A28  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80772A2C  FC 40 08 90 */	fmr f2, f1
/* 80772A30  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80772A34  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80772A38  4B 89 E4 39 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80772A3C  38 00 00 0D */	li r0, 0xd
/* 80772A40  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80772A44:
/* 80772A44  38 00 00 01 */	li r0, 1
/* 80772A48  98 1D 0A 72 */	stb r0, 0xa72(r29)
/* 80772A4C  48 00 00 64 */	b lbl_80772AB0
lbl_80772A50:
/* 80772A50  2C 04 00 03 */	cmpwi r4, 3
/* 80772A54  41 81 00 14 */	bgt lbl_80772A68
/* 80772A58  38 00 00 01 */	li r0, 1
/* 80772A5C  98 1D 0A 72 */	stb r0, 0xa72(r29)
/* 80772A60  38 00 00 04 */	li r0, 4
/* 80772A64  98 1D 0A 98 */	stb r0, 0xa98(r29)
lbl_80772A68:
/* 80772A68  2C 04 00 02 */	cmpwi r4, 2
/* 80772A6C  40 82 00 0C */	bne lbl_80772A78
/* 80772A70  38 00 00 01 */	li r0, 1
/* 80772A74  98 1D 0A 73 */	stb r0, 0xa73(r29)
lbl_80772A78:
/* 80772A78  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80772A7C  38 80 00 01 */	li r4, 1
/* 80772A80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80772A84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80772A88  40 82 00 18 */	bne lbl_80772AA0
/* 80772A8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80772A90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80772A94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80772A98  41 82 00 08 */	beq lbl_80772AA0
/* 80772A9C  38 80 00 00 */	li r4, 0
lbl_80772AA0:
/* 80772AA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80772AA4  41 82 00 0C */	beq lbl_80772AB0
/* 80772AA8  38 00 00 00 */	li r0, 0
/* 80772AAC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80772AB0:
/* 80772AB0  7F C0 07 75 */	extsb. r0, r30
/* 80772AB4  41 82 00 18 */	beq lbl_80772ACC
/* 80772AB8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80772ABC  A8 9D 0A 4C */	lha r4, 0xa4c(r29)
/* 80772AC0  38 A0 00 04 */	li r5, 4
/* 80772AC4  38 C0 10 00 */	li r6, 0x1000
/* 80772AC8  4B AF DB 41 */	bl cLib_addCalcAngleS2__FPssss
lbl_80772ACC:
/* 80772ACC  C0 3D 0A 48 */	lfs f1, 0xa48(r29)
/* 80772AD0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80772AD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80772AD8  40 80 00 18 */	bge lbl_80772AF0
/* 80772ADC  38 00 00 05 */	li r0, 5
/* 80772AE0  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80772AE4  38 00 00 00 */	li r0, 0
/* 80772AE8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80772AEC  98 1D 13 65 */	stb r0, 0x1365(r29)
lbl_80772AF0:
/* 80772AF0  38 60 00 00 */	li r3, 0
/* 80772AF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80772AF8  4B BE F7 31 */	bl _restgpr_29
/* 80772AFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80772B00  7C 08 03 A6 */	mtlr r0
/* 80772B04  38 21 00 30 */	addi r1, r1, 0x30
/* 80772B08  4E 80 00 20 */	blr 
