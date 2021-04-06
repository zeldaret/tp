lbl_800DD1D4:
/* 800DD1D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DD1D8  7C 08 02 A6 */	mflr r0
/* 800DD1DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DD1E0  39 61 00 30 */	addi r11, r1, 0x30
/* 800DD1E4  48 28 4F F5 */	bl _savegpr_28
/* 800DD1E8  7C 7D 1B 78 */	mr r29, r3
/* 800DD1EC  7C 9C 23 78 */	mr r28, r4
/* 800DD1F0  38 80 00 16 */	li r4, 0x16
/* 800DD1F4  4B FD 01 4D */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800DD1F8  7F A3 EB 78 */	mr r3, r29
/* 800DD1FC  7F 84 E3 78 */	mr r4, r28
/* 800DD200  4B FF A2 F5 */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800DD204  7C 7F 1B 78 */	mr r31, r3
/* 800DD208  48 18 9F 21 */	bl atan2sX_Z__4cXyzCFv
/* 800DD20C  3C 63 00 01 */	addis r3, r3, 1
/* 800DD210  38 63 80 00 */	addi r3, r3, -32768
/* 800DD214  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800DD218  7C 00 18 50 */	subf r0, r0, r3
/* 800DD21C  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 800DD220  A8 7D 05 9E */	lha r3, 0x59e(r29)
/* 800DD224  48 28 7E AD */	bl abs
/* 800DD228  2C 03 70 00 */	cmpwi r3, 0x7000
/* 800DD22C  40 81 00 10 */	ble lbl_800DD23C
/* 800DD230  38 00 00 00 */	li r0, 0
/* 800DD234  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 800DD238  48 00 00 44 */	b lbl_800DD27C
lbl_800DD23C:
/* 800DD23C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha /* 0x8038DF9C@ha */
/* 800DD240  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l /* 0x8038DF9C@l */
/* 800DD244  A8 A3 00 56 */	lha r5, 0x56(r3)
/* 800DD248  7C 05 00 D0 */	neg r0, r5
/* 800DD24C  7C 00 07 34 */	extsh r0, r0
/* 800DD250  A8 9D 05 9E */	lha r4, 0x59e(r29)
/* 800DD254  7C 04 00 00 */	cmpw r4, r0
/* 800DD258  40 80 00 08 */	bge lbl_800DD260
/* 800DD25C  48 00 00 1C */	b lbl_800DD278
lbl_800DD260:
/* 800DD260  7C 83 07 34 */	extsh r3, r4
/* 800DD264  7C A0 07 34 */	extsh r0, r5
/* 800DD268  7C 03 00 00 */	cmpw r3, r0
/* 800DD26C  40 81 00 08 */	ble lbl_800DD274
/* 800DD270  7C A4 2B 78 */	mr r4, r5
lbl_800DD274:
/* 800DD274  7C 80 23 78 */	mr r0, r4
lbl_800DD278:
/* 800DD278  B0 1D 05 9E */	sth r0, 0x59e(r29)
lbl_800DD27C:
/* 800DD27C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha /* 0x8038DF9C@ha */
/* 800DD280  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l /* 0x8038DF9C@l */
/* 800DD284  AB C3 00 58 */	lha r30, 0x58(r3)
/* 800DD288  7C 1E 00 D0 */	neg r0, r30
/* 800DD28C  7C 1C 07 34 */	extsh r28, r0
/* 800DD290  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800DD294  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800DD298  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DD29C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DD2A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800DD2A4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800DD2A8  38 61 00 0C */	addi r3, r1, 0xc
/* 800DD2AC  48 26 9E 8D */	bl PSVECSquareMag
/* 800DD2B0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DD2B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DD2B8  40 81 00 58 */	ble lbl_800DD310
/* 800DD2BC  FC 00 08 34 */	frsqrte f0, f1
/* 800DD2C0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800DD2C4  FC 44 00 32 */	fmul f2, f4, f0
/* 800DD2C8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800DD2CC  FC 00 00 32 */	fmul f0, f0, f0
/* 800DD2D0  FC 01 00 32 */	fmul f0, f1, f0
/* 800DD2D4  FC 03 00 28 */	fsub f0, f3, f0
/* 800DD2D8  FC 02 00 32 */	fmul f0, f2, f0
/* 800DD2DC  FC 44 00 32 */	fmul f2, f4, f0
/* 800DD2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 800DD2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 800DD2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 800DD2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 800DD2F0  FC 44 00 32 */	fmul f2, f4, f0
/* 800DD2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 800DD2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 800DD2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 800DD300  FC 02 00 32 */	fmul f0, f2, f0
/* 800DD304  FC 41 00 32 */	fmul f2, f1, f0
/* 800DD308  FC 40 10 18 */	frsp f2, f2
/* 800DD30C  48 00 00 90 */	b lbl_800DD39C
lbl_800DD310:
/* 800DD310  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800DD314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DD318  40 80 00 10 */	bge lbl_800DD328
/* 800DD31C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DD320  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DD324  48 00 00 78 */	b lbl_800DD39C
lbl_800DD328:
/* 800DD328  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DD32C  80 81 00 08 */	lwz r4, 8(r1)
/* 800DD330  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800DD334  3C 00 7F 80 */	lis r0, 0x7f80
/* 800DD338  7C 03 00 00 */	cmpw r3, r0
/* 800DD33C  41 82 00 14 */	beq lbl_800DD350
/* 800DD340  40 80 00 40 */	bge lbl_800DD380
/* 800DD344  2C 03 00 00 */	cmpwi r3, 0
/* 800DD348  41 82 00 20 */	beq lbl_800DD368
/* 800DD34C  48 00 00 34 */	b lbl_800DD380
lbl_800DD350:
/* 800DD350  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DD354  41 82 00 0C */	beq lbl_800DD360
/* 800DD358  38 00 00 01 */	li r0, 1
/* 800DD35C  48 00 00 28 */	b lbl_800DD384
lbl_800DD360:
/* 800DD360  38 00 00 02 */	li r0, 2
/* 800DD364  48 00 00 20 */	b lbl_800DD384
lbl_800DD368:
/* 800DD368  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DD36C  41 82 00 0C */	beq lbl_800DD378
/* 800DD370  38 00 00 05 */	li r0, 5
/* 800DD374  48 00 00 10 */	b lbl_800DD384
lbl_800DD378:
/* 800DD378  38 00 00 03 */	li r0, 3
/* 800DD37C  48 00 00 08 */	b lbl_800DD384
lbl_800DD380:
/* 800DD380  38 00 00 04 */	li r0, 4
lbl_800DD384:
/* 800DD384  2C 00 00 01 */	cmpwi r0, 1
/* 800DD388  40 82 00 10 */	bne lbl_800DD398
/* 800DD38C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DD390  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DD394  48 00 00 08 */	b lbl_800DD39C
lbl_800DD398:
/* 800DD398  FC 40 08 90 */	fmr f2, f1
lbl_800DD39C:
/* 800DD39C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800DD3A0  48 18 A2 D5 */	bl cM_atan2s__Fff
/* 800DD3A4  7C 64 07 34 */	extsh r4, r3
/* 800DD3A8  7C 04 E0 00 */	cmpw r4, r28
/* 800DD3AC  40 80 00 08 */	bge lbl_800DD3B4
/* 800DD3B0  48 00 00 18 */	b lbl_800DD3C8
lbl_800DD3B4:
/* 800DD3B4  7F C0 07 34 */	extsh r0, r30
/* 800DD3B8  7C 04 00 00 */	cmpw r4, r0
/* 800DD3BC  40 81 00 08 */	ble lbl_800DD3C4
/* 800DD3C0  7F C3 F3 78 */	mr r3, r30
lbl_800DD3C4:
/* 800DD3C4  7C 7C 1B 78 */	mr r28, r3
lbl_800DD3C8:
/* 800DD3C8  B3 9D 05 9C */	sth r28, 0x59c(r29)
/* 800DD3CC  39 61 00 30 */	addi r11, r1, 0x30
/* 800DD3D0  48 28 4E 55 */	bl _restgpr_28
/* 800DD3D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DD3D8  7C 08 03 A6 */	mtlr r0
/* 800DD3DC  38 21 00 30 */	addi r1, r1, 0x30
/* 800DD3E0  4E 80 00 20 */	blr 
