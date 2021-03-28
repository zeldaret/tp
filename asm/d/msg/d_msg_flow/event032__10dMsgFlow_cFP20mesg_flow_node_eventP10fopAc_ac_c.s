lbl_8024D5EC:
/* 8024D5EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024D5F0  7C 08 02 A6 */	mflr r0
/* 8024D5F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024D5F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024D5FC  7C 7F 1B 78 */	mr r31, r3
/* 8024D600  7C 86 23 78 */	mr r6, r4
/* 8024D604  38 81 00 08 */	addi r4, r1, 8
/* 8024D608  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024D60C  38 C6 00 04 */	addi r6, r6, 4
/* 8024D610  4B FF DA E1 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024D614  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024D618  38 64 00 01 */	addi r3, r4, 1
/* 8024D61C  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8024D620  7C 03 00 00 */	cmpw r3, r0
/* 8024D624  40 82 00 78 */	bne lbl_8024D69C
/* 8024D628  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024D62C  28 00 00 00 */	cmplwi r0, 0
/* 8024D630  40 82 00 1C */	bne lbl_8024D64C
/* 8024D634  38 00 00 00 */	li r0, 0
/* 8024D638  98 01 00 0C */	stb r0, 0xc(r1)
/* 8024D63C  98 01 00 0D */	stb r0, 0xd(r1)
/* 8024D640  98 01 00 0E */	stb r0, 0xe(r1)
/* 8024D644  98 01 00 0F */	stb r0, 0xf(r1)
/* 8024D648  48 00 00 28 */	b lbl_8024D670
lbl_8024D64C:
/* 8024D64C  88 0D 80 8C */	lbz r0, g_saftyWhiteColor(r13)
/* 8024D650  98 01 00 0C */	stb r0, 0xc(r1)
/* 8024D654  38 6D 80 8C */	la r3, g_saftyWhiteColor(r13) /* 8045060C-_SDA_BASE_ */
/* 8024D658  88 03 00 01 */	lbz r0, 1(r3)
/* 8024D65C  98 01 00 0D */	stb r0, 0xd(r1)
/* 8024D660  88 03 00 02 */	lbz r0, 2(r3)
/* 8024D664  98 01 00 0E */	stb r0, 0xe(r1)
/* 8024D668  88 03 00 03 */	lbz r0, 3(r3)
/* 8024D66C  98 01 00 0F */	stb r0, 0xf(r1)
lbl_8024D670:
/* 8024D670  C0 42 B3 AC */	lfs f2, lit_6613(r2)
/* 8024D674  C8 22 B3 90 */	lfd f1, lit_5116(r2)
/* 8024D678  90 81 00 14 */	stw r4, 0x14(r1)
/* 8024D67C  3C 00 43 30 */	lis r0, 0x4330
/* 8024D680  90 01 00 10 */	stw r0, 0x10(r1)
/* 8024D684  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8024D688  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024D68C  EC 02 00 24 */	fdivs f0, f2, f0
/* 8024D690  FC 20 00 50 */	fneg f1, f0
/* 8024D694  38 61 00 0C */	addi r3, r1, 0xc
/* 8024D698  4B DB A9 41 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_8024D69C:
/* 8024D69C  38 7F 00 3C */	addi r3, r31, 0x3c
/* 8024D6A0  48 00 04 11 */	bl func_8024DAB0
/* 8024D6A4  38 60 00 01 */	li r3, 1
/* 8024D6A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024D6AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024D6B0  7C 08 03 A6 */	mtlr r0
/* 8024D6B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8024D6B8  4E 80 00 20 */	blr 
