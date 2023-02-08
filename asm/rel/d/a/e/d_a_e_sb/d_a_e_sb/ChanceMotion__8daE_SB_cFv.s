lbl_80783914:
/* 80783914  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80783918  7C 08 02 A6 */	mflr r0
/* 8078391C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80783920  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80783924  7C 7F 1B 78 */	mr r31, r3
/* 80783928  A8 03 05 E6 */	lha r0, 0x5e6(r3)
/* 8078392C  2C 00 00 00 */	cmpwi r0, 0
/* 80783930  41 81 01 1C */	bgt lbl_80783A4C
/* 80783934  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B0@ha */
/* 80783938  38 03 02 B0 */	addi r0, r3, 0x02B0 /* 0x000702B0@l */
/* 8078393C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80783940  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80783944  38 81 00 0C */	addi r4, r1, 0xc
/* 80783948  38 A0 00 00 */	li r5, 0
/* 8078394C  38 C0 FF FF */	li r6, -1
/* 80783950  81 9F 06 2C */	lwz r12, 0x62c(r31)
/* 80783954  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80783958  7D 89 03 A6 */	mtctr r12
/* 8078395C  4E 80 04 21 */	bctrl 
/* 80783960  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 80783964  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80783968  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 8078396C  80 1F 0A F8 */	lwz r0, 0xaf8(r31)
/* 80783970  60 00 00 04 */	ori r0, r0, 4
/* 80783974  90 1F 0A F8 */	stw r0, 0xaf8(r31)
/* 80783978  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B5@ha */
/* 8078397C  38 03 02 B5 */	addi r0, r3, 0x02B5 /* 0x000702B5@l */
/* 80783980  90 01 00 08 */	stw r0, 8(r1)
/* 80783984  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80783988  38 81 00 08 */	addi r4, r1, 8
/* 8078398C  38 A0 00 00 */	li r5, 0
/* 80783990  38 C0 FF FF */	li r6, -1
/* 80783994  81 9F 06 2C */	lwz r12, 0x62c(r31)
/* 80783998  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078399C  7D 89 03 A6 */	mtctr r12
/* 807839A0  4E 80 04 21 */	bctrl 
/* 807839A4  7F E3 FB 78 */	mr r3, r31
/* 807839A8  38 80 00 06 */	li r4, 6
/* 807839AC  38 A0 00 00 */	li r5, 0
/* 807839B0  3C C0 80 78 */	lis r6, lit_3906@ha /* 0x80784DE8@ha */
/* 807839B4  C0 26 4D E8 */	lfs f1, lit_3906@l(r6)  /* 0x80784DE8@l */
/* 807839B8  3C C0 80 78 */	lis r6, l_HIO@ha /* 0x80784F84@ha */
/* 807839BC  38 C6 4F 84 */	addi r6, r6, l_HIO@l /* 0x80784F84@l */
/* 807839C0  C0 46 00 30 */	lfs f2, 0x30(r6)
/* 807839C4  4B FF E0 89 */	bl SetAnm__8daE_SB_cFiiff
/* 807839C8  7F E3 FB 78 */	mr r3, r31
/* 807839CC  3C 80 00 01 */	lis r4, 0x0001 /* 0x000084A3@ha */
/* 807839D0  38 84 84 A3 */	addi r4, r4, 0x84A3 /* 0x000084A3@l */
/* 807839D4  4B FF E0 09 */	bl Particle_Set__8daE_SB_cFUs
/* 807839D8  7F E3 FB 78 */	mr r3, r31
/* 807839DC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008475@ha */
/* 807839E0  38 84 84 75 */	addi r4, r4, 0x8475 /* 0x00008475@l */
/* 807839E4  4B FF DF F9 */	bl Particle_Set__8daE_SB_cFUs
/* 807839E8  7F E3 FB 78 */	mr r3, r31
/* 807839EC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008476@ha */
/* 807839F0  38 84 84 76 */	addi r4, r4, 0x8476 /* 0x00008476@l */
/* 807839F4  4B FF DF E9 */	bl Particle_Set__8daE_SB_cFUs
/* 807839F8  38 00 00 00 */	li r0, 0
/* 807839FC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80783A00  88 9F 06 1A */	lbz r4, 0x61a(r31)
/* 80783A04  28 04 00 FF */	cmplwi r4, 0xff
/* 80783A08  41 82 00 38 */	beq lbl_80783A40
/* 80783A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80783A10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80783A14  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80783A18  7C 05 07 74 */	extsb r5, r0
/* 80783A1C  4B 8B 19 45 */	bl isSwitch__10dSv_info_cCFii
/* 80783A20  2C 03 00 00 */	cmpwi r3, 0
/* 80783A24  40 82 00 1C */	bne lbl_80783A40
/* 80783A28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80783A2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80783A30  88 9F 06 1A */	lbz r4, 0x61a(r31)
/* 80783A34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80783A38  7C 05 07 74 */	extsb r5, r0
/* 80783A3C  4B 8B 17 C5 */	bl onSwitch__10dSv_info_cFii
lbl_80783A40:
/* 80783A40  38 00 00 02 */	li r0, 2
/* 80783A44  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80783A48  48 00 00 40 */	b lbl_80783A88
lbl_80783A4C:
/* 80783A4C  38 00 20 00 */	li r0, 0x2000
/* 80783A50  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 80783A54  38 00 00 01 */	li r0, 1
/* 80783A58  98 1F 05 E4 */	stb r0, 0x5e4(r31)
/* 80783A5C  38 00 00 00 */	li r0, 0
/* 80783A60  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80783A64  B0 1F 05 DA */	sth r0, 0x5da(r31)
/* 80783A68  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 80783A6C  B0 1F 05 DE */	sth r0, 0x5de(r31)
/* 80783A70  B0 1F 05 E0 */	sth r0, 0x5e0(r31)
/* 80783A74  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
/* 80783A78  3C 80 80 78 */	lis r4, lit_3758@ha /* 0x80784DD8@ha */
/* 80783A7C  C0 04 4D D8 */	lfs f0, lit_3758@l(r4)  /* 0x80784DD8@l */
/* 80783A80  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 80783A84  4B FF E3 51 */	bl Shield_Motion__8daE_SB_cFv
lbl_80783A88:
/* 80783A88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80783A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80783A90  7C 08 03 A6 */	mtlr r0
/* 80783A94  38 21 00 20 */	addi r1, r1, 0x20
/* 80783A98  4E 80 00 20 */	blr 
