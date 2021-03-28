lbl_80742958:
/* 80742958  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8074295C  7C 08 02 A6 */	mflr r0
/* 80742960  90 01 00 94 */	stw r0, 0x94(r1)
/* 80742964  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80742968  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8074296C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80742970  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80742974  39 61 00 70 */	addi r11, r1, 0x70
/* 80742978  4B C1 F8 5C */	b _savegpr_27
/* 8074297C  7C 7B 1B 78 */	mr r27, r3
/* 80742980  3C 60 80 75 */	lis r3, lit_3910@ha
/* 80742984  3B C3 BF 3C */	addi r30, r3, lit_3910@l
/* 80742988  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 8074298C  38 80 00 00 */	li r4, 0
/* 80742990  4B 90 EE 20 */	b dPath_GetPnt__FPC5dPathi
/* 80742994  C0 03 00 04 */	lfs f0, 4(r3)
/* 80742998  C0 23 00 08 */	lfs f1, 8(r3)
/* 8074299C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 807429A0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807429A4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807429A8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807429AC  3B 80 00 00 */	li r28, 0
/* 807429B0  3C 60 80 75 */	lis r3, data_8074C3E4@ha
/* 807429B4  3B E3 C3 E4 */	addi r31, r3, data_8074C3E4@l
/* 807429B8  C3 FE 00 04 */	lfs f31, 4(r30)
/* 807429BC  48 00 02 7C */	b lbl_80742C38
lbl_807429C0:
/* 807429C0  7F 84 E3 78 */	mr r4, r28
/* 807429C4  4B 90 ED EC */	b dPath_GetPnt__FPC5dPathi
/* 807429C8  C0 43 00 04 */	lfs f2, 4(r3)
/* 807429CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 807429D0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 807429D4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 807429D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807429DC  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 807429E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 807429E4  C0 23 00 08 */	lfs f1, 8(r3)
/* 807429E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 807429EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807429F0  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 807429F4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807429F8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 807429FC  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80742A00  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80742A04  38 61 00 28 */	addi r3, r1, 0x28
/* 80742A08  38 81 00 34 */	addi r4, r1, 0x34
/* 80742A0C  4B C0 49 90 */	b PSVECSquareDistance
/* 80742A10  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80742A14  40 81 00 58 */	ble lbl_80742A6C
/* 80742A18  FC 00 08 34 */	frsqrte f0, f1
/* 80742A1C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80742A20  FC 44 00 32 */	fmul f2, f4, f0
/* 80742A24  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80742A28  FC 00 00 32 */	fmul f0, f0, f0
/* 80742A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80742A30  FC 03 00 28 */	fsub f0, f3, f0
/* 80742A34  FC 02 00 32 */	fmul f0, f2, f0
/* 80742A38  FC 44 00 32 */	fmul f2, f4, f0
/* 80742A3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80742A40  FC 01 00 32 */	fmul f0, f1, f0
/* 80742A44  FC 03 00 28 */	fsub f0, f3, f0
/* 80742A48  FC 02 00 32 */	fmul f0, f2, f0
/* 80742A4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80742A50  FC 00 00 32 */	fmul f0, f0, f0
/* 80742A54  FC 01 00 32 */	fmul f0, f1, f0
/* 80742A58  FC 03 00 28 */	fsub f0, f3, f0
/* 80742A5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80742A60  FC 21 00 32 */	fmul f1, f1, f0
/* 80742A64  FC 20 08 18 */	frsp f1, f1
/* 80742A68  48 00 00 88 */	b lbl_80742AF0
lbl_80742A6C:
/* 80742A6C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80742A70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80742A74  40 80 00 10 */	bge lbl_80742A84
/* 80742A78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80742A7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80742A80  48 00 00 70 */	b lbl_80742AF0
lbl_80742A84:
/* 80742A84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80742A88  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80742A8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80742A90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80742A94  7C 03 00 00 */	cmpw r3, r0
/* 80742A98  41 82 00 14 */	beq lbl_80742AAC
/* 80742A9C  40 80 00 40 */	bge lbl_80742ADC
/* 80742AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80742AA4  41 82 00 20 */	beq lbl_80742AC4
/* 80742AA8  48 00 00 34 */	b lbl_80742ADC
lbl_80742AAC:
/* 80742AAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80742AB0  41 82 00 0C */	beq lbl_80742ABC
/* 80742AB4  38 00 00 01 */	li r0, 1
/* 80742AB8  48 00 00 28 */	b lbl_80742AE0
lbl_80742ABC:
/* 80742ABC  38 00 00 02 */	li r0, 2
/* 80742AC0  48 00 00 20 */	b lbl_80742AE0
lbl_80742AC4:
/* 80742AC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80742AC8  41 82 00 0C */	beq lbl_80742AD4
/* 80742ACC  38 00 00 05 */	li r0, 5
/* 80742AD0  48 00 00 10 */	b lbl_80742AE0
lbl_80742AD4:
/* 80742AD4  38 00 00 03 */	li r0, 3
/* 80742AD8  48 00 00 08 */	b lbl_80742AE0
lbl_80742ADC:
/* 80742ADC  38 00 00 04 */	li r0, 4
lbl_80742AE0:
/* 80742AE0  2C 00 00 01 */	cmpwi r0, 1
/* 80742AE4  40 82 00 0C */	bne lbl_80742AF0
/* 80742AE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80742AEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80742AF0:
/* 80742AF0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80742AF4  40 81 01 40 */	ble lbl_80742C34
/* 80742AF8  80 1B 05 F4 */	lwz r0, 0x5f4(r27)
/* 80742AFC  7C 00 E0 00 */	cmpw r0, r28
/* 80742B00  41 82 01 34 */	beq lbl_80742C34
/* 80742B04  7F 9D E3 78 */	mr r29, r28
/* 80742B08  3C 60 80 75 */	lis r3, data_8074C3E4@ha
/* 80742B0C  38 63 C3 E4 */	addi r3, r3, data_8074C3E4@l
/* 80742B10  80 63 00 00 */	lwz r3, 0(r3)
/* 80742B14  C0 43 00 08 */	lfs f2, 8(r3)
/* 80742B18  C0 03 00 00 */	lfs f0, 0(r3)
/* 80742B1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80742B20  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80742B24  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80742B28  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80742B2C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80742B30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80742B34  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80742B38  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80742B3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80742B40  38 61 00 10 */	addi r3, r1, 0x10
/* 80742B44  38 81 00 1C */	addi r4, r1, 0x1c
/* 80742B48  4B C0 48 54 */	b PSVECSquareDistance
/* 80742B4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80742B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80742B54  40 81 00 58 */	ble lbl_80742BAC
/* 80742B58  FC 00 08 34 */	frsqrte f0, f1
/* 80742B5C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80742B60  FC 44 00 32 */	fmul f2, f4, f0
/* 80742B64  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80742B68  FC 00 00 32 */	fmul f0, f0, f0
/* 80742B6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80742B70  FC 03 00 28 */	fsub f0, f3, f0
/* 80742B74  FC 02 00 32 */	fmul f0, f2, f0
/* 80742B78  FC 44 00 32 */	fmul f2, f4, f0
/* 80742B7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80742B80  FC 01 00 32 */	fmul f0, f1, f0
/* 80742B84  FC 03 00 28 */	fsub f0, f3, f0
/* 80742B88  FC 02 00 32 */	fmul f0, f2, f0
/* 80742B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80742B90  FC 00 00 32 */	fmul f0, f0, f0
/* 80742B94  FC 01 00 32 */	fmul f0, f1, f0
/* 80742B98  FC 03 00 28 */	fsub f0, f3, f0
/* 80742B9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80742BA0  FC 21 00 32 */	fmul f1, f1, f0
/* 80742BA4  FC 20 08 18 */	frsp f1, f1
/* 80742BA8  48 00 00 88 */	b lbl_80742C30
lbl_80742BAC:
/* 80742BAC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80742BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80742BB4  40 80 00 10 */	bge lbl_80742BC4
/* 80742BB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80742BBC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80742BC0  48 00 00 70 */	b lbl_80742C30
lbl_80742BC4:
/* 80742BC4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80742BC8  80 81 00 08 */	lwz r4, 8(r1)
/* 80742BCC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80742BD0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80742BD4  7C 03 00 00 */	cmpw r3, r0
/* 80742BD8  41 82 00 14 */	beq lbl_80742BEC
/* 80742BDC  40 80 00 40 */	bge lbl_80742C1C
/* 80742BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80742BE4  41 82 00 20 */	beq lbl_80742C04
/* 80742BE8  48 00 00 34 */	b lbl_80742C1C
lbl_80742BEC:
/* 80742BEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80742BF0  41 82 00 0C */	beq lbl_80742BFC
/* 80742BF4  38 00 00 01 */	li r0, 1
/* 80742BF8  48 00 00 28 */	b lbl_80742C20
lbl_80742BFC:
/* 80742BFC  38 00 00 02 */	li r0, 2
/* 80742C00  48 00 00 20 */	b lbl_80742C20
lbl_80742C04:
/* 80742C04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80742C08  41 82 00 0C */	beq lbl_80742C14
/* 80742C0C  38 00 00 05 */	li r0, 5
/* 80742C10  48 00 00 10 */	b lbl_80742C20
lbl_80742C14:
/* 80742C14  38 00 00 03 */	li r0, 3
/* 80742C18  48 00 00 08 */	b lbl_80742C20
lbl_80742C1C:
/* 80742C1C  38 00 00 04 */	li r0, 4
lbl_80742C20:
/* 80742C20  2C 00 00 01 */	cmpwi r0, 1
/* 80742C24  40 82 00 0C */	bne lbl_80742C30
/* 80742C28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80742C2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80742C30:
/* 80742C30  FF C0 08 90 */	fmr f30, f1
lbl_80742C34:
/* 80742C34  3B 9C 00 01 */	addi r28, r28, 1
lbl_80742C38:
/* 80742C38  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 80742C3C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80742C40  7C 1C 00 00 */	cmpw r28, r0
/* 80742C44  41 80 FD 7C */	blt lbl_807429C0
/* 80742C48  7F A4 EB 78 */	mr r4, r29
/* 80742C4C  4B 90 EB 64 */	b dPath_GetPnt__FPC5dPathi
/* 80742C50  93 BB 05 F4 */	stw r29, 0x5f4(r27)
/* 80742C54  C0 03 00 04 */	lfs f0, 4(r3)
/* 80742C58  D0 1B 05 E4 */	stfs f0, 0x5e4(r27)
/* 80742C5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80742C60  D0 1B 05 E8 */	stfs f0, 0x5e8(r27)
/* 80742C64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80742C68  D0 1B 05 EC */	stfs f0, 0x5ec(r27)
/* 80742C6C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80742C70  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80742C74  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80742C78  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80742C7C  39 61 00 70 */	addi r11, r1, 0x70
/* 80742C80  4B C1 F5 A0 */	b _restgpr_27
/* 80742C84  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80742C88  7C 08 03 A6 */	mtlr r0
/* 80742C8C  38 21 00 90 */	addi r1, r1, 0x90
/* 80742C90  4E 80 00 20 */	blr 
