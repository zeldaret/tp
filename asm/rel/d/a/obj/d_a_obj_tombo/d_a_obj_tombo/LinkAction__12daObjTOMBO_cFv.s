lbl_80D19E48:
/* 80D19E48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D19E4C  7C 08 02 A6 */	mflr r0
/* 80D19E50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D19E54  39 61 00 40 */	addi r11, r1, 0x40
/* 80D19E58  4B 64 83 85 */	bl _savegpr_29
/* 80D19E5C  7C 7D 1B 78 */	mr r29, r3
/* 80D19E60  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D19E64  3B E3 B6 D8 */	addi r31, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D19E68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D19E6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D19E70  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80D19E74  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80D19E78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D19E7C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80D19E80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D19E84  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D19E88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D19E8C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D19E90  38 80 00 09 */	li r4, 9
/* 80D19E94  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D19E98  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80D19E9C  7D 89 03 A6 */	mtctr r12
/* 80D19EA0  4E 80 04 21 */	bctrl 
/* 80D19EA4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80D19EA8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80D19EAC  80 84 00 00 */	lwz r4, 0(r4)
/* 80D19EB0  4B 62 C6 01 */	bl PSMTXCopy
/* 80D19EB4  38 61 00 18 */	addi r3, r1, 0x18
/* 80D19EB8  38 81 00 0C */	addi r4, r1, 0xc
/* 80D19EBC  4B 55 70 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80D19EC0  88 1D 07 12 */	lbz r0, 0x712(r29)
/* 80D19EC4  2C 00 00 01 */	cmpwi r0, 1
/* 80D19EC8  41 82 00 88 */	beq lbl_80D19F50
/* 80D19ECC  40 80 00 D4 */	bge lbl_80D19FA0
/* 80D19ED0  2C 00 00 00 */	cmpwi r0, 0
/* 80D19ED4  40 80 00 08 */	bge lbl_80D19EDC
/* 80D19ED8  48 00 00 C8 */	b lbl_80D19FA0
lbl_80D19EDC:
/* 80D19EDC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D19EE0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D19EE4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80D19EE8  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80D19EEC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80D19EF0  4B 55 5B C9 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80D19EF4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D19EF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19EFC  40 80 00 24 */	bge lbl_80D19F20
/* 80D19F00  88 7D 07 12 */	lbz r3, 0x712(r29)
/* 80D19F04  38 03 00 01 */	addi r0, r3, 1
/* 80D19F08  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80D19F0C  38 00 00 C8 */	li r0, 0xc8
/* 80D19F10  B0 1D 07 14 */	sth r0, 0x714(r29)
/* 80D19F14  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D19F18  80 7D 08 30 */	lwz r3, 0x830(r29)
/* 80D19F1C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80D19F20:
/* 80D19F20  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D19F24  38 81 00 0C */	addi r4, r1, 0xc
/* 80D19F28  4B 55 6C DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D19F2C  B0 7D 07 24 */	sth r3, 0x724(r29)
/* 80D19F30  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80D19F34  A8 9D 07 24 */	lha r4, 0x724(r29)
/* 80D19F38  38 A0 00 08 */	li r5, 8
/* 80D19F3C  38 C0 10 00 */	li r6, 0x1000
/* 80D19F40  4B 55 66 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80D19F44  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80D19F48  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80D19F4C  48 00 00 54 */	b lbl_80D19FA0
lbl_80D19F50:
/* 80D19F50  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D19F54  38 81 00 0C */	addi r4, r1, 0xc
/* 80D19F58  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80D19F5C  4B 55 68 51 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80D19F60  A8 1D 07 14 */	lha r0, 0x714(r29)
/* 80D19F64  2C 00 00 00 */	cmpwi r0, 0
/* 80D19F68  40 82 00 38 */	bne lbl_80D19FA0
/* 80D19F6C  38 60 00 00 */	li r3, 0
/* 80D19F70  98 7D 07 11 */	stb r3, 0x711(r29)
/* 80D19F74  38 00 00 01 */	li r0, 1
/* 80D19F78  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80D19F7C  38 00 00 64 */	li r0, 0x64
/* 80D19F80  B0 1D 07 16 */	sth r0, 0x716(r29)
/* 80D19F84  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D19F88  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80D19F8C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80D19F90  B0 7D 07 14 */	sth r3, 0x714(r29)
/* 80D19F94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D19F98  80 7D 08 30 */	lwz r3, 0x830(r29)
/* 80D19F9C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80D19FA0:
/* 80D19FA0  7F C3 F3 78 */	mr r3, r30
/* 80D19FA4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D19FA8  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 80D19FAC  7D 89 03 A6 */	mtctr r12
/* 80D19FB0  4E 80 04 21 */	bctrl 
/* 80D19FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D19FB8  41 82 01 00 */	beq lbl_80D1A0B8
/* 80D19FBC  38 61 00 0C */	addi r3, r1, 0xc
/* 80D19FC0  38 9D 07 3C */	addi r4, r29, 0x73c
/* 80D19FC4  4B 62 D3 D9 */	bl PSVECSquareDistance
/* 80D19FC8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D19FCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19FD0  40 81 00 58 */	ble lbl_80D1A028
/* 80D19FD4  FC 00 08 34 */	frsqrte f0, f1
/* 80D19FD8  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 80D19FDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D19FE0  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 80D19FE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D19FE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D19FEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D19FF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D19FF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D19FF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D19FFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1A000  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1A004  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1A008  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1A00C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1A010  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1A014  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1A018  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1A01C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D1A020  FC 20 08 18 */	frsp f1, f1
/* 80D1A024  48 00 00 88 */	b lbl_80D1A0AC
lbl_80D1A028:
/* 80D1A028  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 80D1A02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1A030  40 80 00 10 */	bge lbl_80D1A040
/* 80D1A034  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D1A038  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D1A03C  48 00 00 70 */	b lbl_80D1A0AC
lbl_80D1A040:
/* 80D1A040  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D1A044  80 81 00 08 */	lwz r4, 8(r1)
/* 80D1A048  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D1A04C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D1A050  7C 03 00 00 */	cmpw r3, r0
/* 80D1A054  41 82 00 14 */	beq lbl_80D1A068
/* 80D1A058  40 80 00 40 */	bge lbl_80D1A098
/* 80D1A05C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1A060  41 82 00 20 */	beq lbl_80D1A080
/* 80D1A064  48 00 00 34 */	b lbl_80D1A098
lbl_80D1A068:
/* 80D1A068  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1A06C  41 82 00 0C */	beq lbl_80D1A078
/* 80D1A070  38 00 00 01 */	li r0, 1
/* 80D1A074  48 00 00 28 */	b lbl_80D1A09C
lbl_80D1A078:
/* 80D1A078  38 00 00 02 */	li r0, 2
/* 80D1A07C  48 00 00 20 */	b lbl_80D1A09C
lbl_80D1A080:
/* 80D1A080  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1A084  41 82 00 0C */	beq lbl_80D1A090
/* 80D1A088  38 00 00 05 */	li r0, 5
/* 80D1A08C  48 00 00 10 */	b lbl_80D1A09C
lbl_80D1A090:
/* 80D1A090  38 00 00 03 */	li r0, 3
/* 80D1A094  48 00 00 08 */	b lbl_80D1A09C
lbl_80D1A098:
/* 80D1A098  38 00 00 04 */	li r0, 4
lbl_80D1A09C:
/* 80D1A09C  2C 00 00 01 */	cmpwi r0, 1
/* 80D1A0A0  40 82 00 0C */	bne lbl_80D1A0AC
/* 80D1A0A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D1A0A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D1A0AC:
/* 80D1A0AC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80D1A0B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1A0B4  40 81 00 54 */	ble lbl_80D1A108
lbl_80D1A0B8:
/* 80D1A0B8  7F C3 F3 78 */	mr r3, r30
/* 80D1A0BC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D1A0C0  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 80D1A0C4  7D 89 03 A6 */	mtctr r12
/* 80D1A0C8  4E 80 04 21 */	bctrl 
/* 80D1A0CC  2C 03 00 00 */	cmpwi r3, 0
/* 80D1A0D0  40 82 00 38 */	bne lbl_80D1A108
/* 80D1A0D4  38 60 00 00 */	li r3, 0
/* 80D1A0D8  98 7D 07 11 */	stb r3, 0x711(r29)
/* 80D1A0DC  38 00 00 01 */	li r0, 1
/* 80D1A0E0  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80D1A0E4  38 00 00 64 */	li r0, 0x64
/* 80D1A0E8  B0 1D 07 16 */	sth r0, 0x716(r29)
/* 80D1A0EC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D1A0F0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80D1A0F4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80D1A0F8  B0 7D 07 14 */	sth r3, 0x714(r29)
/* 80D1A0FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D1A100  80 7D 08 30 */	lwz r3, 0x830(r29)
/* 80D1A104  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80D1A108:
/* 80D1A108  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D1A10C  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 80D1A110  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D1A114  D0 1D 07 40 */	stfs f0, 0x740(r29)
/* 80D1A118  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D1A11C  D0 1D 07 44 */	stfs f0, 0x744(r29)
/* 80D1A120  39 61 00 40 */	addi r11, r1, 0x40
/* 80D1A124  4B 64 81 05 */	bl _restgpr_29
/* 80D1A128  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1A12C  7C 08 03 A6 */	mtlr r0
/* 80D1A130  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1A134  4E 80 00 20 */	blr 
