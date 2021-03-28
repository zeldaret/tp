lbl_80A58274:
/* 80A58274  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A58278  7C 08 02 A6 */	mflr r0
/* 80A5827C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A58280  39 61 00 40 */	addi r11, r1, 0x40
/* 80A58284  4B 90 9F 54 */	b _savegpr_28
/* 80A58288  7C 7F 1B 78 */	mr r31, r3
/* 80A5828C  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A58290  3B A3 DE FC */	addi r29, r3, lit_4030@l
/* 80A58294  3B 80 00 00 */	li r28, 0
lbl_80A58298:
/* 80A58298  7F 83 E3 78 */	mr r3, r28
/* 80A5829C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A582A0  7C 04 07 74 */	extsb r4, r0
/* 80A582A4  4B 5F 95 48 */	b dPath_GetRoomPath__Fii
/* 80A582A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A582AC  41 82 01 34 */	beq lbl_80A583E0
/* 80A582B0  38 61 00 0C */	addi r3, r1, 0xc
/* 80A582B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A582B8  80 BE 00 08 */	lwz r5, 8(r30)
/* 80A582BC  38 A5 00 04 */	addi r5, r5, 4
/* 80A582C0  4B 80 E8 74 */	b __mi__4cXyzCFRC3Vec
/* 80A582C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A582C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A582CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A582D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A582D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A582D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A582DC  38 61 00 18 */	addi r3, r1, 0x18
/* 80A582E0  4B 8E EE 58 */	b PSVECSquareMag
/* 80A582E4  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A582E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A582EC  40 81 00 58 */	ble lbl_80A58344
/* 80A582F0  FC 00 08 34 */	frsqrte f0, f1
/* 80A582F4  C8 9D 00 50 */	lfd f4, 0x50(r29)
/* 80A582F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A582FC  C8 7D 00 58 */	lfd f3, 0x58(r29)
/* 80A58300  FC 00 00 32 */	fmul f0, f0, f0
/* 80A58304  FC 01 00 32 */	fmul f0, f1, f0
/* 80A58308  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5830C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A58310  FC 44 00 32 */	fmul f2, f4, f0
/* 80A58314  FC 00 00 32 */	fmul f0, f0, f0
/* 80A58318  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5831C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A58320  FC 02 00 32 */	fmul f0, f2, f0
/* 80A58324  FC 44 00 32 */	fmul f2, f4, f0
/* 80A58328  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5832C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A58330  FC 03 00 28 */	fsub f0, f3, f0
/* 80A58334  FC 02 00 32 */	fmul f0, f2, f0
/* 80A58338  FC 21 00 32 */	fmul f1, f1, f0
/* 80A5833C  FC 20 08 18 */	frsp f1, f1
/* 80A58340  48 00 00 88 */	b lbl_80A583C8
lbl_80A58344:
/* 80A58344  C8 1D 00 60 */	lfd f0, 0x60(r29)
/* 80A58348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5834C  40 80 00 10 */	bge lbl_80A5835C
/* 80A58350  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A58354  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A58358  48 00 00 70 */	b lbl_80A583C8
lbl_80A5835C:
/* 80A5835C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A58360  80 81 00 08 */	lwz r4, 8(r1)
/* 80A58364  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A58368  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A5836C  7C 03 00 00 */	cmpw r3, r0
/* 80A58370  41 82 00 14 */	beq lbl_80A58384
/* 80A58374  40 80 00 40 */	bge lbl_80A583B4
/* 80A58378  2C 03 00 00 */	cmpwi r3, 0
/* 80A5837C  41 82 00 20 */	beq lbl_80A5839C
/* 80A58380  48 00 00 34 */	b lbl_80A583B4
lbl_80A58384:
/* 80A58384  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A58388  41 82 00 0C */	beq lbl_80A58394
/* 80A5838C  38 00 00 01 */	li r0, 1
/* 80A58390  48 00 00 28 */	b lbl_80A583B8
lbl_80A58394:
/* 80A58394  38 00 00 02 */	li r0, 2
/* 80A58398  48 00 00 20 */	b lbl_80A583B8
lbl_80A5839C:
/* 80A5839C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A583A0  41 82 00 0C */	beq lbl_80A583AC
/* 80A583A4  38 00 00 05 */	li r0, 5
/* 80A583A8  48 00 00 10 */	b lbl_80A583B8
lbl_80A583AC:
/* 80A583AC  38 00 00 03 */	li r0, 3
/* 80A583B0  48 00 00 08 */	b lbl_80A583B8
lbl_80A583B4:
/* 80A583B4  38 00 00 04 */	li r0, 4
lbl_80A583B8:
/* 80A583B8  2C 00 00 01 */	cmpwi r0, 1
/* 80A583BC  40 82 00 0C */	bne lbl_80A583C8
/* 80A583C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A583C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A583C8:
/* 80A583C8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80A583CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A583D0  40 80 00 10 */	bge lbl_80A583E0
/* 80A583D4  93 DF 0C 18 */	stw r30, 0xc18(r31)
/* 80A583D8  38 60 00 01 */	li r3, 1
/* 80A583DC  48 00 00 1C */	b lbl_80A583F8
lbl_80A583E0:
/* 80A583E0  3B 9C 00 01 */	addi r28, r28, 1
/* 80A583E4  2C 1C 00 FF */	cmpwi r28, 0xff
/* 80A583E8  41 80 FE B0 */	blt lbl_80A58298
/* 80A583EC  38 00 00 00 */	li r0, 0
/* 80A583F0  90 1F 0C 18 */	stw r0, 0xc18(r31)
/* 80A583F4  38 60 00 00 */	li r3, 0
lbl_80A583F8:
/* 80A583F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A583FC  4B 90 9E 28 */	b _restgpr_28
/* 80A58400  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A58404  7C 08 03 A6 */	mtlr r0
/* 80A58408  38 21 00 40 */	addi r1, r1, 0x40
/* 80A5840C  4E 80 00 20 */	blr 
