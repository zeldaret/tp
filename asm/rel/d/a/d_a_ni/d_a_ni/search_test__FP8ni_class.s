lbl_8094C520:
/* 8094C520  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8094C524  7C 08 02 A6 */	mflr r0
/* 8094C528  90 01 00 64 */	stw r0, 0x64(r1)
/* 8094C52C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8094C530  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8094C534  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8094C538  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8094C53C  39 61 00 40 */	addi r11, r1, 0x40
/* 8094C540  4B A1 5C 90 */	b _savegpr_26
/* 8094C544  7C 7E 1B 78 */	mr r30, r3
/* 8094C548  3C 60 80 95 */	lis r3, lit_3958@ha
/* 8094C54C  3B E3 11 C0 */	addi r31, r3, lit_3958@l
/* 8094C550  38 A0 00 00 */	li r5, 0
/* 8094C554  3C 60 80 95 */	lis r3, target_info_count@ha
/* 8094C558  90 A3 16 00 */	stw r5, target_info_count@l(r3)
/* 8094C55C  7C A3 2B 78 */	mr r3, r5
/* 8094C560  3C 80 80 95 */	lis r4, target_info@ha
/* 8094C564  38 84 15 D8 */	addi r4, r4, target_info@l
/* 8094C568  38 00 00 0A */	li r0, 0xa
/* 8094C56C  7C 09 03 A6 */	mtctr r0
lbl_8094C570:
/* 8094C570  7C A4 19 2E */	stwx r5, r4, r3
/* 8094C574  38 63 00 04 */	addi r3, r3, 4
/* 8094C578  42 00 FF F8 */	bdnz lbl_8094C570
/* 8094C57C  3C 60 80 95 */	lis r3, s_t_sub__FPvPv@ha
/* 8094C580  38 63 C4 B0 */	addi r3, r3, s_t_sub__FPvPv@l
/* 8094C584  7F C4 F3 78 */	mr r4, r30
/* 8094C588  4B 6D 4D B0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8094C58C  C3 DF 00 28 */	lfs f30, 0x28(r31)
/* 8094C590  3C 60 80 95 */	lis r3, target_info_count@ha
/* 8094C594  3B 83 16 00 */	addi r28, r3, target_info_count@l
/* 8094C598  80 1C 00 00 */	lwz r0, 0(r28)
/* 8094C59C  2C 00 00 00 */	cmpwi r0, 0
/* 8094C5A0  41 82 00 B4 */	beq lbl_8094C654
/* 8094C5A4  3B 40 00 00 */	li r26, 0
/* 8094C5A8  48 00 00 90 */	b lbl_8094C638
lbl_8094C5AC:
/* 8094C5AC  57 40 10 3A */	slwi r0, r26, 2
/* 8094C5B0  7F 7D 00 2E */	lwzx r27, r29, r0
/* 8094C5B4  38 61 00 08 */	addi r3, r1, 8
/* 8094C5B8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8094C5BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094C5C0  4B 91 A5 74 */	b __mi__4cXyzCFRC3Vec
/* 8094C5C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8094C5C8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8094C5CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8094C5D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094C5D4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8094C5D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8094C5DC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8094C5E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8094C5E4  EC 21 00 2A */	fadds f1, f1, f0
/* 8094C5E8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8094C5EC  40 81 00 0C */	ble lbl_8094C5F8
/* 8094C5F0  FC 00 08 34 */	frsqrte f0, f1
/* 8094C5F4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8094C5F8:
/* 8094C5F8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8094C5FC  40 80 00 0C */	bge lbl_8094C608
/* 8094C600  7F 63 DB 78 */	mr r3, r27
/* 8094C604  48 00 00 5C */	b lbl_8094C660
lbl_8094C608:
/* 8094C608  80 1C 00 00 */	lwz r0, 0(r28)
/* 8094C60C  3B 5A 00 01 */	addi r26, r26, 1
/* 8094C610  7C 1A 00 00 */	cmpw r26, r0
/* 8094C614  40 82 00 30 */	bne lbl_8094C644
/* 8094C618  3B 40 00 00 */	li r26, 0
/* 8094C61C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8094C620  EF DE 00 2A */	fadds f30, f30, f0
/* 8094C624  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8094C628  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8094C62C  40 81 00 18 */	ble lbl_8094C644
/* 8094C630  38 60 00 00 */	li r3, 0
/* 8094C634  48 00 00 2C */	b lbl_8094C660
lbl_8094C638:
/* 8094C638  3C 60 80 95 */	lis r3, target_info@ha
/* 8094C63C  3B A3 15 D8 */	addi r29, r3, target_info@l
/* 8094C640  C3 FF 00 24 */	lfs f31, 0x24(r31)
lbl_8094C644:
/* 8094C644  80 1C 00 00 */	lwz r0, 0(r28)
/* 8094C648  7C 1A 00 00 */	cmpw r26, r0
/* 8094C64C  41 80 FF 60 */	blt lbl_8094C5AC
/* 8094C650  48 00 00 0C */	b lbl_8094C65C
lbl_8094C654:
/* 8094C654  38 60 00 00 */	li r3, 0
/* 8094C658  48 00 00 08 */	b lbl_8094C660
lbl_8094C65C:
/* 8094C65C  38 60 00 00 */	li r3, 0
lbl_8094C660:
/* 8094C660  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8094C664  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8094C668  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8094C66C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8094C670  39 61 00 40 */	addi r11, r1, 0x40
/* 8094C674  4B A1 5B A8 */	b _restgpr_26
/* 8094C678  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8094C67C  7C 08 03 A6 */	mtlr r0
/* 8094C680  38 21 00 60 */	addi r1, r1, 0x60
/* 8094C684  4E 80 00 20 */	blr 
