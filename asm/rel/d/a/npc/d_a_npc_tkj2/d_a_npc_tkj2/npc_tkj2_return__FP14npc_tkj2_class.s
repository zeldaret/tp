lbl_80B12810:
/* 80B12810  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B12814  7C 08 02 A6 */	mflr r0
/* 80B12818  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B1281C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80B12820  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80B12824  39 61 00 80 */	addi r11, r1, 0x80
/* 80B12828  4B 84 F9 B4 */	b _savegpr_29
/* 80B1282C  7C 7D 1B 78 */	mr r29, r3
/* 80B12830  3C 60 80 B1 */	lis r3, lit_3648@ha
/* 80B12834  3B E3 42 DC */	addi r31, r3, lit_3648@l
/* 80B12838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1283C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B12840  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B12844  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80B12848  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B1284C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B12850  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B12854  C0 5D 05 C0 */	lfs f2, 0x5c0(r29)
/* 80B12858  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B1285C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B12860  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80B12864  4B 75 4E 10 */	b cM_atan2s__Fff
/* 80B12868  B0 7D 05 C4 */	sth r3, 0x5c4(r29)
/* 80B1286C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B12870  EC 20 00 32 */	fmuls f1, f0, f0
/* 80B12874  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B12878  EC 00 00 32 */	fmuls f0, f0, f0
/* 80B1287C  EC 21 00 2A */	fadds f1, f1, f0
/* 80B12880  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B12884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B12888  A8 1D 06 0A */	lha r0, 0x60a(r29)
/* 80B1288C  2C 00 00 01 */	cmpwi r0, 1
/* 80B12890  41 82 00 48 */	beq lbl_80B128D8
/* 80B12894  40 80 00 5C */	bge lbl_80B128F0
/* 80B12898  2C 00 00 00 */	cmpwi r0, 0
/* 80B1289C  40 80 00 08 */	bge lbl_80B128A4
/* 80B128A0  48 00 00 50 */	b lbl_80B128F0
lbl_80B128A4:
/* 80B128A4  7F A3 EB 78 */	mr r3, r29
/* 80B128A8  38 80 00 06 */	li r4, 6
/* 80B128AC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B128B0  38 A0 00 02 */	li r5, 2
/* 80B128B4  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80B128B8  4B FF E5 69 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B128BC  A8 7D 06 0A */	lha r3, 0x60a(r29)
/* 80B128C0  38 03 00 01 */	addi r0, r3, 1
/* 80B128C4  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80B128C8  38 00 00 C8 */	li r0, 0xc8
/* 80B128CC  B0 1D 06 10 */	sth r0, 0x610(r29)
/* 80B128D0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80B128D4  D0 1D 0A 98 */	stfs f0, 0xa98(r29)
lbl_80B128D8:
/* 80B128D8  C3 FF 00 88 */	lfs f31, 0x88(r31)
/* 80B128DC  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80B128E0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B128E4  FC 40 F8 90 */	fmr f2, f31
/* 80B128E8  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80B128EC  4B 75 D1 50 */	b cLib_addCalc2__FPffff
lbl_80B128F0:
/* 80B128F0  C0 1D 0A 98 */	lfs f0, 0xa98(r29)
/* 80B128F4  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B128F8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B128FC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B12900  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80B12904  FC 40 F8 90 */	fmr f2, f31
/* 80B12908  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80B1290C  4B 75 D1 30 */	b cLib_addCalc2__FPffff
/* 80B12910  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B12914  D0 3D 05 D0 */	stfs f1, 0x5d0(r29)
/* 80B12918  C0 5D 05 C0 */	lfs f2, 0x5c0(r29)
/* 80B1291C  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 80B12920  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B12924  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B12928  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B1292C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80B12930  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B12934  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B12938  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B1293C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80B12940  38 61 00 28 */	addi r3, r1, 0x28
/* 80B12944  38 81 00 34 */	addi r4, r1, 0x34
/* 80B12948  4B 83 4A 54 */	b PSVECSquareDistance
/* 80B1294C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B12950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B12954  40 81 00 58 */	ble lbl_80B129AC
/* 80B12958  FC 00 08 34 */	frsqrte f0, f1
/* 80B1295C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80B12960  FC 44 00 32 */	fmul f2, f4, f0
/* 80B12964  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80B12968  FC 00 00 32 */	fmul f0, f0, f0
/* 80B1296C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B12970  FC 03 00 28 */	fsub f0, f3, f0
/* 80B12974  FC 02 00 32 */	fmul f0, f2, f0
/* 80B12978  FC 44 00 32 */	fmul f2, f4, f0
/* 80B1297C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B12980  FC 01 00 32 */	fmul f0, f1, f0
/* 80B12984  FC 03 00 28 */	fsub f0, f3, f0
/* 80B12988  FC 02 00 32 */	fmul f0, f2, f0
/* 80B1298C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B12990  FC 00 00 32 */	fmul f0, f0, f0
/* 80B12994  FC 01 00 32 */	fmul f0, f1, f0
/* 80B12998  FC 03 00 28 */	fsub f0, f3, f0
/* 80B1299C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B129A0  FC 21 00 32 */	fmul f1, f1, f0
/* 80B129A4  FC 20 08 18 */	frsp f1, f1
/* 80B129A8  48 00 00 88 */	b lbl_80B12A30
lbl_80B129AC:
/* 80B129AC  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80B129B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B129B4  40 80 00 10 */	bge lbl_80B129C4
/* 80B129B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B129BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B129C0  48 00 00 70 */	b lbl_80B12A30
lbl_80B129C4:
/* 80B129C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B129C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B129CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B129D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B129D4  7C 03 00 00 */	cmpw r3, r0
/* 80B129D8  41 82 00 14 */	beq lbl_80B129EC
/* 80B129DC  40 80 00 40 */	bge lbl_80B12A1C
/* 80B129E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B129E4  41 82 00 20 */	beq lbl_80B12A04
/* 80B129E8  48 00 00 34 */	b lbl_80B12A1C
lbl_80B129EC:
/* 80B129EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B129F0  41 82 00 0C */	beq lbl_80B129FC
/* 80B129F4  38 00 00 01 */	li r0, 1
/* 80B129F8  48 00 00 28 */	b lbl_80B12A20
lbl_80B129FC:
/* 80B129FC  38 00 00 02 */	li r0, 2
/* 80B12A00  48 00 00 20 */	b lbl_80B12A20
lbl_80B12A04:
/* 80B12A04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B12A08  41 82 00 0C */	beq lbl_80B12A14
/* 80B12A0C  38 00 00 05 */	li r0, 5
/* 80B12A10  48 00 00 10 */	b lbl_80B12A20
lbl_80B12A14:
/* 80B12A14  38 00 00 03 */	li r0, 3
/* 80B12A18  48 00 00 08 */	b lbl_80B12A20
lbl_80B12A1C:
/* 80B12A1C  38 00 00 04 */	li r0, 4
lbl_80B12A20:
/* 80B12A20  2C 00 00 01 */	cmpwi r0, 1
/* 80B12A24  40 82 00 0C */	bne lbl_80B12A30
/* 80B12A28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B12A2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B12A30:
/* 80B12A30  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B12A34  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80B12A38  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 80B12A3C  EC 42 00 2A */	fadds f2, f2, f0
/* 80B12A40  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B12A44  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B12A48  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80B12A4C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B12A50  EC 22 00 24 */	fdivs f1, f2, f0
/* 80B12A54  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80B12A58  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 80B12A5C  4B 75 CF E0 */	b cLib_addCalc2__FPffff
/* 80B12A60  88 1D 05 EB */	lbz r0, 0x5eb(r29)
/* 80B12A64  28 00 00 00 */	cmplwi r0, 0
/* 80B12A68  41 82 00 34 */	beq lbl_80B12A9C
/* 80B12A6C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B12A70  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B12A74  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 80B12A78  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80B12A7C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80B12A80  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B12A84  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B12A88  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80B12A8C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B12A90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B12A94  40 80 00 08 */	bge lbl_80B12A9C
/* 80B12A98  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80B12A9C:
/* 80B12A9C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80B12AA0  A8 9D 05 C4 */	lha r4, 0x5c4(r29)
/* 80B12AA4  38 A0 00 0A */	li r5, 0xa
/* 80B12AA8  A8 DD 05 F8 */	lha r6, 0x5f8(r29)
/* 80B12AAC  4B 75 DB 5C */	b cLib_addCalcAngleS2__FPssss
/* 80B12AB0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80B12AB4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80B12AB8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B12ABC  EC 21 00 2A */	fadds f1, f1, f0
/* 80B12AC0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B12AC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B12AC8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B12ACC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80B12AD0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80B12AD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B12AD8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B12ADC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B12AE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B12AE4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80B12AE8  C0 5D 05 C0 */	lfs f2, 0x5c0(r29)
/* 80B12AEC  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 80B12AF0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B12AF4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B12AF8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B12AFC  38 61 00 10 */	addi r3, r1, 0x10
/* 80B12B00  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B12B04  4B 83 48 98 */	b PSVECSquareDistance
/* 80B12B08  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B12B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B12B10  40 81 00 58 */	ble lbl_80B12B68
/* 80B12B14  FC 00 08 34 */	frsqrte f0, f1
/* 80B12B18  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80B12B1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B12B20  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80B12B24  FC 00 00 32 */	fmul f0, f0, f0
/* 80B12B28  FC 01 00 32 */	fmul f0, f1, f0
/* 80B12B2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B12B30  FC 02 00 32 */	fmul f0, f2, f0
/* 80B12B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80B12B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80B12B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B12B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80B12B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80B12B48  FC 44 00 32 */	fmul f2, f4, f0
/* 80B12B4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B12B50  FC 01 00 32 */	fmul f0, f1, f0
/* 80B12B54  FC 03 00 28 */	fsub f0, f3, f0
/* 80B12B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80B12B5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B12B60  FC 20 08 18 */	frsp f1, f1
/* 80B12B64  48 00 00 88 */	b lbl_80B12BEC
lbl_80B12B68:
/* 80B12B68  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80B12B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B12B70  40 80 00 10 */	bge lbl_80B12B80
/* 80B12B74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B12B78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B12B7C  48 00 00 70 */	b lbl_80B12BEC
lbl_80B12B80:
/* 80B12B80  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B12B84  80 81 00 08 */	lwz r4, 8(r1)
/* 80B12B88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B12B8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B12B90  7C 03 00 00 */	cmpw r3, r0
/* 80B12B94  41 82 00 14 */	beq lbl_80B12BA8
/* 80B12B98  40 80 00 40 */	bge lbl_80B12BD8
/* 80B12B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80B12BA0  41 82 00 20 */	beq lbl_80B12BC0
/* 80B12BA4  48 00 00 34 */	b lbl_80B12BD8
lbl_80B12BA8:
/* 80B12BA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B12BAC  41 82 00 0C */	beq lbl_80B12BB8
/* 80B12BB0  38 00 00 01 */	li r0, 1
/* 80B12BB4  48 00 00 28 */	b lbl_80B12BDC
lbl_80B12BB8:
/* 80B12BB8  38 00 00 02 */	li r0, 2
/* 80B12BBC  48 00 00 20 */	b lbl_80B12BDC
lbl_80B12BC0:
/* 80B12BC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B12BC4  41 82 00 0C */	beq lbl_80B12BD0
/* 80B12BC8  38 00 00 05 */	li r0, 5
/* 80B12BCC  48 00 00 10 */	b lbl_80B12BDC
lbl_80B12BD0:
/* 80B12BD0  38 00 00 03 */	li r0, 3
/* 80B12BD4  48 00 00 08 */	b lbl_80B12BDC
lbl_80B12BD8:
/* 80B12BD8  38 00 00 04 */	li r0, 4
lbl_80B12BDC:
/* 80B12BDC  2C 00 00 01 */	cmpwi r0, 1
/* 80B12BE0  40 82 00 0C */	bne lbl_80B12BEC
/* 80B12BE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B12BE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B12BEC:
/* 80B12BEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80B12BF0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B12BF4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80B12BF8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B12BFC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80B12C00  A8 1D 06 10 */	lha r0, 0x610(r29)
/* 80B12C04  2C 00 00 00 */	cmpwi r0, 0
/* 80B12C08  40 82 00 4C */	bne lbl_80B12C54
/* 80B12C0C  88 1D 05 EB */	lbz r0, 0x5eb(r29)
/* 80B12C10  28 00 00 00 */	cmplwi r0, 0
/* 80B12C14  41 82 00 10 */	beq lbl_80B12C24
/* 80B12C18  38 00 00 32 */	li r0, 0x32
/* 80B12C1C  B0 1D 06 10 */	sth r0, 0x610(r29)
/* 80B12C20  48 00 00 34 */	b lbl_80B12C54
lbl_80B12C24:
/* 80B12C24  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B12C28  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80B12C2C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B12C30  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80B12C34  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B12C38  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80B12C3C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80B12C40  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80B12C44  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80B12C48  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 80B12C4C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80B12C50  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
lbl_80B12C54:
/* 80B12C54  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80B12C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B12C5C  40 80 00 70 */	bge lbl_80B12CCC
/* 80B12C60  7F A3 EB 78 */	mr r3, r29
/* 80B12C64  4B FF EE 4D */	bl GndCheck2__FP14npc_tkj2_class
/* 80B12C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B12C6C  40 82 00 30 */	bne lbl_80B12C9C
/* 80B12C70  7F A3 EB 78 */	mr r3, r29
/* 80B12C74  38 80 00 07 */	li r4, 7
/* 80B12C78  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80B12C7C  38 A0 00 00 */	li r5, 0
/* 80B12C80  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B12C84  4B FF E1 9D */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B12C88  38 00 00 06 */	li r0, 6
/* 80B12C8C  B0 1D 06 08 */	sth r0, 0x608(r29)
/* 80B12C90  38 00 00 00 */	li r0, 0
/* 80B12C94  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80B12C98  48 00 00 34 */	b lbl_80B12CCC
lbl_80B12C9C:
/* 80B12C9C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B12CA0  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80B12CA4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B12CA8  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80B12CAC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B12CB0  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80B12CB4  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80B12CB8  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80B12CBC  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80B12CC0  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 80B12CC4  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80B12CC8  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
lbl_80B12CCC:
/* 80B12CCC  80 1D 06 A0 */	lwz r0, 0x6a0(r29)
/* 80B12CD0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B12CD4  41 82 00 2C */	beq lbl_80B12D00
/* 80B12CD8  7F A3 EB 78 */	mr r3, r29
/* 80B12CDC  38 80 00 07 */	li r4, 7
/* 80B12CE0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80B12CE4  38 A0 00 00 */	li r5, 0
/* 80B12CE8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B12CEC  4B FF E1 35 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B12CF0  38 00 00 06 */	li r0, 6
/* 80B12CF4  B0 1D 06 08 */	sth r0, 0x608(r29)
/* 80B12CF8  38 00 00 00 */	li r0, 0
/* 80B12CFC  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_80B12D00:
/* 80B12D00  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80B12D04  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80B12D08  39 61 00 80 */	addi r11, r1, 0x80
/* 80B12D0C  4B 84 F5 1C */	b _restgpr_29
/* 80B12D10  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B12D14  7C 08 03 A6 */	mtlr r0
/* 80B12D18  38 21 00 90 */	addi r1, r1, 0x90
/* 80B12D1C  4E 80 00 20 */	blr 
