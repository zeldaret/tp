lbl_8022E318:
/* 8022E318  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8022E31C  7C 08 02 A6 */	mflr r0
/* 8022E320  90 01 00 64 */	stw r0, 0x64(r1)
/* 8022E324  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8022E328  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8022E32C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8022E330  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8022E334  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8022E338  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8022E33C  39 61 00 30 */	addi r11, r1, 0x30
/* 8022E340  48 13 3E 9D */	bl _savegpr_29
/* 8022E344  7C 7E 1B 78 */	mr r30, r3
/* 8022E348  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022E34C  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022E350  D0 03 01 38 */	stfs f0, 0x138(r3)
/* 8022E354  A8 03 01 42 */	lha r0, 0x142(r3)
/* 8022E358  2C 00 00 00 */	cmpwi r0, 0
/* 8022E35C  40 82 00 54 */	bne lbl_8022E3B0
/* 8022E360  C3 FF 04 34 */	lfs f31, 0x434(r31)
/* 8022E364  C3 DF 04 24 */	lfs f30, 0x424(r31)
/* 8022E368  C3 BF 04 30 */	lfs f29, 0x430(r31)
/* 8022E36C  7F E3 FB 78 */	mr r3, r31
/* 8022E370  4B FF AA 71 */	bl getLineMax__19jmessage_tReferenceFv
/* 8022E374  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8022E378  38 03 FF FF */	addi r0, r3, -1
/* 8022E37C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022E380  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022E384  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022E388  3C 00 43 30 */	lis r0, 0x4330
/* 8022E38C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022E390  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022E394  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022E398  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8022E39C  EC 1E 00 2A */	fadds f0, f30, f0
/* 8022E3A0  EC 3D 00 28 */	fsubs f1, f29, f0
/* 8022E3A4  C0 02 B0 5C */	lfs f0, lit_4026(r2)
/* 8022E3A8  EF E1 00 32 */	fmuls f31, f1, f0
/* 8022E3AC  48 00 00 08 */	b lbl_8022E3B4
lbl_8022E3B0:
/* 8022E3B0  FF E0 00 90 */	fmr f31, f0
lbl_8022E3B4:
/* 8022E3B4  A8 1F 05 D2 */	lha r0, 0x5d2(r31)
/* 8022E3B8  7C 9F 02 14 */	add r4, r31, r0
/* 8022E3BC  88 04 11 F2 */	lbz r0, 0x11f2(r4)
/* 8022E3C0  28 00 00 08 */	cmplwi r0, 8
/* 8022E3C4  41 81 03 20 */	bgt lbl_8022E6E4
/* 8022E3C8  3C 60 80 3C */	lis r3, lit_6703@ha /* 0x803C0548@ha */
/* 8022E3CC  38 63 05 48 */	addi r3, r3, lit_6703@l /* 0x803C0548@l */
/* 8022E3D0  54 00 10 3A */	slwi r0, r0, 2
/* 8022E3D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022E3D8  7C 09 03 A6 */	mtctr r0
/* 8022E3DC  4E 80 04 20 */	bctr 
/* 8022E3E0  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E3E4  2C 00 00 00 */	cmpwi r0, 0
/* 8022E3E8  40 82 02 FC */	bne lbl_8022E6E4
/* 8022E3EC  8B A4 11 A2 */	lbz r29, 0x11a2(r4)
/* 8022E3F0  7F BD 07 74 */	extsb r29, r29
/* 8022E3F4  7F E3 FB 78 */	mr r3, r31
/* 8022E3F8  4B FF A9 E9 */	bl getLineMax__19jmessage_tReferenceFv
/* 8022E3FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022E400  7C 1D 00 00 */	cmpw r29, r0
/* 8022E404  41 82 02 E0 */	beq lbl_8022E6E4
/* 8022E408  C3 BF 04 34 */	lfs f29, 0x434(r31)
/* 8022E40C  7F E3 FB 78 */	mr r3, r31
/* 8022E410  4B FF A9 D1 */	bl getLineMax__19jmessage_tReferenceFv
/* 8022E414  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022E418  7C 1D 00 50 */	subf r0, r29, r0
/* 8022E41C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022E420  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022E424  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022E428  3C 00 43 30 */	lis r0, 0x4330
/* 8022E42C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022E430  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022E434  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022E438  C0 02 B0 5C */	lfs f0, lit_4026(r2)
/* 8022E43C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022E440  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8022E444  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E448  48 00 02 9C */	b lbl_8022E6E4
/* 8022E44C  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E450  2C 00 00 00 */	cmpwi r0, 0
/* 8022E454  40 82 02 90 */	bne lbl_8022E6E4
/* 8022E458  8B A4 11 A2 */	lbz r29, 0x11a2(r4)
/* 8022E45C  7F BD 07 74 */	extsb r29, r29
/* 8022E460  2C 1D 00 01 */	cmpwi r29, 1
/* 8022E464  40 82 02 80 */	bne lbl_8022E6E4
/* 8022E468  C3 BF 04 34 */	lfs f29, 0x434(r31)
/* 8022E46C  7F E3 FB 78 */	mr r3, r31
/* 8022E470  4B FF A9 71 */	bl getLineMax__19jmessage_tReferenceFv
/* 8022E474  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022E478  7C 1D 00 50 */	subf r0, r29, r0
/* 8022E47C  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022E480  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022E484  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022E488  3C 00 43 30 */	lis r0, 0x4330
/* 8022E48C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022E490  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022E494  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022E498  C0 02 B0 5C */	lfs f0, lit_4026(r2)
/* 8022E49C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022E4A0  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8022E4A4  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E4A8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E4AC  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E4B0  48 00 02 34 */	b lbl_8022E6E4
/* 8022E4B4  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E4B8  2C 00 00 00 */	cmpwi r0, 0
/* 8022E4BC  40 82 00 18 */	bne lbl_8022E4D4
/* 8022E4C0  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E4C4  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E4C8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E4CC  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E4D0  48 00 02 14 */	b lbl_8022E6E4
lbl_8022E4D4:
/* 8022E4D4  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E4D8  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E4DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E4E0  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E4E4  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E4E8  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E4EC  48 00 01 F8 */	b lbl_8022E6E4
/* 8022E4F0  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E4F4  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E4F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E4FC  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E500  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E504  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E508  48 00 01 DC */	b lbl_8022E6E4
/* 8022E50C  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E510  2C 00 00 00 */	cmpwi r0, 0
/* 8022E514  40 82 00 54 */	bne lbl_8022E568
/* 8022E518  8B A4 11 A2 */	lbz r29, 0x11a2(r4)
/* 8022E51C  7F BD 07 74 */	extsb r29, r29
/* 8022E520  C3 BF 04 34 */	lfs f29, 0x434(r31)
/* 8022E524  7F E3 FB 78 */	mr r3, r31
/* 8022E528  4B FF A8 B9 */	bl getLineMax__19jmessage_tReferenceFv
/* 8022E52C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022E530  7C 1D 00 50 */	subf r0, r29, r0
/* 8022E534  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022E538  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022E53C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022E540  3C 00 43 30 */	lis r0, 0x4330
/* 8022E544  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022E548  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022E54C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022E550  C0 02 B0 5C */	lfs f0, lit_4026(r2)
/* 8022E554  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022E558  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8022E55C  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E560  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E564  EF FF 00 2A */	fadds f31, f31, f0
lbl_8022E568:
/* 8022E568  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E56C  2C 00 00 01 */	cmpwi r0, 1
/* 8022E570  40 82 00 1C */	bne lbl_8022E58C
/* 8022E574  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E578  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E57C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E580  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E584  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E588  EF FF 00 2A */	fadds f31, f31, f0
lbl_8022E58C:
/* 8022E58C  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E590  54 00 08 3C */	slwi r0, r0, 1
/* 8022E594  7C 7F 02 14 */	add r3, r31, r0
/* 8022E598  A0 03 05 E0 */	lhz r0, 0x5e0(r3)
/* 8022E59C  C0 5F 04 34 */	lfs f2, 0x434(r31)
/* 8022E5A0  C8 22 B0 80 */	lfd f1, lit_5154(r2)
/* 8022E5A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022E5A8  3C 00 43 30 */	lis r0, 0x4330
/* 8022E5AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022E5B0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022E5B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022E5B8  C0 02 B0 7C */	lfs f0, lit_5151(r2)
/* 8022E5BC  EC 21 00 24 */	fdivs f1, f1, f0
/* 8022E5C0  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 8022E5C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E5C8  EC 22 00 28 */	fsubs f1, f2, f0
/* 8022E5CC  C0 02 B0 5C */	lfs f0, lit_4026(r2)
/* 8022E5D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8022E5D4  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E5D8  EC 00 08 2A */	fadds f0, f0, f1
/* 8022E5DC  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E5E0  EF FF 08 2A */	fadds f31, f31, f1
/* 8022E5E4  48 00 01 00 */	b lbl_8022E6E4
/* 8022E5E8  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E5EC  2C 00 00 01 */	cmpwi r0, 1
/* 8022E5F0  41 80 00 1C */	blt lbl_8022E60C
/* 8022E5F4  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E5F8  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E5FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E600  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E604  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E608  EF FF 00 2A */	fadds f31, f31, f0
lbl_8022E60C:
/* 8022E60C  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E610  54 00 08 3C */	slwi r0, r0, 1
/* 8022E614  7C 7F 02 14 */	add r3, r31, r0
/* 8022E618  A0 03 05 E0 */	lhz r0, 0x5e0(r3)
/* 8022E61C  C0 5F 04 34 */	lfs f2, 0x434(r31)
/* 8022E620  C8 22 B0 80 */	lfd f1, lit_5154(r2)
/* 8022E624  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022E628  3C 00 43 30 */	lis r0, 0x4330
/* 8022E62C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022E630  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8022E634  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022E638  C0 02 B0 7C */	lfs f0, lit_5151(r2)
/* 8022E63C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8022E640  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 8022E644  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E648  EC 22 00 28 */	fsubs f1, f2, f0
/* 8022E64C  C0 02 B0 5C */	lfs f0, lit_4026(r2)
/* 8022E650  EC 21 00 32 */	fmuls f1, f1, f0
/* 8022E654  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E658  EC 00 08 2A */	fadds f0, f0, f1
/* 8022E65C  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E660  EF FF 08 2A */	fadds f31, f31, f1
/* 8022E664  48 00 00 80 */	b lbl_8022E6E4
/* 8022E668  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E66C  2C 00 00 01 */	cmpwi r0, 1
/* 8022E670  41 81 00 74 */	bgt lbl_8022E6E4
/* 8022E674  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E678  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E67C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E680  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E684  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E688  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E68C  48 00 00 58 */	b lbl_8022E6E4
/* 8022E690  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E694  2C 00 00 01 */	cmpwi r0, 1
/* 8022E698  41 82 00 0C */	beq lbl_8022E6A4
/* 8022E69C  2C 00 00 02 */	cmpwi r0, 2
/* 8022E6A0  40 82 00 44 */	bne lbl_8022E6E4
lbl_8022E6A4:
/* 8022E6A4  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E6A8  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E6AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E6B0  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E6B4  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E6B8  EF FF 00 2A */	fadds f31, f31, f0
/* 8022E6BC  48 00 00 28 */	b lbl_8022E6E4
/* 8022E6C0  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E6C4  2C 00 00 02 */	cmpwi r0, 2
/* 8022E6C8  40 82 00 1C */	bne lbl_8022E6E4
/* 8022E6CC  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E6D0  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8022E6D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022E6D8  D0 1E 01 38 */	stfs f0, 0x138(r30)
/* 8022E6DC  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8022E6E0  EF FF 00 2A */	fadds f31, f31, f0
lbl_8022E6E4:
/* 8022E6E4  A8 1E 01 42 */	lha r0, 0x142(r30)
/* 8022E6E8  2C 00 00 00 */	cmpwi r0, 0
/* 8022E6EC  40 82 00 0C */	bne lbl_8022E6F8
/* 8022E6F0  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022E6F4  D0 1E 01 38 */	stfs f0, 0x138(r30)
lbl_8022E6F8:
/* 8022E6F8  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022E6FC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8022E700  41 82 00 9C */	beq lbl_8022E79C
/* 8022E704  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8022E708  EC 00 F8 2A */	fadds f0, f0, f31
/* 8022E70C  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 8022E710  38 61 00 08 */	addi r3, r1, 8
/* 8022E714  38 80 00 0F */	li r4, 0xf
/* 8022E718  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022E71C  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022E720  38 A5 00 10 */	addi r5, r5, 0x10
/* 8022E724  FC 00 F8 1E */	fctiwz f0, f31
/* 8022E728  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8022E72C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8022E730  4C C6 31 82 */	crclr 6
/* 8022E734  48 13 7E 89 */	bl snprintf
/* 8022E738  7F C3 F3 78 */	mr r3, r30
/* 8022E73C  38 81 00 08 */	addi r4, r1, 8
/* 8022E740  38 A0 00 00 */	li r5, 0
/* 8022E744  38 C0 00 01 */	li r6, 1
/* 8022E748  38 E0 00 01 */	li r7, 1
/* 8022E74C  48 00 07 B5 */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022E750  88 7E 01 4E */	lbz r3, 0x14e(r30)
/* 8022E754  28 03 00 00 */	cmplwi r3, 0
/* 8022E758  41 82 00 2C */	beq lbl_8022E784
/* 8022E75C  38 03 FF FF */	addi r0, r3, -1
/* 8022E760  1C 60 00 50 */	mulli r3, r0, 0x50
/* 8022E764  38 A3 10 B2 */	addi r5, r3, 0x10b2
/* 8022E768  7C BF 2A 14 */	add r5, r31, r5
/* 8022E76C  7F C3 F3 78 */	mr r3, r30
/* 8022E770  38 81 00 08 */	addi r4, r1, 8
/* 8022E774  C0 3F 04 50 */	lfs f1, 0x450(r31)
/* 8022E778  C0 42 B0 60 */	lfs f2, lit_4027(r2)
/* 8022E77C  48 00 0C 09 */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
/* 8022E780  48 00 00 1C */	b lbl_8022E79C
lbl_8022E784:
/* 8022E784  7F C3 F3 78 */	mr r3, r30
/* 8022E788  38 81 00 08 */	addi r4, r1, 8
/* 8022E78C  38 BF 0E 1C */	addi r5, r31, 0xe1c
/* 8022E790  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 8022E794  C0 42 B0 60 */	lfs f2, lit_4027(r2)
/* 8022E798  48 00 0B ED */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
lbl_8022E79C:
/* 8022E79C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8022E7A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8022E7A4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8022E7A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8022E7AC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8022E7B0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8022E7B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8022E7B8  48 13 3A 71 */	bl _restgpr_29
/* 8022E7BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8022E7C0  7C 08 03 A6 */	mtlr r0
/* 8022E7C4  38 21 00 60 */	addi r1, r1, 0x60
/* 8022E7C8  4E 80 00 20 */	blr 
