lbl_801A81C0:
/* 801A81C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A81C4  7C 08 02 A6 */	mflr r0
/* 801A81C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A81CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801A81D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801A81D4  39 61 00 30 */	addi r11, r1, 0x30
/* 801A81D8  48 1B 9F F5 */	bl _savegpr_25
/* 801A81DC  7C 79 1B 78 */	mr r25, r3
/* 801A81E0  7C 9A 23 78 */	mr r26, r4
/* 801A81E4  7C BB 2B 78 */	mr r27, r5
/* 801A81E8  7C DC 33 78 */	mr r28, r6
/* 801A81EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A81F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A81F4  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 801A81F8  3B A0 00 00 */	li r29, 0
/* 801A81FC  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 801A8200  48 19 F1 9D */	bl PSVECSquareDistance
/* 801A8204  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A8208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A820C  40 81 00 58 */	ble lbl_801A8264
/* 801A8210  FC 00 08 34 */	frsqrte f0, f1
/* 801A8214  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A8218  FC 44 00 32 */	fmul f2, f4, f0
/* 801A821C  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A8220  FC 00 00 32 */	fmul f0, f0, f0
/* 801A8224  FC 01 00 32 */	fmul f0, f1, f0
/* 801A8228  FC 03 00 28 */	fsub f0, f3, f0
/* 801A822C  FC 02 00 32 */	fmul f0, f2, f0
/* 801A8230  FC 44 00 32 */	fmul f2, f4, f0
/* 801A8234  FC 00 00 32 */	fmul f0, f0, f0
/* 801A8238  FC 01 00 32 */	fmul f0, f1, f0
/* 801A823C  FC 03 00 28 */	fsub f0, f3, f0
/* 801A8240  FC 02 00 32 */	fmul f0, f2, f0
/* 801A8244  FC 44 00 32 */	fmul f2, f4, f0
/* 801A8248  FC 00 00 32 */	fmul f0, f0, f0
/* 801A824C  FC 01 00 32 */	fmul f0, f1, f0
/* 801A8250  FC 03 00 28 */	fsub f0, f3, f0
/* 801A8254  FC 02 00 32 */	fmul f0, f2, f0
/* 801A8258  FF E1 00 32 */	fmul f31, f1, f0
/* 801A825C  FF E0 F8 18 */	frsp f31, f31
/* 801A8260  48 00 00 90 */	b lbl_801A82F0
lbl_801A8264:
/* 801A8264  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A8268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A826C  40 80 00 10 */	bge lbl_801A827C
/* 801A8270  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A8274  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801A8278  48 00 00 78 */	b lbl_801A82F0
lbl_801A827C:
/* 801A827C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801A8280  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801A8284  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A8288  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A828C  7C 03 00 00 */	cmpw r3, r0
/* 801A8290  41 82 00 14 */	beq lbl_801A82A4
/* 801A8294  40 80 00 40 */	bge lbl_801A82D4
/* 801A8298  2C 03 00 00 */	cmpwi r3, 0
/* 801A829C  41 82 00 20 */	beq lbl_801A82BC
/* 801A82A0  48 00 00 34 */	b lbl_801A82D4
lbl_801A82A4:
/* 801A82A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A82A8  41 82 00 0C */	beq lbl_801A82B4
/* 801A82AC  38 00 00 01 */	li r0, 1
/* 801A82B0  48 00 00 28 */	b lbl_801A82D8
lbl_801A82B4:
/* 801A82B4  38 00 00 02 */	li r0, 2
/* 801A82B8  48 00 00 20 */	b lbl_801A82D8
lbl_801A82BC:
/* 801A82BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A82C0  41 82 00 0C */	beq lbl_801A82CC
/* 801A82C4  38 00 00 05 */	li r0, 5
/* 801A82C8  48 00 00 10 */	b lbl_801A82D8
lbl_801A82CC:
/* 801A82CC  38 00 00 03 */	li r0, 3
/* 801A82D0  48 00 00 08 */	b lbl_801A82D8
lbl_801A82D4:
/* 801A82D4  38 00 00 04 */	li r0, 4
lbl_801A82D8:
/* 801A82D8  2C 00 00 01 */	cmpwi r0, 1
/* 801A82DC  40 82 00 10 */	bne lbl_801A82EC
/* 801A82E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A82E4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801A82E8  48 00 00 08 */	b lbl_801A82F0
lbl_801A82EC:
/* 801A82EC  FF E0 08 90 */	fmr f31, f1
lbl_801A82F0:
/* 801A82F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A82F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A82F8  3B E3 09 74 */	addi r31, r3, 0x974
/* 801A82FC  7F E3 FB 78 */	mr r3, r31
/* 801A8300  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 801A8304  48 19 F0 99 */	bl PSVECSquareDistance
/* 801A8308  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A830C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A8310  40 81 00 58 */	ble lbl_801A8368
/* 801A8314  FC 00 08 34 */	frsqrte f0, f1
/* 801A8318  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A831C  FC 44 00 32 */	fmul f2, f4, f0
/* 801A8320  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A8324  FC 00 00 32 */	fmul f0, f0, f0
/* 801A8328  FC 01 00 32 */	fmul f0, f1, f0
/* 801A832C  FC 03 00 28 */	fsub f0, f3, f0
/* 801A8330  FC 02 00 32 */	fmul f0, f2, f0
/* 801A8334  FC 44 00 32 */	fmul f2, f4, f0
/* 801A8338  FC 00 00 32 */	fmul f0, f0, f0
/* 801A833C  FC 01 00 32 */	fmul f0, f1, f0
/* 801A8340  FC 03 00 28 */	fsub f0, f3, f0
/* 801A8344  FC 02 00 32 */	fmul f0, f2, f0
/* 801A8348  FC 44 00 32 */	fmul f2, f4, f0
/* 801A834C  FC 00 00 32 */	fmul f0, f0, f0
/* 801A8350  FC 01 00 32 */	fmul f0, f1, f0
/* 801A8354  FC 03 00 28 */	fsub f0, f3, f0
/* 801A8358  FC 02 00 32 */	fmul f0, f2, f0
/* 801A835C  FC 21 00 32 */	fmul f1, f1, f0
/* 801A8360  FC 20 08 18 */	frsp f1, f1
/* 801A8364  48 00 00 88 */	b lbl_801A83EC
lbl_801A8368:
/* 801A8368  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A836C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A8370  40 80 00 10 */	bge lbl_801A8380
/* 801A8374  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A8378  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801A837C  48 00 00 70 */	b lbl_801A83EC
lbl_801A8380:
/* 801A8380  D0 21 00 08 */	stfs f1, 8(r1)
/* 801A8384  80 81 00 08 */	lwz r4, 8(r1)
/* 801A8388  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A838C  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A8390  7C 03 00 00 */	cmpw r3, r0
/* 801A8394  41 82 00 14 */	beq lbl_801A83A8
/* 801A8398  40 80 00 40 */	bge lbl_801A83D8
/* 801A839C  2C 03 00 00 */	cmpwi r3, 0
/* 801A83A0  41 82 00 20 */	beq lbl_801A83C0
/* 801A83A4  48 00 00 34 */	b lbl_801A83D8
lbl_801A83A8:
/* 801A83A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A83AC  41 82 00 0C */	beq lbl_801A83B8
/* 801A83B0  38 00 00 01 */	li r0, 1
/* 801A83B4  48 00 00 28 */	b lbl_801A83DC
lbl_801A83B8:
/* 801A83B8  38 00 00 02 */	li r0, 2
/* 801A83BC  48 00 00 20 */	b lbl_801A83DC
lbl_801A83C0:
/* 801A83C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A83C4  41 82 00 0C */	beq lbl_801A83D0
/* 801A83C8  38 00 00 05 */	li r0, 5
/* 801A83CC  48 00 00 10 */	b lbl_801A83DC
lbl_801A83D0:
/* 801A83D0  38 00 00 03 */	li r0, 3
/* 801A83D4  48 00 00 08 */	b lbl_801A83DC
lbl_801A83D8:
/* 801A83D8  38 00 00 04 */	li r0, 4
lbl_801A83DC:
/* 801A83DC  2C 00 00 01 */	cmpwi r0, 1
/* 801A83E0  40 82 00 0C */	bne lbl_801A83EC
/* 801A83E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A83E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801A83EC:
/* 801A83EC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801A83F0  40 80 00 30 */	bge lbl_801A8420
/* 801A83F4  C0 02 A1 FC */	lfs f0, lit_4360(r2)
/* 801A83F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A83FC  40 80 00 0C */	bge lbl_801A8408
/* 801A8400  3B A0 00 01 */	li r29, 1
/* 801A8404  48 00 00 1C */	b lbl_801A8420
lbl_801A8408:
/* 801A8408  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A840C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8410  80 03 09 80 */	lwz r0, 0x980(r3)
/* 801A8414  7C 00 D0 00 */	cmpw r0, r26
/* 801A8418  40 80 00 08 */	bge lbl_801A8420
/* 801A841C  3B A0 00 01 */	li r29, 1
lbl_801A8420:
/* 801A8420  2C 1D 00 00 */	cmpwi r29, 0
/* 801A8424  41 82 00 30 */	beq lbl_801A8454
/* 801A8428  C0 19 00 00 */	lfs f0, 0(r25)
/* 801A842C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801A8430  C0 19 00 04 */	lfs f0, 4(r25)
/* 801A8434  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8438  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A843C  D0 03 09 78 */	stfs f0, 0x978(r3)
/* 801A8440  C0 19 00 08 */	lfs f0, 8(r25)
/* 801A8444  D0 03 09 7C */	stfs f0, 0x97c(r3)
/* 801A8448  93 43 09 80 */	stw r26, 0x980(r3)
/* 801A844C  93 63 09 88 */	stw r27, 0x988(r3)
/* 801A8450  93 83 09 84 */	stw r28, 0x984(r3)
lbl_801A8454:
/* 801A8454  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801A8458  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801A845C  39 61 00 30 */	addi r11, r1, 0x30
/* 801A8460  48 1B 9D B9 */	bl _restgpr_25
/* 801A8464  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A8468  7C 08 03 A6 */	mtlr r0
/* 801A846C  38 21 00 40 */	addi r1, r1, 0x40
/* 801A8470  4E 80 00 20 */	blr 
