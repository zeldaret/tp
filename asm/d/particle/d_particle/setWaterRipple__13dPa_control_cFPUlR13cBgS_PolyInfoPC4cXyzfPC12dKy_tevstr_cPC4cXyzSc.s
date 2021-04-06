lbl_8004C838:
/* 8004C838  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8004C83C  7C 08 02 A6 */	mflr r0
/* 8004C840  90 01 00 84 */	stw r0, 0x84(r1)
/* 8004C844  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8004C848  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8004C84C  39 61 00 70 */	addi r11, r1, 0x70
/* 8004C850  48 31 59 71 */	bl _savegpr_22
/* 8004C854  7C 79 1B 78 */	mr r25, r3
/* 8004C858  7C 9A 23 78 */	mr r26, r4
/* 8004C85C  7C BB 2B 78 */	mr r27, r5
/* 8004C860  7C DC 33 78 */	mr r28, r6
/* 8004C864  7C FD 3B 78 */	mr r29, r7
/* 8004C868  7D 1E 43 78 */	mr r30, r8
/* 8004C86C  7D 3F 4B 78 */	mr r31, r9
/* 8004C870  C0 62 85 94 */	lfs f3, lit_5140(r2)
/* 8004C874  C0 42 85 98 */	lfs f2, lit_5141(r2)
/* 8004C878  C0 02 85 9C */	lfs f0, lit_5142(r2)
/* 8004C87C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004C880  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004C884  EF E3 00 2A */	fadds f31, f3, f0
/* 8004C888  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004C88C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8004C890  40 81 00 08 */	ble lbl_8004C898
/* 8004C894  FF E0 00 90 */	fmr f31, f0
lbl_8004C898:
/* 8004C898  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8004C89C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8004C8A0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8004C8A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004C8A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004C8AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8004C8B0  7F 64 DB 78 */	mr r4, r27
/* 8004C8B4  38 A1 00 30 */	addi r5, r1, 0x30
/* 8004C8B8  48 02 7E 8D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8004C8BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004C8C0  41 82 01 28 */	beq lbl_8004C9E8
/* 8004C8C4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8004C8C8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8004C8CC  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004C8D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8004C8D4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8004C8D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8004C8DC  38 61 00 24 */	addi r3, r1, 0x24
/* 8004C8E0  48 2F A8 59 */	bl PSVECSquareMag
/* 8004C8E4  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004C8E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004C8EC  40 81 00 58 */	ble lbl_8004C944
/* 8004C8F0  FC 00 08 34 */	frsqrte f0, f1
/* 8004C8F4  C8 82 85 A0 */	lfd f4, lit_5143(r2)
/* 8004C8F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8004C8FC  C8 62 85 A8 */	lfd f3, lit_5144(r2)
/* 8004C900  FC 00 00 32 */	fmul f0, f0, f0
/* 8004C904  FC 01 00 32 */	fmul f0, f1, f0
/* 8004C908  FC 03 00 28 */	fsub f0, f3, f0
/* 8004C90C  FC 02 00 32 */	fmul f0, f2, f0
/* 8004C910  FC 44 00 32 */	fmul f2, f4, f0
/* 8004C914  FC 00 00 32 */	fmul f0, f0, f0
/* 8004C918  FC 01 00 32 */	fmul f0, f1, f0
/* 8004C91C  FC 03 00 28 */	fsub f0, f3, f0
/* 8004C920  FC 02 00 32 */	fmul f0, f2, f0
/* 8004C924  FC 44 00 32 */	fmul f2, f4, f0
/* 8004C928  FC 00 00 32 */	fmul f0, f0, f0
/* 8004C92C  FC 01 00 32 */	fmul f0, f1, f0
/* 8004C930  FC 03 00 28 */	fsub f0, f3, f0
/* 8004C934  FC 02 00 32 */	fmul f0, f2, f0
/* 8004C938  FC 21 00 32 */	fmul f1, f1, f0
/* 8004C93C  FC 20 08 18 */	frsp f1, f1
/* 8004C940  48 00 00 88 */	b lbl_8004C9C8
lbl_8004C944:
/* 8004C944  C8 02 85 B0 */	lfd f0, lit_5145(r2)
/* 8004C948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004C94C  40 80 00 10 */	bge lbl_8004C95C
/* 8004C950  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8004C954  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8004C958  48 00 00 70 */	b lbl_8004C9C8
lbl_8004C95C:
/* 8004C95C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8004C960  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8004C964  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8004C968  3C 00 7F 80 */	lis r0, 0x7f80
/* 8004C96C  7C 03 00 00 */	cmpw r3, r0
/* 8004C970  41 82 00 14 */	beq lbl_8004C984
/* 8004C974  40 80 00 40 */	bge lbl_8004C9B4
/* 8004C978  2C 03 00 00 */	cmpwi r3, 0
/* 8004C97C  41 82 00 20 */	beq lbl_8004C99C
/* 8004C980  48 00 00 34 */	b lbl_8004C9B4
lbl_8004C984:
/* 8004C984  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8004C988  41 82 00 0C */	beq lbl_8004C994
/* 8004C98C  38 00 00 01 */	li r0, 1
/* 8004C990  48 00 00 28 */	b lbl_8004C9B8
lbl_8004C994:
/* 8004C994  38 00 00 02 */	li r0, 2
/* 8004C998  48 00 00 20 */	b lbl_8004C9B8
lbl_8004C99C:
/* 8004C99C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8004C9A0  41 82 00 0C */	beq lbl_8004C9AC
/* 8004C9A4  38 00 00 05 */	li r0, 5
/* 8004C9A8  48 00 00 10 */	b lbl_8004C9B8
lbl_8004C9AC:
/* 8004C9AC  38 00 00 03 */	li r0, 3
/* 8004C9B0  48 00 00 08 */	b lbl_8004C9B8
lbl_8004C9B4:
/* 8004C9B4  38 00 00 04 */	li r0, 4
lbl_8004C9B8:
/* 8004C9B8  2C 00 00 01 */	cmpwi r0, 1
/* 8004C9BC  40 82 00 0C */	bne lbl_8004C9C8
/* 8004C9C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8004C9C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8004C9C8:
/* 8004C9C8  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8004C9CC  48 21 AC A9 */	bl cM_atan2s__Fff
/* 8004C9D0  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 8004C9D4  38 61 00 30 */	addi r3, r1, 0x30
/* 8004C9D8  48 21 A7 51 */	bl atan2sX_Z__4cXyzCFv
/* 8004C9DC  B0 61 00 1E */	sth r3, 0x1e(r1)
/* 8004C9E0  38 00 00 00 */	li r0, 0
/* 8004C9E4  B0 01 00 20 */	sth r0, 0x20(r1)
lbl_8004C9E8:
/* 8004C9E8  3A C0 00 00 */	li r22, 0
/* 8004C9EC  3B 00 00 00 */	li r24, 0
/* 8004C9F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004C9F4  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8004C9F8:
/* 8004C9F8  38 00 00 00 */	li r0, 0
/* 8004C9FC  90 01 00 08 */	stw r0, 8(r1)
/* 8004CA00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004CA04  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8004CA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004CA0C  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 8004CA10  80 9A 00 00 */	lwz r4, 0(r26)
/* 8004CA14  38 A2 85 90 */	la r5, particleID(r2) /* 80451F90-_SDA2_BASE_ */
/* 8004CA18  7C A5 C2 2E */	lhzx r5, r5, r24
/* 8004CA1C  7F 66 DB 78 */	mr r6, r27
/* 8004CA20  7F 87 E3 78 */	mr r7, r28
/* 8004CA24  7F A8 EB 78 */	mr r8, r29
/* 8004CA28  39 21 00 1C */	addi r9, r1, 0x1c
/* 8004CA2C  7F CA F3 78 */	mr r10, r30
/* 8004CA30  48 00 0C 75 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 8004CA34  90 7A 00 00 */	stw r3, 0(r26)
/* 8004CA38  38 79 02 10 */	addi r3, r25, 0x210
/* 8004CA3C  80 9A 00 00 */	lwz r4, 0(r26)
/* 8004CA40  4B FF EE D9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8004CA44  28 03 00 00 */	cmplwi r3, 0
/* 8004CA48  41 82 00 08 */	beq lbl_8004CA50
/* 8004CA4C  D3 E3 00 28 */	stfs f31, 0x28(r3)
lbl_8004CA50:
/* 8004CA50  3A D6 00 01 */	addi r22, r22, 1
/* 8004CA54  2C 16 00 02 */	cmpwi r22, 2
/* 8004CA58  3B 18 00 02 */	addi r24, r24, 2
/* 8004CA5C  3B 5A 00 04 */	addi r26, r26, 4
/* 8004CA60  41 80 FF 98 */	blt lbl_8004C9F8
/* 8004CA64  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8004CA68  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8004CA6C  90 01 00 40 */	stw r0, 0x40(r1)
/* 8004CA70  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8004CA74  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8004CA78  39 61 00 70 */	addi r11, r1, 0x70
/* 8004CA7C  48 31 57 91 */	bl _restgpr_22
/* 8004CA80  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8004CA84  7C 08 03 A6 */	mtlr r0
/* 8004CA88  38 21 00 80 */	addi r1, r1, 0x80
/* 8004CA8C  4E 80 00 20 */	blr 
