lbl_80A1E8C4:
/* 80A1E8C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A1E8C8  7C 08 02 A6 */	mflr r0
/* 80A1E8CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A1E8D0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A1E8D4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A1E8D8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80A1E8DC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80A1E8E0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1E8E4  4B 94 38 F1 */	bl _savegpr_27
/* 80A1E8E8  7C 7B 1B 78 */	mr r27, r3
/* 80A1E8EC  3B A0 00 00 */	li r29, 0
/* 80A1E8F0  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1E8F4  C3 C3 10 80 */	lfs f30, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1E8F8  80 7B 0C 98 */	lwz r3, 0xc98(r27)
/* 80A1E8FC  A3 C3 00 00 */	lhz r30, 0(r3)
/* 80A1E900  3B 80 00 00 */	li r28, 0
/* 80A1E904  3B E0 00 00 */	li r31, 0
/* 80A1E908  FF E0 F0 90 */	fmr f31, f30
/* 80A1E90C  48 00 00 AC */	b lbl_80A1E9B8
lbl_80A1E910:
/* 80A1E910  80 7B 0C 98 */	lwz r3, 0xc98(r27)
/* 80A1E914  80 63 00 08 */	lwz r3, 8(r3)
/* 80A1E918  38 1F 00 04 */	addi r0, r31, 4
/* 80A1E91C  7C 83 02 14 */	add r4, r3, r0
/* 80A1E920  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1E924  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1E928  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A1E92C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1E930  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1E934  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1E938  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A1E93C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1E940  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A1E944  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A1E948  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A1E94C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A1E950  38 61 00 14 */	addi r3, r1, 0x14
/* 80A1E954  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1E958  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A1E95C  4B 84 81 D9 */	bl __mi__4cXyzCFRC3Vec
/* 80A1E960  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A1E964  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A1E968  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A1E96C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1E970  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A1E974  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1E978  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A1E97C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A1E980  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1E984  38 61 00 08 */	addi r3, r1, 8
/* 80A1E988  4B 92 87 B1 */	bl PSVECSquareMag
/* 80A1E98C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A1E990  40 82 00 10 */	bne lbl_80A1E9A0
/* 80A1E994  FF C0 08 90 */	fmr f30, f1
/* 80A1E998  3B A0 00 00 */	li r29, 0
/* 80A1E99C  48 00 00 14 */	b lbl_80A1E9B0
lbl_80A1E9A0:
/* 80A1E9A0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A1E9A4  40 80 00 0C */	bge lbl_80A1E9B0
/* 80A1E9A8  FF C0 08 90 */	fmr f30, f1
/* 80A1E9AC  7F 9D E3 78 */	mr r29, r28
lbl_80A1E9B0:
/* 80A1E9B0  3B 9C 00 01 */	addi r28, r28, 1
/* 80A1E9B4  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80A1E9B8:
/* 80A1E9B8  7C 1C F0 00 */	cmpw r28, r30
/* 80A1E9BC  41 80 FF 54 */	blt lbl_80A1E910
/* 80A1E9C0  38 7D 00 01 */	addi r3, r29, 1
/* 80A1E9C4  7C 1D F0 00 */	cmpw r29, r30
/* 80A1E9C8  40 82 00 08 */	bne lbl_80A1E9D0
/* 80A1E9CC  7F A3 EB 78 */	mr r3, r29
lbl_80A1E9D0:
/* 80A1E9D0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A1E9D4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A1E9D8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80A1E9DC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80A1E9E0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1E9E4  4B 94 38 3D */	bl _restgpr_27
/* 80A1E9E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A1E9EC  7C 08 03 A6 */	mtlr r0
/* 80A1E9F0  38 21 00 80 */	addi r1, r1, 0x80
/* 80A1E9F4  4E 80 00 20 */	blr 
