lbl_8061CB4C:
/* 8061CB4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061CB50  7C 08 02 A6 */	mflr r0
/* 8061CB54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061CB58  39 61 00 30 */	addi r11, r1, 0x30
/* 8061CB5C  4B D4 56 74 */	b _savegpr_26
/* 8061CB60  7C 7E 1B 78 */	mr r30, r3
/* 8061CB64  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061CB68  3B E3 D9 D4 */	addi r31, r3, lit_3650@l
/* 8061CB6C  38 7E 0C CC */	addi r3, r30, 0xccc
/* 8061CB70  4B A6 6C C0 */	b Move__10dCcD_GSttsFv
/* 8061CB74  A8 1E 05 F4 */	lha r0, 0x5f4(r30)
/* 8061CB78  2C 00 00 00 */	cmpwi r0, 0
/* 8061CB7C  40 82 02 04 */	bne lbl_8061CD80
/* 8061CB80  3B 60 00 00 */	li r27, 0
/* 8061CB84  3B 40 00 07 */	li r26, 7
/* 8061CB88  3B A0 08 88 */	li r29, 0x888
lbl_8061CB8C:
/* 8061CB8C  3B 9D 0C EC */	addi r28, r29, 0xcec
/* 8061CB90  7F 9E E2 14 */	add r28, r30, r28
/* 8061CB94  7F 83 E3 78 */	mr r3, r28
/* 8061CB98  4B A6 78 C8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8061CB9C  28 03 00 00 */	cmplwi r3, 0
/* 8061CBA0  41 82 00 E8 */	beq lbl_8061CC88
/* 8061CBA4  7F 83 E3 78 */	mr r3, r28
/* 8061CBA8  4B A6 79 50 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8061CBAC  90 7E 1F 34 */	stw r3, 0x1f34(r30)
/* 8061CBB0  38 00 03 E8 */	li r0, 0x3e8
/* 8061CBB4  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8061CBB8  7F C3 F3 78 */	mr r3, r30
/* 8061CBBC  38 9E 1F 34 */	addi r4, r30, 0x1f34
/* 8061CBC0  4B A6 B0 44 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8061CBC4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061CBC8  80 63 00 04 */	lwz r3, 4(r3)
/* 8061CBCC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061CBD0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8061CBD4  57 43 08 3C */	slwi r3, r26, 1
/* 8061CBD8  38 03 00 01 */	addi r0, r3, 1
/* 8061CBDC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8061CBE0  7C 64 02 14 */	add r3, r4, r0
/* 8061CBE4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8061CBE8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8061CBEC  4B D2 98 C4 */	b PSMTXCopy
/* 8061CBF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061CBF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061CBF8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8061CBFC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8061CC00  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8061CC04  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8061CC08  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8061CC0C  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8061CC10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061CC14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061CC18  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8061CC1C  38 80 00 01 */	li r4, 1
/* 8061CC20  7F C5 F3 78 */	mr r5, r30
/* 8061CC24  38 DE 05 38 */	addi r6, r30, 0x538
/* 8061CC28  38 E0 00 00 */	li r7, 0
/* 8061CC2C  39 00 00 00 */	li r8, 0
/* 8061CC30  39 20 00 00 */	li r9, 0
/* 8061CC34  4B A2 F5 E4 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8061CC38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070371@ha */
/* 8061CC3C  38 03 03 71 */	addi r0, r3, 0x0371 /* 0x00070371@l */
/* 8061CC40  90 01 00 08 */	stw r0, 8(r1)
/* 8061CC44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8061CC48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8061CC4C  80 63 00 00 */	lwz r3, 0(r3)
/* 8061CC50  38 81 00 08 */	addi r4, r1, 8
/* 8061CC54  38 BE 05 38 */	addi r5, r30, 0x538
/* 8061CC58  38 C0 00 00 */	li r6, 0
/* 8061CC5C  38 E0 00 00 */	li r7, 0
/* 8061CC60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061CC64  FC 40 08 90 */	fmr f2, f1
/* 8061CC68  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 8061CC6C  FC 80 18 90 */	fmr f4, f3
/* 8061CC70  39 00 00 00 */	li r8, 0
/* 8061CC74  4B C8 ED 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8061CC78  3B 60 00 01 */	li r27, 1
/* 8061CC7C  38 00 00 14 */	li r0, 0x14
/* 8061CC80  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
/* 8061CC84  48 00 00 14 */	b lbl_8061CC98
lbl_8061CC88:
/* 8061CC88  3B 5A 00 01 */	addi r26, r26, 1
/* 8061CC8C  2C 1A 00 0F */	cmpwi r26, 0xf
/* 8061CC90  3B BD 01 38 */	addi r29, r29, 0x138
/* 8061CC94  41 80 FE F8 */	blt lbl_8061CB8C
lbl_8061CC98:
/* 8061CC98  A8 1E 05 CE */	lha r0, 0x5ce(r30)
/* 8061CC9C  2C 00 00 02 */	cmpwi r0, 2
/* 8061CCA0  40 82 00 28 */	bne lbl_8061CCC8
/* 8061CCA4  3C 60 80 62 */	lis r3, boss@ha
/* 8061CCA8  38 63 DB D4 */	addi r3, r3, boss@l
/* 8061CCAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8061CCB0  88 03 5D 10 */	lbz r0, 0x5d10(r3)
/* 8061CCB4  28 00 00 00 */	cmplwi r0, 0
/* 8061CCB8  41 82 00 10 */	beq lbl_8061CCC8
/* 8061CCBC  38 00 00 00 */	li r0, 0
/* 8061CCC0  98 03 5D 10 */	stb r0, 0x5d10(r3)
/* 8061CCC4  3B 60 00 01 */	li r27, 1
lbl_8061CCC8:
/* 8061CCC8  2C 1B 00 00 */	cmpwi r27, 0
/* 8061CCCC  41 82 00 B4 */	beq lbl_8061CD80
/* 8061CCD0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8061CCD4  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 8061CCD8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8061CCDC  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 8061CCE0  A8 1E 05 CE */	lha r0, 0x5ce(r30)
/* 8061CCE4  2C 00 00 01 */	cmpwi r0, 1
/* 8061CCE8  41 82 00 1C */	beq lbl_8061CD04
/* 8061CCEC  38 00 00 01 */	li r0, 1
/* 8061CCF0  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8061CCF4  38 00 00 00 */	li r0, 0
/* 8061CCF8  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8061CCFC  B0 1E 0C 98 */	sth r0, 0xc98(r30)
/* 8061CD00  B0 1E 0C A2 */	sth r0, 0xca2(r30)
lbl_8061CD04:
/* 8061CD04  3C 60 80 62 */	lis r3, boss@ha
/* 8061CD08  38 83 DB D4 */	addi r4, r3, boss@l
/* 8061CD0C  80 64 00 00 */	lwz r3, 0(r4)
/* 8061CD10  A8 03 5C 80 */	lha r0, 0x5c80(r3)
/* 8061CD14  2C 00 00 00 */	cmpwi r0, 0
/* 8061CD18  41 82 00 30 */	beq lbl_8061CD48
/* 8061CD1C  38 00 00 64 */	li r0, 0x64
/* 8061CD20  B0 03 5C 80 */	sth r0, 0x5c80(r3)
/* 8061CD24  38 00 00 1E */	li r0, 0x1e
/* 8061CD28  80 64 00 00 */	lwz r3, 0(r4)
/* 8061CD2C  90 03 47 38 */	stw r0, 0x4738(r3)
/* 8061CD30  38 00 00 02 */	li r0, 2
/* 8061CD34  80 64 00 00 */	lwz r3, 0(r4)
/* 8061CD38  98 03 47 3C */	stb r0, 0x473c(r3)
/* 8061CD3C  38 00 00 B4 */	li r0, 0xb4
/* 8061CD40  80 64 00 00 */	lwz r3, 0(r4)
/* 8061CD44  B0 03 47 94 */	sth r0, 0x4794(r3)
lbl_8061CD48:
/* 8061CD48  38 00 00 06 */	li r0, 6
/* 8061CD4C  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
/* 8061CD50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070349@ha */
/* 8061CD54  38 03 03 49 */	addi r0, r3, 0x0349 /* 0x00070349@l */
/* 8061CD58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061CD5C  3C 60 80 62 */	lis r3, boss@ha
/* 8061CD60  38 63 DB D4 */	addi r3, r3, boss@l
/* 8061CD64  80 63 00 00 */	lwz r3, 0(r3)
/* 8061CD68  38 81 00 0C */	addi r4, r1, 0xc
/* 8061CD6C  38 A0 FF FF */	li r5, -1
/* 8061CD70  85 83 59 E0 */	lwzu r12, 0x59e0(r3)
/* 8061CD74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8061CD78  7D 89 03 A6 */	mtctr r12
/* 8061CD7C  4E 80 04 21 */	bctrl 
lbl_8061CD80:
/* 8061CD80  39 61 00 30 */	addi r11, r1, 0x30
/* 8061CD84  4B D4 54 98 */	b _restgpr_26
/* 8061CD88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061CD8C  7C 08 03 A6 */	mtlr r0
/* 8061CD90  38 21 00 30 */	addi r1, r1, 0x30
/* 8061CD94  4E 80 00 20 */	blr 
