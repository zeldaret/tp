lbl_80476618:
/* 80476618  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047661C  7C 08 02 A6 */	mflr r0
/* 80476620  90 01 00 34 */	stw r0, 0x34(r1)
/* 80476624  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80476628  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8047662C  39 61 00 20 */	addi r11, r1, 0x20
/* 80476630  4B EE BB AC */	b _savegpr_29
/* 80476634  7C 7F 1B 78 */	mr r31, r3
/* 80476638  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 8047663C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80476640  54 7E E7 FE */	rlwinm r30, r3, 0x1c, 0x1f, 0x1f
/* 80476644  3B A0 00 00 */	li r29, 0
/* 80476648  41 82 00 24 */	beq lbl_8047666C
/* 8047664C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80476650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80476654  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80476658  38 9F 06 64 */	addi r4, r31, 0x664
/* 8047665C  4B BF E7 F4 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80476660  20 63 00 03 */	subfic r3, r3, 3
/* 80476664  30 03 FF FF */	addic r0, r3, -1
/* 80476668  7F A0 19 10 */	subfe r29, r0, r3
lbl_8047666C:
/* 8047666C  88 1F 0C F1 */	lbz r0, 0xcf1(r31)
/* 80476670  28 00 00 03 */	cmplwi r0, 3
/* 80476674  40 82 00 78 */	bne lbl_804766EC
/* 80476678  28 1E 00 00 */	cmplwi r30, 0
/* 8047667C  40 82 00 0C */	bne lbl_80476688
/* 80476680  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80476684  41 82 00 0C */	beq lbl_80476690
lbl_80476688:
/* 80476688  38 60 00 01 */	li r3, 1
/* 8047668C  48 00 00 B8 */	b lbl_80476744
lbl_80476690:
/* 80476690  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80476694  28 00 00 04 */	cmplwi r0, 4
/* 80476698  40 82 00 54 */	bne lbl_804766EC
/* 8047669C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804766A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804766A4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804766A8  3C 80 80 48 */	lis r4, struct_8047A4BC+0x0@ha
/* 804766AC  38 84 A4 BC */	addi r4, r4, struct_8047A4BC+0x0@l
/* 804766B0  38 84 01 71 */	addi r4, r4, 0x171
/* 804766B4  4B EF 22 E0 */	b strcmp
/* 804766B8  2C 03 00 00 */	cmpwi r3, 0
/* 804766BC  40 82 00 30 */	bne lbl_804766EC
/* 804766C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804766C4  2C 00 00 04 */	cmpwi r0, 4
/* 804766C8  40 82 00 24 */	bne lbl_804766EC
/* 804766CC  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 804766D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804766D4  7F E5 FB 78 */	mr r5, r31
/* 804766D8  4B BA 75 90 */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804766DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804766E0  41 82 00 0C */	beq lbl_804766EC
/* 804766E4  38 60 00 01 */	li r3, 1
/* 804766E8  48 00 00 5C */	b lbl_80476744
lbl_804766EC:
/* 804766EC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804766F0  41 82 00 34 */	beq lbl_80476724
/* 804766F4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804766F8  C0 1F 0C EC */	lfs f0, 0xcec(r31)
/* 804766FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80476700  FC 00 02 10 */	fabs f0, f0
/* 80476704  FF E0 00 18 */	frsp f31, f0
/* 80476708  7F E3 FB 78 */	mr r3, r31
/* 8047670C  4B FF 8F 99 */	bl data__12daObjCarry_cFv
/* 80476710  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80476714  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80476718  40 81 00 0C */	ble lbl_80476724
/* 8047671C  38 60 00 01 */	li r3, 1
/* 80476720  48 00 00 24 */	b lbl_80476744
lbl_80476724:
/* 80476724  88 1F 0C F1 */	lbz r0, 0xcf1(r31)
/* 80476728  28 00 00 09 */	cmplwi r0, 9
/* 8047672C  40 82 00 14 */	bne lbl_80476740
/* 80476730  28 1E 00 00 */	cmplwi r30, 0
/* 80476734  41 82 00 0C */	beq lbl_80476740
/* 80476738  38 60 00 01 */	li r3, 1
/* 8047673C  48 00 00 08 */	b lbl_80476744
lbl_80476740:
/* 80476740  38 60 00 00 */	li r3, 0
lbl_80476744:
/* 80476744  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80476748  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8047674C  39 61 00 20 */	addi r11, r1, 0x20
/* 80476750  4B EE BA D8 */	b _restgpr_29
/* 80476754  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80476758  7C 08 03 A6 */	mtlr r0
/* 8047675C  38 21 00 30 */	addi r1, r1, 0x30
/* 80476760  4E 80 00 20 */	blr 
