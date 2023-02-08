lbl_805FA47C:
/* 805FA47C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805FA480  7C 08 02 A6 */	mflr r0
/* 805FA484  90 01 00 54 */	stw r0, 0x54(r1)
/* 805FA488  39 61 00 50 */	addi r11, r1, 0x50
/* 805FA48C  4B D6 7D 41 */	bl _savegpr_25
/* 805FA490  7C 7E 1B 78 */	mr r30, r3
/* 805FA494  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805FA498  3B E3 26 64 */	addi r31, r3, lit_3815@l /* 0x80602664@l */
/* 805FA49C  38 7E 16 70 */	addi r3, r30, 0x1670
/* 805FA4A0  4B A8 93 91 */	bl Move__10dCcD_GSttsFv
/* 805FA4A4  A8 1E 0C 58 */	lha r0, 0xc58(r30)
/* 805FA4A8  2C 00 00 00 */	cmpwi r0, 0
/* 805FA4AC  40 82 02 94 */	bne lbl_805FA740
/* 805FA4B0  80 1E 1F B4 */	lwz r0, 0x1fb4(r30)
/* 805FA4B4  90 01 00 08 */	stw r0, 8(r1)
/* 805FA4B8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805FA4BC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805FA4C0  38 81 00 08 */	addi r4, r1, 8
/* 805FA4C4  4B A1 F3 35 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805FA4C8  7C 7C 1B 78 */	mr r28, r3
/* 805FA4CC  3B 40 00 00 */	li r26, 0
/* 805FA4D0  3B 20 00 00 */	li r25, 0
/* 805FA4D4  3B A0 00 00 */	li r29, 0
lbl_805FA4D8:
/* 805FA4D8  3B 7D 16 90 */	addi r27, r29, 0x1690
/* 805FA4DC  7F 7E DA 14 */	add r27, r30, r27
/* 805FA4E0  7F 63 DB 78 */	mr r3, r27
/* 805FA4E4  4B A8 9F 7D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805FA4E8  28 03 00 00 */	cmplwi r3, 0
/* 805FA4EC  41 82 00 D8 */	beq lbl_805FA5C4
/* 805FA4F0  7F 63 DB 78 */	mr r3, r27
/* 805FA4F4  4B A8 A0 05 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805FA4F8  90 7E 1D E4 */	stw r3, 0x1de4(r30)
/* 805FA4FC  7F C3 F3 78 */	mr r3, r30
/* 805FA500  38 9E 1D E4 */	addi r4, r30, 0x1de4
/* 805FA504  4B A8 D7 01 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 805FA508  38 00 00 0A */	li r0, 0xa
/* 805FA50C  B0 1E 0C 58 */	sth r0, 0xc58(r30)
/* 805FA510  88 1E 1E 08 */	lbz r0, 0x1e08(r30)
/* 805FA514  28 00 00 00 */	cmplwi r0, 0
/* 805FA518  41 82 00 68 */	beq lbl_805FA580
/* 805FA51C  A0 7E 1E 0A */	lhz r3, 0x1e0a(r30)
/* 805FA520  38 03 00 01 */	addi r0, r3, 1
/* 805FA524  B0 1E 1E 0A */	sth r0, 0x1e0a(r30)
/* 805FA528  38 00 00 01 */	li r0, 1
/* 805FA52C  98 1C 39 67 */	stb r0, 0x3967(r28)
/* 805FA530  38 00 00 1E */	li r0, 0x1e
/* 805FA534  B0 1E 0C 58 */	sth r0, 0xc58(r30)
/* 805FA538  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 805FA53C  2C 00 00 00 */	cmpwi r0, 0
/* 805FA540  41 81 00 30 */	bgt lbl_805FA570
/* 805FA544  38 00 00 06 */	li r0, 6
/* 805FA548  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805FA54C  38 00 00 00 */	li r0, 0
/* 805FA550  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805FA554  3C 60 80 60 */	lis r3, s_fkdel_sub__FPvPv@ha /* 0x805FA3E4@ha */
/* 805FA558  38 63 A3 E4 */	addi r3, r3, s_fkdel_sub__FPvPv@l /* 0x805FA3E4@l */
/* 805FA55C  7F C4 F3 78 */	mr r4, r30
/* 805FA560  4B A2 6D D9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805FA564  38 00 00 00 */	li r0, 0
/* 805FA568  B0 1E 1E 0A */	sth r0, 0x1e0a(r30)
/* 805FA56C  48 00 00 0C */	b lbl_805FA578
lbl_805FA570:
/* 805FA570  38 00 00 0B */	li r0, 0xb
/* 805FA574  B0 1E 05 BC */	sth r0, 0x5bc(r30)
lbl_805FA578:
/* 805FA578  3B 40 00 01 */	li r26, 1
/* 805FA57C  48 00 00 58 */	b lbl_805FA5D4
lbl_805FA580:
/* 805FA580  80 7E 1D E4 */	lwz r3, 0x1de4(r30)
/* 805FA584  88 03 00 75 */	lbz r0, 0x75(r3)
/* 805FA588  28 00 00 04 */	cmplwi r0, 4
/* 805FA58C  40 82 00 38 */	bne lbl_805FA5C4
/* 805FA590  88 1E 1E 0F */	lbz r0, 0x1e0f(r30)
/* 805FA594  2C 00 00 01 */	cmpwi r0, 1
/* 805FA598  40 82 00 14 */	bne lbl_805FA5AC
/* 805FA59C  38 00 00 00 */	li r0, 0
/* 805FA5A0  98 1E 1E 0F */	stb r0, 0x1e0f(r30)
/* 805FA5A4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805FA5A8  D0 1E 1E 10 */	stfs f0, 0x1e10(r30)
lbl_805FA5AC:
/* 805FA5AC  38 00 00 03 */	li r0, 3
/* 805FA5B0  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805FA5B4  38 00 00 07 */	li r0, 7
/* 805FA5B8  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805FA5BC  3B 40 00 01 */	li r26, 1
/* 805FA5C0  48 00 00 14 */	b lbl_805FA5D4
lbl_805FA5C4:
/* 805FA5C4  3B 39 00 01 */	addi r25, r25, 1
/* 805FA5C8  2C 19 00 03 */	cmpwi r25, 3
/* 805FA5CC  3B BD 01 38 */	addi r29, r29, 0x138
/* 805FA5D0  41 80 FF 08 */	blt lbl_805FA4D8
lbl_805FA5D4:
/* 805FA5D4  2C 1A 00 00 */	cmpwi r26, 0
/* 805FA5D8  40 82 00 B8 */	bne lbl_805FA690
/* 805FA5DC  3B 20 00 00 */	li r25, 0
/* 805FA5E0  3B A0 00 00 */	li r29, 0
lbl_805FA5E4:
/* 805FA5E4  3B 7D 0F 04 */	addi r27, r29, 0xf04
/* 805FA5E8  7F 7E DA 14 */	add r27, r30, r27
/* 805FA5EC  7F 63 DB 78 */	mr r3, r27
/* 805FA5F0  4B A8 9E 71 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805FA5F4  28 03 00 00 */	cmplwi r3, 0
/* 805FA5F8  41 82 00 88 */	beq lbl_805FA680
/* 805FA5FC  7F 63 DB 78 */	mr r3, r27
/* 805FA600  4B A8 9E F9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805FA604  90 7E 1D E4 */	stw r3, 0x1de4(r30)
/* 805FA608  7F 63 DB 78 */	mr r3, r27
/* 805FA60C  81 9B 00 3C */	lwz r12, 0x3c(r27)
/* 805FA610  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FA614  7D 89 03 A6 */	mtctr r12
/* 805FA618  4E 80 04 21 */	bctrl 
/* 805FA61C  80 1E 1F C4 */	lwz r0, 0x1fc4(r30)
/* 805FA620  2C 00 00 00 */	cmpwi r0, 0
/* 805FA624  41 82 00 5C */	beq lbl_805FA680
/* 805FA628  88 1E 1E 08 */	lbz r0, 0x1e08(r30)
/* 805FA62C  28 00 00 00 */	cmplwi r0, 0
/* 805FA630  40 82 00 50 */	bne lbl_805FA680
/* 805FA634  80 7E 1D E4 */	lwz r3, 0x1de4(r30)
/* 805FA638  88 03 00 75 */	lbz r0, 0x75(r3)
/* 805FA63C  28 00 00 04 */	cmplwi r0, 4
/* 805FA640  40 82 00 40 */	bne lbl_805FA680
/* 805FA644  38 00 00 0A */	li r0, 0xa
/* 805FA648  B0 1E 0C 58 */	sth r0, 0xc58(r30)
/* 805FA64C  88 1E 1E 0F */	lbz r0, 0x1e0f(r30)
/* 805FA650  2C 00 00 01 */	cmpwi r0, 1
/* 805FA654  40 82 00 14 */	bne lbl_805FA668
/* 805FA658  38 00 00 00 */	li r0, 0
/* 805FA65C  98 1E 1E 0F */	stb r0, 0x1e0f(r30)
/* 805FA660  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805FA664  D0 1E 1E 10 */	stfs f0, 0x1e10(r30)
lbl_805FA668:
/* 805FA668  38 00 00 03 */	li r0, 3
/* 805FA66C  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805FA670  38 00 00 07 */	li r0, 7
/* 805FA674  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805FA678  3B 40 00 01 */	li r26, 1
/* 805FA67C  48 00 00 14 */	b lbl_805FA690
lbl_805FA680:
/* 805FA680  3B 39 00 01 */	addi r25, r25, 1
/* 805FA684  2C 19 00 02 */	cmpwi r25, 2
/* 805FA688  3B BD 01 38 */	addi r29, r29, 0x138
/* 805FA68C  41 80 FF 58 */	blt lbl_805FA5E4
lbl_805FA690:
/* 805FA690  2C 1A 00 00 */	cmpwi r26, 0
/* 805FA694  41 82 00 AC */	beq lbl_805FA740
/* 805FA698  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805FA69C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805FA6A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805FA6A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805FA6A8  88 1E 1E 03 */	lbz r0, 0x1e03(r30)
/* 805FA6AC  7C 00 07 75 */	extsb. r0, r0
/* 805FA6B0  3B A0 00 01 */	li r29, 1
/* 805FA6B4  41 82 00 08 */	beq lbl_805FA6BC
/* 805FA6B8  3B A0 00 03 */	li r29, 3
lbl_805FA6BC:
/* 805FA6BC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FA6C0  80 63 00 04 */	lwz r3, 4(r3)
/* 805FA6C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805FA6C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FA6CC  38 63 00 60 */	addi r3, r3, 0x60
/* 805FA6D0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FA6D4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FA6D8  80 84 00 00 */	lwz r4, 0(r4)
/* 805FA6DC  4B D4 BD D5 */	bl PSMTXCopy
/* 805FA6E0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805FA6E4  4B C6 D2 A9 */	bl cM_rndFX__Ff
/* 805FA6E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805FA6EC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805FA6F0  4B C6 D2 9D */	bl cM_rndFX__Ff
/* 805FA6F4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 805FA6F8  EC 00 08 2A */	fadds f0, f0, f1
/* 805FA6FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805FA700  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805FA704  4B C6 D2 89 */	bl cM_rndFX__Ff
/* 805FA708  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805FA70C  38 61 00 0C */	addi r3, r1, 0xc
/* 805FA710  38 81 00 18 */	addi r4, r1, 0x18
/* 805FA714  4B C7 67 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FA718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FA71C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FA720  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805FA724  7F A4 EB 78 */	mr r4, r29
/* 805FA728  7F C5 F3 78 */	mr r5, r30
/* 805FA72C  38 C1 00 18 */	addi r6, r1, 0x18
/* 805FA730  38 E0 00 00 */	li r7, 0
/* 805FA734  39 01 00 24 */	addi r8, r1, 0x24
/* 805FA738  39 20 00 00 */	li r9, 0
/* 805FA73C  4B A5 1A DD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_805FA740:
/* 805FA740  39 61 00 50 */	addi r11, r1, 0x50
/* 805FA744  4B D6 7A D5 */	bl _restgpr_25
/* 805FA748  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805FA74C  7C 08 03 A6 */	mtlr r0
/* 805FA750  38 21 00 50 */	addi r1, r1, 0x50
/* 805FA754  4E 80 00 20 */	blr 
