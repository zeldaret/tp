lbl_8012589C:
/* 8012589C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801258A0  7C 08 02 A6 */	mflr r0
/* 801258A4  90 01 01 04 */	stw r0, 0x104(r1)
/* 801258A8  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 801258AC  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 801258B0  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 801258B4  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 801258B8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 801258BC  48 23 C9 05 */	bl _savegpr_22
/* 801258C0  7C 7C 1B 78 */	mr r28, r3
/* 801258C4  7C 9D 23 78 */	mr r29, r4
/* 801258C8  7C BE 2B 78 */	mr r30, r5
/* 801258CC  7C DF 33 78 */	mr r31, r6
/* 801258D0  38 C0 00 31 */	li r6, 0x31
/* 801258D4  38 60 02 4C */	li r3, 0x24c
/* 801258D8  38 00 00 32 */	li r0, 0x32
/* 801258DC  7C 09 03 A6 */	mtctr r0
lbl_801258E0:
/* 801258E0  7C 9C 1A 14 */	add r4, r28, r3
/* 801258E4  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 801258E8  38 06 00 0A */	addi r0, r6, 0xa
/* 801258EC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801258F0  7C BC 02 14 */	add r5, r28, r0
/* 801258F4  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 801258F8  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 801258FC  D0 05 00 3C */	stfs f0, 0x3c(r5)
/* 80125900  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80125904  D0 05 00 40 */	stfs f0, 0x40(r5)
/* 80125908  C0 04 03 08 */	lfs f0, 0x308(r4)
/* 8012590C  D0 05 03 08 */	stfs f0, 0x308(r5)
/* 80125910  C0 04 03 0C */	lfs f0, 0x30c(r4)
/* 80125914  D0 05 03 0C */	stfs f0, 0x30c(r5)
/* 80125918  C0 04 03 10 */	lfs f0, 0x310(r4)
/* 8012591C  D0 05 03 10 */	stfs f0, 0x310(r5)
/* 80125920  38 C6 FF FF */	addi r6, r6, -1
/* 80125924  38 63 FF F4 */	addi r3, r3, -12
/* 80125928  42 00 FF B8 */	bdnz lbl_801258E0
/* 8012592C  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 80125930  38 61 00 74 */	addi r3, r1, 0x74
/* 80125934  38 9C 00 2C */	addi r4, r28, 0x2c
/* 80125938  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 8012593C  48 14 12 49 */	bl __ml__4cXyzCFf
/* 80125940  38 61 00 68 */	addi r3, r1, 0x68
/* 80125944  3B 5C 03 80 */	addi r26, r28, 0x380
/* 80125948  7F 44 D3 78 */	mr r4, r26
/* 8012594C  38 A1 00 74 */	addi r5, r1, 0x74
/* 80125950  48 14 11 95 */	bl __pl__4cXyzCFRC3Vec
/* 80125954  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80125958  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8012595C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80125960  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80125964  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80125968  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8012596C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80125970  7F E4 FB 78 */	mr r4, r31
/* 80125974  C0 22 94 0C */	lfs f1, lit_14614(r2)
/* 80125978  48 14 12 0D */	bl __ml__4cXyzCFf
/* 8012597C  38 61 00 50 */	addi r3, r1, 0x50
/* 80125980  7F C4 F3 78 */	mr r4, r30
/* 80125984  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80125988  48 14 11 5D */	bl __pl__4cXyzCFRC3Vec
/* 8012598C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80125990  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80125994  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80125998  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8012599C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801259A0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801259A4  38 61 00 44 */	addi r3, r1, 0x44
/* 801259A8  38 9C 00 2C */	addi r4, r28, 0x2c
/* 801259AC  C0 22 93 B4 */	lfs f1, lit_10040(r2)
/* 801259B0  48 14 11 D5 */	bl __ml__4cXyzCFf
/* 801259B4  38 61 00 38 */	addi r3, r1, 0x38
/* 801259B8  3B 3C 00 B0 */	addi r25, r28, 0xb0
/* 801259BC  7F 24 CB 78 */	mr r4, r25
/* 801259C0  38 A1 00 44 */	addi r5, r1, 0x44
/* 801259C4  48 14 11 21 */	bl __pl__4cXyzCFRC3Vec
/* 801259C8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801259CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801259D0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801259D4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801259D8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801259DC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801259E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801259E4  7F E4 FB 78 */	mr r4, r31
/* 801259E8  C0 22 97 18 */	lfs f1, lit_42493(r2)
/* 801259EC  48 14 11 99 */	bl __ml__4cXyzCFf
/* 801259F0  38 61 00 20 */	addi r3, r1, 0x20
/* 801259F4  7F A4 EB 78 */	mr r4, r29
/* 801259F8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801259FC  48 14 10 E9 */	bl __pl__4cXyzCFRC3Vec
/* 80125A00  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80125A04  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80125A08  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80125A0C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80125A10  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80125A14  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80125A18  3A C0 00 00 */	li r22, 0
/* 80125A1C  3B 60 00 00 */	li r27, 0
/* 80125A20  C3 E2 93 A0 */	lfs f31, lit_9054(r2)
lbl_80125A24:
/* 80125A24  7F C3 F3 78 */	mr r3, r30
/* 80125A28  7F 44 D3 78 */	mr r4, r26
/* 80125A2C  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80125A30  38 C1 00 98 */	addi r6, r1, 0x98
/* 80125A34  FC 20 F0 90 */	fmr f1, f30
/* 80125A38  7F 1C DA 14 */	add r24, r28, r27
/* 80125A3C  3A F8 03 08 */	addi r23, r24, 0x308
/* 80125A40  7E E7 BB 78 */	mr r7, r23
/* 80125A44  4B FF FD 35 */	bl setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz
/* 80125A48  7F A3 EB 78 */	mr r3, r29
/* 80125A4C  7F 24 CB 78 */	mr r4, r25
/* 80125A50  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80125A54  38 C1 00 80 */	addi r6, r1, 0x80
/* 80125A58  FC 20 F0 90 */	fmr f1, f30
/* 80125A5C  3B 18 00 38 */	addi r24, r24, 0x38
/* 80125A60  7F 07 C3 78 */	mr r7, r24
/* 80125A64  4B FF FD 15 */	bl setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz
/* 80125A68  38 61 00 14 */	addi r3, r1, 0x14
/* 80125A6C  7F 04 C3 78 */	mr r4, r24
/* 80125A70  7E E5 BB 78 */	mr r5, r23
/* 80125A74  48 14 10 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80125A78  38 61 00 08 */	addi r3, r1, 8
/* 80125A7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80125A80  C0 3C 00 24 */	lfs f1, 0x24(r28)
/* 80125A84  48 14 11 01 */	bl __ml__4cXyzCFf
/* 80125A88  7F 03 C3 78 */	mr r3, r24
/* 80125A8C  38 81 00 08 */	addi r4, r1, 8
/* 80125A90  7F 05 C3 78 */	mr r5, r24
/* 80125A94  48 22 15 FD */	bl PSVECAdd
/* 80125A98  EF DE F8 2A */	fadds f30, f30, f31
/* 80125A9C  3A D6 00 01 */	addi r22, r22, 1
/* 80125AA0  2C 16 00 0A */	cmpwi r22, 0xa
/* 80125AA4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80125AA8  41 80 FF 7C */	blt lbl_80125A24
/* 80125AAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80125AB0  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 80125AB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80125AB8  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 80125ABC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80125AC0  D0 1C 00 34 */	stfs f0, 0x34(r28)
/* 80125AC4  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 80125AC8  38 03 00 0A */	addi r0, r3, 0xa
/* 80125ACC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80125AD0  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80125AD4  2C 00 00 3B */	cmpwi r0, 0x3b
/* 80125AD8  41 80 00 0C */	blt lbl_80125AE4
/* 80125ADC  38 00 00 3A */	li r0, 0x3a
/* 80125AE0  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80125AE4:
/* 80125AE4  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80125AE8  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80125AEC  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80125AF0  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80125AF4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80125AF8  48 23 C7 15 */	bl _restgpr_22
/* 80125AFC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80125B00  7C 08 03 A6 */	mtlr r0
/* 80125B04  38 21 01 00 */	addi r1, r1, 0x100
/* 80125B08  4E 80 00 20 */	blr 
