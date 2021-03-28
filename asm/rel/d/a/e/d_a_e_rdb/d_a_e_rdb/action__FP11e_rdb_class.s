lbl_80767428:
/* 80767428  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8076742C  7C 08 02 A6 */	mflr r0
/* 80767430  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80767434  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80767438  4B BF AD 94 */	b _savegpr_25
/* 8076743C  7C 7C 1B 78 */	mr r28, r3
/* 80767440  3C 80 80 77 */	lis r4, lit_4007@ha
/* 80767444  3B C4 B4 5C */	addi r30, r4, lit_4007@l
/* 80767448  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8076744C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80767450  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 80767454  38 00 00 00 */	li r0, 0
/* 80767458  98 03 06 C8 */	stb r0, 0x6c8(r3)
/* 8076745C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80767460  4B 8B 33 80 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80767464  D0 3C 06 AC */	stfs f1, 0x6ac(r28)
/* 80767468  7F 83 E3 78 */	mr r3, r28
/* 8076746C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80767470  4B 8B 32 A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80767474  B0 7C 06 B0 */	sth r3, 0x6b0(r28)
/* 80767478  7F 83 E3 78 */	mr r3, r28
/* 8076747C  4B FF F9 39 */	bl damage_check__FP11e_rdb_class
/* 80767480  3B 20 00 00 */	li r25, 0
/* 80767484  3B 40 00 01 */	li r26, 1
/* 80767488  3B A0 00 01 */	li r29, 1
/* 8076748C  A8 1C 06 7E */	lha r0, 0x67e(r28)
/* 80767490  28 00 00 07 */	cmplwi r0, 7
/* 80767494  41 81 00 A8 */	bgt lbl_8076753C
/* 80767498  3C 60 80 77 */	lis r3, lit_5169@ha
/* 8076749C  38 63 B7 D0 */	addi r3, r3, lit_5169@l
/* 807674A0  54 00 10 3A */	slwi r0, r0, 2
/* 807674A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 807674A8  7C 09 03 A6 */	mtctr r0
/* 807674AC  4E 80 04 20 */	bctr 
lbl_807674B0:
/* 807674B0  7F 83 E3 78 */	mr r3, r28
/* 807674B4  4B FF F5 69 */	bl e_rdb_start__FP11e_rdb_class
/* 807674B8  3B 40 00 00 */	li r26, 0
/* 807674BC  3B A0 00 00 */	li r29, 0
/* 807674C0  48 00 00 7C */	b lbl_8076753C
lbl_807674C4:
/* 807674C4  7F 83 E3 78 */	mr r3, r28
/* 807674C8  4B FF E1 B1 */	bl e_rdb_wait__FP11e_rdb_class
/* 807674CC  3B 20 00 01 */	li r25, 1
/* 807674D0  48 00 00 6C */	b lbl_8076753C
lbl_807674D4:
/* 807674D4  7F 83 E3 78 */	mr r3, r28
/* 807674D8  4B FF E4 09 */	bl e_rdb_fight__FP11e_rdb_class
/* 807674DC  3B 20 00 01 */	li r25, 1
/* 807674E0  48 00 00 5C */	b lbl_8076753C
lbl_807674E4:
/* 807674E4  7F 83 E3 78 */	mr r3, r28
/* 807674E8  4B FF E6 89 */	bl e_rdb_attack__FP11e_rdb_class
/* 807674EC  3B 20 00 01 */	li r25, 1
/* 807674F0  3B A0 00 00 */	li r29, 0
/* 807674F4  48 00 00 48 */	b lbl_8076753C
lbl_807674F8:
/* 807674F8  7F 83 E3 78 */	mr r3, r28
/* 807674FC  4B FF E9 75 */	bl e_rdb_spin_attack__FP11e_rdb_class
/* 80767500  3B 20 00 01 */	li r25, 1
/* 80767504  3B A0 00 00 */	li r29, 0
/* 80767508  48 00 00 34 */	b lbl_8076753C
lbl_8076750C:
/* 8076750C  7F 83 E3 78 */	mr r3, r28
/* 80767510  4B FF EC 79 */	bl e_rdb_defence__FP11e_rdb_class
/* 80767514  7C 7D 1B 78 */	mr r29, r3
/* 80767518  3B 20 00 01 */	li r25, 1
/* 8076751C  48 00 00 20 */	b lbl_8076753C
lbl_80767520:
/* 80767520  7F 83 E3 78 */	mr r3, r28
/* 80767524  4B FF ED 71 */	bl e_rdb_damage__FP11e_rdb_class
/* 80767528  3B A0 00 00 */	li r29, 0
/* 8076752C  48 00 00 10 */	b lbl_8076753C
lbl_80767530:
/* 80767530  7F 83 E3 78 */	mr r3, r28
/* 80767534  4B FF F0 81 */	bl e_rdb_end__FP11e_rdb_class
/* 80767538  3B A0 00 00 */	li r29, 0
lbl_8076753C:
/* 8076753C  7F 20 07 75 */	extsb. r0, r25
/* 80767540  41 82 00 14 */	beq lbl_80767554
/* 80767544  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80767548  38 80 00 01 */	li r4, 1
/* 8076754C  4B B5 A6 30 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80767550  48 00 00 10 */	b lbl_80767560
lbl_80767554:
/* 80767554  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80767558  38 80 00 00 */	li r4, 0
/* 8076755C  4B B5 A6 20 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_80767560:
/* 80767560  7F 40 07 75 */	extsb. r0, r26
/* 80767564  41 82 00 10 */	beq lbl_80767574
/* 80767568  38 00 00 04 */	li r0, 4
/* 8076756C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80767570  48 00 00 18 */	b lbl_80767588
lbl_80767574:
/* 80767574  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80767578  54 00 00 3E */	slwi r0, r0, 0
/* 8076757C  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80767580  38 00 00 00 */	li r0, 0
/* 80767584  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80767588:
/* 80767588  7F A0 07 75 */	extsb. r0, r29
/* 8076758C  41 82 04 18 */	beq lbl_807679A4
/* 80767590  3B 40 00 00 */	li r26, 0
/* 80767594  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80767598  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8076759C  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 807675A0  7D 89 03 A6 */	mtctr r12
/* 807675A4  4E 80 04 21 */	bctrl 
/* 807675A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807675AC  41 82 00 28 */	beq lbl_807675D4
/* 807675B0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807675B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807675B8  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 807675BC  7D 89 03 A6 */	mtctr r12
/* 807675C0  4E 80 04 21 */	bctrl 
/* 807675C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807675C8  40 82 00 0C */	bne lbl_807675D4
/* 807675CC  3B 40 00 01 */	li r26, 1
/* 807675D0  48 00 00 44 */	b lbl_80767614
lbl_807675D4:
/* 807675D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807675D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807675DC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 807675E0  3C 80 80 77 */	lis r4, stringBase0@ha
/* 807675E4  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 807675E8  38 84 00 06 */	addi r4, r4, 6
/* 807675EC  4B C0 13 A8 */	b strcmp
/* 807675F0  2C 03 00 00 */	cmpwi r3, 0
/* 807675F4  40 82 00 20 */	bne lbl_80767614
/* 807675F8  3C 60 80 76 */	lis r3, shot_s_sub__FPvPv@ha
/* 807675FC  38 63 72 94 */	addi r3, r3, shot_s_sub__FPvPv@l
/* 80767600  7F 84 E3 78 */	mr r4, r28
/* 80767604  4B 8B 9D 34 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80767608  28 03 00 00 */	cmplwi r3, 0
/* 8076760C  41 82 00 08 */	beq lbl_80767614
/* 80767610  3B 40 00 01 */	li r26, 1
lbl_80767614:
/* 80767614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80767618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076761C  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 80767620  7F A3 EB 78 */	mr r3, r29
/* 80767624  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80767628  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 8076762C  38 84 00 06 */	addi r4, r4, 6
/* 80767630  4B C0 13 64 */	b strcmp
/* 80767634  2C 03 00 00 */	cmpwi r3, 0
/* 80767638  40 82 02 80 */	bne lbl_807678B8
/* 8076763C  7F 63 DB 78 */	mr r3, r27
/* 80767640  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80767644  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 80767648  7D 89 03 A6 */	mtctr r12
/* 8076764C  4E 80 04 21 */	bctrl 
/* 80767650  7C 79 1B 79 */	or. r25, r3, r3
/* 80767654  41 82 02 64 */	beq lbl_807678B8
/* 80767658  38 61 00 28 */	addi r3, r1, 0x28
/* 8076765C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80767660  7F 25 CB 78 */	mr r5, r25
/* 80767664  4B AF F4 D0 */	b __mi__4cXyzCFRC3Vec
/* 80767668  38 61 00 28 */	addi r3, r1, 0x28
/* 8076766C  4B BD FA CC */	b PSVECSquareMag
/* 80767670  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80767674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80767678  40 81 00 58 */	ble lbl_807676D0
/* 8076767C  FC 00 08 34 */	frsqrte f0, f1
/* 80767680  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80767684  FC 44 00 32 */	fmul f2, f4, f0
/* 80767688  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8076768C  FC 00 00 32 */	fmul f0, f0, f0
/* 80767690  FC 01 00 32 */	fmul f0, f1, f0
/* 80767694  FC 03 00 28 */	fsub f0, f3, f0
/* 80767698  FC 02 00 32 */	fmul f0, f2, f0
/* 8076769C  FC 44 00 32 */	fmul f2, f4, f0
/* 807676A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807676A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807676A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807676AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807676B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807676B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807676B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807676BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807676C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807676C4  FC 21 00 32 */	fmul f1, f1, f0
/* 807676C8  FC 20 08 18 */	frsp f1, f1
/* 807676CC  48 00 00 88 */	b lbl_80767754
lbl_807676D0:
/* 807676D0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807676D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807676D8  40 80 00 10 */	bge lbl_807676E8
/* 807676DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807676E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807676E4  48 00 00 70 */	b lbl_80767754
lbl_807676E8:
/* 807676E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807676EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807676F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807676F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807676F8  7C 03 00 00 */	cmpw r3, r0
/* 807676FC  41 82 00 14 */	beq lbl_80767710
/* 80767700  40 80 00 40 */	bge lbl_80767740
/* 80767704  2C 03 00 00 */	cmpwi r3, 0
/* 80767708  41 82 00 20 */	beq lbl_80767728
/* 8076770C  48 00 00 34 */	b lbl_80767740
lbl_80767710:
/* 80767710  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80767714  41 82 00 0C */	beq lbl_80767720
/* 80767718  38 00 00 01 */	li r0, 1
/* 8076771C  48 00 00 28 */	b lbl_80767744
lbl_80767720:
/* 80767720  38 00 00 02 */	li r0, 2
/* 80767724  48 00 00 20 */	b lbl_80767744
lbl_80767728:
/* 80767728  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076772C  41 82 00 0C */	beq lbl_80767738
/* 80767730  38 00 00 05 */	li r0, 5
/* 80767734  48 00 00 10 */	b lbl_80767744
lbl_80767738:
/* 80767738  38 00 00 03 */	li r0, 3
/* 8076773C  48 00 00 08 */	b lbl_80767744
lbl_80767740:
/* 80767740  38 00 00 04 */	li r0, 4
lbl_80767744:
/* 80767744  2C 00 00 01 */	cmpwi r0, 1
/* 80767748  40 82 00 0C */	bne lbl_80767754
/* 8076774C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80767750  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80767754:
/* 80767754  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80767758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076775C  40 81 01 5C */	ble lbl_807678B8
/* 80767760  38 61 00 1C */	addi r3, r1, 0x1c
/* 80767764  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80767768  7F 25 CB 78 */	mr r5, r25
/* 8076776C  4B AF F3 C8 */	b __mi__4cXyzCFRC3Vec
/* 80767770  38 61 00 1C */	addi r3, r1, 0x1c
/* 80767774  4B BD F9 C4 */	b PSVECSquareMag
/* 80767778  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8076777C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80767780  40 81 00 58 */	ble lbl_807677D8
/* 80767784  FC 00 08 34 */	frsqrte f0, f1
/* 80767788  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8076778C  FC 44 00 32 */	fmul f2, f4, f0
/* 80767790  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80767794  FC 00 00 32 */	fmul f0, f0, f0
/* 80767798  FC 01 00 32 */	fmul f0, f1, f0
/* 8076779C  FC 03 00 28 */	fsub f0, f3, f0
/* 807677A0  FC 02 00 32 */	fmul f0, f2, f0
/* 807677A4  FC 44 00 32 */	fmul f2, f4, f0
/* 807677A8  FC 00 00 32 */	fmul f0, f0, f0
/* 807677AC  FC 01 00 32 */	fmul f0, f1, f0
/* 807677B0  FC 03 00 28 */	fsub f0, f3, f0
/* 807677B4  FC 02 00 32 */	fmul f0, f2, f0
/* 807677B8  FC 44 00 32 */	fmul f2, f4, f0
/* 807677BC  FC 00 00 32 */	fmul f0, f0, f0
/* 807677C0  FC 01 00 32 */	fmul f0, f1, f0
/* 807677C4  FC 03 00 28 */	fsub f0, f3, f0
/* 807677C8  FC 02 00 32 */	fmul f0, f2, f0
/* 807677CC  FC 21 00 32 */	fmul f1, f1, f0
/* 807677D0  FC 20 08 18 */	frsp f1, f1
/* 807677D4  48 00 00 88 */	b lbl_8076785C
lbl_807677D8:
/* 807677D8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807677DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807677E0  40 80 00 10 */	bge lbl_807677F0
/* 807677E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807677E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807677EC  48 00 00 70 */	b lbl_8076785C
lbl_807677F0:
/* 807677F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807677F4  80 81 00 08 */	lwz r4, 8(r1)
/* 807677F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807677FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80767800  7C 03 00 00 */	cmpw r3, r0
/* 80767804  41 82 00 14 */	beq lbl_80767818
/* 80767808  40 80 00 40 */	bge lbl_80767848
/* 8076780C  2C 03 00 00 */	cmpwi r3, 0
/* 80767810  41 82 00 20 */	beq lbl_80767830
/* 80767814  48 00 00 34 */	b lbl_80767848
lbl_80767818:
/* 80767818  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076781C  41 82 00 0C */	beq lbl_80767828
/* 80767820  38 00 00 01 */	li r0, 1
/* 80767824  48 00 00 28 */	b lbl_8076784C
lbl_80767828:
/* 80767828  38 00 00 02 */	li r0, 2
/* 8076782C  48 00 00 20 */	b lbl_8076784C
lbl_80767830:
/* 80767830  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80767834  41 82 00 0C */	beq lbl_80767840
/* 80767838  38 00 00 05 */	li r0, 5
/* 8076783C  48 00 00 10 */	b lbl_8076784C
lbl_80767840:
/* 80767840  38 00 00 03 */	li r0, 3
/* 80767844  48 00 00 08 */	b lbl_8076784C
lbl_80767848:
/* 80767848  38 00 00 04 */	li r0, 4
lbl_8076784C:
/* 8076784C  2C 00 00 01 */	cmpwi r0, 1
/* 80767850  40 82 00 0C */	bne lbl_8076785C
/* 80767854  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80767858  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8076785C:
/* 8076785C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80767860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80767864  40 80 00 54 */	bge lbl_807678B8
/* 80767868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076786C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80767870  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80767874  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80767878  40 82 00 40 */	bne lbl_807678B8
/* 8076787C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80767880  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80767884  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 80767888  7D 89 03 A6 */	mtctr r12
/* 8076788C  4E 80 04 21 */	bctrl 
/* 80767890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80767894  40 82 00 24 */	bne lbl_807678B8
/* 80767898  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8076789C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807678A0  81 8C 01 44 */	lwz r12, 0x144(r12)
/* 807678A4  7D 89 03 A6 */	mtctr r12
/* 807678A8  4E 80 04 21 */	bctrl 
/* 807678AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807678B0  40 82 00 08 */	bne lbl_807678B8
/* 807678B4  3B 40 00 02 */	li r26, 2
lbl_807678B8:
/* 807678B8  3B 20 00 00 */	li r25, 0
/* 807678BC  7F A3 EB 78 */	mr r3, r29
/* 807678C0  3C 80 80 77 */	lis r4, stringBase0@ha
/* 807678C4  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 807678C8  38 84 00 06 */	addi r4, r4, 6
/* 807678CC  4B C0 10 C8 */	b strcmp
/* 807678D0  2C 03 00 00 */	cmpwi r3, 0
/* 807678D4  40 82 00 10 */	bne lbl_807678E4
/* 807678D8  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 807678DC  28 00 00 29 */	cmplwi r0, 0x29
/* 807678E0  41 82 00 20 */	beq lbl_80767900
lbl_807678E4:
/* 807678E4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807678E8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 807678EC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807678F0  41 82 00 14 */	beq lbl_80767904
/* 807678F4  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 807678F8  28 00 00 05 */	cmplwi r0, 5
/* 807678FC  41 82 00 08 */	beq lbl_80767904
lbl_80767900:
/* 80767900  3B 20 00 01 */	li r25, 1
lbl_80767904:
/* 80767904  2C 1A 00 00 */	cmpwi r26, 0
/* 80767908  41 82 00 14 */	beq lbl_8076791C
/* 8076790C  7F 83 E3 78 */	mr r3, r28
/* 80767910  4B FF DD 2D */	bl player_way_check__FP11e_rdb_class
/* 80767914  2C 03 00 00 */	cmpwi r3, 0
/* 80767918  40 82 00 74 */	bne lbl_8076798C
lbl_8076791C:
/* 8076791C  C0 3C 06 AC */	lfs f1, 0x6ac(r28)
/* 80767920  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80767924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80767928  40 80 00 7C */	bge lbl_807679A4
/* 8076792C  7F 83 E3 78 */	mr r3, r28
/* 80767930  4B FF DD 0D */	bl player_way_check__FP11e_rdb_class
/* 80767934  2C 03 00 00 */	cmpwi r3, 0
/* 80767938  41 82 00 6C */	beq lbl_807679A4
/* 8076793C  2C 19 00 00 */	cmpwi r25, 0
/* 80767940  41 82 00 64 */	beq lbl_807679A4
/* 80767944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80767948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076794C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80767950  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80767954  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80767958  40 82 00 34 */	bne lbl_8076798C
/* 8076795C  7F A3 EB 78 */	mr r3, r29
/* 80767960  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80767964  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80767968  38 84 00 06 */	addi r4, r4, 6
/* 8076796C  4B C0 10 28 */	b strcmp
/* 80767970  2C 03 00 00 */	cmpwi r3, 0
/* 80767974  41 82 00 18 */	beq lbl_8076798C
/* 80767978  4B 91 FA 5C */	b cc_pl_cut_bit_get__Fv
/* 8076797C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80767980  80 1C 06 EC */	lwz r0, 0x6ec(r28)
/* 80767984  7C 00 18 39 */	and. r0, r0, r3
/* 80767988  41 82 00 1C */	beq lbl_807679A4
lbl_8076798C:
/* 8076798C  38 00 00 05 */	li r0, 5
/* 80767990  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 80767994  38 00 00 00 */	li r0, 0
/* 80767998  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8076799C  38 00 00 03 */	li r0, 3
/* 807679A0  B0 1C 06 C0 */	sth r0, 0x6c0(r28)
lbl_807679A4:
/* 807679A4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807679A8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807679AC  38 A0 00 02 */	li r5, 2
/* 807679B0  38 C0 10 00 */	li r6, 0x1000
/* 807679B4  4B B0 8C 54 */	b cLib_addCalcAngleS2__FPssss
/* 807679B8  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 807679BC  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 807679C0  38 A0 00 02 */	li r5, 2
/* 807679C4  38 C0 10 00 */	li r6, 0x1000
/* 807679C8  4B B0 8C 40 */	b cLib_addCalcAngleS2__FPssss
/* 807679CC  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 807679D0  A8 9C 04 E0 */	lha r4, 0x4e0(r28)
/* 807679D4  38 A0 00 02 */	li r5, 2
/* 807679D8  38 C0 10 00 */	li r6, 0x1000
/* 807679DC  4B B0 8C 2C */	b cLib_addCalcAngleS2__FPssss
/* 807679E0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807679E4  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 807679E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807679EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807679F0  80 63 00 00 */	lwz r3, 0(r3)
/* 807679F4  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807679F8  4B 8A 49 E4 */	b mDoMtx_YrotS__FPA4_fs
/* 807679FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80767A00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80767A04  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80767A08  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80767A0C  3C 60 80 77 */	lis r3, l_HIO@ha
/* 80767A10  38 63 BA 14 */	addi r3, r3, l_HIO@l
/* 80767A14  C0 23 00 08 */	lfs f1, 8(r3)
/* 80767A18  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80767A1C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80767A20  EC 02 00 32 */	fmuls f0, f2, f0
/* 80767A24  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80767A28  38 61 00 58 */	addi r3, r1, 0x58
/* 80767A2C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80767A30  4B B0 94 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 80767A34  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80767A38  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80767A3C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80767A40  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80767A44  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80767A48  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80767A4C  7C 65 1B 78 */	mr r5, r3
/* 80767A50  4B BD F6 40 */	b PSVECAdd
/* 80767A54  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80767A58  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 80767A5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80767A60  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80767A64  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80767A68  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80767A6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80767A70  40 80 00 08 */	bge lbl_80767A78
/* 80767A74  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80767A78:
/* 80767A78  C0 3C 06 E4 */	lfs f1, 0x6e4(r28)
/* 80767A7C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80767A80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80767A84  40 81 00 58 */	ble lbl_80767ADC
/* 80767A88  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80767A8C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80767A90  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80767A94  FC 00 08 50 */	fneg f0, f1
/* 80767A98  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80767A9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80767AA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80767AA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80767AA8  A8 9C 06 E8 */	lha r4, 0x6e8(r28)
/* 80767AAC  4B 8A 49 30 */	b mDoMtx_YrotS__FPA4_fs
/* 80767AB0  38 61 00 58 */	addi r3, r1, 0x58
/* 80767AB4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80767AB8  4B B0 94 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 80767ABC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80767AC0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80767AC4  7C 65 1B 78 */	mr r5, r3
/* 80767AC8  4B BD F5 C8 */	b PSVECAdd
/* 80767ACC  38 7C 06 E4 */	addi r3, r28, 0x6e4
/* 80767AD0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80767AD4  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80767AD8  4B B0 7F A8 */	b cLib_addCalc0__FPfff
lbl_80767ADC:
/* 80767ADC  3B 20 00 00 */	li r25, 0
/* 80767AE0  3B 40 00 00 */	li r26, 0
/* 80767AE4  C0 1B 05 38 */	lfs f0, 0x538(r27)
/* 80767AE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80767AEC  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 80767AF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80767AF4  C0 1B 05 40 */	lfs f0, 0x540(r27)
/* 80767AF8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80767AFC  88 1C 06 C8 */	lbz r0, 0x6c8(r28)
/* 80767B00  7C 00 07 75 */	extsb. r0, r0
/* 80767B04  41 82 00 BC */	beq lbl_80767BC0
/* 80767B08  38 61 00 10 */	addi r3, r1, 0x10
/* 80767B0C  38 81 00 40 */	addi r4, r1, 0x40
/* 80767B10  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80767B14  4B AF F0 20 */	b __mi__4cXyzCFRC3Vec
/* 80767B18  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80767B1C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80767B20  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 80767B24  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80767B28  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80767B2C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80767B30  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80767B34  EC 03 00 2A */	fadds f0, f3, f0
/* 80767B38  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80767B3C  4B AF FB 38 */	b cM_atan2s__Fff
/* 80767B40  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80767B44  7C 00 18 50 */	subf r0, r0, r3
/* 80767B48  7C 19 07 34 */	extsh r25, r0
/* 80767B4C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80767B50  EC 20 00 32 */	fmuls f1, f0, f0
/* 80767B54  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80767B58  EC 00 00 32 */	fmuls f0, f0, f0
/* 80767B5C  EC 41 00 2A */	fadds f2, f1, f0
/* 80767B60  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80767B64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80767B68  40 81 00 0C */	ble lbl_80767B74
/* 80767B6C  FC 00 10 34 */	frsqrte f0, f2
/* 80767B70  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80767B74:
/* 80767B74  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80767B78  4B AF FA FC */	b cM_atan2s__Fff
/* 80767B7C  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80767B80  7C 00 1A 14 */	add r0, r0, r3
/* 80767B84  7C 1A 07 34 */	extsh r26, r0
/* 80767B88  2C 19 3E 80 */	cmpwi r25, 0x3e80
/* 80767B8C  40 81 00 0C */	ble lbl_80767B98
/* 80767B90  3B 20 3E 80 */	li r25, 0x3e80
/* 80767B94  48 00 00 10 */	b lbl_80767BA4
lbl_80767B98:
/* 80767B98  2C 19 C1 80 */	cmpwi r25, -16000
/* 80767B9C  40 80 00 08 */	bge lbl_80767BA4
/* 80767BA0  3B 20 C1 80 */	li r25, -16000
lbl_80767BA4:
/* 80767BA4  2C 1A 3E 80 */	cmpwi r26, 0x3e80
/* 80767BA8  40 81 00 0C */	ble lbl_80767BB4
/* 80767BAC  3B 40 3E 80 */	li r26, 0x3e80
/* 80767BB0  48 00 00 10 */	b lbl_80767BC0
lbl_80767BB4:
/* 80767BB4  2C 1A C1 80 */	cmpwi r26, -16000
/* 80767BB8  40 80 00 08 */	bge lbl_80767BC0
/* 80767BBC  3B 40 C1 80 */	li r26, -16000
lbl_80767BC0:
/* 80767BC0  38 7C 06 CA */	addi r3, r28, 0x6ca
/* 80767BC4  7F 24 CB 78 */	mr r4, r25
/* 80767BC8  38 A0 00 02 */	li r5, 2
/* 80767BCC  38 C0 10 00 */	li r6, 0x1000
/* 80767BD0  4B B0 8A 38 */	b cLib_addCalcAngleS2__FPssss
/* 80767BD4  38 7C 06 CC */	addi r3, r28, 0x6cc
/* 80767BD8  7F 44 D3 78 */	mr r4, r26
/* 80767BDC  38 A0 00 02 */	li r5, 2
/* 80767BE0  38 C0 10 00 */	li r6, 0x1000
/* 80767BE4  4B B0 8A 24 */	b cLib_addCalcAngleS2__FPssss
/* 80767BE8  A8 7C 06 CE */	lha r3, 0x6ce(r28)
/* 80767BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80767BF0  41 82 00 A4 */	beq lbl_80767C94
/* 80767BF4  38 03 FF FF */	addi r0, r3, -1
/* 80767BF8  B0 1C 06 CE */	sth r0, 0x6ce(r28)
/* 80767BFC  A8 BC 06 CE */	lha r5, 0x6ce(r28)
/* 80767C00  1C 05 2E E0 */	mulli r0, r5, 0x2ee0
/* 80767C04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80767C08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80767C0C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80767C10  7C 44 04 2E */	lfsx f2, r4, r0
/* 80767C14  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80767C18  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80767C1C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80767C20  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80767C24  3C 60 43 30 */	lis r3, 0x4330
/* 80767C28  90 61 00 68 */	stw r3, 0x68(r1)
/* 80767C2C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80767C30  EC 00 18 28 */	fsubs f0, f0, f3
/* 80767C34  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80767C38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80767C3C  FC 00 00 1E */	fctiwz f0, f0
/* 80767C40  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80767C44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80767C48  B0 1C 06 D0 */	sth r0, 0x6d0(r28)
/* 80767C4C  A8 BC 06 CE */	lha r5, 0x6ce(r28)
/* 80767C50  1C 05 13 88 */	mulli r0, r5, 0x1388
/* 80767C54  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80767C58  7C 84 04 2E */	lfsx f4, r4, r0
/* 80767C5C  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80767C60  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 80767C64  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80767C68  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80767C6C  90 61 00 78 */	stw r3, 0x78(r1)
/* 80767C70  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80767C74  EC 00 18 28 */	fsubs f0, f0, f3
/* 80767C78  EC 00 01 32 */	fmuls f0, f0, f4
/* 80767C7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80767C80  EC 02 00 32 */	fmuls f0, f2, f0
/* 80767C84  FC 00 00 1E */	fctiwz f0, f0
/* 80767C88  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80767C8C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80767C90  B0 1C 06 D2 */	sth r0, 0x6d2(r28)
lbl_80767C94:
/* 80767C94  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80767C98  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80767C9C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80767CA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80767CA4  7F 83 E3 78 */	mr r3, r28
/* 80767CA8  38 9C 05 D0 */	addi r4, r28, 0x5d0
/* 80767CAC  38 BC 05 38 */	addi r5, r28, 0x538
/* 80767CB0  38 C1 00 34 */	addi r6, r1, 0x34
/* 80767CB4  48 00 33 45 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80767CB8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80767CBC  4B BF A5 5C */	b _restgpr_25
/* 80767CC0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80767CC4  7C 08 03 A6 */	mtlr r0
/* 80767CC8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80767CCC  4E 80 00 20 */	blr 
