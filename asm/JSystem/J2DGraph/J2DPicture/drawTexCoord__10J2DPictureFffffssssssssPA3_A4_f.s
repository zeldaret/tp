lbl_802FE380:
/* 802FE380  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802FE384  7C 08 02 A6 */	mflr r0
/* 802FE388  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802FE38C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 802FE390  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 802FE394  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 802FE398  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 802FE39C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 802FE3A0  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 802FE3A4  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 802FE3A8  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 802FE3AC  39 61 00 80 */	addi r11, r1, 0x80
/* 802FE3B0  48 06 3E 0D */	bl _savegpr_21
/* 802FE3B4  7C 75 1B 78 */	mr r21, r3
/* 802FE3B8  FF 80 08 90 */	fmr f28, f1
/* 802FE3BC  FF A0 10 90 */	fmr f29, f2
/* 802FE3C0  FF E0 18 90 */	fmr f31, f3
/* 802FE3C4  FF C0 20 90 */	fmr f30, f4
/* 802FE3C8  7C 96 23 78 */	mr r22, r4
/* 802FE3CC  7C B7 2B 78 */	mr r23, r5
/* 802FE3D0  7C D8 33 78 */	mr r24, r6
/* 802FE3D4  7C F9 3B 78 */	mr r25, r7
/* 802FE3D8  7D 1A 43 78 */	mr r26, r8
/* 802FE3DC  7D 3B 4B 78 */	mr r27, r9
/* 802FE3E0  7D 5C 53 78 */	mr r28, r10
/* 802FE3E4  AB A1 00 CA */	lha r29, 0xca(r1)
/* 802FE3E8  83 C1 00 CC */	lwz r30, 0xcc(r1)
/* 802FE3EC  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FE3F0  28 00 00 00 */	cmplwi r0, 0
/* 802FE3F4  41 82 01 A4 */	beq lbl_802FE598
/* 802FE3F8  3B E0 00 00 */	li r31, 0
/* 802FE3FC  48 00 00 20 */	b lbl_802FE41C
lbl_802FE400:
/* 802FE400  7E A3 AB 78 */	mr r3, r21
/* 802FE404  7F E4 FB 78 */	mr r4, r31
/* 802FE408  81 95 00 00 */	lwz r12, 0(r21)
/* 802FE40C  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 802FE410  7D 89 03 A6 */	mtctr r12
/* 802FE414  4E 80 04 21 */	bctrl 
/* 802FE418  3B FF 00 01 */	addi r31, r31, 1
lbl_802FE41C:
/* 802FE41C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802FE420  88 75 01 08 */	lbz r3, 0x108(r21)
/* 802FE424  7C 00 18 40 */	cmplw r0, r3
/* 802FE428  41 80 FF D8 */	blt lbl_802FE400
/* 802FE42C  EF FC F8 2A */	fadds f31, f28, f31
/* 802FE430  EF DD F0 2A */	fadds f30, f29, f30
/* 802FE434  48 05 D9 C9 */	bl GXSetNumTexGens
/* 802FE438  38 00 FF FF */	li r0, -1
/* 802FE43C  90 01 00 08 */	stw r0, 8(r1)
/* 802FE440  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FE444  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FE448  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE44C  7E A3 AB 78 */	mr r3, r21
/* 802FE450  38 81 00 08 */	addi r4, r1, 8
/* 802FE454  48 00 08 11 */	bl getNewColor__10J2DPictureFPQ28JUtility6TColor
/* 802FE458  7E A3 AB 78 */	mr r3, r21
/* 802FE45C  48 00 01 75 */	bl setTevMode__10J2DPictureFv
/* 802FE460  7F C3 F3 78 */	mr r3, r30
/* 802FE464  38 95 00 80 */	addi r4, r21, 0x80
/* 802FE468  38 A1 00 18 */	addi r5, r1, 0x18
/* 802FE46C  48 04 80 79 */	bl PSMTXConcat
/* 802FE470  38 61 00 18 */	addi r3, r1, 0x18
/* 802FE474  38 80 00 00 */	li r4, 0
/* 802FE478  48 06 1D D5 */	bl GXLoadPosMtxImm
/* 802FE47C  48 05 D1 11 */	bl GXClearVtxDesc
/* 802FE480  38 60 00 09 */	li r3, 9
/* 802FE484  38 80 00 01 */	li r4, 1
/* 802FE488  48 05 CA 31 */	bl GXSetVtxDesc
/* 802FE48C  38 60 00 0B */	li r3, 0xb
/* 802FE490  38 80 00 01 */	li r4, 1
/* 802FE494  48 05 CA 25 */	bl GXSetVtxDesc
/* 802FE498  38 60 00 0D */	li r3, 0xd
/* 802FE49C  38 80 00 01 */	li r4, 1
/* 802FE4A0  48 05 CA 19 */	bl GXSetVtxDesc
/* 802FE4A4  38 60 00 00 */	li r3, 0
/* 802FE4A8  38 80 00 09 */	li r4, 9
/* 802FE4AC  38 A0 00 01 */	li r5, 1
/* 802FE4B0  38 C0 00 04 */	li r6, 4
/* 802FE4B4  38 E0 00 00 */	li r7, 0
/* 802FE4B8  48 05 D1 0D */	bl GXSetVtxAttrFmt
/* 802FE4BC  38 60 00 00 */	li r3, 0
/* 802FE4C0  38 80 00 0D */	li r4, 0xd
/* 802FE4C4  38 A0 00 01 */	li r5, 1
/* 802FE4C8  38 C0 00 03 */	li r6, 3
/* 802FE4CC  38 E0 00 08 */	li r7, 8
/* 802FE4D0  48 05 D0 F5 */	bl GXSetVtxAttrFmt
/* 802FE4D4  38 60 00 80 */	li r3, 0x80
/* 802FE4D8  38 80 00 00 */	li r4, 0
/* 802FE4DC  38 A0 00 04 */	li r5, 4
/* 802FE4E0  48 05 E2 85 */	bl GXBegin
/* 802FE4E4  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802FE4E8  D3 83 80 00 */	stfs f28, 0x8000(r3)
/* 802FE4EC  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FE4F0  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE4F4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE4F8  80 01 00 08 */	lwz r0, 8(r1)
/* 802FE4FC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE500  B2 C3 80 00 */	sth r22, -0x8000(r3)
/* 802FE504  B2 E3 80 00 */	sth r23, -0x8000(r3)
/* 802FE508  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FE50C  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 802FE510  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE514  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE518  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802FE51C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE520  B3 03 80 00 */	sth r24, -0x8000(r3)
/* 802FE524  B3 23 80 00 */	sth r25, -0x8000(r3)
/* 802FE528  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FE52C  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FE530  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE534  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE53C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE540  B3 83 80 00 */	sth r28, -0x8000(r3)
/* 802FE544  B3 A3 80 00 */	sth r29, -0x8000(r3)
/* 802FE548  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 802FE54C  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FE550  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FE554  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FE558  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802FE55C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FE560  B3 43 80 00 */	sth r26, -0x8000(r3)
/* 802FE564  B3 63 80 00 */	sth r27, -0x8000(r3)
/* 802FE568  38 60 00 00 */	li r3, 0
/* 802FE56C  38 80 00 0D */	li r4, 0xd
/* 802FE570  38 A0 00 01 */	li r5, 1
/* 802FE574  38 C0 00 02 */	li r6, 2
/* 802FE578  38 E0 00 0F */	li r7, 0xf
/* 802FE57C  48 05 D0 49 */	bl GXSetVtxAttrFmt
/* 802FE580  38 60 00 00 */	li r3, 0
/* 802FE584  38 80 00 09 */	li r4, 9
/* 802FE588  38 A0 00 01 */	li r5, 1
/* 802FE58C  38 C0 00 03 */	li r6, 3
/* 802FE590  38 E0 00 00 */	li r7, 0
/* 802FE594  48 05 D0 31 */	bl GXSetVtxAttrFmt
lbl_802FE598:
/* 802FE598  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 802FE59C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 802FE5A0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 802FE5A4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 802FE5A8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 802FE5AC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 802FE5B0  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 802FE5B4  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 802FE5B8  39 61 00 80 */	addi r11, r1, 0x80
/* 802FE5BC  48 06 3C 4D */	bl _restgpr_21
/* 802FE5C0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802FE5C4  7C 08 03 A6 */	mtlr r0
/* 802FE5C8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802FE5CC  4E 80 00 20 */	blr 
