lbl_806CB2F0:
/* 806CB2F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806CB2F4  7C 08 02 A6 */	mflr r0
/* 806CB2F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806CB2FC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 806CB300  93 C1 00 58 */	stw r30, 0x58(r1)
/* 806CB304  7C 7E 1B 78 */	mr r30, r3
/* 806CB308  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806CB30C  3B E3 D0 00 */	addi r31, r3, lit_3904@l
/* 806CB310  3C 60 80 6C */	lis r3, s_arrow_sub__FPvPv@ha
/* 806CB314  38 63 7D B8 */	addi r3, r3, s_arrow_sub__FPvPv@l
/* 806CB318  7F C4 F3 78 */	mr r4, r30
/* 806CB31C  4B 95 60 1C */	b fpcEx_Search__FPFPvPv_PvPv
/* 806CB320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CB324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CB328  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 806CB32C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806CB330  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806CB334  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806CB338  4B B9 B7 FC */	b __mi__4cXyzCFRC3Vec
/* 806CB33C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 806CB340  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806CB344  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806CB348  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806CB34C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806CB350  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806CB354  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 806CB358  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB35C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806CB360  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806CB364  38 61 00 20 */	addi r3, r1, 0x20
/* 806CB368  4B C7 BD D0 */	b PSVECSquareMag
/* 806CB36C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB374  40 81 00 58 */	ble lbl_806CB3CC
/* 806CB378  FC 00 08 34 */	frsqrte f0, f1
/* 806CB37C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CB380  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB384  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CB388  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB38C  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB390  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB394  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB398  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB39C  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB3A0  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB3A4  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB3A8  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB3AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB3B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB3B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB3B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB3BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB3C0  FC 21 00 32 */	fmul f1, f1, f0
/* 806CB3C4  FC 20 08 18 */	frsp f1, f1
/* 806CB3C8  48 00 00 88 */	b lbl_806CB450
lbl_806CB3CC:
/* 806CB3CC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CB3D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB3D4  40 80 00 10 */	bge lbl_806CB3E4
/* 806CB3D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CB3DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806CB3E0  48 00 00 70 */	b lbl_806CB450
lbl_806CB3E4:
/* 806CB3E4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806CB3E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806CB3EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CB3F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CB3F4  7C 03 00 00 */	cmpw r3, r0
/* 806CB3F8  41 82 00 14 */	beq lbl_806CB40C
/* 806CB3FC  40 80 00 40 */	bge lbl_806CB43C
/* 806CB400  2C 03 00 00 */	cmpwi r3, 0
/* 806CB404  41 82 00 20 */	beq lbl_806CB424
/* 806CB408  48 00 00 34 */	b lbl_806CB43C
lbl_806CB40C:
/* 806CB40C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB410  41 82 00 0C */	beq lbl_806CB41C
/* 806CB414  38 00 00 01 */	li r0, 1
/* 806CB418  48 00 00 28 */	b lbl_806CB440
lbl_806CB41C:
/* 806CB41C  38 00 00 02 */	li r0, 2
/* 806CB420  48 00 00 20 */	b lbl_806CB440
lbl_806CB424:
/* 806CB424  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB428  41 82 00 0C */	beq lbl_806CB434
/* 806CB42C  38 00 00 05 */	li r0, 5
/* 806CB430  48 00 00 10 */	b lbl_806CB440
lbl_806CB434:
/* 806CB434  38 00 00 03 */	li r0, 3
/* 806CB438  48 00 00 08 */	b lbl_806CB440
lbl_806CB43C:
/* 806CB43C  38 00 00 04 */	li r0, 4
lbl_806CB440:
/* 806CB440  2C 00 00 01 */	cmpwi r0, 1
/* 806CB444  40 82 00 0C */	bne lbl_806CB450
/* 806CB448  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CB44C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806CB450:
/* 806CB450  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806CB454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB458  40 81 00 14 */	ble lbl_806CB46C
/* 806CB45C  7F C3 F3 78 */	mr r3, r30
/* 806CB460  38 80 00 00 */	li r4, 0
/* 806CB464  4B FF CC 95 */	bl setActionMode__8daE_GE_cFi
/* 806CB468  48 00 02 7C */	b lbl_806CB6E4
lbl_806CB46C:
/* 806CB46C  88 1E 0B 9A */	lbz r0, 0xb9a(r30)
/* 806CB470  2C 00 00 00 */	cmpwi r0, 0
/* 806CB474  40 82 01 24 */	bne lbl_806CB598
/* 806CB478  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806CB47C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CB480  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB484  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CB488  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806CB48C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CB490  38 61 00 14 */	addi r3, r1, 0x14
/* 806CB494  4B C7 BC A4 */	b PSVECSquareMag
/* 806CB498  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB49C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB4A0  40 81 00 58 */	ble lbl_806CB4F8
/* 806CB4A4  FC 00 08 34 */	frsqrte f0, f1
/* 806CB4A8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CB4AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB4B0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CB4B4  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB4B8  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB4BC  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB4C0  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB4C4  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB4C8  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB4CC  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB4D0  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB4D4  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB4D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB4DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB4E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB4E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB4E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB4EC  FC 21 00 32 */	fmul f1, f1, f0
/* 806CB4F0  FC 20 08 18 */	frsp f1, f1
/* 806CB4F4  48 00 00 88 */	b lbl_806CB57C
lbl_806CB4F8:
/* 806CB4F8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CB4FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB500  40 80 00 10 */	bge lbl_806CB510
/* 806CB504  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CB508  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806CB50C  48 00 00 70 */	b lbl_806CB57C
lbl_806CB510:
/* 806CB510  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CB514  80 81 00 08 */	lwz r4, 8(r1)
/* 806CB518  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CB51C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CB520  7C 03 00 00 */	cmpw r3, r0
/* 806CB524  41 82 00 14 */	beq lbl_806CB538
/* 806CB528  40 80 00 40 */	bge lbl_806CB568
/* 806CB52C  2C 03 00 00 */	cmpwi r3, 0
/* 806CB530  41 82 00 20 */	beq lbl_806CB550
/* 806CB534  48 00 00 34 */	b lbl_806CB568
lbl_806CB538:
/* 806CB538  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB53C  41 82 00 0C */	beq lbl_806CB548
/* 806CB540  38 00 00 01 */	li r0, 1
/* 806CB544  48 00 00 28 */	b lbl_806CB56C
lbl_806CB548:
/* 806CB548  38 00 00 02 */	li r0, 2
/* 806CB54C  48 00 00 20 */	b lbl_806CB56C
lbl_806CB550:
/* 806CB550  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB554  41 82 00 0C */	beq lbl_806CB560
/* 806CB558  38 00 00 05 */	li r0, 5
/* 806CB55C  48 00 00 10 */	b lbl_806CB56C
lbl_806CB560:
/* 806CB560  38 00 00 03 */	li r0, 3
/* 806CB564  48 00 00 08 */	b lbl_806CB56C
lbl_806CB568:
/* 806CB568  38 00 00 04 */	li r0, 4
lbl_806CB56C:
/* 806CB56C  2C 00 00 01 */	cmpwi r0, 1
/* 806CB570  40 82 00 0C */	bne lbl_806CB57C
/* 806CB574  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CB578  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806CB57C:
/* 806CB57C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806CB580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB584  40 80 00 14 */	bge lbl_806CB598
/* 806CB588  7F C3 F3 78 */	mr r3, r30
/* 806CB58C  38 80 00 05 */	li r4, 5
/* 806CB590  4B FF CB 69 */	bl setActionMode__8daE_GE_cFi
/* 806CB594  48 00 01 50 */	b lbl_806CB6E4
lbl_806CB598:
/* 806CB598  80 1E 0B 78 */	lwz r0, 0xb78(r30)
/* 806CB59C  2C 00 00 01 */	cmpwi r0, 1
/* 806CB5A0  41 82 00 68 */	beq lbl_806CB608
/* 806CB5A4  40 80 01 40 */	bge lbl_806CB6E4
/* 806CB5A8  2C 00 00 00 */	cmpwi r0, 0
/* 806CB5AC  40 80 00 08 */	bge lbl_806CB5B4
/* 806CB5B0  48 00 01 34 */	b lbl_806CB6E4
lbl_806CB5B4:
/* 806CB5B4  A8 1E 0B 90 */	lha r0, 0xb90(r30)
/* 806CB5B8  2C 00 00 00 */	cmpwi r0, 0
/* 806CB5BC  40 82 01 28 */	bne lbl_806CB6E4
/* 806CB5C0  7F C3 F3 78 */	mr r3, r30
/* 806CB5C4  38 80 00 05 */	li r4, 5
/* 806CB5C8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CB5CC  38 A0 00 00 */	li r5, 0
/* 806CB5D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CB5D4  4B FF C4 E5 */	bl bckSet__8daE_GE_cFifUcf
/* 806CB5D8  38 00 00 01 */	li r0, 1
/* 806CB5DC  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CB5E0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 806CB5E4  2C 00 00 00 */	cmpwi r0, 0
/* 806CB5E8  40 82 00 FC */	bne lbl_806CB6E4
/* 806CB5EC  3C 60 80 6C */	lis r3, s_ge_caw__FPvPv@ha
/* 806CB5F0  38 63 7F 44 */	addi r3, r3, s_ge_caw__FPvPv@l
/* 806CB5F4  7F C4 F3 78 */	mr r4, r30
/* 806CB5F8  4B 95 5D 40 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806CB5FC  38 00 00 01 */	li r0, 1
/* 806CB600  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 806CB604  48 00 00 E0 */	b lbl_806CB6E4
lbl_806CB608:
/* 806CB608  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CB60C  38 63 00 0C */	addi r3, r3, 0xc
/* 806CB610  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 806CB614  4B C5 CE 18 */	b checkPass__12J3DFrameCtrlFf
/* 806CB618  2C 03 00 00 */	cmpwi r3, 0
/* 806CB61C  41 82 00 2C */	beq lbl_806CB648
/* 806CB620  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070467@ha */
/* 806CB624  38 03 04 67 */	addi r0, r3, 0x0467 /* 0x00070467@l */
/* 806CB628  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CB62C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CB630  38 81 00 10 */	addi r4, r1, 0x10
/* 806CB634  38 A0 FF FF */	li r5, -1
/* 806CB638  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CB63C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CB640  7D 89 03 A6 */	mtctr r12
/* 806CB644  4E 80 04 21 */	bctrl 
lbl_806CB648:
/* 806CB648  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CB64C  38 80 00 01 */	li r4, 1
/* 806CB650  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CB654  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CB658  40 82 00 18 */	bne lbl_806CB670
/* 806CB65C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CB660  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CB664  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CB668  41 82 00 08 */	beq lbl_806CB670
/* 806CB66C  38 80 00 00 */	li r4, 0
lbl_806CB670:
/* 806CB670  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CB674  41 82 00 3C */	beq lbl_806CB6B0
/* 806CB678  7F C3 F3 78 */	mr r3, r30
/* 806CB67C  38 80 00 02 */	li r4, 2
/* 806CB680  4B FF CA 79 */	bl setActionMode__8daE_GE_cFi
/* 806CB684  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806CB688  4B B9 C2 CC */	b cM_rndF__Ff
/* 806CB68C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806CB690  EC 00 08 2A */	fadds f0, f0, f1
/* 806CB694  FC 00 00 1E */	fctiwz f0, f0
/* 806CB698  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806CB69C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806CB6A0  B0 1E 0B 90 */	sth r0, 0xb90(r30)
/* 806CB6A4  38 00 00 02 */	li r0, 2
/* 806CB6A8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 806CB6AC  48 00 00 38 */	b lbl_806CB6E4
lbl_806CB6B0:
/* 806CB6B0  A8 1E 0B 8E */	lha r0, 0xb8e(r30)
/* 806CB6B4  2C 00 00 00 */	cmpwi r0, 0
/* 806CB6B8  40 82 00 2C */	bne lbl_806CB6E4
/* 806CB6BC  38 00 00 00 */	li r0, 0
/* 806CB6C0  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CB6C4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806CB6C8  4B B9 C2 C4 */	b cM_rndFX__Ff
/* 806CB6CC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806CB6D0  EC 00 08 2A */	fadds f0, f0, f1
/* 806CB6D4  FC 00 00 1E */	fctiwz f0, f0
/* 806CB6D8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806CB6DC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806CB6E0  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
lbl_806CB6E4:
/* 806CB6E4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 806CB6E8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 806CB6EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806CB6F0  7C 08 03 A6 */	mtlr r0
/* 806CB6F4  38 21 00 60 */	addi r1, r1, 0x60
/* 806CB6F8  4E 80 00 20 */	blr 
