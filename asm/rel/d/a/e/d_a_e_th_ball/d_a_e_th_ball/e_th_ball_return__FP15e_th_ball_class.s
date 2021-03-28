lbl_807B69A4:
/* 807B69A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B69A8  7C 08 02 A6 */	mflr r0
/* 807B69AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B69B0  39 61 00 50 */	addi r11, r1, 0x50
/* 807B69B4  4B BA B8 24 */	b _savegpr_28
/* 807B69B8  7C 7D 1B 78 */	mr r29, r3
/* 807B69BC  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B69C0  3B E3 7E B8 */	addi r31, r3, lit_3746@l
/* 807B69C4  3C 60 80 7C */	lis r3, master@ha
/* 807B69C8  38 63 80 E0 */	addi r3, r3, master@l
/* 807B69CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807B69D0  80 63 05 CC */	lwz r3, 0x5cc(r3)
/* 807B69D4  80 63 00 04 */	lwz r3, 4(r3)
/* 807B69D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807B69DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B69E0  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 807B69E4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807B69E8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807B69EC  80 84 00 00 */	lwz r4, 0(r4)
/* 807B69F0  4B B8 FA C0 */	b PSMTXCopy
/* 807B69F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B69F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807B69FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B6A00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B6A04  38 61 00 0C */	addi r3, r1, 0xc
/* 807B6A08  38 81 00 18 */	addi r4, r1, 0x18
/* 807B6A0C  4B AB A4 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B6A10  38 61 00 18 */	addi r3, r1, 0x18
/* 807B6A14  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807B6A18  7C 65 1B 78 */	mr r5, r3
/* 807B6A1C  4B B9 06 98 */	b PSVECSubtract
/* 807B6A20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B6A24  FC 20 00 50 */	fneg f1, f0
/* 807B6A28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B6A2C  FC 40 00 50 */	fneg f2, f0
/* 807B6A30  4B AB 0C 44 */	b cM_atan2s__Fff
/* 807B6A34  7C 7C 1B 78 */	mr r28, r3
/* 807B6A38  3B C0 00 01 */	li r30, 1
/* 807B6A3C  A8 1D 06 50 */	lha r0, 0x650(r29)
/* 807B6A40  2C 00 00 02 */	cmpwi r0, 2
/* 807B6A44  41 82 01 18 */	beq lbl_807B6B5C
/* 807B6A48  40 80 00 14 */	bge lbl_807B6A5C
/* 807B6A4C  2C 00 00 00 */	cmpwi r0, 0
/* 807B6A50  41 82 00 18 */	beq lbl_807B6A68
/* 807B6A54  40 80 00 50 */	bge lbl_807B6AA4
/* 807B6A58  48 00 02 84 */	b lbl_807B6CDC
lbl_807B6A5C:
/* 807B6A5C  2C 00 00 04 */	cmpwi r0, 4
/* 807B6A60  40 80 02 7C */	bge lbl_807B6CDC
/* 807B6A64  48 00 02 54 */	b lbl_807B6CB8
lbl_807B6A68:
/* 807B6A68  3C 60 80 7C */	lis r3, master@ha
/* 807B6A6C  80 83 80 E0 */	lwz r4, master@l(r3)
/* 807B6A70  88 64 06 8A */	lbz r3, 0x68a(r4)
/* 807B6A74  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 807B6A78  41 82 00 14 */	beq lbl_807B6A8C
/* 807B6A7C  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 807B6A80  98 04 06 8A */	stb r0, 0x68a(r4)
/* 807B6A84  38 00 00 01 */	li r0, 1
/* 807B6A88  B0 1D 06 50 */	sth r0, 0x650(r29)
lbl_807B6A8C:
/* 807B6A8C  A8 1D 06 52 */	lha r0, 0x652(r29)
/* 807B6A90  2C 00 00 00 */	cmpwi r0, 0
/* 807B6A94  40 82 02 48 */	bne lbl_807B6CDC
/* 807B6A98  38 00 00 01 */	li r0, 1
/* 807B6A9C  98 1D 15 C6 */	stb r0, 0x15c6(r29)
/* 807B6AA0  48 00 02 3C */	b lbl_807B6CDC
lbl_807B6AA4:
/* 807B6AA4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807B6AA8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 807B6AAC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B6AB0  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 807B6AB4  4B AB 8F 88 */	b cLib_addCalc2__FPffff
/* 807B6AB8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807B6ABC  7F 84 E3 78 */	mr r4, r28
/* 807B6AC0  38 A0 00 01 */	li r5, 1
/* 807B6AC4  38 C0 10 00 */	li r6, 0x1000
/* 807B6AC8  4B AB 9B 40 */	b cLib_addCalcAngleS2__FPssss
/* 807B6ACC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807B6AD0  38 80 00 00 */	li r4, 0
/* 807B6AD4  38 A0 00 01 */	li r5, 1
/* 807B6AD8  38 C0 10 00 */	li r6, 0x1000
/* 807B6ADC  4B AB 9B 2C */	b cLib_addCalcAngleS2__FPssss
/* 807B6AE0  3B C0 00 00 */	li r30, 0
/* 807B6AE4  B3 9D 04 DE */	sth r28, 0x4de(r29)
/* 807B6AE8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 807B6AEC  38 80 00 00 */	li r4, 0
/* 807B6AF0  38 A0 00 01 */	li r5, 1
/* 807B6AF4  38 C0 10 00 */	li r6, 0x1000
/* 807B6AF8  4B AB 9B 10 */	b cLib_addCalcAngleS2__FPssss
/* 807B6AFC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807B6B00  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807B6B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6B08  4C 40 13 82 */	cror 2, 0, 2
/* 807B6B0C  40 82 00 50 */	bne lbl_807B6B5C
/* 807B6B10  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807B6B14  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807B6B18  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807B6B1C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807B6B20  4B AB 0E 6C */	b cM_rndFX__Ff
/* 807B6B24  FC 00 08 1E */	fctiwz f0, f1
/* 807B6B28  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807B6B2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807B6B30  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807B6B34  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807B6B38  4B AB 0E 54 */	b cM_rndFX__Ff
/* 807B6B3C  FC 00 08 1E */	fctiwz f0, f1
/* 807B6B40  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807B6B44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807B6B48  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807B6B4C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807B6B50  D0 1D 0D E4 */	stfs f0, 0xde4(r29)
/* 807B6B54  38 00 00 02 */	li r0, 2
/* 807B6B58  B0 1D 06 50 */	sth r0, 0x650(r29)
lbl_807B6B5C:
/* 807B6B5C  B3 9D 04 DE */	sth r28, 0x4de(r29)
/* 807B6B60  38 61 00 18 */	addi r3, r1, 0x18
/* 807B6B64  4B B9 05 D4 */	b PSVECSquareMag
/* 807B6B68  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B6B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6B70  40 81 00 58 */	ble lbl_807B6BC8
/* 807B6B74  FC 00 08 34 */	frsqrte f0, f1
/* 807B6B78  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 807B6B7C  FC 44 00 32 */	fmul f2, f4, f0
/* 807B6B80  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 807B6B84  FC 00 00 32 */	fmul f0, f0, f0
/* 807B6B88  FC 01 00 32 */	fmul f0, f1, f0
/* 807B6B8C  FC 03 00 28 */	fsub f0, f3, f0
/* 807B6B90  FC 02 00 32 */	fmul f0, f2, f0
/* 807B6B94  FC 44 00 32 */	fmul f2, f4, f0
/* 807B6B98  FC 00 00 32 */	fmul f0, f0, f0
/* 807B6B9C  FC 01 00 32 */	fmul f0, f1, f0
/* 807B6BA0  FC 03 00 28 */	fsub f0, f3, f0
/* 807B6BA4  FC 02 00 32 */	fmul f0, f2, f0
/* 807B6BA8  FC 44 00 32 */	fmul f2, f4, f0
/* 807B6BAC  FC 00 00 32 */	fmul f0, f0, f0
/* 807B6BB0  FC 01 00 32 */	fmul f0, f1, f0
/* 807B6BB4  FC 03 00 28 */	fsub f0, f3, f0
/* 807B6BB8  FC 02 00 32 */	fmul f0, f2, f0
/* 807B6BBC  FC 21 00 32 */	fmul f1, f1, f0
/* 807B6BC0  FC 20 08 18 */	frsp f1, f1
/* 807B6BC4  48 00 00 88 */	b lbl_807B6C4C
lbl_807B6BC8:
/* 807B6BC8  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 807B6BCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6BD0  40 80 00 10 */	bge lbl_807B6BE0
/* 807B6BD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B6BD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807B6BDC  48 00 00 70 */	b lbl_807B6C4C
lbl_807B6BE0:
/* 807B6BE0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807B6BE4  80 81 00 08 */	lwz r4, 8(r1)
/* 807B6BE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807B6BEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807B6BF0  7C 03 00 00 */	cmpw r3, r0
/* 807B6BF4  41 82 00 14 */	beq lbl_807B6C08
/* 807B6BF8  40 80 00 40 */	bge lbl_807B6C38
/* 807B6BFC  2C 03 00 00 */	cmpwi r3, 0
/* 807B6C00  41 82 00 20 */	beq lbl_807B6C20
/* 807B6C04  48 00 00 34 */	b lbl_807B6C38
lbl_807B6C08:
/* 807B6C08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B6C0C  41 82 00 0C */	beq lbl_807B6C18
/* 807B6C10  38 00 00 01 */	li r0, 1
/* 807B6C14  48 00 00 28 */	b lbl_807B6C3C
lbl_807B6C18:
/* 807B6C18  38 00 00 02 */	li r0, 2
/* 807B6C1C  48 00 00 20 */	b lbl_807B6C3C
lbl_807B6C20:
/* 807B6C20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B6C24  41 82 00 0C */	beq lbl_807B6C30
/* 807B6C28  38 00 00 05 */	li r0, 5
/* 807B6C2C  48 00 00 10 */	b lbl_807B6C3C
lbl_807B6C30:
/* 807B6C30  38 00 00 03 */	li r0, 3
/* 807B6C34  48 00 00 08 */	b lbl_807B6C3C
lbl_807B6C38:
/* 807B6C38  38 00 00 04 */	li r0, 4
lbl_807B6C3C:
/* 807B6C3C  2C 00 00 01 */	cmpwi r0, 1
/* 807B6C40  40 82 00 0C */	bne lbl_807B6C4C
/* 807B6C44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B6C48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807B6C4C:
/* 807B6C4C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807B6C50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6C54  40 80 00 40 */	bge lbl_807B6C94
/* 807B6C58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B6C5C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807B6C60  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807B6C64  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807B6C68  38 00 00 03 */	li r0, 3
/* 807B6C6C  B0 1D 06 50 */	sth r0, 0x650(r29)
/* 807B6C70  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807B6C74  4B AB 0D 18 */	b cM_rndFX__Ff
/* 807B6C78  FC 00 08 1E */	fctiwz f0, f1
/* 807B6C7C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807B6C80  80 61 00 34 */	lwz r3, 0x34(r1)
/* 807B6C84  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807B6C88  7C 00 1A 14 */	add r0, r0, r3
/* 807B6C8C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807B6C90  48 00 00 4C */	b lbl_807B6CDC
lbl_807B6C94:
/* 807B6C94  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807B6C98  FC 00 02 10 */	fabs f0, f0
/* 807B6C9C  FC 20 00 18 */	frsp f1, f0
/* 807B6CA0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807B6CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6CA8  40 80 00 34 */	bge lbl_807B6CDC
/* 807B6CAC  38 00 00 03 */	li r0, 3
/* 807B6CB0  B0 1D 06 50 */	sth r0, 0x650(r29)
/* 807B6CB4  48 00 00 28 */	b lbl_807B6CDC
lbl_807B6CB8:
/* 807B6CB8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807B6CBC  FC 00 02 10 */	fabs f0, f0
/* 807B6CC0  FC 20 00 18 */	frsp f1, f0
/* 807B6CC4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807B6CC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6CCC  40 80 00 10 */	bge lbl_807B6CDC
/* 807B6CD0  38 00 00 00 */	li r0, 0
/* 807B6CD4  B0 1D 06 4E */	sth r0, 0x64e(r29)
/* 807B6CD8  B0 1D 06 50 */	sth r0, 0x650(r29)
lbl_807B6CDC:
/* 807B6CDC  7F A3 EB 78 */	mr r3, r29
/* 807B6CE0  7F C4 F3 78 */	mr r4, r30
/* 807B6CE4  4B FF F2 49 */	bl normal_move__FP15e_th_ball_classSc
/* 807B6CE8  39 61 00 50 */	addi r11, r1, 0x50
/* 807B6CEC  4B BA B5 38 */	b _restgpr_28
/* 807B6CF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B6CF4  7C 08 03 A6 */	mtlr r0
/* 807B6CF8  38 21 00 50 */	addi r1, r1, 0x50
/* 807B6CFC  4E 80 00 20 */	blr 
