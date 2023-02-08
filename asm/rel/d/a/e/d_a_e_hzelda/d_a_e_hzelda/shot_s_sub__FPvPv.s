lbl_806F1214:
/* 806F1214  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F1218  7C 08 02 A6 */	mflr r0
/* 806F121C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F1220  39 61 00 40 */	addi r11, r1, 0x40
/* 806F1224  4B C7 0F B9 */	bl _savegpr_29
/* 806F1228  7C 7D 1B 78 */	mr r29, r3
/* 806F122C  7C 9E 23 78 */	mr r30, r4
/* 806F1230  3C 80 80 6F */	lis r4, lit_3767@ha /* 0x806F5514@ha */
/* 806F1234  3B E4 55 14 */	addi r31, r4, lit_3767@l /* 0x806F5514@l */
/* 806F1238  4B 92 7A A9 */	bl fopAc_IsActor__FPv
/* 806F123C  2C 03 00 00 */	cmpwi r3, 0
/* 806F1240  41 82 01 4C */	beq lbl_806F138C
/* 806F1244  A8 1D 00 08 */	lha r0, 8(r29)
/* 806F1248  2C 00 03 08 */	cmpwi r0, 0x308
/* 806F124C  40 82 01 40 */	bne lbl_806F138C
/* 806F1250  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F1254  28 00 00 01 */	cmplwi r0, 1
/* 806F1258  41 82 00 0C */	beq lbl_806F1264
/* 806F125C  28 00 00 02 */	cmplwi r0, 2
/* 806F1260  40 82 01 2C */	bne lbl_806F138C
lbl_806F1264:
/* 806F1264  38 61 00 0C */	addi r3, r1, 0xc
/* 806F1268  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806F126C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806F1270  4B B7 58 C5 */	bl __mi__4cXyzCFRC3Vec
/* 806F1274  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806F1278  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F127C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806F1280  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F1284  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806F1288  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F128C  38 61 00 18 */	addi r3, r1, 0x18
/* 806F1290  4B C5 5E A9 */	bl PSVECSquareMag
/* 806F1294  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F1298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F129C  40 81 00 58 */	ble lbl_806F12F4
/* 806F12A0  FC 00 08 34 */	frsqrte f0, f1
/* 806F12A4  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 806F12A8  FC 44 00 32 */	fmul f2, f4, f0
/* 806F12AC  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 806F12B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806F12B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806F12B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806F12BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806F12C0  FC 44 00 32 */	fmul f2, f4, f0
/* 806F12C4  FC 00 00 32 */	fmul f0, f0, f0
/* 806F12C8  FC 01 00 32 */	fmul f0, f1, f0
/* 806F12CC  FC 03 00 28 */	fsub f0, f3, f0
/* 806F12D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806F12D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806F12D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806F12DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806F12E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806F12E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806F12E8  FC 21 00 32 */	fmul f1, f1, f0
/* 806F12EC  FC 20 08 18 */	frsp f1, f1
/* 806F12F0  48 00 00 88 */	b lbl_806F1378
lbl_806F12F4:
/* 806F12F4  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 806F12F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F12FC  40 80 00 10 */	bge lbl_806F130C
/* 806F1300  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806F1304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806F1308  48 00 00 70 */	b lbl_806F1378
lbl_806F130C:
/* 806F130C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806F1310  80 81 00 08 */	lwz r4, 8(r1)
/* 806F1314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806F1318  3C 00 7F 80 */	lis r0, 0x7f80
/* 806F131C  7C 03 00 00 */	cmpw r3, r0
/* 806F1320  41 82 00 14 */	beq lbl_806F1334
/* 806F1324  40 80 00 40 */	bge lbl_806F1364
/* 806F1328  2C 03 00 00 */	cmpwi r3, 0
/* 806F132C  41 82 00 20 */	beq lbl_806F134C
/* 806F1330  48 00 00 34 */	b lbl_806F1364
lbl_806F1334:
/* 806F1334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F1338  41 82 00 0C */	beq lbl_806F1344
/* 806F133C  38 00 00 01 */	li r0, 1
/* 806F1340  48 00 00 28 */	b lbl_806F1368
lbl_806F1344:
/* 806F1344  38 00 00 02 */	li r0, 2
/* 806F1348  48 00 00 20 */	b lbl_806F1368
lbl_806F134C:
/* 806F134C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F1350  41 82 00 0C */	beq lbl_806F135C
/* 806F1354  38 00 00 05 */	li r0, 5
/* 806F1358  48 00 00 10 */	b lbl_806F1368
lbl_806F135C:
/* 806F135C  38 00 00 03 */	li r0, 3
/* 806F1360  48 00 00 08 */	b lbl_806F1368
lbl_806F1364:
/* 806F1364  38 00 00 04 */	li r0, 4
lbl_806F1368:
/* 806F1368  2C 00 00 01 */	cmpwi r0, 1
/* 806F136C  40 82 00 0C */	bne lbl_806F1378
/* 806F1370  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806F1374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806F1378:
/* 806F1378  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806F137C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1380  40 80 00 0C */	bge lbl_806F138C
/* 806F1384  7F A3 EB 78 */	mr r3, r29
/* 806F1388  48 00 00 08 */	b lbl_806F1390
lbl_806F138C:
/* 806F138C  38 60 00 00 */	li r3, 0
lbl_806F1390:
/* 806F1390  39 61 00 40 */	addi r11, r1, 0x40
/* 806F1394  4B C7 0E 95 */	bl _restgpr_29
/* 806F1398  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F139C  7C 08 03 A6 */	mtlr r0
/* 806F13A0  38 21 00 40 */	addi r1, r1, 0x40
/* 806F13A4  4E 80 00 20 */	blr 
