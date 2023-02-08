lbl_801A88EC:
/* 801A88EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A88F0  7C 08 02 A6 */	mflr r0
/* 801A88F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A88F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801A88FC  48 1B 98 E1 */	bl _savegpr_29
/* 801A8900  7C 7F 1B 78 */	mr r31, r3
/* 801A8904  7C 9D 23 78 */	mr r29, r4
/* 801A8908  7C BE 2B 78 */	mr r30, r5
/* 801A890C  38 80 00 00 */	li r4, 0
/* 801A8910  38 A0 03 88 */	li r5, 0x388
/* 801A8914  4B E5 AB 45 */	bl memset
/* 801A8918  7F A0 07 74 */	extsb r0, r29
/* 801A891C  2C 00 FF FF */	cmpwi r0, -1
/* 801A8920  40 82 00 10 */	bne lbl_801A8930
/* 801A8924  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A8928  98 1F 03 80 */	stb r0, 0x380(r31)
/* 801A892C  48 00 00 08 */	b lbl_801A8934
lbl_801A8930:
/* 801A8930  9B BF 03 80 */	stb r29, 0x380(r31)
lbl_801A8934:
/* 801A8934  88 1F 03 80 */	lbz r0, 0x380(r31)
/* 801A8938  98 1F 03 7C */	stb r0, 0x37c(r31)
/* 801A893C  88 1F 03 80 */	lbz r0, 0x380(r31)
/* 801A8940  98 1F 03 7D */	stb r0, 0x37d(r31)
/* 801A8944  9B DF 03 81 */	stb r30, 0x381(r31)
/* 801A8948  38 00 00 01 */	li r0, 1
/* 801A894C  98 1F 03 7B */	stb r0, 0x37b(r31)
/* 801A8950  38 00 00 7B */	li r0, 0x7b
/* 801A8954  98 1F 03 83 */	stb r0, 0x383(r31)
/* 801A8958  38 A0 00 00 */	li r5, 0
/* 801A895C  B0 BF 03 4E */	sth r5, 0x34e(r31)
/* 801A8960  38 00 00 FF */	li r0, 0xff
/* 801A8964  B0 1F 03 56 */	sth r0, 0x356(r31)
/* 801A8968  B0 BF 03 78 */	sth r5, 0x378(r31)
/* 801A896C  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801A8970  D0 5F 03 74 */	stfs f2, 0x374(r31)
/* 801A8974  98 BF 03 84 */	stb r5, 0x384(r31)
/* 801A8978  98 BF 00 19 */	stb r5, 0x19(r31)
/* 801A897C  98 BF 00 1A */	stb r5, 0x1a(r31)
/* 801A8980  98 1F 00 1B */	stb r0, 0x1b(r31)
/* 801A8984  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 801A8988  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A898C  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 801A8990  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 801A8994  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 801A8998  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 801A899C  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 801A89A0  38 60 00 00 */	li r3, 0
/* 801A89A4  3C 80 80 43 */	lis r4, lightStatusData@ha /* 0x8042E07C@ha */
/* 801A89A8  38 84 E0 7C */	addi r4, r4, lightStatusData@l /* 0x8042E07C@l */
/* 801A89AC  38 00 00 06 */	li r0, 6
/* 801A89B0  7C 09 03 A6 */	mtctr r0
lbl_801A89B4:
/* 801A89B4  38 C5 00 74 */	addi r6, r5, 0x74
/* 801A89B8  7C DF 32 14 */	add r6, r31, r6
/* 801A89BC  7C E4 1A 14 */	add r7, r4, r3
/* 801A89C0  C0 07 00 00 */	lfs f0, 0(r7)
/* 801A89C4  D0 06 00 00 */	stfs f0, 0(r6)
/* 801A89C8  C0 07 00 04 */	lfs f0, 4(r7)
/* 801A89CC  D0 06 00 04 */	stfs f0, 4(r6)
/* 801A89D0  C0 07 00 08 */	lfs f0, 8(r7)
/* 801A89D4  D0 06 00 08 */	stfs f0, 8(r6)
/* 801A89D8  88 07 00 18 */	lbz r0, 0x18(r7)
/* 801A89DC  98 06 00 18 */	stb r0, 0x18(r6)
/* 801A89E0  88 07 00 19 */	lbz r0, 0x19(r7)
/* 801A89E4  98 06 00 19 */	stb r0, 0x19(r6)
/* 801A89E8  88 07 00 1A */	lbz r0, 0x1a(r7)
/* 801A89EC  98 06 00 1A */	stb r0, 0x1a(r6)
/* 801A89F0  88 07 00 1B */	lbz r0, 0x1b(r7)
/* 801A89F4  98 06 00 1B */	stb r0, 0x1b(r6)
/* 801A89F8  D0 46 00 1C */	stfs f2, 0x1c(r6)
/* 801A89FC  D0 26 00 20 */	stfs f1, 0x20(r6)
/* 801A8A00  D0 26 00 24 */	stfs f1, 0x24(r6)
/* 801A8A04  D0 46 00 28 */	stfs f2, 0x28(r6)
/* 801A8A08  D0 26 00 2C */	stfs f1, 0x2c(r6)
/* 801A8A0C  D0 26 00 30 */	stfs f1, 0x30(r6)
/* 801A8A10  38 63 00 E8 */	addi r3, r3, 0xe8
/* 801A8A14  38 A5 00 74 */	addi r5, r5, 0x74
/* 801A8A18  42 00 FF 9C */	bdnz lbl_801A89B4
/* 801A8A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 801A8A20  48 1B 98 09 */	bl _restgpr_29
/* 801A8A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A8A28  7C 08 03 A6 */	mtlr r0
/* 801A8A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 801A8A30  4E 80 00 20 */	blr 
