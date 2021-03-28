lbl_800E8354:
/* 800E8354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E8358  7C 08 02 A6 */	mflr r0
/* 800E835C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E8360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E8364  7C 7F 1B 78 */	mr r31, r3
/* 800E8368  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800E836C  38 80 00 00 */	li r4, 0
/* 800E8370  4B FB 9E 71 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800E8374  7C 60 07 34 */	extsh r0, r3
/* 800E8378  2C 00 00 1D */	cmpwi r0, 0x1d
/* 800E837C  40 82 00 2C */	bne lbl_800E83A8
/* 800E8380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E8384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E8388  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E838C  A0 9F 1E 1E */	lhz r4, 0x1e1e(r31)
/* 800E8390  4B F8 C2 89 */	bl GetActorPointer__4cBgSCFi
/* 800E8394  38 80 00 04 */	li r4, 4
/* 800E8398  38 A0 00 18 */	li r5, 0x18
/* 800E839C  48 05 97 31 */	bl func_80141ACC
/* 800E83A0  2C 03 00 00 */	cmpwi r3, 0
/* 800E83A4  40 82 00 1C */	bne lbl_800E83C0
lbl_800E83A8:
/* 800E83A8  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800E83AC  38 80 00 00 */	li r4, 0
/* 800E83B0  4B FB 9E 31 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800E83B4  7C 60 07 34 */	extsh r0, r3
/* 800E83B8  2C 00 00 84 */	cmpwi r0, 0x84
/* 800E83BC  40 82 00 30 */	bne lbl_800E83EC
lbl_800E83C0:
/* 800E83C0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E83C4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E83C8  41 82 00 14 */	beq lbl_800E83DC
/* 800E83CC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlPush_c0@ha
/* 800E83D0  38 63 F1 24 */	addi r3, r3, m__20daAlinkHIO_wlPush_c0@l
/* 800E83D4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800E83D8  48 00 00 3C */	b lbl_800E8414
lbl_800E83DC:
/* 800E83DC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_pushpull_c0@ha
/* 800E83E0  38 63 E2 10 */	addi r3, r3, m__22daAlinkHIO_pushpull_c0@l
/* 800E83E4  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 800E83E8  48 00 00 2C */	b lbl_800E8414
lbl_800E83EC:
/* 800E83EC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E83F0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E83F4  41 82 00 14 */	beq lbl_800E8408
/* 800E83F8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlPush_c0@ha
/* 800E83FC  38 63 F1 24 */	addi r3, r3, m__20daAlinkHIO_wlPush_c0@l
/* 800E8400  C0 23 00 08 */	lfs f1, 8(r3)
/* 800E8404  48 00 00 10 */	b lbl_800E8414
lbl_800E8408:
/* 800E8408  3C 60 80 39 */	lis r3, m__22daAlinkHIO_pushpull_c0@ha
/* 800E840C  38 63 E2 10 */	addi r3, r3, m__22daAlinkHIO_pushpull_c0@l
/* 800E8410  C0 23 00 18 */	lfs f1, 0x18(r3)
lbl_800E8414:
/* 800E8414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E8418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E841C  7C 08 03 A6 */	mtlr r0
/* 800E8420  38 21 00 10 */	addi r1, r1, 0x10
/* 800E8424  4E 80 00 20 */	blr 
