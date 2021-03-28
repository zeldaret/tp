lbl_80CAFD64:
/* 80CAFD64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAFD68  7C 08 02 A6 */	mflr r0
/* 80CAFD6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAFD70  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAFD74  4B 6B 24 68 */	b _savegpr_29
/* 80CAFD78  7C 7D 1B 78 */	mr r29, r3
/* 80CAFD7C  3C 60 80 CB */	lis r3, l_bmd@ha
/* 80CAFD80  3B E3 09 D4 */	addi r31, r3, l_bmd@l
/* 80CAFD84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAFD88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAFD8C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80CAFD90  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CAFD94  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CAFD98  4B 69 76 04 */	b PSVECSquareDistance
/* 80CAFD9C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80CAFDA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAFDA4  40 81 00 58 */	ble lbl_80CAFDFC
/* 80CAFDA8  FC 00 08 34 */	frsqrte f0, f1
/* 80CAFDAC  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80CAFDB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CAFDB4  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80CAFDB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CAFDBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CAFDC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CAFDC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CAFDC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CAFDCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CAFDD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CAFDD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CAFDD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CAFDDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CAFDE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CAFDE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CAFDE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CAFDEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CAFDF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80CAFDF4  FC 20 08 18 */	frsp f1, f1
/* 80CAFDF8  48 00 00 88 */	b lbl_80CAFE80
lbl_80CAFDFC:
/* 80CAFDFC  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80CAFE00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAFE04  40 80 00 10 */	bge lbl_80CAFE14
/* 80CAFE08  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CAFE0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CAFE10  48 00 00 70 */	b lbl_80CAFE80
lbl_80CAFE14:
/* 80CAFE14  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CAFE18  80 81 00 08 */	lwz r4, 8(r1)
/* 80CAFE1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CAFE20  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CAFE24  7C 03 00 00 */	cmpw r3, r0
/* 80CAFE28  41 82 00 14 */	beq lbl_80CAFE3C
/* 80CAFE2C  40 80 00 40 */	bge lbl_80CAFE6C
/* 80CAFE30  2C 03 00 00 */	cmpwi r3, 0
/* 80CAFE34  41 82 00 20 */	beq lbl_80CAFE54
/* 80CAFE38  48 00 00 34 */	b lbl_80CAFE6C
lbl_80CAFE3C:
/* 80CAFE3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CAFE40  41 82 00 0C */	beq lbl_80CAFE4C
/* 80CAFE44  38 00 00 01 */	li r0, 1
/* 80CAFE48  48 00 00 28 */	b lbl_80CAFE70
lbl_80CAFE4C:
/* 80CAFE4C  38 00 00 02 */	li r0, 2
/* 80CAFE50  48 00 00 20 */	b lbl_80CAFE70
lbl_80CAFE54:
/* 80CAFE54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CAFE58  41 82 00 0C */	beq lbl_80CAFE64
/* 80CAFE5C  38 00 00 05 */	li r0, 5
/* 80CAFE60  48 00 00 10 */	b lbl_80CAFE70
lbl_80CAFE64:
/* 80CAFE64  38 00 00 03 */	li r0, 3
/* 80CAFE68  48 00 00 08 */	b lbl_80CAFE70
lbl_80CAFE6C:
/* 80CAFE6C  38 00 00 04 */	li r0, 4
lbl_80CAFE70:
/* 80CAFE70  2C 00 00 01 */	cmpwi r0, 1
/* 80CAFE74  40 82 00 0C */	bne lbl_80CAFE80
/* 80CAFE78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CAFE7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CAFE80:
/* 80CAFE80  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80CAFE84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAFE88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAFE8C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CAFE90  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CAFE94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CAFE98  41 82 00 08 */	beq lbl_80CAFEA0
/* 80CAFE9C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
lbl_80CAFEA0:
/* 80CAFEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAFEA4  40 80 00 5C */	bge lbl_80CAFF00
/* 80CAFEA8  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80CAFEAC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CAFEB0  40 82 00 10 */	bne lbl_80CAFEC0
/* 80CAFEB4  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80CAFEB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CAFEBC  41 82 00 44 */	beq lbl_80CAFF00
lbl_80CAFEC0:
/* 80CAFEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CAFEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CAFEC8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80CAFECC  3C 80 80 CB */	lis r4, struct_80CB0ACC+0x0@ha
/* 80CAFED0  38 84 0A CC */	addi r4, r4, struct_80CB0ACC+0x0@l
/* 80CAFED4  38 84 00 14 */	addi r4, r4, 0x14
/* 80CAFED8  4B 6B 8A BC */	b strcmp
/* 80CAFEDC  2C 03 00 00 */	cmpwi r3, 0
/* 80CAFEE0  40 82 00 18 */	bne lbl_80CAFEF8
/* 80CAFEE4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CAFEE8  2C 00 00 02 */	cmpwi r0, 2
/* 80CAFEEC  40 82 00 0C */	bne lbl_80CAFEF8
/* 80CAFEF0  38 60 00 03 */	li r3, 3
/* 80CAFEF4  48 00 00 54 */	b lbl_80CAFF48
lbl_80CAFEF8:
/* 80CAFEF8  38 60 00 00 */	li r3, 0
/* 80CAFEFC  48 00 00 4C */	b lbl_80CAFF48
lbl_80CAFF00:
/* 80CAFF00  80 7D 07 38 */	lwz r3, 0x738(r29)
/* 80CAFF04  2C 03 00 FF */	cmpwi r3, 0xff
/* 80CAFF08  41 82 00 08 */	beq lbl_80CAFF10
/* 80CAFF0C  48 00 00 3C */	b lbl_80CAFF48
lbl_80CAFF10:
/* 80CAFF10  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80CAFF14  4B 3D 45 4C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CAFF18  28 03 00 00 */	cmplwi r3, 0
/* 80CAFF1C  41 82 00 28 */	beq lbl_80CAFF44
/* 80CAFF20  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80CAFF24  4B 3D 45 D4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CAFF28  28 03 00 00 */	cmplwi r3, 0
/* 80CAFF2C  41 82 00 18 */	beq lbl_80CAFF44
/* 80CAFF30  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CAFF34  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80CAFF38  41 82 00 0C */	beq lbl_80CAFF44
/* 80CAFF3C  38 60 00 04 */	li r3, 4
/* 80CAFF40  48 00 00 08 */	b lbl_80CAFF48
lbl_80CAFF44:
/* 80CAFF44  38 60 00 FF */	li r3, 0xff
lbl_80CAFF48:
/* 80CAFF48  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAFF4C  4B 6B 22 DC */	b _restgpr_29
/* 80CAFF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAFF54  7C 08 03 A6 */	mtlr r0
/* 80CAFF58  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAFF5C  4E 80 00 20 */	blr 
