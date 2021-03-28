lbl_80D1A280:
/* 80D1A280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1A284  7C 08 02 A6 */	mflr r0
/* 80D1A288  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1A28C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D1A290  7C 7F 1B 78 */	mr r31, r3
/* 80D1A294  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80D1A298  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80D1A29C  41 82 00 34 */	beq lbl_80D1A2D0
/* 80D1A2A0  4B FF F5 95 */	bl CheckWater__12daObjTOMBO_cFv
/* 80D1A2A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1A2A8  41 82 00 10 */	beq lbl_80D1A2B8
/* 80D1A2AC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80D1A2B0  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80D1A2B4  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80D1A2B8:
/* 80D1A2B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D1A2BC  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80D1A2C0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D1A2C4  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80D1A2C8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D1A2CC  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80D1A2D0:
/* 80D1A2D0  38 60 00 00 */	li r3, 0
/* 80D1A2D4  7C 64 1B 78 */	mr r4, r3
/* 80D1A2D8  38 00 00 03 */	li r0, 3
/* 80D1A2DC  7C 09 03 A6 */	mtctr r0
lbl_80D1A2E0:
/* 80D1A2E0  38 C3 07 14 */	addi r6, r3, 0x714
/* 80D1A2E4  7C BF 32 AE */	lhax r5, r31, r6
/* 80D1A2E8  38 05 FF FF */	addi r0, r5, -1
/* 80D1A2EC  7C 1F 33 2E */	sthx r0, r31, r6
/* 80D1A2F0  7C 1F 32 AE */	lhax r0, r31, r6
/* 80D1A2F4  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A2F8  41 81 00 08 */	bgt lbl_80D1A300
/* 80D1A2FC  7C 9F 33 2E */	sthx r4, r31, r6
lbl_80D1A300:
/* 80D1A300  38 63 00 02 */	addi r3, r3, 2
/* 80D1A304  42 00 FF DC */	bdnz lbl_80D1A2E0
/* 80D1A308  88 1F 07 11 */	lbz r0, 0x711(r31)
/* 80D1A30C  2C 00 00 01 */	cmpwi r0, 1
/* 80D1A310  41 82 00 2C */	beq lbl_80D1A33C
/* 80D1A314  40 80 00 10 */	bge lbl_80D1A324
/* 80D1A318  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A31C  40 80 00 14 */	bge lbl_80D1A330
/* 80D1A320  48 00 00 B0 */	b lbl_80D1A3D0
lbl_80D1A324:
/* 80D1A324  2C 00 00 03 */	cmpwi r0, 3
/* 80D1A328  40 80 00 A8 */	bge lbl_80D1A3D0
/* 80D1A32C  48 00 00 9C */	b lbl_80D1A3C8
lbl_80D1A330:
/* 80D1A330  7F E3 FB 78 */	mr r3, r31
/* 80D1A334  4B FF F3 25 */	bl WaitAction__12daObjTOMBO_cFv
/* 80D1A338  48 00 00 98 */	b lbl_80D1A3D0
lbl_80D1A33C:
/* 80D1A33C  7F E3 FB 78 */	mr r3, r31
/* 80D1A340  4B FF FD F9 */	bl MoveAction__12daObjTOMBO_cFv
/* 80D1A344  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80D1A348  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D1A34C  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80D1A350  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D1A354  EC 41 00 2A */	fadds f2, f1, f0
/* 80D1A358  3C 60 80 D2 */	lis r3, lit_3942@ha
/* 80D1A35C  C0 03 B7 30 */	lfs f0, lit_3942@l(r3)
/* 80D1A360  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D1A364  40 81 00 0C */	ble lbl_80D1A370
/* 80D1A368  FC 00 10 34 */	frsqrte f0, f2
/* 80D1A36C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D1A370:
/* 80D1A370  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 80D1A374  4B 54 D3 00 */	b cM_atan2s__Fff
/* 80D1A378  7C 60 07 34 */	extsh r0, r3
/* 80D1A37C  3C 60 80 D2 */	lis r3, lit_4212@ha
/* 80D1A380  C8 23 B7 98 */	lfd f1, lit_4212@l(r3)
/* 80D1A384  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D1A388  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1A38C  3C 00 43 30 */	lis r0, 0x4330
/* 80D1A390  90 01 00 08 */	stw r0, 8(r1)
/* 80D1A394  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D1A398  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D1A39C  3C 60 80 D2 */	lis r3, lit_4210@ha
/* 80D1A3A0  C0 03 B7 94 */	lfs f0, lit_4210@l(r3)
/* 80D1A3A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D1A3A8  FC 00 00 1E */	fctiwz f0, f0
/* 80D1A3AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D1A3B0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D1A3B4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D1A3B8  38 A0 00 02 */	li r5, 2
/* 80D1A3BC  38 C0 06 00 */	li r6, 0x600
/* 80D1A3C0  4B 55 62 48 */	b cLib_addCalcAngleS2__FPssss
/* 80D1A3C4  48 00 00 0C */	b lbl_80D1A3D0
lbl_80D1A3C8:
/* 80D1A3C8  7F E3 FB 78 */	mr r3, r31
/* 80D1A3CC  4B FF FA 7D */	bl LinkAction__12daObjTOMBO_cFv
lbl_80D1A3D0:
/* 80D1A3D0  7F E3 FB 78 */	mr r3, r31
/* 80D1A3D4  4B 44 3C A4 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80D1A3D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D1A3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1A3E0  7C 08 03 A6 */	mtlr r0
/* 80D1A3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1A3E8  4E 80 00 20 */	blr 
