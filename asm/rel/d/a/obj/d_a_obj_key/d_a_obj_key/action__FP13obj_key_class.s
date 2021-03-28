lbl_80C406EC:
/* 80C406EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C406F0  7C 08 02 A6 */	mflr r0
/* 80C406F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C406F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C406FC  4B 72 1A CC */	b _savegpr_24
/* 80C40700  7C 7E 1B 78 */	mr r30, r3
/* 80C40704  3C 80 80 C4 */	lis r4, lit_3778@ha
/* 80C40708  3B E4 0F EC */	addi r31, r4, lit_3778@l
/* 80C4070C  3B 20 00 01 */	li r25, 1
/* 80C40710  A8 03 06 0A */	lha r0, 0x60a(r3)
/* 80C40714  2C 00 00 02 */	cmpwi r0, 2
/* 80C40718  41 82 00 3C */	beq lbl_80C40754
/* 80C4071C  40 80 00 14 */	bge lbl_80C40730
/* 80C40720  2C 00 00 00 */	cmpwi r0, 0
/* 80C40724  41 82 00 18 */	beq lbl_80C4073C
/* 80C40728  40 80 00 20 */	bge lbl_80C40748
/* 80C4072C  48 00 00 E4 */	b lbl_80C40810
lbl_80C40730:
/* 80C40730  2C 00 00 04 */	cmpwi r0, 4
/* 80C40734  40 80 00 DC */	bge lbl_80C40810
/* 80C40738  48 00 00 D4 */	b lbl_80C4080C
lbl_80C4073C:
/* 80C4073C  4B FF EE C5 */	bl masterkey_check__FP13obj_key_class
/* 80C40740  3B 20 00 00 */	li r25, 0
/* 80C40744  48 00 00 CC */	b lbl_80C40810
lbl_80C40748:
/* 80C40748  4B FF EF 6D */	bl action_check__FP13obj_key_class
/* 80C4074C  3B 20 00 00 */	li r25, 0
/* 80C40750  48 00 00 C0 */	b lbl_80C40810
lbl_80C40754:
/* 80C40754  4B FF EF D5 */	bl chain_control_00__FP13obj_key_class
/* 80C40758  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C4075C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C40760  7C 65 1B 78 */	mr r5, r3
/* 80C40764  4B 70 69 2C */	b PSVECAdd
/* 80C40768  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C4076C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C40770  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C40774  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C40778  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C4077C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C40780  EC 00 08 2A */	fadds f0, f0, f1
/* 80C40784  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C40788  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80C4078C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C40790  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C40794  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C40798  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C4079C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C407A0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C407A4  4B 43 63 08 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C407A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C407AC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C407B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C407B4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C407B8  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80C407BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C407C0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C407C4  7F C3 F3 78 */	mr r3, r30
/* 80C407C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C407CC  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l
/* 80C407D0  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80C407D4  4B 3D A0 0C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C407D8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C407DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C407E0  40 80 00 30 */	bge lbl_80C40810
/* 80C407E4  38 00 00 03 */	li r0, 3
/* 80C407E8  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80C407EC  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80C407F0  28 03 00 00 */	cmplwi r3, 0
/* 80C407F4  41 82 00 0C */	beq lbl_80C40800
/* 80C407F8  80 03 00 04 */	lwz r0, 4(r3)
/* 80C407FC  48 00 00 08 */	b lbl_80C40804
lbl_80C40800:
/* 80C40800  38 00 FF FF */	li r0, -1
lbl_80C40804:
/* 80C40804  90 1E 04 A4 */	stw r0, 0x4a4(r30)
/* 80C40808  48 00 00 08 */	b lbl_80C40810
lbl_80C4080C:
/* 80C4080C  4B FF F3 B5 */	bl chain_control_01__FP13obj_key_class
lbl_80C40810:
/* 80C40810  2C 19 00 00 */	cmpwi r25, 0
/* 80C40814  41 82 00 88 */	beq lbl_80C4089C
/* 80C40818  3B 00 00 00 */	li r24, 0
/* 80C4081C  3B A0 00 00 */	li r29, 0
/* 80C40820  3B 80 00 00 */	li r28, 0
/* 80C40824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C40828  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C4082C  3C 60 80 C4 */	lis r3, key_eno@ha
/* 80C40830  3B 63 10 94 */	addi r27, r3, key_eno@l
lbl_80C40834:
/* 80C40834  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C40838  38 00 00 FF */	li r0, 0xff
/* 80C4083C  90 01 00 08 */	stw r0, 8(r1)
/* 80C40840  38 80 00 00 */	li r4, 0
/* 80C40844  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C40848  38 00 FF FF */	li r0, -1
/* 80C4084C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C40850  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C40854  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C40858  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C4085C  3B 3C 09 AC */	addi r25, r28, 0x9ac
/* 80C40860  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C40864  38 A0 00 00 */	li r5, 0
/* 80C40868  7C DB EA 2E */	lhzx r6, r27, r29
/* 80C4086C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C40870  39 00 00 00 */	li r8, 0
/* 80C40874  39 20 00 00 */	li r9, 0
/* 80C40878  39 40 00 00 */	li r10, 0
/* 80C4087C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C40880  4B 40 CC 4C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C40884  7C 7E C9 2E */	stwx r3, r30, r25
/* 80C40888  3B 18 00 01 */	addi r24, r24, 1
/* 80C4088C  2C 18 00 02 */	cmpwi r24, 2
/* 80C40890  3B BD 00 02 */	addi r29, r29, 2
/* 80C40894  3B 9C 00 04 */	addi r28, r28, 4
/* 80C40898  41 80 FF 9C */	blt lbl_80C40834
lbl_80C4089C:
/* 80C4089C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C408A0  4B 72 19 74 */	b _restgpr_24
/* 80C408A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C408A8  7C 08 03 A6 */	mtlr r0
/* 80C408AC  38 21 00 40 */	addi r1, r1, 0x40
/* 80C408B0  4E 80 00 20 */	blr 
