lbl_80696828:
/* 80696828  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8069682C  7C 08 02 A6 */	mflr r0
/* 80696830  90 01 00 94 */	stw r0, 0x94(r1)
/* 80696834  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80696838  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8069683C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80696840  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80696844  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80696848  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8069684C  39 61 00 60 */	addi r11, r1, 0x60
/* 80696850  4B CC B9 85 */	bl _savegpr_27
/* 80696854  7C 7C 1B 78 */	mr r28, r3
/* 80696858  7C 9D 23 78 */	mr r29, r4
/* 8069685C  3C 60 80 69 */	lis r3, lit_3829@ha /* 0x80697CA0@ha */
/* 80696860  3B E3 7C A0 */	addi r31, r3, lit_3829@l /* 0x80697CA0@l */
/* 80696864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80696868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069686C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80696870  88 04 00 53 */	lbz r0, 0x53(r4)
/* 80696874  28 00 00 00 */	cmplwi r0, 0
/* 80696878  41 82 01 10 */	beq lbl_80696988
/* 8069687C  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 80696880  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80696884  40 82 00 38 */	bne lbl_806968BC
/* 80696888  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8069688C  4B BD 10 C9 */	bl cM_rndF__Ff
/* 80696890  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80696894  EC 00 08 2A */	fadds f0, f0, f1
/* 80696898  FC 00 00 1E */	fctiwz f0, f0
/* 8069689C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806968A0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806968A4  B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 806968A8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806968AC  4B BD 10 E1 */	bl cM_rndFX__Ff
/* 806968B0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806968B4  EC 00 08 2A */	fadds f0, f0, f1
/* 806968B8  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_806968BC:
/* 806968BC  A8 9D 00 48 */	lha r4, 0x48(r29)
/* 806968C0  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 806968C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806968C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806968CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 806968D0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806968D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806968D8  FC 00 00 1E */	fctiwz f0, f0
/* 806968DC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806968E0  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 806968E4  A8 1D 00 4A */	lha r0, 0x4a(r29)
/* 806968E8  7C 04 02 14 */	add r0, r4, r0
/* 806968EC  B0 1D 00 48 */	sth r0, 0x48(r29)
/* 806968F0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806968F4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 806968F8  EC 41 00 28 */	fsubs f2, f1, f0
/* 806968FC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80696900  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80696904  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80696908  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069690C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80696910  3C 60 80 69 */	lis r3, data_80697EAC@ha /* 0x80697EAC@ha */
/* 80696914  88 03 7E AC */	lbz r0, data_80697EAC@l(r3)  /* 0x80697EAC@l */
/* 80696918  7C 00 07 75 */	extsb. r0, r0
/* 8069691C  41 82 00 34 */	beq lbl_80696950
/* 80696920  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80696924  EC 00 00 32 */	fmuls f0, f0, f0
/* 80696928  EC 21 00 2A */	fadds f1, f1, f0
/* 8069692C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80696930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696934  40 81 00 0C */	ble lbl_80696940
/* 80696938  FC 00 08 34 */	frsqrte f0, f1
/* 8069693C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80696940:
/* 80696940  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80696944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696948  40 80 00 08 */	bge lbl_80696950
/* 8069694C  3B 7B 80 00 */	addi r27, r27, -32768
lbl_80696950:
/* 80696950  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80696954  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80696958  4B BD 0D 1D */	bl cM_atan2s__Fff
/* 8069695C  A8 1D 00 42 */	lha r0, 0x42(r29)
/* 80696960  7C 03 02 14 */	add r0, r3, r0
/* 80696964  7C 1B 02 14 */	add r0, r27, r0
/* 80696968  7C 04 07 34 */	extsh r4, r0
/* 8069696C  38 7D 00 3E */	addi r3, r29, 0x3e
/* 80696970  38 A0 00 02 */	li r5, 2
/* 80696974  38 C0 08 00 */	li r6, 0x800
/* 80696978  4B BD 9C 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8069697C  38 00 00 00 */	li r0, 0
/* 80696980  B0 1D 00 3C */	sth r0, 0x3c(r29)
/* 80696984  48 00 00 20 */	b lbl_806969A4
lbl_80696988:
/* 80696988  A8 9D 00 3C */	lha r4, 0x3c(r29)
/* 8069698C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80696990  54 03 08 3C */	slwi r3, r0, 1
/* 80696994  38 03 0E 00 */	addi r0, r3, 0xe00
/* 80696998  7C 00 07 34 */	extsh r0, r0
/* 8069699C  7C 04 02 14 */	add r0, r4, r0
/* 806969A0  B0 1D 00 3C */	sth r0, 0x3c(r29)
lbl_806969A4:
/* 806969A4  A8 1D 00 3E */	lha r0, 0x3e(r29)
/* 806969A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806969AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806969B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806969B4  7C 23 04 2E */	lfsx f1, r3, r0
/* 806969B8  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 806969BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 806969C0  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 806969C4  A8 1D 00 3E */	lha r0, 0x3e(r29)
/* 806969C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806969CC  7C 63 02 14 */	add r3, r3, r0
/* 806969D0  C0 23 00 04 */	lfs f1, 4(r3)
/* 806969D4  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 806969D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806969DC  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 806969E0  7F 83 E3 78 */	mr r3, r28
/* 806969E4  7F A4 EB 78 */	mr r4, r29
/* 806969E8  4B FF ED F5 */	bl bug_action__FP11e_bug_classP5bug_s
/* 806969EC  98 7D 00 53 */	stb r3, 0x53(r29)
/* 806969F0  88 1D 00 55 */	lbz r0, 0x55(r29)
/* 806969F4  28 00 00 01 */	cmplwi r0, 1
/* 806969F8  40 82 00 0C */	bne lbl_80696A04
/* 806969FC  38 00 00 00 */	li r0, 0
/* 80696A00  B0 1D 00 42 */	sth r0, 0x42(r29)
lbl_80696A04:
/* 80696A04  38 61 00 10 */	addi r3, r1, 0x10
/* 80696A08  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80696A0C  38 BD 00 18 */	addi r5, r29, 0x18
/* 80696A10  4B BD 01 25 */	bl __mi__4cXyzCFRC3Vec
/* 80696A14  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80696A18  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80696A1C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80696A20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80696A24  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80696A28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80696A2C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80696A30  EC 00 00 32 */	fmuls f0, f0, f0
/* 80696A34  EF E1 00 2A */	fadds f31, f1, f0
/* 80696A38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80696A3C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80696A40  40 81 00 0C */	ble lbl_80696A4C
/* 80696A44  FC 00 F8 34 */	frsqrte f0, f31
/* 80696A48  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80696A4C:
/* 80696A4C  C3 C1 00 20 */	lfs f30, 0x20(r1)
/* 80696A50  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 80696A54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80696A58  41 82 02 BC */	beq lbl_80696D14
/* 80696A5C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80696A60  4B CB 06 D9 */	bl PSVECSquareMag
/* 80696A64  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80696A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696A6C  40 81 00 58 */	ble lbl_80696AC4
/* 80696A70  FC 00 08 34 */	frsqrte f0, f1
/* 80696A74  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80696A78  FC 44 00 32 */	fmul f2, f4, f0
/* 80696A7C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80696A80  FC 00 00 32 */	fmul f0, f0, f0
/* 80696A84  FC 01 00 32 */	fmul f0, f1, f0
/* 80696A88  FC 03 00 28 */	fsub f0, f3, f0
/* 80696A8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80696A90  FC 44 00 32 */	fmul f2, f4, f0
/* 80696A94  FC 00 00 32 */	fmul f0, f0, f0
/* 80696A98  FC 01 00 32 */	fmul f0, f1, f0
/* 80696A9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80696AA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80696AA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80696AA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80696AAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80696AB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80696AB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80696AB8  FF A1 00 32 */	fmul f29, f1, f0
/* 80696ABC  FF A0 E8 18 */	frsp f29, f29
/* 80696AC0  48 00 00 90 */	b lbl_80696B50
lbl_80696AC4:
/* 80696AC4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80696AC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696ACC  40 80 00 10 */	bge lbl_80696ADC
/* 80696AD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80696AD4  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80696AD8  48 00 00 78 */	b lbl_80696B50
lbl_80696ADC:
/* 80696ADC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80696AE0  80 81 00 08 */	lwz r4, 8(r1)
/* 80696AE4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80696AE8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80696AEC  7C 03 00 00 */	cmpw r3, r0
/* 80696AF0  41 82 00 14 */	beq lbl_80696B04
/* 80696AF4  40 80 00 40 */	bge lbl_80696B34
/* 80696AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80696AFC  41 82 00 20 */	beq lbl_80696B1C
/* 80696B00  48 00 00 34 */	b lbl_80696B34
lbl_80696B04:
/* 80696B04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80696B08  41 82 00 0C */	beq lbl_80696B14
/* 80696B0C  38 00 00 01 */	li r0, 1
/* 80696B10  48 00 00 28 */	b lbl_80696B38
lbl_80696B14:
/* 80696B14  38 00 00 02 */	li r0, 2
/* 80696B18  48 00 00 20 */	b lbl_80696B38
lbl_80696B1C:
/* 80696B1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80696B20  41 82 00 0C */	beq lbl_80696B2C
/* 80696B24  38 00 00 05 */	li r0, 5
/* 80696B28  48 00 00 10 */	b lbl_80696B38
lbl_80696B2C:
/* 80696B2C  38 00 00 03 */	li r0, 3
/* 80696B30  48 00 00 08 */	b lbl_80696B38
lbl_80696B34:
/* 80696B34  38 00 00 04 */	li r0, 4
lbl_80696B38:
/* 80696B38  2C 00 00 01 */	cmpwi r0, 1
/* 80696B3C  40 82 00 10 */	bne lbl_80696B4C
/* 80696B40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80696B44  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80696B48  48 00 00 08 */	b lbl_80696B50
lbl_80696B4C:
/* 80696B4C  FF A0 08 90 */	fmr f29, f1
lbl_80696B50:
/* 80696B50  88 1D 00 53 */	lbz r0, 0x53(r29)
/* 80696B54  28 00 00 00 */	cmplwi r0, 0
/* 80696B58  41 82 00 AC */	beq lbl_80696C04
/* 80696B5C  3C 60 80 69 */	lis r3, data_80697EAC@ha /* 0x80697EAC@ha */
/* 80696B60  88 03 7E AC */	lbz r0, data_80697EAC@l(r3)  /* 0x80697EAC@l */
/* 80696B64  7C 00 07 75 */	extsb. r0, r0
/* 80696B68  40 82 00 9C */	bne lbl_80696C04
/* 80696B6C  88 1D 00 56 */	lbz r0, 0x56(r29)
/* 80696B70  28 00 00 00 */	cmplwi r0, 0
/* 80696B74  40 82 00 90 */	bne lbl_80696C04
/* 80696B78  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80696B7C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80696B80  40 80 00 84 */	bge lbl_80696C04
/* 80696B84  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80696B88  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80696B8C  4B BD 0A E9 */	bl cM_atan2s__Fff
/* 80696B90  7C 7E 1B 78 */	mr r30, r3
/* 80696B94  A8 1D 00 3E */	lha r0, 0x3e(r29)
/* 80696B98  7C 1E 00 50 */	subf r0, r30, r0
/* 80696B9C  7C 00 07 34 */	extsh r0, r0
/* 80696BA0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80696BA4  40 80 00 60 */	bge lbl_80696C04
/* 80696BA8  2C 00 F0 00 */	cmpwi r0, -4096
/* 80696BAC  40 81 00 58 */	ble lbl_80696C04
/* 80696BB0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80696BB4  4B BD 0D A1 */	bl cM_rndF__Ff
/* 80696BB8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80696BBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80696BC0  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80696BC4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80696BC8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80696BCC  38 00 00 00 */	li r0, 0
/* 80696BD0  98 1D 00 53 */	stb r0, 0x53(r29)
/* 80696BD4  B3 DD 00 3E */	sth r30, 0x3e(r29)
/* 80696BD8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070379@ha */
/* 80696BDC  38 03 03 79 */	addi r0, r3, 0x0379 /* 0x00070379@l */
/* 80696BE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80696BE4  38 7D 00 58 */	addi r3, r29, 0x58
/* 80696BE8  38 81 00 0C */	addi r4, r1, 0xc
/* 80696BEC  38 A0 00 00 */	li r5, 0
/* 80696BF0  38 C0 FF FF */	li r6, -1
/* 80696BF4  81 9D 00 68 */	lwz r12, 0x68(r29)
/* 80696BF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80696BFC  7D 89 03 A6 */	mtctr r12
/* 80696C00  4E 80 04 21 */	bctrl 
lbl_80696C04:
/* 80696C04  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80696C08  EC 20 07 72 */	fmuls f1, f0, f29
/* 80696C0C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80696C10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696C14  40 81 00 0C */	ble lbl_80696C20
/* 80696C18  FC 20 00 90 */	fmr f1, f0
/* 80696C1C  48 00 00 14 */	b lbl_80696C30
lbl_80696C20:
/* 80696C20  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80696C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696C28  40 80 00 08 */	bge lbl_80696C30
/* 80696C2C  FC 20 00 90 */	fmr f1, f0
lbl_80696C30:
/* 80696C30  38 7D 00 2C */	addi r3, r29, 0x2c
/* 80696C34  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 80696C38  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80696C3C  4B BD 8E 01 */	bl cLib_addCalc2__FPffff
/* 80696C40  80 7D 00 08 */	lwz r3, 8(r29)
/* 80696C44  3B 63 00 01 */	addi r27, r3, 1
/* 80696C48  C3 BF 00 08 */	lfs f29, 8(r31)
/* 80696C4C  1F DB 00 78 */	mulli r30, r27, 0x78
/* 80696C50  48 00 00 B8 */	b lbl_80696D08
lbl_80696C54:
/* 80696C54  7C 7C F2 14 */	add r3, r28, r30
/* 80696C58  C0 23 05 A0 */	lfs f1, 0x5a0(r3)
/* 80696C5C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80696C60  EC 61 00 28 */	fsubs f3, f1, f0
/* 80696C64  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80696C68  C0 23 05 A8 */	lfs f1, 0x5a8(r3)
/* 80696C6C  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80696C70  EC 41 00 28 */	fsubs f2, f1, f0
/* 80696C74  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80696C78  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80696C7C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80696C80  EC 21 00 2A */	fadds f1, f1, f0
/* 80696C84  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80696C88  40 81 00 0C */	ble lbl_80696C94
/* 80696C8C  FC 00 08 34 */	frsqrte f0, f1
/* 80696C90  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80696C94:
/* 80696C94  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80696C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696C9C  40 80 00 64 */	bge lbl_80696D00
/* 80696CA0  FC 20 18 50 */	fneg f1, f3
/* 80696CA4  FC 40 10 50 */	fneg f2, f2
/* 80696CA8  4B BD 09 CD */	bl cM_atan2s__Fff
/* 80696CAC  7C 64 1B 78 */	mr r4, r3
/* 80696CB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80696CB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80696CB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80696CBC  4B 97 57 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 80696CC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80696CC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80696CC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80696CCC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80696CD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80696CD4  38 61 00 28 */	addi r3, r1, 0x28
/* 80696CD8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80696CDC  4B BD A2 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80696CE0  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80696CE4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80696CE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80696CEC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80696CF0  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80696CF4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80696CF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80696CFC  D0 1D 00 20 */	stfs f0, 0x20(r29)
lbl_80696D00:
/* 80696D00  3B 7B 00 01 */	addi r27, r27, 1
/* 80696D04  3B DE 00 78 */	addi r30, r30, 0x78
lbl_80696D08:
/* 80696D08  80 1C 7D 88 */	lwz r0, 0x7d88(r28)
/* 80696D0C  7C 1B 00 00 */	cmpw r27, r0
/* 80696D10  41 80 FF 44 */	blt lbl_80696C54
lbl_80696D14:
/* 80696D14  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80696D18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80696D1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80696D20  4C 40 13 82 */	cror 2, 0, 2
/* 80696D24  40 82 00 D4 */	bne lbl_80696DF8
/* 80696D28  3C 60 80 69 */	lis r3, data_80697EAC@ha /* 0x80697EAC@ha */
/* 80696D2C  88 03 7E AC */	lbz r0, data_80697EAC@l(r3)  /* 0x80697EAC@l */
/* 80696D30  7C 00 07 75 */	extsb. r0, r0
/* 80696D34  40 82 00 C4 */	bne lbl_80696DF8
/* 80696D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80696D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80696D40  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80696D44  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80696D48  40 82 00 B0 */	bne lbl_80696DF8
/* 80696D4C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80696D50  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80696D54  40 80 00 A4 */	bge lbl_80696DF8
/* 80696D58  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80696D5C  4C 40 13 82 */	cror 2, 0, 2
/* 80696D60  40 82 00 98 */	bne lbl_80696DF8
/* 80696D64  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80696D68  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80696D6C  4C 41 13 82 */	cror 2, 1, 2
/* 80696D70  40 82 00 88 */	bne lbl_80696DF8
/* 80696D74  38 00 00 02 */	li r0, 2
/* 80696D78  98 1D 00 50 */	stb r0, 0x50(r29)
/* 80696D7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80696D80  4B BD 0B D5 */	bl cM_rndF__Ff
/* 80696D84  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80696D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80696D8C  40 80 00 28 */	bge lbl_80696DB4
/* 80696D90  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80696D94  4B BD 0B C1 */	bl cM_rndF__Ff
/* 80696D98  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80696D9C  EC 00 08 2A */	fadds f0, f0, f1
/* 80696DA0  FC 00 00 1E */	fctiwz f0, f0
/* 80696DA4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80696DA8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80696DAC  B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 80696DB0  48 00 00 28 */	b lbl_80696DD8
lbl_80696DB4:
/* 80696DB4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80696DB8  4B BD 0B 9D */	bl cM_rndF__Ff
/* 80696DBC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80696DC0  EC 00 08 2A */	fadds f0, f0, f1
/* 80696DC4  FC 00 00 50 */	fneg f0, f0
/* 80696DC8  FC 00 00 1E */	fctiwz f0, f0
/* 80696DCC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80696DD0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80696DD4  B0 1D 00 4A */	sth r0, 0x4a(r29)
lbl_80696DD8:
/* 80696DD8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80696DDC  4B BD 0B 79 */	bl cM_rndF__Ff
/* 80696DE0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80696DE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80696DE8  FC 00 00 1E */	fctiwz f0, f0
/* 80696DEC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80696DF0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80696DF4  B0 1D 00 4E */	sth r0, 0x4e(r29)
lbl_80696DF8:
/* 80696DF8  7F A3 EB 78 */	mr r3, r29
/* 80696DFC  38 80 00 00 */	li r4, 0
/* 80696E00  4B FF DE C9 */	bl simple_bg_check__FP5bug_si
/* 80696E04  88 1D 00 55 */	lbz r0, 0x55(r29)
/* 80696E08  28 00 00 00 */	cmplwi r0, 0
/* 80696E0C  40 82 00 48 */	bne lbl_80696E54
/* 80696E10  2C 03 00 02 */	cmpwi r3, 2
/* 80696E14  41 80 00 40 */	blt lbl_80696E54
/* 80696E18  2C 03 00 03 */	cmpwi r3, 3
/* 80696E1C  40 82 00 10 */	bne lbl_80696E2C
/* 80696E20  38 00 10 00 */	li r0, 0x1000
/* 80696E24  B0 1D 00 42 */	sth r0, 0x42(r29)
/* 80696E28  48 00 00 0C */	b lbl_80696E34
lbl_80696E2C:
/* 80696E2C  38 00 F0 00 */	li r0, -4096
/* 80696E30  B0 1D 00 42 */	sth r0, 0x42(r29)
lbl_80696E34:
/* 80696E34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80696E38  4B BD 0B 1D */	bl cM_rndF__Ff
/* 80696E3C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80696E40  EC 00 08 2A */	fadds f0, f0, f1
/* 80696E44  FC 00 00 1E */	fctiwz f0, f0
/* 80696E48  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80696E4C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80696E50  98 1D 00 55 */	stb r0, 0x55(r29)
lbl_80696E54:
/* 80696E54  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80696E58  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80696E5C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80696E60  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80696E64  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80696E68  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80696E6C  39 61 00 60 */	addi r11, r1, 0x60
/* 80696E70  4B CC B3 B1 */	bl _restgpr_27
/* 80696E74  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80696E78  7C 08 03 A6 */	mtlr r0
/* 80696E7C  38 21 00 90 */	addi r1, r1, 0x90
/* 80696E80  4E 80 00 20 */	blr 
