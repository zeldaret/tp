lbl_80303AB4:
/* 80303AB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80303AB8  7C 08 02 A6 */	mflr r0
/* 80303ABC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80303AC0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80303AC4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80303AC8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80303ACC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80303AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80303AD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80303AD8  7C 7E 1B 78 */	mr r30, r3
/* 80303ADC  FF C0 08 90 */	fmr f30, f1
/* 80303AE0  FF E0 10 90 */	fmr f31, f2
/* 80303AE4  7C 9F 23 78 */	mr r31, r4
/* 80303AE8  80 63 01 50 */	lwz r3, 0x150(r3)
/* 80303AEC  28 03 00 00 */	cmplwi r3, 0
/* 80303AF0  41 82 00 68 */	beq lbl_80303B58
/* 80303AF4  4B FE 68 99 */	bl setGX__11J2DMaterialFv
/* 80303AF8  48 05 7A 95 */	bl GXClearVtxDesc
/* 80303AFC  38 60 00 09 */	li r3, 9
/* 80303B00  38 80 00 01 */	li r4, 1
/* 80303B04  48 05 73 B5 */	bl GXSetVtxDesc
/* 80303B08  38 60 00 0B */	li r3, 0xb
/* 80303B0C  38 80 00 01 */	li r4, 1
/* 80303B10  48 05 73 A9 */	bl GXSetVtxDesc
/* 80303B14  38 60 00 0D */	li r3, 0xd
/* 80303B18  38 80 00 01 */	li r4, 1
/* 80303B1C  48 05 73 9D */	bl GXSetVtxDesc
/* 80303B20  7F C3 F3 78 */	mr r3, r30
/* 80303B24  FC 20 F0 90 */	fmr f1, f30
/* 80303B28  FC 40 F8 90 */	fmr f2, f31
/* 80303B2C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80303B30  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80303B34  EC 63 00 28 */	fsubs f3, f3, f0
/* 80303B38  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 80303B3C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80303B40  EC 84 00 28 */	fsubs f4, f4, f0
/* 80303B44  7F E4 FB 78 */	mr r4, r31
/* 80303B48  81 9E 00 00 */	lwz r12, 0(r30)
/* 80303B4C  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 80303B50  7D 89 03 A6 */	mtctr r12
/* 80303B54  4E 80 04 21 */	bctrl 
lbl_80303B58:
/* 80303B58  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80303B5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80303B60  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80303B64  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80303B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80303B6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80303B70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80303B74  7C 08 03 A6 */	mtlr r0
/* 80303B78  38 21 00 30 */	addi r1, r1, 0x30
/* 80303B7C  4E 80 00 20 */	blr 
