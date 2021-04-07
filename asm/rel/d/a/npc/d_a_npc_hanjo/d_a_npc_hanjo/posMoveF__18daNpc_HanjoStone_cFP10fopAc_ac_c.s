lbl_80A00374:
/* 80A00374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A00378  7C 08 02 A6 */	mflr r0
/* 80A0037C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A00380  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A00384  7C 7F 1B 78 */	mr r31, r3
/* 80A00388  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A0038C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A00390  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A00394  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A00398  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A0039C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80A003A0  80 03 01 70 */	lwz r0, 0x170(r3)
/* 80A003A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A003A8  41 82 00 EC */	beq lbl_80A00494
/* 80A003AC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A003B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A003B4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80A003B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A003BC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80A003C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A003C4  A8 1F 00 2A */	lha r0, 0x2a(r31)
/* 80A003C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A003CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A003D0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A003D4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A003D8  C0 5F 01 68 */	lfs f2, 0x168(r31)
/* 80A003DC  EC 62 00 32 */	fmuls f3, f2, f0
/* 80A003E0  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80A003E4  EC 21 00 2A */	fadds f1, f1, f0
/* 80A003E8  7C 63 02 14 */	add r3, r3, r0
/* 80A003EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A003F0  EC 42 00 32 */	fmuls f2, f2, f0
/* 80A003F4  C0 04 05 34 */	lfs f0, 0x534(r4)
/* 80A003F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A003FC  40 80 00 08 */	bge lbl_80A00404
/* 80A00400  FC 20 00 90 */	fmr f1, f0
lbl_80A00404:
/* 80A00404  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 80A00408  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80A0040C  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 80A00410  38 7F 00 10 */	addi r3, r31, 0x10
/* 80A00414  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80A00418  7C 65 1B 78 */	mr r5, r3
/* 80A0041C  4B 94 6C 75 */	bl PSVECAdd
/* 80A00420  80 7F 01 70 */	lwz r3, 0x170(r31)
/* 80A00424  38 03 FF FF */	addi r0, r3, -1
/* 80A00428  90 1F 01 70 */	stw r0, 0x170(r31)
/* 80A0042C  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80A00430  2C 00 00 00 */	cmpwi r0, 0
/* 80A00434  40 82 00 60 */	bne lbl_80A00494
/* 80A00438  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 80A0043C  C0 23 06 FC */	lfs f1, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 80A00440  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 80A00444  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80A00448  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80A0044C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A00450  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A00454  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A00458  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80A0045C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A00460  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80A00464  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80A00468  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80A0046C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80A00470  38 00 00 00 */	li r0, 0
/* 80A00474  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 80A00478  B0 1F 00 2A */	sth r0, 0x2a(r31)
/* 80A0047C  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 80A00480  D0 3F 01 68 */	stfs f1, 0x168(r31)
/* 80A00484  3C 60 80 A0 */	lis r3, lit_4212@ha /* 0x80A00704@ha */
/* 80A00488  C0 03 07 04 */	lfs f0, lit_4212@l(r3)  /* 0x80A00704@l */
/* 80A0048C  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 80A00490  90 1F 01 70 */	stw r0, 0x170(r31)
lbl_80A00494:
/* 80A00494  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A00498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0049C  7C 08 03 A6 */	mtlr r0
/* 80A004A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A004A4  4E 80 00 20 */	blr 
