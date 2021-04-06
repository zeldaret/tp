lbl_80A11F84:
/* 80A11F84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A11F88  7C 08 02 A6 */	mflr r0
/* 80A11F8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A11F90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A11F94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A11F98  7C 7F 1B 78 */	mr r31, r3
/* 80A11F9C  3C 60 80 A1 */	lis r3, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A11FA0  3B C3 3D AC */	addi r30, r3, l_insectParams@l /* 0x80A13DAC@l */
/* 80A11FA4  7C 83 23 78 */	mr r3, r4
/* 80A11FA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A11FAC  7C 04 07 74 */	extsb r4, r0
/* 80A11FB0  4B 63 F8 3D */	bl dPath_GetRoomPath__Fii
/* 80A11FB4  90 7F 0E 04 */	stw r3, 0xe04(r31)
/* 80A11FB8  80 1F 0E 04 */	lwz r0, 0xe04(r31)
/* 80A11FBC  28 00 00 00 */	cmplwi r0, 0
/* 80A11FC0  40 82 00 0C */	bne lbl_80A11FCC
/* 80A11FC4  38 60 00 00 */	li r3, 0
/* 80A11FC8  48 00 01 3C */	b lbl_80A12104
lbl_80A11FCC:
/* 80A11FCC  38 00 00 01 */	li r0, 1
/* 80A11FD0  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 80A11FD4  80 7F 0E 04 */	lwz r3, 0xe04(r31)
/* 80A11FD8  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 80A11FDC  4B 63 F7 D5 */	bl dPath_GetPnt__FPC5dPathi
/* 80A11FE0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80A11FE4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A11FE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A11FEC  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80A11FF0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A11FF4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A11FF8  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80A11FFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A12000  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A12004  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A12008  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A1200C  38 61 00 0C */	addi r3, r1, 0xc
/* 80A12010  38 81 00 18 */	addi r4, r1, 0x18
/* 80A12014  4B 93 53 89 */	bl PSVECSquareDistance
/* 80A12018  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80A1201C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A12020  40 81 00 58 */	ble lbl_80A12078
/* 80A12024  FC 00 08 34 */	frsqrte f0, f1
/* 80A12028  C8 9E 03 88 */	lfd f4, 0x388(r30)
/* 80A1202C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A12030  C8 7E 03 90 */	lfd f3, 0x390(r30)
/* 80A12034  FC 00 00 32 */	fmul f0, f0, f0
/* 80A12038  FC 01 00 32 */	fmul f0, f1, f0
/* 80A1203C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A12040  FC 02 00 32 */	fmul f0, f2, f0
/* 80A12044  FC 44 00 32 */	fmul f2, f4, f0
/* 80A12048  FC 00 00 32 */	fmul f0, f0, f0
/* 80A1204C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A12050  FC 03 00 28 */	fsub f0, f3, f0
/* 80A12054  FC 02 00 32 */	fmul f0, f2, f0
/* 80A12058  FC 44 00 32 */	fmul f2, f4, f0
/* 80A1205C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A12060  FC 01 00 32 */	fmul f0, f1, f0
/* 80A12064  FC 03 00 28 */	fsub f0, f3, f0
/* 80A12068  FC 02 00 32 */	fmul f0, f2, f0
/* 80A1206C  FC 21 00 32 */	fmul f1, f1, f0
/* 80A12070  FC 20 08 18 */	frsp f1, f1
/* 80A12074  48 00 00 88 */	b lbl_80A120FC
lbl_80A12078:
/* 80A12078  C8 1E 03 98 */	lfd f0, 0x398(r30)
/* 80A1207C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A12080  40 80 00 10 */	bge lbl_80A12090
/* 80A12084  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A12088  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A1208C  48 00 00 70 */	b lbl_80A120FC
lbl_80A12090:
/* 80A12090  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A12094  80 81 00 08 */	lwz r4, 8(r1)
/* 80A12098  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A1209C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A120A0  7C 03 00 00 */	cmpw r3, r0
/* 80A120A4  41 82 00 14 */	beq lbl_80A120B8
/* 80A120A8  40 80 00 40 */	bge lbl_80A120E8
/* 80A120AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A120B0  41 82 00 20 */	beq lbl_80A120D0
/* 80A120B4  48 00 00 34 */	b lbl_80A120E8
lbl_80A120B8:
/* 80A120B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A120BC  41 82 00 0C */	beq lbl_80A120C8
/* 80A120C0  38 00 00 01 */	li r0, 1
/* 80A120C4  48 00 00 28 */	b lbl_80A120EC
lbl_80A120C8:
/* 80A120C8  38 00 00 02 */	li r0, 2
/* 80A120CC  48 00 00 20 */	b lbl_80A120EC
lbl_80A120D0:
/* 80A120D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A120D4  41 82 00 0C */	beq lbl_80A120E0
/* 80A120D8  38 00 00 05 */	li r0, 5
/* 80A120DC  48 00 00 10 */	b lbl_80A120EC
lbl_80A120E0:
/* 80A120E0  38 00 00 03 */	li r0, 3
/* 80A120E4  48 00 00 08 */	b lbl_80A120EC
lbl_80A120E8:
/* 80A120E8  38 00 00 04 */	li r0, 4
lbl_80A120EC:
/* 80A120EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A120F0  40 82 00 0C */	bne lbl_80A120FC
/* 80A120F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A120F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A120FC:
/* 80A120FC  D0 3F 0E 0C */	stfs f1, 0xe0c(r31)
/* 80A12100  38 60 00 01 */	li r3, 1
lbl_80A12104:
/* 80A12104  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A12108  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A1210C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A12110  7C 08 03 A6 */	mtlr r0
/* 80A12114  38 21 00 30 */	addi r1, r1, 0x30
/* 80A12118  4E 80 00 20 */	blr 
