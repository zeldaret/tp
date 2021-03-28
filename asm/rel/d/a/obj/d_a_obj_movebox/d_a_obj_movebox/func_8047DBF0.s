lbl_8047DBF0:
/* 8047DBF0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8047DBF4  7C 08 02 A6 */	mflr r0
/* 8047DBF8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8047DBFC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8047DC00  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8047DC04  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8047DC08  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8047DC0C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8047DC10  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8047DC14  39 61 00 50 */	addi r11, r1, 0x50
/* 8047DC18  4B EE 45 A0 */	b _savegpr_20
/* 8047DC1C  7C 7B 1B 78 */	mr r27, r3
/* 8047DC20  7C 9C 23 78 */	mr r28, r4
/* 8047DC24  7C BD 2B 78 */	mr r29, r5
/* 8047DC28  7C DE 33 78 */	mr r30, r6
/* 8047DC2C  FF A0 08 90 */	fmr f29, f1
/* 8047DC30  3C 60 80 48 */	lis r3, lit_3728@ha
/* 8047DC34  C3 C3 10 EC */	lfs f30, lit_3728@l(r3)
/* 8047DC38  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8047DC3C  4B B8 F1 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8047DC40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047DC44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047DC48  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 8047DC4C  4B B8 E7 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 8047DC50  38 00 FF FF */	li r0, -1
/* 8047DC54  90 1B 00 5C */	stw r0, 0x5c(r27)
/* 8047DC58  3B E0 00 00 */	li r31, 0
/* 8047DC5C  3B 40 00 00 */	li r26, 0
/* 8047DC60  3B 20 00 00 */	li r25, 0
/* 8047DC64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047DC68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8047DC6C  3A A3 0F 38 */	addi r21, r3, 0xf38
/* 8047DC70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047DC74  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
/* 8047DC78  3C 60 80 48 */	lis r3, M_gnd_work__Q212daObjMovebox5Bgc_c@ha
/* 8047DC7C  3A E3 18 D4 */	addi r23, r3, M_gnd_work__Q212daObjMovebox5Bgc_c@l
/* 8047DC80  83 1C 00 04 */	lwz r24, 4(r28)
/* 8047DC84  48 00 00 CC */	b lbl_8047DD50
lbl_8047DC88:
/* 8047DC88  7F 83 E3 78 */	mr r3, r28
/* 8047DC8C  48 00 0A 25 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047DC90  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 8047DC94  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8047DC98  EC 20 00 72 */	fmuls f1, f0, f1
/* 8047DC9C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8047DCA0  EF E0 08 2A */	fadds f31, f0, f1
/* 8047DCA4  7F 83 E3 78 */	mr r3, r28
/* 8047DCA8  48 00 0A 09 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047DCAC  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 8047DCB0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8047DCB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8047DCB8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8047DCBC  EC 00 08 2A */	fadds f0, f0, f1
/* 8047DCC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8047DCC4  D3 A1 00 18 */	stfs f29, 0x18(r1)
/* 8047DCC8  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8047DCCC  7E C3 B3 78 */	mr r3, r22
/* 8047DCD0  38 81 00 14 */	addi r4, r1, 0x14
/* 8047DCD4  38 A1 00 08 */	addi r5, r1, 8
/* 8047DCD8  4B EC 90 94 */	b PSMTXMultVec
/* 8047DCDC  7E 97 CA 14 */	add r20, r23, r25
/* 8047DCE0  7E 83 A3 78 */	mr r3, r20
/* 8047DCE4  38 81 00 08 */	addi r4, r1, 8
/* 8047DCE8  4B DE A0 40 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8047DCEC  93 14 00 08 */	stw r24, 8(r20)
/* 8047DCF0  7E A3 AB 78 */	mr r3, r21
/* 8047DCF4  7E 84 A3 78 */	mr r4, r20
/* 8047DCF8  4B BF 67 A8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8047DCFC  7C 3B D5 2E */	stfsx f1, r27, r26
/* 8047DD00  7C 1B D4 2E */	lfsx f0, r27, r26
/* 8047DD04  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8047DD08  40 81 00 38 */	ble lbl_8047DD40
/* 8047DD0C  7E A3 AB 78 */	mr r3, r21
/* 8047DD10  A0 94 00 16 */	lhz r4, 0x16(r20)
/* 8047DD14  4B BF 69 04 */	b GetActorPointer__4cBgSCFi
/* 8047DD18  28 03 00 00 */	cmplwi r3, 0
/* 8047DD1C  41 82 00 1C */	beq lbl_8047DD38
/* 8047DD20  A8 03 00 08 */	lha r0, 8(r3)
/* 8047DD24  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8047DD28  40 82 00 10 */	bne lbl_8047DD38
/* 8047DD2C  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8047DD30  2C 00 00 02 */	cmpwi r0, 2
/* 8047DD34  41 82 00 0C */	beq lbl_8047DD40
lbl_8047DD38:
/* 8047DD38  7F DB D4 2E */	lfsx f30, r27, r26
/* 8047DD3C  93 FB 00 5C */	stw r31, 0x5c(r27)
lbl_8047DD40:
/* 8047DD40  3B FF 00 01 */	addi r31, r31, 1
/* 8047DD44  3B 5A 00 04 */	addi r26, r26, 4
/* 8047DD48  3B 39 00 54 */	addi r25, r25, 0x54
/* 8047DD4C  3B BD 00 10 */	addi r29, r29, 0x10
lbl_8047DD50:
/* 8047DD50  7C 1F F0 00 */	cmpw r31, r30
/* 8047DD54  41 80 FF 34 */	blt lbl_8047DC88
/* 8047DD58  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8047DD5C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8047DD60  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8047DD64  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8047DD68  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8047DD6C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8047DD70  39 61 00 50 */	addi r11, r1, 0x50
/* 8047DD74  4B EE 44 90 */	b _restgpr_20
/* 8047DD78  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8047DD7C  7C 08 03 A6 */	mtlr r0
/* 8047DD80  38 21 00 80 */	addi r1, r1, 0x80
/* 8047DD84  4E 80 00 20 */	blr 
