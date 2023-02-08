lbl_80B28910:
/* 80B28910  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80B28914  7C 08 02 A6 */	mflr r0
/* 80B28918  90 01 01 14 */	stw r0, 0x114(r1)
/* 80B2891C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80B28920  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80B28924  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80B28928  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80B2892C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B28930  4B 83 98 9D */	bl _savegpr_25
/* 80B28934  7C 7A 1B 78 */	mr r26, r3
/* 80B28938  7C 9B 23 78 */	mr r27, r4
/* 80B2893C  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B28940  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B28944  80 7A 0F 98 */	lwz r3, 0xf98(r26)
/* 80B28948  80 83 00 08 */	lwz r4, 8(r3)
/* 80B2894C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B28950  38 03 FF FF */	addi r0, r3, -1
/* 80B28954  54 00 20 36 */	slwi r0, r0, 4
/* 80B28958  7C 84 02 14 */	add r4, r4, r0
/* 80B2895C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B28960  80 04 00 08 */	lwz r0, 8(r4)
/* 80B28964  90 61 00 94 */	stw r3, 0x94(r1)
/* 80B28968  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B2896C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B28970  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80B28974  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80B28978  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80B2897C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B28980  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B28984  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B28988  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B2898C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B28990  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80B28994  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B28998  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B2899C  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80B289A0  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80B289A4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B289A8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B289AC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80B289B0  38 61 00 40 */	addi r3, r1, 0x40
/* 80B289B4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B289B8  4B 81 E9 E5 */	bl PSVECSquareDistance
/* 80B289BC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B289C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B289C4  40 81 00 58 */	ble lbl_80B28A1C
/* 80B289C8  FC 00 08 34 */	frsqrte f0, f1
/* 80B289CC  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80B289D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B289D4  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80B289D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B289DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B289E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B289E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B289E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B289EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B289F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B289F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B289F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B289FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28A00  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28A04  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28A08  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28A10  FC 21 00 32 */	fmul f1, f1, f0
/* 80B28A14  FC 20 08 18 */	frsp f1, f1
/* 80B28A18  48 00 00 88 */	b lbl_80B28AA0
lbl_80B28A1C:
/* 80B28A1C  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80B28A20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28A24  40 80 00 10 */	bge lbl_80B28A34
/* 80B28A28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28A2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B28A30  48 00 00 70 */	b lbl_80B28AA0
lbl_80B28A34:
/* 80B28A34  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B28A38  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B28A3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B28A40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B28A44  7C 03 00 00 */	cmpw r3, r0
/* 80B28A48  41 82 00 14 */	beq lbl_80B28A5C
/* 80B28A4C  40 80 00 40 */	bge lbl_80B28A8C
/* 80B28A50  2C 03 00 00 */	cmpwi r3, 0
/* 80B28A54  41 82 00 20 */	beq lbl_80B28A74
/* 80B28A58  48 00 00 34 */	b lbl_80B28A8C
lbl_80B28A5C:
/* 80B28A5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28A60  41 82 00 0C */	beq lbl_80B28A6C
/* 80B28A64  38 00 00 01 */	li r0, 1
/* 80B28A68  48 00 00 28 */	b lbl_80B28A90
lbl_80B28A6C:
/* 80B28A6C  38 00 00 02 */	li r0, 2
/* 80B28A70  48 00 00 20 */	b lbl_80B28A90
lbl_80B28A74:
/* 80B28A74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28A78  41 82 00 0C */	beq lbl_80B28A84
/* 80B28A7C  38 00 00 05 */	li r0, 5
/* 80B28A80  48 00 00 10 */	b lbl_80B28A90
lbl_80B28A84:
/* 80B28A84  38 00 00 03 */	li r0, 3
/* 80B28A88  48 00 00 08 */	b lbl_80B28A90
lbl_80B28A8C:
/* 80B28A8C  38 00 00 04 */	li r0, 4
lbl_80B28A90:
/* 80B28A90  2C 00 00 01 */	cmpwi r0, 1
/* 80B28A94  40 82 00 0C */	bne lbl_80B28AA0
/* 80B28A98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28A9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B28AA0:
/* 80B28AA0  38 7F 00 00 */	addi r3, r31, 0
/* 80B28AA4  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 80B28AA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28AAC  40 80 00 0C */	bge lbl_80B28AB8
/* 80B28AB0  38 60 00 09 */	li r3, 9
/* 80B28AB4  48 00 04 DC */	b lbl_80B28F90
lbl_80B28AB8:
/* 80B28AB8  38 61 00 88 */	addi r3, r1, 0x88
/* 80B28ABC  7F 64 DB 78 */	mr r4, r27
/* 80B28AC0  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80B28AC4  4B 73 E0 71 */	bl __mi__4cXyzCFRC3Vec
/* 80B28AC8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B28ACC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B28AD0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B28AD4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B28AD8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B28ADC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B28AE0  38 61 00 34 */	addi r3, r1, 0x34
/* 80B28AE4  4B 81 E6 55 */	bl PSVECSquareMag
/* 80B28AE8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B28AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28AF0  40 81 00 58 */	ble lbl_80B28B48
/* 80B28AF4  FC 00 08 34 */	frsqrte f0, f1
/* 80B28AF8  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80B28AFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28B00  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80B28B04  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28B08  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28B0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28B10  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28B14  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28B18  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28B1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28B20  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28B24  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28B28  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28B2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28B30  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28B34  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28B38  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28B3C  FF C1 00 32 */	fmul f30, f1, f0
/* 80B28B40  FF C0 F0 18 */	frsp f30, f30
/* 80B28B44  48 00 00 90 */	b lbl_80B28BD4
lbl_80B28B48:
/* 80B28B48  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80B28B4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28B50  40 80 00 10 */	bge lbl_80B28B60
/* 80B28B54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28B58  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B28B5C  48 00 00 78 */	b lbl_80B28BD4
lbl_80B28B60:
/* 80B28B60  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B28B64  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B28B68  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B28B6C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B28B70  7C 03 00 00 */	cmpw r3, r0
/* 80B28B74  41 82 00 14 */	beq lbl_80B28B88
/* 80B28B78  40 80 00 40 */	bge lbl_80B28BB8
/* 80B28B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B28B80  41 82 00 20 */	beq lbl_80B28BA0
/* 80B28B84  48 00 00 34 */	b lbl_80B28BB8
lbl_80B28B88:
/* 80B28B88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28B8C  41 82 00 0C */	beq lbl_80B28B98
/* 80B28B90  38 00 00 01 */	li r0, 1
/* 80B28B94  48 00 00 28 */	b lbl_80B28BBC
lbl_80B28B98:
/* 80B28B98  38 00 00 02 */	li r0, 2
/* 80B28B9C  48 00 00 20 */	b lbl_80B28BBC
lbl_80B28BA0:
/* 80B28BA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28BA4  41 82 00 0C */	beq lbl_80B28BB0
/* 80B28BA8  38 00 00 05 */	li r0, 5
/* 80B28BAC  48 00 00 10 */	b lbl_80B28BBC
lbl_80B28BB0:
/* 80B28BB0  38 00 00 03 */	li r0, 3
/* 80B28BB4  48 00 00 08 */	b lbl_80B28BBC
lbl_80B28BB8:
/* 80B28BB8  38 00 00 04 */	li r0, 4
lbl_80B28BBC:
/* 80B28BBC  2C 00 00 01 */	cmpwi r0, 1
/* 80B28BC0  40 82 00 10 */	bne lbl_80B28BD0
/* 80B28BC4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28BC8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B28BCC  48 00 00 08 */	b lbl_80B28BD4
lbl_80B28BD0:
/* 80B28BD0  FF C0 08 90 */	fmr f30, f1
lbl_80B28BD4:
/* 80B28BD4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B28BD8  7F 64 DB 78 */	mr r4, r27
/* 80B28BDC  4B 74 80 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B28BE0  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 80B28BE4  7C 00 18 50 */	subf r0, r0, r3
/* 80B28BE8  7C 03 07 34 */	extsh r3, r0
/* 80B28BEC  4B 83 C4 E5 */	bl abs
/* 80B28BF0  7C 60 07 34 */	extsh r0, r3
/* 80B28BF4  38 7F 00 00 */	addi r3, r31, 0
/* 80B28BF8  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80B28BFC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80B28C00  40 80 00 44 */	bge lbl_80B28C44
/* 80B28C04  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B28C08  28 00 40 00 */	cmplwi r0, 0x4000
/* 80B28C0C  40 81 00 38 */	ble lbl_80B28C44
/* 80B28C10  C0 23 00 A8 */	lfs f1, 0xa8(r3)
/* 80B28C14  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B28C18  40 80 00 18 */	bge lbl_80B28C30
/* 80B28C1C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B28C20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B28C24  D0 1A 10 00 */	stfs f0, 0x1000(r26)
/* 80B28C28  38 60 00 05 */	li r3, 5
/* 80B28C2C  48 00 03 64 */	b lbl_80B28F90
lbl_80B28C30:
/* 80B28C30  88 1A 10 09 */	lbz r0, 0x1009(r26)
/* 80B28C34  28 00 00 00 */	cmplwi r0, 0
/* 80B28C38  41 82 00 0C */	beq lbl_80B28C44
/* 80B28C3C  38 60 00 08 */	li r3, 8
/* 80B28C40  48 00 03 50 */	b lbl_80B28F90
lbl_80B28C44:
/* 80B28C44  3B 80 00 00 */	li r28, 0
/* 80B28C48  3B 20 00 00 */	li r25, 0
/* 80B28C4C  3B BF 00 00 */	addi r29, r31, 0
/* 80B28C50  3B C1 00 A8 */	addi r30, r1, 0xa8
/* 80B28C54  C3 DF 00 D8 */	lfs f30, 0xd8(r31)
/* 80B28C58  C3 FD 00 A8 */	lfs f31, 0xa8(r29)
/* 80B28C5C  48 00 02 F0 */	b lbl_80B28F4C
lbl_80B28C60:
/* 80B28C60  80 64 00 08 */	lwz r3, 8(r4)
/* 80B28C64  38 19 00 04 */	addi r0, r25, 4
/* 80B28C68  7C 83 02 14 */	add r4, r3, r0
/* 80B28C6C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B28C70  80 04 00 04 */	lwz r0, 4(r4)
/* 80B28C74  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80B28C78  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B28C7C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B28C80  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B28C84  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80B28C88  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B28C8C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B28C90  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B28C94  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B28C98  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B28C9C  80 7A 0F 98 */	lwz r3, 0xf98(r26)
/* 80B28CA0  80 63 00 08 */	lwz r3, 8(r3)
/* 80B28CA4  38 19 00 14 */	addi r0, r25, 0x14
/* 80B28CA8  7C 83 02 14 */	add r4, r3, r0
/* 80B28CAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B28CB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B28CB4  90 61 00 70 */	stw r3, 0x70(r1)
/* 80B28CB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B28CBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B28CC0  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B28CC4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B28CC8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B28CCC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B28CD0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B28CD4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B28CD8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B28CDC  38 61 00 64 */	addi r3, r1, 0x64
/* 80B28CE0  7F 64 DB 78 */	mr r4, r27
/* 80B28CE4  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80B28CE8  4B 73 DE 4D */	bl __mi__4cXyzCFRC3Vec
/* 80B28CEC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B28CF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B28CF4  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 80B28CF8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B28CFC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B28D00  38 61 00 28 */	addi r3, r1, 0x28
/* 80B28D04  4B 81 E4 35 */	bl PSVECSquareMag
/* 80B28D08  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B28D0C  40 81 00 58 */	ble lbl_80B28D64
/* 80B28D10  FC 00 08 34 */	frsqrte f0, f1
/* 80B28D14  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80B28D18  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28D1C  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80B28D20  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28D24  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28D28  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28D2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28D30  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28D34  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28D38  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28D3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28D40  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28D44  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28D48  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28D4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28D50  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28D54  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28D58  FC 21 00 32 */	fmul f1, f1, f0
/* 80B28D5C  FC 20 08 18 */	frsp f1, f1
/* 80B28D60  48 00 00 88 */	b lbl_80B28DE8
lbl_80B28D64:
/* 80B28D64  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80B28D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28D6C  40 80 00 10 */	bge lbl_80B28D7C
/* 80B28D70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28D74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B28D78  48 00 00 70 */	b lbl_80B28DE8
lbl_80B28D7C:
/* 80B28D7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B28D80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B28D84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B28D88  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B28D8C  7C 03 00 00 */	cmpw r3, r0
/* 80B28D90  41 82 00 14 */	beq lbl_80B28DA4
/* 80B28D94  40 80 00 40 */	bge lbl_80B28DD4
/* 80B28D98  2C 03 00 00 */	cmpwi r3, 0
/* 80B28D9C  41 82 00 20 */	beq lbl_80B28DBC
/* 80B28DA0  48 00 00 34 */	b lbl_80B28DD4
lbl_80B28DA4:
/* 80B28DA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28DA8  41 82 00 0C */	beq lbl_80B28DB4
/* 80B28DAC  38 00 00 01 */	li r0, 1
/* 80B28DB0  48 00 00 28 */	b lbl_80B28DD8
lbl_80B28DB4:
/* 80B28DB4  38 00 00 02 */	li r0, 2
/* 80B28DB8  48 00 00 20 */	b lbl_80B28DD8
lbl_80B28DBC:
/* 80B28DBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28DC0  41 82 00 0C */	beq lbl_80B28DCC
/* 80B28DC4  38 00 00 05 */	li r0, 5
/* 80B28DC8  48 00 00 10 */	b lbl_80B28DD8
lbl_80B28DCC:
/* 80B28DCC  38 00 00 03 */	li r0, 3
/* 80B28DD0  48 00 00 08 */	b lbl_80B28DD8
lbl_80B28DD4:
/* 80B28DD4  38 00 00 04 */	li r0, 4
lbl_80B28DD8:
/* 80B28DD8  2C 00 00 01 */	cmpwi r0, 1
/* 80B28DDC  40 82 00 0C */	bne lbl_80B28DE8
/* 80B28DE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28DE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B28DE8:
/* 80B28DE8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B28DEC  41 80 01 74 */	blt lbl_80B28F60
/* 80B28DF0  38 61 00 58 */	addi r3, r1, 0x58
/* 80B28DF4  7F 64 DB 78 */	mr r4, r27
/* 80B28DF8  38 A1 00 AC */	addi r5, r1, 0xac
/* 80B28DFC  4B 73 DD 39 */	bl __mi__4cXyzCFRC3Vec
/* 80B28E00  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B28E04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B28E08  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 80B28E0C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B28E10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B28E14  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B28E18  4B 81 E3 21 */	bl PSVECSquareMag
/* 80B28E1C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B28E20  40 81 00 58 */	ble lbl_80B28E78
/* 80B28E24  FC 00 08 34 */	frsqrte f0, f1
/* 80B28E28  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80B28E2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28E30  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80B28E34  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28E38  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28E3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28E40  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28E44  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28E48  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28E4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28E50  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28E54  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28E58  FC 44 00 32 */	fmul f2, f4, f0
/* 80B28E5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B28E60  FC 01 00 32 */	fmul f0, f1, f0
/* 80B28E64  FC 03 00 28 */	fsub f0, f3, f0
/* 80B28E68  FC 02 00 32 */	fmul f0, f2, f0
/* 80B28E6C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B28E70  FC 20 08 18 */	frsp f1, f1
/* 80B28E74  48 00 00 88 */	b lbl_80B28EFC
lbl_80B28E78:
/* 80B28E78  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80B28E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28E80  40 80 00 10 */	bge lbl_80B28E90
/* 80B28E84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28E88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B28E8C  48 00 00 70 */	b lbl_80B28EFC
lbl_80B28E90:
/* 80B28E90  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B28E94  80 81 00 08 */	lwz r4, 8(r1)
/* 80B28E98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B28E9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B28EA0  7C 03 00 00 */	cmpw r3, r0
/* 80B28EA4  41 82 00 14 */	beq lbl_80B28EB8
/* 80B28EA8  40 80 00 40 */	bge lbl_80B28EE8
/* 80B28EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B28EB0  41 82 00 20 */	beq lbl_80B28ED0
/* 80B28EB4  48 00 00 34 */	b lbl_80B28EE8
lbl_80B28EB8:
/* 80B28EB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28EBC  41 82 00 0C */	beq lbl_80B28EC8
/* 80B28EC0  38 00 00 01 */	li r0, 1
/* 80B28EC4  48 00 00 28 */	b lbl_80B28EEC
lbl_80B28EC8:
/* 80B28EC8  38 00 00 02 */	li r0, 2
/* 80B28ECC  48 00 00 20 */	b lbl_80B28EEC
lbl_80B28ED0:
/* 80B28ED0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B28ED4  41 82 00 0C */	beq lbl_80B28EE0
/* 80B28ED8  38 00 00 05 */	li r0, 5
/* 80B28EDC  48 00 00 10 */	b lbl_80B28EEC
lbl_80B28EE0:
/* 80B28EE0  38 00 00 03 */	li r0, 3
/* 80B28EE4  48 00 00 08 */	b lbl_80B28EEC
lbl_80B28EE8:
/* 80B28EE8  38 00 00 04 */	li r0, 4
lbl_80B28EEC:
/* 80B28EEC  2C 00 00 01 */	cmpwi r0, 1
/* 80B28EF0  40 82 00 0C */	bne lbl_80B28EFC
/* 80B28EF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B28EF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B28EFC:
/* 80B28EFC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B28F00  41 80 00 60 */	blt lbl_80B28F60
/* 80B28F04  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80B28F08  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80B28F0C  C0 61 00 B8 */	lfs f3, 0xb8(r1)
/* 80B28F10  C0 81 00 C0 */	lfs f4, 0xc0(r1)
/* 80B28F14  C0 A1 00 AC */	lfs f5, 0xac(r1)
/* 80B28F18  C0 C1 00 B4 */	lfs f6, 0xb4(r1)
/* 80B28F1C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80B28F20  7F C4 F3 78 */	mr r4, r30
/* 80B28F24  38 A1 00 18 */	addi r5, r1, 0x18
/* 80B28F28  4B 73 F7 05 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 80B28F2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B28F30  41 82 00 14 */	beq lbl_80B28F44
/* 80B28F34  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80B28F38  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 80B28F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B28F40  41 80 00 20 */	blt lbl_80B28F60
lbl_80B28F44:
/* 80B28F44  3B 9C 00 01 */	addi r28, r28, 1
/* 80B28F48  3B 39 00 10 */	addi r25, r25, 0x10
lbl_80B28F4C:
/* 80B28F4C  80 9A 0F 98 */	lwz r4, 0xf98(r26)
/* 80B28F50  A0 64 00 00 */	lhz r3, 0(r4)
/* 80B28F54  38 03 FF FF */	addi r0, r3, -1
/* 80B28F58  7C 1C 00 00 */	cmpw r28, r0
/* 80B28F5C  41 80 FD 04 */	blt lbl_80B28C60
lbl_80B28F60:
/* 80B28F60  80 7A 0F 98 */	lwz r3, 0xf98(r26)
/* 80B28F64  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B28F68  38 03 FF FF */	addi r0, r3, -1
/* 80B28F6C  7C 00 E0 00 */	cmpw r0, r28
/* 80B28F70  41 81 00 1C */	bgt lbl_80B28F8C
/* 80B28F74  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80B28F78  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B28F7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B28F80  D0 1A 10 00 */	stfs f0, 0x1000(r26)
/* 80B28F84  38 60 00 05 */	li r3, 5
/* 80B28F88  48 00 00 08 */	b lbl_80B28F90
lbl_80B28F8C:
/* 80B28F8C  38 60 00 02 */	li r3, 2
lbl_80B28F90:
/* 80B28F90  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80B28F94  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80B28F98  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80B28F9C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80B28FA0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B28FA4  4B 83 92 75 */	bl _restgpr_25
/* 80B28FA8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80B28FAC  7C 08 03 A6 */	mtlr r0
/* 80B28FB0  38 21 01 10 */	addi r1, r1, 0x110
/* 80B28FB4  4E 80 00 20 */	blr 
