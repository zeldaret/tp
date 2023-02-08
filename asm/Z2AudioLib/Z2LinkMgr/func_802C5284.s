lbl_802C5284:
/* 802C5284  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C5288  7C 08 02 A6 */	mflr r0
/* 802C528C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C5290  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C5294  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802C5298  39 61 00 40 */	addi r11, r1, 0x40
/* 802C529C  48 09 CF 41 */	bl _savegpr_29
/* 802C52A0  7C 7D 1B 78 */	mr r29, r3
/* 802C52A4  FF E0 08 90 */	fmr f31, f1
/* 802C52A8  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C52AC  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 802C52B0  28 00 00 00 */	cmplwi r0, 0
/* 802C52B4  40 82 00 0C */	bne lbl_802C52C0
/* 802C52B8  38 60 00 00 */	li r3, 0
/* 802C52BC  48 00 01 DC */	b lbl_802C5498
lbl_802C52C0:
/* 802C52C0  3B E0 00 00 */	li r31, 0
/* 802C52C4  80 84 00 00 */	lwz r4, 0(r4)
/* 802C52C8  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030025@ha */
/* 802C52CC  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00030025@l */
/* 802C52D0  7C 04 00 00 */	cmpw r4, r0
/* 802C52D4  40 80 00 20 */	bge lbl_802C52F4
/* 802C52D8  38 03 00 15 */	addi r0, r3, 0x15
/* 802C52DC  7C 04 00 00 */	cmpw r4, r0
/* 802C52E0  40 80 00 30 */	bge lbl_802C5310
/* 802C52E4  38 03 00 10 */	addi r0, r3, 0x10
/* 802C52E8  7C 04 00 00 */	cmpw r4, r0
/* 802C52EC  40 80 00 18 */	bge lbl_802C5304
/* 802C52F0  48 00 00 20 */	b lbl_802C5310
lbl_802C52F4:
/* 802C52F4  38 03 00 28 */	addi r0, r3, 0x28
/* 802C52F8  7C 04 00 00 */	cmpw r4, r0
/* 802C52FC  40 80 00 14 */	bge lbl_802C5310
/* 802C5300  48 00 00 0C */	b lbl_802C530C
lbl_802C5304:
/* 802C5304  3B E0 00 01 */	li r31, 1
/* 802C5308  48 00 00 08 */	b lbl_802C5310
lbl_802C530C:
/* 802C530C  3B E0 00 02 */	li r31, 2
lbl_802C5310:
/* 802C5310  90 81 00 18 */	stw r4, 0x18(r1)
/* 802C5314  7F A3 EB 78 */	mr r3, r29
/* 802C5318  38 81 00 18 */	addi r4, r1, 0x18
/* 802C531C  FC 20 F8 90 */	fmr f1, f31
/* 802C5320  4B FE 59 1D */	bl func_802AAC3C
/* 802C5324  7C 7E 1B 78 */	mr r30, r3
/* 802C5328  80 7D 00 04 */	lwz r3, 4(r29)
/* 802C532C  88 03 00 98 */	lbz r0, 0x98(r3)
/* 802C5330  28 00 00 00 */	cmplwi r0, 0
/* 802C5334  41 82 01 60 */	beq lbl_802C5494
/* 802C5338  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802C533C  41 82 01 58 */	beq lbl_802C5494
/* 802C5340  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C5344  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C5348  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802C534C  41 82 00 30 */	beq lbl_802C537C
/* 802C5350  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020026@ha */
/* 802C5354  38 04 00 26 */	addi r0, r4, 0x0026 /* 0x00020026@l */
/* 802C5358  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C535C  38 81 00 14 */	addi r4, r1, 0x14
/* 802C5360  38 A0 00 00 */	li r5, 0
/* 802C5364  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C5368  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C536C  FC 00 00 1E */	fctiwz f0, f0
/* 802C5370  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802C5374  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 802C5378  4B FF E8 5D */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C537C:
/* 802C537C  80 8D 8D E0 */	lwz r4, mLinkPtr__14Z2CreatureLink(r13)
/* 802C5380  88 04 00 C5 */	lbz r0, 0xc5(r4)
/* 802C5384  28 00 00 00 */	cmplwi r0, 0
/* 802C5388  41 82 00 8C */	beq lbl_802C5414
/* 802C538C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020029@ha */
/* 802C5390  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00020029@l */
/* 802C5394  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C5398  38 64 00 94 */	addi r3, r4, 0x94
/* 802C539C  38 81 00 10 */	addi r4, r1, 0x10
/* 802C53A0  38 A0 00 00 */	li r5, 0
/* 802C53A4  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C53A8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C53AC  FC 00 00 1E */	fctiwz f0, f0
/* 802C53B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802C53B4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 802C53B8  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C53BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C53C0  7D 89 03 A6 */	mtctr r12
/* 802C53C4  4E 80 04 21 */	bctrl 
/* 802C53C8  7C 7D 1B 78 */	mr r29, r3
/* 802C53CC  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C53D0  88 03 00 C5 */	lbz r0, 0xc5(r3)
/* 802C53D4  28 00 00 02 */	cmplwi r0, 2
/* 802C53D8  40 82 00 3C */	bne lbl_802C5414
/* 802C53DC  28 1D 00 00 */	cmplwi r29, 0
/* 802C53E0  41 82 00 34 */	beq lbl_802C5414
/* 802C53E4  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C53E8  28 03 00 00 */	cmplwi r3, 0
/* 802C53EC  41 82 00 28 */	beq lbl_802C5414
/* 802C53F0  38 63 00 48 */	addi r3, r3, 0x48
/* 802C53F4  C0 22 C2 FC */	lfs f1, lit_3946(r2)
/* 802C53F8  38 80 00 00 */	li r4, 0
/* 802C53FC  4B FD D9 B9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C5400  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C5404  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5408  C0 22 C3 1C */	lfs f1, lit_4399(r2)
/* 802C540C  38 80 00 00 */	li r4, 0
/* 802C5410  4B FD D9 FD */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C5414:
/* 802C5414  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C5418  2C 00 00 02 */	cmpwi r0, 2
/* 802C541C  41 82 00 48 */	beq lbl_802C5464
/* 802C5420  40 80 00 74 */	bge lbl_802C5494
/* 802C5424  2C 00 00 01 */	cmpwi r0, 1
/* 802C5428  40 80 00 08 */	bge lbl_802C5430
/* 802C542C  48 00 00 68 */	b lbl_802C5494
lbl_802C5430:
/* 802C5430  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020027@ha */
/* 802C5434  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00020027@l */
/* 802C5438  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C543C  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C5440  38 81 00 0C */	addi r4, r1, 0xc
/* 802C5444  38 A0 00 00 */	li r5, 0
/* 802C5448  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C544C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C5450  FC 00 00 1E */	fctiwz f0, f0
/* 802C5454  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802C5458  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 802C545C  4B FF E7 79 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
/* 802C5460  48 00 00 34 */	b lbl_802C5494
lbl_802C5464:
/* 802C5464  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020028@ha */
/* 802C5468  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00020028@l */
/* 802C546C  90 01 00 08 */	stw r0, 8(r1)
/* 802C5470  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C5474  38 81 00 08 */	addi r4, r1, 8
/* 802C5478  38 A0 00 00 */	li r5, 0
/* 802C547C  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C5480  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C5484  FC 00 00 1E */	fctiwz f0, f0
/* 802C5488  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802C548C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 802C5490  4B FF E7 45 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C5494:
/* 802C5494  7F C3 F3 78 */	mr r3, r30
lbl_802C5498:
/* 802C5498  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802C549C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C54A0  39 61 00 40 */	addi r11, r1, 0x40
/* 802C54A4  48 09 CD 85 */	bl _restgpr_29
/* 802C54A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C54AC  7C 08 03 A6 */	mtlr r0
/* 802C54B0  38 21 00 50 */	addi r1, r1, 0x50
/* 802C54B4  4E 80 00 20 */	blr 
