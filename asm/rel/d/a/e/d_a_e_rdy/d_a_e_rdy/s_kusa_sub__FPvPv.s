lbl_8076F59C:
/* 8076F59C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076F5A0  7C 08 02 A6 */	mflr r0
/* 8076F5A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076F5A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8076F5AC  4B BF 2C 30 */	b _savegpr_29
/* 8076F5B0  7C 7D 1B 78 */	mr r29, r3
/* 8076F5B4  7C 9E 23 78 */	mr r30, r4
/* 8076F5B8  3C 80 80 78 */	lis r4, lit_4018@ha
/* 8076F5BC  3B E4 9D FC */	addi r31, r4, lit_4018@l
/* 8076F5C0  4B 8A 97 20 */	b fopAc_IsActor__FPv
/* 8076F5C4  2C 03 00 00 */	cmpwi r3, 0
/* 8076F5C8  41 82 01 38 */	beq lbl_8076F700
/* 8076F5CC  A8 1D 00 08 */	lha r0, 8(r29)
/* 8076F5D0  2C 00 01 4D */	cmpwi r0, 0x14d
/* 8076F5D4  40 82 01 2C */	bne lbl_8076F700
/* 8076F5D8  38 61 00 0C */	addi r3, r1, 0xc
/* 8076F5DC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8076F5E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8076F5E4  4B AF 75 50 */	b __mi__4cXyzCFRC3Vec
/* 8076F5E8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8076F5EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076F5F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8076F5F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8076F5F8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8076F5FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8076F600  38 61 00 18 */	addi r3, r1, 0x18
/* 8076F604  4B BD 7B 34 */	b PSVECSquareMag
/* 8076F608  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076F60C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076F610  40 81 00 58 */	ble lbl_8076F668
/* 8076F614  FC 00 08 34 */	frsqrte f0, f1
/* 8076F618  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8076F61C  FC 44 00 32 */	fmul f2, f4, f0
/* 8076F620  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8076F624  FC 00 00 32 */	fmul f0, f0, f0
/* 8076F628  FC 01 00 32 */	fmul f0, f1, f0
/* 8076F62C  FC 03 00 28 */	fsub f0, f3, f0
/* 8076F630  FC 02 00 32 */	fmul f0, f2, f0
/* 8076F634  FC 44 00 32 */	fmul f2, f4, f0
/* 8076F638  FC 00 00 32 */	fmul f0, f0, f0
/* 8076F63C  FC 01 00 32 */	fmul f0, f1, f0
/* 8076F640  FC 03 00 28 */	fsub f0, f3, f0
/* 8076F644  FC 02 00 32 */	fmul f0, f2, f0
/* 8076F648  FC 44 00 32 */	fmul f2, f4, f0
/* 8076F64C  FC 00 00 32 */	fmul f0, f0, f0
/* 8076F650  FC 01 00 32 */	fmul f0, f1, f0
/* 8076F654  FC 03 00 28 */	fsub f0, f3, f0
/* 8076F658  FC 02 00 32 */	fmul f0, f2, f0
/* 8076F65C  FC 21 00 32 */	fmul f1, f1, f0
/* 8076F660  FC 20 08 18 */	frsp f1, f1
/* 8076F664  48 00 00 88 */	b lbl_8076F6EC
lbl_8076F668:
/* 8076F668  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8076F66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076F670  40 80 00 10 */	bge lbl_8076F680
/* 8076F674  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8076F678  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8076F67C  48 00 00 70 */	b lbl_8076F6EC
lbl_8076F680:
/* 8076F680  D0 21 00 08 */	stfs f1, 8(r1)
/* 8076F684  80 81 00 08 */	lwz r4, 8(r1)
/* 8076F688  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8076F68C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8076F690  7C 03 00 00 */	cmpw r3, r0
/* 8076F694  41 82 00 14 */	beq lbl_8076F6A8
/* 8076F698  40 80 00 40 */	bge lbl_8076F6D8
/* 8076F69C  2C 03 00 00 */	cmpwi r3, 0
/* 8076F6A0  41 82 00 20 */	beq lbl_8076F6C0
/* 8076F6A4  48 00 00 34 */	b lbl_8076F6D8
lbl_8076F6A8:
/* 8076F6A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076F6AC  41 82 00 0C */	beq lbl_8076F6B8
/* 8076F6B0  38 00 00 01 */	li r0, 1
/* 8076F6B4  48 00 00 28 */	b lbl_8076F6DC
lbl_8076F6B8:
/* 8076F6B8  38 00 00 02 */	li r0, 2
/* 8076F6BC  48 00 00 20 */	b lbl_8076F6DC
lbl_8076F6C0:
/* 8076F6C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076F6C4  41 82 00 0C */	beq lbl_8076F6D0
/* 8076F6C8  38 00 00 05 */	li r0, 5
/* 8076F6CC  48 00 00 10 */	b lbl_8076F6DC
lbl_8076F6D0:
/* 8076F6D0  38 00 00 03 */	li r0, 3
/* 8076F6D4  48 00 00 08 */	b lbl_8076F6DC
lbl_8076F6D8:
/* 8076F6D8  38 00 00 04 */	li r0, 4
lbl_8076F6DC:
/* 8076F6DC  2C 00 00 01 */	cmpwi r0, 1
/* 8076F6E0  40 82 00 0C */	bne lbl_8076F6EC
/* 8076F6E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8076F6E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8076F6EC:
/* 8076F6EC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8076F6F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076F6F4  40 80 00 0C */	bge lbl_8076F700
/* 8076F6F8  7F A3 EB 78 */	mr r3, r29
/* 8076F6FC  48 00 00 08 */	b lbl_8076F704
lbl_8076F700:
/* 8076F700  38 60 00 00 */	li r3, 0
lbl_8076F704:
/* 8076F704  39 61 00 40 */	addi r11, r1, 0x40
/* 8076F708  4B BF 2B 20 */	b _restgpr_29
/* 8076F70C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076F710  7C 08 03 A6 */	mtlr r0
/* 8076F714  38 21 00 40 */	addi r1, r1, 0x40
/* 8076F718  4E 80 00 20 */	blr 
