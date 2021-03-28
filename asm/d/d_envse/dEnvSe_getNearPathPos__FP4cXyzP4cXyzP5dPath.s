lbl_80182DDC:
/* 80182DDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80182DE0  7C 08 02 A6 */	mflr r0
/* 80182DE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80182DE8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80182DEC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80182DF0  39 61 00 60 */	addi r11, r1, 0x60
/* 80182DF4  48 1D F3 DD */	bl _savegpr_26
/* 80182DF8  7C 7E 1B 78 */	mr r30, r3
/* 80182DFC  7C 9F 23 78 */	mr r31, r4
/* 80182E00  7C BA 2B 78 */	mr r26, r5
/* 80182E04  3B 80 00 00 */	li r28, 0
/* 80182E08  80 62 D1 80 */	lwz r3, lit_3752(r2)
/* 80182E0C  80 02 D1 84 */	lwz r0, data_80456B84(r2)
/* 80182E10  90 61 00 0C */	stw r3, 0xc(r1)
/* 80182E14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80182E18  3C 60 80 45 */	lis r3, __float_max@ha
/* 80182E1C  C3 E3 0A E8 */	lfs f31, __float_max@l(r3)
/* 80182E20  83 65 00 08 */	lwz r27, 8(r5)
/* 80182E24  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80182E28  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80182E2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80182E30  3B A0 00 00 */	li r29, 0
/* 80182E34  48 00 00 2C */	b lbl_80182E60
lbl_80182E38:
/* 80182E38  7F E3 FB 78 */	mr r3, r31
/* 80182E3C  38 9B 00 04 */	addi r4, r27, 4
/* 80182E40  48 1C 45 5D */	bl PSVECSquareDistance
/* 80182E44  D0 21 00 08 */	stfs f1, 8(r1)
/* 80182E48  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80182E4C  40 81 00 0C */	ble lbl_80182E58
/* 80182E50  FF E0 08 90 */	fmr f31, f1
/* 80182E54  7F BC EB 78 */	mr r28, r29
lbl_80182E58:
/* 80182E58  3B 7B 00 10 */	addi r27, r27, 0x10
/* 80182E5C  3B BD 00 01 */	addi r29, r29, 1
lbl_80182E60:
/* 80182E60  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80182E64  7C 1D 00 00 */	cmpw r29, r0
/* 80182E68  41 80 FF D0 */	blt lbl_80182E38
/* 80182E6C  80 7A 00 08 */	lwz r3, 8(r26)
/* 80182E70  57 80 20 36 */	slwi r0, r28, 4
/* 80182E74  7F A3 02 14 */	add r29, r3, r0
/* 80182E78  2C 1C 00 00 */	cmpwi r28, 0
/* 80182E7C  41 82 00 30 */	beq lbl_80182EAC
/* 80182E80  38 61 00 14 */	addi r3, r1, 0x14
/* 80182E84  38 9D FF F4 */	addi r4, r29, -12
/* 80182E88  38 BD 00 04 */	addi r5, r29, 4
/* 80182E8C  48 0E C4 91 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80182E90  38 61 00 14 */	addi r3, r1, 0x14
/* 80182E94  7F E4 FB 78 */	mr r4, r31
/* 80182E98  38 A1 00 30 */	addi r5, r1, 0x30
/* 80182E9C  38 C1 00 08 */	addi r6, r1, 8
/* 80182EA0  48 0E 58 71 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80182EA4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80182EA8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80182EAC:
/* 80182EAC  A0 7A 00 00 */	lhz r3, 0(r26)
/* 80182EB0  38 03 FF FF */	addi r0, r3, -1
/* 80182EB4  7C 1C 00 00 */	cmpw r28, r0
/* 80182EB8  41 82 00 30 */	beq lbl_80182EE8
/* 80182EBC  38 61 00 14 */	addi r3, r1, 0x14
/* 80182EC0  38 9D 00 04 */	addi r4, r29, 4
/* 80182EC4  38 BD 00 14 */	addi r5, r29, 0x14
/* 80182EC8  48 0E C4 55 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80182ECC  38 61 00 14 */	addi r3, r1, 0x14
/* 80182ED0  7F E4 FB 78 */	mr r4, r31
/* 80182ED4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80182ED8  38 C1 00 08 */	addi r6, r1, 8
/* 80182EDC  48 0E 58 35 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80182EE0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80182EE4  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80182EE8:
/* 80182EE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80182EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80182EF0  41 82 00 7C */	beq lbl_80182F6C
/* 80182EF4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80182EF8  2C 00 00 00 */	cmpwi r0, 0
/* 80182EFC  41 82 00 54 */	beq lbl_80182F50
/* 80182F00  38 61 00 3C */	addi r3, r1, 0x3c
/* 80182F04  7F E4 FB 78 */	mr r4, r31
/* 80182F08  48 1C 44 95 */	bl PSVECSquareDistance
/* 80182F0C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80182F10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80182F14  40 81 00 20 */	ble lbl_80182F34
/* 80182F18  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80182F1C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F20  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80182F24  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F28  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80182F2C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F30  48 00 00 7C */	b lbl_80182FAC
lbl_80182F34:
/* 80182F34  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80182F38  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F3C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80182F40  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F44  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80182F48  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F4C  48 00 00 60 */	b lbl_80182FAC
lbl_80182F50:
/* 80182F50  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80182F54  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F58  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80182F5C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F60  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80182F64  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F68  48 00 00 44 */	b lbl_80182FAC
lbl_80182F6C:
/* 80182F6C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80182F70  2C 00 00 00 */	cmpwi r0, 0
/* 80182F74  41 82 00 20 */	beq lbl_80182F94
/* 80182F78  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80182F7C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F80  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80182F84  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182F88  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80182F8C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80182F90  48 00 00 1C */	b lbl_80182FAC
lbl_80182F94:
/* 80182F94  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80182F98  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80182F9C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80182FA0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80182FA4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80182FA8  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80182FAC:
/* 80182FAC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80182FB0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80182FB4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80182FB8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80182FBC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80182FC0  39 61 00 60 */	addi r11, r1, 0x60
/* 80182FC4  48 1D F2 59 */	bl _restgpr_26
/* 80182FC8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80182FCC  7C 08 03 A6 */	mtlr r0
/* 80182FD0  38 21 00 70 */	addi r1, r1, 0x70
/* 80182FD4  4E 80 00 20 */	blr 
