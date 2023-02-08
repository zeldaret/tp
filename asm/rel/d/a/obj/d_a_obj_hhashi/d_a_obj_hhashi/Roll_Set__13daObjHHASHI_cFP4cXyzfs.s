lbl_80580A48:
/* 80580A48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80580A4C  7C 08 02 A6 */	mflr r0
/* 80580A50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80580A54  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80580A58  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80580A5C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80580A60  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80580A64  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80580A68  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80580A6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80580A70  4B DE 17 61 */	bl _savegpr_26
/* 80580A74  7C 7B 1B 78 */	mr r27, r3
/* 80580A78  7C 9E 23 78 */	mr r30, r4
/* 80580A7C  FF A0 08 90 */	fmr f29, f1
/* 80580A80  7C BA 2B 78 */	mr r26, r5
/* 80580A84  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x805814AC@ha */
/* 80580A88  3B E3 14 AC */	addi r31, r3, ccCylSrc@l /* 0x805814AC@l */
/* 80580A8C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80580A90  4B CE 6E FD */	bl cM_rndFX__Ff
/* 80580A94  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80580A98  EC 00 08 2A */	fadds f0, f0, f1
/* 80580A9C  EF DD 00 32 */	fmuls f30, f29, f0
/* 80580AA0  7F 5C 07 34 */	extsh r28, r26
/* 80580AA4  1F BC 00 0C */	mulli r29, r28, 0xc
/* 80580AA8  7F 5B EA 14 */	add r26, r27, r29
/* 80580AAC  38 7A 05 B0 */	addi r3, r26, 0x5b0
/* 80580AB0  7F C4 F3 78 */	mr r4, r30
/* 80580AB4  4B CF 01 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80580AB8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80580ABC  EF E0 07 72 */	fmuls f31, f0, f29
/* 80580AC0  54 7E 04 38 */	rlwinm r30, r3, 0, 0x10, 0x1c
/* 80580AC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80580AC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80580ACC  7C 03 F4 2E */	lfsx f0, r3, r30
/* 80580AD0  EF BF 00 32 */	fmuls f29, f31, f0
/* 80580AD4  38 7A 0A 60 */	addi r3, r26, 0xa60
/* 80580AD8  4B DC 66 61 */	bl PSVECSquareMag
/* 80580ADC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80580AE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80580AE4  40 81 00 58 */	ble lbl_80580B3C
/* 80580AE8  FC 00 08 34 */	frsqrte f0, f1
/* 80580AEC  C8 9F 00 C0 */	lfd f4, 0xc0(r31)
/* 80580AF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80580AF4  C8 7F 00 C8 */	lfd f3, 0xc8(r31)
/* 80580AF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80580AFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80580B00  FC 03 00 28 */	fsub f0, f3, f0
/* 80580B04  FC 02 00 32 */	fmul f0, f2, f0
/* 80580B08  FC 44 00 32 */	fmul f2, f4, f0
/* 80580B0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80580B10  FC 01 00 32 */	fmul f0, f1, f0
/* 80580B14  FC 03 00 28 */	fsub f0, f3, f0
/* 80580B18  FC 02 00 32 */	fmul f0, f2, f0
/* 80580B1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80580B20  FC 00 00 32 */	fmul f0, f0, f0
/* 80580B24  FC 01 00 32 */	fmul f0, f1, f0
/* 80580B28  FC 03 00 28 */	fsub f0, f3, f0
/* 80580B2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80580B30  FC 21 00 32 */	fmul f1, f1, f0
/* 80580B34  FC 20 08 18 */	frsp f1, f1
/* 80580B38  48 00 00 88 */	b lbl_80580BC0
lbl_80580B3C:
/* 80580B3C  C8 1F 00 D0 */	lfd f0, 0xd0(r31)
/* 80580B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80580B44  40 80 00 10 */	bge lbl_80580B54
/* 80580B48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80580B4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80580B50  48 00 00 70 */	b lbl_80580BC0
lbl_80580B54:
/* 80580B54  D0 21 00 08 */	stfs f1, 8(r1)
/* 80580B58  80 81 00 08 */	lwz r4, 8(r1)
/* 80580B5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80580B60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80580B64  7C 03 00 00 */	cmpw r3, r0
/* 80580B68  41 82 00 14 */	beq lbl_80580B7C
/* 80580B6C  40 80 00 40 */	bge lbl_80580BAC
/* 80580B70  2C 03 00 00 */	cmpwi r3, 0
/* 80580B74  41 82 00 20 */	beq lbl_80580B94
/* 80580B78  48 00 00 34 */	b lbl_80580BAC
lbl_80580B7C:
/* 80580B7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80580B80  41 82 00 0C */	beq lbl_80580B8C
/* 80580B84  38 00 00 01 */	li r0, 1
/* 80580B88  48 00 00 28 */	b lbl_80580BB0
lbl_80580B8C:
/* 80580B8C  38 00 00 02 */	li r0, 2
/* 80580B90  48 00 00 20 */	b lbl_80580BB0
lbl_80580B94:
/* 80580B94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80580B98  41 82 00 0C */	beq lbl_80580BA4
/* 80580B9C  38 00 00 05 */	li r0, 5
/* 80580BA0  48 00 00 10 */	b lbl_80580BB0
lbl_80580BA4:
/* 80580BA4  38 00 00 03 */	li r0, 3
/* 80580BA8  48 00 00 08 */	b lbl_80580BB0
lbl_80580BAC:
/* 80580BAC  38 00 00 04 */	li r0, 4
lbl_80580BB0:
/* 80580BB0  2C 00 00 01 */	cmpwi r0, 1
/* 80580BB4  40 82 00 0C */	bne lbl_80580BC0
/* 80580BB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80580BBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80580BC0:
/* 80580BC0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80580BC4  EC 20 08 24 */	fdivs f1, f0, f1
/* 80580BC8  C0 1B 05 30 */	lfs f0, 0x530(r27)
/* 80580BCC  EC 5E 00 2A */	fadds f2, f30, f0
/* 80580BD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80580BD4  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80580BD8  7C 60 F2 14 */	add r3, r0, r30
/* 80580BDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80580BE0  EC 7F 00 32 */	fmuls f3, f31, f0
/* 80580BE4  EC 01 07 72 */	fmuls f0, f1, f29
/* 80580BE8  7C 7B EA 14 */	add r3, r27, r29
/* 80580BEC  D0 03 08 08 */	stfs f0, 0x808(r3)
/* 80580BF0  D0 43 08 0C */	stfs f2, 0x80c(r3)
/* 80580BF4  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80580BF8  D0 03 08 10 */	stfs f0, 0x810(r3)
/* 80580BFC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80580C00  4B CE 6D 8D */	bl cM_rndFX__Ff
/* 80580C04  FC 00 08 1E */	fctiwz f0, f1
/* 80580C08  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80580C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580C10  1F 5C 00 06 */	mulli r26, r28, 6
/* 80580C14  7C 7B D2 14 */	add r3, r27, r26
/* 80580C18  B0 03 0D E8 */	sth r0, 0xde8(r3)
/* 80580C1C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80580C20  4B CE 6D 6D */	bl cM_rndFX__Ff
/* 80580C24  FC 00 08 1E */	fctiwz f0, f1
/* 80580C28  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80580C2C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80580C30  7C 9B D2 14 */	add r4, r27, r26
/* 80580C34  B0 04 0D EA */	sth r0, 0xdea(r4)
/* 80580C38  A8 64 0C BC */	lha r3, 0xcbc(r4)
/* 80580C3C  38 03 10 00 */	addi r0, r3, 0x1000
/* 80580C40  B0 04 0C BC */	sth r0, 0xcbc(r4)
/* 80580C44  A8 64 0C BE */	lha r3, 0xcbe(r4)
/* 80580C48  38 03 10 00 */	addi r0, r3, 0x1000
/* 80580C4C  B0 04 0C BE */	sth r0, 0xcbe(r4)
/* 80580C50  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80580C54  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80580C58  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80580C5C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80580C60  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80580C64  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80580C68  39 61 00 40 */	addi r11, r1, 0x40
/* 80580C6C  4B DE 15 B1 */	bl _restgpr_26
/* 80580C70  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80580C74  7C 08 03 A6 */	mtlr r0
/* 80580C78  38 21 00 70 */	addi r1, r1, 0x70
/* 80580C7C  4E 80 00 20 */	blr 
