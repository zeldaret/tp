lbl_80B04FEC:
/* 80B04FEC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80B04FF0  7C 08 02 A6 */	mflr r0
/* 80B04FF4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B04FF8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B04FFC  4B 85 D1 DC */	b _savegpr_28
/* 80B05000  7C 7F 1B 78 */	mr r31, r3
/* 80B05004  3C 80 80 B1 */	lis r4, lit_3999@ha
/* 80B05008  3B A4 C1 C4 */	addi r29, r4, lit_3999@l
/* 80B0500C  80 83 06 34 */	lwz r4, 0x634(r3)
/* 80B05010  28 04 00 00 */	cmplwi r4, 0
/* 80B05014  40 82 00 18 */	bne lbl_80B0502C
/* 80B05018  38 80 00 04 */	li r4, 4
/* 80B0501C  4B FF C8 5D */	bl setActionMode__10daNPC_TK_cFi
/* 80B05020  38 00 00 02 */	li r0, 2
/* 80B05024  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B05028  48 00 0B 90 */	b lbl_80B05BB8
lbl_80B0502C:
/* 80B0502C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80B05030  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B05034  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80B05038  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B0503C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80B05040  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B05044  4B FF FF 21 */	bl getTakePosY__10daNPC_TK_cFv
/* 80B05048  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B0504C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B05050  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B05054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B05058  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B0505C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80B05060  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B05064  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B05068  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B0506C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B05070  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B05074  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B05078  7F E3 FB 78 */	mr r3, r31
/* 80B0507C  4B FF FF 2D */	bl getTakeOffPosY__10daNPC_TK_cFv
/* 80B05080  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B05084  EC 00 08 2A */	fadds f0, f0, f1
/* 80B05088  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B0508C  38 00 00 3C */	li r0, 0x3c
/* 80B05090  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 80B05094  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 80B05098  2C 00 00 03 */	cmpwi r0, 3
/* 80B0509C  41 82 05 F8 */	beq lbl_80B05694
/* 80B050A0  40 80 00 1C */	bge lbl_80B050BC
/* 80B050A4  2C 00 00 01 */	cmpwi r0, 1
/* 80B050A8  41 82 01 30 */	beq lbl_80B051D8
/* 80B050AC  40 80 05 20 */	bge lbl_80B055CC
/* 80B050B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B050B4  40 80 00 1C */	bge lbl_80B050D0
/* 80B050B8  48 00 0B 00 */	b lbl_80B05BB8
lbl_80B050BC:
/* 80B050BC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B050C0  40 80 0A F8 */	bge lbl_80B05BB8
/* 80B050C4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B050C8  40 80 07 1C */	bge lbl_80B057E4
/* 80B050CC  48 00 0A EC */	b lbl_80B05BB8
lbl_80B050D0:
/* 80B050D0  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80B050D4  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 80B050D8  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80B050DC  38 00 00 01 */	li r0, 1
/* 80B050E0  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B050E4  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B050E8  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B050EC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80B050F0  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80B050F4  D0 3F 06 E0 */	stfs f1, 0x6e0(r31)
/* 80B050F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B050FC  D0 1F 06 3C */	stfs f0, 0x63c(r31)
/* 80B05100  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B05104  D0 1F 06 40 */	stfs f0, 0x640(r31)
/* 80B05108  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B0510C  D0 1F 06 44 */	stfs f0, 0x644(r31)
/* 80B05110  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B05114  D0 1F 06 48 */	stfs f0, 0x648(r31)
/* 80B05118  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B0511C  D0 1F 06 4C */	stfs f0, 0x64c(r31)
/* 80B05120  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B05124  D0 1F 06 50 */	stfs f0, 0x650(r31)
/* 80B05128  38 61 00 6C */	addi r3, r1, 0x6c
/* 80B0512C  38 81 00 84 */	addi r4, r1, 0x84
/* 80B05130  38 A1 00 90 */	addi r5, r1, 0x90
/* 80B05134  4B 76 1A 00 */	b __mi__4cXyzCFRC3Vec
/* 80B05138  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B0513C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B05140  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B05144  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B05148  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B0514C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B05150  38 61 00 60 */	addi r3, r1, 0x60
/* 80B05154  38 81 00 78 */	addi r4, r1, 0x78
/* 80B05158  4B 76 1D 9C */	b normalize__4cXyzFv
/* 80B0515C  38 61 00 54 */	addi r3, r1, 0x54
/* 80B05160  38 81 00 78 */	addi r4, r1, 0x78
/* 80B05164  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80B05168  4B 76 1A 1C */	b __ml__4cXyzCFf
/* 80B0516C  38 61 00 48 */	addi r3, r1, 0x48
/* 80B05170  38 81 00 90 */	addi r4, r1, 0x90
/* 80B05174  38 A1 00 54 */	addi r5, r1, 0x54
/* 80B05178  4B 76 19 6C */	b __pl__4cXyzCFRC3Vec
/* 80B0517C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B05180  D0 1F 06 54 */	stfs f0, 0x654(r31)
/* 80B05184  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B05188  D0 1F 06 58 */	stfs f0, 0x658(r31)
/* 80B0518C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B05190  D0 1F 06 5C */	stfs f0, 0x65c(r31)
/* 80B05194  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B05198  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 80B0519C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B051A0  D0 1F 06 64 */	stfs f0, 0x664(r31)
/* 80B051A4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B051A8  D0 1F 06 68 */	stfs f0, 0x668(r31)
/* 80B051AC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B051B0  D0 1F 06 6C */	stfs f0, 0x66c(r31)
/* 80B051B4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B051B8  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 80B051BC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B051C0  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 80B051C4  80 1F 09 F0 */	lwz r0, 0x9f0(r31)
/* 80B051C8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B051CC  90 1F 09 F0 */	stw r0, 0x9f0(r31)
/* 80B051D0  38 00 00 14 */	li r0, 0x14
/* 80B051D4  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_80B051D8:
/* 80B051D8  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 80B051DC  38 03 FF FF */	addi r0, r3, -1
/* 80B051E0  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B051E4  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80B051E8  54 00 50 2A */	slwi r0, r0, 0xa
/* 80B051EC  7C 1C 07 34 */	extsh r28, r0
/* 80B051F0  2C 1C 40 00 */	cmpwi r28, 0x4000
/* 80B051F4  41 80 00 08 */	blt lbl_80B051FC
/* 80B051F8  3B 80 40 00 */	li r28, 0x4000
lbl_80B051FC:
/* 80B051FC  7F 80 07 34 */	extsh r0, r28
/* 80B05200  2C 00 28 00 */	cmpwi r0, 0x2800
/* 80B05204  41 81 00 08 */	bgt lbl_80B0520C
/* 80B05208  3B 80 28 00 */	li r28, 0x2800
lbl_80B0520C:
/* 80B0520C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05210  38 81 00 90 */	addi r4, r1, 0x90
/* 80B05214  4B 76 B9 F0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B05218  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B0521C  7C 03 00 50 */	subf r0, r3, r0
/* 80B05220  7C 03 07 34 */	extsh r3, r0
/* 80B05224  4B 85 FE AC */	b abs
/* 80B05228  7F 80 07 34 */	extsh r0, r28
/* 80B0522C  7C 03 00 00 */	cmpw r3, r0
/* 80B05230  41 81 00 28 */	bgt lbl_80B05258
/* 80B05234  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05238  38 81 00 90 */	addi r4, r1, 0x90
/* 80B0523C  4B 76 BA 38 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B05240  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B05244  7C 00 1A 14 */	add r0, r0, r3
/* 80B05248  7C 03 07 34 */	extsh r3, r0
/* 80B0524C  4B 85 FE 84 */	b abs
/* 80B05250  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80B05254  40 81 00 1C */	ble lbl_80B05270
lbl_80B05258:
/* 80B05258  7F E3 FB 78 */	mr r3, r31
/* 80B0525C  38 80 00 04 */	li r4, 4
/* 80B05260  4B FF C6 19 */	bl setActionMode__10daNPC_TK_cFi
/* 80B05264  38 00 00 02 */	li r0, 2
/* 80B05268  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B0526C  48 00 09 4C */	b lbl_80B05BB8
lbl_80B05270:
/* 80B05270  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80B05274  7C 1C 07 34 */	extsh r28, r0
/* 80B05278  2C 1C 00 08 */	cmpwi r28, 8
/* 80B0527C  40 81 00 08 */	ble lbl_80B05284
/* 80B05280  3B 80 00 08 */	li r28, 8
lbl_80B05284:
/* 80B05284  7F 80 07 34 */	extsh r0, r28
/* 80B05288  2C 00 00 02 */	cmpwi r0, 2
/* 80B0528C  40 80 00 08 */	bge lbl_80B05294
/* 80B05290  3B 80 00 02 */	li r28, 2
lbl_80B05294:
/* 80B05294  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05298  38 81 00 90 */	addi r4, r1, 0x90
/* 80B0529C  4B 76 B9 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B052A0  7C 64 1B 78 */	mr r4, r3
/* 80B052A4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B052A8  7F 85 E3 78 */	mr r5, r28
/* 80B052AC  38 C0 04 00 */	li r6, 0x400
/* 80B052B0  38 E0 00 10 */	li r7, 0x10
/* 80B052B4  4B 76 B2 8C */	b cLib_addCalcAngleS__FPsssss
/* 80B052B8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B052BC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B052C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B052C4  38 81 00 90 */	addi r4, r1, 0x90
/* 80B052C8  4B 76 B9 AC */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B052CC  7C 03 00 D0 */	neg r0, r3
/* 80B052D0  7C 04 07 34 */	extsh r4, r0
/* 80B052D4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B052D8  7F 85 E3 78 */	mr r5, r28
/* 80B052DC  38 C0 04 00 */	li r6, 0x400
/* 80B052E0  38 E0 00 10 */	li r7, 0x10
/* 80B052E4  4B 76 B2 5C */	b cLib_addCalcAngleS__FPsssss
/* 80B052E8  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B052EC  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80B052F0  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80B052F4  4B 76 B4 4C */	b cLib_chaseF__FPfff
/* 80B052F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B052FC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B05300  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B05304  7C 00 00 D0 */	neg r0, r0
/* 80B05308  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0530C  7C 64 02 14 */	add r3, r4, r0
/* 80B05310  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B05314  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B05318  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B0531C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B05320  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B05324  7C 00 00 D0 */	neg r0, r0
/* 80B05328  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0532C  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B05330  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B05334  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B05338  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B0533C  80 1F 07 DC */	lwz r0, 0x7dc(r31)
/* 80B05340  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B05344  41 82 00 34 */	beq lbl_80B05378
/* 80B05348  7F E3 FB 78 */	mr r3, r31
/* 80B0534C  38 80 00 00 */	li r4, 0
/* 80B05350  4B FF CA F9 */	bl setAwayAction__10daNPC_TK_cFi
/* 80B05354  A8 7F 07 AC */	lha r3, 0x7ac(r31)
/* 80B05358  3C 63 00 01 */	addis r3, r3, 1
/* 80B0535C  38 03 80 00 */	addi r0, r3, -32768
/* 80B05360  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B05364  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B05368  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B0536C  38 00 00 00 */	li r0, 0
/* 80B05370  98 1F 06 C3 */	stb r0, 0x6c3(r31)
/* 80B05374  48 00 08 44 */	b lbl_80B05BB8
lbl_80B05378:
/* 80B05378  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80B0537C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B05380  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B05384  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80B05388  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B0538C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80B05390  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B05394  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B05398  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B0539C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B053A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B053A4  38 61 00 30 */	addi r3, r1, 0x30
/* 80B053A8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B053AC  4B 84 1F F0 */	b PSVECSquareDistance
/* 80B053B0  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80B053B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B053B8  40 81 00 58 */	ble lbl_80B05410
/* 80B053BC  FC 00 08 34 */	frsqrte f0, f1
/* 80B053C0  C8 9D 00 48 */	lfd f4, 0x48(r29)
/* 80B053C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B053C8  C8 7D 00 50 */	lfd f3, 0x50(r29)
/* 80B053CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B053D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B053D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B053D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B053DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B053E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B053E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B053E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B053EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B053F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B053F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B053F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B053FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B05400  FC 02 00 32 */	fmul f0, f2, f0
/* 80B05404  FC 21 00 32 */	fmul f1, f1, f0
/* 80B05408  FC 20 08 18 */	frsp f1, f1
/* 80B0540C  48 00 00 88 */	b lbl_80B05494
lbl_80B05410:
/* 80B05410  C8 1D 00 58 */	lfd f0, 0x58(r29)
/* 80B05414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B05418  40 80 00 10 */	bge lbl_80B05428
/* 80B0541C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B05420  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B05424  48 00 00 70 */	b lbl_80B05494
lbl_80B05428:
/* 80B05428  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B0542C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B05430  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B05434  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B05438  7C 03 00 00 */	cmpw r3, r0
/* 80B0543C  41 82 00 14 */	beq lbl_80B05450
/* 80B05440  40 80 00 40 */	bge lbl_80B05480
/* 80B05444  2C 03 00 00 */	cmpwi r3, 0
/* 80B05448  41 82 00 20 */	beq lbl_80B05468
/* 80B0544C  48 00 00 34 */	b lbl_80B05480
lbl_80B05450:
/* 80B05450  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B05454  41 82 00 0C */	beq lbl_80B05460
/* 80B05458  38 00 00 01 */	li r0, 1
/* 80B0545C  48 00 00 28 */	b lbl_80B05484
lbl_80B05460:
/* 80B05460  38 00 00 02 */	li r0, 2
/* 80B05464  48 00 00 20 */	b lbl_80B05484
lbl_80B05468:
/* 80B05468  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0546C  41 82 00 0C */	beq lbl_80B05478
/* 80B05470  38 00 00 05 */	li r0, 5
/* 80B05474  48 00 00 10 */	b lbl_80B05484
lbl_80B05478:
/* 80B05478  38 00 00 03 */	li r0, 3
/* 80B0547C  48 00 00 08 */	b lbl_80B05484
lbl_80B05480:
/* 80B05480  38 00 00 04 */	li r0, 4
lbl_80B05484:
/* 80B05484  2C 00 00 01 */	cmpwi r0, 1
/* 80B05488  40 82 00 0C */	bne lbl_80B05494
/* 80B0548C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B05490  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B05494:
/* 80B05494  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80B05498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0549C  40 80 07 1C */	bge lbl_80B05BB8
/* 80B054A0  38 00 00 0A */	li r0, 0xa
/* 80B054A4  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B054A8  38 00 00 02 */	li r0, 2
/* 80B054AC  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B054B0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B054B4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B054B8  38 61 00 84 */	addi r3, r1, 0x84
/* 80B054BC  38 81 00 90 */	addi r4, r1, 0x90
/* 80B054C0  4B 76 B7 44 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B054C4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B054C8  7C 00 18 50 */	subf r0, r0, r3
/* 80B054CC  7C 00 07 35 */	extsh. r0, r0
/* 80B054D0  40 80 00 10 */	bge lbl_80B054E0
/* 80B054D4  38 00 03 00 */	li r0, 0x300
/* 80B054D8  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 80B054DC  48 00 00 0C */	b lbl_80B054E8
lbl_80B054E0:
/* 80B054E0  38 00 FD 00 */	li r0, -768
/* 80B054E4  B0 1F 06 9E */	sth r0, 0x69e(r31)
lbl_80B054E8:
/* 80B054E8  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B054EC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B054F0  64 00 80 00 */	oris r0, r0, 0x8000
/* 80B054F4  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B054F8  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B054FC  A8 03 00 08 */	lha r0, 8(r3)
/* 80B05500  2C 00 01 08 */	cmpwi r0, 0x108
/* 80B05504  40 82 00 0C */	bne lbl_80B05510
/* 80B05508  38 80 00 00 */	li r4, 0
/* 80B0550C  4B 51 76 3C */	b fopAcM_setCarryNow__FP10fopAc_ac_ci
lbl_80B05510:
/* 80B05510  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B05514  A8 03 00 08 */	lha r0, 8(r3)
/* 80B05518  2C 00 02 FB */	cmpwi r0, 0x2fb
/* 80B0551C  40 82 00 7C */	bne lbl_80B05598
/* 80B05520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B05524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B05528  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80B0552C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80B05530  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80B05534  A0 84 04 82 */	lhz r4, 0x482(r4)
/* 80B05538  4B 52 F4 84 */	b isEventBit__11dSv_event_cCFUs
/* 80B0553C  2C 03 00 00 */	cmpwi r3, 0
/* 80B05540  40 82 00 58 */	bne lbl_80B05598
/* 80B05544  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B05548  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B0554C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B05550  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B05554  38 80 00 01 */	li r4, 1
/* 80B05558  4B 7A AA 34 */	b changeBgmStatus__8Z2SeqMgrFl
/* 80B0555C  38 00 00 CF */	li r0, 0xcf
/* 80B05560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B05564  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B05568  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B0556C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B05570  38 81 00 14 */	addi r4, r1, 0x14
/* 80B05574  38 A0 00 00 */	li r5, 0
/* 80B05578  38 C0 00 00 */	li r6, 0
/* 80B0557C  38 E0 00 00 */	li r7, 0
/* 80B05580  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80B05584  FC 40 08 90 */	fmr f2, f1
/* 80B05588  C0 7D 00 34 */	lfs f3, 0x34(r29)
/* 80B0558C  FC 80 18 90 */	fmr f4, f3
/* 80B05590  39 00 00 00 */	li r8, 0
/* 80B05594  4B 7A 63 F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B05598:
/* 80B05598  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050027@ha */
/* 80B0559C  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00050027@l */
/* 80B055A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B055A4  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B055A8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B055AC  38 A0 FF FF */	li r5, -1
/* 80B055B0  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B055B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B055B8  7D 89 03 A6 */	mtctr r12
/* 80B055BC  4E 80 04 21 */	bctrl 
/* 80B055C0  38 00 00 00 */	li r0, 0
/* 80B055C4  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
/* 80B055C8  48 00 05 F0 */	b lbl_80B05BB8
lbl_80B055CC:
/* 80B055CC  38 00 00 01 */	li r0, 1
/* 80B055D0  98 1F 06 C6 */	stb r0, 0x6c6(r31)
/* 80B055D4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80B055D8  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 80B055DC  7C 03 02 14 */	add r0, r3, r0
/* 80B055E0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B055E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B055E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B055EC  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 80B055F0  38 03 FD 00 */	addi r0, r3, -768
/* 80B055F4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B055F8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B055FC  2C 00 D0 00 */	cmpwi r0, -12288
/* 80B05600  40 80 00 3C */	bge lbl_80B0563C
/* 80B05604  38 00 D0 00 */	li r0, -12288
/* 80B05608  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B0560C  38 00 00 03 */	li r0, 3
/* 80B05610  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B05614  38 00 00 00 */	li r0, 0
/* 80B05618  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 80B0561C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05620  38 9F 06 54 */	addi r4, r31, 0x654
/* 80B05624  4B 76 B5 E0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B05628  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B0562C  7C 00 18 50 */	subf r0, r0, r3
/* 80B05630  7C 03 07 34 */	extsh r3, r0
/* 80B05634  4B 85 FA 9C */	b abs
/* 80B05638  B0 7F 06 9E */	sth r3, 0x69e(r31)
lbl_80B0563C:
/* 80B0563C  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B05640  C0 3D 01 24 */	lfs f1, 0x124(r29)
/* 80B05644  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80B05648  4B 76 B0 F8 */	b cLib_chaseF__FPfff
/* 80B0564C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B05650  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B05654  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B05658  7C 00 00 D0 */	neg r0, r0
/* 80B0565C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B05660  7C 64 02 14 */	add r3, r4, r0
/* 80B05664  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B05668  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B0566C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B05670  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B05674  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B05678  7C 00 00 D0 */	neg r0, r0
/* 80B0567C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B05680  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B05684  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B05688  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B0568C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B05690  48 00 05 28 */	b lbl_80B05BB8
lbl_80B05694:
/* 80B05694  38 00 00 01 */	li r0, 1
/* 80B05698  98 1F 06 C6 */	stb r0, 0x6c6(r31)
/* 80B0569C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B056A0  38 9F 06 54 */	addi r4, r31, 0x654
/* 80B056A4  4B 76 B5 60 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B056A8  7C 64 1B 78 */	mr r4, r3
/* 80B056AC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B056B0  38 A0 03 00 */	li r5, 0x300
/* 80B056B4  4B 76 B4 DC */	b cLib_chaseAngleS__FPsss
/* 80B056B8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B056BC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B056C0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B056C4  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80B056C8  EC 02 08 28 */	fsubs f0, f2, f1
/* 80B056CC  FC 00 02 10 */	fabs f0, f0
/* 80B056D0  FC 60 00 18 */	frsp f3, f0
/* 80B056D4  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80B056D8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B056DC  40 81 00 34 */	ble lbl_80B05710
/* 80B056E0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80B056E4  40 81 00 18 */	ble lbl_80B056FC
/* 80B056E8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B056EC  38 80 20 00 */	li r4, 0x2000
/* 80B056F0  38 A0 04 00 */	li r5, 0x400
/* 80B056F4  4B 76 B4 9C */	b cLib_chaseAngleS__FPsss
/* 80B056F8  48 00 00 48 */	b lbl_80B05740
lbl_80B056FC:
/* 80B056FC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B05700  38 80 E0 00 */	li r4, -8192
/* 80B05704  38 A0 04 00 */	li r5, 0x400
/* 80B05708  4B 76 B4 88 */	b cLib_chaseAngleS__FPsss
/* 80B0570C  48 00 00 34 */	b lbl_80B05740
lbl_80B05710:
/* 80B05710  38 7F 06 9C */	addi r3, r31, 0x69c
/* 80B05714  38 80 02 00 */	li r4, 0x200
/* 80B05718  38 A0 00 10 */	li r5, 0x10
/* 80B0571C  4B 76 B4 74 */	b cLib_chaseAngleS__FPsss
/* 80B05720  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05724  38 81 00 84 */	addi r4, r1, 0x84
/* 80B05728  4B 76 B5 4C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B0572C  7C 03 00 D0 */	neg r0, r3
/* 80B05730  7C 04 07 34 */	extsh r4, r0
/* 80B05734  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B05738  A8 BF 06 9C */	lha r5, 0x69c(r31)
/* 80B0573C  4B 76 B4 54 */	b cLib_chaseAngleS__FPsss
lbl_80B05740:
/* 80B05740  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B05744  C0 3D 01 24 */	lfs f1, 0x124(r29)
/* 80B05748  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80B0574C  4B 76 AF F4 */	b cLib_chaseF__FPfff
/* 80B05750  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B05754  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B05758  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B0575C  7C 00 00 D0 */	neg r0, r0
/* 80B05760  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B05764  7C 64 02 14 */	add r3, r4, r0
/* 80B05768  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B0576C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B05770  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B05774  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B05778  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B0577C  7C 00 00 D0 */	neg r0, r0
/* 80B05780  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B05784  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B05788  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B0578C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B05790  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B05794  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05798  38 9F 06 54 */	addi r4, r31, 0x654
/* 80B0579C  4B 76 B4 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B057A0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B057A4  7C 00 18 50 */	subf r0, r0, r3
/* 80B057A8  7C 03 07 34 */	extsh r3, r0
/* 80B057AC  4B 85 F9 24 */	b abs
/* 80B057B0  7C 63 07 34 */	extsh r3, r3
/* 80B057B4  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 80B057B8  7C 03 00 00 */	cmpw r3, r0
/* 80B057BC  41 80 00 10 */	blt lbl_80B057CC
/* 80B057C0  38 00 00 0A */	li r0, 0xa
/* 80B057C4  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B057C8  48 00 03 F0 */	b lbl_80B05BB8
lbl_80B057CC:
/* 80B057CC  B0 7F 06 9E */	sth r3, 0x69e(r31)
/* 80B057D0  2C 03 28 00 */	cmpwi r3, 0x2800
/* 80B057D4  40 80 03 E4 */	bge lbl_80B05BB8
/* 80B057D8  38 00 00 0A */	li r0, 0xa
/* 80B057DC  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B057E0  48 00 03 D8 */	b lbl_80B05BB8
lbl_80B057E4:
/* 80B057E4  38 00 00 01 */	li r0, 1
/* 80B057E8  98 1F 06 C6 */	stb r0, 0x6c6(r31)
/* 80B057EC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B057F0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B057F4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B057F8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B057FC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B05800  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B05804  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05808  38 81 00 90 */	addi r4, r1, 0x90
/* 80B0580C  4B 76 B3 F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B05810  7C 64 1B 78 */	mr r4, r3
/* 80B05814  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B05818  38 A0 00 08 */	li r5, 8
/* 80B0581C  38 C0 08 00 */	li r6, 0x800
/* 80B05820  38 E0 00 40 */	li r7, 0x40
/* 80B05824  4B 76 AD 1C */	b cLib_addCalcAngleS__FPsssss
/* 80B05828  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B0582C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B05830  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B05834  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80B05838  EC 02 08 28 */	fsubs f0, f2, f1
/* 80B0583C  FC 00 02 10 */	fabs f0, f0
/* 80B05840  FC 60 00 18 */	frsp f3, f0
/* 80B05844  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80B05848  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B0584C  40 81 00 34 */	ble lbl_80B05880
/* 80B05850  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80B05854  40 81 00 18 */	ble lbl_80B0586C
/* 80B05858  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B0585C  38 80 20 00 */	li r4, 0x2000
/* 80B05860  38 A0 04 00 */	li r5, 0x400
/* 80B05864  4B 76 B3 2C */	b cLib_chaseAngleS__FPsss
/* 80B05868  48 00 00 48 */	b lbl_80B058B0
lbl_80B0586C:
/* 80B0586C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B05870  38 80 E0 00 */	li r4, -8192
/* 80B05874  38 A0 04 00 */	li r5, 0x400
/* 80B05878  4B 76 B3 18 */	b cLib_chaseAngleS__FPsss
/* 80B0587C  48 00 00 34 */	b lbl_80B058B0
lbl_80B05880:
/* 80B05880  38 7F 06 9C */	addi r3, r31, 0x69c
/* 80B05884  38 80 02 00 */	li r4, 0x200
/* 80B05888  38 A0 00 10 */	li r5, 0x10
/* 80B0588C  4B 76 B3 04 */	b cLib_chaseAngleS__FPsss
/* 80B05890  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B05894  38 81 00 90 */	addi r4, r1, 0x90
/* 80B05898  4B 76 B3 DC */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B0589C  7C 03 00 D0 */	neg r0, r3
/* 80B058A0  7C 04 07 34 */	extsh r4, r0
/* 80B058A4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B058A8  A8 BF 06 9C */	lha r5, 0x69c(r31)
/* 80B058AC  4B 76 B2 E4 */	b cLib_chaseAngleS__FPsss
lbl_80B058B0:
/* 80B058B0  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B058B4  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80B058B8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80B058BC  4B 76 AE 84 */	b cLib_chaseF__FPfff
/* 80B058C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B058C4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B058C8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B058CC  7C 00 00 D0 */	neg r0, r0
/* 80B058D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B058D4  7C 64 02 14 */	add r3, r4, r0
/* 80B058D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B058DC  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B058E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B058E4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B058E8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B058EC  7C 00 00 D0 */	neg r0, r0
/* 80B058F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B058F4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B058F8  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80B058FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B05900  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B05904  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 80B05908  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B0590C  40 82 01 E8 */	bne lbl_80B05AF4
/* 80B05910  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80B05914  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B05918  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B0591C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80B05920  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B05924  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80B05928  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B0592C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B05930  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B05934  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B05938  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B0593C  38 61 00 18 */	addi r3, r1, 0x18
/* 80B05940  38 81 00 24 */	addi r4, r1, 0x24
/* 80B05944  4B 84 1A 58 */	b PSVECSquareDistance
/* 80B05948  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80B0594C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B05950  40 81 00 58 */	ble lbl_80B059A8
/* 80B05954  FC 00 08 34 */	frsqrte f0, f1
/* 80B05958  C8 9D 00 48 */	lfd f4, 0x48(r29)
/* 80B0595C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B05960  C8 7D 00 50 */	lfd f3, 0x50(r29)
/* 80B05964  FC 00 00 32 */	fmul f0, f0, f0
/* 80B05968  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0596C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B05970  FC 02 00 32 */	fmul f0, f2, f0
/* 80B05974  FC 44 00 32 */	fmul f2, f4, f0
/* 80B05978  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0597C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B05980  FC 03 00 28 */	fsub f0, f3, f0
/* 80B05984  FC 02 00 32 */	fmul f0, f2, f0
/* 80B05988  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0598C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B05990  FC 01 00 32 */	fmul f0, f1, f0
/* 80B05994  FC 03 00 28 */	fsub f0, f3, f0
/* 80B05998  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0599C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B059A0  FC 20 08 18 */	frsp f1, f1
/* 80B059A4  48 00 00 88 */	b lbl_80B05A2C
lbl_80B059A8:
/* 80B059A8  C8 1D 00 58 */	lfd f0, 0x58(r29)
/* 80B059AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B059B0  40 80 00 10 */	bge lbl_80B059C0
/* 80B059B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B059B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B059BC  48 00 00 70 */	b lbl_80B05A2C
lbl_80B059C0:
/* 80B059C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B059C4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B059C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B059CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B059D0  7C 03 00 00 */	cmpw r3, r0
/* 80B059D4  41 82 00 14 */	beq lbl_80B059E8
/* 80B059D8  40 80 00 40 */	bge lbl_80B05A18
/* 80B059DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B059E0  41 82 00 20 */	beq lbl_80B05A00
/* 80B059E4  48 00 00 34 */	b lbl_80B05A18
lbl_80B059E8:
/* 80B059E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B059EC  41 82 00 0C */	beq lbl_80B059F8
/* 80B059F0  38 00 00 01 */	li r0, 1
/* 80B059F4  48 00 00 28 */	b lbl_80B05A1C
lbl_80B059F8:
/* 80B059F8  38 00 00 02 */	li r0, 2
/* 80B059FC  48 00 00 20 */	b lbl_80B05A1C
lbl_80B05A00:
/* 80B05A00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B05A04  41 82 00 0C */	beq lbl_80B05A10
/* 80B05A08  38 00 00 05 */	li r0, 5
/* 80B05A0C  48 00 00 10 */	b lbl_80B05A1C
lbl_80B05A10:
/* 80B05A10  38 00 00 03 */	li r0, 3
/* 80B05A14  48 00 00 08 */	b lbl_80B05A1C
lbl_80B05A18:
/* 80B05A18  38 00 00 04 */	li r0, 4
lbl_80B05A1C:
/* 80B05A1C  2C 00 00 01 */	cmpwi r0, 1
/* 80B05A20  40 82 00 0C */	bne lbl_80B05A2C
/* 80B05A24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B05A28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B05A2C:
/* 80B05A2C  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80B05A30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B05A34  40 80 00 FC */	bge lbl_80B05B30
/* 80B05A38  38 00 00 00 */	li r0, 0
/* 80B05A3C  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 80B05A40  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B05A44  A8 03 00 08 */	lha r0, 8(r3)
/* 80B05A48  2C 00 02 FB */	cmpwi r0, 0x2fb
/* 80B05A4C  40 82 00 58 */	bne lbl_80B05AA4
/* 80B05A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B05A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B05A58  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80B05A5C  7F 83 E3 78 */	mr r3, r28
/* 80B05A60  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80B05A64  3B A4 72 88 */	addi r29, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80B05A68  A0 9D 04 82 */	lhz r4, 0x482(r29)
/* 80B05A6C  4B 52 EF 50 */	b isEventBit__11dSv_event_cCFUs
/* 80B05A70  2C 03 00 00 */	cmpwi r3, 0
/* 80B05A74  40 82 00 30 */	bne lbl_80B05AA4
/* 80B05A78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B05A7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B05A80  80 63 00 00 */	lwz r3, 0(r3)
/* 80B05A84  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B05A88  38 80 00 00 */	li r4, 0
/* 80B05A8C  4B 7A A5 00 */	b changeBgmStatus__8Z2SeqMgrFl
/* 80B05A90  7F 83 E3 78 */	mr r3, r28
/* 80B05A94  A0 9D 04 82 */	lhz r4, 0x482(r29)
/* 80B05A98  4B 52 EE F4 */	b onEventBit__11dSv_event_cFUs
/* 80B05A9C  38 00 00 46 */	li r0, 0x46
/* 80B05AA0  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_80B05AA4:
/* 80B05AA4  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80B05AA8  38 03 00 01 */	addi r0, r3, 1
/* 80B05AAC  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B05AB0  38 00 00 04 */	li r0, 4
/* 80B05AB4  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B05AB8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80B05ABC  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 80B05AC0  38 A0 00 01 */	li r5, 1
/* 80B05AC4  38 C0 00 00 */	li r6, 0
/* 80B05AC8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B05ACC  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 80B05AD0  7D 89 03 A6 */	mtctr r12
/* 80B05AD4  4E 80 04 21 */	bctrl 
/* 80B05AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80B05ADC  41 82 00 54 */	beq lbl_80B05B30
/* 80B05AE0  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80B05AE4  80 03 05 90 */	lwz r0, 0x590(r3)
/* 80B05AE8  60 00 00 08 */	ori r0, r0, 8
/* 80B05AEC  90 03 05 90 */	stw r0, 0x590(r3)
/* 80B05AF0  48 00 00 40 */	b lbl_80B05B30
lbl_80B05AF4:
/* 80B05AF4  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B05AF8  2C 00 00 00 */	cmpwi r0, 0
/* 80B05AFC  40 82 00 34 */	bne lbl_80B05B30
/* 80B05B00  7F E3 FB 78 */	mr r3, r31
/* 80B05B04  38 80 00 04 */	li r4, 4
/* 80B05B08  4B FF BD 71 */	bl setActionMode__10daNPC_TK_cFi
/* 80B05B0C  38 00 00 02 */	li r0, 2
/* 80B05B10  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80B05B14  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B05B18  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B05B1C  54 00 00 7E */	clrlwi r0, r0, 1
/* 80B05B20  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B05B24  38 00 00 00 */	li r0, 0
/* 80B05B28  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80B05B2C  48 00 00 8C */	b lbl_80B05BB8
lbl_80B05B30:
/* 80B05B30  80 1F 07 DC */	lwz r0, 0x7dc(r31)
/* 80B05B34  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B05B38  41 82 00 80 */	beq lbl_80B05BB8
/* 80B05B3C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80B05B40  A8 7F 07 AC */	lha r3, 0x7ac(r31)
/* 80B05B44  3C 63 00 01 */	addis r3, r3, 1
/* 80B05B48  38 03 80 00 */	addi r0, r3, -32768
/* 80B05B4C  7C 04 00 50 */	subf r0, r4, r0
/* 80B05B50  7C 03 07 34 */	extsh r3, r0
/* 80B05B54  4B 85 F5 7C */	b abs
/* 80B05B58  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B05B5C  40 80 00 5C */	bge lbl_80B05BB8
/* 80B05B60  7F E3 FB 78 */	mr r3, r31
/* 80B05B64  38 80 00 00 */	li r4, 0
/* 80B05B68  4B FF C2 E1 */	bl setAwayAction__10daNPC_TK_cFi
/* 80B05B6C  A8 7F 07 AC */	lha r3, 0x7ac(r31)
/* 80B05B70  3C 63 00 01 */	addis r3, r3, 1
/* 80B05B74  38 03 80 00 */	addi r0, r3, -32768
/* 80B05B78  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B05B7C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B05B80  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B05B84  38 00 00 00 */	li r0, 0
/* 80B05B88  98 1F 06 C3 */	stb r0, 0x6c3(r31)
/* 80B05B8C  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B05B90  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B05B94  54 00 00 7E */	clrlwi r0, r0, 1
/* 80B05B98  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B05B9C  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80B05BA0  A8 03 00 08 */	lha r0, 8(r3)
/* 80B05BA4  2C 00 01 08 */	cmpwi r0, 0x108
/* 80B05BA8  40 82 00 08 */	bne lbl_80B05BB0
/* 80B05BAC  4B 51 6F F4 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
lbl_80B05BB0:
/* 80B05BB0  38 00 00 00 */	li r0, 0
/* 80B05BB4  90 1F 06 34 */	stw r0, 0x634(r31)
lbl_80B05BB8:
/* 80B05BB8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B05BBC  4B 85 C6 68 */	b _restgpr_28
/* 80B05BC0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80B05BC4  7C 08 03 A6 */	mtlr r0
/* 80B05BC8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80B05BCC  4E 80 00 20 */	blr 
