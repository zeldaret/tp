lbl_806CD938:
/* 806CD938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CD93C  7C 08 02 A6 */	mflr r0
/* 806CD940  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CD944  39 61 00 30 */	addi r11, r1, 0x30
/* 806CD948  4B C9 48 91 */	bl _savegpr_28
/* 806CD94C  7C 7C 1B 78 */	mr r28, r3
/* 806CD950  3C 60 80 6D */	lis r3, lit_3907@ha /* 0x806D0E60@ha */
/* 806CD954  3B C3 0E 60 */	addi r30, r3, lit_3907@l /* 0x806D0E60@l */
/* 806CD958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CD95C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CD960  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 806CD964  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 806CD968  2C 00 00 00 */	cmpwi r0, 0
/* 806CD96C  40 82 03 98 */	bne lbl_806CDD04
/* 806CD970  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 806CD974  2C 00 00 05 */	cmpwi r0, 5
/* 806CD978  41 82 03 8C */	beq lbl_806CDD04
/* 806CD97C  38 7C 08 E0 */	addi r3, r28, 0x8e0
/* 806CD980  4B 9B 5E B1 */	bl Move__10dCcD_GSttsFv
/* 806CD984  38 00 00 00 */	li r0, 0
/* 806CD988  90 1C 10 50 */	stw r0, 0x1050(r28)
/* 806CD98C  38 7C 09 00 */	addi r3, r28, 0x900
/* 806CD990  4B 9B 6A D1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806CD994  28 03 00 00 */	cmplwi r3, 0
/* 806CD998  41 82 00 10 */	beq lbl_806CD9A8
/* 806CD99C  38 7C 09 00 */	addi r3, r28, 0x900
/* 806CD9A0  4B 9B 6B 59 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806CD9A4  90 7C 10 50 */	stw r3, 0x1050(r28)
lbl_806CD9A8:
/* 806CD9A8  38 7C 0A 38 */	addi r3, r28, 0xa38
/* 806CD9AC  4B 9B 6A B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806CD9B0  28 03 00 00 */	cmplwi r3, 0
/* 806CD9B4  41 82 00 10 */	beq lbl_806CD9C4
/* 806CD9B8  38 7C 0A 38 */	addi r3, r28, 0xa38
/* 806CD9BC  4B 9B 6B 3D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806CD9C0  90 7C 10 50 */	stw r3, 0x1050(r28)
lbl_806CD9C4:
/* 806CD9C4  80 1C 10 50 */	lwz r0, 0x1050(r28)
/* 806CD9C8  28 00 00 00 */	cmplwi r0, 0
/* 806CD9CC  41 82 03 38 */	beq lbl_806CDD04
/* 806CD9D0  38 60 00 00 */	li r3, 0
/* 806CD9D4  98 7C 06 A5 */	stb r3, 0x6a5(r28)
/* 806CD9D8  80 9C 10 50 */	lwz r4, 0x1050(r28)
/* 806CD9DC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 806CD9E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806CD9E4  41 82 00 20 */	beq lbl_806CDA04
/* 806CD9E8  88 04 00 14 */	lbz r0, 0x14(r4)
/* 806CD9EC  28 00 00 04 */	cmplwi r0, 4
/* 806CD9F0  41 80 00 14 */	blt lbl_806CDA04
/* 806CD9F4  88 04 00 77 */	lbz r0, 0x77(r4)
/* 806CD9F8  2C 00 00 01 */	cmpwi r0, 1
/* 806CD9FC  40 82 00 08 */	bne lbl_806CDA04
/* 806CDA00  B0 7C 05 62 */	sth r3, 0x562(r28)
lbl_806CDA04:
/* 806CDA04  7F 83 E3 78 */	mr r3, r28
/* 806CDA08  38 9C 10 50 */	addi r4, r28, 0x1050
/* 806CDA0C  4B 9B A1 F9 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806CDA10  80 7C 10 50 */	lwz r3, 0x1050(r28)
/* 806CDA14  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806CDA18  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806CDA1C  41 82 00 10 */	beq lbl_806CDA2C
/* 806CDA20  38 00 00 14 */	li r0, 0x14
/* 806CDA24  90 1C 06 80 */	stw r0, 0x680(r28)
/* 806CDA28  48 00 00 0C */	b lbl_806CDA34
lbl_806CDA2C:
/* 806CDA2C  38 00 00 0A */	li r0, 0xa
/* 806CDA30  90 1C 06 80 */	stw r0, 0x680(r28)
lbl_806CDA34:
/* 806CDA34  A0 1C 10 6C */	lhz r0, 0x106c(r28)
/* 806CDA38  28 00 00 01 */	cmplwi r0, 1
/* 806CDA3C  41 81 00 0C */	bgt lbl_806CDA48
/* 806CDA40  38 00 00 0A */	li r0, 0xa
/* 806CDA44  90 1C 06 80 */	stw r0, 0x680(r28)
lbl_806CDA48:
/* 806CDA48  80 7C 10 50 */	lwz r3, 0x1050(r28)
/* 806CDA4C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806CDA50  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 806CDA54  41 82 00 D8 */	beq lbl_806CDB2C
/* 806CDA58  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 806CDA5C  28 00 00 2C */	cmplwi r0, 0x2c
/* 806CDA60  41 82 00 CC */	beq lbl_806CDB2C
/* 806CDA64  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806CDA68  28 00 00 2D */	cmplwi r0, 0x2d
/* 806CDA6C  41 82 00 C0 */	beq lbl_806CDB2C
/* 806CDA70  7F A3 EB 78 */	mr r3, r29
/* 806CDA74  7F 84 E3 78 */	mr r4, r28
/* 806CDA78  38 A0 00 40 */	li r5, 0x40
/* 806CDA7C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806CDA80  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 806CDA84  7D 89 03 A6 */	mtctr r12
/* 806CDA88  4E 80 04 21 */	bctrl 
/* 806CDA8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CDA90  41 82 00 9C */	beq lbl_806CDB2C
/* 806CDA94  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 806CDA98  2C 00 00 00 */	cmpwi r0, 0
/* 806CDA9C  41 81 00 7C */	bgt lbl_806CDB18
/* 806CDAA0  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 806CDAA4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806CDAA8  90 1D 05 78 */	stw r0, 0x578(r29)
/* 806CDAAC  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 806CDAB0  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 806CDAB4  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 806CDAB8  38 A0 00 1F */	li r5, 0x1f
/* 806CDABC  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 806CDAC0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806CDAC4  7D 89 03 A6 */	mtctr r12
/* 806CDAC8  4E 80 04 21 */	bctrl 
/* 806CDACC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806CDAD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CDAD4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806CDAD8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CDADC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806CDAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CDAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CDAE8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806CDAEC  38 80 00 03 */	li r4, 3
/* 806CDAF0  38 A0 00 1F */	li r5, 0x1f
/* 806CDAF4  38 C1 00 08 */	addi r6, r1, 8
/* 806CDAF8  4B 9A 1F 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 806CDAFC  7F 83 E3 78 */	mr r3, r28
/* 806CDB00  48 00 06 85 */	bl setDamageEffect__8daE_GI_cFv
/* 806CDB04  7F 83 E3 78 */	mr r3, r28
/* 806CDB08  38 80 00 04 */	li r4, 4
/* 806CDB0C  38 A0 00 0A */	li r5, 0xa
/* 806CDB10  4B FF FD FD */	bl setActionMode__8daE_GI_cFii
/* 806CDB14  48 00 01 F0 */	b lbl_806CDD04
lbl_806CDB18:
/* 806CDB18  7F 83 E3 78 */	mr r3, r28
/* 806CDB1C  38 80 00 05 */	li r4, 5
/* 806CDB20  38 A0 00 00 */	li r5, 0
/* 806CDB24  4B FF FD E9 */	bl setActionMode__8daE_GI_cFii
/* 806CDB28  48 00 01 DC */	b lbl_806CDD04
lbl_806CDB2C:
/* 806CDB2C  80 7C 10 50 */	lwz r3, 0x1050(r28)
/* 806CDB30  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806CDB34  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806CDB38  41 82 00 50 */	beq lbl_806CDB88
/* 806CDB3C  80 1C 06 94 */	lwz r0, 0x694(r28)
/* 806CDB40  2C 00 00 00 */	cmpwi r0, 0
/* 806CDB44  41 82 00 14 */	beq lbl_806CDB58
/* 806CDB48  88 1C 06 9B */	lbz r0, 0x69b(r28)
/* 806CDB4C  68 00 00 01 */	xori r0, r0, 1
/* 806CDB50  98 1C 06 9B */	stb r0, 0x69b(r28)
/* 806CDB54  48 00 00 28 */	b lbl_806CDB7C
lbl_806CDB58:
/* 806CDB58  4B B9 9D 15 */	bl cM_rnd__Fv
/* 806CDB5C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806CDB60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CDB64  40 80 00 10 */	bge lbl_806CDB74
/* 806CDB68  38 00 00 00 */	li r0, 0
/* 806CDB6C  98 1C 06 9B */	stb r0, 0x69b(r28)
/* 806CDB70  48 00 00 0C */	b lbl_806CDB7C
lbl_806CDB74:
/* 806CDB74  38 00 00 01 */	li r0, 1
/* 806CDB78  98 1C 06 9B */	stb r0, 0x69b(r28)
lbl_806CDB7C:
/* 806CDB7C  38 00 00 1E */	li r0, 0x1e
/* 806CDB80  90 1C 06 94 */	stw r0, 0x694(r28)
/* 806CDB84  48 00 00 10 */	b lbl_806CDB94
lbl_806CDB88:
/* 806CDB88  88 1C 06 9B */	lbz r0, 0x69b(r28)
/* 806CDB8C  68 00 00 01 */	xori r0, r0, 1
/* 806CDB90  98 1C 06 9B */	stb r0, 0x69b(r28)
lbl_806CDB94:
/* 806CDB94  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 806CDB98  2C 00 00 00 */	cmpwi r0, 0
/* 806CDB9C  41 81 00 18 */	bgt lbl_806CDBB4
/* 806CDBA0  7F 83 E3 78 */	mr r3, r28
/* 806CDBA4  38 80 00 04 */	li r4, 4
/* 806CDBA8  38 A0 00 0A */	li r5, 0xa
/* 806CDBAC  4B FF FD 61 */	bl setActionMode__8daE_GI_cFii
/* 806CDBB0  48 00 01 24 */	b lbl_806CDCD4
lbl_806CDBB4:
/* 806CDBB4  3B A0 00 00 */	li r29, 0
/* 806CDBB8  80 7C 10 50 */	lwz r3, 0x1050(r28)
/* 806CDBBC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806CDBC0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 806CDBC4  41 82 00 5C */	beq lbl_806CDC20
/* 806CDBC8  4B B9 9C A5 */	bl cM_rnd__Fv
/* 806CDBCC  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 806CDBD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CDBD4  4C 40 13 82 */	cror 2, 0, 2
/* 806CDBD8  40 82 00 0C */	bne lbl_806CDBE4
/* 806CDBDC  3B A0 00 01 */	li r29, 1
/* 806CDBE0  48 00 00 50 */	b lbl_806CDC30
lbl_806CDBE4:
/* 806CDBE4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806CDBE8  88 03 05 69 */	lbz r0, 0x569(r3)
/* 806CDBEC  28 00 00 04 */	cmplwi r0, 4
/* 806CDBF0  40 80 00 14 */	bge lbl_806CDC04
/* 806CDBF4  80 7C 10 50 */	lwz r3, 0x1050(r28)
/* 806CDBF8  88 03 00 77 */	lbz r0, 0x77(r3)
/* 806CDBFC  2C 00 00 01 */	cmpwi r0, 1
/* 806CDC00  40 82 00 30 */	bne lbl_806CDC30
lbl_806CDC04:
/* 806CDC04  4B B9 9C 69 */	bl cM_rnd__Fv
/* 806CDC08  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806CDC0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CDC10  4C 40 13 82 */	cror 2, 0, 2
/* 806CDC14  40 82 00 1C */	bne lbl_806CDC30
/* 806CDC18  3B A0 00 01 */	li r29, 1
/* 806CDC1C  48 00 00 14 */	b lbl_806CDC30
lbl_806CDC20:
/* 806CDC20  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 806CDC24  41 82 00 0C */	beq lbl_806CDC30
/* 806CDC28  38 00 00 01 */	li r0, 1
/* 806CDC2C  98 1C 06 A5 */	stb r0, 0x6a5(r28)
lbl_806CDC30:
/* 806CDC30  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 806CDC34  2C 00 00 03 */	cmpwi r0, 3
/* 806CDC38  41 82 00 CC */	beq lbl_806CDD04
/* 806CDC3C  40 80 00 98 */	bge lbl_806CDCD4
/* 806CDC40  2C 00 00 00 */	cmpwi r0, 0
/* 806CDC44  41 82 00 08 */	beq lbl_806CDC4C
/* 806CDC48  48 00 00 8C */	b lbl_806CDCD4
lbl_806CDC4C:
/* 806CDC4C  2C 1D 00 00 */	cmpwi r29, 0
/* 806CDC50  41 82 00 3C */	beq lbl_806CDC8C
/* 806CDC54  7F 83 E3 78 */	mr r3, r28
/* 806CDC58  48 00 01 35 */	bl setCryStop__8daE_GI_cFv
/* 806CDC5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CDC60  41 82 00 18 */	beq lbl_806CDC78
/* 806CDC64  7F 83 E3 78 */	mr r3, r28
/* 806CDC68  38 80 00 02 */	li r4, 2
/* 806CDC6C  38 A0 00 02 */	li r5, 2
/* 806CDC70  4B FF FC 9D */	bl setActionMode__8daE_GI_cFii
/* 806CDC74  48 00 00 90 */	b lbl_806CDD04
lbl_806CDC78:
/* 806CDC78  7F 83 E3 78 */	mr r3, r28
/* 806CDC7C  38 80 00 04 */	li r4, 4
/* 806CDC80  88 BC 06 9B */	lbz r5, 0x69b(r28)
/* 806CDC84  4B FF FC 89 */	bl setActionMode__8daE_GI_cFii
/* 806CDC88  48 00 00 4C */	b lbl_806CDCD4
lbl_806CDC8C:
/* 806CDC8C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806CDC90  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806CDC94  28 00 00 0A */	cmplwi r0, 0xa
/* 806CDC98  40 82 00 24 */	bne lbl_806CDCBC
/* 806CDC9C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806CDCA0  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 806CDCA4  7D 89 03 A6 */	mtctr r12
/* 806CDCA8  4E 80 04 21 */	bctrl 
/* 806CDCAC  2C 03 00 00 */	cmpwi r3, 0
/* 806CDCB0  41 82 00 0C */	beq lbl_806CDCBC
/* 806CDCB4  38 00 00 03 */	li r0, 3
/* 806CDCB8  90 1C 06 80 */	stw r0, 0x680(r28)
lbl_806CDCBC:
/* 806CDCBC  7F 83 E3 78 */	mr r3, r28
/* 806CDCC0  38 80 00 04 */	li r4, 4
/* 806CDCC4  88 BC 06 9B */	lbz r5, 0x69b(r28)
/* 806CDCC8  4B FF FC 45 */	bl setActionMode__8daE_GI_cFii
/* 806CDCCC  48 00 00 08 */	b lbl_806CDCD4
/* 806CDCD0  48 00 00 34 */	b lbl_806CDD04
lbl_806CDCD4:
/* 806CDCD4  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 806CDCD8  2C 00 00 00 */	cmpwi r0, 0
/* 806CDCDC  41 82 00 28 */	beq lbl_806CDD04
/* 806CDCE0  38 00 00 01 */	li r0, 1
/* 806CDCE4  90 1C 06 8C */	stw r0, 0x68c(r28)
/* 806CDCE8  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D1138@ha */
/* 806CDCEC  38 63 11 38 */	addi r3, r3, l_HIO@l /* 0x806D1138@l */
/* 806CDCF0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806CDCF4  FC 00 00 1E */	fctiwz f0, f0
/* 806CDCF8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806CDCFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806CDD00  90 1C 06 90 */	stw r0, 0x690(r28)
lbl_806CDD04:
/* 806CDD04  39 61 00 30 */	addi r11, r1, 0x30
/* 806CDD08  4B C9 45 1D */	bl _restgpr_28
/* 806CDD0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CDD10  7C 08 03 A6 */	mtlr r0
/* 806CDD14  38 21 00 30 */	addi r1, r1, 0x30
/* 806CDD18  4E 80 00 20 */	blr 
