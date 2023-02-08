lbl_80786844:
/* 80786844  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80786848  7C 08 02 A6 */	mflr r0
/* 8078684C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80786850  39 61 00 50 */	addi r11, r1, 0x50
/* 80786854  4B BD B9 89 */	bl _savegpr_29
/* 80786858  7C 7E 1B 78 */	mr r30, r3
/* 8078685C  3C 60 80 79 */	lis r3, lit_3908@ha /* 0x80789C38@ha */
/* 80786860  3B E3 9C 38 */	addi r31, r3, lit_3908@l /* 0x80789C38@l */
/* 80786864  38 60 00 00 */	li r3, 0
/* 80786868  3C 80 00 40 */	lis r4, 0x0040 /* 0x00400020@ha */
/* 8078686C  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x00400020@l */
/* 80786870  38 00 00 03 */	li r0, 3
/* 80786874  7C 09 03 A6 */	mtctr r0
lbl_80786878:
/* 80786878  38 03 09 98 */	addi r0, r3, 0x998
/* 8078687C  7C 9E 01 2E */	stwx r4, r30, r0
/* 80786880  38 63 01 38 */	addi r3, r3, 0x138
/* 80786884  42 00 FF F4 */	bdnz lbl_80786878
/* 80786888  38 7E 09 34 */	addi r3, r30, 0x934
/* 8078688C  38 80 00 FF */	li r4, 0xff
/* 80786890  38 A0 00 00 */	li r5, 0
/* 80786894  7F C6 F3 78 */	mr r6, r30
/* 80786898  4B 8F CF C9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8078689C  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807868A0  2C 00 00 01 */	cmpwi r0, 1
/* 807868A4  41 82 01 7C */	beq lbl_80786A20
/* 807868A8  40 80 00 10 */	bge lbl_807868B8
/* 807868AC  2C 00 00 00 */	cmpwi r0, 0
/* 807868B0  40 80 00 14 */	bge lbl_807868C4
/* 807868B4  48 00 02 A4 */	b lbl_80786B58
lbl_807868B8:
/* 807868B8  2C 00 00 03 */	cmpwi r0, 3
/* 807868BC  40 80 02 9C */	bge lbl_80786B58
/* 807868C0  48 00 01 BC */	b lbl_80786A7C
lbl_807868C4:
/* 807868C4  38 00 00 01 */	li r0, 1
/* 807868C8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807868CC  7F C3 F3 78 */	mr r3, r30
/* 807868D0  38 80 00 07 */	li r4, 7
/* 807868D4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807868D8  38 A0 00 00 */	li r5, 0
/* 807868DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807868E0  4B FF E8 A9 */	bl anm_init__FP10e_sf_classifUcf
/* 807868E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807868E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807868EC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807868F0  54 00 00 3E */	slwi r0, r0, 0
/* 807868F4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 807868F8  38 80 00 00 */	li r4, 0
/* 807868FC  90 9E 05 5C */	stw r4, 0x55c(r30)
/* 80786900  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 80786904  38 63 A0 7C */	addi r3, r3, l_HIO@l /* 0x8078A07C@l */
/* 80786908  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078690C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80786910  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80786914  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80786918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078691C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80786920  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80786924  90 81 00 08 */	stw r4, 8(r1)
/* 80786928  38 00 FF FF */	li r0, -1
/* 8078692C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80786930  90 81 00 10 */	stw r4, 0x10(r1)
/* 80786934  90 81 00 14 */	stw r4, 0x14(r1)
/* 80786938  90 81 00 18 */	stw r4, 0x18(r1)
/* 8078693C  38 80 00 00 */	li r4, 0
/* 80786940  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081C9@ha */
/* 80786944  38 A5 81 C9 */	addi r5, r5, 0x81C9 /* 0x000081C9@l */
/* 80786948  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8078694C  38 E0 00 00 */	li r7, 0
/* 80786950  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80786954  39 21 00 28 */	addi r9, r1, 0x28
/* 80786958  39 40 00 FF */	li r10, 0xff
/* 8078695C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80786960  4B 8C 61 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80786964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80786968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078696C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80786970  38 9E 08 4C */	addi r4, r30, 0x84c
/* 80786974  4B 8E E4 DD */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80786978  2C 03 00 04 */	cmpwi r3, 4
/* 8078697C  40 82 00 4C */	bne lbl_807869C8
/* 80786980  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80786984  38 80 00 00 */	li r4, 0
/* 80786988  90 81 00 08 */	stw r4, 8(r1)
/* 8078698C  38 00 FF FF */	li r0, -1
/* 80786990  90 01 00 0C */	stw r0, 0xc(r1)
/* 80786994  90 81 00 10 */	stw r4, 0x10(r1)
/* 80786998  90 81 00 14 */	stw r4, 0x14(r1)
/* 8078699C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807869A0  38 80 00 00 */	li r4, 0
/* 807869A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081C8@ha */
/* 807869A8  38 A5 81 C8 */	addi r5, r5, 0x81C8 /* 0x000081C8@l */
/* 807869AC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 807869B0  38 E0 00 00 */	li r7, 0
/* 807869B4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807869B8  39 21 00 28 */	addi r9, r1, 0x28
/* 807869BC  39 40 00 FF */	li r10, 0xff
/* 807869C0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807869C4  4B 8C 60 CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_807869C8:
/* 807869C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070093@ha */
/* 807869CC  38 03 00 93 */	addi r0, r3, 0x0093 /* 0x00070093@l */
/* 807869D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807869D4  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 807869D8  38 81 00 24 */	addi r4, r1, 0x24
/* 807869DC  38 A0 FF FF */	li r5, -1
/* 807869E0  81 9E 05 E4 */	lwz r12, 0x5e4(r30)
/* 807869E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807869E8  7D 89 03 A6 */	mtctr r12
/* 807869EC  4E 80 04 21 */	bctrl 
/* 807869F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070096@ha */
/* 807869F4  38 03 00 96 */	addi r0, r3, 0x0096 /* 0x00070096@l */
/* 807869F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 807869FC  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80786A00  38 81 00 20 */	addi r4, r1, 0x20
/* 80786A04  38 A0 00 00 */	li r5, 0
/* 80786A08  38 C0 FF FF */	li r6, -1
/* 80786A0C  81 9E 05 E4 */	lwz r12, 0x5e4(r30)
/* 80786A10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80786A14  7D 89 03 A6 */	mtctr r12
/* 80786A18  4E 80 04 21 */	bctrl 
/* 80786A1C  48 00 01 3C */	b lbl_80786B58
lbl_80786A20:
/* 80786A20  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80786A24  38 80 00 01 */	li r4, 1
/* 80786A28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80786A2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80786A30  40 82 00 18 */	bne lbl_80786A48
/* 80786A34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80786A38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80786A3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80786A40  41 82 00 08 */	beq lbl_80786A48
/* 80786A44  38 80 00 00 */	li r4, 0
lbl_80786A48:
/* 80786A48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80786A4C  41 82 01 0C */	beq lbl_80786B58
/* 80786A50  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80786A54  4B AE 0F 01 */	bl cM_rndF__Ff
/* 80786A58  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80786A5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80786A60  FC 00 00 1E */	fctiwz f0, f0
/* 80786A64  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80786A68  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80786A6C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80786A70  38 00 00 02 */	li r0, 2
/* 80786A74  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80786A78  48 00 00 E0 */	b lbl_80786B58
lbl_80786A7C:
/* 80786A7C  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80786A80  2C 00 00 28 */	cmpwi r0, 0x28
/* 80786A84  40 82 00 50 */	bne lbl_80786AD4
/* 80786A88  88 1E 0F FC */	lbz r0, 0xffc(r30)
/* 80786A8C  28 00 00 00 */	cmplwi r0, 0
/* 80786A90  40 82 00 44 */	bne lbl_80786AD4
/* 80786A94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80786A98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80786A9C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80786AA0  3C 80 80 79 */	lis r4, d_a_e_sf__stringBase0@ha /* 0x80789D84@ha */
/* 80786AA4  38 84 9D 84 */	addi r4, r4, d_a_e_sf__stringBase0@l /* 0x80789D84@l */
/* 80786AA8  38 84 00 05 */	addi r4, r4, 5
/* 80786AAC  4B BE 1E E9 */	bl strcmp
/* 80786AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80786AB4  40 82 00 20 */	bne lbl_80786AD4
/* 80786AB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80786ABC  2C 00 00 07 */	cmpwi r0, 7
/* 80786AC0  40 82 00 14 */	bne lbl_80786AD4
/* 80786AC4  38 00 00 0A */	li r0, 0xa
/* 80786AC8  B0 1E 0F D8 */	sth r0, 0xfd8(r30)
/* 80786ACC  38 00 00 01 */	li r0, 1
/* 80786AD0  98 1E 0F FC */	stb r0, 0xffc(r30)
lbl_80786AD4:
/* 80786AD4  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80786AD8  2C 00 00 00 */	cmpwi r0, 0
/* 80786ADC  40 82 00 7C */	bne lbl_80786B58
/* 80786AE0  38 00 00 1F */	li r0, 0x1f
/* 80786AE4  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80786AE8  38 00 00 00 */	li r0, 0
/* 80786AEC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80786AF0  3C 60 80 79 */	lis r3, ret_ct@ha /* 0x8078A0D0@ha */
/* 80786AF4  38 83 A0 D0 */	addi r4, r3, ret_ct@l /* 0x8078A0D0@l */
/* 80786AF8  80 64 00 00 */	lwz r3, 0(r4)
/* 80786AFC  38 03 00 01 */	addi r0, r3, 1
/* 80786B00  90 04 00 00 */	stw r0, 0(r4)
/* 80786B04  2C 00 00 03 */	cmpwi r0, 3
/* 80786B08  41 80 00 10 */	blt lbl_80786B18
/* 80786B0C  38 60 00 05 */	li r3, 5
/* 80786B10  38 80 FF FF */	li r4, -1
/* 80786B14  4B 8A 6F 89 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_80786B18:
/* 80786B18  38 60 00 00 */	li r3, 0
/* 80786B1C  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80786B20  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 80786B24  38 00 00 03 */	li r0, 3
/* 80786B28  7C 09 03 A6 */	mtctr r0
lbl_80786B2C:
/* 80786B2C  38 03 09 98 */	addi r0, r3, 0x998
/* 80786B30  7C 9E 01 2E */	stwx r4, r30, r0
/* 80786B34  38 63 01 38 */	addi r3, r3, 0x138
/* 80786B38  42 00 FF F4 */	bdnz lbl_80786B2C
/* 80786B3C  38 7E 09 34 */	addi r3, r30, 0x934
/* 80786B40  38 80 00 C8 */	li r4, 0xc8
/* 80786B44  38 A0 00 00 */	li r5, 0
/* 80786B48  7F C6 F3 78 */	mr r6, r30
/* 80786B4C  4B 8F CD 15 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80786B50  38 00 00 05 */	li r0, 5
/* 80786B54  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_80786B58:
/* 80786B58  39 61 00 50 */	addi r11, r1, 0x50
/* 80786B5C  4B BD B6 CD */	bl _restgpr_29
/* 80786B60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80786B64  7C 08 03 A6 */	mtlr r0
/* 80786B68  38 21 00 50 */	addi r1, r1, 0x50
/* 80786B6C  4E 80 00 20 */	blr 
