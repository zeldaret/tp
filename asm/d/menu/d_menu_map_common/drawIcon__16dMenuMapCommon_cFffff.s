lbl_801C38E4:
/* 801C38E4  94 21 FE 00 */	stwu r1, -0x200(r1)
/* 801C38E8  7C 08 02 A6 */	mflr r0
/* 801C38EC  90 01 02 04 */	stw r0, 0x204(r1)
/* 801C38F0  DB E1 01 F0 */	stfd f31, 0x1f0(r1)
/* 801C38F4  F3 E1 01 F8 */	psq_st f31, 504(r1), 0, 0 /* qr0 */
/* 801C38F8  DB C1 01 E0 */	stfd f30, 0x1e0(r1)
/* 801C38FC  F3 C1 01 E8 */	psq_st f30, 488(r1), 0, 0 /* qr0 */
/* 801C3900  DB A1 01 D0 */	stfd f29, 0x1d0(r1)
/* 801C3904  F3 A1 01 D8 */	psq_st f29, 472(r1), 0, 0 /* qr0 */
/* 801C3908  DB 81 01 C0 */	stfd f28, 0x1c0(r1)
/* 801C390C  F3 81 01 C8 */	psq_st f28, 456(r1), 0, 0 /* qr0 */
/* 801C3910  DB 61 01 B0 */	stfd f27, 0x1b0(r1)
/* 801C3914  F3 61 01 B8 */	psq_st f27, 440(r1), 0, 0 /* qr0 */
/* 801C3918  DB 41 01 A0 */	stfd f26, 0x1a0(r1)
/* 801C391C  F3 41 01 A8 */	psq_st f26, 424(r1), 0, 0 /* qr0 */
/* 801C3920  DB 21 01 90 */	stfd f25, 0x190(r1)
/* 801C3924  F3 21 01 98 */	psq_st f25, 408(r1), 0, 0 /* qr0 */
/* 801C3928  DB 01 01 80 */	stfd f24, 0x180(r1)
/* 801C392C  F3 01 01 88 */	psq_st f24, 392(r1), 0, 0 /* qr0 */
/* 801C3930  DA E1 01 70 */	stfd f23, 0x170(r1)
/* 801C3934  F2 E1 01 78 */	psq_st f23, 376(r1), 0, 0 /* qr0 */
/* 801C3938  DA C1 01 60 */	stfd f22, 0x160(r1)
/* 801C393C  F2 C1 01 68 */	psq_st f22, 360(r1), 0, 0 /* qr0 */
/* 801C3940  DA A1 01 50 */	stfd f21, 0x150(r1)
/* 801C3944  F2 A1 01 58 */	psq_st f21, 344(r1), 0, 0 /* qr0 */
/* 801C3948  DA 81 01 40 */	stfd f20, 0x140(r1)
/* 801C394C  F2 81 01 48 */	psq_st f20, 328(r1), 0, 0 /* qr0 */
/* 801C3950  DA 61 01 30 */	stfd f19, 0x130(r1)
/* 801C3954  F2 61 01 38 */	psq_st f19, 312(r1), 0, 0 /* qr0 */
/* 801C3958  39 61 01 30 */	addi r11, r1, 0x130
/* 801C395C  48 19 E8 75 */	bl _savegpr_26
/* 801C3960  7C 7B 1B 78 */	mr r27, r3
/* 801C3964  FE 60 08 90 */	fmr f19, f1
/* 801C3968  FE 80 10 90 */	fmr f20, f2
/* 801C396C  FE A0 18 90 */	fmr f21, f3
/* 801C3970  FE C0 20 90 */	fmr f22, f4
/* 801C3974  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C3978  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C397C  88 04 04 8C */	lbz r0, 0x48c(r4)
/* 801C3980  28 00 00 00 */	cmplwi r0, 0
/* 801C3984  41 82 00 08 */	beq lbl_801C398C
/* 801C3988  48 00 0E 3D */	bl debugIcon__16dMenuMapCommon_cFv
lbl_801C398C:
/* 801C398C  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801C3990  28 03 00 00 */	cmplwi r3, 0
/* 801C3994  41 82 00 0C */	beq lbl_801C39A0
/* 801C3998  38 00 00 01 */	li r0, 1
/* 801C399C  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_801C39A0:
/* 801C39A0  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 801C39A4  28 03 00 00 */	cmplwi r3, 0
/* 801C39A8  41 82 00 0C */	beq lbl_801C39B4
/* 801C39AC  38 00 00 01 */	li r0, 1
/* 801C39B0  98 03 00 B7 */	stb r0, 0xb7(r3)
lbl_801C39B4:
/* 801C39B4  38 60 00 00 */	li r3, 0
/* 801C39B8  38 80 00 00 */	li r4, 0
/* 801C39BC  38 C0 FF FF */	li r6, -1
/* 801C39C0  38 A1 00 08 */	addi r5, r1, 8
/* 801C39C4  38 00 00 80 */	li r0, 0x80
/* 801C39C8  7C 09 03 A6 */	mtctr r0
lbl_801C39CC:
/* 801C39CC  7C C5 23 2E */	sthx r6, r5, r4
/* 801C39D0  38 84 00 02 */	addi r4, r4, 2
/* 801C39D4  42 00 FF F8 */	bdnz lbl_801C39CC
/* 801C39D8  38 C0 00 16 */	li r6, 0x16
/* 801C39DC  38 81 00 08 */	addi r4, r1, 8
/* 801C39E0  38 00 00 17 */	li r0, 0x17
/* 801C39E4  7C 09 03 A6 */	mtctr r0
lbl_801C39E8:
/* 801C39E8  38 E0 00 00 */	li r7, 0
/* 801C39EC  48 00 00 34 */	b lbl_801C3A20
lbl_801C39F0:
/* 801C39F0  7C E0 07 34 */	extsh r0, r7
/* 801C39F4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801C39F8  7C BB 02 14 */	add r5, r27, r0
/* 801C39FC  88 05 00 84 */	lbz r0, 0x84(r5)
/* 801C3A00  7C 06 00 00 */	cmpw r6, r0
/* 801C3A04  40 82 00 18 */	bne lbl_801C3A1C
/* 801C3A08  88 05 00 85 */	lbz r0, 0x85(r5)
/* 801C3A0C  28 00 00 00 */	cmplwi r0, 0
/* 801C3A10  41 82 00 0C */	beq lbl_801C3A1C
/* 801C3A14  7C E4 1B 2E */	sthx r7, r4, r3
/* 801C3A18  38 63 00 02 */	addi r3, r3, 2
lbl_801C3A1C:
/* 801C3A1C  38 E7 00 01 */	addi r7, r7, 1
lbl_801C3A20:
/* 801C3A20  7C E0 07 34 */	extsh r0, r7
/* 801C3A24  2C 00 00 80 */	cmpwi r0, 0x80
/* 801C3A28  41 80 FF C8 */	blt lbl_801C39F0
/* 801C3A2C  38 C6 FF FF */	addi r6, r6, -1
/* 801C3A30  42 00 FF B8 */	bdnz lbl_801C39E8
/* 801C3A34  3B 80 00 00 */	li r28, 0
/* 801C3A38  3B 40 00 00 */	li r26, 0
/* 801C3A3C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C3A40  3B C3 FC 60 */	addi r30, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C3A44  C0 02 A6 E0 */	lfs f0, lit_4010(r2)
/* 801C3A48  EF E0 05 72 */	fmuls f31, f0, f21
/* 801C3A4C  3B E1 00 08 */	addi r31, r1, 8
lbl_801C3A50:
/* 801C3A50  7C 1F D2 AE */	lhax r0, r31, r26
/* 801C3A54  2C 00 FF FF */	cmpwi r0, -1
/* 801C3A58  41 82 03 DC */	beq lbl_801C3E34
/* 801C3A5C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801C3A60  7F BB 02 14 */	add r29, r27, r0
/* 801C3A64  88 9D 00 84 */	lbz r4, 0x84(r29)
/* 801C3A68  28 04 00 00 */	cmplwi r4, 0
/* 801C3A6C  40 82 00 AC */	bne lbl_801C3B18
/* 801C3A70  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801C3A74  28 03 00 00 */	cmplwi r3, 0
/* 801C3A78  41 82 03 BC */	beq lbl_801C3E34
/* 801C3A7C  C2 FD 00 70 */	lfs f23, 0x70(r29)
/* 801C3A80  C3 1D 00 74 */	lfs f24, 0x74(r29)
/* 801C3A84  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 801C3A88  28 00 00 01 */	cmplwi r0, 1
/* 801C3A8C  40 82 00 40 */	bne lbl_801C3ACC
/* 801C3A90  88 1D 00 85 */	lbz r0, 0x85(r29)
/* 801C3A94  28 00 00 02 */	cmplwi r0, 2
/* 801C3A98  40 82 00 10 */	bne lbl_801C3AA8
/* 801C3A9C  C0 22 A6 DC */	lfs f1, lit_3882(r2)
/* 801C3AA0  4B FD 18 01 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801C3AA4  48 00 00 28 */	b lbl_801C3ACC
lbl_801C3AA8:
/* 801C3AA8  28 00 00 03 */	cmplwi r0, 3
/* 801C3AAC  40 82 00 10 */	bne lbl_801C3ABC
/* 801C3AB0  C0 3B 0C 78 */	lfs f1, 0xc78(r27)
/* 801C3AB4  4B FD 17 ED */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801C3AB8  48 00 00 14 */	b lbl_801C3ACC
lbl_801C3ABC:
/* 801C3ABC  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 801C3AC0  EC 15 00 32 */	fmuls f0, f21, f0
/* 801C3AC4  EC 36 00 32 */	fmuls f1, f22, f0
/* 801C3AC8  4B FD 17 D9 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801C3ACC:
/* 801C3ACC  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801C3AD0  EC 17 98 2A */	fadds f0, f23, f19
/* 801C3AD4  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801C3AD8  EC 18 A0 2A */	fadds f0, f24, f20
/* 801C3ADC  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 801C3AE0  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801C3AE4  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 801C3AE8  C0 1E 03 1C */	lfs f0, 0x31c(r30)
/* 801C3AEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C3AF0  4B FD 16 D9 */	bl setScale__16dSelect_cursor_cFf
/* 801C3AF4  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801C3AF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3AFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C3B00  7D 89 03 A6 */	mtctr r12
/* 801C3B04  4E 80 04 21 */	bctrl 
/* 801C3B08  38 00 00 00 */	li r0, 0
/* 801C3B0C  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801C3B10  98 03 00 B7 */	stb r0, 0xb7(r3)
/* 801C3B14  48 00 03 20 */	b lbl_801C3E34
lbl_801C3B18:
/* 801C3B18  28 04 00 01 */	cmplwi r4, 1
/* 801C3B1C  40 82 00 A8 */	bne lbl_801C3BC4
/* 801C3B20  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 801C3B24  28 03 00 00 */	cmplwi r3, 0
/* 801C3B28  41 82 03 0C */	beq lbl_801C3E34
/* 801C3B2C  C2 FD 00 70 */	lfs f23, 0x70(r29)
/* 801C3B30  C3 1D 00 74 */	lfs f24, 0x74(r29)
/* 801C3B34  88 03 00 B7 */	lbz r0, 0xb7(r3)
/* 801C3B38  28 00 00 01 */	cmplwi r0, 1
/* 801C3B3C  40 82 00 3C */	bne lbl_801C3B78
/* 801C3B40  88 1D 00 85 */	lbz r0, 0x85(r29)
/* 801C3B44  28 00 00 02 */	cmplwi r0, 2
/* 801C3B48  40 82 00 10 */	bne lbl_801C3B58
/* 801C3B4C  C0 22 A6 DC */	lfs f1, lit_3882(r2)
/* 801C3B50  4B FD 17 51 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801C3B54  48 00 00 24 */	b lbl_801C3B78
lbl_801C3B58:
/* 801C3B58  28 00 00 03 */	cmplwi r0, 3
/* 801C3B5C  40 82 00 10 */	bne lbl_801C3B6C
/* 801C3B60  C0 3B 0C 78 */	lfs f1, 0xc78(r27)
/* 801C3B64  4B FD 17 3D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801C3B68  48 00 00 10 */	b lbl_801C3B78
lbl_801C3B6C:
/* 801C3B6C  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 801C3B70  EC 35 00 32 */	fmuls f1, f21, f0
/* 801C3B74  4B FD 17 2D */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801C3B78:
/* 801C3B78  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 801C3B7C  EC 17 98 2A */	fadds f0, f23, f19
/* 801C3B80  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801C3B84  EC 18 A0 2A */	fadds f0, f24, f20
/* 801C3B88  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 801C3B8C  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 801C3B90  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 801C3B94  C0 1E 03 20 */	lfs f0, 0x320(r30)
/* 801C3B98  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C3B9C  4B FD 16 2D */	bl setScale__16dSelect_cursor_cFf
/* 801C3BA0  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 801C3BA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3BA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C3BAC  7D 89 03 A6 */	mtctr r12
/* 801C3BB0  4E 80 04 21 */	bctrl 
/* 801C3BB4  38 00 00 00 */	li r0, 0
/* 801C3BB8  80 7B 00 68 */	lwz r3, 0x68(r27)
/* 801C3BBC  98 03 00 B7 */	stb r0, 0xb7(r3)
/* 801C3BC0  48 00 02 74 */	b lbl_801C3E34
lbl_801C3BC4:
/* 801C3BC4  54 83 15 BA */	rlwinm r3, r4, 2, 0x16, 0x1d
/* 801C3BC8  38 03 00 04 */	addi r0, r3, 4
/* 801C3BCC  7C 1B 00 2E */	lwzx r0, r27, r0
/* 801C3BD0  28 00 00 00 */	cmplwi r0, 0
/* 801C3BD4  41 82 02 60 */	beq lbl_801C3E34
/* 801C3BD8  C3 9D 00 70 */	lfs f28, 0x70(r29)
/* 801C3BDC  C3 7D 00 74 */	lfs f27, 0x74(r29)
/* 801C3BE0  7F 63 DB 78 */	mr r3, r27
/* 801C3BE4  48 00 0B 55 */	bl getIconSizeX__16dMenuMapCommon_cFUc
/* 801C3BE8  FF 40 08 90 */	fmr f26, f1
/* 801C3BEC  7F 63 DB 78 */	mr r3, r27
/* 801C3BF0  88 9D 00 84 */	lbz r4, 0x84(r29)
/* 801C3BF4  48 00 0B 85 */	bl getIconSizeY__16dMenuMapCommon_cFUc
/* 801C3BF8  FF 20 08 90 */	fmr f25, f1
/* 801C3BFC  7F 63 DB 78 */	mr r3, r27
/* 801C3C00  88 9D 00 84 */	lbz r4, 0x84(r29)
/* 801C3C04  48 00 0B 35 */	bl getIconSizeX__16dMenuMapCommon_cFUc
/* 801C3C08  C0 02 A6 E4 */	lfs f0, lit_4011(r2)
/* 801C3C0C  EF 00 00 72 */	fmuls f24, f0, f1
/* 801C3C10  7F 63 DB 78 */	mr r3, r27
/* 801C3C14  88 9D 00 84 */	lbz r4, 0x84(r29)
/* 801C3C18  48 00 0B 61 */	bl getIconSizeY__16dMenuMapCommon_cFUc
/* 801C3C1C  C0 02 A6 E4 */	lfs f0, lit_4011(r2)
/* 801C3C20  EE E0 00 72 */	fmuls f23, f0, f1
/* 801C3C24  88 1D 00 84 */	lbz r0, 0x84(r29)
/* 801C3C28  28 00 00 05 */	cmplwi r0, 5
/* 801C3C2C  40 82 00 10 */	bne lbl_801C3C3C
/* 801C3C30  C0 1B 0C 7C */	lfs f0, 0xc7c(r27)
/* 801C3C34  EF 5A 00 32 */	fmuls f26, f26, f0
/* 801C3C38  EF 39 00 32 */	fmuls f25, f25, f0
lbl_801C3C3C:
/* 801C3C3C  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 801C3C40  38 03 00 04 */	addi r0, r3, 4
/* 801C3C44  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C3C48  C0 02 A6 E8 */	lfs f0, lit_4012(r2)
/* 801C3C4C  EF DA 00 32 */	fmuls f30, f26, f0
/* 801C3C50  FC 20 F0 90 */	fmr f1, f30
/* 801C3C54  EF B9 00 32 */	fmuls f29, f25, f0
/* 801C3C58  FC 40 E8 90 */	fmr f2, f29
/* 801C3C5C  38 80 00 7A */	li r4, 0x7a
/* 801C3C60  C0 7D 00 7C */	lfs f3, 0x7c(r29)
/* 801C3C64  48 13 35 79 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 801C3C68  88 1D 00 84 */	lbz r0, 0x84(r29)
/* 801C3C6C  28 00 00 05 */	cmplwi r0, 5
/* 801C3C70  40 82 00 84 */	bne lbl_801C3CF4
/* 801C3C74  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 801C3C78  38 03 00 04 */	addi r0, r3, 4
/* 801C3C7C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C3C80  C0 22 A6 EC */	lfs f1, lit_4013(r2)
/* 801C3C84  C0 1B 0C 80 */	lfs f0, 0xc80(r27)
/* 801C3C88  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C3C8C  C0 02 A6 E0 */	lfs f0, lit_4010(r2)
/* 801C3C90  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C3C94  FC 00 00 1E */	fctiwz f0, f0
/* 801C3C98  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 801C3C9C  80 81 01 0C */	lwz r4, 0x10c(r1)
/* 801C3CA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3CA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C3CA8  7D 89 03 A6 */	mtctr r12
/* 801C3CAC  4E 80 04 21 */	bctrl 
/* 801C3CB0  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 801C3CB4  C0 02 A6 E8 */	lfs f0, lit_4012(r2)
/* 801C3CB8  EC 38 00 32 */	fmuls f1, f24, f0
/* 801C3CBC  EC 57 00 32 */	fmuls f2, f23, f0
/* 801C3CC0  38 80 00 7A */	li r4, 0x7a
/* 801C3CC4  C0 7D 00 7C */	lfs f3, 0x7c(r29)
/* 801C3CC8  48 13 35 15 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 801C3CCC  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 801C3CD0  C0 1B 0C 80 */	lfs f0, 0xc80(r27)
/* 801C3CD4  FC 00 00 1E */	fctiwz f0, f0
/* 801C3CD8  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 801C3CDC  80 81 01 14 */	lwz r4, 0x114(r1)
/* 801C3CE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3CE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C3CE8  7D 89 03 A6 */	mtctr r12
/* 801C3CEC  4E 80 04 21 */	bctrl 
/* 801C3CF0  48 00 00 A8 */	b lbl_801C3D98
lbl_801C3CF4:
/* 801C3CF4  88 7D 00 85 */	lbz r3, 0x85(r29)
/* 801C3CF8  28 03 00 02 */	cmplwi r3, 2
/* 801C3CFC  40 82 00 28 */	bne lbl_801C3D24
/* 801C3D00  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 801C3D04  38 03 00 04 */	addi r0, r3, 4
/* 801C3D08  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C3D0C  38 80 00 FF */	li r4, 0xff
/* 801C3D10  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3D14  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C3D18  7D 89 03 A6 */	mtctr r12
/* 801C3D1C  4E 80 04 21 */	bctrl 
/* 801C3D20  48 00 00 78 */	b lbl_801C3D98
lbl_801C3D24:
/* 801C3D24  28 03 00 03 */	cmplwi r3, 3
/* 801C3D28  40 82 00 3C */	bne lbl_801C3D64
/* 801C3D2C  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 801C3D30  38 03 00 04 */	addi r0, r3, 4
/* 801C3D34  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C3D38  C0 22 A6 E0 */	lfs f1, lit_4010(r2)
/* 801C3D3C  C0 1B 0C 78 */	lfs f0, 0xc78(r27)
/* 801C3D40  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C3D44  FC 00 00 1E */	fctiwz f0, f0
/* 801C3D48  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 801C3D4C  80 81 01 14 */	lwz r4, 0x114(r1)
/* 801C3D50  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3D54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C3D58  7D 89 03 A6 */	mtctr r12
/* 801C3D5C  4E 80 04 21 */	bctrl 
/* 801C3D60  48 00 00 38 */	b lbl_801C3D98
lbl_801C3D64:
/* 801C3D64  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 801C3D68  38 03 00 04 */	addi r0, r3, 4
/* 801C3D6C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C3D70  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 801C3D74  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801C3D78  EC 16 00 32 */	fmuls f0, f22, f0
/* 801C3D7C  FC 00 00 1E */	fctiwz f0, f0
/* 801C3D80  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 801C3D84  80 81 01 14 */	lwz r4, 0x114(r1)
/* 801C3D88  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3D8C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C3D90  7D 89 03 A6 */	mtctr r12
/* 801C3D94  4E 80 04 21 */	bctrl 
lbl_801C3D98:
/* 801C3D98  EC 1C F0 28 */	fsubs f0, f28, f30
/* 801C3D9C  EF 93 00 2A */	fadds f28, f19, f0
/* 801C3DA0  88 1D 00 84 */	lbz r0, 0x84(r29)
/* 801C3DA4  54 03 10 3A */	slwi r3, r0, 2
/* 801C3DA8  38 03 00 04 */	addi r0, r3, 4
/* 801C3DAC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801C3DB0  FC 20 E0 90 */	fmr f1, f28
/* 801C3DB4  EC 1B E8 28 */	fsubs f0, f27, f29
/* 801C3DB8  EF 74 00 2A */	fadds f27, f20, f0
/* 801C3DBC  FC 40 D8 90 */	fmr f2, f27
/* 801C3DC0  FC 60 D0 90 */	fmr f3, f26
/* 801C3DC4  FC 80 C8 90 */	fmr f4, f25
/* 801C3DC8  38 80 00 00 */	li r4, 0
/* 801C3DCC  38 A0 00 00 */	li r5, 0
/* 801C3DD0  38 C0 00 00 */	li r6, 0
/* 801C3DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3DD8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801C3DDC  7D 89 03 A6 */	mtctr r12
/* 801C3DE0  4E 80 04 21 */	bctrl 
/* 801C3DE4  88 1D 00 84 */	lbz r0, 0x84(r29)
/* 801C3DE8  28 00 00 05 */	cmplwi r0, 5
/* 801C3DEC  40 82 00 48 */	bne lbl_801C3E34
/* 801C3DF0  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 801C3DF4  EC 3C F0 2A */	fadds f1, f28, f30
/* 801C3DF8  C0 62 A6 E8 */	lfs f3, lit_4012(r2)
/* 801C3DFC  EC 18 00 F2 */	fmuls f0, f24, f3
/* 801C3E00  EC 21 00 28 */	fsubs f1, f1, f0
/* 801C3E04  EC 5D D8 2A */	fadds f2, f29, f27
/* 801C3E08  EC 17 00 F2 */	fmuls f0, f23, f3
/* 801C3E0C  EC 42 00 28 */	fsubs f2, f2, f0
/* 801C3E10  FC 60 C0 90 */	fmr f3, f24
/* 801C3E14  FC 80 B8 90 */	fmr f4, f23
/* 801C3E18  38 80 00 00 */	li r4, 0
/* 801C3E1C  38 A0 00 00 */	li r5, 0
/* 801C3E20  38 C0 00 00 */	li r6, 0
/* 801C3E24  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3E28  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801C3E2C  7D 89 03 A6 */	mtctr r12
/* 801C3E30  4E 80 04 21 */	bctrl 
lbl_801C3E34:
/* 801C3E34  3B 9C 00 01 */	addi r28, r28, 1
/* 801C3E38  2C 1C 00 80 */	cmpwi r28, 0x80
/* 801C3E3C  3B 5A 00 02 */	addi r26, r26, 2
/* 801C3E40  41 80 FC 10 */	blt lbl_801C3A50
/* 801C3E44  E3 E1 01 F8 */	psq_l f31, 504(r1), 0, 0 /* qr0 */
/* 801C3E48  CB E1 01 F0 */	lfd f31, 0x1f0(r1)
/* 801C3E4C  E3 C1 01 E8 */	psq_l f30, 488(r1), 0, 0 /* qr0 */
/* 801C3E50  CB C1 01 E0 */	lfd f30, 0x1e0(r1)
/* 801C3E54  E3 A1 01 D8 */	psq_l f29, 472(r1), 0, 0 /* qr0 */
/* 801C3E58  CB A1 01 D0 */	lfd f29, 0x1d0(r1)
/* 801C3E5C  E3 81 01 C8 */	psq_l f28, 456(r1), 0, 0 /* qr0 */
/* 801C3E60  CB 81 01 C0 */	lfd f28, 0x1c0(r1)
/* 801C3E64  E3 61 01 B8 */	psq_l f27, 440(r1), 0, 0 /* qr0 */
/* 801C3E68  CB 61 01 B0 */	lfd f27, 0x1b0(r1)
/* 801C3E6C  E3 41 01 A8 */	psq_l f26, 424(r1), 0, 0 /* qr0 */
/* 801C3E70  CB 41 01 A0 */	lfd f26, 0x1a0(r1)
/* 801C3E74  E3 21 01 98 */	psq_l f25, 408(r1), 0, 0 /* qr0 */
/* 801C3E78  CB 21 01 90 */	lfd f25, 0x190(r1)
/* 801C3E7C  E3 01 01 88 */	psq_l f24, 392(r1), 0, 0 /* qr0 */
/* 801C3E80  CB 01 01 80 */	lfd f24, 0x180(r1)
/* 801C3E84  E2 E1 01 78 */	psq_l f23, 376(r1), 0, 0 /* qr0 */
/* 801C3E88  CA E1 01 70 */	lfd f23, 0x170(r1)
/* 801C3E8C  E2 C1 01 68 */	psq_l f22, 360(r1), 0, 0 /* qr0 */
/* 801C3E90  CA C1 01 60 */	lfd f22, 0x160(r1)
/* 801C3E94  E2 A1 01 58 */	psq_l f21, 344(r1), 0, 0 /* qr0 */
/* 801C3E98  CA A1 01 50 */	lfd f21, 0x150(r1)
/* 801C3E9C  E2 81 01 48 */	psq_l f20, 328(r1), 0, 0 /* qr0 */
/* 801C3EA0  CA 81 01 40 */	lfd f20, 0x140(r1)
/* 801C3EA4  E2 61 01 38 */	psq_l f19, 312(r1), 0, 0 /* qr0 */
/* 801C3EA8  CA 61 01 30 */	lfd f19, 0x130(r1)
/* 801C3EAC  39 61 01 30 */	addi r11, r1, 0x130
/* 801C3EB0  48 19 E3 6D */	bl _restgpr_26
/* 801C3EB4  80 01 02 04 */	lwz r0, 0x204(r1)
/* 801C3EB8  7C 08 03 A6 */	mtlr r0
/* 801C3EBC  38 21 02 00 */	addi r1, r1, 0x200
/* 801C3EC0  4E 80 00 20 */	blr 
