lbl_807A0B44:
/* 807A0B44  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807A0B48  7C 08 02 A6 */	mflr r0
/* 807A0B4C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807A0B50  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 807A0B54  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 807A0B58  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 807A0B5C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 807A0B60  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 807A0B64  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 807A0B68  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 807A0B6C  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 807A0B70  39 61 00 80 */	addi r11, r1, 0x80
/* 807A0B74  4B BC 16 55 */	bl _savegpr_24
/* 807A0B78  7C 7B 1B 78 */	mr r27, r3
/* 807A0B7C  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 807A0B80  3B C3 68 24 */	addi r30, r3, lit_3903@l /* 0x807A6824@l */
/* 807A0B84  38 61 00 2C */	addi r3, r1, 0x2c
/* 807A0B88  38 9B 07 44 */	addi r4, r27, 0x744
/* 807A0B8C  38 BB 07 50 */	addi r5, r27, 0x750
/* 807A0B90  4B AC 5F A5 */	bl __mi__4cXyzCFRC3Vec
/* 807A0B94  38 61 00 20 */	addi r3, r1, 0x20
/* 807A0B98  38 81 00 2C */	addi r4, r1, 0x2c
/* 807A0B9C  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 807A0BA0  4B AC 5F E5 */	bl __ml__4cXyzCFf
/* 807A0BA4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 807A0BA8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 807A0BAC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807A0BB0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807A0BB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807A0BB8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A0BBC  80 7B 07 40 */	lwz r3, 0x740(r27)
/* 807A0BC0  83 A3 00 00 */	lwz r29, 0(r3)
/* 807A0BC4  3B 80 00 00 */	li r28, 0
/* 807A0BC8  3B 40 00 00 */	li r26, 0
/* 807A0BCC  3B 20 00 00 */	li r25, 0
/* 807A0BD0  FF C0 10 18 */	frsp f30, f2
/* 807A0BD4  FF E0 08 18 */	frsp f31, f1
/* 807A0BD8  FF 80 00 18 */	frsp f28, f0
/* 807A0BDC  CB BE 00 D0 */	lfd f29, 0xd0(r30)
/* 807A0BE0  3F E0 43 30 */	lis r31, 0x4330
/* 807A0BE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807A0BE8  3B 03 9A 20 */	addi r24, r3, sincosTable___5JMath@l /* 0x80439A20@l */
lbl_807A0BEC:
/* 807A0BEC  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 807A0BF0  C0 1B 07 24 */	lfs f0, 0x724(r27)
/* 807A0BF4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807A0BF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807A0BFC  D3 81 00 40 */	stfs f28, 0x40(r1)
/* 807A0C00  38 61 00 14 */	addi r3, r1, 0x14
/* 807A0C04  38 81 00 38 */	addi r4, r1, 0x38
/* 807A0C08  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 807A0C0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807A0C10  93 E1 00 50 */	stw r31, 0x50(r1)
/* 807A0C14  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 807A0C18  EC 20 E8 28 */	fsubs f1, f0, f29
/* 807A0C1C  4B AC 5F 69 */	bl __ml__4cXyzCFf
/* 807A0C20  38 61 00 08 */	addi r3, r1, 8
/* 807A0C24  38 9B 07 44 */	addi r4, r27, 0x744
/* 807A0C28  38 A1 00 14 */	addi r5, r1, 0x14
/* 807A0C2C  4B AC 5F 09 */	bl __mi__4cXyzCFRC3Vec
/* 807A0C30  C0 01 00 08 */	lfs f0, 8(r1)
/* 807A0C34  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807A0C38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807A0C3C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 807A0C40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807A0C44  D0 1D 00 08 */	stfs f0, 8(r29)
/* 807A0C48  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 807A0C4C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807A0C50  93 E1 00 58 */	stw r31, 0x58(r1)
/* 807A0C54  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 807A0C58  EC 20 E8 28 */	fsubs f1, f0, f29
/* 807A0C5C  C0 1B 07 5C */	lfs f0, 0x75c(r27)
/* 807A0C60  EC 41 00 32 */	fmuls f2, f1, f0
/* 807A0C64  A8 1B 06 7C */	lha r0, 0x67c(r27)
/* 807A0C68  1C 00 05 DC */	mulli r0, r0, 0x5dc
/* 807A0C6C  7C 00 CA 14 */	add r0, r0, r25
/* 807A0C70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A0C74  7C 18 04 2E */	lfsx f0, r24, r0
/* 807A0C78  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807A0C7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A0C80  EC 01 00 2A */	fadds f0, f1, f0
/* 807A0C84  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807A0C88  A8 1B 06 7C */	lha r0, 0x67c(r27)
/* 807A0C8C  1C 00 07 08 */	mulli r0, r0, 0x708
/* 807A0C90  7C 00 D2 14 */	add r0, r0, r26
/* 807A0C94  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A0C98  7C 78 02 14 */	add r3, r24, r0
/* 807A0C9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 807A0CA0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807A0CA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A0CA8  EC 01 00 2A */	fadds f0, f1, f0
/* 807A0CAC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 807A0CB0  3B 9C 00 01 */	addi r28, r28, 1
/* 807A0CB4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 807A0CB8  3B 5A 13 88 */	addi r26, r26, 0x1388
/* 807A0CBC  3B 39 16 44 */	addi r25, r25, 0x1644
/* 807A0CC0  3B BD 00 0C */	addi r29, r29, 0xc
/* 807A0CC4  41 80 FF 28 */	blt lbl_807A0BEC
/* 807A0CC8  38 7B 07 5C */	addi r3, r27, 0x75c
/* 807A0CCC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A0CD0  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 807A0CD4  4B AC ED AD */	bl cLib_addCalc0__FPfff
/* 807A0CD8  38 7B 07 24 */	addi r3, r27, 0x724
/* 807A0CDC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A0CE0  C0 5E 00 DC */	lfs f2, 0xdc(r30)
/* 807A0CE4  4B AC ED 9D */	bl cLib_addCalc0__FPfff
/* 807A0CE8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 807A0CEC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 807A0CF0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 807A0CF4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 807A0CF8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 807A0CFC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 807A0D00  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 807A0D04  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 807A0D08  39 61 00 80 */	addi r11, r1, 0x80
/* 807A0D0C  4B BC 15 09 */	bl _restgpr_24
/* 807A0D10  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807A0D14  7C 08 03 A6 */	mtlr r0
/* 807A0D18  38 21 00 C0 */	addi r1, r1, 0xc0
/* 807A0D1C  4E 80 00 20 */	blr 
