lbl_80BE98A0:
/* 80BE98A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE98A4  7C 08 02 A6 */	mflr r0
/* 80BE98A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE98AC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80BE98B0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80BE98B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE98B8  7C 7F 1B 78 */	mr r31, r3
/* 80BE98BC  C3 E3 04 F0 */	lfs f31, 0x4f0(r3)
/* 80BE98C0  A0 63 09 72 */	lhz r3, 0x972(r3)
/* 80BE98C4  28 03 00 00 */	cmplwi r3, 0
/* 80BE98C8  40 82 00 10 */	bne lbl_80BE98D8
/* 80BE98CC  3C 60 80 BF */	lis r3, lit_3780@ha /* 0x80BE9AA0@ha */
/* 80BE98D0  C3 E3 9A A0 */	lfs f31, lit_3780@l(r3)  /* 0x80BE9AA0@l */
/* 80BE98D4  48 00 00 54 */	b lbl_80BE9928
lbl_80BE98D8:
/* 80BE98D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE98DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE98E0  28 04 00 FF */	cmplwi r4, 0xff
/* 80BE98E4  41 82 00 3C */	beq lbl_80BE9920
/* 80BE98E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE98EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE98F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE98F4  7C 05 07 74 */	extsb r5, r0
/* 80BE98F8  4B 44 BA 69 */	bl isSwitch__10dSv_info_cCFii
/* 80BE98FC  2C 03 00 00 */	cmpwi r3, 0
/* 80BE9900  41 82 00 14 */	beq lbl_80BE9914
/* 80BE9904  A0 7F 09 72 */	lhz r3, 0x972(r31)
/* 80BE9908  38 03 FF FF */	addi r0, r3, -1
/* 80BE990C  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 80BE9910  48 00 00 18 */	b lbl_80BE9928
lbl_80BE9914:
/* 80BE9914  3C 60 80 BF */	lis r3, lit_3780@ha /* 0x80BE9AA0@ha */
/* 80BE9918  C3 E3 9A A0 */	lfs f31, lit_3780@l(r3)  /* 0x80BE9AA0@l */
/* 80BE991C  48 00 00 0C */	b lbl_80BE9928
lbl_80BE9920:
/* 80BE9920  38 03 FF FF */	addi r0, r3, -1
/* 80BE9924  B0 1F 09 72 */	sth r0, 0x972(r31)
lbl_80BE9928:
/* 80BE9928  38 7F 09 40 */	addi r3, r31, 0x940
/* 80BE992C  FC 20 F8 90 */	fmr f1, f31
/* 80BE9930  3C 80 80 BF */	lis r4, lit_3784@ha /* 0x80BE9AB0@ha */
/* 80BE9934  C0 44 9A B0 */	lfs f2, lit_3784@l(r4)  /* 0x80BE9AB0@l */
/* 80BE9938  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BE993C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BE9940  4B 68 6E 01 */	bl cLib_chaseF__FPfff
/* 80BE9944  2C 03 00 00 */	cmpwi r3, 0
/* 80BE9948  41 82 00 1C */	beq lbl_80BE9964
/* 80BE994C  3C 60 80 BF */	lis r3, lit_3780@ha /* 0x80BE9AA0@ha */
/* 80BE9950  C0 03 9A A0 */	lfs f0, lit_3780@l(r3)  /* 0x80BE9AA0@l */
/* 80BE9954  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80BE9958  40 82 00 0C */	bne lbl_80BE9964
/* 80BE995C  7F E3 FB 78 */	mr r3, r31
/* 80BE9960  4B FF FD 55 */	bl actionOffInit__14daObjFPillar_cFv
lbl_80BE9964:
/* 80BE9964  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80BE9968  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80BE996C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE9974  7C 08 03 A6 */	mtlr r0
/* 80BE9978  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE997C  4E 80 00 20 */	blr 
