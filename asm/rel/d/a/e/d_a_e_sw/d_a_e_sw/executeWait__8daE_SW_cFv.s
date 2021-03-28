lbl_807A7F88:
/* 807A7F88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A7F8C  7C 08 02 A6 */	mflr r0
/* 807A7F90  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A7F94  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807A7F98  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807A7F9C  7C 7F 1B 78 */	mr r31, r3
/* 807A7FA0  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807A7FA4  3B C4 FD 2C */	addi r30, r4, lit_3909@l
/* 807A7FA8  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807A7FAC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807A7FB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A7FB4  40 81 00 08 */	ble lbl_807A7FBC
/* 807A7FB8  4B FF F8 FD */	bl setSmokeEffect__8daE_SW_cFv
lbl_807A7FBC:
/* 807A7FBC  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 807A7FC0  2C 00 00 01 */	cmpwi r0, 1
/* 807A7FC4  41 82 00 54 */	beq lbl_807A8018
/* 807A7FC8  40 80 00 10 */	bge lbl_807A7FD8
/* 807A7FCC  2C 00 00 00 */	cmpwi r0, 0
/* 807A7FD0  40 80 00 14 */	bge lbl_807A7FE4
/* 807A7FD4  48 00 01 34 */	b lbl_807A8108
lbl_807A7FD8:
/* 807A7FD8  2C 00 00 03 */	cmpwi r0, 3
/* 807A7FDC  40 80 01 2C */	bge lbl_807A8108
/* 807A7FE0  48 00 00 C4 */	b lbl_807A80A4
lbl_807A7FE4:
/* 807A7FE4  38 00 00 01 */	li r0, 1
/* 807A7FE8  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 807A7FEC  98 1F 06 E5 */	stb r0, 0x6e5(r31)
/* 807A7FF0  7F E3 FB 78 */	mr r3, r31
/* 807A7FF4  38 80 00 0D */	li r4, 0xd
/* 807A7FF8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807A7FFC  38 A0 00 02 */	li r5, 2
/* 807A8000  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A8004  4B FF F4 5D */	bl bckSet__8daE_SW_cFifUcf
/* 807A8008  38 00 00 01 */	li r0, 1
/* 807A800C  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807A8010  38 00 00 32 */	li r0, 0x32
/* 807A8014  B0 1F 06 EA */	sth r0, 0x6ea(r31)
lbl_807A8018:
/* 807A8018  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807A801C  2C 00 00 00 */	cmpwi r0, 0
/* 807A8020  40 82 00 6C */	bne lbl_807A808C
/* 807A8024  38 00 00 02 */	li r0, 2
/* 807A8028  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807A802C  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 807A8030  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807A8034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8038  40 81 00 10 */	ble lbl_807A8048
/* 807A803C  38 00 00 5A */	li r0, 0x5a
/* 807A8040  B0 1F 06 EA */	sth r0, 0x6ea(r31)
/* 807A8044  48 00 00 0C */	b lbl_807A8050
lbl_807A8048:
/* 807A8048  38 00 00 1E */	li r0, 0x1e
/* 807A804C  B0 1F 06 EA */	sth r0, 0x6ea(r31)
lbl_807A8050:
/* 807A8050  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 807A8054  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 807A8058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A805C  40 81 00 18 */	ble lbl_807A8074
/* 807A8060  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807A8064  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 807A8068  4B AC 8B 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807A806C  B0 7F 06 9E */	sth r3, 0x69e(r31)
/* 807A8070  48 00 00 1C */	b lbl_807A808C
lbl_807A8074:
/* 807A8074  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 807A8078  4B AB F9 14 */	b cM_rndFX__Ff
/* 807A807C  FC 00 08 1E */	fctiwz f0, f1
/* 807A8080  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807A8084  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807A8088  B0 1F 06 9E */	sth r0, 0x69e(r31)
lbl_807A808C:
/* 807A808C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807A8090  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A8094  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 807A8098  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 807A809C  4B AC 79 A0 */	b cLib_addCalc2__FPffff
/* 807A80A0  48 00 00 68 */	b lbl_807A8108
lbl_807A80A4:
/* 807A80A4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807A80A8  A8 9F 06 9E */	lha r4, 0x69e(r31)
/* 807A80AC  38 A0 00 08 */	li r5, 8
/* 807A80B0  38 C0 04 00 */	li r6, 0x400
/* 807A80B4  4B AC 85 54 */	b cLib_addCalcAngleS2__FPssss
/* 807A80B8  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807A80BC  2C 00 00 00 */	cmpwi r0, 0
/* 807A80C0  40 82 00 14 */	bne lbl_807A80D4
/* 807A80C4  38 00 00 01 */	li r0, 1
/* 807A80C8  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807A80CC  38 00 00 32 */	li r0, 0x32
/* 807A80D0  B0 1F 06 EA */	sth r0, 0x6ea(r31)
lbl_807A80D4:
/* 807A80D4  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 807A80D8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807A80DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A80E0  40 81 00 18 */	ble lbl_807A80F8
/* 807A80E4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807A80E8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807A80EC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A80F0  4B AC 86 50 */	b cLib_chaseF__FPfff
/* 807A80F4  48 00 00 14 */	b lbl_807A8108
lbl_807A80F8:
/* 807A80F8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807A80FC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807A8100  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A8104  4B AC 86 3C */	b cLib_chaseF__FPfff
lbl_807A8108:
/* 807A8108  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 807A810C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807A8110  7F E3 FB 78 */	mr r3, r31
/* 807A8114  4B FF FB BD */	bl bomb_check__8daE_SW_cFv
/* 807A8118  2C 03 00 00 */	cmpwi r3, 0
/* 807A811C  40 82 01 5C */	bne lbl_807A8278
/* 807A8120  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A8124  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A8128  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807A812C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 807A8130  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807A8134  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A8138  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A813C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807A8140  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807A8144  C0 5F 04 B0 */	lfs f2, 0x4b0(r31)
/* 807A8148  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 807A814C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A8150  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807A8154  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807A8158  38 61 00 0C */	addi r3, r1, 0xc
/* 807A815C  38 81 00 18 */	addi r4, r1, 0x18
/* 807A8160  4B B9 F2 3C */	b PSVECSquareDistance
/* 807A8164  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A8168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A816C  40 81 00 58 */	ble lbl_807A81C4
/* 807A8170  FC 00 08 34 */	frsqrte f0, f1
/* 807A8174  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807A8178  FC 44 00 32 */	fmul f2, f4, f0
/* 807A817C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807A8180  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8184  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8188  FC 03 00 28 */	fsub f0, f3, f0
/* 807A818C  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8190  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8194  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8198  FC 01 00 32 */	fmul f0, f1, f0
/* 807A819C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A81A0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A81A4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A81A8  FC 00 00 32 */	fmul f0, f0, f0
/* 807A81AC  FC 01 00 32 */	fmul f0, f1, f0
/* 807A81B0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A81B4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A81B8  FC 21 00 32 */	fmul f1, f1, f0
/* 807A81BC  FC 20 08 18 */	frsp f1, f1
/* 807A81C0  48 00 00 88 */	b lbl_807A8248
lbl_807A81C4:
/* 807A81C4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807A81C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A81CC  40 80 00 10 */	bge lbl_807A81DC
/* 807A81D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A81D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A81D8  48 00 00 70 */	b lbl_807A8248
lbl_807A81DC:
/* 807A81DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A81E0  80 81 00 08 */	lwz r4, 8(r1)
/* 807A81E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A81E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A81EC  7C 03 00 00 */	cmpw r3, r0
/* 807A81F0  41 82 00 14 */	beq lbl_807A8204
/* 807A81F4  40 80 00 40 */	bge lbl_807A8234
/* 807A81F8  2C 03 00 00 */	cmpwi r3, 0
/* 807A81FC  41 82 00 20 */	beq lbl_807A821C
/* 807A8200  48 00 00 34 */	b lbl_807A8234
lbl_807A8204:
/* 807A8204  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A8208  41 82 00 0C */	beq lbl_807A8214
/* 807A820C  38 00 00 01 */	li r0, 1
/* 807A8210  48 00 00 28 */	b lbl_807A8238
lbl_807A8214:
/* 807A8214  38 00 00 02 */	li r0, 2
/* 807A8218  48 00 00 20 */	b lbl_807A8238
lbl_807A821C:
/* 807A821C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A8220  41 82 00 0C */	beq lbl_807A822C
/* 807A8224  38 00 00 05 */	li r0, 5
/* 807A8228  48 00 00 10 */	b lbl_807A8238
lbl_807A822C:
/* 807A822C  38 00 00 03 */	li r0, 3
/* 807A8230  48 00 00 08 */	b lbl_807A8238
lbl_807A8234:
/* 807A8234  38 00 00 04 */	li r0, 4
lbl_807A8238:
/* 807A8238  2C 00 00 01 */	cmpwi r0, 1
/* 807A823C  40 82 00 0C */	bne lbl_807A8248
/* 807A8240  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A8244  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A8248:
/* 807A8248  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 807A824C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8250  40 80 00 28 */	bge lbl_807A8278
/* 807A8254  7F E3 FB 78 */	mr r3, r31
/* 807A8258  38 80 00 00 */	li r4, 0
/* 807A825C  48 00 2D 15 */	bl checkSuddenAttack__8daE_SW_cFi
/* 807A8260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A8264  40 82 00 14 */	bne lbl_807A8278
/* 807A8268  7F E3 FB 78 */	mr r3, r31
/* 807A826C  38 80 00 01 */	li r4, 1
/* 807A8270  38 A0 00 00 */	li r5, 0
/* 807A8274  4B FF F8 F1 */	bl setActionMode__8daE_SW_cFss
lbl_807A8278:
/* 807A8278  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807A827C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807A8280  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A8284  7C 08 03 A6 */	mtlr r0
/* 807A8288  38 21 00 40 */	addi r1, r1, 0x40
/* 807A828C  4E 80 00 20 */	blr 
