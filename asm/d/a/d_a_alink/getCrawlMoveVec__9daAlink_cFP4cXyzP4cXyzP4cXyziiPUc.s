lbl_800F81C0:
/* 800F81C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800F81C4  7C 08 02 A6 */	mflr r0
/* 800F81C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 800F81CC  39 61 00 90 */	addi r11, r1, 0x90
/* 800F81D0  48 26 9F FD */	bl _savegpr_25
/* 800F81D4  7C 79 1B 78 */	mr r25, r3
/* 800F81D8  7C BD 2B 78 */	mr r29, r5
/* 800F81DC  7C DA 33 78 */	mr r26, r6
/* 800F81E0  7C FB 3B 78 */	mr r27, r7
/* 800F81E4  7D 1E 43 78 */	mr r30, r8
/* 800F81E8  7D 3C 4B 78 */	mr r28, r9
/* 800F81EC  4B FA 9F AD */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F81F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F81F4  41 82 03 B0 */	beq lbl_800F85A4
/* 800F81F8  2C 1E 00 00 */	cmpwi r30, 0
/* 800F81FC  40 82 00 24 */	bne lbl_800F8220
/* 800F8200  80 19 05 74 */	lwz r0, 0x574(r25)
/* 800F8204  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800F8208  41 82 00 34 */	beq lbl_800F823C
/* 800F820C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F8210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8214  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F8218  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 800F821C  41 82 00 20 */	beq lbl_800F823C
lbl_800F8220:
/* 800F8220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F8224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8228  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800F822C  38 99 1B 5C */	addi r4, r25, 0x1b5c
/* 800F8230  4B F7 CB D1 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800F8234  2C 03 00 06 */	cmpwi r3, 6
/* 800F8238  41 82 03 6C */	beq lbl_800F85A4
lbl_800F823C:
/* 800F823C  80 19 05 74 */	lwz r0, 0x574(r25)
/* 800F8240  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800F8244  41 82 00 20 */	beq lbl_800F8264
/* 800F8248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F824C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8250  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800F8254  38 99 1B 5C */	addi r4, r25, 0x1b5c
/* 800F8258  4B F7 CB A9 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800F825C  2C 03 00 07 */	cmpwi r3, 7
/* 800F8260  41 82 03 44 */	beq lbl_800F85A4
lbl_800F8264:
/* 800F8264  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F8268  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F826C  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F8270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F8274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F8278  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800F827C  7F E3 FB 78 */	mr r3, r31
/* 800F8280  38 99 1B 5C */	addi r4, r25, 0x1b5c
/* 800F8284  38 A1 00 50 */	addi r5, r1, 0x50
/* 800F8288  4B F7 C4 BD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800F828C  7F E3 FB 78 */	mr r3, r31
/* 800F8290  38 99 1B 5C */	addi r4, r25, 0x1b5c
/* 800F8294  4B F7 CA 29 */	bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 800F8298  7C 7E 1B 78 */	mr r30, r3
/* 800F829C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 800F82A0  48 16 FF 71 */	bl cBgW_CheckBWall__Ff
/* 800F82A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F82A8  40 82 00 1C */	bne lbl_800F82C4
/* 800F82AC  2C 1B 00 02 */	cmpwi r27, 2
/* 800F82B0  40 82 02 84 */	bne lbl_800F8534
/* 800F82B4  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 800F82B8  48 16 FF 2D */	bl cBgW_CheckBGround__Ff
/* 800F82BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F82C0  41 82 02 74 */	beq lbl_800F8534
lbl_800F82C4:
/* 800F82C4  38 61 00 24 */	addi r3, r1, 0x24
/* 800F82C8  7F A4 EB 78 */	mr r4, r29
/* 800F82CC  38 B9 1B 78 */	addi r5, r25, 0x1b78
/* 800F82D0  48 16 E8 65 */	bl __mi__4cXyzCFRC3Vec
/* 800F82D4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800F82D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800F82DC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800F82E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800F82E4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800F82E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800F82EC  38 61 00 50 */	addi r3, r1, 0x50
/* 800F82F0  48 16 EE 39 */	bl atan2sX_Z__4cXyzCFv
/* 800F82F4  7C 7D 1B 78 */	mr r29, r3
/* 800F82F8  38 61 00 30 */	addi r3, r1, 0x30
/* 800F82FC  48 16 EE 2D */	bl atan2sX_Z__4cXyzCFv
/* 800F8300  7F BE 07 34 */	extsh r30, r29
/* 800F8304  7C 7D 07 34 */	extsh r29, r3
/* 800F8308  3C 7D 00 01 */	addis r3, r29, 1
/* 800F830C  38 03 80 00 */	addi r0, r3, -32768
/* 800F8310  7C 1E 00 50 */	subf r0, r30, r0
/* 800F8314  7C 03 07 34 */	extsh r3, r0
/* 800F8318  48 26 CD B9 */	bl abs
/* 800F831C  2C 03 30 00 */	cmpwi r3, 0x3000
/* 800F8320  40 81 00 18 */	ble lbl_800F8338
/* 800F8324  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F8328  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F832C  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F8330  38 60 00 00 */	li r3, 0
/* 800F8334  48 00 02 74 */	b lbl_800F85A8
lbl_800F8338:
/* 800F8338  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800F833C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800F8340  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F8344  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800F8348  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800F834C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800F8350  38 61 00 0C */	addi r3, r1, 0xc
/* 800F8354  48 24 ED E5 */	bl PSVECSquareMag
/* 800F8358  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F835C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F8360  40 81 00 58 */	ble lbl_800F83B8
/* 800F8364  FC 00 08 34 */	frsqrte f0, f1
/* 800F8368  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800F836C  FC 44 00 32 */	fmul f2, f4, f0
/* 800F8370  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800F8374  FC 00 00 32 */	fmul f0, f0, f0
/* 800F8378  FC 01 00 32 */	fmul f0, f1, f0
/* 800F837C  FC 03 00 28 */	fsub f0, f3, f0
/* 800F8380  FC 02 00 32 */	fmul f0, f2, f0
/* 800F8384  FC 44 00 32 */	fmul f2, f4, f0
/* 800F8388  FC 00 00 32 */	fmul f0, f0, f0
/* 800F838C  FC 01 00 32 */	fmul f0, f1, f0
/* 800F8390  FC 03 00 28 */	fsub f0, f3, f0
/* 800F8394  FC 02 00 32 */	fmul f0, f2, f0
/* 800F8398  FC 44 00 32 */	fmul f2, f4, f0
/* 800F839C  FC 00 00 32 */	fmul f0, f0, f0
/* 800F83A0  FC 01 00 32 */	fmul f0, f1, f0
/* 800F83A4  FC 03 00 28 */	fsub f0, f3, f0
/* 800F83A8  FC 02 00 32 */	fmul f0, f2, f0
/* 800F83AC  FC 21 00 32 */	fmul f1, f1, f0
/* 800F83B0  FC 20 08 18 */	frsp f1, f1
/* 800F83B4  48 00 00 88 */	b lbl_800F843C
lbl_800F83B8:
/* 800F83B8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800F83BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F83C0  40 80 00 10 */	bge lbl_800F83D0
/* 800F83C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800F83C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800F83CC  48 00 00 70 */	b lbl_800F843C
lbl_800F83D0:
/* 800F83D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800F83D4  80 81 00 08 */	lwz r4, 8(r1)
/* 800F83D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800F83DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800F83E0  7C 03 00 00 */	cmpw r3, r0
/* 800F83E4  41 82 00 14 */	beq lbl_800F83F8
/* 800F83E8  40 80 00 40 */	bge lbl_800F8428
/* 800F83EC  2C 03 00 00 */	cmpwi r3, 0
/* 800F83F0  41 82 00 20 */	beq lbl_800F8410
/* 800F83F4  48 00 00 34 */	b lbl_800F8428
lbl_800F83F8:
/* 800F83F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800F83FC  41 82 00 0C */	beq lbl_800F8408
/* 800F8400  38 00 00 01 */	li r0, 1
/* 800F8404  48 00 00 28 */	b lbl_800F842C
lbl_800F8408:
/* 800F8408  38 00 00 02 */	li r0, 2
/* 800F840C  48 00 00 20 */	b lbl_800F842C
lbl_800F8410:
/* 800F8410  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800F8414  41 82 00 0C */	beq lbl_800F8420
/* 800F8418  38 00 00 05 */	li r0, 5
/* 800F841C  48 00 00 10 */	b lbl_800F842C
lbl_800F8420:
/* 800F8420  38 00 00 03 */	li r0, 3
/* 800F8424  48 00 00 08 */	b lbl_800F842C
lbl_800F8428:
/* 800F8428  38 00 00 04 */	li r0, 4
lbl_800F842C:
/* 800F842C  2C 00 00 01 */	cmpwi r0, 1
/* 800F8430  40 82 00 0C */	bne lbl_800F843C
/* 800F8434  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800F8438  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800F843C:
/* 800F843C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F8440  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F8444  7C 7E E8 50 */	subf r3, r30, r29
/* 800F8448  38 03 80 00 */	addi r0, r3, -32768
/* 800F844C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F8450  7C 64 02 14 */	add r3, r4, r0
/* 800F8454  C0 43 00 04 */	lfs f2, 4(r3)
/* 800F8458  FC 00 08 50 */	fneg f0, f1
/* 800F845C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 800F8460  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800F8464  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F8468  D0 1A 00 00 */	stfs f0, 0(r26)
/* 800F846C  2C 1B 00 01 */	cmpwi r27, 1
/* 800F8470  41 82 00 10 */	beq lbl_800F8480
/* 800F8474  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F8478  D0 1A 00 04 */	stfs f0, 4(r26)
/* 800F847C  48 00 00 0C */	b lbl_800F8488
lbl_800F8480:
/* 800F8480  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800F8484  D0 1A 00 04 */	stfs f0, 4(r26)
lbl_800F8488:
/* 800F8488  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800F848C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F8490  D0 1A 00 08 */	stfs f0, 8(r26)
/* 800F8494  28 1C 00 00 */	cmplwi r28, 0
/* 800F8498  41 82 00 88 */	beq lbl_800F8520
/* 800F849C  38 79 1B 5C */	addi r3, r25, 0x1b5c
/* 800F84A0  48 0B 30 FD */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800F84A4  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 800F84A8  41 82 00 78 */	beq lbl_800F8520
/* 800F84AC  38 00 00 03 */	li r0, 3
/* 800F84B0  98 1C 00 00 */	stb r0, 0(r28)
/* 800F84B4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F84B8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F84BC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800F84C0  7F E3 FB 78 */	mr r3, r31
/* 800F84C4  38 99 1B 5C */	addi r4, r25, 0x1b5c
/* 800F84C8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800F84CC  4B F7 C2 79 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800F84D0  38 61 00 3C */	addi r3, r1, 0x3c
/* 800F84D4  48 16 EC 55 */	bl atan2sX_Z__4cXyzCFv
/* 800F84D8  B0 79 31 1E */	sth r3, 0x311e(r25)
/* 800F84DC  38 79 1B 5C */	addi r3, r25, 0x1b5c
/* 800F84E0  4B FD F2 89 */	bl checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 800F84E4  2C 03 00 00 */	cmpwi r3, 0
/* 800F84E8  41 82 00 10 */	beq lbl_800F84F8
/* 800F84EC  88 1C 00 00 */	lbz r0, 0(r28)
/* 800F84F0  60 00 00 80 */	ori r0, r0, 0x80
/* 800F84F4  98 1C 00 00 */	stb r0, 0(r28)
lbl_800F84F8:
/* 800F84F8  38 79 1B 5C */	addi r3, r25, 0x1b5c
/* 800F84FC  48 0B 30 A1 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800F8500  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800F8504  41 82 00 10 */	beq lbl_800F8514
/* 800F8508  88 1C 00 00 */	lbz r0, 0(r28)
/* 800F850C  60 00 00 40 */	ori r0, r0, 0x40
/* 800F8510  98 1C 00 00 */	stb r0, 0(r28)
lbl_800F8514:
/* 800F8514  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F8518  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F851C  90 01 00 4C */	stw r0, 0x4c(r1)
lbl_800F8520:
/* 800F8520  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F8524  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F8528  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F852C  38 60 00 01 */	li r3, 1
/* 800F8530  48 00 00 78 */	b lbl_800F85A8
lbl_800F8534:
/* 800F8534  2C 1B 00 01 */	cmpwi r27, 1
/* 800F8538  40 82 00 60 */	bne lbl_800F8598
/* 800F853C  2C 1E 00 01 */	cmpwi r30, 1
/* 800F8540  41 82 00 1C */	beq lbl_800F855C
/* 800F8544  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 800F8548  C0 19 34 70 */	lfs f0, 0x3470(r25)
/* 800F854C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F8550  40 80 00 48 */	bge lbl_800F8598
/* 800F8554  2C 1E 00 02 */	cmpwi r30, 2
/* 800F8558  40 82 00 40 */	bne lbl_800F8598
lbl_800F855C:
/* 800F855C  38 61 00 18 */	addi r3, r1, 0x18
/* 800F8560  7F A4 EB 78 */	mr r4, r29
/* 800F8564  38 B9 1B 78 */	addi r5, r25, 0x1b78
/* 800F8568  48 16 E5 CD */	bl __mi__4cXyzCFRC3Vec
/* 800F856C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800F8570  D0 1A 00 00 */	stfs f0, 0(r26)
/* 800F8574  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800F8578  D0 1A 00 04 */	stfs f0, 4(r26)
/* 800F857C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800F8580  D0 1A 00 08 */	stfs f0, 8(r26)
/* 800F8584  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F8588  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F858C  90 01 00 60 */	stw r0, 0x60(r1)
/* 800F8590  38 60 00 01 */	li r3, 1
/* 800F8594  48 00 00 14 */	b lbl_800F85A8
lbl_800F8598:
/* 800F8598  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800F859C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800F85A0  90 01 00 60 */	stw r0, 0x60(r1)
lbl_800F85A4:
/* 800F85A4  38 60 00 00 */	li r3, 0
lbl_800F85A8:
/* 800F85A8  39 61 00 90 */	addi r11, r1, 0x90
/* 800F85AC  48 26 9C 6D */	bl _restgpr_25
/* 800F85B0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800F85B4  7C 08 03 A6 */	mtlr r0
/* 800F85B8  38 21 00 90 */	addi r1, r1, 0x90
/* 800F85BC  4E 80 00 20 */	blr 
