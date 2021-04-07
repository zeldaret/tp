lbl_80BD38DC:
/* 80BD38DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BD38E0  7C 08 02 A6 */	mflr r0
/* 80BD38E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BD38E8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BD38EC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BD38F0  39 61 00 50 */	addi r11, r1, 0x50
/* 80BD38F4  4B 78 E8 D9 */	bl _savegpr_25
/* 80BD38F8  7C 7D 1B 78 */	mr r29, r3
/* 80BD38FC  3C 60 80 BD */	lis r3, lit_3703@ha /* 0x80BD3FF0@ha */
/* 80BD3900  3B 63 3F F0 */	addi r27, r3, lit_3703@l /* 0x80BD3FF0@l */
/* 80BD3904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD3908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD390C  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80BD3910  3B E0 00 01 */	li r31, 1
/* 80BD3914  3B C0 00 00 */	li r30, 0
/* 80BD3918  3B 80 00 00 */	li r28, 0
/* 80BD391C  C3 FB 00 20 */	lfs f31, 0x20(r27)
lbl_80BD3920:
/* 80BD3920  7F 3D E2 14 */	add r25, r29, r28
/* 80BD3924  C0 39 05 70 */	lfs f1, 0x570(r25)
/* 80BD3928  C0 19 05 68 */	lfs f0, 0x568(r25)
/* 80BD392C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD3930  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80BD3934  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BD3938  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 80BD393C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BD3940  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD3944  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 80BD3948  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BD394C  38 61 00 0C */	addi r3, r1, 0xc
/* 80BD3950  38 81 00 18 */	addi r4, r1, 0x18
/* 80BD3954  4B 77 3A 49 */	bl PSVECSquareDistance
/* 80BD3958  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BD395C  40 81 00 58 */	ble lbl_80BD39B4
/* 80BD3960  FC 00 08 34 */	frsqrte f0, f1
/* 80BD3964  C8 9B 00 28 */	lfd f4, 0x28(r27)
/* 80BD3968  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD396C  C8 7B 00 30 */	lfd f3, 0x30(r27)
/* 80BD3970  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD3974  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD3978  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD397C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD3980  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD3984  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD3988  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD398C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD3990  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD3994  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD3998  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD399C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD39A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD39A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD39A8  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD39AC  FC 20 08 18 */	frsp f1, f1
/* 80BD39B0  48 00 00 88 */	b lbl_80BD3A38
lbl_80BD39B4:
/* 80BD39B4  C8 1B 00 38 */	lfd f0, 0x38(r27)
/* 80BD39B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD39BC  40 80 00 10 */	bge lbl_80BD39CC
/* 80BD39C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD39C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD39C8  48 00 00 70 */	b lbl_80BD3A38
lbl_80BD39CC:
/* 80BD39CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD39D0  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD39D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD39D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD39DC  7C 03 00 00 */	cmpw r3, r0
/* 80BD39E0  41 82 00 14 */	beq lbl_80BD39F4
/* 80BD39E4  40 80 00 40 */	bge lbl_80BD3A24
/* 80BD39E8  2C 03 00 00 */	cmpwi r3, 0
/* 80BD39EC  41 82 00 20 */	beq lbl_80BD3A0C
/* 80BD39F0  48 00 00 34 */	b lbl_80BD3A24
lbl_80BD39F4:
/* 80BD39F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD39F8  41 82 00 0C */	beq lbl_80BD3A04
/* 80BD39FC  38 00 00 01 */	li r0, 1
/* 80BD3A00  48 00 00 28 */	b lbl_80BD3A28
lbl_80BD3A04:
/* 80BD3A04  38 00 00 02 */	li r0, 2
/* 80BD3A08  48 00 00 20 */	b lbl_80BD3A28
lbl_80BD3A0C:
/* 80BD3A0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD3A10  41 82 00 0C */	beq lbl_80BD3A1C
/* 80BD3A14  38 00 00 05 */	li r0, 5
/* 80BD3A18  48 00 00 10 */	b lbl_80BD3A28
lbl_80BD3A1C:
/* 80BD3A1C  38 00 00 03 */	li r0, 3
/* 80BD3A20  48 00 00 08 */	b lbl_80BD3A28
lbl_80BD3A24:
/* 80BD3A24  38 00 00 04 */	li r0, 4
lbl_80BD3A28:
/* 80BD3A28  2C 00 00 01 */	cmpwi r0, 1
/* 80BD3A2C  40 82 00 0C */	bne lbl_80BD3A38
/* 80BD3A30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD3A34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD3A38:
/* 80BD3A38  C0 1D 07 5C */	lfs f0, 0x75c(r29)
/* 80BD3A3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD3A40  40 81 00 2C */	ble lbl_80BD3A6C
/* 80BD3A44  7F A3 EB 78 */	mr r3, r29
/* 80BD3A48  38 99 05 68 */	addi r4, r25, 0x568
/* 80BD3A4C  48 00 00 51 */	bl checkViewArea__15daObjCRVHAHEN_cFP4cXyz
/* 80BD3A50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD3A54  40 82 00 18 */	bne lbl_80BD3A6C
/* 80BD3A58  3B FF 00 01 */	addi r31, r31, 1
/* 80BD3A5C  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80BD3A60  40 82 00 0C */	bne lbl_80BD3A6C
/* 80BD3A64  7F A3 EB 78 */	mr r3, r29
/* 80BD3A68  4B 44 62 15 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BD3A6C:
/* 80BD3A6C  3B DE 00 01 */	addi r30, r30, 1
/* 80BD3A70  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80BD3A74  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BD3A78  41 80 FE A8 */	blt lbl_80BD3920
/* 80BD3A7C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BD3A80  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BD3A84  39 61 00 50 */	addi r11, r1, 0x50
/* 80BD3A88  4B 78 E7 91 */	bl _restgpr_25
/* 80BD3A8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BD3A90  7C 08 03 A6 */	mtlr r0
/* 80BD3A94  38 21 00 60 */	addi r1, r1, 0x60
/* 80BD3A98  4E 80 00 20 */	blr 
