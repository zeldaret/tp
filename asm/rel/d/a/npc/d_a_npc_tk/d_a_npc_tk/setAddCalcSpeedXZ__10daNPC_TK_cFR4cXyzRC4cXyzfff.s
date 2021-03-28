lbl_80B018F4:
/* 80B018F4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B018F8  7C 08 02 A6 */	mflr r0
/* 80B018FC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B01900  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B01904  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B01908  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80B0190C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80B01910  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80B01914  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80B01918  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80B0191C  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80B01920  39 61 00 80 */	addi r11, r1, 0x80
/* 80B01924  4B 86 08 B4 */	b _savegpr_28
/* 80B01928  7C 7F 1B 78 */	mr r31, r3
/* 80B0192C  7C 9C 23 78 */	mr r28, r4
/* 80B01930  7C BD 2B 78 */	mr r29, r5
/* 80B01934  FF A0 08 90 */	fmr f29, f1
/* 80B01938  FF C0 10 90 */	fmr f30, f2
/* 80B0193C  FF E0 18 90 */	fmr f31, f3
/* 80B01940  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B01944  3B C3 C1 C4 */	addi r30, r3, lit_3999@l
/* 80B01948  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B0194C  7F A4 EB 78 */	mr r4, r29
/* 80B01950  7F 85 E3 78 */	mr r5, r28
/* 80B01954  4B 76 51 E0 */	b __mi__4cXyzCFRC3Vec
/* 80B01958  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B0195C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B01960  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B01964  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B01968  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B0196C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B01970  38 61 00 64 */	addi r3, r1, 0x64
/* 80B01974  4B 84 57 C4 */	b PSVECSquareMag
/* 80B01978  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B0197C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01980  40 81 00 58 */	ble lbl_80B019D8
/* 80B01984  FC 00 08 34 */	frsqrte f0, f1
/* 80B01988  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B0198C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B01990  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B01994  FC 00 00 32 */	fmul f0, f0, f0
/* 80B01998  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0199C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B019A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B019A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B019A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B019AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B019B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B019B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B019B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B019BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B019C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B019C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B019C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B019CC  FF 81 00 32 */	fmul f28, f1, f0
/* 80B019D0  FF 80 E0 18 */	frsp f28, f28
/* 80B019D4  48 00 00 90 */	b lbl_80B01A64
lbl_80B019D8:
/* 80B019D8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B019DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B019E0  40 80 00 10 */	bge lbl_80B019F0
/* 80B019E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B019E8  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)
/* 80B019EC  48 00 00 78 */	b lbl_80B01A64
lbl_80B019F0:
/* 80B019F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B019F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B019F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B019FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B01A00  7C 03 00 00 */	cmpw r3, r0
/* 80B01A04  41 82 00 14 */	beq lbl_80B01A18
/* 80B01A08  40 80 00 40 */	bge lbl_80B01A48
/* 80B01A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B01A10  41 82 00 20 */	beq lbl_80B01A30
/* 80B01A14  48 00 00 34 */	b lbl_80B01A48
lbl_80B01A18:
/* 80B01A18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B01A1C  41 82 00 0C */	beq lbl_80B01A28
/* 80B01A20  38 00 00 01 */	li r0, 1
/* 80B01A24  48 00 00 28 */	b lbl_80B01A4C
lbl_80B01A28:
/* 80B01A28  38 00 00 02 */	li r0, 2
/* 80B01A2C  48 00 00 20 */	b lbl_80B01A4C
lbl_80B01A30:
/* 80B01A30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B01A34  41 82 00 0C */	beq lbl_80B01A40
/* 80B01A38  38 00 00 05 */	li r0, 5
/* 80B01A3C  48 00 00 10 */	b lbl_80B01A4C
lbl_80B01A40:
/* 80B01A40  38 00 00 03 */	li r0, 3
/* 80B01A44  48 00 00 08 */	b lbl_80B01A4C
lbl_80B01A48:
/* 80B01A48  38 00 00 04 */	li r0, 4
lbl_80B01A4C:
/* 80B01A4C  2C 00 00 01 */	cmpwi r0, 1
/* 80B01A50  40 82 00 10 */	bne lbl_80B01A60
/* 80B01A54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B01A58  C3 83 0A E0 */	lfs f28, __float_nan@l(r3)
/* 80B01A5C  48 00 00 08 */	b lbl_80B01A64
lbl_80B01A60:
/* 80B01A60  FF 80 08 90 */	fmr f28, f1
lbl_80B01A64:
/* 80B01A64  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B01A68  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B01A6C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B01A70  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B01A74  7F 83 E3 78 */	mr r3, r28
/* 80B01A78  7F A4 EB 78 */	mr r4, r29
/* 80B01A7C  4B 76 55 F0 */	b __ne__4cXyzCFRC3Vec
/* 80B01A80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B01A84  41 82 00 BC */	beq lbl_80B01B40
/* 80B01A88  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 80B01A8C  4C 41 13 82 */	cror 2, 1, 2
/* 80B01A90  40 82 00 B0 */	bne lbl_80B01B40
/* 80B01A94  EF 9C 07 72 */	fmuls f28, f28, f29
/* 80B01A98  38 61 00 64 */	addi r3, r1, 0x64
/* 80B01A9C  7C 64 1B 78 */	mr r4, r3
/* 80B01AA0  FC 20 E8 90 */	fmr f1, f29
/* 80B01AA4  4B 84 56 34 */	b PSVECScale
/* 80B01AA8  FC 00 E2 10 */	fabs f0, f28
/* 80B01AAC  FC 20 00 18 */	frsp f1, f0
/* 80B01AB0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80B01AB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01AB8  41 80 00 88 */	blt lbl_80B01B40
/* 80B01ABC  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 80B01AC0  40 81 00 40 */	ble lbl_80B01B00
/* 80B01AC4  38 61 00 40 */	addi r3, r1, 0x40
/* 80B01AC8  38 81 00 64 */	addi r4, r1, 0x64
/* 80B01ACC  FC 20 F0 90 */	fmr f1, f30
/* 80B01AD0  4B 76 50 B4 */	b __ml__4cXyzCFf
/* 80B01AD4  38 61 00 34 */	addi r3, r1, 0x34
/* 80B01AD8  38 81 00 40 */	addi r4, r1, 0x40
/* 80B01ADC  FC 20 E0 90 */	fmr f1, f28
/* 80B01AE0  4B 76 51 38 */	b __dv__4cXyzCFf
/* 80B01AE4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B01AE8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B01AEC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B01AF0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B01AF4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B01AF8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B01AFC  48 00 00 44 */	b lbl_80B01B40
lbl_80B01B00:
/* 80B01B00  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 80B01B04  40 80 00 3C */	bge lbl_80B01B40
/* 80B01B08  38 61 00 28 */	addi r3, r1, 0x28
/* 80B01B0C  38 81 00 64 */	addi r4, r1, 0x64
/* 80B01B10  FC 20 F8 90 */	fmr f1, f31
/* 80B01B14  4B 76 50 70 */	b __ml__4cXyzCFf
/* 80B01B18  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B01B1C  38 81 00 28 */	addi r4, r1, 0x28
/* 80B01B20  FC 20 E0 90 */	fmr f1, f28
/* 80B01B24  4B 76 50 F4 */	b __dv__4cXyzCFf
/* 80B01B28  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B01B2C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B01B30  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B01B34  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B01B38  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B01B3C  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80B01B40:
/* 80B01B40  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B01B44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B01B48  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B01B4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B01B50  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B01B54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B01B58  38 61 00 10 */	addi r3, r1, 0x10
/* 80B01B5C  4B 84 55 DC */	b PSVECSquareMag
/* 80B01B60  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B01B64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01B68  40 81 00 58 */	ble lbl_80B01BC0
/* 80B01B6C  FC 00 08 34 */	frsqrte f0, f1
/* 80B01B70  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B01B74  FC 44 00 32 */	fmul f2, f4, f0
/* 80B01B78  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B01B7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B01B80  FC 01 00 32 */	fmul f0, f1, f0
/* 80B01B84  FC 03 00 28 */	fsub f0, f3, f0
/* 80B01B88  FC 02 00 32 */	fmul f0, f2, f0
/* 80B01B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B01B90  FC 00 00 32 */	fmul f0, f0, f0
/* 80B01B94  FC 01 00 32 */	fmul f0, f1, f0
/* 80B01B98  FC 03 00 28 */	fsub f0, f3, f0
/* 80B01B9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B01BA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B01BA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B01BA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B01BAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B01BB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B01BB4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B01BB8  FC 20 08 18 */	frsp f1, f1
/* 80B01BBC  48 00 00 88 */	b lbl_80B01C44
lbl_80B01BC0:
/* 80B01BC0  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B01BC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01BC8  40 80 00 10 */	bge lbl_80B01BD8
/* 80B01BCC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B01BD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B01BD4  48 00 00 70 */	b lbl_80B01C44
lbl_80B01BD8:
/* 80B01BD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B01BDC  80 81 00 08 */	lwz r4, 8(r1)
/* 80B01BE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B01BE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B01BE8  7C 03 00 00 */	cmpw r3, r0
/* 80B01BEC  41 82 00 14 */	beq lbl_80B01C00
/* 80B01BF0  40 80 00 40 */	bge lbl_80B01C30
/* 80B01BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B01BF8  41 82 00 20 */	beq lbl_80B01C18
/* 80B01BFC  48 00 00 34 */	b lbl_80B01C30
lbl_80B01C00:
/* 80B01C00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B01C04  41 82 00 0C */	beq lbl_80B01C10
/* 80B01C08  38 00 00 01 */	li r0, 1
/* 80B01C0C  48 00 00 28 */	b lbl_80B01C34
lbl_80B01C10:
/* 80B01C10  38 00 00 02 */	li r0, 2
/* 80B01C14  48 00 00 20 */	b lbl_80B01C34
lbl_80B01C18:
/* 80B01C18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B01C1C  41 82 00 0C */	beq lbl_80B01C28
/* 80B01C20  38 00 00 05 */	li r0, 5
/* 80B01C24  48 00 00 10 */	b lbl_80B01C34
lbl_80B01C28:
/* 80B01C28  38 00 00 03 */	li r0, 3
/* 80B01C2C  48 00 00 08 */	b lbl_80B01C34
lbl_80B01C30:
/* 80B01C30  38 00 00 04 */	li r0, 4
lbl_80B01C34:
/* 80B01C34  2C 00 00 01 */	cmpwi r0, 1
/* 80B01C38  40 82 00 0C */	bne lbl_80B01C44
/* 80B01C3C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B01C40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B01C44:
/* 80B01C44  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80B01C48  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80B01C4C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B01C50  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B01C54  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80B01C58  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80B01C5C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80B01C60  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80B01C64  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80B01C68  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80B01C6C  39 61 00 80 */	addi r11, r1, 0x80
/* 80B01C70  4B 86 05 B4 */	b _restgpr_28
/* 80B01C74  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B01C78  7C 08 03 A6 */	mtlr r0
/* 80B01C7C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B01C80  4E 80 00 20 */	blr 
