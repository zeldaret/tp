lbl_8063F524:
/* 8063F524  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063F528  7C 08 02 A6 */	mflr r0
/* 8063F52C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063F530  39 61 00 30 */	addi r11, r1, 0x30
/* 8063F534  4B D2 2C 98 */	b _savegpr_25
/* 8063F538  7C 7B 1B 78 */	mr r27, r3
/* 8063F53C  38 7B 0C 90 */	addi r3, r27, 0xc90
/* 8063F540  4B A4 42 F0 */	b Move__10dCcD_GSttsFv
/* 8063F544  A0 1B 06 E4 */	lhz r0, 0x6e4(r27)
/* 8063F548  28 00 00 00 */	cmplwi r0, 0
/* 8063F54C  40 82 02 E8 */	bne lbl_8063F834
/* 8063F550  AB FB 05 62 */	lha r31, 0x562(r27)
/* 8063F554  38 00 00 00 */	li r0, 0
/* 8063F558  90 1B 0C 50 */	stw r0, 0xc50(r27)
/* 8063F55C  3B 20 00 00 */	li r25, 0
/* 8063F560  3B 40 00 00 */	li r26, 0
/* 8063F564  3C 60 80 65 */	lis r3, data_8064EB5C@ha
/* 8063F568  3B 83 EB 5C */	addi r28, r3, data_8064EB5C@l
lbl_8063F56C:
/* 8063F56C  7C 1C D0 2E */	lwzx r0, r28, r26
/* 8063F570  1F C0 01 38 */	mulli r30, r0, 0x138
/* 8063F574  3B BE 0C B0 */	addi r29, r30, 0xcb0
/* 8063F578  7F BB EA 14 */	add r29, r27, r29
/* 8063F57C  7F A3 EB 78 */	mr r3, r29
/* 8063F580  4B A4 4E E0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8063F584  28 03 00 00 */	cmplwi r3, 0
/* 8063F588  41 82 00 E0 */	beq lbl_8063F668
/* 8063F58C  38 00 00 0A */	li r0, 0xa
/* 8063F590  B0 1B 06 E4 */	sth r0, 0x6e4(r27)
/* 8063F594  7F A3 EB 78 */	mr r3, r29
/* 8063F598  4B A4 4F 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8063F59C  90 7B 0C 50 */	stw r3, 0xc50(r27)
/* 8063F5A0  7C 7B F2 14 */	add r3, r27, r30
/* 8063F5A4  80 03 0D 4C */	lwz r0, 0xd4c(r3)
/* 8063F5A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8063F5AC  40 82 00 78 */	bne lbl_8063F624
/* 8063F5B0  80 1B 06 D4 */	lwz r0, 0x6d4(r27)
/* 8063F5B4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063F5B8  41 82 00 0C */	beq lbl_8063F5C4
/* 8063F5BC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063F5C0  40 82 00 44 */	bne lbl_8063F604
lbl_8063F5C4:
/* 8063F5C4  7F 63 DB 78 */	mr r3, r27
/* 8063F5C8  7F A4 EB 78 */	mr r4, r29
/* 8063F5CC  38 A0 00 00 */	li r5, 0
/* 8063F5D0  4B FF F2 41 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063F5D4  2C 19 00 02 */	cmpwi r25, 2
/* 8063F5D8  40 80 00 18 */	bge lbl_8063F5F0
/* 8063F5DC  7F 63 DB 78 */	mr r3, r27
/* 8063F5E0  38 80 00 0E */	li r4, 0xe
/* 8063F5E4  38 A0 00 00 */	li r5, 0
/* 8063F5E8  4B FF F0 DD */	bl setActionMode__10daB_ZANT_cFii
/* 8063F5EC  48 00 00 38 */	b lbl_8063F624
lbl_8063F5F0:
/* 8063F5F0  7F 63 DB 78 */	mr r3, r27
/* 8063F5F4  38 80 00 0E */	li r4, 0xe
/* 8063F5F8  38 A0 00 01 */	li r5, 1
/* 8063F5FC  4B FF F0 C9 */	bl setActionMode__10daB_ZANT_cFii
/* 8063F600  48 00 00 24 */	b lbl_8063F624
lbl_8063F604:
/* 8063F604  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063F608  40 82 00 1C */	bne lbl_8063F624
/* 8063F60C  7F 63 DB 78 */	mr r3, r27
/* 8063F610  38 80 00 0E */	li r4, 0xe
/* 8063F614  38 A0 00 1E */	li r5, 0x1e
/* 8063F618  4B FF F0 AD */	bl setActionMode__10daB_ZANT_cFii
/* 8063F61C  38 00 00 00 */	li r0, 0
/* 8063F620  90 1B 06 E8 */	stw r0, 0x6e8(r27)
lbl_8063F624:
/* 8063F624  3B 20 00 00 */	li r25, 0
/* 8063F628  3B 40 00 00 */	li r26, 0
/* 8063F62C  3C 60 80 65 */	lis r3, data_8064EB5C@ha
/* 8063F630  3B 83 EB 5C */	addi r28, r3, data_8064EB5C@l
lbl_8063F634:
/* 8063F634  7C 1C D0 2E */	lwzx r0, r28, r26
/* 8063F638  1C 60 01 38 */	mulli r3, r0, 0x138
/* 8063F63C  38 63 0C B0 */	addi r3, r3, 0xcb0
/* 8063F640  7C 7B 1A 14 */	add r3, r27, r3
/* 8063F644  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 8063F648  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8063F64C  7D 89 03 A6 */	mtctr r12
/* 8063F650  4E 80 04 21 */	bctrl 
/* 8063F654  3B 39 00 01 */	addi r25, r25, 1
/* 8063F658  2C 19 00 06 */	cmpwi r25, 6
/* 8063F65C  3B 5A 00 04 */	addi r26, r26, 4
/* 8063F660  41 80 FF D4 */	blt lbl_8063F634
/* 8063F664  48 00 01 D0 */	b lbl_8063F834
lbl_8063F668:
/* 8063F668  3B 39 00 01 */	addi r25, r25, 1
/* 8063F66C  2C 19 00 06 */	cmpwi r25, 6
/* 8063F670  3B 5A 00 04 */	addi r26, r26, 4
/* 8063F674  41 80 FE F8 */	blt lbl_8063F56C
/* 8063F678  3B A0 00 00 */	li r29, 0
/* 8063F67C  3B 40 00 00 */	li r26, 0
lbl_8063F680:
/* 8063F680  7F 9B D2 14 */	add r28, r27, r26
/* 8063F684  3B DC 1A 18 */	addi r30, r28, 0x1a18
/* 8063F688  7F C3 F3 78 */	mr r3, r30
/* 8063F68C  4B A4 4D D4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8063F690  28 03 00 00 */	cmplwi r3, 0
/* 8063F694  41 82 01 90 */	beq lbl_8063F824
/* 8063F698  A0 1B 06 E4 */	lhz r0, 0x6e4(r27)
/* 8063F69C  28 00 00 00 */	cmplwi r0, 0
/* 8063F6A0  40 82 01 70 */	bne lbl_8063F810
/* 8063F6A4  7F C3 F3 78 */	mr r3, r30
/* 8063F6A8  4B A4 4E 50 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8063F6AC  90 7B 0C 50 */	stw r3, 0xc50(r27)
/* 8063F6B0  80 1C 1A B4 */	lwz r0, 0x1ab4(r28)
/* 8063F6B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8063F6B8  41 82 00 1C */	beq lbl_8063F6D4
/* 8063F6BC  38 00 00 2A */	li r0, 0x2a
/* 8063F6C0  90 1B 0C 68 */	stw r0, 0xc68(r27)
/* 8063F6C4  38 00 00 00 */	li r0, 0
/* 8063F6C8  80 7B 0C 50 */	lwz r3, 0xc50(r27)
/* 8063F6CC  98 03 00 14 */	stb r0, 0x14(r3)
/* 8063F6D0  48 00 00 0C */	b lbl_8063F6DC
lbl_8063F6D4:
/* 8063F6D4  38 00 00 00 */	li r0, 0
/* 8063F6D8  90 1B 0C 68 */	stw r0, 0xc68(r27)
lbl_8063F6DC:
/* 8063F6DC  7F 63 DB 78 */	mr r3, r27
/* 8063F6E0  38 9B 0C 50 */	addi r4, r27, 0xc50
/* 8063F6E4  4B A4 85 20 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8063F6E8  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 8063F6EC  7F 80 F8 50 */	subf r28, r0, r31
/* 8063F6F0  B3 FB 05 62 */	sth r31, 0x562(r27)
/* 8063F6F4  80 7B 0C 50 */	lwz r3, 0xc50(r27)
/* 8063F6F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8063F6FC  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 8063F700  40 82 00 10 */	bne lbl_8063F710
/* 8063F704  38 00 00 00 */	li r0, 0
/* 8063F708  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 8063F70C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
lbl_8063F710:
/* 8063F710  80 7B 0C 50 */	lwz r3, 0xc50(r27)
/* 8063F714  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8063F718  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8063F71C  41 82 00 10 */	beq lbl_8063F72C
/* 8063F720  38 00 00 14 */	li r0, 0x14
/* 8063F724  B0 1B 06 E4 */	sth r0, 0x6e4(r27)
/* 8063F728  48 00 00 0C */	b lbl_8063F734
lbl_8063F72C:
/* 8063F72C  38 00 00 0A */	li r0, 0xa
/* 8063F730  B0 1B 06 E4 */	sth r0, 0x6e4(r27)
lbl_8063F734:
/* 8063F734  A0 1B 0C 6C */	lhz r0, 0xc6c(r27)
/* 8063F738  28 00 00 01 */	cmplwi r0, 1
/* 8063F73C  41 81 00 0C */	bgt lbl_8063F748
/* 8063F740  38 00 00 0A */	li r0, 0xa
/* 8063F744  B0 1B 06 E4 */	sth r0, 0x6e4(r27)
lbl_8063F748:
/* 8063F748  7F 63 DB 78 */	mr r3, r27
/* 8063F74C  4B FF EF AD */	bl checkBigDamage__10daB_ZANT_cFv
/* 8063F750  98 7B 07 19 */	stb r3, 0x719(r27)
/* 8063F754  80 1B 06 D4 */	lwz r0, 0x6d4(r27)
/* 8063F758  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063F75C  40 82 00 B4 */	bne lbl_8063F810
/* 8063F760  80 1B 0C 68 */	lwz r0, 0xc68(r27)
/* 8063F764  28 00 00 2A */	cmplwi r0, 0x2a
/* 8063F768  41 82 00 A8 */	beq lbl_8063F810
/* 8063F76C  7F 63 DB 78 */	mr r3, r27
/* 8063F770  4B FF F0 2D */	bl checkDamageType__10daB_ZANT_cFv
/* 8063F774  2C 03 00 02 */	cmpwi r3, 2
/* 8063F778  41 82 00 24 */	beq lbl_8063F79C
/* 8063F77C  40 80 00 14 */	bge lbl_8063F790
/* 8063F780  2C 03 00 00 */	cmpwi r3, 0
/* 8063F784  41 82 00 6C */	beq lbl_8063F7F0
/* 8063F788  40 80 00 4C */	bge lbl_8063F7D4
/* 8063F78C  48 00 00 84 */	b lbl_8063F810
lbl_8063F790:
/* 8063F790  2C 03 00 04 */	cmpwi r3, 4
/* 8063F794  40 80 00 7C */	bge lbl_8063F810
/* 8063F798  48 00 00 20 */	b lbl_8063F7B8
lbl_8063F79C:
/* 8063F79C  7F 63 DB 78 */	mr r3, r27
/* 8063F7A0  38 80 00 0E */	li r4, 0xe
/* 8063F7A4  38 A0 00 28 */	li r5, 0x28
/* 8063F7A8  4B FF EF 1D */	bl setActionMode__10daB_ZANT_cFii
/* 8063F7AC  38 00 00 00 */	li r0, 0
/* 8063F7B0  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8063F7B4  48 00 00 5C */	b lbl_8063F810
lbl_8063F7B8:
/* 8063F7B8  7F 63 DB 78 */	mr r3, r27
/* 8063F7BC  38 80 00 0E */	li r4, 0xe
/* 8063F7C0  38 A0 00 14 */	li r5, 0x14
/* 8063F7C4  4B FF EF 01 */	bl setActionMode__10daB_ZANT_cFii
/* 8063F7C8  38 00 00 00 */	li r0, 0
/* 8063F7CC  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8063F7D0  48 00 00 40 */	b lbl_8063F810
lbl_8063F7D4:
/* 8063F7D4  7F 63 DB 78 */	mr r3, r27
/* 8063F7D8  38 80 00 0E */	li r4, 0xe
/* 8063F7DC  38 A0 00 1E */	li r5, 0x1e
/* 8063F7E0  4B FF EE E5 */	bl setActionMode__10daB_ZANT_cFii
/* 8063F7E4  38 00 00 00 */	li r0, 0
/* 8063F7E8  90 1B 06 E8 */	stw r0, 0x6e8(r27)
/* 8063F7EC  48 00 00 24 */	b lbl_8063F810
lbl_8063F7F0:
/* 8063F7F0  7F 63 DB 78 */	mr r3, r27
/* 8063F7F4  7F C4 F3 78 */	mr r4, r30
/* 8063F7F8  7F 85 E3 78 */	mr r5, r28
/* 8063F7FC  4B FF F0 15 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063F800  7F 63 DB 78 */	mr r3, r27
/* 8063F804  38 80 00 0E */	li r4, 0xe
/* 8063F808  38 A0 00 0A */	li r5, 0xa
/* 8063F80C  4B FF EE B9 */	bl setActionMode__10daB_ZANT_cFii
lbl_8063F810:
/* 8063F810  7F C3 F3 78 */	mr r3, r30
/* 8063F814  81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 8063F818  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8063F81C  7D 89 03 A6 */	mtctr r12
/* 8063F820  4E 80 04 21 */	bctrl 
lbl_8063F824:
/* 8063F824  3B BD 00 01 */	addi r29, r29, 1
/* 8063F828  2C 1D 00 0B */	cmpwi r29, 0xb
/* 8063F82C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8063F830  41 80 FE 50 */	blt lbl_8063F680
lbl_8063F834:
/* 8063F834  39 61 00 30 */	addi r11, r1, 0x30
/* 8063F838  4B D2 29 E0 */	b _restgpr_25
/* 8063F83C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063F840  7C 08 03 A6 */	mtlr r0
/* 8063F844  38 21 00 30 */	addi r1, r1, 0x30
/* 8063F848  4E 80 00 20 */	blr 
