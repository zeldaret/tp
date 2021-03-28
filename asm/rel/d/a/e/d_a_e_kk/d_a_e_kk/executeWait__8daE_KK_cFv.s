lbl_806FB7D8:
/* 806FB7D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FB7DC  7C 08 02 A6 */	mflr r0
/* 806FB7E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FB7E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806FB7E8  4B C6 69 F0 */	b _savegpr_28
/* 806FB7EC  7C 7C 1B 78 */	mr r28, r3
/* 806FB7F0  3C 80 80 70 */	lis r4, lit_3792@ha
/* 806FB7F4  3B C4 F5 E8 */	addi r30, r4, lit_3792@l
/* 806FB7F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FB7FC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 806FB800  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 806FB804  80 03 06 64 */	lwz r0, 0x664(r3)
/* 806FB808  2C 00 00 01 */	cmpwi r0, 1
/* 806FB80C  41 82 00 C8 */	beq lbl_806FB8D4
/* 806FB810  40 80 00 E0 */	bge lbl_806FB8F0
/* 806FB814  2C 00 00 00 */	cmpwi r0, 0
/* 806FB818  40 80 00 08 */	bge lbl_806FB820
/* 806FB81C  48 00 00 D4 */	b lbl_806FB8F0
lbl_806FB820:
/* 806FB820  7F A4 EB 78 */	mr r4, r29
/* 806FB824  4B 91 EF BC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB828  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FB82C  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FB830  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806FB834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB838  4C 40 13 82 */	cror 2, 0, 2
/* 806FB83C  40 82 00 58 */	bne lbl_806FB894
/* 806FB840  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806FB844  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806FB848  EC 21 00 2A */	fadds f1, f1, f0
/* 806FB84C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806FB850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB854  4C 41 13 82 */	cror 2, 1, 2
/* 806FB858  40 82 00 3C */	bne lbl_806FB894
/* 806FB85C  7F 83 E3 78 */	mr r3, r28
/* 806FB860  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806FB864  4B 92 15 98 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB868  2C 03 00 00 */	cmpwi r3, 0
/* 806FB86C  40 82 00 28 */	bne lbl_806FB894
/* 806FB870  7F 83 E3 78 */	mr r3, r28
/* 806FB874  38 80 00 1A */	li r4, 0x1a
/* 806FB878  38 A0 00 02 */	li r5, 2
/* 806FB87C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806FB880  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FB884  4B FF F1 E5 */	bl setBck__8daE_KK_cFiUcff
/* 806FB888  38 00 00 1E */	li r0, 0x1e
/* 806FB88C  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 806FB890  48 00 00 38 */	b lbl_806FB8C8
lbl_806FB894:
/* 806FB894  7F 83 E3 78 */	mr r3, r28
/* 806FB898  38 80 00 19 */	li r4, 0x19
/* 806FB89C  38 A0 00 02 */	li r5, 2
/* 806FB8A0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 806FB8A4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FB8A8  4B FF F1 C1 */	bl setBck__8daE_KK_cFiUcff
/* 806FB8AC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806FB8B0  4B B6 C0 A4 */	b cM_rndF__Ff
/* 806FB8B4  FC 00 08 1E */	fctiwz f0, f1
/* 806FB8B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 806FB8BC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 806FB8C0  38 03 00 1E */	addi r0, r3, 0x1e
/* 806FB8C4  B0 1C 06 72 */	sth r0, 0x672(r28)
lbl_806FB8C8:
/* 806FB8C8  38 00 00 01 */	li r0, 1
/* 806FB8CC  90 1C 06 64 */	stw r0, 0x664(r28)
/* 806FB8D0  48 00 00 20 */	b lbl_806FB8F0
lbl_806FB8D4:
/* 806FB8D4  A8 1C 06 72 */	lha r0, 0x672(r28)
/* 806FB8D8  2C 00 00 00 */	cmpwi r0, 0
/* 806FB8DC  40 82 00 14 */	bne lbl_806FB8F0
/* 806FB8E0  A8 1D 05 6C */	lha r0, 0x56c(r29)
/* 806FB8E4  7C 00 07 35 */	extsh. r0, r0
/* 806FB8E8  40 82 00 08 */	bne lbl_806FB8F0
/* 806FB8EC  4B FF FA 01 */	bl nextActionCheck__8daE_KK_cFv
lbl_806FB8F0:
/* 806FB8F0  39 61 00 20 */	addi r11, r1, 0x20
/* 806FB8F4  4B C6 69 30 */	b _restgpr_28
/* 806FB8F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FB8FC  7C 08 03 A6 */	mtlr r0
/* 806FB900  38 21 00 20 */	addi r1, r1, 0x20
/* 806FB904  4E 80 00 20 */	blr 
