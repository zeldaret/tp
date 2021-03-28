lbl_806E6948:
/* 806E6948  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E694C  7C 08 02 A6 */	mflr r0
/* 806E6950  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E6954  39 61 00 40 */	addi r11, r1, 0x40
/* 806E6958  4B C7 B8 84 */	b _savegpr_29
/* 806E695C  7C 7E 1B 78 */	mr r30, r3
/* 806E6960  3C 80 80 6F */	lis r4, lit_3905@ha
/* 806E6964  3B E4 A1 F4 */	addi r31, r4, lit_3905@l
/* 806E6968  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806E696C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806E6970  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 806E6974  80 03 07 14 */	lwz r0, 0x714(r3)
/* 806E6978  2C 00 00 0B */	cmpwi r0, 0xb
/* 806E697C  41 82 02 20 */	beq lbl_806E6B9C
/* 806E6980  40 80 00 28 */	bge lbl_806E69A8
/* 806E6984  2C 00 00 01 */	cmpwi r0, 1
/* 806E6988  41 82 00 84 */	beq lbl_806E6A0C
/* 806E698C  40 80 00 10 */	bge lbl_806E699C
/* 806E6990  2C 00 00 00 */	cmpwi r0, 0
/* 806E6994  40 80 00 2C */	bge lbl_806E69C0
/* 806E6998  48 00 02 B4 */	b lbl_806E6C4C
lbl_806E699C:
/* 806E699C  2C 00 00 0A */	cmpwi r0, 0xa
/* 806E69A0  40 80 01 A8 */	bge lbl_806E6B48
/* 806E69A4  48 00 02 A8 */	b lbl_806E6C4C
lbl_806E69A8:
/* 806E69A8  2C 00 00 65 */	cmpwi r0, 0x65
/* 806E69AC  41 82 02 84 */	beq lbl_806E6C30
/* 806E69B0  40 80 02 9C */	bge lbl_806E6C4C
/* 806E69B4  2C 00 00 64 */	cmpwi r0, 0x64
/* 806E69B8  40 80 02 28 */	bge lbl_806E6BE0
/* 806E69BC  48 00 02 90 */	b lbl_806E6C4C
lbl_806E69C0:
/* 806E69C0  38 00 00 FA */	li r0, 0xfa
/* 806E69C4  98 1E 09 D8 */	stb r0, 0x9d8(r30)
/* 806E69C8  38 80 00 0D */	li r4, 0xd
/* 806E69CC  38 A0 00 02 */	li r5, 2
/* 806E69D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E69D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E69D8  4B FF FB 3D */	bl setBck__8daE_HP_cFiUcff
/* 806E69DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052E@ha */
/* 806E69E0  38 03 05 2E */	addi r0, r3, 0x052E /* 0x0007052E@l */
/* 806E69E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E69E8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E69EC  38 81 00 14 */	addi r4, r1, 0x14
/* 806E69F0  38 A0 FF FF */	li r5, -1
/* 806E69F4  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E69F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E69FC  7D 89 03 A6 */	mtctr r12
/* 806E6A00  4E 80 04 21 */	bctrl 
/* 806E6A04  38 00 00 01 */	li r0, 1
/* 806E6A08  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_806E6A0C:
/* 806E6A0C  38 61 00 18 */	addi r3, r1, 0x18
/* 806E6A10  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E6A14  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806E6A18  4B B8 01 1C */	b __mi__4cXyzCFRC3Vec
/* 806E6A1C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E6A20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E6A24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806E6A28  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E6A2C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E6A30  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E6A34  38 61 00 24 */	addi r3, r1, 0x24
/* 806E6A38  4B C6 07 00 */	b PSVECSquareMag
/* 806E6A3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E6A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6A44  40 81 00 58 */	ble lbl_806E6A9C
/* 806E6A48  FC 00 08 34 */	frsqrte f0, f1
/* 806E6A4C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E6A50  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6A54  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E6A58  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6A5C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6A60  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6A64  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6A68  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6A6C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6A70  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6A74  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6A78  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6A7C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6A80  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6A84  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6A88  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6A8C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6A90  FC 21 00 32 */	fmul f1, f1, f0
/* 806E6A94  FC 20 08 18 */	frsp f1, f1
/* 806E6A98  48 00 00 88 */	b lbl_806E6B20
lbl_806E6A9C:
/* 806E6A9C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E6AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6AA4  40 80 00 10 */	bge lbl_806E6AB4
/* 806E6AA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E6AAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E6AB0  48 00 00 70 */	b lbl_806E6B20
lbl_806E6AB4:
/* 806E6AB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E6AB8  80 81 00 08 */	lwz r4, 8(r1)
/* 806E6ABC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E6AC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E6AC4  7C 03 00 00 */	cmpw r3, r0
/* 806E6AC8  41 82 00 14 */	beq lbl_806E6ADC
/* 806E6ACC  40 80 00 40 */	bge lbl_806E6B0C
/* 806E6AD0  2C 03 00 00 */	cmpwi r3, 0
/* 806E6AD4  41 82 00 20 */	beq lbl_806E6AF4
/* 806E6AD8  48 00 00 34 */	b lbl_806E6B0C
lbl_806E6ADC:
/* 806E6ADC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E6AE0  41 82 00 0C */	beq lbl_806E6AEC
/* 806E6AE4  38 00 00 01 */	li r0, 1
/* 806E6AE8  48 00 00 28 */	b lbl_806E6B10
lbl_806E6AEC:
/* 806E6AEC  38 00 00 02 */	li r0, 2
/* 806E6AF0  48 00 00 20 */	b lbl_806E6B10
lbl_806E6AF4:
/* 806E6AF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E6AF8  41 82 00 0C */	beq lbl_806E6B04
/* 806E6AFC  38 00 00 05 */	li r0, 5
/* 806E6B00  48 00 00 10 */	b lbl_806E6B10
lbl_806E6B04:
/* 806E6B04  38 00 00 03 */	li r0, 3
/* 806E6B08  48 00 00 08 */	b lbl_806E6B10
lbl_806E6B0C:
/* 806E6B0C  38 00 00 04 */	li r0, 4
lbl_806E6B10:
/* 806E6B10  2C 00 00 01 */	cmpwi r0, 1
/* 806E6B14  40 82 00 0C */	bne lbl_806E6B20
/* 806E6B18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E6B1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E6B20:
/* 806E6B20  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 806E6B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6B28  40 80 01 24 */	bge lbl_806E6C4C
/* 806E6B2C  38 00 00 64 */	li r0, 0x64
/* 806E6B30  98 1E 09 D8 */	stb r0, 0x9d8(r30)
/* 806E6B34  7F C3 F3 78 */	mr r3, r30
/* 806E6B38  38 80 00 01 */	li r4, 1
/* 806E6B3C  38 A0 00 00 */	li r5, 0
/* 806E6B40  4B FF FA 81 */	bl setActionMode__8daE_HP_cFii
/* 806E6B44  48 00 01 08 */	b lbl_806E6C4C
lbl_806E6B48:
/* 806E6B48  38 00 00 64 */	li r0, 0x64
/* 806E6B4C  98 1E 09 D8 */	stb r0, 0x9d8(r30)
/* 806E6B50  38 80 00 0A */	li r4, 0xa
/* 806E6B54  38 A0 00 00 */	li r5, 0
/* 806E6B58  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E6B5C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E6B60  4B FF F9 B5 */	bl setBck__8daE_HP_cFiUcff
/* 806E6B64  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052F@ha */
/* 806E6B68  38 03 05 2F */	addi r0, r3, 0x052F /* 0x0007052F@l */
/* 806E6B6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E6B70  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E6B74  38 81 00 10 */	addi r4, r1, 0x10
/* 806E6B78  38 A0 FF FF */	li r5, -1
/* 806E6B7C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E6B80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E6B84  7D 89 03 A6 */	mtctr r12
/* 806E6B88  4E 80 04 21 */	bctrl 
/* 806E6B8C  80 7E 07 14 */	lwz r3, 0x714(r30)
/* 806E6B90  38 03 00 01 */	addi r0, r3, 1
/* 806E6B94  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E6B98  48 00 00 B4 */	b lbl_806E6C4C
lbl_806E6B9C:
/* 806E6B9C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E6BA0  38 80 00 01 */	li r4, 1
/* 806E6BA4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E6BA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E6BAC  40 82 00 18 */	bne lbl_806E6BC4
/* 806E6BB0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E6BB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E6BB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E6BBC  41 82 00 08 */	beq lbl_806E6BC4
/* 806E6BC0  38 80 00 00 */	li r4, 0
lbl_806E6BC4:
/* 806E6BC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E6BC8  41 82 00 84 */	beq lbl_806E6C4C
/* 806E6BCC  7F C3 F3 78 */	mr r3, r30
/* 806E6BD0  38 80 00 01 */	li r4, 1
/* 806E6BD4  38 A0 00 00 */	li r5, 0
/* 806E6BD8  4B FF F9 E9 */	bl setActionMode__8daE_HP_cFii
/* 806E6BDC  48 00 00 70 */	b lbl_806E6C4C
lbl_806E6BE0:
/* 806E6BE0  38 00 00 28 */	li r0, 0x28
/* 806E6BE4  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 806E6BE8  38 80 00 0D */	li r4, 0xd
/* 806E6BEC  38 A0 00 02 */	li r5, 2
/* 806E6BF0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E6BF4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E6BF8  4B FF F9 1D */	bl setBck__8daE_HP_cFiUcff
/* 806E6BFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052E@ha */
/* 806E6C00  38 03 05 2E */	addi r0, r3, 0x052E /* 0x0007052E@l */
/* 806E6C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E6C08  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E6C0C  38 81 00 0C */	addi r4, r1, 0xc
/* 806E6C10  38 A0 FF FF */	li r5, -1
/* 806E6C14  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E6C18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E6C1C  7D 89 03 A6 */	mtctr r12
/* 806E6C20  4E 80 04 21 */	bctrl 
/* 806E6C24  80 7E 07 14 */	lwz r3, 0x714(r30)
/* 806E6C28  38 03 00 01 */	addi r0, r3, 1
/* 806E6C2C  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_806E6C30:
/* 806E6C30  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 806E6C34  28 00 00 00 */	cmplwi r0, 0
/* 806E6C38  40 82 00 14 */	bne lbl_806E6C4C
/* 806E6C3C  7F C3 F3 78 */	mr r3, r30
/* 806E6C40  38 80 00 02 */	li r4, 2
/* 806E6C44  38 A0 00 00 */	li r5, 0
/* 806E6C48  4B FF F9 79 */	bl setActionMode__8daE_HP_cFii
lbl_806E6C4C:
/* 806E6C4C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806E6C50  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806E6C54  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806E6C58  4B B8 8E 28 */	b cLib_addCalc0__FPfff
/* 806E6C5C  39 61 00 40 */	addi r11, r1, 0x40
/* 806E6C60  4B C7 B5 C8 */	b _restgpr_29
/* 806E6C64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E6C68  7C 08 03 A6 */	mtlr r0
/* 806E6C6C  38 21 00 40 */	addi r1, r1, 0x40
/* 806E6C70  4E 80 00 20 */	blr 
