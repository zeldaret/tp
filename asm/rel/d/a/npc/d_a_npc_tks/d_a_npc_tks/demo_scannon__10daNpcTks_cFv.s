lbl_80B18D44:
/* 80B18D44  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B18D48  7C 08 02 A6 */	mflr r0
/* 80B18D4C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B18D50  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B18D54  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B18D58  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80B18D5C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80B18D60  39 61 00 60 */	addi r11, r1, 0x60
/* 80B18D64  4B 84 94 61 */	bl _savegpr_23
/* 80B18D68  7C 7C 1B 78 */	mr r28, r3
/* 80B18D6C  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B18D70  3B E4 DD 58 */	addi r31, r4, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B18D74  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B18D78  2C 00 00 02 */	cmpwi r0, 2
/* 80B18D7C  41 82 00 6C */	beq lbl_80B18DE8
/* 80B18D80  40 80 04 C4 */	bge lbl_80B19244
/* 80B18D84  2C 00 00 00 */	cmpwi r0, 0
/* 80B18D88  41 82 00 0C */	beq lbl_80B18D94
/* 80B18D8C  48 00 04 B8 */	b lbl_80B19244
/* 80B18D90  48 00 04 B4 */	b lbl_80B19244
lbl_80B18D94:
/* 80B18D94  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80B18D98  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B18D9C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B18DA0  38 80 00 01 */	li r4, 1
/* 80B18DA4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B18DA8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B18DAC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B18DB0  7D 89 03 A6 */	mtctr r12
/* 80B18DB4  4E 80 04 21 */	bctrl 
/* 80B18DB8  7F 83 E3 78 */	mr r3, r28
/* 80B18DBC  38 80 00 00 */	li r4, 0
/* 80B18DC0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B18DC4  38 A0 00 00 */	li r5, 0
/* 80B18DC8  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B18DCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B18DD0  7D 89 03 A6 */	mtctr r12
/* 80B18DD4  4E 80 04 21 */	bctrl 
/* 80B18DD8  38 00 00 00 */	li r0, 0
/* 80B18DDC  98 1C 13 8A */	stb r0, 0x138a(r28)
/* 80B18DE0  38 00 00 02 */	li r0, 2
/* 80B18DE4  B0 1C 13 88 */	sth r0, 0x1388(r28)
lbl_80B18DE8:
/* 80B18DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B18DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B18DF0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B18DF4  28 00 00 00 */	cmplwi r0, 0
/* 80B18DF8  41 82 04 4C */	beq lbl_80B19244
/* 80B18DFC  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80B18E00  28 00 00 01 */	cmplwi r0, 1
/* 80B18E04  41 82 04 40 */	beq lbl_80B19244
/* 80B18E08  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B18E0C  7F C3 F3 78 */	mr r3, r30
/* 80B18E10  3C 80 80 B2 */	lis r4, l_myName@ha /* 0x80B1E20C@ha */
/* 80B18E14  38 84 E2 0C */	addi r4, r4, l_myName@l /* 0x80B1E20C@l */
/* 80B18E18  80 84 00 00 */	lwz r4, 0(r4)
/* 80B18E1C  38 A0 00 00 */	li r5, 0
/* 80B18E20  38 C0 00 00 */	li r6, 0
/* 80B18E24  4B 52 EC F9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B18E28  7C 79 1B 78 */	mr r25, r3
/* 80B18E2C  2C 19 FF FF */	cmpwi r25, -1
/* 80B18E30  41 82 04 14 */	beq lbl_80B19244
/* 80B18E34  7F C3 F3 78 */	mr r3, r30
/* 80B18E38  7F 3D CB 78 */	mr r29, r25
/* 80B18E3C  7F 24 CB 78 */	mr r4, r25
/* 80B18E40  4B 52 F1 1D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B18E44  7C 78 1B 78 */	mr r24, r3
/* 80B18E48  7F C3 F3 78 */	mr r3, r30
/* 80B18E4C  7F 24 CB 78 */	mr r4, r25
/* 80B18E50  4B 52 EE FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B18E54  2C 03 00 00 */	cmpwi r3, 0
/* 80B18E58  41 82 00 DC */	beq lbl_80B18F34
/* 80B18E5C  80 98 00 00 */	lwz r4, 0(r24)
/* 80B18E60  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B18E64  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B18E68  7C 04 00 00 */	cmpw r4, r0
/* 80B18E6C  41 82 00 1C */	beq lbl_80B18E88
/* 80B18E70  40 80 00 08 */	bge lbl_80B18E78
/* 80B18E74  48 00 00 C0 */	b lbl_80B18F34
lbl_80B18E78:
/* 80B18E78  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B18E7C  7C 04 00 00 */	cmpw r4, r0
/* 80B18E80  40 80 00 B4 */	bge lbl_80B18F34
/* 80B18E84  48 00 00 6C */	b lbl_80B18EF0
lbl_80B18E88:
/* 80B18E88  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 80B18E8C  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80B18E90  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 80B18E94  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80B18E98  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80B18E9C  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80B18EA0  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 80B18EA4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B18EA8  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80B18EAC  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B18EB0  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 80B18EB4  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80B18EB8  7F 83 E3 78 */	mr r3, r28
/* 80B18EBC  38 80 D3 5E */	li r4, -11426
/* 80B18EC0  4B 63 B3 91 */	bl setAngle__8daNpcF_cFs
/* 80B18EC4  C0 1F 02 04 */	lfs f0, 0x204(r31)
/* 80B18EC8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B18ECC  7F 83 E3 78 */	mr r3, r28
/* 80B18ED0  38 80 00 02 */	li r4, 2
/* 80B18ED4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B18ED8  38 A0 00 00 */	li r5, 0
/* 80B18EDC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B18EE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B18EE4  7D 89 03 A6 */	mtctr r12
/* 80B18EE8  4E 80 04 21 */	bctrl 
/* 80B18EEC  48 00 00 48 */	b lbl_80B18F34
lbl_80B18EF0:
/* 80B18EF0  7F 83 E3 78 */	mr r3, r28
/* 80B18EF4  38 80 00 04 */	li r4, 4
/* 80B18EF8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B18EFC  38 A0 00 00 */	li r5, 0
/* 80B18F00  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B18F04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B18F08  7D 89 03 A6 */	mtctr r12
/* 80B18F0C  4E 80 04 21 */	bctrl 
/* 80B18F10  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B18F14  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B18F18  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B18F1C  7F 83 E3 78 */	mr r3, r28
/* 80B18F20  38 80 00 00 */	li r4, 0
/* 80B18F24  4B 63 B3 2D */	bl setAngle__8daNpcF_cFs
/* 80B18F28  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B18F2C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B18F30  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80B18F34:
/* 80B18F34  80 98 00 00 */	lwz r4, 0(r24)
/* 80B18F38  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B18F3C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B18F40  7C 04 00 00 */	cmpw r4, r0
/* 80B18F44  41 82 00 38 */	beq lbl_80B18F7C
/* 80B18F48  40 80 00 14 */	bge lbl_80B18F5C
/* 80B18F4C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B18F50  7C 04 00 00 */	cmpw r4, r0
/* 80B18F54  40 80 00 18 */	bge lbl_80B18F6C
/* 80B18F58  48 00 02 EC */	b lbl_80B19244
lbl_80B18F5C:
/* 80B18F5C  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B18F60  7C 04 00 00 */	cmpw r4, r0
/* 80B18F64  40 80 02 E0 */	bge lbl_80B19244
/* 80B18F68  48 00 02 44 */	b lbl_80B191AC
lbl_80B18F6C:
/* 80B18F6C  7F C3 F3 78 */	mr r3, r30
/* 80B18F70  7F A4 EB 78 */	mr r4, r29
/* 80B18F74  4B 52 F2 09 */	bl cutEnd__16dEvent_manager_cFi
/* 80B18F78  48 00 02 CC */	b lbl_80B19244
lbl_80B18F7C:
/* 80B18F7C  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 80B18F80  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B18F84  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 80B18F88  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B18F8C  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80B18F90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B18F94  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B18F98  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B18F9C  4B 75 7C 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B18FA0  7C 64 1B 78 */	mr r4, r3
/* 80B18FA4  7F 83 E3 78 */	mr r3, r28
/* 80B18FA8  4B 63 B2 A9 */	bl setAngle__8daNpcF_cFs
/* 80B18FAC  38 7C 13 7C */	addi r3, r28, 0x137c
/* 80B18FB0  38 9C 13 80 */	addi r4, r28, 0x1380
/* 80B18FB4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80B18FB8  38 DC 08 F0 */	addi r6, r28, 0x8f0
/* 80B18FBC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B18FC0  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80B18FC4  39 00 00 00 */	li r8, 0
/* 80B18FC8  4B 50 40 59 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B18FCC  3A E0 00 00 */	li r23, 0
/* 80B18FD0  3B 60 00 00 */	li r27, 0
/* 80B18FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B18FD8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B18FDC  C3 DF 00 B0 */	lfs f30, 0xb0(r31)
/* 80B18FE0  3B 20 00 1E */	li r25, 0x1e
/* 80B18FE4  3B 40 00 80 */	li r26, 0x80
/* 80B18FE8  C3 FF 02 14 */	lfs f31, 0x214(r31)
lbl_80B18FEC:
/* 80B18FEC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80B18FF0  38 63 02 10 */	addi r3, r3, 0x210
/* 80B18FF4  38 1B 13 7C */	addi r0, r27, 0x137c
/* 80B18FF8  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80B18FFC  4B 53 29 1D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80B19000  28 03 00 00 */	cmplwi r3, 0
/* 80B19004  41 82 00 18 */	beq lbl_80B1901C
/* 80B19008  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 80B1900C  B3 23 00 52 */	sth r25, 0x52(r3)
/* 80B19010  9B 43 00 BB */	stb r26, 0xbb(r3)
/* 80B19014  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80B19018  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80B1901C:
/* 80B1901C  3A F7 00 01 */	addi r23, r23, 1
/* 80B19020  2C 17 00 02 */	cmpwi r23, 2
/* 80B19024  3B 7B 00 04 */	addi r27, r27, 4
/* 80B19028  41 80 FF C4 */	blt lbl_80B18FEC
/* 80B1902C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050030@ha */
/* 80B19030  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00050030@l */
/* 80B19034  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B19038  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B1903C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B19040  38 A0 FF FF */	li r5, -1
/* 80B19044  81 9C 0B 48 */	lwz r12, 0xb48(r28)
/* 80B19048  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B1904C  7D 89 03 A6 */	mtctr r12
/* 80B19050  4E 80 04 21 */	bctrl 
/* 80B19054  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80B19058  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B1905C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B19060  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B19064  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B19068  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B1906C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B19070  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B19074  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B19078  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B1907C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B19080  38 61 00 14 */	addi r3, r1, 0x14
/* 80B19084  38 81 00 20 */	addi r4, r1, 0x20
/* 80B19088  4B 82 E3 15 */	bl PSVECSquareDistance
/* 80B1908C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B19090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19094  40 81 00 58 */	ble lbl_80B190EC
/* 80B19098  FC 00 08 34 */	frsqrte f0, f1
/* 80B1909C  C8 9F 02 18 */	lfd f4, 0x218(r31)
/* 80B190A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B190A4  C8 7F 02 20 */	lfd f3, 0x220(r31)
/* 80B190A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B190AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B190B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B190B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B190B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B190BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B190C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B190C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B190C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B190CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B190D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B190D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B190D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B190DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B190E0  FC 21 00 32 */	fmul f1, f1, f0
/* 80B190E4  FC 20 08 18 */	frsp f1, f1
/* 80B190E8  48 00 00 88 */	b lbl_80B19170
lbl_80B190EC:
/* 80B190EC  C8 1F 02 28 */	lfd f0, 0x228(r31)
/* 80B190F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B190F4  40 80 00 10 */	bge lbl_80B19104
/* 80B190F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B190FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B19100  48 00 00 70 */	b lbl_80B19170
lbl_80B19104:
/* 80B19104  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B19108  80 81 00 08 */	lwz r4, 8(r1)
/* 80B1910C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B19110  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B19114  7C 03 00 00 */	cmpw r3, r0
/* 80B19118  41 82 00 14 */	beq lbl_80B1912C
/* 80B1911C  40 80 00 40 */	bge lbl_80B1915C
/* 80B19120  2C 03 00 00 */	cmpwi r3, 0
/* 80B19124  41 82 00 20 */	beq lbl_80B19144
/* 80B19128  48 00 00 34 */	b lbl_80B1915C
lbl_80B1912C:
/* 80B1912C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B19130  41 82 00 0C */	beq lbl_80B1913C
/* 80B19134  38 00 00 01 */	li r0, 1
/* 80B19138  48 00 00 28 */	b lbl_80B19160
lbl_80B1913C:
/* 80B1913C  38 00 00 02 */	li r0, 2
/* 80B19140  48 00 00 20 */	b lbl_80B19160
lbl_80B19144:
/* 80B19144  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B19148  41 82 00 0C */	beq lbl_80B19154
/* 80B1914C  38 00 00 05 */	li r0, 5
/* 80B19150  48 00 00 10 */	b lbl_80B19160
lbl_80B19154:
/* 80B19154  38 00 00 03 */	li r0, 3
/* 80B19158  48 00 00 08 */	b lbl_80B19160
lbl_80B1915C:
/* 80B1915C  38 00 00 04 */	li r0, 4
lbl_80B19160:
/* 80B19160  2C 00 00 01 */	cmpwi r0, 1
/* 80B19164  40 82 00 0C */	bne lbl_80B19170
/* 80B19168  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B1916C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B19170:
/* 80B19170  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80B19174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19178  40 80 00 CC */	bge lbl_80B19244
/* 80B1917C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B19180  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B19184  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B19188  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B1918C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B19190  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80B19194  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B19198  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B1919C  7F C3 F3 78 */	mr r3, r30
/* 80B191A0  7F A4 EB 78 */	mr r4, r29
/* 80B191A4  4B 52 EF D9 */	bl cutEnd__16dEvent_manager_cFi
/* 80B191A8  48 00 00 9C */	b lbl_80B19244
lbl_80B191AC:
/* 80B191AC  A8 1C 09 DA */	lha r0, 0x9da(r28)
/* 80B191B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B191B4  40 82 00 58 */	bne lbl_80B1920C
/* 80B191B8  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B191BC  38 63 00 0C */	addi r3, r3, 0xc
/* 80B191C0  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 80B191C4  4B 80 F2 69 */	bl checkPass__12J3DFrameCtrlFf
/* 80B191C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B191CC  41 82 00 40 */	beq lbl_80B1920C
/* 80B191D0  C0 1F 02 04 */	lfs f0, 0x204(r31)
/* 80B191D4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B191D8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B191DC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B191E0  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B191E4  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B191E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B191EC  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B191F0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B191F4  38 A0 00 00 */	li r5, 0
/* 80B191F8  38 C0 FF FF */	li r6, -1
/* 80B191FC  81 9C 0B 48 */	lwz r12, 0xb48(r28)
/* 80B19200  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B19204  7D 89 03 A6 */	mtctr r12
/* 80B19208  4E 80 04 21 */	bctrl 
lbl_80B1920C:
/* 80B1920C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80B19210  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B19214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19218  40 81 00 2C */	ble lbl_80B19244
/* 80B1921C  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B19220  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80B19224  41 82 00 20 */	beq lbl_80B19244
/* 80B19228  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B1922C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B19230  7F C3 F3 78 */	mr r3, r30
/* 80B19234  7F A4 EB 78 */	mr r4, r29
/* 80B19238  4B 52 EF 45 */	bl cutEnd__16dEvent_manager_cFi
/* 80B1923C  7F 83 E3 78 */	mr r3, r28
/* 80B19240  4B 50 0A 3D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B19244:
/* 80B19244  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B19248  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B1924C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80B19250  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80B19254  39 61 00 60 */	addi r11, r1, 0x60
/* 80B19258  4B 84 8F B9 */	bl _restgpr_23
/* 80B1925C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B19260  7C 08 03 A6 */	mtlr r0
/* 80B19264  38 21 00 80 */	addi r1, r1, 0x80
/* 80B19268  4E 80 00 20 */	blr 
