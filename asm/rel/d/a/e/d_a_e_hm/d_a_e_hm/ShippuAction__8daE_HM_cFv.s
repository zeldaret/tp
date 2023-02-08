lbl_806E29B8:
/* 806E29B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E29BC  7C 08 02 A6 */	mflr r0
/* 806E29C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E29C4  39 61 00 30 */	addi r11, r1, 0x30
/* 806E29C8  4B C7 F8 15 */	bl _savegpr_29
/* 806E29CC  7C 7F 1B 78 */	mr r31, r3
/* 806E29D0  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E29D4  3B C3 59 20 */	addi r30, r3, lit_3791@l /* 0x806E5920@l */
/* 806E29D8  A8 1F 05 D6 */	lha r0, 0x5d6(r31)
/* 806E29DC  2C 00 00 01 */	cmpwi r0, 1
/* 806E29E0  41 82 00 84 */	beq lbl_806E2A64
/* 806E29E4  40 80 01 84 */	bge lbl_806E2B68
/* 806E29E8  2C 00 00 00 */	cmpwi r0, 0
/* 806E29EC  40 80 00 08 */	bge lbl_806E29F4
/* 806E29F0  48 00 01 78 */	b lbl_806E2B68
lbl_806E29F4:
/* 806E29F4  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E29F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E29FC  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E2A00  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070243@ha */
/* 806E2A04  38 03 02 43 */	addi r0, r3, 0x0243 /* 0x00070243@l */
/* 806E2A08  90 01 00 08 */	stw r0, 8(r1)
/* 806E2A0C  38 7F 06 30 */	addi r3, r31, 0x630
/* 806E2A10  38 81 00 08 */	addi r4, r1, 8
/* 806E2A14  38 A0 FF FF */	li r5, -1
/* 806E2A18  81 9F 06 30 */	lwz r12, 0x630(r31)
/* 806E2A1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E2A20  7D 89 03 A6 */	mtctr r12
/* 806E2A24  4E 80 04 21 */	bctrl 
/* 806E2A28  7F E3 FB 78 */	mr r3, r31
/* 806E2A2C  38 80 00 0C */	li r4, 0xc
/* 806E2A30  38 A0 00 00 */	li r5, 0
/* 806E2A34  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806E2A38  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806E2A3C  4B FF E4 51 */	bl SetAnm__8daE_HM_cFiiff
/* 806E2A40  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E2A44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E2A48  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E2A4C  A8 7F 05 D6 */	lha r3, 0x5d6(r31)
/* 806E2A50  38 03 00 01 */	addi r0, r3, 1
/* 806E2A54  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 806E2A58  38 00 00 01 */	li r0, 1
/* 806E2A5C  98 1F 06 0C */	stb r0, 0x60c(r31)
/* 806E2A60  48 00 01 08 */	b lbl_806E2B68
lbl_806E2A64:
/* 806E2A64  3B A0 00 00 */	li r29, 0
/* 806E2A68  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E2A6C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E2A70  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 806E2A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E2A78  40 80 00 34 */	bge lbl_806E2AAC
/* 806E2A7C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806E2A80  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806E2A84  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 806E2A88  4B B8 DC B9 */	bl cLib_chaseF__FPfff
/* 806E2A8C  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806E5C24@ha */
/* 806E2A90  38 63 5C 24 */	addi r3, r3, l_HIO@l /* 0x806E5C24@l */
/* 806E2A94  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806E2A98  FC 00 00 1E */	fctiwz f0, f0
/* 806E2A9C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806E2AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E2AA4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 806E2AA8  48 00 00 50 */	b lbl_806E2AF8
lbl_806E2AAC:
/* 806E2AAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806E2AB0  40 82 00 1C */	bne lbl_806E2ACC
/* 806E2AB4  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 806E2AB8  2C 00 00 00 */	cmpwi r0, 0
/* 806E2ABC  40 81 00 3C */	ble lbl_806E2AF8
/* 806E2AC0  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 806E2AC4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806E2AC8  48 00 00 30 */	b lbl_806E2AF8
lbl_806E2ACC:
/* 806E2ACC  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806E2AD0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806E2AD4  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 806E2AD8  4B B8 DC 69 */	bl cLib_chaseF__FPfff
/* 806E2ADC  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 806E2AE0  2C 00 00 00 */	cmpwi r0, 0
/* 806E2AE4  40 82 00 14 */	bne lbl_806E2AF8
/* 806E2AE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E2AEC  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 806E2AF0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806E2AF4  3B A0 00 01 */	li r29, 1
lbl_806E2AF8:
/* 806E2AF8  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E2AFC  38 80 00 01 */	li r4, 1
/* 806E2B00  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E2B04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E2B08  40 82 00 18 */	bne lbl_806E2B20
/* 806E2B0C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E2B10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E2B14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E2B18  41 82 00 08 */	beq lbl_806E2B20
/* 806E2B1C  38 80 00 00 */	li r4, 0
lbl_806E2B20:
/* 806E2B20  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E2B24  41 82 00 44 */	beq lbl_806E2B68
/* 806E2B28  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 806E2B2C  28 00 00 01 */	cmplwi r0, 1
/* 806E2B30  40 82 00 38 */	bne lbl_806E2B68
/* 806E2B34  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E2B38  60 00 00 01 */	ori r0, r0, 1
/* 806E2B3C  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E2B40  38 00 00 04 */	li r0, 4
/* 806E2B44  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 806E2B48  7F E3 FB 78 */	mr r3, r31
/* 806E2B4C  48 00 0C A9 */	bl MemberClear__8daE_HM_cFv
/* 806E2B50  38 00 00 00 */	li r0, 0
/* 806E2B54  98 1F 06 0C */	stb r0, 0x60c(r31)
/* 806E2B58  90 1F 06 04 */	stw r0, 0x604(r31)
/* 806E2B5C  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E2B60  60 00 00 01 */	ori r0, r0, 1
/* 806E2B64  90 1F 09 28 */	stw r0, 0x928(r31)
lbl_806E2B68:
/* 806E2B68  39 61 00 30 */	addi r11, r1, 0x30
/* 806E2B6C  4B C7 F6 BD */	bl _restgpr_29
/* 806E2B70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E2B74  7C 08 03 A6 */	mtlr r0
/* 806E2B78  38 21 00 30 */	addi r1, r1, 0x30
/* 806E2B7C  4E 80 00 20 */	blr 
