lbl_80588D00:
/* 80588D00  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80588D04  7C 08 02 A6 */	mflr r0
/* 80588D08  90 01 00 84 */	stw r0, 0x84(r1)
/* 80588D0C  39 61 00 80 */	addi r11, r1, 0x80
/* 80588D10  4B DD 94 C8 */	b _savegpr_28
/* 80588D14  7C 7D 1B 78 */	mr r29, r3
/* 80588D18  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha
/* 80588D1C  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l
/* 80588D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80588D24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80588D28  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80588D2C  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80588D30  28 00 00 02 */	cmplwi r0, 2
/* 80588D34  40 82 02 0C */	bne lbl_80588F40
/* 80588D38  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80588D3C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80588D40  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80588D44  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80588D48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80588D4C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80588D50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80588D54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80588D58  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80588D5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80588D60  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80588D64  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80588D68  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80588D6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80588D70  3C 60 80 59 */	lis r3, search_coach__FPvPv@ha
/* 80588D74  38 63 80 78 */	addi r3, r3, search_coach__FPvPv@l
/* 80588D78  7F A4 EB 78 */	mr r4, r29
/* 80588D7C  4B A9 0A 7C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80588D80  7C 7C 1B 79 */	or. r28, r3, r3
/* 80588D84  41 82 00 CC */	beq lbl_80588E50
/* 80588D88  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80588D8C  4B A8 3F D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80588D90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80588D94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80588D98  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80588D9C  4B A8 36 98 */	b mDoMtx_YrotM__FPA4_fs
/* 80588DA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80588DA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80588DA8  38 81 00 20 */	addi r4, r1, 0x20
/* 80588DAC  7C 85 23 78 */	mr r5, r4
/* 80588DB0  4B DB DF BC */	b PSMTXMultVec
/* 80588DB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80588DB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80588DBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80588DC0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80588DC4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80588DC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80588DCC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80588DD0  38 63 00 24 */	addi r3, r3, 0x24
/* 80588DD4  38 81 00 38 */	addi r4, r1, 0x38
/* 80588DD8  4B DB D7 D8 */	b PSMTXInverse
/* 80588DDC  38 61 00 38 */	addi r3, r1, 0x38
/* 80588DE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80588DE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80588DE8  4B DB D6 C8 */	b PSMTXCopy
/* 80588DEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80588DF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80588DF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80588DF8  7C 85 23 78 */	mr r5, r4
/* 80588DFC  4B DB DF 70 */	b PSMTXMultVec
/* 80588E00  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80588E04  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80588E08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80588E0C  4C 40 13 82 */	cror 2, 0, 2
/* 80588E10  40 82 00 40 */	bne lbl_80588E50
/* 80588E14  C0 01 00 08 */	lfs f0, 8(r1)
/* 80588E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588E1C  4C 40 13 82 */	cror 2, 0, 2
/* 80588E20  40 82 00 30 */	bne lbl_80588E50
/* 80588E24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80588E28  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80588E2C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80588E30  4C 40 13 82 */	cror 2, 0, 2
/* 80588E34  40 82 00 1C */	bne lbl_80588E50
/* 80588E38  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80588E3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588E40  4C 40 13 82 */	cror 2, 0, 2
/* 80588E44  40 82 00 0C */	bne lbl_80588E50
/* 80588E48  38 60 00 02 */	li r3, 2
/* 80588E4C  48 00 02 70 */	b lbl_805890BC
lbl_80588E50:
/* 80588E50  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80588E54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80588E58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80588E5C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80588E60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80588E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80588E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80588E6C  83 83 5D B8 */	lwz r28, 0x5db8(r3)
/* 80588E70  28 1C 00 00 */	cmplwi r28, 0
/* 80588E74  41 82 00 CC */	beq lbl_80588F40
/* 80588E78  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80588E7C  4B A8 3E E8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80588E80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80588E84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80588E88  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80588E8C  4B A8 35 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80588E90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80588E94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80588E98  38 81 00 20 */	addi r4, r1, 0x20
/* 80588E9C  7C 85 23 78 */	mr r5, r4
/* 80588EA0  4B DB DE CC */	b PSMTXMultVec
/* 80588EA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80588EA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80588EAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80588EB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80588EB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80588EB8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80588EBC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80588EC0  38 63 00 24 */	addi r3, r3, 0x24
/* 80588EC4  38 81 00 38 */	addi r4, r1, 0x38
/* 80588EC8  4B DB D6 E8 */	b PSMTXInverse
/* 80588ECC  38 61 00 38 */	addi r3, r1, 0x38
/* 80588ED0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80588ED4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80588ED8  4B DB D5 D8 */	b PSMTXCopy
/* 80588EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80588EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80588EE4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80588EE8  7C 85 23 78 */	mr r5, r4
/* 80588EEC  4B DB DE 80 */	b PSMTXMultVec
/* 80588EF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80588EF4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80588EF8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80588EFC  4C 40 13 82 */	cror 2, 0, 2
/* 80588F00  40 82 00 40 */	bne lbl_80588F40
/* 80588F04  C0 01 00 08 */	lfs f0, 8(r1)
/* 80588F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588F0C  4C 40 13 82 */	cror 2, 0, 2
/* 80588F10  40 82 00 30 */	bne lbl_80588F40
/* 80588F14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80588F18  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80588F1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80588F20  4C 40 13 82 */	cror 2, 0, 2
/* 80588F24  40 82 00 1C */	bne lbl_80588F40
/* 80588F28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80588F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588F30  4C 40 13 82 */	cror 2, 0, 2
/* 80588F34  40 82 00 0C */	bne lbl_80588F40
/* 80588F38  38 60 00 03 */	li r3, 3
/* 80588F3C  48 00 01 80 */	b lbl_805890BC
lbl_80588F40:
/* 80588F40  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80588F44  28 00 00 00 */	cmplwi r0, 0
/* 80588F48  41 82 00 0C */	beq lbl_80588F54
/* 80588F4C  28 00 00 01 */	cmplwi r0, 1
/* 80588F50  40 82 00 30 */	bne lbl_80588F80
lbl_80588F54:
/* 80588F54  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80588F58  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80588F5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80588F60  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80588F64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80588F68  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80588F6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80588F70  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80588F74  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80588F78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80588F7C  48 00 00 2C */	b lbl_80588FA8
lbl_80588F80:
/* 80588F80  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80588F84  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80588F88  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80588F8C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80588F90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80588F94  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80588F98  D0 01 00 08 */	stfs f0, 8(r1)
/* 80588F9C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80588FA0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80588FA4  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80588FA8:
/* 80588FA8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80588FAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80588FB0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80588FB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80588FB8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80588FBC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80588FC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80588FC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80588FC8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80588FCC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80588FD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80588FD4  41 82 00 1C */	beq lbl_80588FF0
/* 80588FD8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80588FDC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80588FE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80588FE4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80588FE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80588FEC  48 00 00 14 */	b lbl_80589000
lbl_80588FF0:
/* 80588FF0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80588FF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80588FF8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80588FFC  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80589000:
/* 80589000  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589004  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80589008  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8058900C  4B A8 33 D0 */	b mDoMtx_YrotS__FPA4_fs
/* 80589010  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589014  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80589018  38 81 00 20 */	addi r4, r1, 0x20
/* 8058901C  7C 85 23 78 */	mr r5, r4
/* 80589020  4B DB DD 4C */	b PSMTXMultVec
/* 80589024  38 61 00 2C */	addi r3, r1, 0x2c
/* 80589028  38 81 00 20 */	addi r4, r1, 0x20
/* 8058902C  7C 65 1B 78 */	mr r5, r3
/* 80589030  4B DB E0 60 */	b PSVECAdd
/* 80589034  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80589038  38 63 00 24 */	addi r3, r3, 0x24
/* 8058903C  38 81 00 38 */	addi r4, r1, 0x38
/* 80589040  4B DB D5 70 */	b PSMTXInverse
/* 80589044  38 61 00 38 */	addi r3, r1, 0x38
/* 80589048  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8058904C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80589050  4B DB D4 60 */	b PSMTXCopy
/* 80589054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589058  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058905C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80589060  7C 85 23 78 */	mr r5, r4
/* 80589064  4B DB DD 08 */	b PSMTXMultVec
/* 80589068  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8058906C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80589070  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80589074  4C 40 13 82 */	cror 2, 0, 2
/* 80589078  40 82 00 40 */	bne lbl_805890B8
/* 8058907C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80589080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589084  4C 40 13 82 */	cror 2, 0, 2
/* 80589088  40 82 00 30 */	bne lbl_805890B8
/* 8058908C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80589090  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80589094  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80589098  4C 40 13 82 */	cror 2, 0, 2
/* 8058909C  40 82 00 1C */	bne lbl_805890B8
/* 805890A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805890A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805890A8  4C 40 13 82 */	cror 2, 0, 2
/* 805890AC  40 82 00 0C */	bne lbl_805890B8
/* 805890B0  38 60 00 01 */	li r3, 1
/* 805890B4  48 00 00 08 */	b lbl_805890BC
lbl_805890B8:
/* 805890B8  38 60 00 00 */	li r3, 0
lbl_805890BC:
/* 805890BC  39 61 00 80 */	addi r11, r1, 0x80
/* 805890C0  4B DD 91 64 */	b _restgpr_28
/* 805890C4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805890C8  7C 08 03 A6 */	mtlr r0
/* 805890CC  38 21 00 80 */	addi r1, r1, 0x80
/* 805890D0  4E 80 00 20 */	blr 
