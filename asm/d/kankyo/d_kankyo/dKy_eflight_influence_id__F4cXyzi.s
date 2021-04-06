lbl_8019E13C:
/* 8019E13C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8019E140  7C 08 02 A6 */	mflr r0
/* 8019E144  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019E148  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8019E14C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8019E150  39 61 00 40 */	addi r11, r1, 0x40
/* 8019E154  48 1C 40 71 */	bl _savegpr_23
/* 8019E158  7C 78 1B 78 */	mr r24, r3
/* 8019E15C  7C 99 23 78 */	mr r25, r4
/* 8019E160  C3 E2 A2 70 */	lfs f31, lit_4850(r2)
/* 8019E164  3B A0 FF FF */	li r29, -1
/* 8019E168  3B 80 FF FF */	li r28, -1
/* 8019E16C  3B 40 00 00 */	li r26, 0
/* 8019E170  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E174  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019E178  48 00 02 54 */	b lbl_8019E3CC
lbl_8019E17C:
/* 8019E17C  3B 60 00 00 */	li r27, 0
/* 8019E180  3A E0 00 00 */	li r23, 0
lbl_8019E184:
/* 8019E184  7C 7F BA 14 */	add r3, r31, r23
/* 8019E188  3B C3 05 88 */	addi r30, r3, 0x588
/* 8019E18C  80 83 05 88 */	lwz r4, 0x588(r3)
/* 8019E190  28 04 00 00 */	cmplwi r4, 0
/* 8019E194  41 82 02 20 */	beq lbl_8019E3B4
/* 8019E198  2C 1A 00 00 */	cmpwi r26, 0
/* 8019E19C  41 82 00 0C */	beq lbl_8019E1A8
/* 8019E1A0  7C 1B E8 00 */	cmpw r27, r29
/* 8019E1A4  41 82 02 10 */	beq lbl_8019E3B4
lbl_8019E1A8:
/* 8019E1A8  7F 03 C3 78 */	mr r3, r24
/* 8019E1AC  48 1A 91 F1 */	bl PSVECSquareDistance
/* 8019E1B0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019E1B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E1B8  40 81 00 58 */	ble lbl_8019E210
/* 8019E1BC  FC 00 08 34 */	frsqrte f0, f1
/* 8019E1C0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 8019E1C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E1C8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 8019E1CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E1D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E1D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E1D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E1DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E1E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E1E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E1E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E1EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E1F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E1F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E1F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E1FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E200  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E204  FC 21 00 32 */	fmul f1, f1, f0
/* 8019E208  FC 20 08 18 */	frsp f1, f1
/* 8019E20C  48 00 00 88 */	b lbl_8019E294
lbl_8019E210:
/* 8019E210  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 8019E214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E218  40 80 00 10 */	bge lbl_8019E228
/* 8019E21C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8019E220  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8019E224  48 00 00 70 */	b lbl_8019E294
lbl_8019E228:
/* 8019E228  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8019E22C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8019E230  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8019E234  3C 00 7F 80 */	lis r0, 0x7f80
/* 8019E238  7C 03 00 00 */	cmpw r3, r0
/* 8019E23C  41 82 00 14 */	beq lbl_8019E250
/* 8019E240  40 80 00 40 */	bge lbl_8019E280
/* 8019E244  2C 03 00 00 */	cmpwi r3, 0
/* 8019E248  41 82 00 20 */	beq lbl_8019E268
/* 8019E24C  48 00 00 34 */	b lbl_8019E280
lbl_8019E250:
/* 8019E250  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E254  41 82 00 0C */	beq lbl_8019E260
/* 8019E258  38 00 00 01 */	li r0, 1
/* 8019E25C  48 00 00 28 */	b lbl_8019E284
lbl_8019E260:
/* 8019E260  38 00 00 02 */	li r0, 2
/* 8019E264  48 00 00 20 */	b lbl_8019E284
lbl_8019E268:
/* 8019E268  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E26C  41 82 00 0C */	beq lbl_8019E278
/* 8019E270  38 00 00 05 */	li r0, 5
/* 8019E274  48 00 00 10 */	b lbl_8019E284
lbl_8019E278:
/* 8019E278  38 00 00 03 */	li r0, 3
/* 8019E27C  48 00 00 08 */	b lbl_8019E284
lbl_8019E280:
/* 8019E280  38 00 00 04 */	li r0, 4
lbl_8019E284:
/* 8019E284  2C 00 00 01 */	cmpwi r0, 1
/* 8019E288  40 82 00 0C */	bne lbl_8019E294
/* 8019E28C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8019E290  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8019E294:
/* 8019E294  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8019E298  40 81 01 1C */	ble lbl_8019E3B4
/* 8019E29C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8019E2A0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8019E2A4  C0 02 A2 68 */	lfs f0, lit_4731(r2)
/* 8019E2A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E2AC  40 81 01 08 */	ble lbl_8019E3B4
/* 8019E2B0  7F 03 C3 78 */	mr r3, r24
/* 8019E2B4  48 1A 90 E9 */	bl PSVECSquareDistance
/* 8019E2B8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019E2BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E2C0  40 81 00 58 */	ble lbl_8019E318
/* 8019E2C4  FC 00 08 34 */	frsqrte f0, f1
/* 8019E2C8  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 8019E2CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E2D0  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 8019E2D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E2D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E2DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E2E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E2E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E2E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E2EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E2F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E2F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E2F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E2FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E300  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E304  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E308  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E30C  FC 21 00 32 */	fmul f1, f1, f0
/* 8019E310  FC 20 08 18 */	frsp f1, f1
/* 8019E314  48 00 00 88 */	b lbl_8019E39C
lbl_8019E318:
/* 8019E318  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 8019E31C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E320  40 80 00 10 */	bge lbl_8019E330
/* 8019E324  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8019E328  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8019E32C  48 00 00 70 */	b lbl_8019E39C
lbl_8019E330:
/* 8019E330  D0 21 00 08 */	stfs f1, 8(r1)
/* 8019E334  80 81 00 08 */	lwz r4, 8(r1)
/* 8019E338  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8019E33C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8019E340  7C 03 00 00 */	cmpw r3, r0
/* 8019E344  41 82 00 14 */	beq lbl_8019E358
/* 8019E348  40 80 00 40 */	bge lbl_8019E388
/* 8019E34C  2C 03 00 00 */	cmpwi r3, 0
/* 8019E350  41 82 00 20 */	beq lbl_8019E370
/* 8019E354  48 00 00 34 */	b lbl_8019E388
lbl_8019E358:
/* 8019E358  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E35C  41 82 00 0C */	beq lbl_8019E368
/* 8019E360  38 00 00 01 */	li r0, 1
/* 8019E364  48 00 00 28 */	b lbl_8019E38C
lbl_8019E368:
/* 8019E368  38 00 00 02 */	li r0, 2
/* 8019E36C  48 00 00 20 */	b lbl_8019E38C
lbl_8019E370:
/* 8019E370  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E374  41 82 00 0C */	beq lbl_8019E380
/* 8019E378  38 00 00 05 */	li r0, 5
/* 8019E37C  48 00 00 10 */	b lbl_8019E38C
lbl_8019E380:
/* 8019E380  38 00 00 03 */	li r0, 3
/* 8019E384  48 00 00 08 */	b lbl_8019E38C
lbl_8019E388:
/* 8019E388  38 00 00 04 */	li r0, 4
lbl_8019E38C:
/* 8019E38C  2C 00 00 01 */	cmpwi r0, 1
/* 8019E390  40 82 00 0C */	bne lbl_8019E39C
/* 8019E394  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8019E398  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8019E39C:
/* 8019E39C  FF E0 08 90 */	fmr f31, f1
/* 8019E3A0  2C 1A 00 00 */	cmpwi r26, 0
/* 8019E3A4  40 82 00 0C */	bne lbl_8019E3B0
/* 8019E3A8  7F 7D DB 78 */	mr r29, r27
/* 8019E3AC  48 00 00 08 */	b lbl_8019E3B4
lbl_8019E3B0:
/* 8019E3B0  7F 7C DB 78 */	mr r28, r27
lbl_8019E3B4:
/* 8019E3B4  3B 7B 00 01 */	addi r27, r27, 1
/* 8019E3B8  2C 1B 00 05 */	cmpwi r27, 5
/* 8019E3BC  3A F7 00 04 */	addi r23, r23, 4
/* 8019E3C0  41 80 FD C4 */	blt lbl_8019E184
/* 8019E3C4  C3 E2 A2 70 */	lfs f31, lit_4850(r2)
/* 8019E3C8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8019E3CC:
/* 8019E3CC  7C 1A C8 00 */	cmpw r26, r25
/* 8019E3D0  40 81 FD AC */	ble lbl_8019E17C
/* 8019E3D4  2C 19 00 00 */	cmpwi r25, 0
/* 8019E3D8  7F 83 E3 78 */	mr r3, r28
/* 8019E3DC  40 82 00 08 */	bne lbl_8019E3E4
/* 8019E3E0  7F A3 EB 78 */	mr r3, r29
lbl_8019E3E4:
/* 8019E3E4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8019E3E8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8019E3EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8019E3F0  48 1C 3E 21 */	bl _restgpr_23
/* 8019E3F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8019E3F8  7C 08 03 A6 */	mtlr r0
/* 8019E3FC  38 21 00 50 */	addi r1, r1, 0x50
/* 8019E400  4E 80 00 20 */	blr 
