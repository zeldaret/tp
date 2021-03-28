lbl_80947AA4:
/* 80947AA4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80947AA8  7C 08 02 A6 */	mflr r0
/* 80947AAC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80947AB0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80947AB4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80947AB8  7C 7F 1B 78 */	mr r31, r3
/* 80947ABC  3C 60 80 95 */	lis r3, mCcDSph__8daMyna_c@ha
/* 80947AC0  3B C3 B1 B0 */	addi r30, r3, mCcDSph__8daMyna_c@l
/* 80947AC4  3C 60 80 95 */	lis r3, daMyna_LightActor@ha
/* 80947AC8  38 63 BA C0 */	addi r3, r3, daMyna_LightActor@l
/* 80947ACC  80 63 00 00 */	lwz r3, 0(r3)
/* 80947AD0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80947AD4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80947AD8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80947ADC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80947AE0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80947AE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80947AE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80947AEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80947AF0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80947AF4  4B 91 F0 40 */	b __mi__4cXyzCFRC3Vec
/* 80947AF8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80947AFC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80947B00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80947B04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80947B08  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80947B0C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80947B10  4B 91 FB 64 */	b cM_atan2s__Fff
/* 80947B14  7C 65 1B 78 */	mr r5, r3
/* 80947B18  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80947B1C  C0 3F 08 30 */	lfs f1, 0x830(r31)
/* 80947B20  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 80947B24  EC 41 00 28 */	fsubs f2, f1, f0
/* 80947B28  C0 3F 08 3C */	lfs f1, 0x83c(r31)
/* 80947B2C  C0 1F 08 54 */	lfs f0, 0x854(r31)
/* 80947B30  EC 01 00 28 */	fsubs f0, f1, f0
/* 80947B34  EC 02 00 2A */	fadds f0, f2, f0
/* 80947B38  EC 43 00 32 */	fmuls f2, f3, f0
/* 80947B3C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80947B40  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80947B44  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80947B48  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80947B4C  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80947B50  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80947B54  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80947B58  EC 01 00 32 */	fmuls f0, f1, f0
/* 80947B5C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80947B60  38 61 00 54 */	addi r3, r1, 0x54
/* 80947B64  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80947B68  38 C1 00 48 */	addi r6, r1, 0x48
/* 80947B6C  4B 92 92 54 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80947B70  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80947B74  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80947B78  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80947B7C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80947B80  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80947B84  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80947B88  38 61 00 0C */	addi r3, r1, 0xc
/* 80947B8C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80947B90  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80947B94  4B 91 EF A0 */	b __mi__4cXyzCFRC3Vec
/* 80947B98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80947B9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80947BA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80947BA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80947BA8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80947BAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80947BB0  38 61 00 24 */	addi r3, r1, 0x24
/* 80947BB4  4B 9F F5 84 */	b PSVECSquareMag
/* 80947BB8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80947BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80947BC0  40 81 00 58 */	ble lbl_80947C18
/* 80947BC4  FC 00 08 34 */	frsqrte f0, f1
/* 80947BC8  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 80947BCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80947BD0  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 80947BD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80947BD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80947BDC  FC 03 00 28 */	fsub f0, f3, f0
/* 80947BE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80947BE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80947BE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80947BEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80947BF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80947BF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80947BF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80947BFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80947C00  FC 01 00 32 */	fmul f0, f1, f0
/* 80947C04  FC 03 00 28 */	fsub f0, f3, f0
/* 80947C08  FC 02 00 32 */	fmul f0, f2, f0
/* 80947C0C  FC 21 00 32 */	fmul f1, f1, f0
/* 80947C10  FC 20 08 18 */	frsp f1, f1
/* 80947C14  48 00 00 88 */	b lbl_80947C9C
lbl_80947C18:
/* 80947C18  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80947C1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80947C20  40 80 00 10 */	bge lbl_80947C30
/* 80947C24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80947C28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80947C2C  48 00 00 70 */	b lbl_80947C9C
lbl_80947C30:
/* 80947C30  D0 21 00 08 */	stfs f1, 8(r1)
/* 80947C34  80 81 00 08 */	lwz r4, 8(r1)
/* 80947C38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80947C3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80947C40  7C 03 00 00 */	cmpw r3, r0
/* 80947C44  41 82 00 14 */	beq lbl_80947C58
/* 80947C48  40 80 00 40 */	bge lbl_80947C88
/* 80947C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80947C50  41 82 00 20 */	beq lbl_80947C70
/* 80947C54  48 00 00 34 */	b lbl_80947C88
lbl_80947C58:
/* 80947C58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80947C5C  41 82 00 0C */	beq lbl_80947C68
/* 80947C60  38 00 00 01 */	li r0, 1
/* 80947C64  48 00 00 28 */	b lbl_80947C8C
lbl_80947C68:
/* 80947C68  38 00 00 02 */	li r0, 2
/* 80947C6C  48 00 00 20 */	b lbl_80947C8C
lbl_80947C70:
/* 80947C70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80947C74  41 82 00 0C */	beq lbl_80947C80
/* 80947C78  38 00 00 05 */	li r0, 5
/* 80947C7C  48 00 00 10 */	b lbl_80947C8C
lbl_80947C80:
/* 80947C80  38 00 00 03 */	li r0, 3
/* 80947C84  48 00 00 08 */	b lbl_80947C8C
lbl_80947C88:
/* 80947C88  38 00 00 04 */	li r0, 4
lbl_80947C8C:
/* 80947C8C  2C 00 00 01 */	cmpwi r0, 1
/* 80947C90  40 82 00 0C */	bne lbl_80947C9C
/* 80947C94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80947C98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80947C9C:
/* 80947C9C  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80947CA0  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80947CA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80947CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80947CAC  40 80 00 0C */	bge lbl_80947CB8
/* 80947CB0  38 00 00 0C */	li r0, 0xc
/* 80947CB4  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80947CB8:
/* 80947CB8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80947CBC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80947CC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80947CC4  7C 08 03 A6 */	mtlr r0
/* 80947CC8  38 21 00 70 */	addi r1, r1, 0x70
/* 80947CCC  4E 80 00 20 */	blr 
