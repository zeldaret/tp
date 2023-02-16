lbl_802AEB70:
/* 802AEB70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802AEB74  7C 08 02 A6 */	mflr r0
/* 802AEB78  90 01 00 44 */	stw r0, 0x44(r1)
/* 802AEB7C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802AEB80  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802AEB84  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802AEB88  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802AEB8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AEB90  7C 7F 1B 78 */	mr r31, r3
/* 802AEB94  28 04 00 00 */	cmplwi r4, 0
/* 802AEB98  40 82 00 0C */	bne lbl_802AEBA4
/* 802AEB9C  38 60 00 00 */	li r3, 0
/* 802AEBA0  48 00 00 F8 */	b lbl_802AEC98
lbl_802AEBA4:
/* 802AEBA4  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802AEBA8  7C 00 07 75 */	extsb. r0, r0
/* 802AEBAC  40 80 00 0C */	bge lbl_802AEBB8
/* 802AEBB0  38 00 00 00 */	li r0, 0
/* 802AEBB4  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_802AEBB8:
/* 802AEBB8  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802AEBBC  38 A1 00 08 */	addi r5, r1, 8
/* 802AEBC0  38 C0 00 00 */	li r6, 0
/* 802AEBC4  48 00 ED 69 */	bl convertAbsToRel__10Z2AudienceFR3VecP3Veci
/* 802AEBC8  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802AEBCC  38 81 00 08 */	addi r4, r1, 8
/* 802AEBD0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802AEBD4  38 A0 00 00 */	li r5, 0
/* 802AEBD8  48 00 ED 85 */	bl calcRelPosVolume__10Z2AudienceFRC3Vecfi
/* 802AEBDC  FF C0 08 90 */	fmr f30, f1
/* 802AEBE0  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AEBE4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802AEBE8  4C 40 13 82 */	cror 2, 0, 2
/* 802AEBEC  40 82 00 0C */	bne lbl_802AEBF8
/* 802AEBF0  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802AEBF4  48 00 00 A4 */	b lbl_802AEC98
lbl_802AEBF8:
/* 802AEBF8  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802AEBFC  38 81 00 08 */	addi r4, r1, 8
/* 802AEC00  38 A0 00 00 */	li r5, 0
/* 802AEC04  48 00 EE 41 */	bl calcRelPosPan__10Z2AudienceFRC3Veci
/* 802AEC08  FF E0 08 90 */	fmr f31, f1
/* 802AEC0C  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802AEC10  38 81 00 08 */	addi r4, r1, 8
/* 802AEC14  38 A0 00 00 */	li r5, 0
/* 802AEC18  48 00 EF 2D */	bl calcRelPosDolby__10Z2AudienceFRC3Veci
/* 802AEC1C  C0 42 BE 80 */	lfs f2, lit_4042(r2)
/* 802AEC20  EC 02 F8 28 */	fsubs f0, f2, f31
/* 802AEC24  EC 60 07 B2 */	fmuls f3, f0, f30
/* 802AEC28  EC 9F 07 B2 */	fmuls f4, f31, f30
/* 802AEC2C  EC 02 08 28 */	fsubs f0, f2, f1
/* 802AEC30  EC 40 07 B2 */	fmuls f2, f0, f30
/* 802AEC34  EC 21 07 B2 */	fmuls f1, f1, f30
/* 802AEC38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802AEC3C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802AEC40  40 81 00 08 */	ble lbl_802AEC48
/* 802AEC44  D3 DF 00 04 */	stfs f30, 4(r31)
lbl_802AEC48:
/* 802AEC48  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802AEC4C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AEC50  40 81 00 08 */	ble lbl_802AEC58
/* 802AEC54  D0 7F 00 08 */	stfs f3, 8(r31)
lbl_802AEC58:
/* 802AEC58  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802AEC5C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802AEC60  40 81 00 08 */	ble lbl_802AEC68
/* 802AEC64  D0 9F 00 0C */	stfs f4, 0xc(r31)
lbl_802AEC68:
/* 802AEC68  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 802AEC6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802AEC70  40 81 00 08 */	ble lbl_802AEC78
/* 802AEC74  D0 5F 00 10 */	stfs f2, 0x10(r31)
lbl_802AEC78:
/* 802AEC78  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802AEC7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AEC80  40 81 00 08 */	ble lbl_802AEC88
/* 802AEC84  D0 3F 00 14 */	stfs f1, 0x14(r31)
lbl_802AEC88:
/* 802AEC88  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802AEC8C  38 03 00 01 */	addi r0, r3, 1
/* 802AEC90  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802AEC94  88 7F 00 18 */	lbz r3, 0x18(r31)
lbl_802AEC98:
/* 802AEC98  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802AEC9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802AECA0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802AECA4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802AECA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AECAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802AECB0  7C 08 03 A6 */	mtlr r0
/* 802AECB4  38 21 00 40 */	addi r1, r1, 0x40
/* 802AECB8  4E 80 00 20 */	blr 
