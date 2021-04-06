lbl_80808E34:
/* 80808E34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80808E38  7C 08 02 A6 */	mflr r0
/* 80808E3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80808E40  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80808E44  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80808E48  7C 7F 1B 78 */	mr r31, r3
/* 80808E4C  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 80808E50  3B C3 59 94 */	addi r30, r3, lit_3925@l /* 0x80815994@l */
/* 80808E54  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80808E58  28 00 00 01 */	cmplwi r0, 1
/* 80808E5C  40 82 01 88 */	bne lbl_80808FE4
/* 80808E60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80808E64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80808E68  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80808E6C  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80808E70  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80808E74  40 82 00 10 */	bne lbl_80808E84
/* 80808E78  80 04 05 84 */	lwz r0, 0x584(r4)
/* 80808E7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80808E80  41 82 01 64 */	beq lbl_80808FE4
lbl_80808E84:
/* 80808E84  38 61 00 18 */	addi r3, r1, 0x18
/* 80808E88  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80808E8C  38 BF 06 70 */	addi r5, r31, 0x670
/* 80808E90  4B A5 DC A5 */	bl __mi__4cXyzCFRC3Vec
/* 80808E94  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80808E98  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80808E9C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80808EA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80808EA4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80808EA8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80808EAC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80808EB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80808EB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80808EB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80808EBC  38 61 00 0C */	addi r3, r1, 0xc
/* 80808EC0  4B B3 E2 79 */	bl PSVECSquareMag
/* 80808EC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80808EC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80808ECC  40 81 00 58 */	ble lbl_80808F24
/* 80808ED0  FC 00 08 34 */	frsqrte f0, f1
/* 80808ED4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80808ED8  FC 44 00 32 */	fmul f2, f4, f0
/* 80808EDC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80808EE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80808EE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80808EE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80808EEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80808EF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80808EF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80808EF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80808EFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80808F00  FC 02 00 32 */	fmul f0, f2, f0
/* 80808F04  FC 44 00 32 */	fmul f2, f4, f0
/* 80808F08  FC 00 00 32 */	fmul f0, f0, f0
/* 80808F0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80808F10  FC 03 00 28 */	fsub f0, f3, f0
/* 80808F14  FC 02 00 32 */	fmul f0, f2, f0
/* 80808F18  FC 21 00 32 */	fmul f1, f1, f0
/* 80808F1C  FC 20 08 18 */	frsp f1, f1
/* 80808F20  48 00 00 88 */	b lbl_80808FA8
lbl_80808F24:
/* 80808F24  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80808F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80808F2C  40 80 00 10 */	bge lbl_80808F3C
/* 80808F30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80808F34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80808F38  48 00 00 70 */	b lbl_80808FA8
lbl_80808F3C:
/* 80808F3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80808F40  80 81 00 08 */	lwz r4, 8(r1)
/* 80808F44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80808F48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80808F4C  7C 03 00 00 */	cmpw r3, r0
/* 80808F50  41 82 00 14 */	beq lbl_80808F64
/* 80808F54  40 80 00 40 */	bge lbl_80808F94
/* 80808F58  2C 03 00 00 */	cmpwi r3, 0
/* 80808F5C  41 82 00 20 */	beq lbl_80808F7C
/* 80808F60  48 00 00 34 */	b lbl_80808F94
lbl_80808F64:
/* 80808F64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80808F68  41 82 00 0C */	beq lbl_80808F74
/* 80808F6C  38 00 00 01 */	li r0, 1
/* 80808F70  48 00 00 28 */	b lbl_80808F98
lbl_80808F74:
/* 80808F74  38 00 00 02 */	li r0, 2
/* 80808F78  48 00 00 20 */	b lbl_80808F98
lbl_80808F7C:
/* 80808F7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80808F80  41 82 00 0C */	beq lbl_80808F8C
/* 80808F84  38 00 00 05 */	li r0, 5
/* 80808F88  48 00 00 10 */	b lbl_80808F98
lbl_80808F8C:
/* 80808F8C  38 00 00 03 */	li r0, 3
/* 80808F90  48 00 00 08 */	b lbl_80808F98
lbl_80808F94:
/* 80808F94  38 00 00 04 */	li r0, 4
lbl_80808F98:
/* 80808F98  2C 00 00 01 */	cmpwi r0, 1
/* 80808F9C  40 82 00 0C */	bne lbl_80808FA8
/* 80808FA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80808FA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80808FA8:
/* 80808FA8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80808FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80808FB0  40 80 00 34 */	bge lbl_80808FE4
/* 80808FB4  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 80808FB8  28 00 00 00 */	cmplwi r0, 0
/* 80808FBC  41 82 00 14 */	beq lbl_80808FD0
/* 80808FC0  7F E3 FB 78 */	mr r3, r31
/* 80808FC4  38 80 00 0B */	li r4, 0xb
/* 80808FC8  48 00 0F D5 */	bl setActionMode__8daE_YM_cFi
/* 80808FCC  48 00 00 10 */	b lbl_80808FDC
lbl_80808FD0:
/* 80808FD0  7F E3 FB 78 */	mr r3, r31
/* 80808FD4  38 80 00 07 */	li r4, 7
/* 80808FD8  48 00 0F C5 */	bl setActionMode__8daE_YM_cFi
lbl_80808FDC:
/* 80808FDC  38 60 00 01 */	li r3, 1
/* 80808FE0  48 00 00 08 */	b lbl_80808FE8
lbl_80808FE4:
/* 80808FE4  38 60 00 00 */	li r3, 0
lbl_80808FE8:
/* 80808FE8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80808FEC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80808FF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80808FF4  7C 08 03 A6 */	mtlr r0
/* 80808FF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80808FFC  4E 80 00 20 */	blr 
