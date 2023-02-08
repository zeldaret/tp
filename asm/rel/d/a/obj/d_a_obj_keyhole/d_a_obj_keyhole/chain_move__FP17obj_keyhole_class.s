lbl_80C41D6C:
/* 80C41D6C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80C41D70  7C 08 02 A6 */	mflr r0
/* 80C41D74  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80C41D78  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80C41D7C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80C41D80  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80C41D84  4B 72 04 25 */	bl _savegpr_16
/* 80C41D88  7C 7C 1B 78 */	mr r28, r3
/* 80C41D8C  3C 60 80 C4 */	lis r3, lit_1109@ha /* 0x80C43CA8@ha */
/* 80C41D90  3B C3 3C A8 */	addi r30, r3, lit_1109@l /* 0x80C43CA8@l */
/* 80C41D94  3C 60 80 C4 */	lis r3, lit_3655@ha /* 0x80C439E4@ha */
/* 80C41D98  3B E3 39 E4 */	addi r31, r3, lit_3655@l /* 0x80C439E4@l */
/* 80C41D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C41DA0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C41DA4  83 BB 5D AC */	lwz r29, 0x5dac(r27)
/* 80C41DA8  88 1E 00 64 */	lbz r0, 0x64(r30)
/* 80C41DAC  7C 00 07 75 */	extsb. r0, r0
/* 80C41DB0  40 82 01 70 */	bne lbl_80C41F20
/* 80C41DB4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C41DB8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80C41DBC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C41DC0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C41DC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C41DC8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C41DCC  D0 5E 00 A4 */	stfs f2, 0xa4(r30)
/* 80C41DD0  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41DD4  D0 23 00 04 */	stfs f1, 4(r3)
/* 80C41DD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C41DDC  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C41DE0  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C41DE4  38 BE 00 58 */	addi r5, r30, 0x58
/* 80C41DE8  4B FF F3 F1 */	bl __register_global_object
/* 80C41DEC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C41DF0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80C41DF4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C41DF8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C41DFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C41E00  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C41E04  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41E08  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80C41E0C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80C41E10  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C41E14  38 63 00 0C */	addi r3, r3, 0xc
/* 80C41E18  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C41E1C  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C41E20  38 BE 00 68 */	addi r5, r30, 0x68
/* 80C41E24  4B FF F3 B5 */	bl __register_global_object
/* 80C41E28  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C41E2C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80C41E30  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C41E34  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C41E38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C41E3C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C41E40  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41E44  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80C41E48  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80C41E4C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C41E50  38 63 00 18 */	addi r3, r3, 0x18
/* 80C41E54  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C41E58  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C41E5C  38 BE 00 74 */	addi r5, r30, 0x74
/* 80C41E60  4B FF F3 79 */	bl __register_global_object
/* 80C41E64  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C41E68  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C41E6C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C41E70  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C41E74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C41E78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C41E7C  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41E80  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80C41E84  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80C41E88  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80C41E8C  38 63 00 24 */	addi r3, r3, 0x24
/* 80C41E90  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C41E94  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C41E98  38 BE 00 80 */	addi r5, r30, 0x80
/* 80C41E9C  4B FF F3 3D */	bl __register_global_object
/* 80C41EA0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C41EA4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C41EA8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C41EAC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C41EB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C41EB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C41EB8  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41EBC  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80C41EC0  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80C41EC4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80C41EC8  38 63 00 30 */	addi r3, r3, 0x30
/* 80C41ECC  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C41ED0  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C41ED4  38 BE 00 8C */	addi r5, r30, 0x8c
/* 80C41ED8  4B FF F3 01 */	bl __register_global_object
/* 80C41EDC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C41EE0  D0 41 00 08 */	stfs f2, 8(r1)
/* 80C41EE4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C41EE8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C41EEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C41EF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C41EF4  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41EF8  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80C41EFC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80C41F00  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80C41F04  38 63 00 3C */	addi r3, r3, 0x3c
/* 80C41F08  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha /* 0x80C41654@ha */
/* 80C41F0C  38 84 16 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C41654@l */
/* 80C41F10  38 BE 00 98 */	addi r5, r30, 0x98
/* 80C41F14  4B FF F2 C5 */	bl __register_global_object
/* 80C41F18  38 00 00 01 */	li r0, 1
/* 80C41F1C  98 1E 00 64 */	stb r0, 0x64(r30)
lbl_80C41F20:
/* 80C41F20  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80C41F24  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C41F28  28 00 00 00 */	cmplwi r0, 0
/* 80C41F2C  41 82 00 08 */	beq lbl_80C41F34
/* 80C41F30  C3 FF 00 48 */	lfs f31, 0x48(r31)
lbl_80C41F34:
/* 80C41F34  3A C0 00 00 */	li r22, 0
/* 80C41F38  3A 80 00 00 */	li r20, 0
/* 80C41F3C  3A 60 00 00 */	li r19, 0
/* 80C41F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C41F44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C41F48  3B 23 23 3C */	addi r25, r3, 0x233c
/* 80C41F4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C41F50  3B 43 07 68 */	addi r26, r3, calc_mtx@l /* 0x80450768@l */
lbl_80C41F54:
/* 80C41F54  80 7A 00 00 */	lwz r3, 0(r26)
/* 80C41F58  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80C41F5C  4B 3C A4 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C41F60  FC 20 F8 90 */	fmr f1, f31
/* 80C41F64  FC 40 F8 90 */	fmr f2, f31
/* 80C41F68  FC 60 F8 90 */	fmr f3, f31
/* 80C41F6C  38 60 00 01 */	li r3, 1
/* 80C41F70  4B 62 EF 35 */	bl MtxScale__FfffUc
/* 80C41F74  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80C41F78  7C 63 9A 14 */	add r3, r3, r19
/* 80C41F7C  7F 1C A2 14 */	add r24, r28, r20
/* 80C41F80  3A 18 06 64 */	addi r16, r24, 0x664
/* 80C41F84  7E 04 83 78 */	mr r4, r16
/* 80C41F88  4B 62 EF 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C41F8C  7E 03 83 78 */	mr r3, r16
/* 80C41F90  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80C41F94  7E 05 83 78 */	mr r5, r16
/* 80C41F98  4B 70 50 F9 */	bl PSVECAdd
/* 80C41F9C  88 1C 2C A6 */	lbz r0, 0x2ca6(r28)
/* 80C41FA0  7C 00 07 75 */	extsb. r0, r0
/* 80C41FA4  40 82 00 64 */	bne lbl_80C42008
/* 80C41FA8  7F 83 E3 78 */	mr r3, r28
/* 80C41FAC  3A 18 06 24 */	addi r16, r24, 0x624
/* 80C41FB0  7E 04 83 78 */	mr r4, r16
/* 80C41FB4  7E C5 B3 78 */	mr r5, r22
/* 80C41FB8  4B FF F4 9D */	bl chain_control1__FP17obj_keyhole_classP10kh_chain_si
/* 80C41FBC  C0 1C 2C A8 */	lfs f0, 0x2ca8(r28)
/* 80C41FC0  D0 18 06 70 */	stfs f0, 0x670(r24)
/* 80C41FC4  C0 1C 2C AC */	lfs f0, 0x2cac(r28)
/* 80C41FC8  D0 18 06 74 */	stfs f0, 0x674(r24)
/* 80C41FCC  C0 1C 2C B0 */	lfs f0, 0x2cb0(r28)
/* 80C41FD0  D0 18 06 78 */	stfs f0, 0x678(r24)
/* 80C41FD4  7F 83 E3 78 */	mr r3, r28
/* 80C41FD8  7E 04 83 78 */	mr r4, r16
/* 80C41FDC  7E C5 B3 78 */	mr r5, r22
/* 80C41FE0  4B FF F9 E5 */	bl chain_control2__FP17obj_keyhole_classP10kh_chain_si
/* 80C41FE4  7F 83 E3 78 */	mr r3, r28
/* 80C41FE8  7E 04 83 78 */	mr r4, r16
/* 80C41FEC  7E C5 B3 78 */	mr r5, r22
/* 80C41FF0  4B FF FC 95 */	bl chain_control3__FP17obj_keyhole_classP10kh_chain_si
/* 80C41FF4  38 78 08 5C */	addi r3, r24, 0x85c
/* 80C41FF8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C41FFC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80C42000  4B 62 DA 81 */	bl cLib_addCalc0__FPfff
/* 80C42004  48 00 00 24 */	b lbl_80C42028
lbl_80C42008:
/* 80C42008  7F 83 E3 78 */	mr r3, r28
/* 80C4200C  38 98 06 24 */	addi r4, r24, 0x624
/* 80C42010  7E C5 B3 78 */	mr r5, r22
/* 80C42014  4B FF F6 7D */	bl chain_control1_2__FP17obj_keyhole_classP10kh_chain_si
/* 80C42018  38 78 08 5C */	addi r3, r24, 0x85c
/* 80C4201C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C42020  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80C42024  4B 62 DA 5D */	bl cLib_addCalc0__FPfff
lbl_80C42028:
/* 80C42028  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80C4202C  28 03 00 00 */	cmplwi r3, 0
/* 80C42030  41 82 00 B4 */	beq lbl_80C420E4
/* 80C42034  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80C42038  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C4203C  41 82 00 A8 */	beq lbl_80C420E4
/* 80C42040  C0 18 06 7C */	lfs f0, 0x67c(r24)
/* 80C42044  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 80C42048  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C4204C  C0 18 06 84 */	lfs f0, 0x684(r24)
/* 80C42050  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80C42054  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C42058  EC 21 00 72 */	fmuls f1, f1, f1
/* 80C4205C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C42060  EC 21 00 2A */	fadds f1, f1, f0
/* 80C42064  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C42068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4206C  40 81 00 0C */	ble lbl_80C42078
/* 80C42070  FC 00 08 34 */	frsqrte f0, f1
/* 80C42074  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80C42078:
/* 80C42078  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4207C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C42080  40 80 00 10 */	bge lbl_80C42090
/* 80C42084  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C42088  D0 18 08 5C */	stfs f0, 0x85c(r24)
/* 80C4208C  48 00 01 90 */	b lbl_80C4221C
lbl_80C42090:
/* 80C42090  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 80C42094  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C42098  7C 78 02 14 */	add r3, r24, r0
/* 80C4209C  C0 03 06 70 */	lfs f0, 0x670(r3)
/* 80C420A0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C420A4  C0 03 06 78 */	lfs f0, 0x678(r3)
/* 80C420A8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C420AC  EC 21 00 72 */	fmuls f1, f1, f1
/* 80C420B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C420B4  EC 21 00 2A */	fadds f1, f1, f0
/* 80C420B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C420BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C420C0  40 81 00 0C */	ble lbl_80C420CC
/* 80C420C4  FC 00 08 34 */	frsqrte f0, f1
/* 80C420C8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80C420CC:
/* 80C420CC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C420D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C420D4  40 80 01 48 */	bge lbl_80C4221C
/* 80C420D8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C420DC  D0 18 08 5C */	stfs f0, 0x85c(r24)
/* 80C420E0  48 00 01 3C */	b lbl_80C4221C
lbl_80C420E4:
/* 80C420E4  3A A0 00 00 */	li r21, 0
/* 80C420E8  3A 40 00 00 */	li r18, 0
/* 80C420EC  3A 20 00 00 */	li r17, 0
/* 80C420F0  3A 00 00 00 */	li r16, 0
lbl_80C420F4:
/* 80C420F4  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C420F8  28 00 00 00 */	cmplwi r0, 0
/* 80C420FC  40 82 00 34 */	bne lbl_80C42130
/* 80C42100  7C 78 82 14 */	add r3, r24, r16
/* 80C42104  C0 03 06 AC */	lfs f0, 0x6ac(r3)
/* 80C42108  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C4210C  C0 03 06 B0 */	lfs f0, 0x6b0(r3)
/* 80C42110  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C42114  C0 03 06 B4 */	lfs f0, 0x6b4(r3)
/* 80C42118  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C4211C  38 71 09 C0 */	addi r3, r17, 0x9c0
/* 80C42120  7C 78 1A 14 */	add r3, r24, r3
/* 80C42124  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C42128  4B 62 D5 E1 */	bl SetR__8cM3dGSphFf
/* 80C4212C  48 00 00 30 */	b lbl_80C4215C
lbl_80C42130:
/* 80C42130  7C 78 92 14 */	add r3, r24, r18
/* 80C42134  C0 03 06 A0 */	lfs f0, 0x6a0(r3)
/* 80C42138  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C4213C  C0 03 06 A4 */	lfs f0, 0x6a4(r3)
/* 80C42140  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C42144  C0 03 06 A8 */	lfs f0, 0x6a8(r3)
/* 80C42148  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C4214C  38 71 09 C0 */	addi r3, r17, 0x9c0
/* 80C42150  7C 78 1A 14 */	add r3, r24, r3
/* 80C42154  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C42158  4B 62 D5 B1 */	bl SetR__8cM3dGSphFf
lbl_80C4215C:
/* 80C4215C  A8 1C 06 18 */	lha r0, 0x618(r28)
/* 80C42160  2C 00 00 00 */	cmpwi r0, 0
/* 80C42164  41 82 00 14 */	beq lbl_80C42178
/* 80C42168  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80C4216C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C42170  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C42174  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80C42178:
/* 80C42178  7E F8 8A 14 */	add r23, r24, r17
/* 80C4217C  38 77 09 C0 */	addi r3, r23, 0x9c0
/* 80C42180  38 81 00 50 */	addi r4, r1, 0x50
/* 80C42184  4B 62 D4 C5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C42188  7F 23 CB 78 */	mr r3, r25
/* 80C4218C  3A F7 08 9C */	addi r23, r23, 0x89c
/* 80C42190  7E E4 BB 78 */	mr r4, r23
/* 80C42194  4B 62 2A 15 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C42198  7E E3 BB 78 */	mr r3, r23
/* 80C4219C  4B 44 22 C5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C421A0  28 03 00 00 */	cmplwi r3, 0
/* 80C421A4  41 82 00 60 */	beq lbl_80C42204
/* 80C421A8  7E E3 BB 78 */	mr r3, r23
/* 80C421AC  4B 44 23 4D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C421B0  90 7C 2C 78 */	stw r3, 0x2c78(r28)
/* 80C421B4  38 00 00 0A */	li r0, 0xa
/* 80C421B8  B0 1C 06 18 */	sth r0, 0x618(r28)
/* 80C421BC  38 7C 2C 78 */	addi r3, r28, 0x2c78
/* 80C421C0  4B 44 58 99 */	bl at_power_check__FP11dCcU_AtInfo
/* 80C421C4  88 1C 2C 98 */	lbz r0, 0x2c98(r28)
/* 80C421C8  28 00 00 02 */	cmplwi r0, 2
/* 80C421CC  40 82 00 10 */	bne lbl_80C421DC
/* 80C421D0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C421D4  D0 18 08 5C */	stfs f0, 0x85c(r24)
/* 80C421D8  48 00 00 0C */	b lbl_80C421E4
lbl_80C421DC:
/* 80C421DC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C421E0  D0 18 08 5C */	stfs f0, 0x85c(r24)
lbl_80C421E4:
/* 80C421E4  7E E3 BB 78 */	mr r3, r23
/* 80C421E8  4B 44 23 11 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C421EC  90 7C 2C 78 */	stw r3, 0x2c78(r28)
/* 80C421F0  38 7C 05 88 */	addi r3, r28, 0x588
/* 80C421F4  80 9C 2C 78 */	lwz r4, 0x2c78(r28)
/* 80C421F8  38 A0 00 35 */	li r5, 0x35
/* 80C421FC  38 C0 00 00 */	li r6, 0
/* 80C42200  4B 44 53 15 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_80C42204:
/* 80C42204  3A B5 00 01 */	addi r21, r21, 1
/* 80C42208  2C 15 00 03 */	cmpwi r21, 3
/* 80C4220C  3A 52 00 24 */	addi r18, r18, 0x24
/* 80C42210  3A 31 01 38 */	addi r17, r17, 0x138
/* 80C42214  3A 10 00 30 */	addi r16, r16, 0x30
/* 80C42218  41 80 FE DC */	blt lbl_80C420F4
lbl_80C4221C:
/* 80C4221C  3A D6 00 01 */	addi r22, r22, 1
/* 80C42220  2C 16 00 06 */	cmpwi r22, 6
/* 80C42224  3A 94 06 20 */	addi r20, r20, 0x620
/* 80C42228  3A 73 00 0C */	addi r19, r19, 0xc
/* 80C4222C  41 80 FD 28 */	blt lbl_80C41F54
/* 80C42230  3A E0 00 00 */	li r23, 0
/* 80C42234  3B 20 00 00 */	li r25, 0
/* 80C42238  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C4223C  3A 03 07 68 */	addi r16, r3, calc_mtx@l /* 0x80450768@l */
lbl_80C42240:
/* 80C42240  3A B9 06 24 */	addi r21, r25, 0x624
/* 80C42244  7E BC AA 14 */	add r21, r28, r21
/* 80C42248  3A C0 00 00 */	li r22, 0
/* 80C4224C  3B 00 00 00 */	li r24, 0
/* 80C42250  3B 40 00 00 */	li r26, 0
/* 80C42254  3B 60 00 00 */	li r27, 0
/* 80C42258  3B A0 00 00 */	li r29, 0
/* 80C4225C  48 00 00 E8 */	b lbl_80C42344
lbl_80C42260:
/* 80C42260  7C 75 EA 14 */	add r3, r21, r29
/* 80C42264  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80C42268  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 80C4226C  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80C42270  38 60 00 00 */	li r3, 0
/* 80C42274  4B 62 EB E9 */	bl MtxTrans__FfffUc
/* 80C42278  88 1C 2C A6 */	lbz r0, 0x2ca6(r28)
/* 80C4227C  7C 00 07 75 */	extsb. r0, r0
/* 80C42280  40 82 00 34 */	bne lbl_80C422B4
/* 80C42284  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C42288  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C4228C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C42290  7E 35 DA 14 */	add r17, r21, r27
/* 80C42294  A8 91 01 DA */	lha r4, 0x1da(r17)
/* 80C42298  4B 3C A1 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C4229C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C422A0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C422A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C422A8  A8 91 01 D8 */	lha r4, 0x1d8(r17)
/* 80C422AC  4B 3C A0 F1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C422B0  48 00 00 30 */	b lbl_80C422E0
lbl_80C422B4:
/* 80C422B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C422B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C422BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C422C0  7E 35 DA 14 */	add r17, r21, r27
/* 80C422C4  A8 91 01 D8 */	lha r4, 0x1d8(r17)
/* 80C422C8  4B 3C A0 D5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C422CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C422D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C422D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C422D8  A8 91 01 DA */	lha r4, 0x1da(r17)
/* 80C422DC  4B 3C A1 59 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80C422E0:
/* 80C422E0  80 70 00 00 */	lwz r3, 0(r16)
/* 80C422E4  7E C4 B3 78 */	mr r4, r22
/* 80C422E8  4B 3C A1 E5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C422EC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C422F0  FC 40 08 90 */	fmr f2, f1
/* 80C422F4  FC 60 08 90 */	fmr f3, f1
/* 80C422F8  38 60 00 01 */	li r3, 1
/* 80C422FC  4B 62 EB A9 */	bl MtxScale__FfffUc
/* 80C42300  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C42304  FC 40 08 90 */	fmr f2, f1
/* 80C42308  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80C4230C  38 60 00 01 */	li r3, 1
/* 80C42310  4B 62 EB 4D */	bl MtxTrans__FfffUc
/* 80C42314  80 70 00 00 */	lwz r3, 0(r16)
/* 80C42318  38 80 40 00 */	li r4, 0x4000
/* 80C4231C  4B 3C A1 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C42320  80 70 00 00 */	lwz r3, 0(r16)
/* 80C42324  7C 95 D0 2E */	lwzx r4, r21, r26
/* 80C42328  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4232C  4B 70 41 85 */	bl PSMTXCopy
/* 80C42330  3A D6 3D 00 */	addi r22, r22, 0x3d00
/* 80C42334  3B 18 00 01 */	addi r24, r24, 1
/* 80C42338  3B 5A 00 04 */	addi r26, r26, 4
/* 80C4233C  3B 7B 00 06 */	addi r27, r27, 6
/* 80C42340  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80C42344:
/* 80C42344  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 80C42348  7C 18 00 00 */	cmpw r24, r0
/* 80C4234C  41 80 FF 14 */	blt lbl_80C42260
/* 80C42350  3A F7 00 01 */	addi r23, r23, 1
/* 80C42354  2C 17 00 06 */	cmpwi r23, 6
/* 80C42358  3B 39 06 20 */	addi r25, r25, 0x620
/* 80C4235C  41 80 FE E4 */	blt lbl_80C42240
/* 80C42360  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80C42364  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80C42368  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80C4236C  4B 71 FE 89 */	bl _restgpr_16
/* 80C42370  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80C42374  7C 08 03 A6 */	mtlr r0
/* 80C42378  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80C4237C  4E 80 00 20 */	blr 
