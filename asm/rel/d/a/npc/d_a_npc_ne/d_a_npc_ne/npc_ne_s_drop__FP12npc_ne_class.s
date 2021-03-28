lbl_80A8EB60:
/* 80A8EB60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A8EB64  7C 08 02 A6 */	mflr r0
/* 80A8EB68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A8EB6C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A8EB70  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A8EB74  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A8EB78  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A8EB7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8EB80  4B 8D 36 5C */	b _savegpr_29
/* 80A8EB84  7C 7E 1B 78 */	mr r30, r3
/* 80A8EB88  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8EB8C  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8EB90  80 83 05 E8 */	lwz r4, 0x5e8(r3)
/* 80A8EB94  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A8EB98  FC 00 00 1E */	fctiwz f0, f0
/* 80A8EB9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A8EBA0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80A8EBA4  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80A8EBA8  C3 DF 00 74 */	lfs f30, 0x74(r31)
/* 80A8EBAC  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8EBB0  2C 00 00 02 */	cmpwi r0, 2
/* 80A8EBB4  41 82 00 C0 */	beq lbl_80A8EC74
/* 80A8EBB8  40 80 00 14 */	bge lbl_80A8EBCC
/* 80A8EBBC  2C 00 00 00 */	cmpwi r0, 0
/* 80A8EBC0  41 82 00 18 */	beq lbl_80A8EBD8
/* 80A8EBC4  40 80 00 3C */	bge lbl_80A8EC00
/* 80A8EBC8  48 00 01 54 */	b lbl_80A8ED1C
lbl_80A8EBCC:
/* 80A8EBCC  2C 00 00 04 */	cmpwi r0, 4
/* 80A8EBD0  40 80 01 4C */	bge lbl_80A8ED1C
/* 80A8EBD4  48 00 01 10 */	b lbl_80A8ECE4
lbl_80A8EBD8:
/* 80A8EBD8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8EBDC  D0 5E 06 38 */	stfs f2, 0x638(r30)
/* 80A8EBE0  38 80 00 15 */	li r4, 0x15
/* 80A8EBE4  FC 20 F0 90 */	fmr f1, f30
/* 80A8EBE8  38 A0 00 00 */	li r5, 0
/* 80A8EBEC  4B FF A1 29 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8EBF0  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8EBF4  38 03 00 01 */	addi r0, r3, 1
/* 80A8EBF8  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EBFC  48 00 01 20 */	b lbl_80A8ED1C
lbl_80A8EC00:
/* 80A8EC00  38 00 00 03 */	li r0, 3
/* 80A8EC04  B0 1E 06 7A */	sth r0, 0x67a(r30)
/* 80A8EC08  D3 FE 04 FC */	stfs f31, 0x4fc(r30)
/* 80A8EC0C  D3 FE 05 2C */	stfs f31, 0x52c(r30)
/* 80A8EC10  D3 FE 05 30 */	stfs f31, 0x530(r30)
/* 80A8EC14  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8EC18  38 80 00 01 */	li r4, 1
/* 80A8EC1C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8EC20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8EC24  40 82 00 14 */	bne lbl_80A8EC38
/* 80A8EC28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8EC2C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A8EC30  41 82 00 08 */	beq lbl_80A8EC38
/* 80A8EC34  38 80 00 00 */	li r4, 0
lbl_80A8EC38:
/* 80A8EC38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8EC3C  41 82 00 E0 */	beq lbl_80A8ED1C
/* 80A8EC40  7F C3 F3 78 */	mr r3, r30
/* 80A8EC44  38 80 00 0E */	li r4, 0xe
/* 80A8EC48  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8EC4C  38 A0 00 00 */	li r5, 0
/* 80A8EC50  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8EC54  4B FF A0 C1 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8EC58  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8EC5C  38 03 00 01 */	addi r0, r3, 1
/* 80A8EC60  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EC64  38 00 00 03 */	li r0, 3
/* 80A8EC68  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8EC6C  38 00 1C 00 */	li r0, 0x1c00
/* 80A8EC70  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_80A8EC74:
/* 80A8EC74  38 00 38 00 */	li r0, 0x3800
/* 80A8EC78  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A8EC7C  2C 1D 00 01 */	cmpwi r29, 1
/* 80A8EC80  41 80 00 10 */	blt lbl_80A8EC90
/* 80A8EC84  C3 FF 00 38 */	lfs f31, 0x38(r31)
/* 80A8EC88  FF C0 F8 90 */	fmr f30, f31
/* 80A8EC8C  48 00 00 0C */	b lbl_80A8EC98
lbl_80A8EC90:
/* 80A8EC90  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80A8EC94  FF C0 F8 90 */	fmr f30, f31
lbl_80A8EC98:
/* 80A8EC98  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8EC9C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8ECA0  40 82 00 7C */	bne lbl_80A8ED1C
/* 80A8ECA4  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A8ECA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A8ECAC  41 82 00 70 */	beq lbl_80A8ED1C
/* 80A8ECB0  7F C3 F3 78 */	mr r3, r30
/* 80A8ECB4  38 80 00 0C */	li r4, 0xc
/* 80A8ECB8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8ECBC  38 A0 00 00 */	li r5, 0
/* 80A8ECC0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8ECC4  4B FF A0 51 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8ECC8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80A8ECCC  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8ECD0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80A8ECD4  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8ECD8  38 03 00 01 */	addi r0, r3, 1
/* 80A8ECDC  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8ECE0  48 00 00 3C */	b lbl_80A8ED1C
lbl_80A8ECE4:
/* 80A8ECE4  C3 DF 00 00 */	lfs f30, 0(r31)
/* 80A8ECE8  38 60 00 01 */	li r3, 1
/* 80A8ECEC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A8ECF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8ECF4  40 82 00 14 */	bne lbl_80A8ED08
/* 80A8ECF8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A8ECFC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A8ED00  41 82 00 08 */	beq lbl_80A8ED08
/* 80A8ED04  38 60 00 00 */	li r3, 0
lbl_80A8ED08:
/* 80A8ED08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8ED0C  41 82 00 10 */	beq lbl_80A8ED1C
/* 80A8ED10  38 00 00 00 */	li r0, 0
/* 80A8ED14  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8ED18  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8ED1C:
/* 80A8ED1C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8ED20  FC 20 F8 90 */	fmr f1, f31
/* 80A8ED24  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8ED28  FC 60 F0 90 */	fmr f3, f30
/* 80A8ED2C  4B 7E 0D 10 */	b cLib_addCalc2__FPffff
/* 80A8ED30  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A8ED34  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A8ED38  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A8ED3C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A8ED40  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8ED44  4B 8D 34 E4 */	b _restgpr_29
/* 80A8ED48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A8ED4C  7C 08 03 A6 */	mtlr r0
/* 80A8ED50  38 21 00 40 */	addi r1, r1, 0x40
/* 80A8ED54  4E 80 00 20 */	blr 
