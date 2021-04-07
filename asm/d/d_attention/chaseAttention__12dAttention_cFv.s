lbl_80071A98:
/* 80071A98  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80071A9C  7C 08 02 A6 */	mflr r0
/* 80071AA0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80071AA4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80071AA8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80071AAC  39 61 00 60 */	addi r11, r1, 0x60
/* 80071AB0  48 2F 07 29 */	bl _savegpr_28
/* 80071AB4  7C 7D 1B 78 */	mr r29, r3
/* 80071AB8  80 03 03 DC */	lwz r0, 0x3dc(r3)
/* 80071ABC  1F E0 00 14 */	mulli r31, r0, 0x14
/* 80071AC0  3B 9F 03 38 */	addi r28, r31, 0x338
/* 80071AC4  7F 9D E2 14 */	add r28, r29, r28
/* 80071AC8  7F 83 E3 78 */	mr r3, r28
/* 80071ACC  48 00 1D 99 */	bl getActor__10dAttList_cFv
/* 80071AD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80071AD4  40 82 00 0C */	bne lbl_80071AE0
/* 80071AD8  38 60 00 00 */	li r3, 0
/* 80071ADC  48 00 01 C4 */	b lbl_80071CA0
lbl_80071AE0:
/* 80071AE0  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 80071AE4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80071AE8  40 82 01 A8 */	bne lbl_80071C90
/* 80071AEC  38 61 00 38 */	addi r3, r1, 0x38
/* 80071AF0  38 9E 05 50 */	addi r4, r30, 0x550
/* 80071AF4  38 BD 03 1C */	addi r5, r29, 0x31c
/* 80071AF8  48 1F 50 3D */	bl __mi__4cXyzCFRC3Vec
/* 80071AFC  38 61 00 24 */	addi r3, r1, 0x24
/* 80071B00  38 81 00 38 */	addi r4, r1, 0x38
/* 80071B04  48 1F FD 7D */	bl __ct__7cSGlobeFRC4cXyz
/* 80071B08  80 BD 00 00 */	lwz r5, 0(r29)
/* 80071B0C  38 61 00 0C */	addi r3, r1, 0xc
/* 80071B10  38 81 00 2A */	addi r4, r1, 0x2a
/* 80071B14  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80071B18  48 1F F7 11 */	bl __mi__7cSAngleCFs
/* 80071B1C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80071B20  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80071B24  38 61 00 2C */	addi r3, r1, 0x2c
/* 80071B28  38 9D 03 1C */	addi r4, r29, 0x31c
/* 80071B2C  38 BE 05 50 */	addi r5, r30, 0x550
/* 80071B30  48 1F 50 05 */	bl __mi__4cXyzCFRC3Vec
/* 80071B34  38 61 00 1C */	addi r3, r1, 0x1c
/* 80071B38  38 81 00 2C */	addi r4, r1, 0x2c
/* 80071B3C  48 1F FD 45 */	bl __ct__7cSGlobeFRC4cXyz
/* 80071B40  38 61 00 08 */	addi r3, r1, 8
/* 80071B44  38 81 00 22 */	addi r4, r1, 0x22
/* 80071B48  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80071B4C  48 1F F6 DD */	bl __mi__7cSAngleCFs
/* 80071B50  A8 01 00 08 */	lha r0, 8(r1)
/* 80071B54  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80071B58  7F A3 EB 78 */	mr r3, r29
/* 80071B5C  38 80 00 4C */	li r4, 0x4c
/* 80071B60  7F C5 F3 78 */	mr r5, r30
/* 80071B64  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80071B68  A8 C1 00 14 */	lha r6, 0x14(r1)
/* 80071B6C  7C 07 07 34 */	extsh r7, r0
/* 80071B70  39 01 00 18 */	addi r8, r1, 0x18
/* 80071B74  4B FF F3 1D */	bl calcWeight__12dAttention_cFiP10fopAc_ac_cfssPUl
/* 80071B78  FF E0 08 90 */	fmr f31, f1
/* 80071B7C  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80071B80  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80071B84  4C 40 13 82 */	cror 2, 0, 2
/* 80071B88  40 82 00 DC */	bne lbl_80071C64
/* 80071B8C  7C 7D FA 14 */	add r3, r29, r31
/* 80071B90  80 83 03 44 */	lwz r4, 0x344(r3)
/* 80071B94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80071B98  7C 7E 22 14 */	add r3, r30, r4
/* 80071B9C  8B 83 05 44 */	lbz r28, 0x544(r3)
/* 80071BA0  7F A3 EB 78 */	mr r3, r29
/* 80071BA4  80 BE 05 5C */	lwz r5, 0x55c(r30)
/* 80071BA8  4B FF EE C9 */	bl chkAttMask__12dAttention_cFUlUl
/* 80071BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80071BB0  40 82 00 0C */	bne lbl_80071BBC
/* 80071BB4  38 60 00 00 */	li r3, 0
/* 80071BB8  48 00 00 E8 */	b lbl_80071CA0
lbl_80071BBC:
/* 80071BBC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80071BC0  A0 9E 00 FA */	lhz r4, 0xfa(r30)
/* 80071BC4  4B FF EE FD */	bl check_event_condition__FUlUs
/* 80071BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80071BCC  41 82 00 0C */	beq lbl_80071BD8
/* 80071BD0  38 60 00 00 */	li r3, 0
/* 80071BD4  48 00 00 CC */	b lbl_80071CA0
lbl_80071BD8:
/* 80071BD8  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha /* 0x803A9C70@ha */
/* 80071BDC  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l /* 0x803A9C70@l */
/* 80071BE0  1F 9C 00 1C */	mulli r28, r28, 0x1c
/* 80071BE4  7C 60 E2 14 */	add r3, r0, r28
/* 80071BE8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80071BEC  A8 81 00 14 */	lha r4, 0x14(r1)
/* 80071BF0  A8 A1 00 10 */	lha r5, 0x10(r1)
/* 80071BF4  4B FF EF 39 */	bl check_flontofplayer__FUlss
/* 80071BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80071BFC  41 82 00 0C */	beq lbl_80071C08
/* 80071C00  38 60 00 00 */	li r3, 0
/* 80071C04  48 00 00 9C */	b lbl_80071CA0
lbl_80071C08:
/* 80071C08  38 7D 03 1C */	addi r3, r29, 0x31c
/* 80071C0C  A8 81 00 14 */	lha r4, 0x14(r1)
/* 80071C10  38 BE 05 50 */	addi r5, r30, 0x550
/* 80071C14  3C C0 80 3B */	lis r6, dist_table__12dAttention_c@ha /* 0x803A9C70@ha */
/* 80071C18  38 06 9C 70 */	addi r0, r6, dist_table__12dAttention_c@l /* 0x803A9C70@l */
/* 80071C1C  7C C0 E2 14 */	add r6, r0, r28
/* 80071C20  C0 26 00 04 */	lfs f1, 4(r6)
/* 80071C24  C0 46 00 08 */	lfs f2, 8(r6)
/* 80071C28  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 80071C2C  C0 86 00 10 */	lfs f4, 0x10(r6)
/* 80071C30  4B FF F0 71 */	bl check_distace__FP4cXyzsP4cXyzffff
/* 80071C34  2C 03 00 00 */	cmpwi r3, 0
/* 80071C38  41 82 00 24 */	beq lbl_80071C5C
/* 80071C3C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80071C40  A8 61 00 14 */	lha r3, 0x14(r1)
/* 80071C44  C0 42 8C 94 */	lfs f2, lit_4563(r2)
/* 80071C48  4B FF EF AD */	bl distace_weight__Ffsf
/* 80071C4C  7C 7D FA 14 */	add r3, r29, r31
/* 80071C50  D0 23 03 38 */	stfs f1, 0x338(r3)
/* 80071C54  38 60 00 01 */	li r3, 1
/* 80071C58  48 00 00 48 */	b lbl_80071CA0
lbl_80071C5C:
/* 80071C5C  38 60 00 00 */	li r3, 0
/* 80071C60  48 00 00 40 */	b lbl_80071CA0
lbl_80071C64:
/* 80071C64  7F 83 E3 78 */	mr r3, r28
/* 80071C68  7F C4 F3 78 */	mr r4, r30
/* 80071C6C  48 00 1C 2D */	bl setActor__10dAttList_cFP10fopAc_ac_c
/* 80071C70  7C 7D FA 14 */	add r3, r29, r31
/* 80071C74  D3 E3 03 38 */	stfs f31, 0x338(r3)
/* 80071C78  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80071C7C  D0 03 03 3C */	stfs f0, 0x33c(r3)
/* 80071C80  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80071C84  90 03 03 44 */	stw r0, 0x344(r3)
/* 80071C88  38 60 00 01 */	li r3, 1
/* 80071C8C  48 00 00 14 */	b lbl_80071CA0
lbl_80071C90:
/* 80071C90  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80071C94  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 80071C98  30 03 FF FF */	addic r0, r3, -1
/* 80071C9C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80071CA0:
/* 80071CA0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80071CA4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80071CA8  39 61 00 60 */	addi r11, r1, 0x60
/* 80071CAC  48 2F 05 79 */	bl _restgpr_28
/* 80071CB0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80071CB4  7C 08 03 A6 */	mtlr r0
/* 80071CB8  38 21 00 70 */	addi r1, r1, 0x70
/* 80071CBC  4E 80 00 20 */	blr 
