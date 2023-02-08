lbl_801BD524:
/* 801BD524  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BD528  7C 08 02 A6 */	mflr r0
/* 801BD52C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BD530  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801BD534  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801BD538  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801BD53C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801BD540  39 61 00 20 */	addi r11, r1, 0x20
/* 801BD544  48 1A 4C 91 */	bl _savegpr_27
/* 801BD548  7C 7D 1B 78 */	mr r29, r3
/* 801BD54C  7C 9E 23 78 */	mr r30, r4
/* 801BD550  FF C0 08 90 */	fmr f30, f1
/* 801BD554  FF E0 10 90 */	fmr f31, f2
/* 801BD558  7C BF 2B 78 */	mr r31, r5
/* 801BD55C  3B 60 00 00 */	li r27, 0
/* 801BD560  3B 80 00 00 */	li r28, 0
/* 801BD564  48 00 00 4C */	b lbl_801BD5B0
lbl_801BD568:
/* 801BD568  7F A3 EB 78 */	mr r3, r29
/* 801BD56C  4B FF FC 69 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD570  7C 60 07 74 */	extsb r0, r3
/* 801BD574  7C 1B 00 00 */	cmpw r27, r0
/* 801BD578  40 82 00 24 */	bne lbl_801BD59C
/* 801BD57C  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BD580  7C 7D E2 14 */	add r3, r29, r28
/* 801BD584  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 801BD588  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801BD58C  40 82 00 10 */	bne lbl_801BD59C
/* 801BD590  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BD594  48 09 80 35 */	bl show__13CPaneMgrAlphaFv
/* 801BD598  48 00 00 10 */	b lbl_801BD5A8
lbl_801BD59C:
/* 801BD59C  38 1C 00 14 */	addi r0, r28, 0x14
/* 801BD5A0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801BD5A4  48 09 80 65 */	bl hide__13CPaneMgrAlphaFv
lbl_801BD5A8:
/* 801BD5A8  3B 7B 00 01 */	addi r27, r27, 1
/* 801BD5AC  3B 9C 00 04 */	addi r28, r28, 4
lbl_801BD5B0:
/* 801BD5B0  88 7D 01 71 */	lbz r3, 0x171(r29)
/* 801BD5B4  88 1D 01 70 */	lbz r0, 0x170(r29)
/* 801BD5B8  7C 63 00 50 */	subf r3, r3, r0
/* 801BD5BC  38 03 00 01 */	addi r0, r3, 1
/* 801BD5C0  7C 00 07 74 */	extsb r0, r0
/* 801BD5C4  7C 1B 00 00 */	cmpw r27, r0
/* 801BD5C8  41 80 FF A0 */	blt lbl_801BD568
/* 801BD5CC  7F A3 EB 78 */	mr r3, r29
/* 801BD5D0  4B FF FC 05 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD5D4  7C 64 07 74 */	extsb r4, r3
/* 801BD5D8  88 1D 01 71 */	lbz r0, 0x171(r29)
/* 801BD5DC  7C 03 07 74 */	extsb r3, r0
/* 801BD5E0  88 1D 01 72 */	lbz r0, 0x172(r29)
/* 801BD5E4  7C 00 07 74 */	extsb r0, r0
/* 801BD5E8  7C 03 00 50 */	subf r0, r3, r0
/* 801BD5EC  7C 00 20 00 */	cmpw r0, r4
/* 801BD5F0  40 82 00 10 */	bne lbl_801BD600
/* 801BD5F4  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 801BD5F8  48 09 7F D1 */	bl show__13CPaneMgrAlphaFv
/* 801BD5FC  48 00 00 0C */	b lbl_801BD608
lbl_801BD600:
/* 801BD600  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 801BD604  48 09 80 05 */	bl hide__13CPaneMgrAlphaFv
lbl_801BD608:
/* 801BD608  88 1D 01 73 */	lbz r0, 0x173(r29)
/* 801BD60C  7C 00 07 74 */	extsb r0, r0
/* 801BD610  2C 00 FF 9D */	cmpwi r0, -99
/* 801BD614  41 82 00 40 */	beq lbl_801BD654
/* 801BD618  7F A3 EB 78 */	mr r3, r29
/* 801BD61C  4B FF FB B9 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD620  7C 64 07 74 */	extsb r4, r3
/* 801BD624  88 1D 01 71 */	lbz r0, 0x171(r29)
/* 801BD628  7C 03 07 74 */	extsb r3, r0
/* 801BD62C  88 1D 01 73 */	lbz r0, 0x173(r29)
/* 801BD630  7C 00 07 74 */	extsb r0, r0
/* 801BD634  7C 03 00 50 */	subf r0, r3, r0
/* 801BD638  7C 00 20 00 */	cmpw r0, r4
/* 801BD63C  40 82 00 10 */	bne lbl_801BD64C
/* 801BD640  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 801BD644  48 09 7F 85 */	bl show__13CPaneMgrAlphaFv
/* 801BD648  48 00 00 0C */	b lbl_801BD654
lbl_801BD64C:
/* 801BD64C  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 801BD650  48 09 7F B9 */	bl hide__13CPaneMgrAlphaFv
lbl_801BD654:
/* 801BD654  7F C3 F3 78 */	mr r3, r30
/* 801BD658  FC 20 F0 90 */	fmr f1, f30
/* 801BD65C  FC 40 F8 90 */	fmr f2, f31
/* 801BD660  7F E4 FB 78 */	mr r4, r31
/* 801BD664  48 13 B8 71 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801BD668  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801BD66C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801BD670  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801BD674  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801BD678  39 61 00 20 */	addi r11, r1, 0x20
/* 801BD67C  48 1A 4B A5 */	bl _restgpr_27
/* 801BD680  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BD684  7C 08 03 A6 */	mtlr r0
/* 801BD688  38 21 00 40 */	addi r1, r1, 0x40
/* 801BD68C  4E 80 00 20 */	blr 
