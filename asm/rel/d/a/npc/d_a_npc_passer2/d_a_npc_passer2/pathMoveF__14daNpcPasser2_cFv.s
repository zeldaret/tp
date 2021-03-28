lbl_80AA7918:
/* 80AA7918  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AA791C  7C 08 02 A6 */	mflr r0
/* 80AA7920  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AA7924  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AA7928  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AA792C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80AA7930  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80AA7934  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80AA7938  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80AA793C  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80AA7940  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80AA7944  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA7948  4B 8B A8 90 */	b _savegpr_28
/* 80AA794C  7C 7D 1B 78 */	mr r29, r3
/* 80AA7950  3C 60 80 AB */	lis r3, lit_3963@ha
/* 80AA7954  3B E3 8A 18 */	addi r31, r3, lit_3963@l
/* 80AA7958  C3 FF 00 08 */	lfs f31, 8(r31)
/* 80AA795C  FF C0 F8 90 */	fmr f30, f31
/* 80AA7960  3B DD 08 4C */	addi r30, r29, 0x84c
/* 80AA7964  80 1D 0A 3C */	lwz r0, 0xa3c(r29)
/* 80AA7968  28 00 00 01 */	cmplwi r0, 1
/* 80AA796C  40 82 01 3C */	bne lbl_80AA7AA8
/* 80AA7970  80 9D 09 C4 */	lwz r4, 0x9c4(r29)
/* 80AA7974  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA7978  40 80 00 1C */	bge lbl_80AA7994
/* 80AA797C  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA7980  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA7984  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA7988  7C 63 02 14 */	add r3, r3, r0
/* 80AA798C  C3 E3 01 54 */	lfs f31, 0x154(r3)
/* 80AA7990  48 00 00 18 */	b lbl_80AA79A8
lbl_80AA7994:
/* 80AA7994  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA7998  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA799C  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA79A0  7C 63 02 14 */	add r3, r3, r0
/* 80AA79A4  C3 E3 01 54 */	lfs f31, 0x154(r3)
lbl_80AA79A8:
/* 80AA79A8  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA79AC  40 80 00 1C */	bge lbl_80AA79C8
/* 80AA79B0  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA79B4  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA79B8  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA79BC  7C 63 02 14 */	add r3, r3, r0
/* 80AA79C0  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 80AA79C4  48 00 00 18 */	b lbl_80AA79DC
lbl_80AA79C8:
/* 80AA79C8  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA79CC  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA79D0  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA79D4  7C 63 02 14 */	add r3, r3, r0
/* 80AA79D8  C0 03 01 4C */	lfs f0, 0x14c(r3)
lbl_80AA79DC:
/* 80AA79DC  FF C0 00 90 */	fmr f30, f0
/* 80AA79E0  38 7D 0A 30 */	addi r3, r29, 0xa30
/* 80AA79E4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA79E8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA79EC  4B 7C 8D 54 */	b cLib_chaseF__FPfff
/* 80AA79F0  C0 5D 0A 30 */	lfs f2, 0xa30(r29)
/* 80AA79F4  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 80AA79F8  EC 22 00 32 */	fmuls f1, f2, f0
/* 80AA79FC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA7A00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80AA7A04  EC 42 00 32 */	fmuls f2, f2, f0
/* 80AA7A08  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80AA7A0C  40 80 00 08 */	bge lbl_80AA7A14
/* 80AA7A10  FC 20 F8 90 */	fmr f1, f31
lbl_80AA7A14:
/* 80AA7A14  38 7D 0A 34 */	addi r3, r29, 0xa34
/* 80AA7A18  4B 7C 8D 28 */	b cLib_chaseF__FPfff
/* 80AA7A1C  C0 3D 0A 30 */	lfs f1, 0xa30(r29)
/* 80AA7A20  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80AA7A24  EF 81 00 32 */	fmuls f28, f1, f0
/* 80AA7A28  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA7A2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AA7A30  EF A1 00 32 */	fmuls f29, f1, f0
/* 80AA7A34  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80AA7A38  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80AA7A3C  41 82 00 4C */	beq lbl_80AA7A88
/* 80AA7A40  A8 9D 08 48 */	lha r4, 0x848(r29)
/* 80AA7A44  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80AA7A48  3C 63 00 01 */	addis r3, r3, 1
/* 80AA7A4C  38 03 80 00 */	addi r0, r3, -32768
/* 80AA7A50  7C 04 00 50 */	subf r0, r4, r0
/* 80AA7A54  7C 1C 07 34 */	extsh r28, r0
/* 80AA7A58  7F 83 E3 78 */	mr r3, r28
/* 80AA7A5C  4B 8B D6 74 */	b abs
/* 80AA7A60  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80AA7A64  40 80 00 24 */	bge lbl_80AA7A88
/* 80AA7A68  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80AA7A6C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80AA7A70  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 80AA7A74  7C 63 02 14 */	add r3, r3, r0
/* 80AA7A78  C0 23 00 04 */	lfs f1, 4(r3)
/* 80AA7A7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AA7A80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AA7A84  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_80AA7A88:
/* 80AA7A88  FC 1F E0 40 */	fcmpo cr0, f31, f28
/* 80AA7A8C  40 80 00 08 */	bge lbl_80AA7A94
/* 80AA7A90  FF 80 F8 90 */	fmr f28, f31
lbl_80AA7A94:
/* 80AA7A94  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80AA7A98  FC 20 E0 90 */	fmr f1, f28
/* 80AA7A9C  FC 40 E8 90 */	fmr f2, f29
/* 80AA7AA0  4B 7C 8C A0 */	b cLib_chaseF__FPfff
/* 80AA7AA4  48 00 01 40 */	b lbl_80AA7BE4
lbl_80AA7AA8:
/* 80AA7AA8  28 00 00 00 */	cmplwi r0, 0
/* 80AA7AAC  40 82 01 38 */	bne lbl_80AA7BE4
/* 80AA7AB0  80 9D 09 C4 */	lwz r4, 0x9c4(r29)
/* 80AA7AB4  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA7AB8  40 80 00 1C */	bge lbl_80AA7AD4
/* 80AA7ABC  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA7AC0  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA7AC4  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA7AC8  7C 63 02 14 */	add r3, r3, r0
/* 80AA7ACC  C3 E3 01 50 */	lfs f31, 0x150(r3)
/* 80AA7AD0  48 00 00 18 */	b lbl_80AA7AE8
lbl_80AA7AD4:
/* 80AA7AD4  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA7AD8  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA7ADC  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA7AE0  7C 63 02 14 */	add r3, r3, r0
/* 80AA7AE4  C3 E3 01 50 */	lfs f31, 0x150(r3)
lbl_80AA7AE8:
/* 80AA7AE8  2C 04 00 10 */	cmpwi r4, 0x10
/* 80AA7AEC  40 80 00 1C */	bge lbl_80AA7B08
/* 80AA7AF0  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA7AF4  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA7AF8  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA7AFC  7C 63 02 14 */	add r3, r3, r0
/* 80AA7B00  C0 03 01 48 */	lfs f0, 0x148(r3)
/* 80AA7B04  48 00 00 18 */	b lbl_80AA7B1C
lbl_80AA7B08:
/* 80AA7B08  3C 60 80 42 */	lis r3, l_Cd_HIO@ha
/* 80AA7B0C  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l
/* 80AA7B10  1C 04 01 64 */	mulli r0, r4, 0x164
/* 80AA7B14  7C 63 02 14 */	add r3, r3, r0
/* 80AA7B18  C0 03 01 48 */	lfs f0, 0x148(r3)
lbl_80AA7B1C:
/* 80AA7B1C  FF C0 00 90 */	fmr f30, f0
/* 80AA7B20  38 7D 0A 30 */	addi r3, r29, 0xa30
/* 80AA7B24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80AA7B28  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA7B2C  4B 7C 8C 14 */	b cLib_chaseF__FPfff
/* 80AA7B30  C0 5D 0A 30 */	lfs f2, 0xa30(r29)
/* 80AA7B34  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 80AA7B38  EC 22 00 32 */	fmuls f1, f2, f0
/* 80AA7B3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA7B40  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80AA7B44  EC 42 00 32 */	fmuls f2, f2, f0
/* 80AA7B48  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80AA7B4C  40 80 00 08 */	bge lbl_80AA7B54
/* 80AA7B50  FC 20 F8 90 */	fmr f1, f31
lbl_80AA7B54:
/* 80AA7B54  38 7D 0A 34 */	addi r3, r29, 0xa34
/* 80AA7B58  4B 7C 8B E8 */	b cLib_chaseF__FPfff
/* 80AA7B5C  C0 3D 0A 30 */	lfs f1, 0xa30(r29)
/* 80AA7B60  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80AA7B64  EF A1 00 32 */	fmuls f29, f1, f0
/* 80AA7B68  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA7B6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AA7B70  EF 81 00 32 */	fmuls f28, f1, f0
/* 80AA7B74  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80AA7B78  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80AA7B7C  41 82 00 4C */	beq lbl_80AA7BC8
/* 80AA7B80  A8 9D 08 48 */	lha r4, 0x848(r29)
/* 80AA7B84  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80AA7B88  3C 63 00 01 */	addis r3, r3, 1
/* 80AA7B8C  38 03 80 00 */	addi r0, r3, -32768
/* 80AA7B90  7C 04 00 50 */	subf r0, r4, r0
/* 80AA7B94  7C 1C 07 34 */	extsh r28, r0
/* 80AA7B98  7F 83 E3 78 */	mr r3, r28
/* 80AA7B9C  4B 8B D5 34 */	b abs
/* 80AA7BA0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80AA7BA4  40 80 00 24 */	bge lbl_80AA7BC8
/* 80AA7BA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80AA7BAC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80AA7BB0  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 80AA7BB4  7C 63 02 14 */	add r3, r3, r0
/* 80AA7BB8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80AA7BBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AA7BC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AA7BC4  EF BD 00 32 */	fmuls f29, f29, f0
lbl_80AA7BC8:
/* 80AA7BC8  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 80AA7BCC  40 80 00 08 */	bge lbl_80AA7BD4
/* 80AA7BD0  FF A0 F8 90 */	fmr f29, f31
lbl_80AA7BD4:
/* 80AA7BD4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80AA7BD8  FC 20 E8 90 */	fmr f1, f29
/* 80AA7BDC  FC 40 E0 90 */	fmr f2, f28
/* 80AA7BE0  4B 7C 8B 60 */	b cLib_chaseF__FPfff
lbl_80AA7BE4:
/* 80AA7BE4  38 7D 09 F0 */	addi r3, r29, 0x9f0
/* 80AA7BE8  38 81 00 08 */	addi r4, r1, 8
/* 80AA7BEC  4B 6B 22 68 */	b getTargetPoint__11PathTrace_cFP3Vec
/* 80AA7BF0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AA7BF4  38 81 00 08 */	addi r4, r1, 8
/* 80AA7BF8  4B 7C 90 0C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80AA7BFC  7C 64 1B 78 */	mr r4, r3
/* 80AA7C00  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80AA7C04  4B 7C 92 20 */	b cLib_distanceAngleS__Fss
/* 80AA7C08  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80AA7C0C  41 80 00 34 */	blt lbl_80AA7C40
/* 80AA7C10  38 7D 0A 30 */	addi r3, r29, 0xa30
/* 80AA7C14  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80AA7C18  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA7C1C  4B 7C 8B 24 */	b cLib_chaseF__FPfff
/* 80AA7C20  38 7D 0A 34 */	addi r3, r29, 0xa34
/* 80AA7C24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80AA7C28  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80AA7C2C  4B 7C 8B 14 */	b cLib_chaseF__FPfff
/* 80AA7C30  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80AA7C34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80AA7C38  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80AA7C3C  4B 7C 8B 04 */	b cLib_chaseF__FPfff
lbl_80AA7C40:
/* 80AA7C40  7F A3 EB 78 */	mr r3, r29
/* 80AA7C44  7F C4 F3 78 */	mr r4, r30
/* 80AA7C48  4B 57 2A 84 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80AA7C4C  C0 1D 0A 34 */	lfs f0, 0xa34(r29)
/* 80AA7C50  EC 20 F8 24 */	fdivs f1, f0, f31
/* 80AA7C54  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AA7C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA7C5C  40 81 00 08 */	ble lbl_80AA7C64
/* 80AA7C60  FC 20 00 90 */	fmr f1, f0
lbl_80AA7C64:
/* 80AA7C64  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80AA7C68  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AA7C6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA7C70  40 80 00 08 */	bge lbl_80AA7C78
/* 80AA7C74  FC 20 00 90 */	fmr f1, f0
lbl_80AA7C78:
/* 80AA7C78  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80AA7C7C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80AA7C80  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AA7C84  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AA7C88  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80AA7C8C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80AA7C90  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80AA7C94  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80AA7C98  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80AA7C9C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80AA7CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA7CA4  4B 8B A5 80 */	b _restgpr_28
/* 80AA7CA8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AA7CAC  7C 08 03 A6 */	mtlr r0
/* 80AA7CB0  38 21 00 70 */	addi r1, r1, 0x70
/* 80AA7CB4  4E 80 00 20 */	blr 
