lbl_8083329C:
/* 8083329C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 808332A0  7C 08 02 A6 */	mflr r0
/* 808332A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 808332A8  39 61 00 50 */	addi r11, r1, 0x50
/* 808332AC  4B B2 EF 24 */	b _savegpr_26
/* 808332B0  7C 7F 1B 78 */	mr r31, r3
/* 808332B4  A8 03 05 62 */	lha r0, 0x562(r3)
/* 808332B8  2C 00 00 01 */	cmpwi r0, 1
/* 808332BC  40 81 03 78 */	ble lbl_80833634
/* 808332C0  88 1F 06 70 */	lbz r0, 0x670(r31)
/* 808332C4  28 00 00 00 */	cmplwi r0, 0
/* 808332C8  40 82 03 6C */	bne lbl_80833634
/* 808332CC  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 808332D0  28 00 00 00 */	cmplwi r0, 0
/* 808332D4  41 82 03 60 */	beq lbl_80833634
/* 808332D8  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 808332DC  2C 00 00 03 */	cmpwi r0, 3
/* 808332E0  41 82 03 54 */	beq lbl_80833634
/* 808332E4  80 1F 08 E0 */	lwz r0, 0x8e0(r31)
/* 808332E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808332EC  41 82 03 48 */	beq lbl_80833634
/* 808332F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 808332F4  80 63 00 04 */	lwz r3, 4(r3)
/* 808332F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808332FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80833300  38 63 00 30 */	addi r3, r3, 0x30
/* 80833304  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80833308  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8083330C  4B B1 31 A4 */	b PSMTXCopy
/* 80833310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80833314  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80833318  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8083331C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80833320  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80833324  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80833328  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8083332C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80833330  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80833334  38 63 54 B0 */	addi r3, r3, l_HIO@l
/* 80833338  C0 03 00 08 */	lfs f0, 8(r3)
/* 8083333C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80833340  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80833344  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80833348  7F E3 FB 78 */	mr r3, r31
/* 8083334C  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80833350  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80833354  38 DF 04 EC */	addi r6, r31, 0x4ec
/* 80833358  48 00 1B 19 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8083335C  38 7F 08 A8 */	addi r3, r31, 0x8a8
/* 80833360  4B 85 04 D0 */	b Move__10dCcD_GSttsFv
/* 80833364  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80833368  4B 85 10 F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8083336C  28 03 00 00 */	cmplwi r3, 0
/* 80833370  41 82 02 C4 */	beq lbl_80833634
/* 80833374  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80833378  4B 85 11 80 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8083337C  90 7F 0A 04 */	stw r3, 0xa04(r31)
/* 80833380  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 80833384  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80833388  C0 1F 09 A0 */	lfs f0, 0x9a0(r31)
/* 8083338C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80833390  C0 1F 09 A4 */	lfs f0, 0x9a4(r31)
/* 80833394  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80833398  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 8083339C  4B 85 11 5C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 808333A0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 808333A4  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 808333A8  41 82 00 B0 */	beq lbl_80833458
/* 808333AC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 808333B0  80 63 00 04 */	lwz r3, 4(r3)
/* 808333B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808333B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808333BC  38 63 00 30 */	addi r3, r3, 0x30
/* 808333C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 808333C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 808333C8  4B B1 30 E8 */	b PSMTXCopy
/* 808333CC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 808333D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808333D4  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 808333D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808333DC  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 808333E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 808333E4  3B 40 00 00 */	li r26, 0
/* 808333E8  3B C0 00 00 */	li r30, 0
/* 808333EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808333F0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 808333F4  3C 60 80 83 */	lis r3, eff_Damage_id@ha
/* 808333F8  3B 83 53 C8 */	addi r28, r3, eff_Damage_id@l
/* 808333FC  3C 60 80 83 */	lis r3, lit_3911@ha
/* 80833400  3B A3 52 D8 */	addi r29, r3, lit_3911@l
lbl_80833404:
/* 80833404  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80833408  38 80 00 00 */	li r4, 0
/* 8083340C  90 81 00 08 */	stw r4, 8(r1)
/* 80833410  38 00 FF FF */	li r0, -1
/* 80833414  90 01 00 0C */	stw r0, 0xc(r1)
/* 80833418  90 81 00 10 */	stw r4, 0x10(r1)
/* 8083341C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80833420  90 81 00 18 */	stw r4, 0x18(r1)
/* 80833424  38 80 00 00 */	li r4, 0
/* 80833428  7C BC F2 2E */	lhzx r5, r28, r30
/* 8083342C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80833430  38 E0 00 00 */	li r7, 0
/* 80833434  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80833438  39 20 00 00 */	li r9, 0
/* 8083343C  39 40 00 FF */	li r10, 0xff
/* 80833440  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80833444  4B 81 96 4C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80833448  3B 5A 00 01 */	addi r26, r26, 1
/* 8083344C  2C 1A 00 03 */	cmpwi r26, 3
/* 80833450  3B DE 00 02 */	addi r30, r30, 2
/* 80833454  41 80 FF B0 */	blt lbl_80833404
lbl_80833458:
/* 80833458  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 8083345C  4B 85 10 9C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80833460  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80833464  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 80833468  41 82 00 28 */	beq lbl_80833490
/* 8083346C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80833470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80833474  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80833478  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8083347C  81 8C 01 F4 */	lwz r12, 0x1f4(r12)
/* 80833480  7D 89 03 A6 */	mtctr r12
/* 80833484  4E 80 04 21 */	bctrl 
/* 80833488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083348C  40 82 00 68 */	bne lbl_808334F4
lbl_80833490:
/* 80833490  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80833494  4B 85 10 64 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80833498  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8083349C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 808334A0  40 82 00 54 */	bne lbl_808334F4
/* 808334A4  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 808334A8  4B 85 10 50 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 808334AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 808334B0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 808334B4  40 82 00 40 */	bne lbl_808334F4
/* 808334B8  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 808334BC  4B 85 10 3C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 808334C0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 808334C4  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 808334C8  40 82 00 2C */	bne lbl_808334F4
/* 808334CC  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 808334D0  4B 85 10 28 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 808334D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 808334D8  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 808334DC  40 82 00 18 */	bne lbl_808334F4
/* 808334E0  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 808334E4  4B 85 10 14 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 808334E8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 808334EC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 808334F0  41 82 00 DC */	beq lbl_808335CC
lbl_808334F4:
/* 808334F4  38 00 00 00 */	li r0, 0
/* 808334F8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 808334FC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80833500  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80833504  80 9F 0A 04 */	lwz r4, 0xa04(r31)
/* 80833508  38 A0 00 1F */	li r5, 0x1f
/* 8083350C  38 C0 00 00 */	li r6, 0
/* 80833510  4B 85 40 04 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80833514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80833518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083351C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80833520  38 80 00 03 */	li r4, 3
/* 80833524  7F E5 FB 78 */	mr r5, r31
/* 80833528  38 C1 00 20 */	addi r6, r1, 0x20
/* 8083352C  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80833530  39 00 00 00 */	li r8, 0
/* 80833534  39 20 00 00 */	li r9, 0
/* 80833538  4B 81 8C E0 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8083353C  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80833540  4B 85 0F B8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80833544  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80833548  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8083354C  40 82 00 24 */	bne lbl_80833570
/* 80833550  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80833554  4B 85 0F A4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80833558  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8083355C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80833560  40 82 00 10 */	bne lbl_80833570
/* 80833564  38 00 00 03 */	li r0, 3
/* 80833568  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 8083356C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
lbl_80833570:
/* 80833570  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80833574  3C 80 00 04 */	lis r4, 4
/* 80833578  38 A0 00 20 */	li r5, 0x20
/* 8083357C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 80833580  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80833584  7D 89 03 A6 */	mtctr r12
/* 80833588  4E 80 04 21 */	bctrl 
/* 8083358C  80 1F 08 E0 */	lwz r0, 0x8e0(r31)
/* 80833590  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80833594  90 1F 08 E0 */	stw r0, 0x8e0(r31)
/* 80833598  80 1F 08 F4 */	lwz r0, 0x8f4(r31)
/* 8083359C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 808335A0  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 808335A4  7F E3 FB 78 */	mr r3, r31
/* 808335A8  38 80 00 02 */	li r4, 2
/* 808335AC  38 A0 00 02 */	li r5, 2
/* 808335B0  4B FF FC E1 */	bl setActionMode__8daE_ZS_cFii
/* 808335B4  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 808335B8  81 9F 09 04 */	lwz r12, 0x904(r31)
/* 808335BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 808335C0  7D 89 03 A6 */	mtctr r12
/* 808335C4  4E 80 04 21 */	bctrl 
/* 808335C8  48 00 00 6C */	b lbl_80833634
lbl_808335CC:
/* 808335CC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 808335D0  80 9F 0A 04 */	lwz r4, 0xa04(r31)
/* 808335D4  38 A0 00 28 */	li r5, 0x28
/* 808335D8  38 C0 00 00 */	li r6, 0
/* 808335DC  4B 85 3F 38 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 808335E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808335E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808335E8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 808335EC  38 80 00 02 */	li r4, 2
/* 808335F0  7F E5 FB 78 */	mr r5, r31
/* 808335F4  38 C1 00 20 */	addi r6, r1, 0x20
/* 808335F8  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 808335FC  39 00 00 00 */	li r8, 0
/* 80833600  39 20 00 00 */	li r9, 0
/* 80833604  4B 81 8C 14 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80833608  7F E3 FB 78 */	mr r3, r31
/* 8083360C  38 80 00 02 */	li r4, 2
/* 80833610  38 A0 00 00 */	li r5, 0
/* 80833614  4B FF FC 7D */	bl setActionMode__8daE_ZS_cFii
/* 80833618  38 00 00 08 */	li r0, 8
/* 8083361C  98 1F 06 70 */	stb r0, 0x670(r31)
/* 80833620  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80833624  81 9F 09 04 */	lwz r12, 0x904(r31)
/* 80833628  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8083362C  7D 89 03 A6 */	mtctr r12
/* 80833630  4E 80 04 21 */	bctrl 
lbl_80833634:
/* 80833634  39 61 00 50 */	addi r11, r1, 0x50
/* 80833638  4B B2 EB E4 */	b _restgpr_26
/* 8083363C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80833640  7C 08 03 A6 */	mtlr r0
/* 80833644  38 21 00 50 */	addi r1, r1, 0x50
/* 80833648  4E 80 00 20 */	blr 
