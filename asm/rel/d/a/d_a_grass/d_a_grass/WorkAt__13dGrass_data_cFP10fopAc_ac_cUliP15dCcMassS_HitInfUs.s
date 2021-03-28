lbl_8051E1C8:
/* 8051E1C8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8051E1CC  7C 08 02 A6 */	mflr r0
/* 8051E1D0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8051E1D4  39 61 00 90 */	addi r11, r1, 0x90
/* 8051E1D8  4B E4 3F E0 */	b _savegpr_20
/* 8051E1DC  7C 75 1B 78 */	mr r21, r3
/* 8051E1E0  7C 96 23 78 */	mr r22, r4
/* 8051E1E4  7C B7 2B 78 */	mr r23, r5
/* 8051E1E8  7C D8 33 78 */	mr r24, r6
/* 8051E1EC  7C F9 3B 78 */	mr r25, r7
/* 8051E1F0  7D 1A 43 78 */	mr r26, r8
/* 8051E1F4  3C 60 80 52 */	lis r3, lit_1109@ha
/* 8051E1F8  3B A3 78 D0 */	addi r29, r3, lit_1109@l
/* 8051E1FC  3C 60 80 52 */	lis r3, lit_3999@ha
/* 8051E200  3B C3 30 28 */	addi r30, r3, lit_3999@l
/* 8051E204  83 87 00 04 */	lwz r28, 4(r7)
/* 8051E208  28 1C 00 00 */	cmplwi r28, 0
/* 8051E20C  41 82 00 68 */	beq lbl_8051E274
/* 8051E210  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8051E214  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 8051E218  40 82 00 3C */	bne lbl_8051E254
/* 8051E21C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8051E220  40 82 00 34 */	bne lbl_8051E254
/* 8051E224  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 8051E228  40 82 00 2C */	bne lbl_8051E254
/* 8051E22C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8051E230  40 82 00 24 */	bne lbl_8051E254
/* 8051E234  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8051E238  40 82 00 1C */	bne lbl_8051E254
/* 8051E23C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8051E240  40 82 00 14 */	bne lbl_8051E254
/* 8051E244  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8051E248  40 82 00 0C */	bne lbl_8051E254
/* 8051E24C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8051E250  41 82 00 24 */	beq lbl_8051E274
lbl_8051E254:
/* 8051E254  7E A3 AB 78 */	mr r3, r21
/* 8051E258  7E C4 B3 78 */	mr r4, r22
/* 8051E25C  7E E5 BB 78 */	mr r5, r23
/* 8051E260  7F 06 C3 78 */	mr r6, r24
/* 8051E264  7F 27 CB 78 */	mr r7, r25
/* 8051E268  7F 88 E3 78 */	mr r8, r28
/* 8051E26C  4B FF F7 B5 */	bl WorkAt_NoCutAnim__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj
/* 8051E270  48 00 08 C4 */	b lbl_8051EB34
lbl_8051E274:
/* 8051E274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051E278  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8051E27C  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 8051E280  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8051E284  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8051E288  41 82 01 28 */	beq lbl_8051E3B0
/* 8051E28C  28 16 00 00 */	cmplwi r22, 0
/* 8051E290  41 82 06 B4 */	beq lbl_8051E944
/* 8051E294  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E298  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 8051E29C  4B E2 91 00 */	b PSVECSquareDistance
/* 8051E2A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E2A8  40 81 00 58 */	ble lbl_8051E300
/* 8051E2AC  FC 00 08 34 */	frsqrte f0, f1
/* 8051E2B0  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8051E2B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E2B8  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8051E2BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E2C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E2C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E2C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E2CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E2D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E2D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E2D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E2DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E2E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E2E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E2E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E2EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E2F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E2F4  FC 21 00 32 */	fmul f1, f1, f0
/* 8051E2F8  FC 20 08 18 */	frsp f1, f1
/* 8051E2FC  48 00 00 88 */	b lbl_8051E384
lbl_8051E300:
/* 8051E300  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8051E304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E308  40 80 00 10 */	bge lbl_8051E318
/* 8051E30C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E310  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8051E314  48 00 00 70 */	b lbl_8051E384
lbl_8051E318:
/* 8051E318  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8051E31C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8051E320  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8051E324  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051E328  7C 03 00 00 */	cmpw r3, r0
/* 8051E32C  41 82 00 14 */	beq lbl_8051E340
/* 8051E330  40 80 00 40 */	bge lbl_8051E370
/* 8051E334  2C 03 00 00 */	cmpwi r3, 0
/* 8051E338  41 82 00 20 */	beq lbl_8051E358
/* 8051E33C  48 00 00 34 */	b lbl_8051E370
lbl_8051E340:
/* 8051E340  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E344  41 82 00 0C */	beq lbl_8051E350
/* 8051E348  38 00 00 01 */	li r0, 1
/* 8051E34C  48 00 00 28 */	b lbl_8051E374
lbl_8051E350:
/* 8051E350  38 00 00 02 */	li r0, 2
/* 8051E354  48 00 00 20 */	b lbl_8051E374
lbl_8051E358:
/* 8051E358  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E35C  41 82 00 0C */	beq lbl_8051E368
/* 8051E360  38 00 00 05 */	li r0, 5
/* 8051E364  48 00 00 10 */	b lbl_8051E374
lbl_8051E368:
/* 8051E368  38 00 00 03 */	li r0, 3
/* 8051E36C  48 00 00 08 */	b lbl_8051E374
lbl_8051E370:
/* 8051E370  38 00 00 04 */	li r0, 4
lbl_8051E374:
/* 8051E374  2C 00 00 01 */	cmpwi r0, 1
/* 8051E378  40 82 00 0C */	bne lbl_8051E384
/* 8051E37C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E380  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8051E384:
/* 8051E384  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8051E388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E38C  40 81 05 B8 */	ble lbl_8051E944
/* 8051E390  7E A3 AB 78 */	mr r3, r21
/* 8051E394  7E C4 B3 78 */	mr r4, r22
/* 8051E398  7E E5 BB 78 */	mr r5, r23
/* 8051E39C  7F 06 C3 78 */	mr r6, r24
/* 8051E3A0  7F 27 CB 78 */	mr r7, r25
/* 8051E3A4  7F 88 E3 78 */	mr r8, r28
/* 8051E3A8  4B FF F6 79 */	bl WorkAt_NoCutAnim__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj
/* 8051E3AC  48 00 07 88 */	b lbl_8051EB34
lbl_8051E3B0:
/* 8051E3B0  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 8051E3B4  28 00 00 03 */	cmplwi r0, 3
/* 8051E3B8  41 80 02 24 */	blt lbl_8051E5DC
/* 8051E3BC  28 00 00 07 */	cmplwi r0, 7
/* 8051E3C0  41 81 02 1C */	bgt lbl_8051E5DC
/* 8051E3C4  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E3C8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8051E3CC  4B E2 8F D0 */	b PSVECSquareDistance
/* 8051E3D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E3D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E3D8  40 81 00 58 */	ble lbl_8051E430
/* 8051E3DC  FC 00 08 34 */	frsqrte f0, f1
/* 8051E3E0  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8051E3E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E3E8  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8051E3EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E3F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E3F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E3F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E3FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E400  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E404  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E408  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E40C  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E410  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E414  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E418  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E41C  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E420  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E424  FC 21 00 32 */	fmul f1, f1, f0
/* 8051E428  FC 20 08 18 */	frsp f1, f1
/* 8051E42C  48 00 00 88 */	b lbl_8051E4B4
lbl_8051E430:
/* 8051E430  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8051E434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E438  40 80 00 10 */	bge lbl_8051E448
/* 8051E43C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E440  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8051E444  48 00 00 70 */	b lbl_8051E4B4
lbl_8051E448:
/* 8051E448  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8051E44C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8051E450  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8051E454  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051E458  7C 03 00 00 */	cmpw r3, r0
/* 8051E45C  41 82 00 14 */	beq lbl_8051E470
/* 8051E460  40 80 00 40 */	bge lbl_8051E4A0
/* 8051E464  2C 03 00 00 */	cmpwi r3, 0
/* 8051E468  41 82 00 20 */	beq lbl_8051E488
/* 8051E46C  48 00 00 34 */	b lbl_8051E4A0
lbl_8051E470:
/* 8051E470  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E474  41 82 00 0C */	beq lbl_8051E480
/* 8051E478  38 00 00 01 */	li r0, 1
/* 8051E47C  48 00 00 28 */	b lbl_8051E4A4
lbl_8051E480:
/* 8051E480  38 00 00 02 */	li r0, 2
/* 8051E484  48 00 00 20 */	b lbl_8051E4A4
lbl_8051E488:
/* 8051E488  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E48C  41 82 00 0C */	beq lbl_8051E498
/* 8051E490  38 00 00 05 */	li r0, 5
/* 8051E494  48 00 00 10 */	b lbl_8051E4A4
lbl_8051E498:
/* 8051E498  38 00 00 03 */	li r0, 3
/* 8051E49C  48 00 00 08 */	b lbl_8051E4A4
lbl_8051E4A0:
/* 8051E4A0  38 00 00 04 */	li r0, 4
lbl_8051E4A4:
/* 8051E4A4  2C 00 00 01 */	cmpwi r0, 1
/* 8051E4A8  40 82 00 0C */	bne lbl_8051E4B4
/* 8051E4AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E4B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8051E4B4:
/* 8051E4B4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8051E4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E4BC  40 81 04 88 */	ble lbl_8051E944
/* 8051E4C0  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E4C4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8051E4C8  4B E2 8E D4 */	b PSVECSquareDistance
/* 8051E4CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E4D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E4D4  40 81 00 58 */	ble lbl_8051E52C
/* 8051E4D8  FC 00 08 34 */	frsqrte f0, f1
/* 8051E4DC  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8051E4E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E4E4  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8051E4E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E4EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E4F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E4F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E4F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E4FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E500  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E504  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E508  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E50C  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E510  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E514  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E518  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E51C  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E520  FC 21 00 32 */	fmul f1, f1, f0
/* 8051E524  FC 20 08 18 */	frsp f1, f1
/* 8051E528  48 00 00 88 */	b lbl_8051E5B0
lbl_8051E52C:
/* 8051E52C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8051E530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E534  40 80 00 10 */	bge lbl_8051E544
/* 8051E538  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E53C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8051E540  48 00 00 70 */	b lbl_8051E5B0
lbl_8051E544:
/* 8051E544  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8051E548  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8051E54C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8051E550  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051E554  7C 03 00 00 */	cmpw r3, r0
/* 8051E558  41 82 00 14 */	beq lbl_8051E56C
/* 8051E55C  40 80 00 40 */	bge lbl_8051E59C
/* 8051E560  2C 03 00 00 */	cmpwi r3, 0
/* 8051E564  41 82 00 20 */	beq lbl_8051E584
/* 8051E568  48 00 00 34 */	b lbl_8051E59C
lbl_8051E56C:
/* 8051E56C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E570  41 82 00 0C */	beq lbl_8051E57C
/* 8051E574  38 00 00 01 */	li r0, 1
/* 8051E578  48 00 00 28 */	b lbl_8051E5A0
lbl_8051E57C:
/* 8051E57C  38 00 00 02 */	li r0, 2
/* 8051E580  48 00 00 20 */	b lbl_8051E5A0
lbl_8051E584:
/* 8051E584  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E588  41 82 00 0C */	beq lbl_8051E594
/* 8051E58C  38 00 00 05 */	li r0, 5
/* 8051E590  48 00 00 10 */	b lbl_8051E5A0
lbl_8051E594:
/* 8051E594  38 00 00 03 */	li r0, 3
/* 8051E598  48 00 00 08 */	b lbl_8051E5A0
lbl_8051E59C:
/* 8051E59C  38 00 00 04 */	li r0, 4
lbl_8051E5A0:
/* 8051E5A0  2C 00 00 01 */	cmpwi r0, 1
/* 8051E5A4  40 82 00 0C */	bne lbl_8051E5B0
/* 8051E5A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E5AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8051E5B0:
/* 8051E5B0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8051E5B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E5B8  40 80 05 7C */	bge lbl_8051EB34
/* 8051E5BC  7E A3 AB 78 */	mr r3, r21
/* 8051E5C0  7E C4 B3 78 */	mr r4, r22
/* 8051E5C4  7E E5 BB 78 */	mr r5, r23
/* 8051E5C8  7F 06 C3 78 */	mr r6, r24
/* 8051E5CC  7F 27 CB 78 */	mr r7, r25
/* 8051E5D0  7F 88 E3 78 */	mr r8, r28
/* 8051E5D4  4B FF F4 4D */	bl WorkAt_NoCutAnim__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj
/* 8051E5D8  48 00 05 5C */	b lbl_8051EB34
lbl_8051E5DC:
/* 8051E5DC  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 8051E5E0  28 00 00 08 */	cmplwi r0, 8
/* 8051E5E4  41 82 00 0C */	beq lbl_8051E5F0
/* 8051E5E8  28 00 00 16 */	cmplwi r0, 0x16
/* 8051E5EC  40 82 01 20 */	bne lbl_8051E70C
lbl_8051E5F0:
/* 8051E5F0  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E5F4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8051E5F8  4B E2 8D A4 */	b PSVECSquareDistance
/* 8051E5FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E604  40 81 00 58 */	ble lbl_8051E65C
/* 8051E608  FC 00 08 34 */	frsqrte f0, f1
/* 8051E60C  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8051E610  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E614  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8051E618  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E61C  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E620  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E624  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E628  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E62C  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E630  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E634  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E638  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E63C  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E640  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E644  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E648  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E64C  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E650  FC 21 00 32 */	fmul f1, f1, f0
/* 8051E654  FC 20 08 18 */	frsp f1, f1
/* 8051E658  48 00 00 88 */	b lbl_8051E6E0
lbl_8051E65C:
/* 8051E65C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8051E660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E664  40 80 00 10 */	bge lbl_8051E674
/* 8051E668  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E66C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8051E670  48 00 00 70 */	b lbl_8051E6E0
lbl_8051E674:
/* 8051E674  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8051E678  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8051E67C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8051E680  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051E684  7C 03 00 00 */	cmpw r3, r0
/* 8051E688  41 82 00 14 */	beq lbl_8051E69C
/* 8051E68C  40 80 00 40 */	bge lbl_8051E6CC
/* 8051E690  2C 03 00 00 */	cmpwi r3, 0
/* 8051E694  41 82 00 20 */	beq lbl_8051E6B4
/* 8051E698  48 00 00 34 */	b lbl_8051E6CC
lbl_8051E69C:
/* 8051E69C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E6A0  41 82 00 0C */	beq lbl_8051E6AC
/* 8051E6A4  38 00 00 01 */	li r0, 1
/* 8051E6A8  48 00 00 28 */	b lbl_8051E6D0
lbl_8051E6AC:
/* 8051E6AC  38 00 00 02 */	li r0, 2
/* 8051E6B0  48 00 00 20 */	b lbl_8051E6D0
lbl_8051E6B4:
/* 8051E6B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E6B8  41 82 00 0C */	beq lbl_8051E6C4
/* 8051E6BC  38 00 00 05 */	li r0, 5
/* 8051E6C0  48 00 00 10 */	b lbl_8051E6D0
lbl_8051E6C4:
/* 8051E6C4  38 00 00 03 */	li r0, 3
/* 8051E6C8  48 00 00 08 */	b lbl_8051E6D0
lbl_8051E6CC:
/* 8051E6CC  38 00 00 04 */	li r0, 4
lbl_8051E6D0:
/* 8051E6D0  2C 00 00 01 */	cmpwi r0, 1
/* 8051E6D4  40 82 00 0C */	bne lbl_8051E6E0
/* 8051E6D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E6DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8051E6E0:
/* 8051E6E0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8051E6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E6E8  40 81 02 5C */	ble lbl_8051E944
/* 8051E6EC  7E A3 AB 78 */	mr r3, r21
/* 8051E6F0  7E C4 B3 78 */	mr r4, r22
/* 8051E6F4  7E E5 BB 78 */	mr r5, r23
/* 8051E6F8  7F 06 C3 78 */	mr r6, r24
/* 8051E6FC  7F 27 CB 78 */	mr r7, r25
/* 8051E700  7F 88 E3 78 */	mr r8, r28
/* 8051E704  4B FF F3 1D */	bl WorkAt_NoCutAnim__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj
/* 8051E708  48 00 04 2C */	b lbl_8051EB34
lbl_8051E70C:
/* 8051E70C  28 00 00 18 */	cmplwi r0, 0x18
/* 8051E710  41 82 00 0C */	beq lbl_8051E71C
/* 8051E714  28 00 00 17 */	cmplwi r0, 0x17
/* 8051E718  40 82 01 20 */	bne lbl_8051E838
lbl_8051E71C:
/* 8051E71C  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E720  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8051E724  4B E2 8C 78 */	b PSVECSquareDistance
/* 8051E728  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E72C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E730  40 81 00 58 */	ble lbl_8051E788
/* 8051E734  FC 00 08 34 */	frsqrte f0, f1
/* 8051E738  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8051E73C  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E740  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8051E744  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E748  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E74C  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E750  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E754  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E758  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E75C  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E760  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E764  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E768  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E76C  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E770  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E774  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E778  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E77C  FC 21 00 32 */	fmul f1, f1, f0
/* 8051E780  FC 20 08 18 */	frsp f1, f1
/* 8051E784  48 00 00 88 */	b lbl_8051E80C
lbl_8051E788:
/* 8051E788  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8051E78C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E790  40 80 00 10 */	bge lbl_8051E7A0
/* 8051E794  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E798  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8051E79C  48 00 00 70 */	b lbl_8051E80C
lbl_8051E7A0:
/* 8051E7A0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8051E7A4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8051E7A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8051E7AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051E7B0  7C 03 00 00 */	cmpw r3, r0
/* 8051E7B4  41 82 00 14 */	beq lbl_8051E7C8
/* 8051E7B8  40 80 00 40 */	bge lbl_8051E7F8
/* 8051E7BC  2C 03 00 00 */	cmpwi r3, 0
/* 8051E7C0  41 82 00 20 */	beq lbl_8051E7E0
/* 8051E7C4  48 00 00 34 */	b lbl_8051E7F8
lbl_8051E7C8:
/* 8051E7C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E7CC  41 82 00 0C */	beq lbl_8051E7D8
/* 8051E7D0  38 00 00 01 */	li r0, 1
/* 8051E7D4  48 00 00 28 */	b lbl_8051E7FC
lbl_8051E7D8:
/* 8051E7D8  38 00 00 02 */	li r0, 2
/* 8051E7DC  48 00 00 20 */	b lbl_8051E7FC
lbl_8051E7E0:
/* 8051E7E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E7E4  41 82 00 0C */	beq lbl_8051E7F0
/* 8051E7E8  38 00 00 05 */	li r0, 5
/* 8051E7EC  48 00 00 10 */	b lbl_8051E7FC
lbl_8051E7F0:
/* 8051E7F0  38 00 00 03 */	li r0, 3
/* 8051E7F4  48 00 00 08 */	b lbl_8051E7FC
lbl_8051E7F8:
/* 8051E7F8  38 00 00 04 */	li r0, 4
lbl_8051E7FC:
/* 8051E7FC  2C 00 00 01 */	cmpwi r0, 1
/* 8051E800  40 82 00 0C */	bne lbl_8051E80C
/* 8051E804  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E808  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8051E80C:
/* 8051E80C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8051E810  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E814  40 81 01 30 */	ble lbl_8051E944
/* 8051E818  7E A3 AB 78 */	mr r3, r21
/* 8051E81C  7E C4 B3 78 */	mr r4, r22
/* 8051E820  7E E5 BB 78 */	mr r5, r23
/* 8051E824  7F 06 C3 78 */	mr r6, r24
/* 8051E828  7F 27 CB 78 */	mr r7, r25
/* 8051E82C  7F 88 E3 78 */	mr r8, r28
/* 8051E830  4B FF F1 F1 */	bl WorkAt_NoCutAnim__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj
/* 8051E834  48 00 03 00 */	b lbl_8051EB34
lbl_8051E838:
/* 8051E838  28 00 00 01 */	cmplwi r0, 1
/* 8051E83C  41 82 00 0C */	beq lbl_8051E848
/* 8051E840  28 00 00 02 */	cmplwi r0, 2
/* 8051E844  40 82 01 00 */	bne lbl_8051E944
lbl_8051E848:
/* 8051E848  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E84C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8051E850  4B E2 8B 4C */	b PSVECSquareDistance
/* 8051E854  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E85C  40 81 00 58 */	ble lbl_8051E8B4
/* 8051E860  FC 00 08 34 */	frsqrte f0, f1
/* 8051E864  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8051E868  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E86C  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8051E870  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E874  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E878  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E87C  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E880  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E884  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E888  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E88C  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E890  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E894  FC 44 00 32 */	fmul f2, f4, f0
/* 8051E898  FC 00 00 32 */	fmul f0, f0, f0
/* 8051E89C  FC 01 00 32 */	fmul f0, f1, f0
/* 8051E8A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8051E8A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8051E8A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8051E8AC  FC 20 08 18 */	frsp f1, f1
/* 8051E8B0  48 00 00 88 */	b lbl_8051E938
lbl_8051E8B4:
/* 8051E8B4  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8051E8B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E8BC  40 80 00 10 */	bge lbl_8051E8CC
/* 8051E8C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E8C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8051E8C8  48 00 00 70 */	b lbl_8051E938
lbl_8051E8CC:
/* 8051E8CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8051E8D0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8051E8D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8051E8D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051E8DC  7C 03 00 00 */	cmpw r3, r0
/* 8051E8E0  41 82 00 14 */	beq lbl_8051E8F4
/* 8051E8E4  40 80 00 40 */	bge lbl_8051E924
/* 8051E8E8  2C 03 00 00 */	cmpwi r3, 0
/* 8051E8EC  41 82 00 20 */	beq lbl_8051E90C
/* 8051E8F0  48 00 00 34 */	b lbl_8051E924
lbl_8051E8F4:
/* 8051E8F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E8F8  41 82 00 0C */	beq lbl_8051E904
/* 8051E8FC  38 00 00 01 */	li r0, 1
/* 8051E900  48 00 00 28 */	b lbl_8051E928
lbl_8051E904:
/* 8051E904  38 00 00 02 */	li r0, 2
/* 8051E908  48 00 00 20 */	b lbl_8051E928
lbl_8051E90C:
/* 8051E90C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8051E910  41 82 00 0C */	beq lbl_8051E91C
/* 8051E914  38 00 00 05 */	li r0, 5
/* 8051E918  48 00 00 10 */	b lbl_8051E928
lbl_8051E91C:
/* 8051E91C  38 00 00 03 */	li r0, 3
/* 8051E920  48 00 00 08 */	b lbl_8051E928
lbl_8051E924:
/* 8051E924  38 00 00 04 */	li r0, 4
lbl_8051E928:
/* 8051E928  2C 00 00 01 */	cmpwi r0, 1
/* 8051E92C  40 82 00 0C */	bne lbl_8051E938
/* 8051E930  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8051E934  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8051E938:
/* 8051E938  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8051E93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E940  41 81 01 F4 */	bgt lbl_8051EB34
lbl_8051E944:
/* 8051E944  88 15 00 02 */	lbz r0, 2(r21)
/* 8051E948  7C 00 07 74 */	extsb r0, r0
/* 8051E94C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8051E950  41 80 00 24 */	blt lbl_8051E974
/* 8051E954  38 80 00 00 */	li r4, 0
/* 8051E958  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051E95C  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l
/* 8051E960  80 63 00 00 */	lwz r3, 0(r3)
/* 8051E964  3C 63 00 02 */	addis r3, r3, 2
/* 8051E968  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8051E96C  7C 63 02 14 */	add r3, r3, r0
/* 8051E970  98 83 BD 64 */	stb r4, -0x429c(r3)
lbl_8051E974:
/* 8051E974  88 15 00 04 */	lbz r0, 4(r21)
/* 8051E978  7C 1B 03 78 */	mr r27, r0
/* 8051E97C  28 00 00 FF */	cmplwi r0, 0xff
/* 8051E980  40 82 00 08 */	bne lbl_8051E988
/* 8051E984  3B 60 FF FF */	li r27, -1
lbl_8051E988:
/* 8051E988  3A 80 00 00 */	li r20, 0
/* 8051E98C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8051E990  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8051E994  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8051E998  7D 89 03 A6 */	mtctr r12
/* 8051E99C  4E 80 04 21 */	bctrl 
/* 8051E9A0  28 03 00 00 */	cmplwi r3, 0
/* 8051E9A4  41 82 00 08 */	beq lbl_8051E9AC
/* 8051E9A8  3A 80 00 01 */	li r20, 1
lbl_8051E9AC:
/* 8051E9AC  38 00 00 00 */	li r0, 0
/* 8051E9B0  90 01 00 08 */	stw r0, 8(r1)
/* 8051E9B4  92 81 00 0C */	stw r20, 0xc(r1)
/* 8051E9B8  38 75 00 0C */	addi r3, r21, 0xc
/* 8051E9BC  88 95 00 03 */	lbz r4, 3(r21)
/* 8051E9C0  7F 65 DB 78 */	mr r5, r27
/* 8051E9C4  7F 06 C3 78 */	mr r6, r24
/* 8051E9C8  38 E0 00 00 */	li r7, 0
/* 8051E9CC  39 00 00 00 */	li r8, 0
/* 8051E9D0  39 20 00 00 */	li r9, 0
/* 8051E9D4  39 40 00 00 */	li r10, 0
/* 8051E9D8  4B AF D5 8C */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
/* 8051E9DC  38 00 FF FF */	li r0, -1
/* 8051E9E0  98 15 00 02 */	stb r0, 2(r21)
/* 8051E9E4  88 1D 00 4C */	lbz r0, 0x4c(r29)
/* 8051E9E8  7C 00 07 75 */	extsb. r0, r0
/* 8051E9EC  40 82 00 30 */	bne lbl_8051EA1C
/* 8051E9F0  38 7D 00 50 */	addi r3, r29, 0x50
/* 8051E9F4  38 80 00 00 */	li r4, 0
/* 8051E9F8  38 A0 00 00 */	li r5, 0
/* 8051E9FC  38 C0 00 00 */	li r6, 0
/* 8051EA00  4B D4 89 F4 */	b __ct__5csXyzFsss
/* 8051EA04  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha
/* 8051EA08  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l
/* 8051EA0C  38 BD 00 40 */	addi r5, r29, 0x40
/* 8051EA10  4B FF D2 C9 */	bl __register_global_object
/* 8051EA14  38 00 00 01 */	li r0, 1
/* 8051EA18  98 1D 00 4C */	stb r0, 0x4c(r29)
lbl_8051EA1C:
/* 8051EA1C  C0 55 00 14 */	lfs f2, 0x14(r21)
/* 8051EA20  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8051EA24  C0 15 00 10 */	lfs f0, 0x10(r21)
/* 8051EA28  EC 21 00 2A */	fadds f1, f1, f0
/* 8051EA2C  C0 15 00 0C */	lfs f0, 0xc(r21)
/* 8051EA30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8051EA34  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8051EA38  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8051EA3C  1C 98 04 04 */	mulli r4, r24, 0x404
/* 8051EA40  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8051EA44  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l
/* 8051EA48  7C 60 22 14 */	add r3, r0, r4
/* 8051EA4C  3B E3 00 6C */	addi r31, r3, 0x6c
/* 8051EA50  7E A3 AB 78 */	mr r3, r21
/* 8051EA54  7E C4 B3 78 */	mr r4, r22
/* 8051EA58  7E E5 BB 78 */	mr r5, r23
/* 8051EA5C  7F 06 C3 78 */	mr r6, r24
/* 8051EA60  7F 27 CB 78 */	mr r7, r25
/* 8051EA64  7F 88 E3 78 */	mr r8, r28
/* 8051EA68  39 21 00 40 */	addi r9, r1, 0x40
/* 8051EA6C  4B FF F4 E9 */	bl Direction_Set__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_ObjP5csXyz
/* 8051EA70  A8 75 00 08 */	lha r3, 8(r21)
/* 8051EA74  7C 60 46 70 */	srawi r0, r3, 8
/* 8051EA78  98 01 00 3C */	stb r0, 0x3c(r1)
/* 8051EA7C  98 61 00 3D */	stb r3, 0x3d(r1)
/* 8051EA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051EA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051EA88  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8051EA8C  3C 80 80 45 */	lis r4, mLight8EcallBack__13dPa_control_c@ha
/* 8051EA90  38 04 0E AC */	addi r0, r4, mLight8EcallBack__13dPa_control_c@l
/* 8051EA94  90 01 00 08 */	stw r0, 8(r1)
/* 8051EA98  38 00 FF FF */	li r0, -1
/* 8051EA9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8051EAA0  38 01 00 3C */	addi r0, r1, 0x3c
/* 8051EAA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8051EAA8  38 00 00 00 */	li r0, 0
/* 8051EAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EAB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8051EAB4  38 80 00 00 */	li r4, 0
/* 8051EAB8  7F 45 D3 78 */	mr r5, r26
/* 8051EABC  38 C1 00 48 */	addi r6, r1, 0x48
/* 8051EAC0  7F E7 FB 78 */	mr r7, r31
/* 8051EAC4  39 01 00 40 */	addi r8, r1, 0x40
/* 8051EAC8  39 20 00 00 */	li r9, 0
/* 8051EACC  39 40 00 FF */	li r10, 0xff
/* 8051EAD0  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8051EAD4  4B B2 DF BC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8051EAD8  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 8051EADC  28 00 00 00 */	cmplwi r0, 0
/* 8051EAE0  40 82 00 54 */	bne lbl_8051EB34
/* 8051EAE4  38 00 00 01 */	li r0, 1
/* 8051EAE8  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 8051EAEC  7F 03 C3 78 */	mr r3, r24
/* 8051EAF0  4B B0 E5 7C */	b dComIfGp_getReverb__Fi
/* 8051EAF4  7C 67 1B 78 */	mr r7, r3
/* 8051EAF8  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002002B@ha */
/* 8051EAFC  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0002002B@l */
/* 8051EB00  90 01 00 38 */	stw r0, 0x38(r1)
/* 8051EB04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8051EB08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8051EB0C  80 63 00 00 */	lwz r3, 0(r3)
/* 8051EB10  38 81 00 38 */	addi r4, r1, 0x38
/* 8051EB14  38 B5 00 0C */	addi r5, r21, 0xc
/* 8051EB18  38 C0 00 00 */	li r6, 0
/* 8051EB1C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8051EB20  FC 40 08 90 */	fmr f2, f1
/* 8051EB24  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 8051EB28  FC 80 18 90 */	fmr f4, f3
/* 8051EB2C  39 00 00 00 */	li r8, 0
/* 8051EB30  4B D8 CE 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8051EB34:
/* 8051EB34  39 61 00 90 */	addi r11, r1, 0x90
/* 8051EB38  4B E4 36 CC */	b _restgpr_20
/* 8051EB3C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051EB40  7C 08 03 A6 */	mtlr r0
/* 8051EB44  38 21 00 90 */	addi r1, r1, 0x90
/* 8051EB48  4E 80 00 20 */	blr 
