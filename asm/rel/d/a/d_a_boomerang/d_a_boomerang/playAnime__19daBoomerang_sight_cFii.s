lbl_8049EB64:
/* 8049EB64  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8049EB68  7C 08 02 A6 */	mflr r0
/* 8049EB6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8049EB70  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8049EB74  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8049EB78  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8049EB7C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8049EB80  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8049EB84  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8049EB88  39 61 00 40 */	addi r11, r1, 0x40
/* 8049EB8C  4B EC 36 39 */	bl _savegpr_23
/* 8049EB90  7C 7D 1B 78 */	mr r29, r3
/* 8049EB94  7C 97 23 78 */	mr r23, r4
/* 8049EB98  7C B8 2B 78 */	mr r24, r5
/* 8049EB9C  3C 60 80 4A */	lis r3, lit_4078@ha /* 0x804A2850@ha */
/* 8049EBA0  3B 63 28 50 */	addi r27, r3, lit_4078@l /* 0x804A2850@l */
/* 8049EBA4  3B 3D 00 98 */	addi r25, r29, 0x98
/* 8049EBA8  3B FD 00 B0 */	addi r31, r29, 0xb0
/* 8049EBAC  3B DD 00 62 */	addi r30, r29, 0x62
/* 8049EBB0  3B 40 00 00 */	li r26, 0
/* 8049EBB4  C3 BB 00 58 */	lfs f29, 0x58(r27)
/* 8049EBB8  C3 DB 00 5C */	lfs f30, 0x5c(r27)
/* 8049EBBC  CB FB 00 70 */	lfd f31, 0x70(r27)
/* 8049EBC0  3F 80 43 30 */	lis r28, 0x4330
lbl_8049EBC4:
/* 8049EBC4  C0 19 00 00 */	lfs f0, 0(r25)
/* 8049EBC8  EC 00 E8 2A */	fadds f0, f0, f29
/* 8049EBCC  D0 19 00 00 */	stfs f0, 0(r25)
/* 8049EBD0  C0 39 00 00 */	lfs f1, 0(r25)
/* 8049EBD4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8049EBD8  4C 41 13 82 */	cror 2, 1, 2
/* 8049EBDC  40 82 00 10 */	bne lbl_8049EBEC
/* 8049EBE0  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 8049EBE4  EC 01 00 2A */	fadds f0, f1, f0
/* 8049EBE8  D0 19 00 00 */	stfs f0, 0(r25)
lbl_8049EBEC:
/* 8049EBEC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8049EBF0  EC 00 E8 2A */	fadds f0, f0, f29
/* 8049EBF4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8049EBF8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8049EBFC  A8 03 00 06 */	lha r0, 6(r3)
/* 8049EC00  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8049EC04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049EC08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049EC0C  93 81 00 08 */	stw r28, 8(r1)
/* 8049EC10  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049EC14  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8049EC18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049EC1C  4C 41 13 82 */	cror 2, 1, 2
/* 8049EC20  40 82 00 20 */	bne lbl_8049EC40
/* 8049EC24  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049EC28  3C 00 43 30 */	lis r0, 0x4330
/* 8049EC2C  90 01 00 08 */	stw r0, 8(r1)
/* 8049EC30  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049EC34  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8049EC38  EC 01 00 28 */	fsubs f0, f1, f0
/* 8049EC3C  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8049EC40:
/* 8049EC40  7C 17 D0 00 */	cmpw r23, r26
/* 8049EC44  41 81 00 20 */	bgt lbl_8049EC64
/* 8049EC48  7C 18 D0 00 */	cmpw r24, r26
/* 8049EC4C  40 81 00 18 */	ble lbl_8049EC64
/* 8049EC50  7F C3 F3 78 */	mr r3, r30
/* 8049EC54  38 80 00 FF */	li r4, 0xff
/* 8049EC58  38 A0 00 1E */	li r5, 0x1e
/* 8049EC5C  4B DD 1A 01 */	bl cLib_chaseUC__FPUcUcUc
/* 8049EC60  48 00 00 30 */	b lbl_8049EC90
lbl_8049EC64:
/* 8049EC64  7F C3 F3 78 */	mr r3, r30
/* 8049EC68  38 80 00 00 */	li r4, 0
/* 8049EC6C  38 A0 00 1E */	li r5, 0x1e
/* 8049EC70  4B DD 19 ED */	bl cLib_chaseUC__FPUcUcUc
/* 8049EC74  88 1E 00 00 */	lbz r0, 0(r30)
/* 8049EC78  28 00 00 00 */	cmplwi r0, 0
/* 8049EC7C  40 82 00 14 */	bne lbl_8049EC90
/* 8049EC80  2C 1A 00 00 */	cmpwi r26, 0
/* 8049EC84  40 82 00 0C */	bne lbl_8049EC90
/* 8049EC88  38 00 00 00 */	li r0, 0
/* 8049EC8C  98 1D 00 60 */	stb r0, 0x60(r29)
lbl_8049EC90:
/* 8049EC90  3B 5A 00 01 */	addi r26, r26, 1
/* 8049EC94  2C 1A 00 05 */	cmpwi r26, 5
/* 8049EC98  3B 39 00 04 */	addi r25, r25, 4
/* 8049EC9C  3B FF 00 04 */	addi r31, r31, 4
/* 8049ECA0  3B DE 00 01 */	addi r30, r30, 1
/* 8049ECA4  41 80 FF 20 */	blt lbl_8049EBC4
/* 8049ECA8  C0 39 00 00 */	lfs f1, 0(r25)
/* 8049ECAC  C0 1B 00 64 */	lfs f0, 0x64(r27)
/* 8049ECB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049ECB4  40 80 00 08 */	bge lbl_8049ECBC
/* 8049ECB8  D0 19 00 00 */	stfs f0, 0(r25)
lbl_8049ECBC:
/* 8049ECBC  C0 39 00 00 */	lfs f1, 0(r25)
/* 8049ECC0  C0 1B 00 68 */	lfs f0, 0x68(r27)
/* 8049ECC4  EC 01 00 2A */	fadds f0, f1, f0
/* 8049ECC8  D0 19 00 00 */	stfs f0, 0(r25)
/* 8049ECCC  C0 39 00 00 */	lfs f1, 0(r25)
/* 8049ECD0  C0 1B 00 5C */	lfs f0, 0x5c(r27)
/* 8049ECD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049ECD8  4C 41 13 82 */	cror 2, 1, 2
/* 8049ECDC  40 82 00 10 */	bne lbl_8049ECEC
/* 8049ECE0  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 8049ECE4  EC 01 00 2A */	fadds f0, f1, f0
/* 8049ECE8  D0 19 00 00 */	stfs f0, 0(r25)
lbl_8049ECEC:
/* 8049ECEC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8049ECF0  C0 1B 00 68 */	lfs f0, 0x68(r27)
/* 8049ECF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8049ECF8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8049ECFC  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8049ED00  A8 03 00 06 */	lha r0, 6(r3)
/* 8049ED04  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8049ED08  C8 3B 00 70 */	lfd f1, 0x70(r27)
/* 8049ED0C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8049ED10  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049ED14  3C 00 43 30 */	lis r0, 0x4330
/* 8049ED18  90 01 00 08 */	stw r0, 8(r1)
/* 8049ED1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049ED20  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049ED24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049ED28  4C 41 13 82 */	cror 2, 1, 2
/* 8049ED2C  40 82 00 1C */	bne lbl_8049ED48
/* 8049ED30  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049ED34  90 01 00 08 */	stw r0, 8(r1)
/* 8049ED38  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049ED3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049ED40  EC 02 00 28 */	fsubs f0, f2, f0
/* 8049ED44  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8049ED48:
/* 8049ED48  88 1D 00 61 */	lbz r0, 0x61(r29)
/* 8049ED4C  28 00 00 00 */	cmplwi r0, 0
/* 8049ED50  41 82 00 18 */	beq lbl_8049ED68
/* 8049ED54  7F C3 F3 78 */	mr r3, r30
/* 8049ED58  38 80 00 80 */	li r4, 0x80
/* 8049ED5C  38 A0 00 1E */	li r5, 0x1e
/* 8049ED60  4B DD 18 FD */	bl cLib_chaseUC__FPUcUcUc
/* 8049ED64  48 00 00 14 */	b lbl_8049ED78
lbl_8049ED68:
/* 8049ED68  7F C3 F3 78 */	mr r3, r30
/* 8049ED6C  38 80 00 00 */	li r4, 0
/* 8049ED70  38 A0 00 1E */	li r5, 0x1e
/* 8049ED74  4B DD 18 E9 */	bl cLib_chaseUC__FPUcUcUc
lbl_8049ED78:
/* 8049ED78  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8049ED7C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8049ED80  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8049ED84  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8049ED88  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8049ED8C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8049ED90  39 61 00 40 */	addi r11, r1, 0x40
/* 8049ED94  4B EC 34 7D */	bl _restgpr_23
/* 8049ED98  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8049ED9C  7C 08 03 A6 */	mtlr r0
/* 8049EDA0  38 21 00 70 */	addi r1, r1, 0x70
/* 8049EDA4  4E 80 00 20 */	blr 
