lbl_804A9364:
/* 804A9364  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A9368  7C 08 02 A6 */	mflr r0
/* 804A936C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A9370  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804A9374  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804A9378  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A937C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A9380  7C 7E 1B 78 */	mr r30, r3
/* 804A9384  3C 80 80 4B */	lis r4, lit_3704@ha /* 0x804A9460@ha */
/* 804A9388  3B E4 94 60 */	addi r31, r4, lit_3704@l /* 0x804A9460@l */
/* 804A938C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804A9390  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A9394  40 82 00 1C */	bne lbl_804A93B0
/* 804A9398  28 1E 00 00 */	cmplwi r30, 0
/* 804A939C  41 82 00 08 */	beq lbl_804A93A4
/* 804A93A0  4B B6 F7 C5 */	bl __ct__10fopAc_ac_cFv
lbl_804A93A4:
/* 804A93A4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804A93A8  60 00 00 08 */	ori r0, r0, 8
/* 804A93AC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804A93B0:
/* 804A93B0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804A93B4  98 1E 05 67 */	stb r0, 0x567(r30)
/* 804A93B8  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 804A93BC  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 804A93C0  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 804A93C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A93C8  3C 00 43 30 */	lis r0, 0x4330
/* 804A93CC  90 01 00 08 */	stw r0, 8(r1)
/* 804A93D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804A93D4  EF E0 08 28 */	fsubs f31, f0, f1
/* 804A93D8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804A93DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A93E0  4C 41 13 82 */	cror 2, 1, 2
/* 804A93E4  40 82 00 10 */	bne lbl_804A93F4
/* 804A93E8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804A93EC  EF FF 00 32 */	fmuls f31, f31, f0
/* 804A93F0  48 00 00 0C */	b lbl_804A93FC
lbl_804A93F4:
/* 804A93F4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804A93F8  EF FF 00 32 */	fmuls f31, f31, f0
lbl_804A93FC:
/* 804A93FC  54 63 86 3E */	rlwinm r3, r3, 0x10, 0x18, 0x1f
/* 804A9400  28 03 00 FF */	cmplwi r3, 0xff
/* 804A9404  41 82 00 24 */	beq lbl_804A9428
/* 804A9408  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804A940C  38 A0 FF FF */	li r5, -1
/* 804A9410  38 C0 FF FF */	li r6, -1
/* 804A9414  38 E0 00 00 */	li r7, 0
/* 804A9418  39 00 00 00 */	li r8, 0
/* 804A941C  39 20 00 00 */	li r9, 0
/* 804A9420  39 40 00 00 */	li r10, 0
/* 804A9424  4B B7 29 F1 */	bl fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
lbl_804A9428:
/* 804A9428  7F C3 F3 78 */	mr r3, r30
/* 804A942C  FC 20 F8 90 */	fmr f1, f31
/* 804A9430  4B FF FD 01 */	bl set_disappear__FP15disappear_classf
/* 804A9434  38 60 00 04 */	li r3, 4
/* 804A9438  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804A943C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804A9440  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A9444  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A9448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A944C  7C 08 03 A6 */	mtlr r0
/* 804A9450  38 21 00 30 */	addi r1, r1, 0x30
/* 804A9454  4E 80 00 20 */	blr 
