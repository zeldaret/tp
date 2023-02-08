lbl_80D1FFA4:
/* 80D1FFA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D1FFA8  7C 08 02 A6 */	mflr r0
/* 80D1FFAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D1FFB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D1FFB4  4B 64 22 29 */	bl _savegpr_29
/* 80D1FFB8  7C 7D 1B 78 */	mr r29, r3
/* 80D1FFBC  7C 9E 23 78 */	mr r30, r4
/* 80D1FFC0  3C 60 80 D2 */	lis r3, lit_3638@ha /* 0x80D20308@ha */
/* 80D1FFC4  3B E3 03 08 */	addi r31, r3, lit_3638@l /* 0x80D20308@l */
/* 80D1FFC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1FFCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1FFD0  38 63 00 28 */	addi r3, r3, 0x28
/* 80D1FFD4  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 80D1FFD8  54 00 10 3A */	slwi r0, r0, 2
/* 80D1FFDC  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 80D1FFE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D1FFE4  4B 31 2B CD */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80D1FFE8  2C 03 00 01 */	cmpwi r3, 1
/* 80D1FFEC  40 82 00 0C */	bne lbl_80D1FFF8
/* 80D1FFF0  7F A3 EB 78 */	mr r3, r29
/* 80D1FFF4  4B 2F 9C 89 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D1FFF8:
/* 80D1FFF8  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 80D1FFFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D20000  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D20004  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D20008  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D2000C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80D20010  38 C1 00 08 */	addi r6, r1, 8
/* 80D20014  4B 54 86 FD */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80D20018  C0 21 00 08 */	lfs f1, 8(r1)
/* 80D2001C  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 80D20020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D20024  40 81 00 0C */	ble lbl_80D20030
/* 80D20028  FC 00 08 34 */	frsqrte f0, f1
/* 80D2002C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80D20030:
/* 80D20030  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D206AC@ha */
/* 80D20034  38 63 06 AC */	addi r3, r3, l_HIO@l /* 0x80D206AC@l */
/* 80D20038  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D2003C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D20040  4C 40 13 82 */	cror 2, 0, 2
/* 80D20044  40 82 00 1C */	bne lbl_80D20060
/* 80D20048  C0 3F 02 40 */	lfs f1, 0x240(r31)
/* 80D2004C  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 80D20050  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D20054  41 82 00 20 */	beq lbl_80D20074
/* 80D20058  D0 3D 05 D0 */	stfs f1, 0x5d0(r29)
/* 80D2005C  48 00 00 18 */	b lbl_80D20074
lbl_80D20060:
/* 80D20060  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 80D20064  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 80D20068  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D2006C  41 82 00 08 */	beq lbl_80D20074
/* 80D20070  D0 3D 05 D0 */	stfs f1, 0x5d0(r29)
lbl_80D20074:
/* 80D20074  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80D20078  4B 2E D3 B1 */	bl play__14mDoExt_baseAnmFv
/* 80D2007C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80D20080  4B 2E D3 A9 */	bl play__14mDoExt_baseAnmFv
/* 80D20084  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D20088  38 03 00 24 */	addi r0, r3, 0x24
/* 80D2008C  90 1E 00 00 */	stw r0, 0(r30)
/* 80D20090  7F A3 EB 78 */	mr r3, r29
/* 80D20094  4B FF FA F1 */	bl setBaseMtx__10daTwGate_cFv
/* 80D20098  38 60 00 01 */	li r3, 1
/* 80D2009C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D200A0  4B 64 21 89 */	bl _restgpr_29
/* 80D200A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D200A8  7C 08 03 A6 */	mtlr r0
/* 80D200AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80D200B0  4E 80 00 20 */	blr 
