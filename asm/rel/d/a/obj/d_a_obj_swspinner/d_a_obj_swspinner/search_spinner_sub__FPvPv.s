lbl_80CFFF78:
/* 80CFFF78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CFFF7C  7C 08 02 A6 */	mflr r0
/* 80CFFF80  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CFFF84  39 61 00 40 */	addi r11, r1, 0x40
/* 80CFFF88  4B 66 22 55 */	bl _savegpr_29
/* 80CFFF8C  7C 9E 23 78 */	mr r30, r4
/* 80CFFF90  3C 80 80 D0 */	lis r4, lit_3717@ha /* 0x80D00A94@ha */
/* 80CFFF94  3B A4 0A 94 */	addi r29, r4, lit_3717@l /* 0x80D00A94@l */
/* 80CFFF98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFFF9C  41 82 01 BC */	beq lbl_80D00158
/* 80CFFFA0  4B 31 8D 41 */	bl fopAc_IsActor__FPv
/* 80CFFFA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CFFFA8  41 82 01 B0 */	beq lbl_80D00158
/* 80CFFFAC  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80CFFFB0  2C 00 00 F2 */	cmpwi r0, 0xf2
/* 80CFFFB4  40 82 01 A4 */	bne lbl_80D00158
/* 80CFFFB8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80CFFFBC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CFFFC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CFFFC4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CFFFC8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CFFFCC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CFFFD0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CFFFD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CFFFD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CFFFDC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CFFFE0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CFFFE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80CFFFE8  38 81 00 18 */	addi r4, r1, 0x18
/* 80CFFFEC  4B 64 73 B1 */	bl PSVECSquareDistance
/* 80CFFFF0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFFFF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFFFF8  40 81 00 58 */	ble lbl_80D00050
/* 80CFFFFC  FC 00 08 34 */	frsqrte f0, f1
/* 80D00000  C8 9D 00 08 */	lfd f4, 8(r29)
/* 80D00004  FC 44 00 32 */	fmul f2, f4, f0
/* 80D00008  C8 7D 00 10 */	lfd f3, 0x10(r29)
/* 80D0000C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D00010  FC 01 00 32 */	fmul f0, f1, f0
/* 80D00014  FC 03 00 28 */	fsub f0, f3, f0
/* 80D00018  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0001C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D00020  FC 00 00 32 */	fmul f0, f0, f0
/* 80D00024  FC 01 00 32 */	fmul f0, f1, f0
/* 80D00028  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0002C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D00030  FC 44 00 32 */	fmul f2, f4, f0
/* 80D00034  FC 00 00 32 */	fmul f0, f0, f0
/* 80D00038  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0003C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D00040  FC 02 00 32 */	fmul f0, f2, f0
/* 80D00044  FC 21 00 32 */	fmul f1, f1, f0
/* 80D00048  FC 20 08 18 */	frsp f1, f1
/* 80D0004C  48 00 00 88 */	b lbl_80D000D4
lbl_80D00050:
/* 80D00050  C8 1D 00 18 */	lfd f0, 0x18(r29)
/* 80D00054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D00058  40 80 00 10 */	bge lbl_80D00068
/* 80D0005C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D00060  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D00064  48 00 00 70 */	b lbl_80D000D4
lbl_80D00068:
/* 80D00068  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D0006C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D00070  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D00074  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D00078  7C 03 00 00 */	cmpw r3, r0
/* 80D0007C  41 82 00 14 */	beq lbl_80D00090
/* 80D00080  40 80 00 40 */	bge lbl_80D000C0
/* 80D00084  2C 03 00 00 */	cmpwi r3, 0
/* 80D00088  41 82 00 20 */	beq lbl_80D000A8
/* 80D0008C  48 00 00 34 */	b lbl_80D000C0
lbl_80D00090:
/* 80D00090  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D00094  41 82 00 0C */	beq lbl_80D000A0
/* 80D00098  38 00 00 01 */	li r0, 1
/* 80D0009C  48 00 00 28 */	b lbl_80D000C4
lbl_80D000A0:
/* 80D000A0  38 00 00 02 */	li r0, 2
/* 80D000A4  48 00 00 20 */	b lbl_80D000C4
lbl_80D000A8:
/* 80D000A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D000AC  41 82 00 0C */	beq lbl_80D000B8
/* 80D000B0  38 00 00 05 */	li r0, 5
/* 80D000B4  48 00 00 10 */	b lbl_80D000C4
lbl_80D000B8:
/* 80D000B8  38 00 00 03 */	li r0, 3
/* 80D000BC  48 00 00 08 */	b lbl_80D000C4
lbl_80D000C0:
/* 80D000C0  38 00 00 04 */	li r0, 4
lbl_80D000C4:
/* 80D000C4  2C 00 00 01 */	cmpwi r0, 1
/* 80D000C8  40 82 00 0C */	bne lbl_80D000D4
/* 80D000CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D000D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D000D4:
/* 80D000D4  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80D000D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D000DC  40 80 00 54 */	bge lbl_80D00130
/* 80D000E0  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80D000E4  28 00 00 00 */	cmplwi r0, 0
/* 80D000E8  40 82 00 0C */	bne lbl_80D000F4
/* 80D000EC  38 00 00 01 */	li r0, 1
/* 80D000F0  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_80D000F4:
/* 80D000F4  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 80D000F8  28 00 00 00 */	cmplwi r0, 0
/* 80D000FC  40 82 00 0C */	bne lbl_80D00108
/* 80D00100  38 00 00 01 */	li r0, 1
/* 80D00104  98 1F 0A 6F */	stb r0, 0xa6f(r31)
lbl_80D00108:
/* 80D00108  38 00 00 00 */	li r0, 0
/* 80D0010C  90 1F 0A 64 */	stw r0, 0xa64(r31)
/* 80D00110  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80D00114  D0 1F 0A A4 */	stfs f0, 0xaa4(r31)
/* 80D00118  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80D0011C  D0 1F 0A A8 */	stfs f0, 0xaa8(r31)
/* 80D00120  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80D00124  D0 1F 0A AC */	stfs f0, 0xaac(r31)
/* 80D00128  7F E3 FB 78 */	mr r3, r31
/* 80D0012C  48 00 00 30 */	b lbl_80D0015C
lbl_80D00130:
/* 80D00130  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80D00134  28 00 00 00 */	cmplwi r0, 0
/* 80D00138  41 82 00 20 */	beq lbl_80D00158
/* 80D0013C  88 1F 0A 6F */	lbz r0, 0xa6f(r31)
/* 80D00140  28 00 00 00 */	cmplwi r0, 0
/* 80D00144  41 82 00 0C */	beq lbl_80D00150
/* 80D00148  38 00 00 05 */	li r0, 5
/* 80D0014C  98 1F 0A 6F */	stb r0, 0xa6f(r31)
lbl_80D00150:
/* 80D00150  38 00 00 00 */	li r0, 0
/* 80D00154  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_80D00158:
/* 80D00158  38 60 00 00 */	li r3, 0
lbl_80D0015C:
/* 80D0015C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D00160  4B 66 20 C9 */	bl _restgpr_29
/* 80D00164  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D00168  7C 08 03 A6 */	mtlr r0
/* 80D0016C  38 21 00 40 */	addi r1, r1, 0x40
/* 80D00170  4E 80 00 20 */	blr 
