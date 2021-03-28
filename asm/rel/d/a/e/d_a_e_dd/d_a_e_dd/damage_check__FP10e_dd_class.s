lbl_806A28A8:
/* 806A28A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A28AC  7C 08 02 A6 */	mflr r0
/* 806A28B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A28B4  39 61 00 30 */	addi r11, r1, 0x30
/* 806A28B8  4B CB F9 18 */	b _savegpr_26
/* 806A28BC  7C 7F 1B 78 */	mr r31, r3
/* 806A28C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A28C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A28C8  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 806A28CC  38 7F 09 1C */	addi r3, r31, 0x91c
/* 806A28D0  4B 9E 0F 60 */	b Move__10dCcD_GSttsFv
/* 806A28D4  A8 1F 06 B2 */	lha r0, 0x6b2(r31)
/* 806A28D8  2C 00 00 00 */	cmpwi r0, 0
/* 806A28DC  40 82 02 E8 */	bne lbl_806A2BC4
/* 806A28E0  3B 40 00 00 */	li r26, 0
/* 806A28E4  3B A0 00 00 */	li r29, 0
lbl_806A28E8:
/* 806A28E8  7F 9F EA 14 */	add r28, r31, r29
/* 806A28EC  3B 7C 0A 74 */	addi r27, r28, 0xa74
/* 806A28F0  7F 63 DB 78 */	mr r3, r27
/* 806A28F4  4B 9E 1B 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806A28F8  28 03 00 00 */	cmplwi r3, 0
/* 806A28FC  41 82 00 3C */	beq lbl_806A2938
/* 806A2900  80 1C 0B 10 */	lwz r0, 0xb10(r28)
/* 806A2904  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A2908  41 82 00 30 */	beq lbl_806A2938
/* 806A290C  38 00 00 06 */	li r0, 6
/* 806A2910  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
/* 806A2914  7F 63 DB 78 */	mr r3, r27
/* 806A2918  4B 9E 1B E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806A291C  90 7F 0E 1C */	stw r3, 0xe1c(r31)
/* 806A2920  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A2924  80 9F 0E 1C */	lwz r4, 0xe1c(r31)
/* 806A2928  38 A0 00 2A */	li r5, 0x2a
/* 806A292C  38 C0 00 00 */	li r6, 0
/* 806A2930  4B 9E 4B E4 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806A2934  48 00 00 14 */	b lbl_806A2948
lbl_806A2938:
/* 806A2938  3B 5A 00 01 */	addi r26, r26, 1
/* 806A293C  2C 1A 00 02 */	cmpwi r26, 2
/* 806A2940  3B BD 01 38 */	addi r29, r29, 0x138
/* 806A2944  41 80 FF A4 */	blt lbl_806A28E8
lbl_806A2948:
/* 806A2948  88 1F 0E 5A */	lbz r0, 0xe5a(r31)
/* 806A294C  7C 00 07 75 */	extsb. r0, r0
/* 806A2950  41 82 00 48 */	beq lbl_806A2998
/* 806A2954  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 806A2958  4B 9E 1B 08 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806A295C  28 03 00 00 */	cmplwi r3, 0
/* 806A2960  41 82 00 38 */	beq lbl_806A2998
/* 806A2964  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 806A2968  4B 9E 1B 90 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806A296C  90 7F 0E 1C */	stw r3, 0xe1c(r31)
/* 806A2970  80 7F 0E 1C */	lwz r3, 0xe1c(r31)
/* 806A2974  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806A2978  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806A297C  41 82 00 1C */	beq lbl_806A2998
/* 806A2980  38 00 00 06 */	li r0, 6
/* 806A2984  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
/* 806A2988  38 00 00 08 */	li r0, 8
/* 806A298C  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 806A2990  38 00 00 00 */	li r0, 0
/* 806A2994  B0 1F 06 8C */	sth r0, 0x68c(r31)
lbl_806A2998:
/* 806A2998  38 7F 0C E4 */	addi r3, r31, 0xce4
/* 806A299C  4B 9E 1A C4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806A29A0  28 03 00 00 */	cmplwi r3, 0
/* 806A29A4  41 82 01 90 */	beq lbl_806A2B34
/* 806A29A8  38 7F 0C E4 */	addi r3, r31, 0xce4
/* 806A29AC  4B 9E 1B 4C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806A29B0  90 7F 0E 1C */	stw r3, 0xe1c(r31)
/* 806A29B4  38 7F 0E 1C */	addi r3, r31, 0xe1c
/* 806A29B8  4B 9E 50 A0 */	b at_power_check__FP11dCcU_AtInfo
/* 806A29BC  88 1F 0E 3C */	lbz r0, 0xe3c(r31)
/* 806A29C0  28 00 00 10 */	cmplwi r0, 0x10
/* 806A29C4  40 82 00 54 */	bne lbl_806A2A18
/* 806A29C8  A8 1F 06 AE */	lha r0, 0x6ae(r31)
/* 806A29CC  2C 00 00 00 */	cmpwi r0, 0
/* 806A29D0  40 82 00 1C */	bne lbl_806A29EC
/* 806A29D4  38 00 00 07 */	li r0, 7
/* 806A29D8  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 806A29DC  38 00 00 00 */	li r0, 0
/* 806A29E0  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 806A29E4  38 00 00 5A */	li r0, 0x5a
/* 806A29E8  B0 1F 06 AE */	sth r0, 0x6ae(r31)
lbl_806A29EC:
/* 806A29EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070271@ha */
/* 806A29F0  38 03 02 71 */	addi r0, r3, 0x0271 /* 0x00070271@l */
/* 806A29F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A29F8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A29FC  38 81 00 0C */	addi r4, r1, 0xc
/* 806A2A00  38 A0 FF FF */	li r5, -1
/* 806A2A04  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A2A08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A2A0C  7D 89 03 A6 */	mtctr r12
/* 806A2A10  4E 80 04 21 */	bctrl 
/* 806A2A14  48 00 01 B0 */	b lbl_806A2BC4
lbl_806A2A18:
/* 806A2A18  7F E3 FB 78 */	mr r3, r31
/* 806A2A1C  38 9F 0E 1C */	addi r4, r31, 0xe1c
/* 806A2A20  4B 9E 51 E4 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806A2A24  3B 40 00 00 */	li r26, 0
/* 806A2A28  88 1F 06 D1 */	lbz r0, 0x6d1(r31)
/* 806A2A2C  7C 00 07 75 */	extsb. r0, r0
/* 806A2A30  41 82 00 10 */	beq lbl_806A2A40
/* 806A2A34  38 00 00 00 */	li r0, 0
/* 806A2A38  98 1F 06 D1 */	stb r0, 0x6d1(r31)
/* 806A2A3C  3B 40 00 01 */	li r26, 1
lbl_806A2A40:
/* 806A2A40  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 806A2A44  28 00 00 0A */	cmplwi r0, 0xa
/* 806A2A48  40 82 00 34 */	bne lbl_806A2A7C
/* 806A2A4C  7F C3 F3 78 */	mr r3, r30
/* 806A2A50  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 806A2A54  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 806A2A58  7D 89 03 A6 */	mtctr r12
/* 806A2A5C  4E 80 04 21 */	bctrl 
/* 806A2A60  2C 03 00 00 */	cmpwi r3, 0
/* 806A2A64  41 82 00 18 */	beq lbl_806A2A7C
/* 806A2A68  38 00 00 03 */	li r0, 3
/* 806A2A6C  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
/* 806A2A70  38 00 00 01 */	li r0, 1
/* 806A2A74  98 1F 06 D1 */	stb r0, 0x6d1(r31)
/* 806A2A78  48 00 00 0C */	b lbl_806A2A84
lbl_806A2A7C:
/* 806A2A7C  38 00 00 0A */	li r0, 0xa
/* 806A2A80  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
lbl_806A2A84:
/* 806A2A84  80 7F 0E 1C */	lwz r3, 0xe1c(r31)
/* 806A2A88  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806A2A8C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806A2A90  41 82 00 28 */	beq lbl_806A2AB8
/* 806A2A94  88 7F 0E 5B */	lbz r3, 0xe5b(r31)
/* 806A2A98  38 03 00 01 */	addi r0, r3, 1
/* 806A2A9C  98 1F 0E 5B */	stb r0, 0xe5b(r31)
/* 806A2AA0  88 1F 0E 5B */	lbz r0, 0xe5b(r31)
/* 806A2AA4  7C 00 07 74 */	extsb r0, r0
/* 806A2AA8  2C 00 00 03 */	cmpwi r0, 3
/* 806A2AAC  41 80 00 0C */	blt lbl_806A2AB8
/* 806A2AB0  38 00 00 00 */	li r0, 0
/* 806A2AB4  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_806A2AB8:
/* 806A2AB8  7F 40 07 75 */	extsb. r0, r26
/* 806A2ABC  40 82 00 1C */	bne lbl_806A2AD8
/* 806A2AC0  88 1F 06 D4 */	lbz r0, 0x6d4(r31)
/* 806A2AC4  7C 00 07 75 */	extsb. r0, r0
/* 806A2AC8  40 82 00 28 */	bne lbl_806A2AF0
/* 806A2ACC  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806A2AD0  2C 00 00 00 */	cmpwi r0, 0
/* 806A2AD4  41 81 00 1C */	bgt lbl_806A2AF0
lbl_806A2AD8:
/* 806A2AD8  38 00 00 09 */	li r0, 9
/* 806A2ADC  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 806A2AE0  38 00 00 00 */	li r0, 0
/* 806A2AE4  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 806A2AE8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806A2AEC  48 00 00 28 */	b lbl_806A2B14
lbl_806A2AF0:
/* 806A2AF0  A8 1F 06 AE */	lha r0, 0x6ae(r31)
/* 806A2AF4  2C 00 00 00 */	cmpwi r0, 0
/* 806A2AF8  40 82 00 1C */	bne lbl_806A2B14
/* 806A2AFC  38 00 00 07 */	li r0, 7
/* 806A2B00  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 806A2B04  38 00 00 00 */	li r0, 0
/* 806A2B08  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 806A2B0C  38 00 00 5A */	li r0, 0x5a
/* 806A2B10  B0 1F 06 AE */	sth r0, 0x6ae(r31)
lbl_806A2B14:
/* 806A2B14  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806A2B18  2C 00 00 01 */	cmpwi r0, 1
/* 806A2B1C  41 81 00 A8 */	bgt lbl_806A2BC4
/* 806A2B20  38 00 00 00 */	li r0, 0
/* 806A2B24  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806A2B28  38 00 00 03 */	li r0, 3
/* 806A2B2C  98 1F 0D 9E */	stb r0, 0xd9e(r31)
/* 806A2B30  48 00 00 94 */	b lbl_806A2BC4
lbl_806A2B34:
/* 806A2B34  3B 40 00 00 */	li r26, 0
/* 806A2B38  3B C0 00 00 */	li r30, 0
lbl_806A2B3C:
/* 806A2B3C  3B 7E 0A 74 */	addi r27, r30, 0xa74
/* 806A2B40  7F 7F DA 14 */	add r27, r31, r27
/* 806A2B44  7F 63 DB 78 */	mr r3, r27
/* 806A2B48  4B 9E 19 18 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806A2B4C  28 03 00 00 */	cmplwi r3, 0
/* 806A2B50  41 82 00 64 */	beq lbl_806A2BB4
/* 806A2B54  7F 63 DB 78 */	mr r3, r27
/* 806A2B58  4B 9E 19 A0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806A2B5C  90 7F 0E 1C */	stw r3, 0xe1c(r31)
/* 806A2B60  38 7F 0E 1C */	addi r3, r31, 0xe1c
/* 806A2B64  4B 9E 4E F4 */	b at_power_check__FP11dCcU_AtInfo
/* 806A2B68  88 1F 0E 3C */	lbz r0, 0xe3c(r31)
/* 806A2B6C  28 00 00 10 */	cmplwi r0, 0x10
/* 806A2B70  40 82 00 3C */	bne lbl_806A2BAC
/* 806A2B74  38 00 00 05 */	li r0, 5
/* 806A2B78  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 806A2B7C  38 00 00 00 */	li r0, 0
/* 806A2B80  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 806A2B84  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070271@ha */
/* 806A2B88  38 03 02 71 */	addi r0, r3, 0x0271 /* 0x00070271@l */
/* 806A2B8C  90 01 00 08 */	stw r0, 8(r1)
/* 806A2B90  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A2B94  38 81 00 08 */	addi r4, r1, 8
/* 806A2B98  38 A0 FF FF */	li r5, -1
/* 806A2B9C  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A2BA0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A2BA4  7D 89 03 A6 */	mtctr r12
/* 806A2BA8  4E 80 04 21 */	bctrl 
lbl_806A2BAC:
/* 806A2BAC  38 00 00 06 */	li r0, 6
/* 806A2BB0  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
lbl_806A2BB4:
/* 806A2BB4  3B 5A 00 01 */	addi r26, r26, 1
/* 806A2BB8  2C 1A 00 02 */	cmpwi r26, 2
/* 806A2BBC  3B DE 01 38 */	addi r30, r30, 0x138
/* 806A2BC0  41 80 FF 7C */	blt lbl_806A2B3C
lbl_806A2BC4:
/* 806A2BC4  39 61 00 30 */	addi r11, r1, 0x30
/* 806A2BC8  4B CB F6 54 */	b _restgpr_26
/* 806A2BCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A2BD0  7C 08 03 A6 */	mtlr r0
/* 806A2BD4  38 21 00 30 */	addi r1, r1, 0x30
/* 806A2BD8  4E 80 00 20 */	blr 
