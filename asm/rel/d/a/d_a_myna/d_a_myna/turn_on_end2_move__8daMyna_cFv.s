lbl_80947E50:
/* 80947E50  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80947E54  7C 08 02 A6 */	mflr r0
/* 80947E58  90 01 00 64 */	stw r0, 0x64(r1)
/* 80947E5C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80947E60  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80947E64  7C 7F 1B 78 */	mr r31, r3
/* 80947E68  3C 60 80 95 */	lis r3, mCcDSph__8daMyna_c@ha
/* 80947E6C  3B C3 B1 B0 */	addi r30, r3, mCcDSph__8daMyna_c@l
/* 80947E70  38 61 00 18 */	addi r3, r1, 0x18
/* 80947E74  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80947E78  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80947E7C  4B 91 EC B8 */	b __mi__4cXyzCFRC3Vec
/* 80947E80  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80947E84  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80947E88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80947E8C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80947E90  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80947E94  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80947E98  4B 91 F7 DC */	b cM_atan2s__Fff
/* 80947E9C  7C 65 1B 78 */	mr r5, r3
/* 80947EA0  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80947EA4  C0 3F 08 30 */	lfs f1, 0x830(r31)
/* 80947EA8  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 80947EAC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80947EB0  C0 3F 08 3C */	lfs f1, 0x83c(r31)
/* 80947EB4  C0 1F 08 54 */	lfs f0, 0x854(r31)
/* 80947EB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80947EBC  EC 02 00 2A */	fadds f0, f2, f0
/* 80947EC0  EC 43 00 32 */	fmuls f2, f3, f0
/* 80947EC4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80947EC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80947ECC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80947ED0  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80947ED4  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80947ED8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80947EDC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80947EE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80947EE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80947EE8  38 61 00 48 */	addi r3, r1, 0x48
/* 80947EEC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80947EF0  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80947EF4  4B 92 8E CC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80947EF8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80947EFC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80947F00  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80947F04  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80947F08  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80947F0C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80947F10  38 61 00 0C */	addi r3, r1, 0xc
/* 80947F14  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80947F18  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80947F1C  4B 91 EC 18 */	b __mi__4cXyzCFRC3Vec
/* 80947F20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80947F24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80947F28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80947F2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80947F30  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80947F34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80947F38  38 61 00 24 */	addi r3, r1, 0x24
/* 80947F3C  4B 9F F1 FC */	b PSVECSquareMag
/* 80947F40  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80947F44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80947F48  40 81 00 58 */	ble lbl_80947FA0
/* 80947F4C  FC 00 08 34 */	frsqrte f0, f1
/* 80947F50  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 80947F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80947F58  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 80947F5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80947F60  FC 01 00 32 */	fmul f0, f1, f0
/* 80947F64  FC 03 00 28 */	fsub f0, f3, f0
/* 80947F68  FC 02 00 32 */	fmul f0, f2, f0
/* 80947F6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80947F70  FC 00 00 32 */	fmul f0, f0, f0
/* 80947F74  FC 01 00 32 */	fmul f0, f1, f0
/* 80947F78  FC 03 00 28 */	fsub f0, f3, f0
/* 80947F7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80947F80  FC 44 00 32 */	fmul f2, f4, f0
/* 80947F84  FC 00 00 32 */	fmul f0, f0, f0
/* 80947F88  FC 01 00 32 */	fmul f0, f1, f0
/* 80947F8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80947F90  FC 02 00 32 */	fmul f0, f2, f0
/* 80947F94  FC 21 00 32 */	fmul f1, f1, f0
/* 80947F98  FC 20 08 18 */	frsp f1, f1
/* 80947F9C  48 00 00 88 */	b lbl_80948024
lbl_80947FA0:
/* 80947FA0  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80947FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80947FA8  40 80 00 10 */	bge lbl_80947FB8
/* 80947FAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80947FB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80947FB4  48 00 00 70 */	b lbl_80948024
lbl_80947FB8:
/* 80947FB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80947FBC  80 81 00 08 */	lwz r4, 8(r1)
/* 80947FC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80947FC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80947FC8  7C 03 00 00 */	cmpw r3, r0
/* 80947FCC  41 82 00 14 */	beq lbl_80947FE0
/* 80947FD0  40 80 00 40 */	bge lbl_80948010
/* 80947FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80947FD8  41 82 00 20 */	beq lbl_80947FF8
/* 80947FDC  48 00 00 34 */	b lbl_80948010
lbl_80947FE0:
/* 80947FE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80947FE4  41 82 00 0C */	beq lbl_80947FF0
/* 80947FE8  38 00 00 01 */	li r0, 1
/* 80947FEC  48 00 00 28 */	b lbl_80948014
lbl_80947FF0:
/* 80947FF0  38 00 00 02 */	li r0, 2
/* 80947FF4  48 00 00 20 */	b lbl_80948014
lbl_80947FF8:
/* 80947FF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80947FFC  41 82 00 0C */	beq lbl_80948008
/* 80948000  38 00 00 05 */	li r0, 5
/* 80948004  48 00 00 10 */	b lbl_80948014
lbl_80948008:
/* 80948008  38 00 00 03 */	li r0, 3
/* 8094800C  48 00 00 08 */	b lbl_80948014
lbl_80948010:
/* 80948010  38 00 00 04 */	li r0, 4
lbl_80948014:
/* 80948014  2C 00 00 01 */	cmpwi r0, 1
/* 80948018  40 82 00 0C */	bne lbl_80948024
/* 8094801C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80948020  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80948024:
/* 80948024  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80948028  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 8094802C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80948030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80948034  40 80 00 24 */	bge lbl_80948058
/* 80948038  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8094803C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80948040  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80948044  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80948048  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8094804C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80948050  38 00 00 0F */	li r0, 0xf
/* 80948054  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80948058:
/* 80948058  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8094805C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80948060  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80948064  7C 08 03 A6 */	mtlr r0
/* 80948068  38 21 00 60 */	addi r1, r1, 0x60
/* 8094806C  4E 80 00 20 */	blr 
