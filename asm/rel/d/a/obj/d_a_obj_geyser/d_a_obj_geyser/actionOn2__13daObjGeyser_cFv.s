lbl_80BF7CA0:
/* 80BF7CA0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BF7CA4  7C 08 02 A6 */	mflr r0
/* 80BF7CA8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BF7CAC  39 61 00 70 */	addi r11, r1, 0x70
/* 80BF7CB0  4B 76 A5 2D */	bl _savegpr_29
/* 80BF7CB4  7C 7E 1B 78 */	mr r30, r3
/* 80BF7CB8  3C 80 80 C0 */	lis r4, l_dzb@ha /* 0x80BF8FE8@ha */
/* 80BF7CBC  3B E4 8F E8 */	addi r31, r4, l_dzb@l /* 0x80BF8FE8@l */
/* 80BF7CC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF7CC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF7CC8  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80BF7CCC  A0 03 07 66 */	lhz r0, 0x766(r3)
/* 80BF7CD0  54 00 C7 3F */	rlwinm. r0, r0, 0x18, 0x1c, 0x1f
/* 80BF7CD4  40 82 00 54 */	bne lbl_80BF7D28
/* 80BF7CD8  7F A4 EB 78 */	mr r4, r29
/* 80BF7CDC  4B 42 2B 05 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BF7CE0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BF7CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF7CE8  40 81 00 1C */	ble lbl_80BF7D04
/* 80BF7CEC  7F C3 F3 78 */	mr r3, r30
/* 80BF7CF0  48 00 09 4D */	bl cutPntWind__13daObjGeyser_cFv
/* 80BF7CF4  7F C3 F3 78 */	mr r3, r30
/* 80BF7CF8  38 80 00 00 */	li r4, 0
/* 80BF7CFC  48 00 04 5D */	bl actionDisappearInit__13daObjGeyser_cFUc
/* 80BF7D00  48 00 03 E0 */	b lbl_80BF80E0
lbl_80BF7D04:
/* 80BF7D04  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BF7D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF7D0C  40 81 03 D4 */	ble lbl_80BF80E0
/* 80BF7D10  7F C3 F3 78 */	mr r3, r30
/* 80BF7D14  48 00 09 29 */	bl cutPntWind__13daObjGeyser_cFv
/* 80BF7D18  7F C3 F3 78 */	mr r3, r30
/* 80BF7D1C  38 80 00 01 */	li r4, 1
/* 80BF7D20  48 00 04 39 */	bl actionDisappearInit__13daObjGeyser_cFUc
/* 80BF7D24  48 00 03 BC */	b lbl_80BF80E0
lbl_80BF7D28:
/* 80BF7D28  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF7D2C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BF7D30  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BF7D34  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BF7D38  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BF7D3C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BF7D40  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BF7D44  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF7D48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BF7D4C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF7D50  4B 41 50 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF7D54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF7D58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF7D5C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF7D60  4B 41 46 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BF7D64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF7D68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF7D6C  38 81 00 28 */	addi r4, r1, 0x28
/* 80BF7D70  7C 85 23 78 */	mr r5, r4
/* 80BF7D74  4B 74 EF F9 */	bl PSMTXMultVec
/* 80BF7D78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF7D7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF7D80  38 81 00 34 */	addi r4, r1, 0x34
/* 80BF7D84  7C 85 23 78 */	mr r5, r4
/* 80BF7D88  4B 74 EF E5 */	bl PSMTXMultVec
/* 80BF7D8C  3C 60 80 C0 */	lis r3, __vt__8cM3dGLin@ha /* 0x80BF920C@ha */
/* 80BF7D90  38 03 92 0C */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80BF920C@l */
/* 80BF7D94  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BF7D98  38 61 00 40 */	addi r3, r1, 0x40
/* 80BF7D9C  38 81 00 34 */	addi r4, r1, 0x34
/* 80BF7DA0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80BF7DA4  4B 67 75 45 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80BF7DA8  38 61 00 40 */	addi r3, r1, 0x40
/* 80BF7DAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BF7DB0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80BF7DB4  38 C1 00 18 */	addi r6, r1, 0x18
/* 80BF7DB8  4B 67 09 59 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80BF7DBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF7DC0  41 82 00 F8 */	beq lbl_80BF7EB8
/* 80BF7DC4  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 80BF7DC8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF7DCC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7DD0  40 81 00 58 */	ble lbl_80BF7E28
/* 80BF7DD4  FC 00 20 34 */	frsqrte f0, f4
/* 80BF7DD8  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BF7DDC  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7DE0  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80BF7DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7DE8  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7DEC  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7DF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7DF4  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7DFC  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7E00  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7E04  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7E08  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7E0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7E10  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7E14  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7E18  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7E1C  FC 84 00 32 */	fmul f4, f4, f0
/* 80BF7E20  FC 80 20 18 */	frsp f4, f4
/* 80BF7E24  48 00 00 88 */	b lbl_80BF7EAC
lbl_80BF7E28:
/* 80BF7E28  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF7E2C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7E30  40 80 00 10 */	bge lbl_80BF7E40
/* 80BF7E34  3C 80 80 45 */	lis r4, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF7E38  C0 84 0A E0 */	lfs f4, __float_nan@l(r4)  /* 0x80450AE0@l */
/* 80BF7E3C  48 00 00 70 */	b lbl_80BF7EAC
lbl_80BF7E40:
/* 80BF7E40  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80BF7E44  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80BF7E48  54 A4 00 50 */	rlwinm r4, r5, 0, 1, 8
/* 80BF7E4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF7E50  7C 04 00 00 */	cmpw r4, r0
/* 80BF7E54  41 82 00 14 */	beq lbl_80BF7E68
/* 80BF7E58  40 80 00 40 */	bge lbl_80BF7E98
/* 80BF7E5C  2C 04 00 00 */	cmpwi r4, 0
/* 80BF7E60  41 82 00 20 */	beq lbl_80BF7E80
/* 80BF7E64  48 00 00 34 */	b lbl_80BF7E98
lbl_80BF7E68:
/* 80BF7E68  54 A0 02 7F */	clrlwi. r0, r5, 9
/* 80BF7E6C  41 82 00 0C */	beq lbl_80BF7E78
/* 80BF7E70  38 00 00 01 */	li r0, 1
/* 80BF7E74  48 00 00 28 */	b lbl_80BF7E9C
lbl_80BF7E78:
/* 80BF7E78  38 00 00 02 */	li r0, 2
/* 80BF7E7C  48 00 00 20 */	b lbl_80BF7E9C
lbl_80BF7E80:
/* 80BF7E80  54 A0 02 7F */	clrlwi. r0, r5, 9
/* 80BF7E84  41 82 00 0C */	beq lbl_80BF7E90
/* 80BF7E88  38 00 00 05 */	li r0, 5
/* 80BF7E8C  48 00 00 10 */	b lbl_80BF7E9C
lbl_80BF7E90:
/* 80BF7E90  38 00 00 03 */	li r0, 3
/* 80BF7E94  48 00 00 08 */	b lbl_80BF7E9C
lbl_80BF7E98:
/* 80BF7E98  38 00 00 04 */	li r0, 4
lbl_80BF7E9C:
/* 80BF7E9C  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7EA0  40 82 00 0C */	bne lbl_80BF7EAC
/* 80BF7EA4  3C 80 80 45 */	lis r4, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF7EA8  C0 84 0A E0 */	lfs f4, __float_nan@l(r4)  /* 0x80450AE0@l */
lbl_80BF7EAC:
/* 80BF7EAC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF7EB0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7EB4  40 81 00 1C */	ble lbl_80BF7ED0
lbl_80BF7EB8:
/* 80BF7EB8  7F C3 F3 78 */	mr r3, r30
/* 80BF7EBC  48 00 07 81 */	bl cutPntWind__13daObjGeyser_cFv
/* 80BF7EC0  7F C3 F3 78 */	mr r3, r30
/* 80BF7EC4  38 80 00 00 */	li r4, 0
/* 80BF7EC8  48 00 02 91 */	bl actionDisappearInit__13daObjGeyser_cFUc
/* 80BF7ECC  48 00 02 08 */	b lbl_80BF80D4
lbl_80BF7ED0:
/* 80BF7ED0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF7ED4  41 82 02 00 */	beq lbl_80BF80D4
/* 80BF7ED8  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 80BF7EDC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF7EE0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7EE4  40 81 00 58 */	ble lbl_80BF7F3C
/* 80BF7EE8  FC 00 20 34 */	frsqrte f0, f4
/* 80BF7EEC  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BF7EF0  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7EF4  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80BF7EF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7EFC  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7F00  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7F04  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7F08  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7F0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7F10  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7F14  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7F18  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7F1C  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7F20  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7F24  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7F28  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7F30  FC 84 00 32 */	fmul f4, f4, f0
/* 80BF7F34  FC 80 20 18 */	frsp f4, f4
/* 80BF7F38  48 00 00 88 */	b lbl_80BF7FC0
lbl_80BF7F3C:
/* 80BF7F3C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF7F40  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7F44  40 80 00 10 */	bge lbl_80BF7F54
/* 80BF7F48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF7F4C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BF7F50  48 00 00 70 */	b lbl_80BF7FC0
lbl_80BF7F54:
/* 80BF7F54  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80BF7F58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BF7F5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BF7F60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF7F64  7C 03 00 00 */	cmpw r3, r0
/* 80BF7F68  41 82 00 14 */	beq lbl_80BF7F7C
/* 80BF7F6C  40 80 00 40 */	bge lbl_80BF7FAC
/* 80BF7F70  2C 03 00 00 */	cmpwi r3, 0
/* 80BF7F74  41 82 00 20 */	beq lbl_80BF7F94
/* 80BF7F78  48 00 00 34 */	b lbl_80BF7FAC
lbl_80BF7F7C:
/* 80BF7F7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF7F80  41 82 00 0C */	beq lbl_80BF7F8C
/* 80BF7F84  38 00 00 01 */	li r0, 1
/* 80BF7F88  48 00 00 28 */	b lbl_80BF7FB0
lbl_80BF7F8C:
/* 80BF7F8C  38 00 00 02 */	li r0, 2
/* 80BF7F90  48 00 00 20 */	b lbl_80BF7FB0
lbl_80BF7F94:
/* 80BF7F94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF7F98  41 82 00 0C */	beq lbl_80BF7FA4
/* 80BF7F9C  38 00 00 05 */	li r0, 5
/* 80BF7FA0  48 00 00 10 */	b lbl_80BF7FB0
lbl_80BF7FA4:
/* 80BF7FA4  38 00 00 03 */	li r0, 3
/* 80BF7FA8  48 00 00 08 */	b lbl_80BF7FB0
lbl_80BF7FAC:
/* 80BF7FAC  38 00 00 04 */	li r0, 4
lbl_80BF7FB0:
/* 80BF7FB0  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7FB4  40 82 00 0C */	bne lbl_80BF7FC0
/* 80BF7FB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF7FBC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BF7FC0:
/* 80BF7FC0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF7FC4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7FC8  40 80 01 0C */	bge lbl_80BF80D4
/* 80BF7FCC  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 80BF7FD0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF7FD4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7FD8  40 81 00 58 */	ble lbl_80BF8030
/* 80BF7FDC  FC 00 20 34 */	frsqrte f0, f4
/* 80BF7FE0  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BF7FE4  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7FE8  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80BF7FEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7FF0  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7FF4  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7FF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7FFC  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF8000  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF8004  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF8008  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF800C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF8010  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF8014  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF8018  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF801C  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF8020  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF8024  FC 84 00 32 */	fmul f4, f4, f0
/* 80BF8028  FC 80 20 18 */	frsp f4, f4
/* 80BF802C  48 00 00 88 */	b lbl_80BF80B4
lbl_80BF8030:
/* 80BF8030  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF8034  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF8038  40 80 00 10 */	bge lbl_80BF8048
/* 80BF803C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF8040  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BF8044  48 00 00 70 */	b lbl_80BF80B4
lbl_80BF8048:
/* 80BF8048  D0 81 00 08 */	stfs f4, 8(r1)
/* 80BF804C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BF8050  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BF8054  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF8058  7C 03 00 00 */	cmpw r3, r0
/* 80BF805C  41 82 00 14 */	beq lbl_80BF8070
/* 80BF8060  40 80 00 40 */	bge lbl_80BF80A0
/* 80BF8064  2C 03 00 00 */	cmpwi r3, 0
/* 80BF8068  41 82 00 20 */	beq lbl_80BF8088
/* 80BF806C  48 00 00 34 */	b lbl_80BF80A0
lbl_80BF8070:
/* 80BF8070  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF8074  41 82 00 0C */	beq lbl_80BF8080
/* 80BF8078  38 00 00 01 */	li r0, 1
/* 80BF807C  48 00 00 28 */	b lbl_80BF80A4
lbl_80BF8080:
/* 80BF8080  38 00 00 02 */	li r0, 2
/* 80BF8084  48 00 00 20 */	b lbl_80BF80A4
lbl_80BF8088:
/* 80BF8088  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF808C  41 82 00 0C */	beq lbl_80BF8098
/* 80BF8090  38 00 00 05 */	li r0, 5
/* 80BF8094  48 00 00 10 */	b lbl_80BF80A4
lbl_80BF8098:
/* 80BF8098  38 00 00 03 */	li r0, 3
/* 80BF809C  48 00 00 08 */	b lbl_80BF80A4
lbl_80BF80A0:
/* 80BF80A0  38 00 00 04 */	li r0, 4
lbl_80BF80A4:
/* 80BF80A4  2C 00 00 01 */	cmpwi r0, 1
/* 80BF80A8  40 82 00 0C */	bne lbl_80BF80B4
/* 80BF80AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF80B0  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BF80B4:
/* 80BF80B4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BF80B8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF80BC  40 81 00 18 */	ble lbl_80BF80D4
/* 80BF80C0  7F C3 F3 78 */	mr r3, r30
/* 80BF80C4  48 00 05 79 */	bl cutPntWind__13daObjGeyser_cFv
/* 80BF80C8  7F C3 F3 78 */	mr r3, r30
/* 80BF80CC  38 80 00 01 */	li r4, 1
/* 80BF80D0  48 00 00 89 */	bl actionDisappearInit__13daObjGeyser_cFUc
lbl_80BF80D4:
/* 80BF80D4  3C 60 80 C0 */	lis r3, __vt__8cM3dGLin@ha /* 0x80BF920C@ha */
/* 80BF80D8  38 03 92 0C */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80BF920C@l */
/* 80BF80DC  90 01 00 58 */	stw r0, 0x58(r1)
lbl_80BF80E0:
/* 80BF80E0  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80BF80E4  38 7E 07 30 */	addi r3, r30, 0x730
/* 80BF80E8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BF80EC  EC 40 00 72 */	fmuls f2, f0, f1
/* 80BF80F0  4B 67 86 51 */	bl cLib_chaseF__FPfff
/* 80BF80F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF80F8  7C 03 07 74 */	extsb r3, r0
/* 80BF80FC  4B 43 4F 71 */	bl dComIfGp_getReverb__Fi
/* 80BF8100  7C 67 1B 78 */	mr r7, r3
/* 80BF8104  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080089@ha */
/* 80BF8108  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00080089@l */
/* 80BF810C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8110  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF8114  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF8118  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF811C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF8120  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BF8124  38 C0 00 00 */	li r6, 0
/* 80BF8128  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BF812C  FC 40 08 90 */	fmr f2, f1
/* 80BF8130  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80BF8134  FC 80 18 90 */	fmr f4, f3
/* 80BF8138  39 00 00 00 */	li r8, 0
/* 80BF813C  4B 6B 43 D1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF8140  39 61 00 70 */	addi r11, r1, 0x70
/* 80BF8144  4B 76 A0 E5 */	bl _restgpr_29
/* 80BF8148  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BF814C  7C 08 03 A6 */	mtlr r0
/* 80BF8150  38 21 00 70 */	addi r1, r1, 0x70
/* 80BF8154  4E 80 00 20 */	blr 
