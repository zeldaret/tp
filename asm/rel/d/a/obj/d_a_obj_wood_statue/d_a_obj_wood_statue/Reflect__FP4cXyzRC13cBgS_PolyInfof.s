lbl_80D39E38:
/* 80D39E38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80D39E3C  7C 08 02 A6 */	mflr r0
/* 80D39E40  90 01 00 94 */	stw r0, 0x94(r1)
/* 80D39E44  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80D39E48  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80D39E4C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80D39E50  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80D39E54  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80D39E58  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80D39E5C  7C 7F 1B 78 */	mr r31, r3
/* 80D39E60  FF E0 08 90 */	fmr f31, f1
/* 80D39E64  3C 60 80 D4 */	lis r3, l_cyl_src@ha /* 0x80D3B638@ha */
/* 80D39E68  3B C3 B6 38 */	addi r30, r3, l_cyl_src@l /* 0x80D3B638@l */
/* 80D39E6C  3C 60 80 D4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D3B8E4@ha */
/* 80D39E70  38 03 B8 E4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D3B8E4@l */
/* 80D39E74  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D39E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D39E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D39E80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D39E84  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80D39E88  4B 33 A8 BD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D39E8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D39E90  41 82 02 6C */	beq lbl_80D3A0FC
/* 80D39E94  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D39E98  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D39E9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D39EA0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D39EA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D39EA8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D39EAC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80D39EB0  4B 60 D2 89 */	bl PSVECSquareMag
/* 80D39EB4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D39EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D39EBC  40 81 00 58 */	ble lbl_80D39F14
/* 80D39EC0  FC 00 08 34 */	frsqrte f0, f1
/* 80D39EC4  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80D39EC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D39ECC  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80D39ED0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D39ED4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D39ED8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D39EDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D39EE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D39EE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D39EE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D39EEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D39EF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D39EF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D39EF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D39EFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D39F00  FC 03 00 28 */	fsub f0, f3, f0
/* 80D39F04  FC 02 00 32 */	fmul f0, f2, f0
/* 80D39F08  FF C1 00 32 */	fmul f30, f1, f0
/* 80D39F0C  FF C0 F0 18 */	frsp f30, f30
/* 80D39F10  48 00 00 90 */	b lbl_80D39FA0
lbl_80D39F14:
/* 80D39F14  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80D39F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D39F1C  40 80 00 10 */	bge lbl_80D39F2C
/* 80D39F20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D39F24  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D39F28  48 00 00 78 */	b lbl_80D39FA0
lbl_80D39F2C:
/* 80D39F2C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D39F30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D39F34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D39F38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D39F3C  7C 03 00 00 */	cmpw r3, r0
/* 80D39F40  41 82 00 14 */	beq lbl_80D39F54
/* 80D39F44  40 80 00 40 */	bge lbl_80D39F84
/* 80D39F48  2C 03 00 00 */	cmpwi r3, 0
/* 80D39F4C  41 82 00 20 */	beq lbl_80D39F6C
/* 80D39F50  48 00 00 34 */	b lbl_80D39F84
lbl_80D39F54:
/* 80D39F54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D39F58  41 82 00 0C */	beq lbl_80D39F64
/* 80D39F5C  38 00 00 01 */	li r0, 1
/* 80D39F60  48 00 00 28 */	b lbl_80D39F88
lbl_80D39F64:
/* 80D39F64  38 00 00 02 */	li r0, 2
/* 80D39F68  48 00 00 20 */	b lbl_80D39F88
lbl_80D39F6C:
/* 80D39F6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D39F70  41 82 00 0C */	beq lbl_80D39F7C
/* 80D39F74  38 00 00 05 */	li r0, 5
/* 80D39F78  48 00 00 10 */	b lbl_80D39F88
lbl_80D39F7C:
/* 80D39F7C  38 00 00 03 */	li r0, 3
/* 80D39F80  48 00 00 08 */	b lbl_80D39F88
lbl_80D39F84:
/* 80D39F84  38 00 00 04 */	li r0, 4
lbl_80D39F88:
/* 80D39F88  2C 00 00 01 */	cmpwi r0, 1
/* 80D39F8C  40 82 00 10 */	bne lbl_80D39F9C
/* 80D39F90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D39F94  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D39F98  48 00 00 08 */	b lbl_80D39FA0
lbl_80D39F9C:
/* 80D39F9C  FF C0 08 90 */	fmr f30, f1
lbl_80D39FA0:
/* 80D39FA0  7F E3 FB 78 */	mr r3, r31
/* 80D39FA4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D39FA8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80D39FAC  4B 60 D3 1D */	bl C_VECReflect
/* 80D39FB0  38 61 00 34 */	addi r3, r1, 0x34
/* 80D39FB4  38 81 00 40 */	addi r4, r1, 0x40
/* 80D39FB8  FC 20 F0 90 */	fmr f1, f30
/* 80D39FBC  4B 52 CB C9 */	bl __ml__4cXyzCFf
/* 80D39FC0  38 61 00 28 */	addi r3, r1, 0x28
/* 80D39FC4  38 81 00 34 */	addi r4, r1, 0x34
/* 80D39FC8  FC 20 F8 90 */	fmr f1, f31
/* 80D39FCC  4B 52 CB B9 */	bl __ml__4cXyzCFf
/* 80D39FD0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D39FD4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80D39FD8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D39FDC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80D39FE0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D39FE4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80D39FE8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D39FEC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D39FF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D39FF4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D39FF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D39FFC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D3A000  38 61 00 10 */	addi r3, r1, 0x10
/* 80D3A004  4B 60 D1 35 */	bl PSVECSquareMag
/* 80D3A008  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D3A00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3A010  40 81 00 58 */	ble lbl_80D3A068
/* 80D3A014  FC 00 08 34 */	frsqrte f0, f1
/* 80D3A018  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80D3A01C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D3A020  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80D3A024  FC 00 00 32 */	fmul f0, f0, f0
/* 80D3A028  FC 01 00 32 */	fmul f0, f1, f0
/* 80D3A02C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D3A030  FC 02 00 32 */	fmul f0, f2, f0
/* 80D3A034  FC 44 00 32 */	fmul f2, f4, f0
/* 80D3A038  FC 00 00 32 */	fmul f0, f0, f0
/* 80D3A03C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D3A040  FC 03 00 28 */	fsub f0, f3, f0
/* 80D3A044  FC 02 00 32 */	fmul f0, f2, f0
/* 80D3A048  FC 44 00 32 */	fmul f2, f4, f0
/* 80D3A04C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D3A050  FC 01 00 32 */	fmul f0, f1, f0
/* 80D3A054  FC 03 00 28 */	fsub f0, f3, f0
/* 80D3A058  FC 02 00 32 */	fmul f0, f2, f0
/* 80D3A05C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D3A060  FC 20 08 18 */	frsp f1, f1
/* 80D3A064  48 00 00 88 */	b lbl_80D3A0EC
lbl_80D3A068:
/* 80D3A068  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80D3A06C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3A070  40 80 00 10 */	bge lbl_80D3A080
/* 80D3A074  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D3A078  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D3A07C  48 00 00 70 */	b lbl_80D3A0EC
lbl_80D3A080:
/* 80D3A080  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D3A084  80 81 00 08 */	lwz r4, 8(r1)
/* 80D3A088  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D3A08C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D3A090  7C 03 00 00 */	cmpw r3, r0
/* 80D3A094  41 82 00 14 */	beq lbl_80D3A0A8
/* 80D3A098  40 80 00 40 */	bge lbl_80D3A0D8
/* 80D3A09C  2C 03 00 00 */	cmpwi r3, 0
/* 80D3A0A0  41 82 00 20 */	beq lbl_80D3A0C0
/* 80D3A0A4  48 00 00 34 */	b lbl_80D3A0D8
lbl_80D3A0A8:
/* 80D3A0A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D3A0AC  41 82 00 0C */	beq lbl_80D3A0B8
/* 80D3A0B0  38 00 00 01 */	li r0, 1
/* 80D3A0B4  48 00 00 28 */	b lbl_80D3A0DC
lbl_80D3A0B8:
/* 80D3A0B8  38 00 00 02 */	li r0, 2
/* 80D3A0BC  48 00 00 20 */	b lbl_80D3A0DC
lbl_80D3A0C0:
/* 80D3A0C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D3A0C4  41 82 00 0C */	beq lbl_80D3A0D0
/* 80D3A0C8  38 00 00 05 */	li r0, 5
/* 80D3A0CC  48 00 00 10 */	b lbl_80D3A0DC
lbl_80D3A0D0:
/* 80D3A0D0  38 00 00 03 */	li r0, 3
/* 80D3A0D4  48 00 00 08 */	b lbl_80D3A0DC
lbl_80D3A0D8:
/* 80D3A0D8  38 00 00 04 */	li r0, 4
lbl_80D3A0DC:
/* 80D3A0DC  2C 00 00 01 */	cmpwi r0, 1
/* 80D3A0E0  40 82 00 0C */	bne lbl_80D3A0EC
/* 80D3A0E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D3A0E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D3A0EC:
/* 80D3A0EC  3C 60 80 D4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D3B8E4@ha */
/* 80D3A0F0  38 03 B8 E4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D3B8E4@l */
/* 80D3A0F4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D3A0F8  48 00 00 14 */	b lbl_80D3A10C
lbl_80D3A0FC:
/* 80D3A0FC  3C 60 80 D4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D3B8E4@ha */
/* 80D3A100  38 03 B8 E4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D3B8E4@l */
/* 80D3A104  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D3A108  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_80D3A10C:
/* 80D3A10C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80D3A110  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80D3A114  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80D3A118  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80D3A11C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80D3A120  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80D3A124  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80D3A128  7C 08 03 A6 */	mtlr r0
/* 80D3A12C  38 21 00 90 */	addi r1, r1, 0x90
/* 80D3A130  4E 80 00 20 */	blr 
