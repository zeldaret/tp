lbl_800A7ABC:
/* 800A7ABC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A7AC0  7C 08 02 A6 */	mflr r0
/* 800A7AC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A7AC8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800A7ACC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800A7AD0  7C 7E 1B 78 */	mr r30, r3
/* 800A7AD4  C0 63 04 D8 */	lfs f3, 0x4d8(r3)
/* 800A7AD8  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 800A7ADC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A7AE0  C0 03 05 98 */	lfs f0, 0x598(r3)
/* 800A7AE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A7AE8  EC 22 00 2A */	fadds f1, f2, f0
/* 800A7AEC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800A7AF0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800A7AF4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800A7AF8  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 800A7AFC  38 61 00 18 */	addi r3, r1, 0x18
/* 800A7B00  3C A0 80 39 */	lis r5, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800A7B04  3B E5 D6 64 */	addi r31, r5, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800A7B08  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 800A7B0C  48 1B F0 79 */	bl __ml__4cXyzCFf
/* 800A7B10  38 61 00 0C */	addi r3, r1, 0xc
/* 800A7B14  38 81 00 30 */	addi r4, r1, 0x30
/* 800A7B18  38 A1 00 18 */	addi r5, r1, 0x18
/* 800A7B1C  48 1B F0 19 */	bl __mi__4cXyzCFRC3Vec
/* 800A7B20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800A7B24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800A7B28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800A7B2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800A7B30  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800A7B34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800A7B38  7F C3 F3 78 */	mr r3, r30
/* 800A7B3C  38 81 00 30 */	addi r4, r1, 0x30
/* 800A7B40  38 A1 00 24 */	addi r5, r1, 0x24
/* 800A7B44  4B FF A6 55 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800A7B48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A7B4C  41 82 01 48 */	beq lbl_800A7C94
/* 800A7B50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A7B54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A7B58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800A7B5C  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800A7B60  4B FC D2 A1 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800A7B64  2C 03 00 0A */	cmpwi r3, 0xa
/* 800A7B68  41 82 01 2C */	beq lbl_800A7C94
/* 800A7B6C  38 9E 1B 78 */	addi r4, r30, 0x1b78
/* 800A7B70  38 61 00 30 */	addi r3, r1, 0x30
/* 800A7B74  48 29 F8 29 */	bl PSVECSquareDistance
/* 800A7B78  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7B80  40 81 00 58 */	ble lbl_800A7BD8
/* 800A7B84  FC 00 08 34 */	frsqrte f0, f1
/* 800A7B88  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A7B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7B90  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A7B94  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7B98  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7B9C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7BA0  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7BA4  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7BA8  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7BAC  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7BB0  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7BB4  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7BB8  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7BBC  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7BC0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7BC4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7BC8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7BCC  FC 21 00 32 */	fmul f1, f1, f0
/* 800A7BD0  FC 20 08 18 */	frsp f1, f1
/* 800A7BD4  48 00 00 88 */	b lbl_800A7C5C
lbl_800A7BD8:
/* 800A7BD8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A7BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7BE0  40 80 00 10 */	bge lbl_800A7BF0
/* 800A7BE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A7BE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A7BEC  48 00 00 70 */	b lbl_800A7C5C
lbl_800A7BF0:
/* 800A7BF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A7BF4  80 81 00 08 */	lwz r4, 8(r1)
/* 800A7BF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A7BFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A7C00  7C 03 00 00 */	cmpw r3, r0
/* 800A7C04  41 82 00 14 */	beq lbl_800A7C18
/* 800A7C08  40 80 00 40 */	bge lbl_800A7C48
/* 800A7C0C  2C 03 00 00 */	cmpwi r3, 0
/* 800A7C10  41 82 00 20 */	beq lbl_800A7C30
/* 800A7C14  48 00 00 34 */	b lbl_800A7C48
lbl_800A7C18:
/* 800A7C18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7C1C  41 82 00 0C */	beq lbl_800A7C28
/* 800A7C20  38 00 00 01 */	li r0, 1
/* 800A7C24  48 00 00 28 */	b lbl_800A7C4C
lbl_800A7C28:
/* 800A7C28  38 00 00 02 */	li r0, 2
/* 800A7C2C  48 00 00 20 */	b lbl_800A7C4C
lbl_800A7C30:
/* 800A7C30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7C34  41 82 00 0C */	beq lbl_800A7C40
/* 800A7C38  38 00 00 05 */	li r0, 5
/* 800A7C3C  48 00 00 10 */	b lbl_800A7C4C
lbl_800A7C40:
/* 800A7C40  38 00 00 03 */	li r0, 3
/* 800A7C44  48 00 00 08 */	b lbl_800A7C4C
lbl_800A7C48:
/* 800A7C48  38 00 00 04 */	li r0, 4
lbl_800A7C4C:
/* 800A7C4C  2C 00 00 01 */	cmpwi r0, 1
/* 800A7C50  40 82 00 0C */	bne lbl_800A7C5C
/* 800A7C54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A7C58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800A7C5C:
/* 800A7C5C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800A7C60  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800A7C64  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 800A7C68  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800A7C6C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 800A7C70  EC 00 18 28 */	fsubs f0, f0, f3
/* 800A7C74  EC 42 00 24 */	fdivs f2, f2, f0
/* 800A7C78  EC 01 18 28 */	fsubs f0, f1, f3
/* 800A7C7C  EC 22 00 32 */	fmuls f1, f2, f0
/* 800A7C80  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7C88  40 80 00 10 */	bge lbl_800A7C98
/* 800A7C8C  FC 20 00 90 */	fmr f1, f0
/* 800A7C90  48 00 00 08 */	b lbl_800A7C98
lbl_800A7C94:
/* 800A7C94  C0 22 92 B8 */	lfs f1, lit_6040(r2)
lbl_800A7C98:
/* 800A7C98  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800A7C9C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800A7CA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A7CA4  7C 08 03 A6 */	mtlr r0
/* 800A7CA8  38 21 00 50 */	addi r1, r1, 0x50
/* 800A7CAC  4E 80 00 20 */	blr 
