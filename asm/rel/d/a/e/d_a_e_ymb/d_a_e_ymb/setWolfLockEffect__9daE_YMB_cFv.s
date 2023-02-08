lbl_8081C908:
/* 8081C908  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8081C90C  7C 08 02 A6 */	mflr r0
/* 8081C910  90 01 00 54 */	stw r0, 0x54(r1)
/* 8081C914  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8081C918  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8081C91C  39 61 00 40 */	addi r11, r1, 0x40
/* 8081C920  4B B4 58 AD */	bl _savegpr_25
/* 8081C924  7C 7A 1B 78 */	mr r26, r3
/* 8081C928  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081C92C  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 8081C930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081C934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081C938  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8081C93C  7F A3 EB 78 */	mr r3, r29
/* 8081C940  7F 44 D3 78 */	mr r4, r26
/* 8081C944  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8081C948  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8081C94C  7D 89 03 A6 */	mtctr r12
/* 8081C950  4E 80 04 21 */	bctrl 
/* 8081C954  2C 03 00 00 */	cmpwi r3, 0
/* 8081C958  40 82 00 18 */	bne lbl_8081C970
/* 8081C95C  38 00 00 00 */	li r0, 0
/* 8081C960  90 1A 06 F0 */	stw r0, 0x6f0(r26)
/* 8081C964  90 1A 07 00 */	stw r0, 0x700(r26)
/* 8081C968  98 1A 07 18 */	stb r0, 0x718(r26)
/* 8081C96C  48 00 02 88 */	b lbl_8081CBF4
lbl_8081C970:
/* 8081C970  3B 80 00 00 */	li r28, 0
/* 8081C974  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 8081C978  80 1A 07 00 */	lwz r0, 0x700(r26)
/* 8081C97C  2C 00 00 00 */	cmpwi r0, 0
/* 8081C980  40 82 02 0C */	bne lbl_8081CB8C
/* 8081C984  80 1A 06 F0 */	lwz r0, 0x6f0(r26)
/* 8081C988  2C 00 00 06 */	cmpwi r0, 6
/* 8081C98C  40 80 02 00 */	bge lbl_8081CB8C
/* 8081C990  3B 60 00 00 */	li r27, 0
/* 8081C994  3B 20 00 00 */	li r25, 0
/* 8081C998  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081C99C  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8081C9A0:
/* 8081C9A0  88 7A 07 18 */	lbz r3, 0x718(r26)
/* 8081C9A4  38 00 00 01 */	li r0, 1
/* 8081C9A8  7C 00 D8 30 */	slw r0, r0, r27
/* 8081C9AC  7C 60 00 39 */	and. r0, r3, r0
/* 8081C9B0  40 82 01 4C */	bne lbl_8081CAFC
/* 8081C9B4  80 7A 05 BC */	lwz r3, 0x5bc(r26)
/* 8081C9B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8081C9BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081C9C0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8081C9C4  3C 60 80 82 */	lis r3, data_80821C30@ha /* 0x80821C30@ha */
/* 8081C9C8  38 63 1C 30 */	addi r3, r3, data_80821C30@l /* 0x80821C30@l */
/* 8081C9CC  7C 03 C8 2E */	lwzx r0, r3, r25
/* 8081C9D0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8081C9D4  7C 64 02 14 */	add r3, r4, r0
/* 8081C9D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081C9DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081C9E0  4B B2 9A D1 */	bl PSMTXCopy
/* 8081C9E4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8081C9E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081C9EC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8081C9F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081C9F4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8081C9F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081C9FC  38 61 00 10 */	addi r3, r1, 0x10
/* 8081CA00  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081CA04  4B B2 A9 99 */	bl PSVECSquareDistance
/* 8081CA08  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081CA0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081CA10  40 81 00 58 */	ble lbl_8081CA68
/* 8081CA14  FC 00 08 34 */	frsqrte f0, f1
/* 8081CA18  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081CA1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081CA20  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081CA24  FC 00 00 32 */	fmul f0, f0, f0
/* 8081CA28  FC 01 00 32 */	fmul f0, f1, f0
/* 8081CA2C  FC 03 00 28 */	fsub f0, f3, f0
/* 8081CA30  FC 02 00 32 */	fmul f0, f2, f0
/* 8081CA34  FC 44 00 32 */	fmul f2, f4, f0
/* 8081CA38  FC 00 00 32 */	fmul f0, f0, f0
/* 8081CA3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8081CA40  FC 03 00 28 */	fsub f0, f3, f0
/* 8081CA44  FC 02 00 32 */	fmul f0, f2, f0
/* 8081CA48  FC 44 00 32 */	fmul f2, f4, f0
/* 8081CA4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081CA50  FC 01 00 32 */	fmul f0, f1, f0
/* 8081CA54  FC 03 00 28 */	fsub f0, f3, f0
/* 8081CA58  FC 02 00 32 */	fmul f0, f2, f0
/* 8081CA5C  FC 21 00 32 */	fmul f1, f1, f0
/* 8081CA60  FC 20 08 18 */	frsp f1, f1
/* 8081CA64  48 00 00 88 */	b lbl_8081CAEC
lbl_8081CA68:
/* 8081CA68  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081CA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081CA70  40 80 00 10 */	bge lbl_8081CA80
/* 8081CA74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081CA78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081CA7C  48 00 00 70 */	b lbl_8081CAEC
lbl_8081CA80:
/* 8081CA80  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081CA84  80 81 00 08 */	lwz r4, 8(r1)
/* 8081CA88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081CA8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081CA90  7C 03 00 00 */	cmpw r3, r0
/* 8081CA94  41 82 00 14 */	beq lbl_8081CAA8
/* 8081CA98  40 80 00 40 */	bge lbl_8081CAD8
/* 8081CA9C  2C 03 00 00 */	cmpwi r3, 0
/* 8081CAA0  41 82 00 20 */	beq lbl_8081CAC0
/* 8081CAA4  48 00 00 34 */	b lbl_8081CAD8
lbl_8081CAA8:
/* 8081CAA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081CAAC  41 82 00 0C */	beq lbl_8081CAB8
/* 8081CAB0  38 00 00 01 */	li r0, 1
/* 8081CAB4  48 00 00 28 */	b lbl_8081CADC
lbl_8081CAB8:
/* 8081CAB8  38 00 00 02 */	li r0, 2
/* 8081CABC  48 00 00 20 */	b lbl_8081CADC
lbl_8081CAC0:
/* 8081CAC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081CAC4  41 82 00 0C */	beq lbl_8081CAD0
/* 8081CAC8  38 00 00 05 */	li r0, 5
/* 8081CACC  48 00 00 10 */	b lbl_8081CADC
lbl_8081CAD0:
/* 8081CAD0  38 00 00 03 */	li r0, 3
/* 8081CAD4  48 00 00 08 */	b lbl_8081CADC
lbl_8081CAD8:
/* 8081CAD8  38 00 00 04 */	li r0, 4
lbl_8081CADC:
/* 8081CADC  2C 00 00 01 */	cmpwi r0, 1
/* 8081CAE0  40 82 00 0C */	bne lbl_8081CAEC
/* 8081CAE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081CAE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081CAEC:
/* 8081CAEC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8081CAF0  40 80 00 0C */	bge lbl_8081CAFC
/* 8081CAF4  7F 7C DB 78 */	mr r28, r27
/* 8081CAF8  FF E0 08 90 */	fmr f31, f1
lbl_8081CAFC:
/* 8081CAFC  3B 7B 00 01 */	addi r27, r27, 1
/* 8081CB00  2C 1B 00 06 */	cmpwi r27, 6
/* 8081CB04  3B 39 00 04 */	addi r25, r25, 4
/* 8081CB08  41 80 FE 98 */	blt lbl_8081C9A0
/* 8081CB0C  88 7A 07 18 */	lbz r3, 0x718(r26)
/* 8081CB10  38 00 00 01 */	li r0, 1
/* 8081CB14  7C 00 E0 30 */	slw r0, r0, r28
/* 8081CB18  7C 60 03 78 */	or r0, r3, r0
/* 8081CB1C  98 1A 07 18 */	stb r0, 0x718(r26)
/* 8081CB20  80 7A 05 BC */	lwz r3, 0x5bc(r26)
/* 8081CB24  80 63 00 04 */	lwz r3, 4(r3)
/* 8081CB28  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081CB2C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8081CB30  57 80 10 3A */	slwi r0, r28, 2
/* 8081CB34  3C 60 80 82 */	lis r3, data_80821C30@ha /* 0x80821C30@ha */
/* 8081CB38  38 63 1C 30 */	addi r3, r3, data_80821C30@l /* 0x80821C30@l */
/* 8081CB3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8081CB40  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8081CB44  7C 64 02 14 */	add r3, r4, r0
/* 8081CB48  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081CB4C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081CB50  4B B2 99 61 */	bl PSMTXCopy
/* 8081CB54  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8081CB58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081CB5C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8081CB60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081CB64  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8081CB68  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081CB6C  7F 43 D3 78 */	mr r3, r26
/* 8081CB70  38 81 00 10 */	addi r4, r1, 0x10
/* 8081CB74  4B FF F9 79 */	bl setMidnaBindInit__9daE_YMB_cFP4cXyz
/* 8081CB78  38 00 00 03 */	li r0, 3
/* 8081CB7C  90 1A 07 00 */	stw r0, 0x700(r26)
/* 8081CB80  80 7A 06 F0 */	lwz r3, 0x6f0(r26)
/* 8081CB84  38 03 00 01 */	addi r0, r3, 1
/* 8081CB88  90 1A 06 F0 */	stw r0, 0x6f0(r26)
lbl_8081CB8C:
/* 8081CB8C  3B 60 00 00 */	li r27, 0
/* 8081CB90  3B 20 00 01 */	li r25, 1
lbl_8081CB94:
/* 8081CB94  88 7A 07 18 */	lbz r3, 0x718(r26)
/* 8081CB98  7F 20 D8 30 */	slw r0, r25, r27
/* 8081CB9C  7C 60 00 39 */	and. r0, r3, r0
/* 8081CBA0  41 82 00 10 */	beq lbl_8081CBB0
/* 8081CBA4  7F 43 D3 78 */	mr r3, r26
/* 8081CBA8  7F 64 DB 78 */	mr r4, r27
/* 8081CBAC  4B FF FC 25 */	bl setMidnaBindLevel__9daE_YMB_cFi
lbl_8081CBB0:
/* 8081CBB0  3B 7B 00 01 */	addi r27, r27, 1
/* 8081CBB4  2C 1B 00 06 */	cmpwi r27, 6
/* 8081CBB8  41 80 FF DC */	blt lbl_8081CB94
/* 8081CBBC  88 1A 07 18 */	lbz r0, 0x718(r26)
/* 8081CBC0  28 00 00 00 */	cmplwi r0, 0
/* 8081CBC4  41 82 00 30 */	beq lbl_8081CBF4
/* 8081CBC8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8081CBCC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8081CBD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081CBD4  38 7A 05 C4 */	addi r3, r26, 0x5c4
/* 8081CBD8  38 81 00 0C */	addi r4, r1, 0xc
/* 8081CBDC  38 A0 00 00 */	li r5, 0
/* 8081CBE0  38 C0 FF FF */	li r6, -1
/* 8081CBE4  81 9A 05 C4 */	lwz r12, 0x5c4(r26)
/* 8081CBE8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081CBEC  7D 89 03 A6 */	mtctr r12
/* 8081CBF0  4E 80 04 21 */	bctrl 
lbl_8081CBF4:
/* 8081CBF4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8081CBF8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8081CBFC  39 61 00 40 */	addi r11, r1, 0x40
/* 8081CC00  4B B4 56 19 */	bl _restgpr_25
/* 8081CC04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8081CC08  7C 08 03 A6 */	mtlr r0
/* 8081CC0C  38 21 00 50 */	addi r1, r1, 0x50
/* 8081CC10  4E 80 00 20 */	blr 
