lbl_802FDC70:
/* 802FDC70  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802FDC74  7C 08 02 A6 */	mflr r0
/* 802FDC78  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802FDC7C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802FDC80  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 802FDC84  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 802FDC88  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 802FDC8C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 802FDC90  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 802FDC94  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 802FDC98  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 802FDC9C  39 61 00 70 */	addi r11, r1, 0x70
/* 802FDCA0  48 06 45 35 */	bl _savegpr_27
/* 802FDCA4  7C 7B 1B 78 */	mr r27, r3
/* 802FDCA8  FF 80 08 90 */	fmr f28, f1
/* 802FDCAC  FF A0 10 90 */	fmr f29, f2
/* 802FDCB0  FF C0 18 90 */	fmr f30, f3
/* 802FDCB4  FF E0 20 90 */	fmr f31, f4
/* 802FDCB8  7C 9C 23 78 */	mr r28, r4
/* 802FDCBC  7C BD 2B 78 */	mr r29, r5
/* 802FDCC0  7C DE 33 78 */	mr r30, r6
/* 802FDCC4  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802FDCC8  28 00 00 00 */	cmplwi r0, 0
/* 802FDCCC  41 82 02 84 */	beq lbl_802FDF50
/* 802FDCD0  88 1B 01 08 */	lbz r0, 0x108(r27)
/* 802FDCD4  28 00 00 00 */	cmplwi r0, 0
/* 802FDCD8  41 82 02 78 */	beq lbl_802FDF50
/* 802FDCDC  80 1B 01 00 */	lwz r0, 0x100(r27)
/* 802FDCE0  28 00 00 00 */	cmplwi r0, 0
/* 802FDCE4  41 82 02 6C */	beq lbl_802FDF50
/* 802FDCE8  3B E0 00 00 */	li r31, 0
/* 802FDCEC  48 00 00 20 */	b lbl_802FDD0C
lbl_802FDCF0:
/* 802FDCF0  7F 63 DB 78 */	mr r3, r27
/* 802FDCF4  7F E4 FB 78 */	mr r4, r31
/* 802FDCF8  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FDCFC  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 802FDD00  7D 89 03 A6 */	mtctr r12
/* 802FDD04  4E 80 04 21 */	bctrl 
/* 802FDD08  3B FF 00 01 */	addi r31, r31, 1
lbl_802FDD0C:
/* 802FDD0C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802FDD10  88 7B 01 08 */	lbz r3, 0x108(r27)
/* 802FDD14  7C 00 18 40 */	cmplw r0, r3
/* 802FDD18  41 80 FF D8 */	blt lbl_802FDCF0
/* 802FDD1C  48 05 E0 E1 */	bl GXSetNumTexGens
/* 802FDD20  88 1B 00 B2 */	lbz r0, 0xb2(r27)
/* 802FDD24  98 1B 00 B3 */	stb r0, 0xb3(r27)
/* 802FDD28  38 00 FF FF */	li r0, -1
/* 802FDD2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FDD30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FDD34  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FDD38  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FDD3C  7F 63 DB 78 */	mr r3, r27
/* 802FDD40  38 81 00 18 */	addi r4, r1, 0x18
/* 802FDD44  48 00 0F 21 */	bl getNewColor__10J2DPictureFPQ28JUtility6TColor
/* 802FDD48  7F 63 DB 78 */	mr r3, r27
/* 802FDD4C  48 00 08 85 */	bl setTevMode__10J2DPictureFv
/* 802FDD50  7F 63 DB 78 */	mr r3, r27
/* 802FDD54  FC 20 E0 90 */	fmr f1, f28
/* 802FDD58  FC 40 E8 90 */	fmr f2, f29
/* 802FDD5C  C0 62 C8 6C */	lfs f3, lit_2017(r2)
/* 802FDD60  FC 80 18 90 */	fmr f4, f3
/* 802FDD64  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FDD68  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802FDD6C  7D 89 03 A6 */	mtctr r12
/* 802FDD70  4E 80 04 21 */	bctrl 
/* 802FDD74  38 7B 00 50 */	addi r3, r27, 0x50
/* 802FDD78  38 80 00 00 */	li r4, 0
/* 802FDD7C  48 06 24 D1 */	bl GXLoadPosMtxImm
/* 802FDD80  38 60 00 00 */	li r3, 0
/* 802FDD84  48 06 25 69 */	bl GXSetCurrentMtx
/* 802FDD88  48 05 D8 05 */	bl GXClearVtxDesc
/* 802FDD8C  38 60 00 09 */	li r3, 9
/* 802FDD90  38 80 00 01 */	li r4, 1
/* 802FDD94  48 05 D1 25 */	bl GXSetVtxDesc
/* 802FDD98  38 60 00 0B */	li r3, 0xb
/* 802FDD9C  38 80 00 01 */	li r4, 1
/* 802FDDA0  48 05 D1 19 */	bl GXSetVtxDesc
/* 802FDDA4  38 60 00 0D */	li r3, 0xd
/* 802FDDA8  38 80 00 01 */	li r4, 1
/* 802FDDAC  48 05 D1 0D */	bl GXSetVtxDesc
/* 802FDDB0  38 60 00 00 */	li r3, 0
/* 802FDDB4  38 80 00 09 */	li r4, 9
/* 802FDDB8  38 A0 00 01 */	li r5, 1
/* 802FDDBC  38 C0 00 04 */	li r6, 4
/* 802FDDC0  38 E0 00 00 */	li r7, 0
/* 802FDDC4  48 05 D8 01 */	bl GXSetVtxAttrFmt
/* 802FDDC8  7F 63 DB 78 */	mr r3, r27
/* 802FDDCC  38 81 00 08 */	addi r4, r1, 8
/* 802FDDD0  80 BB 01 00 */	lwz r5, 0x100(r27)
/* 802FDDD4  38 C0 00 0F */	li r6, 0xf
/* 802FDDD8  57 87 0D FC */	rlwinm r7, r28, 1, 0x17, 0x1e
/* 802FDDDC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802FDDE0  7C E7 03 78 */	or r7, r7, r0
/* 802FDDE4  7F C8 F3 78 */	mr r8, r30
/* 802FDDE8  48 00 0F 9D */	bl func_802FED84
/* 802FDDEC  38 60 00 00 */	li r3, 0
/* 802FDDF0  38 80 00 0D */	li r4, 0xd
/* 802FDDF4  38 A0 00 01 */	li r5, 1
/* 802FDDF8  38 C0 00 03 */	li r6, 3
/* 802FDDFC  38 E0 00 08 */	li r7, 8
/* 802FDE00  48 05 D7 C5 */	bl GXSetVtxAttrFmt
/* 802FDE04  38 60 00 80 */	li r3, 0x80
/* 802FDE08  38 80 00 00 */	li r4, 0
/* 802FDE0C  38 A0 00 04 */	li r5, 4
/* 802FDE10  48 05 E9 55 */	bl GXBegin
/* 802FDE14  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDE18  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802FDE1C  D0 03 80 00 */	stfs f0, 0x8000(r3)
/* 802FDE20  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDE24  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDE28  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDE2C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDE30  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802FDE34  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FDE38  A8 01 00 08 */	lha r0, 8(r1)
/* 802FDE3C  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDE40  A8 01 00 0A */	lha r0, 0xa(r1)
/* 802FDE44  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDE48  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FDE4C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDE50  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDE54  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDE58  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDE5C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802FDE60  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FDE64  A8 01 00 0C */	lha r0, 0xc(r1)
/* 802FDE68  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDE6C  A8 01 00 0E */	lha r0, 0xe(r1)
/* 802FDE70  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDE74  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802FDE78  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FDE7C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDE80  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDE84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FDE88  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FDE8C  A8 01 00 14 */	lha r0, 0x14(r1)
/* 802FDE90  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDE94  A8 01 00 16 */	lha r0, 0x16(r1)
/* 802FDE98  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDE9C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDEA0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDEA4  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802FDEA8  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FDEAC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802FDEB0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802FDEB4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802FDEB8  A8 01 00 10 */	lha r0, 0x10(r1)
/* 802FDEBC  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDEC0  A8 01 00 12 */	lha r0, 0x12(r1)
/* 802FDEC4  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 802FDEC8  38 60 00 00 */	li r3, 0
/* 802FDECC  38 80 00 0D */	li r4, 0xd
/* 802FDED0  38 A0 00 01 */	li r5, 1
/* 802FDED4  38 C0 00 02 */	li r6, 2
/* 802FDED8  38 E0 00 0F */	li r7, 0xf
/* 802FDEDC  48 05 D6 E9 */	bl GXSetVtxAttrFmt
/* 802FDEE0  38 60 00 00 */	li r3, 0
/* 802FDEE4  48 05 DF 19 */	bl GXSetNumTexGens
/* 802FDEE8  38 60 00 01 */	li r3, 1
/* 802FDEEC  48 06 19 A5 */	bl GXSetNumTevStages
/* 802FDEF0  38 60 00 00 */	li r3, 0
/* 802FDEF4  38 80 00 04 */	li r4, 4
/* 802FDEF8  48 06 12 A1 */	bl GXSetTevOp
/* 802FDEFC  38 60 00 00 */	li r3, 0
/* 802FDF00  38 80 00 FF */	li r4, 0xff
/* 802FDF04  38 A0 00 FF */	li r5, 0xff
/* 802FDF08  38 C0 00 04 */	li r6, 4
/* 802FDF0C  48 06 17 E9 */	bl GXSetTevOrder
/* 802FDF10  38 61 00 28 */	addi r3, r1, 0x28
/* 802FDF14  48 04 85 71 */	bl PSMTXIdentity
/* 802FDF18  38 61 00 28 */	addi r3, r1, 0x28
/* 802FDF1C  38 80 00 00 */	li r4, 0
/* 802FDF20  48 06 23 2D */	bl GXLoadPosMtxImm
/* 802FDF24  38 60 00 04 */	li r3, 4
/* 802FDF28  38 80 00 00 */	li r4, 0
/* 802FDF2C  38 A0 00 00 */	li r5, 0
/* 802FDF30  38 C0 00 01 */	li r6, 1
/* 802FDF34  38 E0 00 00 */	li r7, 0
/* 802FDF38  39 00 00 00 */	li r8, 0
/* 802FDF3C  39 20 00 02 */	li r9, 2
/* 802FDF40  48 05 FC 2D */	bl GXSetChanCtrl
/* 802FDF44  38 60 00 0D */	li r3, 0xd
/* 802FDF48  38 80 00 00 */	li r4, 0
/* 802FDF4C  48 05 CF 6D */	bl GXSetVtxDesc
lbl_802FDF50:
/* 802FDF50  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 802FDF54  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 802FDF58  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 802FDF5C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 802FDF60  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 802FDF64  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 802FDF68  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 802FDF6C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 802FDF70  39 61 00 70 */	addi r11, r1, 0x70
/* 802FDF74  48 06 42 AD */	bl _restgpr_27
/* 802FDF78  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802FDF7C  7C 08 03 A6 */	mtlr r0
/* 802FDF80  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802FDF84  4E 80 00 20 */	blr 
