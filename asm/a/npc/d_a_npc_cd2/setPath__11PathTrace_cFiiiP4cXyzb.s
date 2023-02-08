lbl_80159A38:
/* 80159A38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80159A3C  7C 08 02 A6 */	mflr r0
/* 80159A40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80159A44  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80159A48  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80159A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80159A50  48 20 87 89 */	bl _savegpr_28
/* 80159A54  7C 7F 1B 78 */	mr r31, r3
/* 80159A58  7C DC 33 78 */	mr r28, r6
/* 80159A5C  7C FD 3B 78 */	mr r29, r7
/* 80159A60  7D 1E 43 78 */	mr r30, r8
/* 80159A64  38 00 00 00 */	li r0, 0
/* 80159A68  90 03 00 08 */	stw r0, 8(r3)
/* 80159A6C  7C 83 23 78 */	mr r3, r4
/* 80159A70  7C A4 2B 78 */	mr r4, r5
/* 80159A74  4B EF 7D 79 */	bl dPath_GetRoomPath__Fii
/* 80159A78  90 7F 00 08 */	stw r3, 8(r31)
/* 80159A7C  9B 9F 00 24 */	stb r28, 0x24(r31)
/* 80159A80  80 1F 00 08 */	lwz r0, 8(r31)
/* 80159A84  28 00 00 00 */	cmplwi r0, 0
/* 80159A88  40 82 00 0C */	bne lbl_80159A94
/* 80159A8C  38 60 00 00 */	li r3, 0
/* 80159A90  48 00 01 64 */	b lbl_80159BF4
lbl_80159A94:
/* 80159A94  38 60 00 00 */	li r3, 0
/* 80159A98  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80159A9C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80159AA0  41 82 00 50 */	beq lbl_80159AF0
/* 80159AA4  C3 E2 9B 20 */	lfs f31, lit_5050(r2)
/* 80159AA8  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80159AAC  3B C0 00 00 */	li r30, 0
/* 80159AB0  48 00 00 30 */	b lbl_80159AE0
lbl_80159AB4:
/* 80159AB4  7F C4 F3 78 */	mr r4, r30
/* 80159AB8  4B EF 7C F9 */	bl dPath_GetPnt__FPC5dPathi
/* 80159ABC  7C 64 1B 78 */	mr r4, r3
/* 80159AC0  7F A3 EB 78 */	mr r3, r29
/* 80159AC4  38 84 00 04 */	addi r4, r4, 4
/* 80159AC8  48 1E D8 D5 */	bl PSVECSquareDistance
/* 80159ACC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80159AD0  40 80 00 0C */	bge lbl_80159ADC
/* 80159AD4  FF E0 08 90 */	fmr f31, f1
/* 80159AD8  93 DF 00 20 */	stw r30, 0x20(r31)
lbl_80159ADC:
/* 80159ADC  3B DE 00 01 */	addi r30, r30, 1
lbl_80159AE0:
/* 80159AE0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80159AE4  A0 03 00 00 */	lhz r0, 0(r3)
/* 80159AE8  7C 1E 00 00 */	cmpw r30, r0
/* 80159AEC  41 80 FF C8 */	blt lbl_80159AB4
lbl_80159AF0:
/* 80159AF0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80159AF4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80159AF8  4B EF 7C B9 */	bl dPath_GetPnt__FPC5dPathi
/* 80159AFC  38 83 00 04 */	addi r4, r3, 4
/* 80159B00  7F A3 EB 78 */	mr r3, r29
/* 80159B04  48 1E D8 99 */	bl PSVECSquareDistance
/* 80159B08  C0 02 9A E4 */	lfs f0, lit_4585(r2)
/* 80159B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159B10  40 81 00 58 */	ble lbl_80159B68
/* 80159B14  FC 00 08 34 */	frsqrte f0, f1
/* 80159B18  C8 82 9B 28 */	lfd f4, lit_5051(r2)
/* 80159B1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80159B20  C8 62 9B 30 */	lfd f3, lit_5052(r2)
/* 80159B24  FC 00 00 32 */	fmul f0, f0, f0
/* 80159B28  FC 01 00 32 */	fmul f0, f1, f0
/* 80159B2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80159B30  FC 02 00 32 */	fmul f0, f2, f0
/* 80159B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80159B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80159B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80159B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80159B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80159B48  FC 44 00 32 */	fmul f2, f4, f0
/* 80159B4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80159B50  FC 01 00 32 */	fmul f0, f1, f0
/* 80159B54  FC 03 00 28 */	fsub f0, f3, f0
/* 80159B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80159B5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80159B60  FC 20 08 18 */	frsp f1, f1
/* 80159B64  48 00 00 88 */	b lbl_80159BEC
lbl_80159B68:
/* 80159B68  C8 02 9B 38 */	lfd f0, lit_5053(r2)
/* 80159B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80159B70  40 80 00 10 */	bge lbl_80159B80
/* 80159B74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80159B78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80159B7C  48 00 00 70 */	b lbl_80159BEC
lbl_80159B80:
/* 80159B80  D0 21 00 08 */	stfs f1, 8(r1)
/* 80159B84  80 81 00 08 */	lwz r4, 8(r1)
/* 80159B88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80159B8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80159B90  7C 03 00 00 */	cmpw r3, r0
/* 80159B94  41 82 00 14 */	beq lbl_80159BA8
/* 80159B98  40 80 00 40 */	bge lbl_80159BD8
/* 80159B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80159BA0  41 82 00 20 */	beq lbl_80159BC0
/* 80159BA4  48 00 00 34 */	b lbl_80159BD8
lbl_80159BA8:
/* 80159BA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80159BAC  41 82 00 0C */	beq lbl_80159BB8
/* 80159BB0  38 00 00 01 */	li r0, 1
/* 80159BB4  48 00 00 28 */	b lbl_80159BDC
lbl_80159BB8:
/* 80159BB8  38 00 00 02 */	li r0, 2
/* 80159BBC  48 00 00 20 */	b lbl_80159BDC
lbl_80159BC0:
/* 80159BC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80159BC4  41 82 00 0C */	beq lbl_80159BD0
/* 80159BC8  38 00 00 05 */	li r0, 5
/* 80159BCC  48 00 00 10 */	b lbl_80159BDC
lbl_80159BD0:
/* 80159BD0  38 00 00 03 */	li r0, 3
/* 80159BD4  48 00 00 08 */	b lbl_80159BDC
lbl_80159BD8:
/* 80159BD8  38 00 00 04 */	li r0, 4
lbl_80159BDC:
/* 80159BDC  2C 00 00 01 */	cmpwi r0, 1
/* 80159BE0  40 82 00 0C */	bne lbl_80159BEC
/* 80159BE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80159BE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80159BEC:
/* 80159BEC  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80159BF0  38 60 00 01 */	li r3, 1
lbl_80159BF4:
/* 80159BF4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80159BF8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80159BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80159C00  48 20 86 25 */	bl _restgpr_28
/* 80159C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80159C08  7C 08 03 A6 */	mtlr r0
/* 80159C0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80159C10  4E 80 00 20 */	blr 
