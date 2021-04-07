lbl_80AEB3A8:
/* 80AEB3A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AEB3AC  7C 08 02 A6 */	mflr r0
/* 80AEB3B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AEB3B4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AEB3B8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AEB3BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AEB3C0  7C 7F 1B 78 */	mr r31, r3
/* 80AEB3C4  FF E0 08 90 */	fmr f31, f1
/* 80AEB3C8  7C AB 2B 78 */	mr r11, r5
/* 80AEB3CC  7C CA 33 78 */	mr r10, r6
/* 80AEB3D0  7C E0 3B 78 */	mr r0, r7
/* 80AEB3D4  7D 09 43 78 */	mr r9, r8
/* 80AEB3D8  38 7F 05 70 */	addi r3, r31, 0x570
/* 80AEB3DC  38 A0 00 01 */	li r5, 1
/* 80AEB3E0  7D 66 5B 78 */	mr r6, r11
/* 80AEB3E4  3C E0 80 AF */	lis r7, lit_4118@ha /* 0x80AEBC38@ha */
/* 80AEB3E8  C0 27 BC 38 */	lfs f1, lit_4118@l(r7)  /* 0x80AEBC38@l */
/* 80AEB3EC  7D 47 07 34 */	extsh r7, r10
/* 80AEB3F0  7C 08 07 34 */	extsh r8, r0
/* 80AEB3F4  4B 52 23 E9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80AEB3F8  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB3FC  41 82 00 44 */	beq lbl_80AEB440
/* 80AEB400  A8 1F 05 76 */	lha r0, 0x576(r31)
/* 80AEB404  3C 80 80 AF */	lis r4, lit_4120@ha /* 0x80AEBC3C@ha */
/* 80AEB408  C8 24 BC 3C */	lfd f1, lit_4120@l(r4)  /* 0x80AEBC3C@l */
/* 80AEB40C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AEB410  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AEB414  3C 00 43 30 */	lis r0, 0x4330
/* 80AEB418  90 01 00 08 */	stw r0, 8(r1)
/* 80AEB41C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80AEB420  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AEB424  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 80AEB428  3C 80 80 AF */	lis r4, lit_4004@ha /* 0x80AEBC24@ha */
/* 80AEB42C  C0 04 BC 24 */	lfs f0, lit_4004@l(r4)  /* 0x80AEBC24@l */
/* 80AEB430  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80AEB434  38 00 00 00 */	li r0, 0
/* 80AEB438  98 1F 05 75 */	stb r0, 0x575(r31)
/* 80AEB43C  D3 FF 05 8C */	stfs f31, 0x58c(r31)
lbl_80AEB440:
/* 80AEB440  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AEB444  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AEB448  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEB44C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AEB450  7C 08 03 A6 */	mtlr r0
/* 80AEB454  38 21 00 30 */	addi r1, r1, 0x30
/* 80AEB458  4E 80 00 20 */	blr 
