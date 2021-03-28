lbl_80488994:
/* 80488994  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80488998  7C 08 02 A6 */	mflr r0
/* 8048899C  90 01 01 14 */	stw r0, 0x114(r1)
/* 804889A0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 804889A4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 804889A8  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 804889AC  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 804889B0  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 804889B4  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 804889B8  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 804889BC  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 804889C0  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 804889C4  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 804889C8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804889CC  4B ED 97 E4 */	b _savegpr_18
/* 804889D0  7C 75 1B 78 */	mr r21, r3
/* 804889D4  3C 80 80 49 */	lis r4, lit_4025@ha
/* 804889D8  3B A4 96 E4 */	addi r29, r4, lit_4025@l
/* 804889DC  4B FF F7 E5 */	bl getArrowActorP__15daTag_AllMato_cFv
/* 804889E0  3B 40 00 00 */	li r26, 0
/* 804889E4  3A 80 00 00 */	li r20, 0
/* 804889E8  3C 60 80 49 */	lis r3, l_findActorPtrs@ha
/* 804889EC  3B C3 98 80 */	addi r30, r3, l_findActorPtrs@l
/* 804889F0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 804889F4  C3 C3 11 80 */	lfs f30, G_CM3D_F_ABS_MIN@l(r3)
/* 804889F8  3C 60 80 49 */	lis r3, l_findCount@ha
/* 804889FC  3B E3 9A 10 */	addi r31, r3, l_findCount@l
/* 80488A00  48 00 04 F0 */	b lbl_80488EF0
lbl_80488A04:
/* 80488A04  7C 7E A0 2E */	lwzx r3, r30, r20
/* 80488A08  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80488A0C  FC 00 02 10 */	fabs f0, f0
/* 80488A10  FC 00 00 18 */	frsp f0, f0
/* 80488A14  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80488A18  7C 00 00 26 */	mfcr r0
/* 80488A1C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80488A20  40 82 04 C8 */	bne lbl_80488EE8
/* 80488A24  7C 79 1B 78 */	mr r25, r3
/* 80488A28  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 80488A2C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80488A30  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80488A34  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80488A38  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80488A3C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80488A40  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80488A44  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80488A48  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80488A4C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80488A50  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 80488A54  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80488A58  C0 23 09 A0 */	lfs f1, 0x9a0(r3)
/* 80488A5C  FF 80 08 90 */	fmr f28, f1
/* 80488A60  C3 63 05 30 */	lfs f27, 0x530(r3)
/* 80488A64  D0 55 05 90 */	stfs f2, 0x590(r21)
/* 80488A68  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80488A6C  D0 15 05 94 */	stfs f0, 0x594(r21)
/* 80488A70  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80488A74  D0 15 05 98 */	stfs f0, 0x598(r21)
/* 80488A78  38 61 00 5C */	addi r3, r1, 0x5c
/* 80488A7C  38 81 00 68 */	addi r4, r1, 0x68
/* 80488A80  4B DD E1 04 */	b __ml__4cXyzCFf
/* 80488A84  38 61 00 50 */	addi r3, r1, 0x50
/* 80488A88  38 81 00 74 */	addi r4, r1, 0x74
/* 80488A8C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80488A90  4B DD E0 54 */	b __pl__4cXyzCFRC3Vec
/* 80488A94  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80488A98  D0 15 05 9C */	stfs f0, 0x59c(r21)
/* 80488A9C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80488AA0  D0 15 05 A0 */	stfs f0, 0x5a0(r21)
/* 80488AA4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80488AA8  D0 15 05 A4 */	stfs f0, 0x5a4(r21)
/* 80488AAC  3B 60 00 02 */	li r27, 2
/* 80488AB0  3A 40 00 18 */	li r18, 0x18
/* 80488AB4  C3 FD 00 20 */	lfs f31, 0x20(r29)
lbl_80488AB8:
/* 80488AB8  38 61 00 74 */	addi r3, r1, 0x74
/* 80488ABC  38 81 00 68 */	addi r4, r1, 0x68
/* 80488AC0  7C 65 1B 78 */	mr r5, r3
/* 80488AC4  4B EB E5 CC */	b PSVECAdd
/* 80488AC8  38 61 00 44 */	addi r3, r1, 0x44
/* 80488ACC  38 81 00 68 */	addi r4, r1, 0x68
/* 80488AD0  FC 20 E0 90 */	fmr f1, f28
/* 80488AD4  4B DD E0 B0 */	b __ml__4cXyzCFf
/* 80488AD8  38 61 00 38 */	addi r3, r1, 0x38
/* 80488ADC  38 81 00 74 */	addi r4, r1, 0x74
/* 80488AE0  38 A1 00 44 */	addi r5, r1, 0x44
/* 80488AE4  4B DD E0 00 */	b __pl__4cXyzCFRC3Vec
/* 80488AE8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80488AEC  7C 75 92 14 */	add r3, r21, r18
/* 80488AF0  D0 03 05 90 */	stfs f0, 0x590(r3)
/* 80488AF4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80488AF8  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 80488AFC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80488B00  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80488B04  38 61 00 2C */	addi r3, r1, 0x2c
/* 80488B08  7F 24 CB 78 */	mr r4, r25
/* 80488B0C  48 00 0A E1 */	bl getStartPos__9daArrow_cFv
/* 80488B10  C3 B9 09 A4 */	lfs f29, 0x9a4(r25)
/* 80488B14  38 61 00 74 */	addi r3, r1, 0x74
/* 80488B18  38 81 00 2C */	addi r4, r1, 0x2c
/* 80488B1C  4B EB E8 80 */	b PSVECSquareDistance
/* 80488B20  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80488B24  40 81 00 58 */	ble lbl_80488B7C
/* 80488B28  FC 00 08 34 */	frsqrte f0, f1
/* 80488B2C  C8 9D 00 28 */	lfd f4, 0x28(r29)
/* 80488B30  FC 44 00 32 */	fmul f2, f4, f0
/* 80488B34  C8 7D 00 30 */	lfd f3, 0x30(r29)
/* 80488B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80488B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80488B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80488B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80488B48  FC 44 00 32 */	fmul f2, f4, f0
/* 80488B4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80488B50  FC 01 00 32 */	fmul f0, f1, f0
/* 80488B54  FC 03 00 28 */	fsub f0, f3, f0
/* 80488B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80488B5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80488B60  FC 00 00 32 */	fmul f0, f0, f0
/* 80488B64  FC 01 00 32 */	fmul f0, f1, f0
/* 80488B68  FC 03 00 28 */	fsub f0, f3, f0
/* 80488B6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80488B70  FC 21 00 32 */	fmul f1, f1, f0
/* 80488B74  FC 20 08 18 */	frsp f1, f1
/* 80488B78  48 00 00 88 */	b lbl_80488C00
lbl_80488B7C:
/* 80488B7C  C8 1D 00 38 */	lfd f0, 0x38(r29)
/* 80488B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80488B84  40 80 00 10 */	bge lbl_80488B94
/* 80488B88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80488B8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80488B90  48 00 00 70 */	b lbl_80488C00
lbl_80488B94:
/* 80488B94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80488B98  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80488B9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80488BA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80488BA4  7C 03 00 00 */	cmpw r3, r0
/* 80488BA8  41 82 00 14 */	beq lbl_80488BBC
/* 80488BAC  40 80 00 40 */	bge lbl_80488BEC
/* 80488BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80488BB4  41 82 00 20 */	beq lbl_80488BD4
/* 80488BB8  48 00 00 34 */	b lbl_80488BEC
lbl_80488BBC:
/* 80488BBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80488BC0  41 82 00 0C */	beq lbl_80488BCC
/* 80488BC4  38 00 00 01 */	li r0, 1
/* 80488BC8  48 00 00 28 */	b lbl_80488BF0
lbl_80488BCC:
/* 80488BCC  38 00 00 02 */	li r0, 2
/* 80488BD0  48 00 00 20 */	b lbl_80488BF0
lbl_80488BD4:
/* 80488BD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80488BD8  41 82 00 0C */	beq lbl_80488BE4
/* 80488BDC  38 00 00 05 */	li r0, 5
/* 80488BE0  48 00 00 10 */	b lbl_80488BF0
lbl_80488BE4:
/* 80488BE4  38 00 00 03 */	li r0, 3
/* 80488BE8  48 00 00 08 */	b lbl_80488BF0
lbl_80488BEC:
/* 80488BEC  38 00 00 04 */	li r0, 4
lbl_80488BF0:
/* 80488BF0  2C 00 00 01 */	cmpwi r0, 1
/* 80488BF4  40 82 00 0C */	bne lbl_80488C00
/* 80488BF8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80488BFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80488C00:
/* 80488C00  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 80488C04  41 80 00 10 */	blt lbl_80488C14
/* 80488C08  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80488C0C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80488C10  40 80 01 18 */	bge lbl_80488D28
lbl_80488C14:
/* 80488C14  C3 7D 00 40 */	lfs f27, 0x40(r29)
/* 80488C18  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80488C1C  EC 20 D8 2A */	fadds f1, f0, f27
/* 80488C20  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80488C24  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 80488C28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80488C2C  40 80 00 08 */	bge lbl_80488C34
/* 80488C30  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80488C34:
/* 80488C34  38 61 00 68 */	addi r3, r1, 0x68
/* 80488C38  4B EB E5 00 */	b PSVECSquareMag
/* 80488C3C  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80488C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80488C44  40 81 00 58 */	ble lbl_80488C9C
/* 80488C48  FC 00 08 34 */	frsqrte f0, f1
/* 80488C4C  C8 9D 00 28 */	lfd f4, 0x28(r29)
/* 80488C50  FC 44 00 32 */	fmul f2, f4, f0
/* 80488C54  C8 7D 00 30 */	lfd f3, 0x30(r29)
/* 80488C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80488C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80488C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80488C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80488C68  FC 44 00 32 */	fmul f2, f4, f0
/* 80488C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80488C70  FC 01 00 32 */	fmul f0, f1, f0
/* 80488C74  FC 03 00 28 */	fsub f0, f3, f0
/* 80488C78  FC 02 00 32 */	fmul f0, f2, f0
/* 80488C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80488C80  FC 00 00 32 */	fmul f0, f0, f0
/* 80488C84  FC 01 00 32 */	fmul f0, f1, f0
/* 80488C88  FC 03 00 28 */	fsub f0, f3, f0
/* 80488C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80488C90  FC 21 00 32 */	fmul f1, f1, f0
/* 80488C94  FC 20 08 18 */	frsp f1, f1
/* 80488C98  48 00 00 88 */	b lbl_80488D20
lbl_80488C9C:
/* 80488C9C  C8 1D 00 38 */	lfd f0, 0x38(r29)
/* 80488CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80488CA4  40 80 00 10 */	bge lbl_80488CB4
/* 80488CA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80488CAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80488CB0  48 00 00 70 */	b lbl_80488D20
lbl_80488CB4:
/* 80488CB4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80488CB8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80488CBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80488CC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80488CC4  7C 03 00 00 */	cmpw r3, r0
/* 80488CC8  41 82 00 14 */	beq lbl_80488CDC
/* 80488CCC  40 80 00 40 */	bge lbl_80488D0C
/* 80488CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80488CD4  41 82 00 20 */	beq lbl_80488CF4
/* 80488CD8  48 00 00 34 */	b lbl_80488D0C
lbl_80488CDC:
/* 80488CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80488CE0  41 82 00 0C */	beq lbl_80488CEC
/* 80488CE4  38 00 00 01 */	li r0, 1
/* 80488CE8  48 00 00 28 */	b lbl_80488D10
lbl_80488CEC:
/* 80488CEC  38 00 00 02 */	li r0, 2
/* 80488CF0  48 00 00 20 */	b lbl_80488D10
lbl_80488CF4:
/* 80488CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80488CF8  41 82 00 0C */	beq lbl_80488D04
/* 80488CFC  38 00 00 05 */	li r0, 5
/* 80488D00  48 00 00 10 */	b lbl_80488D10
lbl_80488D04:
/* 80488D04  38 00 00 03 */	li r0, 3
/* 80488D08  48 00 00 08 */	b lbl_80488D10
lbl_80488D0C:
/* 80488D0C  38 00 00 04 */	li r0, 4
lbl_80488D10:
/* 80488D10  2C 00 00 01 */	cmpwi r0, 1
/* 80488D14  40 82 00 0C */	bne lbl_80488D20
/* 80488D18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80488D1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80488D20:
/* 80488D20  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80488D24  EF 80 08 24 */	fdivs f28, f0, f1
lbl_80488D28:
/* 80488D28  3B 7B 00 01 */	addi r27, r27, 1
/* 80488D2C  2C 1B 01 F4 */	cmpwi r27, 0x1f4
/* 80488D30  3A 52 00 0C */	addi r18, r18, 0xc
/* 80488D34  41 80 FD 84 */	blt lbl_80488AB8
/* 80488D38  3A E0 00 00 */	li r23, 0
/* 80488D3C  3A 60 00 00 */	li r19, 0
lbl_80488D40:
/* 80488D40  3A C0 00 00 */	li r22, 0
/* 80488D44  3A 40 00 00 */	li r18, 0
/* 80488D48  7F 95 9A 14 */	add r28, r21, r19
/* 80488D4C  48 00 01 80 */	b lbl_80488ECC
lbl_80488D50:
/* 80488D50  3B 72 05 68 */	addi r27, r18, 0x568
/* 80488D54  7F 75 DA 14 */	add r27, r21, r27
/* 80488D58  7F 63 DB 78 */	mr r3, r27
/* 80488D5C  4B CB C9 AC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80488D60  7C 78 1B 79 */	or. r24, r3, r3
/* 80488D64  41 82 01 60 */	beq lbl_80488EC4
/* 80488D68  C0 1C 05 90 */	lfs f0, 0x590(r28)
/* 80488D6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80488D70  C0 1C 05 94 */	lfs f0, 0x594(r28)
/* 80488D74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80488D78  C0 1C 05 98 */	lfs f0, 0x598(r28)
/* 80488D7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80488D80  C0 1C 05 9C */	lfs f0, 0x59c(r28)
/* 80488D84  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80488D88  C0 1C 05 A0 */	lfs f0, 0x5a0(r28)
/* 80488D8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80488D90  C0 1C 05 A4 */	lfs f0, 0x5a4(r28)
/* 80488D94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80488D98  38 61 00 68 */	addi r3, r1, 0x68
/* 80488D9C  4B EB E3 9C */	b PSVECSquareMag
/* 80488DA0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80488DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80488DA8  40 81 00 58 */	ble lbl_80488E00
/* 80488DAC  FC 00 08 34 */	frsqrte f0, f1
/* 80488DB0  C8 9D 00 28 */	lfd f4, 0x28(r29)
/* 80488DB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80488DB8  C8 7D 00 30 */	lfd f3, 0x30(r29)
/* 80488DBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80488DC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80488DC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80488DC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80488DCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80488DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80488DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80488DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80488DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80488DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80488DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80488DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80488DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80488DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80488DF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80488DF8  FC 20 08 18 */	frsp f1, f1
/* 80488DFC  48 00 00 88 */	b lbl_80488E84
lbl_80488E00:
/* 80488E00  C8 1D 00 38 */	lfd f0, 0x38(r29)
/* 80488E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80488E08  40 80 00 10 */	bge lbl_80488E18
/* 80488E0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80488E10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80488E14  48 00 00 70 */	b lbl_80488E84
lbl_80488E18:
/* 80488E18  D0 21 00 08 */	stfs f1, 8(r1)
/* 80488E1C  80 81 00 08 */	lwz r4, 8(r1)
/* 80488E20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80488E24  3C 00 7F 80 */	lis r0, 0x7f80
/* 80488E28  7C 03 00 00 */	cmpw r3, r0
/* 80488E2C  41 82 00 14 */	beq lbl_80488E40
/* 80488E30  40 80 00 40 */	bge lbl_80488E70
/* 80488E34  2C 03 00 00 */	cmpwi r3, 0
/* 80488E38  41 82 00 20 */	beq lbl_80488E58
/* 80488E3C  48 00 00 34 */	b lbl_80488E70
lbl_80488E40:
/* 80488E40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80488E44  41 82 00 0C */	beq lbl_80488E50
/* 80488E48  38 00 00 01 */	li r0, 1
/* 80488E4C  48 00 00 28 */	b lbl_80488E74
lbl_80488E50:
/* 80488E50  38 00 00 02 */	li r0, 2
/* 80488E54  48 00 00 20 */	b lbl_80488E74
lbl_80488E58:
/* 80488E58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80488E5C  41 82 00 0C */	beq lbl_80488E68
/* 80488E60  38 00 00 05 */	li r0, 5
/* 80488E64  48 00 00 10 */	b lbl_80488E74
lbl_80488E68:
/* 80488E68  38 00 00 03 */	li r0, 3
/* 80488E6C  48 00 00 08 */	b lbl_80488E74
lbl_80488E70:
/* 80488E70  38 00 00 04 */	li r0, 4
lbl_80488E74:
/* 80488E74  2C 00 00 01 */	cmpwi r0, 1
/* 80488E78  40 82 00 0C */	bne lbl_80488E84
/* 80488E7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80488E80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80488E84:
/* 80488E84  7F 03 C3 78 */	mr r3, r24
/* 80488E88  7F 24 CB 78 */	mr r4, r25
/* 80488E8C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80488E90  38 C1 00 14 */	addi r6, r1, 0x14
/* 80488E94  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80488E98  EC 21 00 2A */	fadds f1, f1, f0
/* 80488E9C  48 00 05 71 */	bl checkCrs__15daObj_BouMato_cFP10fopAc_ac_c4cXyz4cXyzf
/* 80488EA0  7C 78 1B 79 */	or. r24, r3, r3
/* 80488EA4  41 82 00 20 */	beq lbl_80488EC4
/* 80488EA8  7F 63 DB 78 */	mr r3, r27
/* 80488EAC  4B CB C8 5C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80488EB0  7C 64 1B 78 */	mr r4, r3
/* 80488EB4  38 75 05 88 */	addi r3, r21, 0x588
/* 80488EB8  4B CB C8 28 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80488EBC  7F 03 C3 78 */	mr r3, r24
/* 80488EC0  48 00 00 40 */	b lbl_80488F00
lbl_80488EC4:
/* 80488EC4  3A D6 00 01 */	addi r22, r22, 1
/* 80488EC8  3A 52 00 08 */	addi r18, r18, 8
lbl_80488ECC:
/* 80488ECC  80 15 1D 00 */	lwz r0, 0x1d00(r21)
/* 80488ED0  7C 16 00 00 */	cmpw r22, r0
/* 80488ED4  41 80 FE 7C */	blt lbl_80488D50
/* 80488ED8  3A F7 00 01 */	addi r23, r23, 1
/* 80488EDC  2C 17 01 F3 */	cmpwi r23, 0x1f3
/* 80488EE0  3A 73 00 0C */	addi r19, r19, 0xc
/* 80488EE4  41 80 FE 5C */	blt lbl_80488D40
lbl_80488EE8:
/* 80488EE8  3B 5A 00 01 */	addi r26, r26, 1
/* 80488EEC  3A 94 00 04 */	addi r20, r20, 4
lbl_80488EF0:
/* 80488EF0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80488EF4  7C 1A 00 00 */	cmpw r26, r0
/* 80488EF8  41 80 FB 0C */	blt lbl_80488A04
/* 80488EFC  38 60 00 00 */	li r3, 0
lbl_80488F00:
/* 80488F00  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80488F04  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80488F08  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80488F0C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80488F10  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80488F14  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80488F18  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 80488F1C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80488F20  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 80488F24  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 80488F28  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80488F2C  4B ED 92 D0 */	b _restgpr_18
/* 80488F30  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80488F34  7C 08 03 A6 */	mtlr r0
/* 80488F38  38 21 01 10 */	addi r1, r1, 0x110
/* 80488F3C  4E 80 00 20 */	blr 
