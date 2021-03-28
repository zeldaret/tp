lbl_8082A534:
/* 8082A534  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082A538  7C 08 02 A6 */	mflr r0
/* 8082A53C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082A540  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8082A544  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8082A548  7C 7F 1B 78 */	mr r31, r3
/* 8082A54C  88 03 07 A8 */	lbz r0, 0x7a8(r3)
/* 8082A550  28 00 00 00 */	cmplwi r0, 0
/* 8082A554  40 82 03 20 */	bne lbl_8082A874
/* 8082A558  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 8082A55C  2C 00 00 02 */	cmpwi r0, 2
/* 8082A560  41 82 03 14 */	beq lbl_8082A874
/* 8082A564  2C 00 00 09 */	cmpwi r0, 9
/* 8082A568  40 82 00 08 */	bne lbl_8082A570
/* 8082A56C  48 00 03 08 */	b lbl_8082A874
lbl_8082A570:
/* 8082A570  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082A574  38 63 F7 34 */	addi r3, r3, l_HIO@l
/* 8082A578  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8082A57C  28 00 00 00 */	cmplwi r0, 0
/* 8082A580  40 82 00 84 */	bne lbl_8082A604
/* 8082A584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A58C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8082A590  3C 80 80 83 */	lis r4, stringBase0@ha
/* 8082A594  38 84 F4 10 */	addi r4, r4, stringBase0@l
/* 8082A598  38 84 00 05 */	addi r4, r4, 5
/* 8082A59C  4B B3 E3 F8 */	b strcmp
/* 8082A5A0  2C 03 00 00 */	cmpwi r3, 0
/* 8082A5A4  41 82 00 60 */	beq lbl_8082A604
/* 8082A5A8  88 1F 07 A9 */	lbz r0, 0x7a9(r31)
/* 8082A5AC  28 00 00 10 */	cmplwi r0, 0x10
/* 8082A5B0  40 82 00 24 */	bne lbl_8082A5D4
/* 8082A5B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A5B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A5BC  38 80 00 14 */	li r4, 0x14
/* 8082A5C0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8082A5C4  7C 05 07 74 */	extsb r5, r0
/* 8082A5C8  4B 80 AD 98 */	b isSwitch__10dSv_info_cCFii
/* 8082A5CC  2C 03 00 00 */	cmpwi r3, 0
/* 8082A5D0  41 82 02 A4 */	beq lbl_8082A874
lbl_8082A5D4:
/* 8082A5D4  88 1F 07 A9 */	lbz r0, 0x7a9(r31)
/* 8082A5D8  28 00 00 11 */	cmplwi r0, 0x11
/* 8082A5DC  40 82 00 28 */	bne lbl_8082A604
/* 8082A5E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A5E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A5E8  38 80 00 15 */	li r4, 0x15
/* 8082A5EC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8082A5F0  7C 05 07 74 */	extsb r5, r0
/* 8082A5F4  4B 80 AD 6C */	b isSwitch__10dSv_info_cCFii
/* 8082A5F8  2C 03 00 00 */	cmpwi r3, 0
/* 8082A5FC  40 82 00 08 */	bne lbl_8082A604
/* 8082A600  48 00 02 74 */	b lbl_8082A874
lbl_8082A604:
/* 8082A604  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8082A608  4B 85 9E 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8082A60C  28 03 00 00 */	cmplwi r3, 0
/* 8082A610  40 82 00 14 */	bne lbl_8082A624
/* 8082A614  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 8082A618  4B 85 9E 48 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8082A61C  28 03 00 00 */	cmplwi r3, 0
/* 8082A620  41 82 02 4C */	beq lbl_8082A86C
lbl_8082A624:
/* 8082A624  38 00 00 08 */	li r0, 8
/* 8082A628  98 1F 07 A8 */	stb r0, 0x7a8(r31)
/* 8082A62C  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8082A630  4B 85 9E 30 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8082A634  28 03 00 00 */	cmplwi r3, 0
/* 8082A638  41 82 00 2C */	beq lbl_8082A664
/* 8082A63C  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8082A640  4B 85 9E B8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8082A644  90 7F 0D B8 */	stw r3, 0xdb8(r31)
/* 8082A648  C0 1F 0A DC */	lfs f0, 0xadc(r31)
/* 8082A64C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082A650  C0 1F 0A E0 */	lfs f0, 0xae0(r31)
/* 8082A654  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8082A658  C0 1F 0A E4 */	lfs f0, 0xae4(r31)
/* 8082A65C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082A660  48 00 00 28 */	b lbl_8082A688
lbl_8082A664:
/* 8082A664  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 8082A668  4B 85 9E 90 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8082A66C  90 7F 0D B8 */	stw r3, 0xdb8(r31)
/* 8082A670  C0 1F 0C 14 */	lfs f0, 0xc14(r31)
/* 8082A674  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082A678  C0 1F 0C 18 */	lfs f0, 0xc18(r31)
/* 8082A67C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8082A680  C0 1F 0C 1C */	lfs f0, 0xc1c(r31)
/* 8082A684  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_8082A688:
/* 8082A688  38 00 00 00 */	li r0, 0
/* 8082A68C  B0 01 00 08 */	sth r0, 8(r1)
/* 8082A690  38 61 00 10 */	addi r3, r1, 0x10
/* 8082A694  4B A3 CA 94 */	b atan2sX_Z__4cXyzCFv
/* 8082A698  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8082A69C  38 00 00 00 */	li r0, 0
/* 8082A6A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8082A6A4  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 8082A6A8  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082A6AC  41 82 01 10 */	beq lbl_8082A7BC
/* 8082A6B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8082A6B4  41 82 01 08 */	beq lbl_8082A7BC
/* 8082A6B8  2C 00 00 03 */	cmpwi r0, 3
/* 8082A6BC  41 82 01 00 */	beq lbl_8082A7BC
/* 8082A6C0  80 7F 0D B8 */	lwz r3, 0xdb8(r31)
/* 8082A6C4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082A6C8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8082A6CC  40 82 00 F0 */	bne lbl_8082A7BC
/* 8082A6D0  80 1F 07 90 */	lwz r0, 0x790(r31)
/* 8082A6D4  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082A6D8  41 82 00 E4 */	beq lbl_8082A7BC
/* 8082A6DC  2C 00 00 0E */	cmpwi r0, 0xe
/* 8082A6E0  41 82 00 DC */	beq lbl_8082A7BC
/* 8082A6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A6E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A6EC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8082A6F0  38 80 00 01 */	li r4, 1
/* 8082A6F4  7F E5 FB 78 */	mr r5, r31
/* 8082A6F8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8082A6FC  38 E1 00 08 */	addi r7, r1, 8
/* 8082A700  39 00 00 00 */	li r8, 0
/* 8082A704  39 20 00 00 */	li r9, 0
/* 8082A708  4B 82 1B 10 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8082A70C  7F E3 FB 78 */	mr r3, r31
/* 8082A710  38 9F 0D B8 */	addi r4, r31, 0xdb8
/* 8082A714  4B 85 D4 F0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8082A718  38 00 03 E8 */	li r0, 0x3e8
/* 8082A71C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8082A720  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8082A724  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8082A728  81 9F 0A 44 */	lwz r12, 0xa44(r31)
/* 8082A72C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8082A730  7D 89 03 A6 */	mtctr r12
/* 8082A734  4E 80 04 21 */	bctrl 
/* 8082A738  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 8082A73C  81 9F 0B 7C */	lwz r12, 0xb7c(r31)
/* 8082A740  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8082A744  7D 89 03 A6 */	mtctr r12
/* 8082A748  4E 80 04 21 */	bctrl 
/* 8082A74C  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 8082A750  2C 00 00 01 */	cmpwi r0, 1
/* 8082A754  40 82 00 18 */	bne lbl_8082A76C
/* 8082A758  7F E3 FB 78 */	mr r3, r31
/* 8082A75C  38 80 00 03 */	li r4, 3
/* 8082A760  38 A0 00 00 */	li r5, 0
/* 8082A764  4B FF EC F1 */	bl setActionMode__8daE_ZH_cFii
/* 8082A768  48 00 01 04 */	b lbl_8082A86C
lbl_8082A76C:
/* 8082A76C  7F E3 FB 78 */	mr r3, r31
/* 8082A770  4B FF FD 59 */	bl mCutTypeCheck__8daE_ZH_cFv
/* 8082A774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082A778  41 82 00 0C */	beq lbl_8082A784
/* 8082A77C  38 00 00 02 */	li r0, 2
/* 8082A780  90 1F 07 8C */	stw r0, 0x78c(r31)
lbl_8082A784:
/* 8082A784  38 60 00 05 */	li r3, 5
/* 8082A788  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8082A78C  7C 04 07 74 */	extsb r4, r0
/* 8082A790  4B 80 33 70 */	b dComIfGs_offOneZoneSwitch__Fii
/* 8082A794  80 7F 06 64 */	lwz r3, 0x664(r31)
/* 8082A798  28 03 00 00 */	cmplwi r3, 0
/* 8082A79C  41 82 00 0C */	beq lbl_8082A7A8
/* 8082A7A0  38 00 00 00 */	li r0, 0
/* 8082A7A4  98 03 0D BB */	stb r0, 0xdbb(r3)
lbl_8082A7A8:
/* 8082A7A8  7F E3 FB 78 */	mr r3, r31
/* 8082A7AC  38 80 00 0A */	li r4, 0xa
/* 8082A7B0  38 A0 00 00 */	li r5, 0
/* 8082A7B4  4B FF EC A1 */	bl setActionMode__8daE_ZH_cFii
/* 8082A7B8  48 00 00 B4 */	b lbl_8082A86C
lbl_8082A7BC:
/* 8082A7BC  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8082A7C0  4B 85 9C A0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8082A7C4  28 03 00 00 */	cmplwi r3, 0
/* 8082A7C8  41 82 00 14 */	beq lbl_8082A7DC
/* 8082A7CC  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8082A7D0  4B 85 9D 28 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8082A7D4  7C 7E 1B 78 */	mr r30, r3
/* 8082A7D8  48 00 00 10 */	b lbl_8082A7E8
lbl_8082A7DC:
/* 8082A7DC  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 8082A7E0  4B 85 9D 18 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8082A7E4  7C 7E 1B 78 */	mr r30, r3
lbl_8082A7E8:
/* 8082A7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A7F0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8082A7F4  38 80 00 02 */	li r4, 2
/* 8082A7F8  7F E5 FB 78 */	mr r5, r31
/* 8082A7FC  38 C1 00 10 */	addi r6, r1, 0x10
/* 8082A800  38 E1 00 08 */	addi r7, r1, 8
/* 8082A804  39 00 00 00 */	li r8, 0
/* 8082A808  39 20 00 00 */	li r9, 0
/* 8082A80C  4B 82 1A 0C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8082A810  80 7F 0D B8 */	lwz r3, 0xdb8(r31)
/* 8082A814  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8082A818  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8082A81C  40 82 00 30 */	bne lbl_8082A84C
/* 8082A820  88 7E 00 74 */	lbz r3, 0x74(r30)
/* 8082A824  38 80 00 00 */	li r4, 0
/* 8082A828  4B 85 9D 88 */	b getHitSeID__12dCcD_GObjInfFUci
/* 8082A82C  7C 64 1B 78 */	mr r4, r3
/* 8082A830  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8082A834  38 A0 00 28 */	li r5, 0x28
/* 8082A838  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8082A83C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8082A840  7D 89 03 A6 */	mtctr r12
/* 8082A844  4E 80 04 21 */	bctrl 
/* 8082A848  48 00 00 24 */	b lbl_8082A86C
lbl_8082A84C:
/* 8082A84C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8082A850  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040018@ha */
/* 8082A854  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00040018@l */
/* 8082A858  38 A0 00 2D */	li r5, 0x2d
/* 8082A85C  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8082A860  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8082A864  7D 89 03 A6 */	mtctr r12
/* 8082A868  4E 80 04 21 */	bctrl 
lbl_8082A86C:
/* 8082A86C  38 7F 09 E8 */	addi r3, r31, 0x9e8
/* 8082A870  4B 85 8F C0 */	b Move__10dCcD_GSttsFv
lbl_8082A874:
/* 8082A874  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8082A878  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8082A87C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8082A880  7C 08 03 A6 */	mtlr r0
/* 8082A884  38 21 00 30 */	addi r1, r1, 0x30
/* 8082A888  4E 80 00 20 */	blr 
