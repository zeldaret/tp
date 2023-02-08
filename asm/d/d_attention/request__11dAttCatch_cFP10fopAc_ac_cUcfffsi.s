lbl_80073A08:
/* 80073A08  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80073A0C  7C 08 02 A6 */	mflr r0
/* 80073A10  90 01 00 94 */	stw r0, 0x94(r1)
/* 80073A14  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80073A18  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80073A1C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80073A20  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80073A24  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80073A28  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80073A2C  39 61 00 60 */	addi r11, r1, 0x60
/* 80073A30  48 2E E7 A1 */	bl _savegpr_26
/* 80073A34  7C 7B 1B 78 */	mr r27, r3
/* 80073A38  7C 9C 23 78 */	mr r28, r4
/* 80073A3C  7C BD 2B 78 */	mr r29, r5
/* 80073A40  FF E0 08 90 */	fmr f31, f1
/* 80073A44  FF A0 10 90 */	fmr f29, f2
/* 80073A48  FF C0 18 90 */	fmr f30, f3
/* 80073A4C  7C DE 33 78 */	mr r30, r6
/* 80073A50  7C FF 3B 78 */	mr r31, r7
/* 80073A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80073A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80073A5C  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80073A60  80 1B 00 04 */	lwz r0, 4(r27)
/* 80073A64  7C 1F 00 00 */	cmpw r31, r0
/* 80073A68  40 81 00 0C */	ble lbl_80073A74
/* 80073A6C  38 60 00 00 */	li r3, 0
/* 80073A70  48 00 02 04 */	b lbl_80073C74
lbl_80073A74:
/* 80073A74  38 61 00 24 */	addi r3, r1, 0x24
/* 80073A78  38 9C 05 50 */	addi r4, r28, 0x550
/* 80073A7C  38 BA 05 50 */	addi r5, r26, 0x550
/* 80073A80  48 1F 30 B5 */	bl __mi__4cXyzCFRC3Vec
/* 80073A84  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80073A88  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80073A8C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80073A90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80073A94  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80073A98  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80073A9C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80073AA0  41 80 00 0C */	blt lbl_80073AAC
/* 80073AA4  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80073AA8  40 81 00 0C */	ble lbl_80073AB4
lbl_80073AAC:
/* 80073AAC  38 60 00 00 */	li r3, 0
/* 80073AB0  48 00 01 C4 */	b lbl_80073C74
lbl_80073AB4:
/* 80073AB4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80073AB8  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80073ABC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80073AC0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80073AC4  38 61 00 18 */	addi r3, r1, 0x18
/* 80073AC8  48 2D 36 71 */	bl PSVECSquareMag
/* 80073ACC  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80073AD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80073AD4  40 81 00 58 */	ble lbl_80073B2C
/* 80073AD8  FC 00 08 34 */	frsqrte f0, f1
/* 80073ADC  C8 82 8C 78 */	lfd f4, lit_4514(r2)
/* 80073AE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80073AE4  C8 62 8C 80 */	lfd f3, lit_4515(r2)
/* 80073AE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80073AEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80073AF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80073AF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80073AF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80073AFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80073B00  FC 01 00 32 */	fmul f0, f1, f0
/* 80073B04  FC 03 00 28 */	fsub f0, f3, f0
/* 80073B08  FC 02 00 32 */	fmul f0, f2, f0
/* 80073B0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80073B10  FC 00 00 32 */	fmul f0, f0, f0
/* 80073B14  FC 01 00 32 */	fmul f0, f1, f0
/* 80073B18  FC 03 00 28 */	fsub f0, f3, f0
/* 80073B1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80073B20  FF C1 00 32 */	fmul f30, f1, f0
/* 80073B24  FF C0 F0 18 */	frsp f30, f30
/* 80073B28  48 00 00 90 */	b lbl_80073BB8
lbl_80073B2C:
/* 80073B2C  C8 02 8C 88 */	lfd f0, lit_4516(r2)
/* 80073B30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80073B34  40 80 00 10 */	bge lbl_80073B44
/* 80073B38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80073B3C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80073B40  48 00 00 78 */	b lbl_80073BB8
lbl_80073B44:
/* 80073B44  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80073B48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80073B4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80073B50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80073B54  7C 03 00 00 */	cmpw r3, r0
/* 80073B58  41 82 00 14 */	beq lbl_80073B6C
/* 80073B5C  40 80 00 40 */	bge lbl_80073B9C
/* 80073B60  2C 03 00 00 */	cmpwi r3, 0
/* 80073B64  41 82 00 20 */	beq lbl_80073B84
/* 80073B68  48 00 00 34 */	b lbl_80073B9C
lbl_80073B6C:
/* 80073B6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80073B70  41 82 00 0C */	beq lbl_80073B7C
/* 80073B74  38 00 00 01 */	li r0, 1
/* 80073B78  48 00 00 28 */	b lbl_80073BA0
lbl_80073B7C:
/* 80073B7C  38 00 00 02 */	li r0, 2
/* 80073B80  48 00 00 20 */	b lbl_80073BA0
lbl_80073B84:
/* 80073B84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80073B88  41 82 00 0C */	beq lbl_80073B94
/* 80073B8C  38 00 00 05 */	li r0, 5
/* 80073B90  48 00 00 10 */	b lbl_80073BA0
lbl_80073B94:
/* 80073B94  38 00 00 03 */	li r0, 3
/* 80073B98  48 00 00 08 */	b lbl_80073BA0
lbl_80073B9C:
/* 80073B9C  38 00 00 04 */	li r0, 4
lbl_80073BA0:
/* 80073BA0  2C 00 00 01 */	cmpwi r0, 1
/* 80073BA4  40 82 00 10 */	bne lbl_80073BB4
/* 80073BA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80073BAC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80073BB0  48 00 00 08 */	b lbl_80073BB8
lbl_80073BB4:
/* 80073BB4  FF C0 08 90 */	fmr f30, f1
lbl_80073BB8:
/* 80073BB8  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 80073BBC  40 81 00 0C */	ble lbl_80073BC8
/* 80073BC0  38 60 00 00 */	li r3, 0
/* 80073BC4  48 00 00 B0 */	b lbl_80073C74
lbl_80073BC8:
/* 80073BC8  7F C0 07 35 */	extsh. r0, r30
/* 80073BCC  41 82 00 60 */	beq lbl_80073C2C
/* 80073BD0  38 61 00 10 */	addi r3, r1, 0x10
/* 80073BD4  38 81 00 30 */	addi r4, r1, 0x30
/* 80073BD8  48 1F DC A9 */	bl __ct__7cSGlobeFRC4cXyz
/* 80073BDC  38 61 00 08 */	addi r3, r1, 8
/* 80073BE0  38 81 00 16 */	addi r4, r1, 0x16
/* 80073BE4  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 80073BE8  48 1F D6 41 */	bl __mi__7cSAngleCFs
/* 80073BEC  A8 01 00 08 */	lha r0, 8(r1)
/* 80073BF0  7C 00 07 35 */	extsh. r0, r0
/* 80073BF4  7C 03 03 78 */	mr r3, r0
/* 80073BF8  40 80 00 0C */	bge lbl_80073C04
/* 80073BFC  7C 00 00 D0 */	neg r0, r0
/* 80073C00  7C 03 07 34 */	extsh r3, r0
lbl_80073C04:
/* 80073C04  7C 60 07 34 */	extsh r0, r3
/* 80073C08  2C 00 80 00 */	cmpwi r0, -32768
/* 80073C0C  40 82 00 08 */	bne lbl_80073C14
/* 80073C10  38 60 7F FF */	li r3, 0x7fff
lbl_80073C14:
/* 80073C14  7C 63 07 34 */	extsh r3, r3
/* 80073C18  7F C0 07 34 */	extsh r0, r30
/* 80073C1C  7C 03 00 00 */	cmpw r3, r0
/* 80073C20  40 81 00 0C */	ble lbl_80073C2C
/* 80073C24  38 60 00 00 */	li r3, 0
/* 80073C28  48 00 00 4C */	b lbl_80073C74
lbl_80073C2C:
/* 80073C2C  80 1B 00 04 */	lwz r0, 4(r27)
/* 80073C30  7C 1F 00 00 */	cmpw r31, r0
/* 80073C34  41 80 00 10 */	blt lbl_80073C44
/* 80073C38  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80073C3C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80073C40  40 80 00 30 */	bge lbl_80073C70
lbl_80073C44:
/* 80073C44  93 FB 00 04 */	stw r31, 4(r27)
/* 80073C48  9B BB 00 0C */	stb r29, 0xc(r27)
/* 80073C4C  28 1C 00 00 */	cmplwi r28, 0
/* 80073C50  41 82 00 0C */	beq lbl_80073C5C
/* 80073C54  80 1C 00 04 */	lwz r0, 4(r28)
/* 80073C58  48 00 00 08 */	b lbl_80073C60
lbl_80073C5C:
/* 80073C5C  38 00 FF FF */	li r0, -1
lbl_80073C60:
/* 80073C60  90 1B 00 00 */	stw r0, 0(r27)
/* 80073C64  D3 DB 00 08 */	stfs f30, 8(r27)
/* 80073C68  38 60 00 01 */	li r3, 1
/* 80073C6C  48 00 00 08 */	b lbl_80073C74
lbl_80073C70:
/* 80073C70  38 60 00 00 */	li r3, 0
lbl_80073C74:
/* 80073C74  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80073C78  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80073C7C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80073C80  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80073C84  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80073C88  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80073C8C  39 61 00 60 */	addi r11, r1, 0x60
/* 80073C90  48 2E E5 8D */	bl _restgpr_26
/* 80073C94  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80073C98  7C 08 03 A6 */	mtlr r0
/* 80073C9C  38 21 00 90 */	addi r1, r1, 0x90
/* 80073CA0  4E 80 00 20 */	blr 
