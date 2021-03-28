lbl_804B5F44:
/* 804B5F44  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 804B5F48  7C 08 02 A6 */	mflr r0
/* 804B5F4C  90 01 02 74 */	stw r0, 0x274(r1)
/* 804B5F50  DB E1 02 60 */	stfd f31, 0x260(r1)
/* 804B5F54  F3 E1 02 68 */	psq_st f31, 616(r1), 0, 0 /* qr0 */
/* 804B5F58  39 61 02 60 */	addi r11, r1, 0x260
/* 804B5F5C  4B EA C2 68 */	b _savegpr_23
/* 804B5F60  7C 7E 1B 78 */	mr r30, r3
/* 804B5F64  3C 60 80 4C */	lis r3, lit_1109@ha
/* 804B5F68  3B 03 BB 90 */	addi r24, r3, lit_1109@l
/* 804B5F6C  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B5F70  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804B5F74  38 60 00 00 */	li r3, 0
/* 804B5F78  48 00 53 05 */	bl dComIfGp_getPlayer__Fi
/* 804B5F7C  7C 7D 1B 78 */	mr r29, r3
/* 804B5F80  80 1E 10 AC */	lwz r0, 0x10ac(r30)
/* 804B5F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B5F88  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B5F8C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B5F90  38 81 00 14 */	addi r4, r1, 0x14
/* 804B5F94  4B B6 38 64 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B5F98  7C 79 1B 78 */	mr r25, r3
/* 804B5F9C  38 60 00 00 */	li r3, 0
/* 804B5FA0  48 00 52 C1 */	bl dComIfGp_getPlayerCameraID__Fi
/* 804B5FA4  48 00 52 A5 */	bl dComIfGp_getCamera__Fi
/* 804B5FA8  7C 7C 1B 78 */	mr r28, r3
/* 804B5FAC  38 60 00 00 */	li r3, 0
/* 804B5FB0  48 00 52 99 */	bl dComIfGp_getCamera__Fi
/* 804B5FB4  7C 7A 1B 78 */	mr r26, r3
/* 804B5FB8  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 804B5FBC  4B BC 15 C0 */	b __ct__11dBgS_GndChkFv
/* 804B5FC0  38 61 01 84 */	addi r3, r1, 0x184
/* 804B5FC4  4B BC 17 EC */	b __ct__18dBgS_ObjGndChk_SplFv
/* 804B5FC8  3B 60 00 00 */	li r27, 0
/* 804B5FCC  C0 1E 14 DC */	lfs f0, 0x14dc(r30)
/* 804B5FD0  D0 1E 13 B0 */	stfs f0, 0x13b0(r30)
/* 804B5FD4  C0 1E 14 D8 */	lfs f0, 0x14d8(r30)
/* 804B5FD8  D0 1E 13 AC */	stfs f0, 0x13ac(r30)
/* 804B5FDC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 804B5FE0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804B5FE4  FC 40 08 90 */	fmr f2, f1
/* 804B5FE8  FC 60 08 90 */	fmr f3, f1
/* 804B5FEC  48 00 52 4D */	bl __ct__4cXyzFfff
/* 804B5FF0  A8 1E 13 B4 */	lha r0, 0x13b4(r30)
/* 804B5FF4  2C 00 03 B6 */	cmpwi r0, 0x3b6
/* 804B5FF8  41 82 14 F4 */	beq lbl_804B74EC
/* 804B5FFC  40 80 00 74 */	bge lbl_804B6070
/* 804B6000  2C 00 00 0B */	cmpwi r0, 0xb
/* 804B6004  41 82 0B 80 */	beq lbl_804B6B84
/* 804B6008  40 80 00 38 */	bge lbl_804B6040
/* 804B600C  2C 00 00 02 */	cmpwi r0, 2
/* 804B6010  41 82 02 34 */	beq lbl_804B6244
/* 804B6014  40 80 00 14 */	bge lbl_804B6028
/* 804B6018  2C 00 00 00 */	cmpwi r0, 0
/* 804B601C  41 82 00 BC */	beq lbl_804B60D8
/* 804B6020  40 80 01 9C */	bge lbl_804B61BC
/* 804B6024  48 00 1E 2C */	b lbl_804B7E50
lbl_804B6028:
/* 804B6028  2C 00 00 05 */	cmpwi r0, 5
/* 804B602C  41 82 04 5C */	beq lbl_804B6488
/* 804B6030  41 80 1E 20 */	blt lbl_804B7E50
/* 804B6034  2C 00 00 0A */	cmpwi r0, 0xa
/* 804B6038  40 80 09 AC */	bge lbl_804B69E4
/* 804B603C  48 00 1E 14 */	b lbl_804B7E50
lbl_804B6040:
/* 804B6040  2C 00 00 1E */	cmpwi r0, 0x1e
/* 804B6044  41 82 0D A8 */	beq lbl_804B6DEC
/* 804B6048  40 80 00 10 */	bge lbl_804B6058
/* 804B604C  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B6050  41 82 0C 88 */	beq lbl_804B6CD8
/* 804B6054  48 00 1D FC */	b lbl_804B7E50
lbl_804B6058:
/* 804B6058  2C 00 03 85 */	cmpwi r0, 0x385
/* 804B605C  41 82 10 54 */	beq lbl_804B70B0
/* 804B6060  40 80 1D F0 */	bge lbl_804B7E50
/* 804B6064  2C 00 03 84 */	cmpwi r0, 0x384
/* 804B6068  40 80 0E FC */	bge lbl_804B6F64
/* 804B606C  48 00 1D E4 */	b lbl_804B7E50
lbl_804B6070:
/* 804B6070  2C 00 04 1B */	cmpwi r0, 0x41b
/* 804B6074  41 82 1B 3C */	beq lbl_804B7BB0
/* 804B6078  40 80 00 38 */	bge lbl_804B60B0
/* 804B607C  2C 00 03 E9 */	cmpwi r0, 0x3e9
/* 804B6080  41 82 19 18 */	beq lbl_804B7998
/* 804B6084  40 80 00 18 */	bge lbl_804B609C
/* 804B6088  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B608C  40 80 18 84 */	bge lbl_804B7910
/* 804B6090  2C 00 03 B8 */	cmpwi r0, 0x3b8
/* 804B6094  40 80 1D BC */	bge lbl_804B7E50
/* 804B6098  48 00 14 88 */	b lbl_804B7520
lbl_804B609C:
/* 804B609C  2C 00 04 1A */	cmpwi r0, 0x41a
/* 804B60A0  40 80 1A 60 */	bge lbl_804B7B00
/* 804B60A4  2C 00 03 EB */	cmpwi r0, 0x3eb
/* 804B60A8  40 80 1D A8 */	bge lbl_804B7E50
/* 804B60AC  48 00 19 60 */	b lbl_804B7A0C
lbl_804B60B0:
/* 804B60B0  2C 00 04 1F */	cmpwi r0, 0x41f
/* 804B60B4  41 82 1C 68 */	beq lbl_804B7D1C
/* 804B60B8  40 80 00 14 */	bge lbl_804B60CC
/* 804B60BC  2C 00 04 1D */	cmpwi r0, 0x41d
/* 804B60C0  41 82 1C 08 */	beq lbl_804B7CC8
/* 804B60C4  40 80 1D 8C */	bge lbl_804B7E50
/* 804B60C8  48 00 1B 5C */	b lbl_804B7C24
lbl_804B60CC:
/* 804B60CC  2C 00 04 22 */	cmpwi r0, 0x422
/* 804B60D0  41 82 1C D8 */	beq lbl_804B7DA8
/* 804B60D4  48 00 1D 7C */	b lbl_804B7E50
lbl_804B60D8:
/* 804B60D8  38 60 00 00 */	li r3, 0
/* 804B60DC  38 80 20 00 */	li r4, 0x2000
/* 804B60E0  48 00 51 3D */	bl dComIfGp_checkPlayerStatus0__FiUl
/* 804B60E4  28 03 00 00 */	cmplwi r3, 0
/* 804B60E8  40 82 00 10 */	bne lbl_804B60F8
/* 804B60EC  48 00 51 15 */	bl dComIfGp_event_runCheck__Fv
/* 804B60F0  2C 03 00 00 */	cmpwi r3, 0
/* 804B60F4  41 82 00 0C */	beq lbl_804B6100
lbl_804B60F8:
/* 804B60F8  38 00 00 14 */	li r0, 0x14
/* 804B60FC  98 1E 14 6C */	stb r0, 0x146c(r30)
lbl_804B6100:
/* 804B6100  48 00 50 F1 */	bl daAlink_getAlinkActorClass__Fv
/* 804B6104  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B6108  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804B610C  7D 89 03 A6 */	mtctr r12
/* 804B6110  4E 80 04 21 */	bctrl 
/* 804B6114  28 03 00 00 */	cmplwi r3, 0
/* 804B6118  41 82 1D 38 */	beq lbl_804B7E50
/* 804B611C  38 60 00 5E */	li r3, 0x5e
/* 804B6120  38 80 00 00 */	li r4, 0
/* 804B6124  48 00 53 E9 */	bl dComIfGp_setZStatusForce__FUcUc
/* 804B6128  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B612C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B6130  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 804B6134  60 00 08 00 */	ori r0, r0, 0x800
/* 804B6138  B0 03 00 AE */	sth r0, 0xae(r3)
/* 804B613C  88 18 00 44 */	lbz r0, 0x44(r24)
/* 804B6140  28 00 00 00 */	cmplwi r0, 0
/* 804B6144  41 82 00 14 */	beq lbl_804B6158
/* 804B6148  38 60 00 7C */	li r3, 0x7c
/* 804B614C  38 80 00 00 */	li r4, 0
/* 804B6150  48 00 53 A9 */	bl dComIfGp_setDoStatusForce__FUcUc
/* 804B6154  48 00 00 10 */	b lbl_804B6164
lbl_804B6158:
/* 804B6158  38 60 00 0F */	li r3, 0xf
/* 804B615C  38 80 00 00 */	li r4, 0
/* 804B6160  48 00 53 99 */	bl dComIfGp_setDoStatusForce__FUcUc
lbl_804B6164:
/* 804B6164  88 1E 14 6C */	lbz r0, 0x146c(r30)
/* 804B6168  28 00 00 00 */	cmplwi r0, 0
/* 804B616C  40 82 1C E4 */	bne lbl_804B7E50
/* 804B6170  38 60 00 00 */	li r3, 0
/* 804B6174  48 00 53 69 */	bl getTrigA__8mDoCPd_cFUl
/* 804B6178  28 03 00 00 */	cmplwi r3, 0
/* 804B617C  41 82 00 0C */	beq lbl_804B6188
/* 804B6180  38 00 04 1A */	li r0, 0x41a
/* 804B6184  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
lbl_804B6188:
/* 804B6188  38 60 00 00 */	li r3, 0
/* 804B618C  48 00 53 35 */	bl getTrigZ__8mDoCPd_cFUl
/* 804B6190  28 03 00 00 */	cmplwi r3, 0
/* 804B6194  41 82 1C BC */	beq lbl_804B7E50
/* 804B6198  80 18 00 40 */	lwz r0, 0x40(r24)
/* 804B619C  28 00 00 00 */	cmplwi r0, 0
/* 804B61A0  41 82 00 10 */	beq lbl_804B61B0
/* 804B61A4  38 00 03 84 */	li r0, 0x384
/* 804B61A8  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B61AC  48 00 1C A4 */	b lbl_804B7E50
lbl_804B61B0:
/* 804B61B0  38 00 03 E8 */	li r0, 0x3e8
/* 804B61B4  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B61B8  48 00 1C 98 */	b lbl_804B7E50
lbl_804B61BC:
/* 804B61BC  38 00 00 02 */	li r0, 2
/* 804B61C0  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B61C4  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B61C8  4B CA B3 08 */	b Stop__9dCamera_cFv
/* 804B61CC  38 00 00 00 */	li r0, 0
/* 804B61D0  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B61D4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 804B61D8  D0 1E 14 20 */	stfs f0, 0x1420(r30)
/* 804B61DC  D0 1E 14 1C */	stfs f0, 0x141c(r30)
/* 804B61E0  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 804B61E4  D0 1E 14 24 */	stfs f0, 0x1424(r30)
/* 804B61E8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B61EC  D0 1E 14 28 */	stfs f0, 0x1428(r30)
/* 804B61F0  38 60 00 00 */	li r3, 0
/* 804B61F4  48 00 50 55 */	bl dComIfGp_getCamera__Fi
/* 804B61F8  7C 78 1B 78 */	mr r24, r3
/* 804B61FC  38 7E 14 4C */	addi r3, r30, 0x144c
/* 804B6200  38 98 00 D8 */	addi r4, r24, 0xd8
/* 804B6204  48 00 52 A1 */	bl __as__4cXyzFRC4cXyz
/* 804B6208  38 7E 14 58 */	addi r3, r30, 0x1458
/* 804B620C  38 98 00 E4 */	addi r4, r24, 0xe4
/* 804B6210  48 00 52 95 */	bl __as__4cXyzFRC4cXyz
/* 804B6214  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B6218  38 9E 14 4C */	addi r4, r30, 0x144c
/* 804B621C  48 00 52 89 */	bl __as__4cXyzFRC4cXyz
/* 804B6220  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6224  38 9E 14 58 */	addi r4, r30, 0x1458
/* 804B6228  48 00 52 7D */	bl __as__4cXyzFRC4cXyz
/* 804B622C  4B D4 3E C4 */	b dMw_offMenuRing__Fv
/* 804B6230  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B6234  38 80 00 01 */	li r4, 1
/* 804B6238  4B CA CD D4 */	b SetTrimSize__9dCamera_cFl
/* 804B623C  C0 1F 02 88 */	lfs f0, 0x288(r31)
/* 804B6240  D0 1E 14 08 */	stfs f0, 0x1408(r30)
lbl_804B6244:
/* 804B6244  3B 60 00 01 */	li r27, 1
/* 804B6248  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B624C  2C 00 00 08 */	cmpwi r0, 8
/* 804B6250  40 81 00 28 */	ble lbl_804B6278
/* 804B6254  48 00 4F 9D */	bl daAlink_getAlinkActorClass__Fv
/* 804B6258  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 804B625C  A8 03 05 9E */	lha r0, 0x59e(r3)
/* 804B6260  7C 04 02 14 */	add r0, r4, r0
/* 804B6264  7C 04 07 34 */	extsh r4, r0
/* 804B6268  38 7E 14 18 */	addi r3, r30, 0x1418
/* 804B626C  38 A0 00 06 */	li r5, 6
/* 804B6270  38 C0 07 D0 */	li r6, 0x7d0
/* 804B6274  4B DB A3 94 */	b cLib_addCalcAngleS2__FPssss
lbl_804B6278:
/* 804B6278  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 804B627C  D0 1E 14 20 */	stfs f0, 0x1420(r30)
/* 804B6280  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B6284  2C 00 00 03 */	cmpwi r0, 3
/* 804B6288  40 82 00 60 */	bne lbl_804B62E8
/* 804B628C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B6290  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B6294  48 00 52 11 */	bl __as__4cXyzFRC4cXyz
/* 804B6298  C0 61 00 E8 */	lfs f3, 0xe8(r1)
/* 804B629C  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 804B62A0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804B62A4  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804B62A8  EC 01 00 2A */	fadds f0, f1, f0
/* 804B62AC  EC 02 00 2A */	fadds f0, f2, f0
/* 804B62B0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B62B4  40 81 00 08 */	ble lbl_804B62BC
/* 804B62B8  D0 01 00 E8 */	stfs f0, 0xe8(r1)
lbl_804B62BC:
/* 804B62BC  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B62C0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B62C4  2C 00 00 04 */	cmpwi r0, 4
/* 804B62C8  40 82 00 0C */	bne lbl_804B62D4
/* 804B62CC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 804B62D0  48 00 00 08 */	b lbl_804B62D8
lbl_804B62D4:
/* 804B62D4  C0 3F 00 60 */	lfs f1, 0x60(r31)
lbl_804B62D8:
/* 804B62D8  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B62DC  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804B62E0  4B DB 97 5C */	b cLib_addCalc2__FPffff
/* 804B62E4  48 00 01 10 */	b lbl_804B63F4
lbl_804B62E8:
/* 804B62E8  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B62EC  C0 3F 02 88 */	lfs f1, 0x288(r31)
/* 804B62F0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804B62F4  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B62F8  4B DB 97 44 */	b cLib_addCalc2__FPffff
/* 804B62FC  38 7E 14 1C */	addi r3, r30, 0x141c
/* 804B6300  C0 3F 02 34 */	lfs f1, 0x234(r31)
/* 804B6304  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B6308  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 804B630C  4B DB 97 30 */	b cLib_addCalc2__FPffff
/* 804B6310  38 7E 14 24 */	addi r3, r30, 0x1424
/* 804B6314  C0 3F 02 8C */	lfs f1, 0x28c(r31)
/* 804B6318  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B631C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804B6320  4B DB 97 1C */	b cLib_addCalc2__FPffff
/* 804B6324  38 7E 14 28 */	addi r3, r30, 0x1428
/* 804B6328  C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 804B632C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B6330  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804B6334  4B DB 97 08 */	b cLib_addCalc2__FPffff
/* 804B6338  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B633C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B6340  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6344  A8 9E 14 18 */	lha r4, 0x1418(r30)
/* 804B6348  4B B5 60 94 */	b mDoMtx_YrotS__FPA4_fs
/* 804B634C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6350  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6354  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6358  C0 1E 14 1C */	lfs f0, 0x141c(r30)
/* 804B635C  FC 00 00 50 */	fneg f0, f0
/* 804B6360  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6364  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6368  38 81 00 F0 */	addi r4, r1, 0xf0
/* 804B636C  4B DB AB 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6370  38 61 00 F0 */	addi r3, r1, 0xf0
/* 804B6374  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6378  7C 65 1B 78 */	mr r5, r3
/* 804B637C  4B E9 0D 14 */	b PSVECAdd
/* 804B6380  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B6384  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 804B6388  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B638C  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804B6390  4B DB 96 AC */	b cLib_addCalc2__FPffff
/* 804B6394  38 7E 13 C0 */	addi r3, r30, 0x13c0
/* 804B6398  C0 21 00 F8 */	lfs f1, 0xf8(r1)
/* 804B639C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B63A0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804B63A4  4B DB 96 98 */	b cLib_addCalc2__FPffff
/* 804B63A8  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 804B63AC  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 804B63B0  EC 21 00 2A */	fadds f1, f1, f0
/* 804B63B4  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 804B63B8  38 7E 13 BC */	addi r3, r30, 0x13bc
/* 804B63BC  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804B63C0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804B63C4  4B DB 96 78 */	b cLib_addCalc2__FPffff
/* 804B63C8  C0 1E 14 28 */	lfs f0, 0x1428(r30)
/* 804B63CC  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B63D0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B63D4  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B63D8  38 61 01 08 */	addi r3, r1, 0x108
/* 804B63DC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B63E0  4B DB AB 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 804B63E4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B63E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B63EC  7C 65 1B 78 */	mr r5, r3
/* 804B63F0  4B E9 0C A0 */	b PSVECAdd
lbl_804B63F4:
/* 804B63F4  38 7E 14 10 */	addi r3, r30, 0x1410
/* 804B63F8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B63FC  FC 40 08 90 */	fmr f2, f1
/* 804B6400  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 804B6404  4B DB 96 38 */	b cLib_addCalc2__FPffff
/* 804B6408  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B640C  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6410  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 804B6414  C0 7F 01 C0 */	lfs f3, 0x1c0(r31)
/* 804B6418  C0 1E 14 10 */	lfs f0, 0x1410(r30)
/* 804B641C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B6420  4B DB 96 1C */	b cLib_addCalc2__FPffff
/* 804B6424  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B6428  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B642C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804B6430  C0 7F 01 C0 */	lfs f3, 0x1c0(r31)
/* 804B6434  C0 1E 14 10 */	lfs f0, 0x1410(r30)
/* 804B6438  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B643C  4B DB 96 00 */	b cLib_addCalc2__FPffff
/* 804B6440  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B6444  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6448  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 804B644C  C0 7F 01 C0 */	lfs f3, 0x1c0(r31)
/* 804B6450  C0 1E 14 10 */	lfs f0, 0x1410(r30)
/* 804B6454  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B6458  4B DB 95 E4 */	b cLib_addCalc2__FPffff
/* 804B645C  48 00 4D 95 */	bl daAlink_getAlinkActorClass__Fv
/* 804B6460  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 804B6464  A8 03 05 9E */	lha r0, 0x59e(r3)
/* 804B6468  7C 04 02 14 */	add r0, r4, r0
/* 804B646C  7C 03 07 34 */	extsh r3, r0
/* 804B6470  A8 1E 14 18 */	lha r0, 0x1418(r30)
/* 804B6474  7C 03 00 50 */	subf r0, r3, r0
/* 804B6478  B0 1E 14 1A */	sth r0, 0x141a(r30)
/* 804B647C  C0 1E 14 08 */	lfs f0, 0x1408(r30)
/* 804B6480  D0 1E 14 0C */	stfs f0, 0x140c(r30)
/* 804B6484  48 00 19 CC */	b lbl_804B7E50
lbl_804B6488:
/* 804B6488  3B 60 00 01 */	li r27, 1
/* 804B648C  38 7E 14 1C */	addi r3, r30, 0x141c
/* 804B6490  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 804B6494  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6498  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 804B649C  C0 1E 14 10 */	lfs f0, 0x1410(r30)
/* 804B64A0  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B64A4  4B DB 95 98 */	b cLib_addCalc2__FPffff
/* 804B64A8  C3 FE 13 B0 */	lfs f31, 0x13b0(r30)
/* 804B64AC  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 804B64B0  EF FF 00 32 */	fmuls f31, f31, f0
/* 804B64B4  38 61 00 9C */	addi r3, r1, 0x9c
/* 804B64B8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B64BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804B64C0  4B DB 06 74 */	b __mi__4cXyzCFRC3Vec
/* 804B64C4  38 61 01 08 */	addi r3, r1, 0x108
/* 804B64C8  38 81 00 9C */	addi r4, r1, 0x9c
/* 804B64CC  48 00 4F D9 */	bl __as__4cXyzFRC4cXyz
/* 804B64D0  38 61 01 08 */	addi r3, r1, 0x108
/* 804B64D4  48 00 4E BD */	bl abs__4cXyzCFv
/* 804B64D8  C0 1E 14 0C */	lfs f0, 0x140c(r30)
/* 804B64DC  EC 00 F8 2A */	fadds f0, f0, f31
/* 804B64E0  D0 1E 14 0C */	stfs f0, 0x140c(r30)
/* 804B64E4  C0 7F 01 00 */	lfs f3, 0x100(r31)
/* 804B64E8  C0 5F 02 94 */	lfs f2, 0x294(r31)
/* 804B64EC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 804B64F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B64F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B64F8  EC 43 00 28 */	fsubs f2, f3, f0
/* 804B64FC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6500  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B6504  40 80 00 08 */	bge lbl_804B650C
/* 804B6508  FC 40 00 90 */	fmr f2, f0
lbl_804B650C:
/* 804B650C  C0 3E 14 0C */	lfs f1, 0x140c(r30)
/* 804B6510  C0 1F 02 88 */	lfs f0, 0x288(r31)
/* 804B6514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B6518  40 81 00 0C */	ble lbl_804B6524
/* 804B651C  D0 1E 14 0C */	stfs f0, 0x140c(r30)
/* 804B6520  48 00 00 18 */	b lbl_804B6538
lbl_804B6524:
/* 804B6524  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B6528  EC 00 10 2A */	fadds f0, f0, f2
/* 804B652C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B6530  40 80 00 08 */	bge lbl_804B6538
/* 804B6534  D0 1E 14 0C */	stfs f0, 0x140c(r30)
lbl_804B6538:
/* 804B6538  88 7E 14 07 */	lbz r3, 0x1407(r30)
/* 804B653C  28 03 00 00 */	cmplwi r3, 0
/* 804B6540  41 82 00 24 */	beq lbl_804B6564
/* 804B6544  38 03 FF FF */	addi r0, r3, -1
/* 804B6548  98 1E 14 07 */	stb r0, 0x1407(r30)
/* 804B654C  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B6550  C0 3E 14 0C */	lfs f1, 0x140c(r30)
/* 804B6554  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 804B6558  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B655C  4B DB 94 E0 */	b cLib_addCalc2__FPffff
/* 804B6560  48 00 00 18 */	b lbl_804B6578
lbl_804B6564:
/* 804B6564  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B6568  C0 3E 14 0C */	lfs f1, 0x140c(r30)
/* 804B656C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6570  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 804B6574  4B DB 94 C8 */	b cLib_addCalc2__FPffff
lbl_804B6578:
/* 804B6578  C0 3E 13 AC */	lfs f1, 0x13ac(r30)
/* 804B657C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804B6580  EC 21 00 32 */	fmuls f1, f1, f0
/* 804B6584  A8 7E 14 1A */	lha r3, 0x141a(r30)
/* 804B6588  FC 00 08 1E */	fctiwz f0, f1
/* 804B658C  D8 01 02 30 */	stfd f0, 0x230(r1)
/* 804B6590  80 01 02 34 */	lwz r0, 0x234(r1)
/* 804B6594  7C 03 02 14 */	add r0, r3, r0
/* 804B6598  B0 1E 14 1A */	sth r0, 0x141a(r30)
/* 804B659C  A8 1E 14 1A */	lha r0, 0x141a(r30)
/* 804B65A0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804B65A4  40 81 00 10 */	ble lbl_804B65B4
/* 804B65A8  38 00 10 00 */	li r0, 0x1000
/* 804B65AC  B0 1E 14 1A */	sth r0, 0x141a(r30)
/* 804B65B0  48 00 00 14 */	b lbl_804B65C4
lbl_804B65B4:
/* 804B65B4  2C 00 F0 00 */	cmpwi r0, -4096
/* 804B65B8  40 80 00 0C */	bge lbl_804B65C4
/* 804B65BC  38 00 F0 00 */	li r0, -4096
/* 804B65C0  B0 1E 14 1A */	sth r0, 0x141a(r30)
lbl_804B65C4:
/* 804B65C4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804B65C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804B65CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B65D0  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804B65D4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804B65D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804B65DC  EC 42 00 28 */	fsubs f2, f2, f0
/* 804B65E0  D0 41 01 10 */	stfs f2, 0x110(r1)
/* 804B65E4  4B DB 10 90 */	b cM_atan2s__Fff
/* 804B65E8  A8 1E 14 1A */	lha r0, 0x141a(r30)
/* 804B65EC  7C 00 1A 14 */	add r0, r0, r3
/* 804B65F0  7C 04 07 34 */	extsh r4, r0
/* 804B65F4  38 7E 14 18 */	addi r3, r30, 0x1418
/* 804B65F8  38 A0 00 02 */	li r5, 2
/* 804B65FC  38 C0 10 00 */	li r6, 0x1000
/* 804B6600  4B DB A0 08 */	b cLib_addCalcAngleS2__FPssss
/* 804B6604  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B6608  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B660C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6610  A8 9E 14 18 */	lha r4, 0x1418(r30)
/* 804B6614  4B B5 5D C8 */	b mDoMtx_YrotS__FPA4_fs
/* 804B6618  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B661C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6620  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B6624  2C 00 00 05 */	cmpwi r0, 5
/* 804B6628  40 82 00 24 */	bne lbl_804B664C
/* 804B662C  28 19 00 00 */	cmplwi r25, 0
/* 804B6630  41 82 00 1C */	beq lbl_804B664C
/* 804B6634  A8 19 05 B6 */	lha r0, 0x5b6(r25)
/* 804B6638  2C 00 00 34 */	cmpwi r0, 0x34
/* 804B663C  41 80 00 10 */	blt lbl_804B664C
/* 804B6640  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 804B6644  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6648  48 00 00 0C */	b lbl_804B6654
lbl_804B664C:
/* 804B664C  C0 1F 02 9C */	lfs f0, 0x29c(r31)
/* 804B6650  D0 01 01 0C */	stfs f0, 0x10c(r1)
lbl_804B6654:
/* 804B6654  C0 1E 14 1C */	lfs f0, 0x141c(r30)
/* 804B6658  FC 00 00 50 */	fneg f0, f0
/* 804B665C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6660  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6664  38 81 00 F0 */	addi r4, r1, 0xf0
/* 804B6668  4B DB A8 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B666C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 804B6670  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6674  7C 65 1B 78 */	mr r5, r3
/* 804B6678  4B E9 0A 18 */	b PSVECAdd
/* 804B667C  38 61 00 90 */	addi r3, r1, 0x90
/* 804B6680  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B6684  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 804B6688  4B DB 04 AC */	b __mi__4cXyzCFRC3Vec
/* 804B668C  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6690  38 81 00 90 */	addi r4, r1, 0x90
/* 804B6694  48 00 4E 11 */	bl __as__4cXyzFRC4cXyz
/* 804B6698  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 804B669C  C0 41 01 10 */	lfs f2, 0x110(r1)
/* 804B66A0  4B DB 0F D4 */	b cM_atan2s__Fff
/* 804B66A4  7C 77 07 34 */	extsh r23, r3
/* 804B66A8  C0 3E 14 0C */	lfs f1, 0x140c(r30)
/* 804B66AC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804B66B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B66B4  40 80 00 0C */	bge lbl_804B66C0
/* 804B66B8  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 804B66BC  48 00 00 08 */	b lbl_804B66C4
lbl_804B66C0:
/* 804B66C0  C0 3F 00 58 */	lfs f1, 0x58(r31)
lbl_804B66C4:
/* 804B66C4  C3 FF 00 78 */	lfs f31, 0x78(r31)
/* 804B66C8  88 1E 14 07 */	lbz r0, 0x1407(r30)
/* 804B66CC  28 00 00 00 */	cmplwi r0, 0
/* 804B66D0  41 82 00 1C */	beq lbl_804B66EC
/* 804B66D4  38 7E 14 2C */	addi r3, r30, 0x142c
/* 804B66D8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 804B66DC  C0 7F 01 C0 */	lfs f3, 0x1c0(r31)
/* 804B66E0  4B DB 93 5C */	b cLib_addCalc2__FPffff
/* 804B66E4  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 804B66E8  48 00 00 14 */	b lbl_804B66FC
lbl_804B66EC:
/* 804B66EC  38 7E 14 2C */	addi r3, r30, 0x142c
/* 804B66F0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804B66F4  C0 7F 01 C0 */	lfs f3, 0x1c0(r31)
/* 804B66F8  4B DB 93 44 */	b cLib_addCalc2__FPffff
lbl_804B66FC:
/* 804B66FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B6700  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B6704  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6708  7E E4 BB 78 */	mr r4, r23
/* 804B670C  4B B5 5C D0 */	b mDoMtx_YrotS__FPA4_fs
/* 804B6710  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6714  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6718  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B671C  C0 1E 14 2C */	lfs f0, 0x142c(r30)
/* 804B6720  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6724  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6728  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B672C  4B DB A7 C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6730  38 61 00 F0 */	addi r3, r1, 0xf0
/* 804B6734  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B6738  7C 65 1B 78 */	mr r5, r3
/* 804B673C  4B E9 09 54 */	b PSVECAdd
/* 804B6740  38 61 00 84 */	addi r3, r1, 0x84
/* 804B6744  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B6748  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804B674C  4B DB 03 E8 */	b __mi__4cXyzCFRC3Vec
/* 804B6750  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6754  38 81 00 84 */	addi r4, r1, 0x84
/* 804B6758  48 00 4D 4D */	bl __as__4cXyzFRC4cXyz
/* 804B675C  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 804B6760  C0 41 01 10 */	lfs f2, 0x110(r1)
/* 804B6764  4B DB 0F 10 */	b cM_atan2s__Fff
/* 804B6768  7C 64 1B 78 */	mr r4, r3
/* 804B676C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B6770  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B6774  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6778  4B B5 5C 64 */	b mDoMtx_YrotS__FPA4_fs
/* 804B677C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6780  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6784  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B6788  C0 3E 14 10 */	lfs f1, 0x1410(r30)
/* 804B678C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B6790  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6794  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 804B6798  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B679C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B67A0  38 61 01 08 */	addi r3, r1, 0x108
/* 804B67A4  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B67A8  4B DB A7 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B67AC  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 804B67B0  FC 00 02 10 */	fabs f0, f0
/* 804B67B4  FC 60 00 18 */	frsp f3, f0
/* 804B67B8  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B67BC  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 804B67C0  FC 40 F8 90 */	fmr f2, f31
/* 804B67C4  4B DB 92 78 */	b cLib_addCalc2__FPffff
/* 804B67C8  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 804B67CC  FC 00 02 10 */	fabs f0, f0
/* 804B67D0  FC 60 00 18 */	frsp f3, f0
/* 804B67D4  38 7E 13 BC */	addi r3, r30, 0x13bc
/* 804B67D8  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 804B67DC  FC 40 F8 90 */	fmr f2, f31
/* 804B67E0  4B DB 92 5C */	b cLib_addCalc2__FPffff
/* 804B67E4  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 804B67E8  FC 00 02 10 */	fabs f0, f0
/* 804B67EC  FC 60 00 18 */	frsp f3, f0
/* 804B67F0  38 7E 13 C0 */	addi r3, r30, 0x13c0
/* 804B67F4  C0 21 00 F8 */	lfs f1, 0xf8(r1)
/* 804B67F8  FC 40 F8 90 */	fmr f2, f31
/* 804B67FC  4B DB 92 40 */	b cLib_addCalc2__FPffff
/* 804B6800  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B6804  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B6808  48 00 4C 9D */	bl __as__4cXyzFRC4cXyz
/* 804B680C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B6810  2C 00 00 04 */	cmpwi r0, 4
/* 804B6814  40 82 00 20 */	bne lbl_804B6834
/* 804B6818  C0 41 00 E8 */	lfs f2, 0xe8(r1)
/* 804B681C  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 804B6820  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B6824  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B6828  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B682C  40 80 00 08 */	bge lbl_804B6834
/* 804B6830  D0 01 00 E8 */	stfs f0, 0xe8(r1)
lbl_804B6834:
/* 804B6834  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6838  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B683C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B6840  C0 3E 14 10 */	lfs f1, 0x1410(r30)
/* 804B6844  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B6848  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B684C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 804B6850  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B6854  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6858  38 61 01 08 */	addi r3, r1, 0x108
/* 804B685C  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B6860  4B DB A6 8C */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6864  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B6868  38 9E 14 34 */	addi r4, r30, 0x1434
/* 804B686C  7C 65 1B 78 */	mr r5, r3
/* 804B6870  4B E9 08 20 */	b PSVECAdd
/* 804B6874  88 1E 14 07 */	lbz r0, 0x1407(r30)
/* 804B6878  28 00 00 64 */	cmplwi r0, 0x64
/* 804B687C  40 81 00 1C */	ble lbl_804B6898
/* 804B6880  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6884  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6888  48 00 4C 1D */	bl __as__4cXyzFRC4cXyz
/* 804B688C  38 00 00 14 */	li r0, 0x14
/* 804B6890  98 1E 14 07 */	stb r0, 0x1407(r30)
/* 804B6894  48 00 00 58 */	b lbl_804B68EC
lbl_804B6898:
/* 804B6898  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 804B689C  FC 00 02 10 */	fabs f0, f0
/* 804B68A0  FC 60 00 18 */	frsp f3, f0
/* 804B68A4  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B68A8  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B68AC  C0 5F 02 44 */	lfs f2, 0x244(r31)
/* 804B68B0  4B DB 91 8C */	b cLib_addCalc2__FPffff
/* 804B68B4  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 804B68B8  FC 00 02 10 */	fabs f0, f0
/* 804B68BC  FC 60 00 18 */	frsp f3, f0
/* 804B68C0  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B68C4  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B68C8  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804B68CC  4B DB 91 70 */	b cLib_addCalc2__FPffff
/* 804B68D0  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 804B68D4  FC 00 02 10 */	fabs f0, f0
/* 804B68D8  FC 60 00 18 */	frsp f3, f0
/* 804B68DC  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B68E0  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B68E4  C0 5F 02 44 */	lfs f2, 0x244(r31)
/* 804B68E8  4B DB 91 54 */	b cLib_addCalc2__FPffff
lbl_804B68EC:
/* 804B68EC  38 7E 14 10 */	addi r3, r30, 0x1410
/* 804B68F0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B68F4  FC 40 08 90 */	fmr f2, f1
/* 804B68F8  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 804B68FC  4B DB 91 40 */	b cLib_addCalc2__FPffff
/* 804B6900  38 7E 14 34 */	addi r3, r30, 0x1434
/* 804B6904  C0 3E 14 40 */	lfs f1, 0x1440(r30)
/* 804B6908  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B690C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804B6910  C0 1E 14 14 */	lfs f0, 0x1414(r30)
/* 804B6914  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B6918  4B DB 91 24 */	b cLib_addCalc2__FPffff
/* 804B691C  38 7E 14 38 */	addi r3, r30, 0x1438
/* 804B6920  C0 3E 14 44 */	lfs f1, 0x1444(r30)
/* 804B6924  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B6928  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804B692C  C0 1E 14 14 */	lfs f0, 0x1414(r30)
/* 804B6930  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B6934  4B DB 91 08 */	b cLib_addCalc2__FPffff
/* 804B6938  38 7E 14 3C */	addi r3, r30, 0x143c
/* 804B693C  C0 3E 14 48 */	lfs f1, 0x1448(r30)
/* 804B6940  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804B6944  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804B6948  C0 1E 14 14 */	lfs f0, 0x1414(r30)
/* 804B694C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B6950  4B DB 90 EC */	b cLib_addCalc2__FPffff
/* 804B6954  38 7E 14 14 */	addi r3, r30, 0x1414
/* 804B6958  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B695C  FC 40 08 90 */	fmr f2, f1
/* 804B6960  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 804B6964  4B DB 90 D8 */	b cLib_addCalc2__FPffff
/* 804B6968  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 804B696C  2C 00 00 00 */	cmpwi r0, 0
/* 804B6970  40 82 14 E0 */	bne lbl_804B7E50
/* 804B6974  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 804B6978  4B DB 0F DC */	b cM_rndF__Ff
/* 804B697C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B6980  EC 00 08 2A */	fadds f0, f0, f1
/* 804B6984  FC 00 00 1E */	fctiwz f0, f0
/* 804B6988  D8 01 02 30 */	stfd f0, 0x230(r1)
/* 804B698C  80 01 02 34 */	lwz r0, 0x234(r1)
/* 804B6990  B0 1E 05 7E */	sth r0, 0x57e(r30)
/* 804B6994  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 804B6998  C0 3F 02 88 */	lfs f1, 0x288(r31)
/* 804B699C  C0 1E 14 08 */	lfs f0, 0x1408(r30)
/* 804B69A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B69A4  EF E2 00 32 */	fmuls f31, f2, f0
/* 804B69A8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804B69AC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804B69B0  40 81 14 A0 */	ble lbl_804B7E50
/* 804B69B4  FC 20 F8 90 */	fmr f1, f31
/* 804B69B8  4B DB 0F D4 */	b cM_rndFX__Ff
/* 804B69BC  D0 3E 14 40 */	stfs f1, 0x1440(r30)
/* 804B69C0  FC 20 F8 90 */	fmr f1, f31
/* 804B69C4  4B DB 0F C8 */	b cM_rndFX__Ff
/* 804B69C8  D0 3E 14 44 */	stfs f1, 0x1444(r30)
/* 804B69CC  FC 20 F8 90 */	fmr f1, f31
/* 804B69D0  4B DB 0F BC */	b cM_rndFX__Ff
/* 804B69D4  D0 3E 14 48 */	stfs f1, 0x1448(r30)
/* 804B69D8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B69DC  D0 1E 14 14 */	stfs f0, 0x1414(r30)
/* 804B69E0  48 00 14 70 */	b lbl_804B7E50
lbl_804B69E4:
/* 804B69E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B69E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B69EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B69F0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B69F4  4B B5 59 E8 */	b mDoMtx_YrotS__FPA4_fs
/* 804B69F8  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 804B69FC  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6A00  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6A04  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6A08  C0 1F 02 A4 */	lfs f0, 0x2a4(r31)
/* 804B6A0C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6A10  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6A14  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B6A18  4B DB A4 D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6A1C  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B6A20  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6A24  7C 65 1B 78 */	mr r5, r3
/* 804B6A28  4B E9 06 68 */	b PSVECAdd
/* 804B6A2C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 804B6A30  C0 39 05 BC */	lfs f1, 0x5bc(r25)
/* 804B6A34  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804B6A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B6A3C  40 81 00 08 */	ble lbl_804B6A44
/* 804B6A40  EC 41 00 28 */	fsubs f2, f1, f0
lbl_804B6A44:
/* 804B6A44  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804B6A48  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6A4C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6A50  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6A54  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804B6A58  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804B6A5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B6A60  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B6A64  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 804B6A68  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B6A6C  2C 00 00 04 */	cmpwi r0, 4
/* 804B6A70  40 82 00 10 */	bne lbl_804B6A80
/* 804B6A74  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 804B6A78  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6A7C  D0 01 01 0C */	stfs f0, 0x10c(r1)
lbl_804B6A80:
/* 804B6A80  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6A84  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6A88  4B DB A4 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6A8C  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6A90  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804B6A94  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6A98  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804B6A9C  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6AA0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804B6AA4  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6AA8  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 804B6AAC  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B6AB0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B6AB4  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6AB8  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 804B6ABC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 804B6AC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B6AC4  40 80 00 08 */	bge lbl_804B6ACC
/* 804B6AC8  D0 21 00 E8 */	stfs f1, 0xe8(r1)
lbl_804B6ACC:
/* 804B6ACC  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6AD0  2C 00 00 00 */	cmpwi r0, 0
/* 804B6AD4  40 82 00 28 */	bne lbl_804B6AFC
/* 804B6AD8  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6ADC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6AE0  48 00 49 C5 */	bl __as__4cXyzFRC4cXyz
/* 804B6AE4  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B6AE8  38 80 00 01 */	li r4, 1
/* 804B6AEC  4B CA C5 20 */	b SetTrimSize__9dCamera_cFl
/* 804B6AF0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804B6AF4  D0 1E 14 08 */	stfs f0, 0x1408(r30)
/* 804B6AF8  48 00 00 40 */	b lbl_804B6B38
lbl_804B6AFC:
/* 804B6AFC  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6B00  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6B04  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6B08  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6B0C  4B DB 8F 30 */	b cLib_addCalc2__FPffff
/* 804B6B10  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B6B14  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B6B18  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6B1C  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6B20  4B DB 8F 1C */	b cLib_addCalc2__FPffff
/* 804B6B24  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B6B28  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6B2C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6B30  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6B34  4B DB 8F 08 */	b cLib_addCalc2__FPffff
lbl_804B6B38:
/* 804B6B38  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B6B3C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 804B6B40  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804B6B44  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804B6B48  4B DB 8E F4 */	b cLib_addCalc2__FPffff
/* 804B6B4C  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804B6B50  1C 00 02 BC */	mulli r0, r0, 0x2bc
/* 804B6B54  7C 03 07 34 */	extsh r3, r0
/* 804B6B58  48 00 48 25 */	bl cM_ssin__Fs
/* 804B6B5C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804B6B60  EC 20 00 72 */	fmuls f1, f0, f1
/* 804B6B64  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804B6B68  EC 20 08 2A */	fadds f1, f0, f1
/* 804B6B6C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B6B70  EC 00 08 2A */	fadds f0, f0, f1
/* 804B6B74  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804B6B78  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804B6B7C  D0 1E 0F 78 */	stfs f0, 0xf78(r30)
/* 804B6B80  48 00 12 D0 */	b lbl_804B7E50
lbl_804B6B84:
/* 804B6B84  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B6B88  C0 3F 02 88 */	lfs f1, 0x288(r31)
/* 804B6B8C  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804B6B90  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804B6B94  4B DB 8E A8 */	b cLib_addCalc2__FPffff
/* 804B6B98  48 00 46 59 */	bl daAlink_getAlinkActorClass__Fv
/* 804B6B9C  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 804B6BA0  A8 03 05 9E */	lha r0, 0x59e(r3)
/* 804B6BA4  7C 04 02 14 */	add r0, r4, r0
/* 804B6BA8  7C 04 07 34 */	extsh r4, r0
/* 804B6BAC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B6BB0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B6BB4  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6BB8  4B B5 58 24 */	b mDoMtx_YrotS__FPA4_fs
/* 804B6BBC  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 804B6BC0  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6BC4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804B6BC8  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6BCC  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 804B6BD0  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6BD4  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6BD8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 804B6BDC  4B DB A3 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6BE0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 804B6BE4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6BE8  7C 65 1B 78 */	mr r5, r3
/* 804B6BEC  4B E9 04 A4 */	b PSVECAdd
/* 804B6BF0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804B6BF4  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6BF8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6BFC  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6C00  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804B6C04  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6C08  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6C0C  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6C10  4B DB A2 DC */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6C14  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B6C18  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6C1C  7C 65 1B 78 */	mr r5, r3
/* 804B6C20  4B E9 04 70 */	b PSVECAdd
/* 804B6C24  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6C28  2C 00 00 00 */	cmpwi r0, 0
/* 804B6C2C  40 82 00 20 */	bne lbl_804B6C4C
/* 804B6C30  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B6C34  38 81 00 F0 */	addi r4, r1, 0xf0
/* 804B6C38  48 00 48 6D */	bl __as__4cXyzFRC4cXyz
/* 804B6C3C  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6C40  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6C44  48 00 48 61 */	bl __as__4cXyzFRC4cXyz
/* 804B6C48  48 00 00 40 */	b lbl_804B6C88
lbl_804B6C4C:
/* 804B6C4C  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6C50  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6C54  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6C58  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6C5C  4B DB 8D E0 */	b cLib_addCalc2__FPffff
/* 804B6C60  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B6C64  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B6C68  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6C6C  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6C70  4B DB 8D CC */	b cLib_addCalc2__FPffff
/* 804B6C74  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B6C78  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6C7C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6C80  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6C84  4B DB 8D B8 */	b cLib_addCalc2__FPffff
lbl_804B6C88:
/* 804B6C88  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6C8C  2C 00 00 44 */	cmpwi r0, 0x44
/* 804B6C90  41 80 00 34 */	blt lbl_804B6CC4
/* 804B6C94  38 00 00 02 */	li r0, 2
/* 804B6C98  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B6C9C  38 00 00 14 */	li r0, 0x14
/* 804B6CA0  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B6CA4  48 00 45 4D */	bl daAlink_getAlinkActorClass__Fv
/* 804B6CA8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804B6CAC  B0 1E 14 18 */	sth r0, 0x1418(r30)
/* 804B6CB0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6CB4  D0 1E 14 10 */	stfs f0, 0x1410(r30)
/* 804B6CB8  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B6CBC  38 80 00 01 */	li r4, 1
/* 804B6CC0  4B CA C3 4C */	b SetTrimSize__9dCamera_cFl
lbl_804B6CC4:
/* 804B6CC4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804B6CC8  D0 1E 0F 78 */	stfs f0, 0xf78(r30)
/* 804B6CCC  38 00 00 14 */	li r0, 0x14
/* 804B6CD0  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 804B6CD4  48 00 11 7C */	b lbl_804B7E50
lbl_804B6CD8:
/* 804B6CD8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804B6CDC  D0 1E 14 08 */	stfs f0, 0x1408(r30)
/* 804B6CE0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B6CE4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B6CE8  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6CEC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B6CF0  4B B5 56 EC */	b mDoMtx_YrotS__FPA4_fs
/* 804B6CF4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804B6CF8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6CFC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804B6D00  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6D04  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 804B6D08  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6D0C  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6D10  38 81 00 F0 */	addi r4, r1, 0xf0
/* 804B6D14  4B DB A1 D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6D18  38 61 00 F0 */	addi r3, r1, 0xf0
/* 804B6D1C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6D20  7C 65 1B 78 */	mr r5, r3
/* 804B6D24  4B E9 03 6C */	b PSVECAdd
/* 804B6D28  80 18 00 40 */	lwz r0, 0x40(r24)
/* 804B6D2C  28 00 00 00 */	cmplwi r0, 0
/* 804B6D30  41 82 00 0C */	beq lbl_804B6D3C
/* 804B6D34  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804B6D38  48 00 00 08 */	b lbl_804B6D40
lbl_804B6D3C:
/* 804B6D3C  C0 1F 00 58 */	lfs f0, 0x58(r31)
lbl_804B6D40:
/* 804B6D40  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6D44  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 804B6D48  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6D4C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6D50  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6D54  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6D58  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6D5C  4B DB A1 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6D60  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B6D64  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6D68  7C 65 1B 78 */	mr r5, r3
/* 804B6D6C  4B E9 03 24 */	b PSVECAdd
/* 804B6D70  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6D74  2C 00 00 00 */	cmpwi r0, 0
/* 804B6D78  40 82 00 20 */	bne lbl_804B6D98
/* 804B6D7C  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B6D80  38 81 00 F0 */	addi r4, r1, 0xf0
/* 804B6D84  48 00 47 21 */	bl __as__4cXyzFRC4cXyz
/* 804B6D88  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6D8C  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6D90  48 00 47 15 */	bl __as__4cXyzFRC4cXyz
/* 804B6D94  48 00 00 40 */	b lbl_804B6DD4
lbl_804B6D98:
/* 804B6D98  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6D9C  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6DA0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6DA4  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6DA8  4B DB 8C 94 */	b cLib_addCalc2__FPffff
/* 804B6DAC  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B6DB0  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B6DB4  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6DB8  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6DBC  4B DB 8C 80 */	b cLib_addCalc2__FPffff
/* 804B6DC0  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B6DC4  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6DC8  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6DCC  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6DD0  4B DB 8C 6C */	b cLib_addCalc2__FPffff
lbl_804B6DD4:
/* 804B6DD4  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 804B6DD8  2C 00 00 00 */	cmpwi r0, 0
/* 804B6DDC  41 82 10 74 */	beq lbl_804B7E50
/* 804B6DE0  38 00 00 0F */	li r0, 0xf
/* 804B6DE4  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B6DE8  48 00 10 68 */	b lbl_804B7E50
lbl_804B6DEC:
/* 804B6DEC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B6DF0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B6DF4  80 63 00 00 */	lwz r3, 0(r3)
/* 804B6DF8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B6DFC  4B B5 55 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 804B6E00  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 804B6E04  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6E08  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6E0C  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6E10  C0 1F 02 A4 */	lfs f0, 0x2a4(r31)
/* 804B6E14  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6E18  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6E1C  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B6E20  4B DB A0 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6E24  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B6E28  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B6E2C  7C 65 1B 78 */	mr r5, r3
/* 804B6E30  4B E9 02 60 */	b PSVECAdd
/* 804B6E34  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804B6E38  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B6E3C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B6E40  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B6E44  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804B6E48  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B6E4C  38 61 01 08 */	addi r3, r1, 0x108
/* 804B6E50  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6E54  4B DB A0 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B6E58  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6E5C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804B6E60  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6E64  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804B6E68  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6E6C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804B6E70  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6E74  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 804B6E78  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B6E7C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804B6E80  EC 01 00 2A */	fadds f0, f1, f0
/* 804B6E84  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 804B6E88  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 804B6E8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B6E90  40 80 00 08 */	bge lbl_804B6E98
/* 804B6E94  D0 21 00 E8 */	stfs f1, 0xe8(r1)
lbl_804B6E98:
/* 804B6E98  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6E9C  2C 00 00 02 */	cmpwi r0, 2
/* 804B6EA0  41 81 00 28 */	bgt lbl_804B6EC8
/* 804B6EA4  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6EA8  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804B6EAC  48 00 45 F9 */	bl __as__4cXyzFRC4cXyz
/* 804B6EB0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B6EB4  38 80 00 01 */	li r4, 1
/* 804B6EB8  4B CA C1 54 */	b SetTrimSize__9dCamera_cFl
/* 804B6EBC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804B6EC0  D0 1E 14 08 */	stfs f0, 0x1408(r30)
/* 804B6EC4  48 00 00 40 */	b lbl_804B6F04
lbl_804B6EC8:
/* 804B6EC8  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B6ECC  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B6ED0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6ED4  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6ED8  4B DB 8B 64 */	b cLib_addCalc2__FPffff
/* 804B6EDC  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B6EE0  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B6EE4  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6EE8  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6EEC  4B DB 8B 50 */	b cLib_addCalc2__FPffff
/* 804B6EF0  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B6EF4  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B6EF8  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B6EFC  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B6F00  4B DB 8B 3C */	b cLib_addCalc2__FPffff
lbl_804B6F04:
/* 804B6F04  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B6F08  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 804B6F0C  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804B6F10  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804B6F14  4B DB 8B 28 */	b cLib_addCalc2__FPffff
/* 804B6F18  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6F1C  2C 00 00 18 */	cmpwi r0, 0x18
/* 804B6F20  41 80 00 38 */	blt lbl_804B6F58
/* 804B6F24  38 7E 14 10 */	addi r3, r30, 0x1410
/* 804B6F28  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B6F2C  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 804B6F30  4B DB 8B 50 */	b cLib_addCalc0__FPfff
/* 804B6F34  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B6F38  2C 00 00 23 */	cmpwi r0, 0x23
/* 804B6F3C  40 82 00 1C */	bne lbl_804B6F58
/* 804B6F40  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020085@ha */
/* 804B6F44  38 63 00 85 */	addi r3, r3, 0x0085 /* 0x00020085@l */
/* 804B6F48  38 80 00 00 */	li r4, 0
/* 804B6F4C  38 A0 00 00 */	li r5, 0
/* 804B6F50  38 C0 00 00 */	li r6, 0
/* 804B6F54  48 00 43 C5 */	bl mDoAud_seStart__FUlPC3VecUlSc
lbl_804B6F58:
/* 804B6F58  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804B6F5C  D0 1E 0F 78 */	stfs f0, 0xf78(r30)
/* 804B6F60  48 00 0E F0 */	b lbl_804B7E50
lbl_804B6F64:
/* 804B6F64  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804B6F68  28 00 00 02 */	cmplwi r0, 2
/* 804B6F6C  41 82 00 44 */	beq lbl_804B6FB0
/* 804B6F70  7F C3 F3 78 */	mr r3, r30
/* 804B6F74  38 80 00 02 */	li r4, 2
/* 804B6F78  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804B6F7C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804B6F80  38 C0 00 00 */	li r6, 0
/* 804B6F84  4B B6 49 84 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804B6F88  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804B6F8C  60 00 00 02 */	ori r0, r0, 2
/* 804B6F90  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804B6F94  38 61 01 84 */	addi r3, r1, 0x184
/* 804B6F98  38 80 FF FF */	li r4, -1
/* 804B6F9C  4B BC 08 AC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 804B6FA0  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 804B6FA4  38 80 FF FF */	li r4, -1
/* 804B6FA8  4B BC 06 48 */	b __dt__11dBgS_GndChkFv
/* 804B6FAC  48 00 10 90 */	b lbl_804B803C
lbl_804B6FB0:
/* 804B6FB0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B6FB4  4B CA A5 1C */	b Stop__9dCamera_cFv
/* 804B6FB8  38 00 03 85 */	li r0, 0x385
/* 804B6FBC  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B6FC0  38 00 00 00 */	li r0, 0
/* 804B6FC4  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B6FC8  98 1E 14 6D */	stb r0, 0x146d(r30)
/* 804B6FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B6FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B6FD4  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 804B6FD8  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 804B6FDC  D0 1E 14 08 */	stfs f0, 0x1408(r30)
/* 804B6FE0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B6FE4  38 80 00 01 */	li r4, 1
/* 804B6FE8  4B CA C0 24 */	b SetTrimSize__9dCamera_cFl
/* 804B6FEC  7F A3 EB 78 */	mr r3, r29
/* 804B6FF0  48 00 43 15 */	bl changeOriginalDemo__9daPy_py_cFv
/* 804B6FF4  7F A3 EB 78 */	mr r3, r29
/* 804B6FF8  38 80 00 01 */	li r4, 1
/* 804B6FFC  38 A0 00 01 */	li r5, 1
/* 804B7000  38 C0 00 00 */	li r6, 0
/* 804B7004  38 E0 00 00 */	li r7, 0
/* 804B7008  48 00 42 E9 */	bl changeDemoMode__9daPy_py_cFUliis
/* 804B700C  C0 3A 00 D8 */	lfs f1, 0xd8(r26)
/* 804B7010  C0 1A 00 E4 */	lfs f0, 0xe4(r26)
/* 804B7014  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B7018  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804B701C  C0 5A 00 DC */	lfs f2, 0xdc(r26)
/* 804B7020  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 804B7024  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B7028  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B702C  C0 5A 00 E0 */	lfs f2, 0xe0(r26)
/* 804B7030  C0 1A 00 EC */	lfs f0, 0xec(r26)
/* 804B7034  EC 42 00 28 */	fsubs f2, f2, f0
/* 804B7038  D0 41 01 10 */	stfs f2, 0x110(r1)
/* 804B703C  4B DB 06 38 */	b cM_atan2s__Fff
/* 804B7040  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804B7044  7C 00 18 50 */	subf r0, r0, r3
/* 804B7048  B0 1E 14 00 */	sth r0, 0x1400(r30)
/* 804B704C  A8 1E 14 00 */	lha r0, 0x1400(r30)
/* 804B7050  2C 00 00 00 */	cmpwi r0, 0
/* 804B7054  41 80 00 10 */	blt lbl_804B7064
/* 804B7058  38 00 17 70 */	li r0, 0x1770
/* 804B705C  B0 1E 14 02 */	sth r0, 0x1402(r30)
/* 804B7060  48 00 00 0C */	b lbl_804B706C
lbl_804B7064:
/* 804B7064  38 00 E8 90 */	li r0, -6000
/* 804B7068  B0 1E 14 02 */	sth r0, 0x1402(r30)
lbl_804B706C:
/* 804B706C  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 804B7070  EC 20 00 32 */	fmuls f1, f0, f0
/* 804B7074  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 804B7078  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B707C  EC 21 00 2A */	fadds f1, f1, f0
/* 804B7080  48 00 42 55 */	bl JMAFastSqrt__Ff
/* 804B7084  FC 40 08 90 */	fmr f2, f1
/* 804B7088  C0 21 01 0C */	lfs f1, 0x10c(r1)
/* 804B708C  4B DB 05 E8 */	b cM_atan2s__Fff
/* 804B7090  7C 03 00 D0 */	neg r0, r3
/* 804B7094  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 804B7098  38 61 01 08 */	addi r3, r1, 0x108
/* 804B709C  48 00 42 F5 */	bl abs__4cXyzCFv
/* 804B70A0  D0 3E 14 64 */	stfs f1, 0x1464(r30)
/* 804B70A4  38 7E 13 DC */	addi r3, r30, 0x13dc
/* 804B70A8  38 9A 00 E4 */	addi r4, r26, 0xe4
/* 804B70AC  48 00 43 F9 */	bl __as__4cXyzFRC4cXyz
lbl_804B70B0:
/* 804B70B0  48 00 41 41 */	bl daAlink_getAlinkActorClass__Fv
/* 804B70B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B70B8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804B70BC  7D 89 03 A6 */	mtctr r12
/* 804B70C0  4E 80 04 21 */	bctrl 
/* 804B70C4  28 03 00 00 */	cmplwi r3, 0
/* 804B70C8  41 82 00 2C */	beq lbl_804B70F4
/* 804B70CC  80 1E 11 44 */	lwz r0, 0x1144(r30)
/* 804B70D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B70D4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B70D8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B70DC  38 81 00 10 */	addi r4, r1, 0x10
/* 804B70E0  4B B6 27 18 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B70E4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B70E8  FC 40 08 90 */	fmr f2, f1
/* 804B70EC  38 63 05 2C */	addi r3, r3, 0x52c
/* 804B70F0  4B DB 89 90 */	b cLib_addCalc0__FPfff
lbl_804B70F4:
/* 804B70F4  38 7E 14 00 */	addi r3, r30, 0x1400
/* 804B70F8  A8 9E 14 02 */	lha r4, 0x1402(r30)
/* 804B70FC  38 A0 00 04 */	li r5, 4
/* 804B7100  38 C0 0B B8 */	li r6, 0xbb8
/* 804B7104  4B DB 95 04 */	b cLib_addCalcAngleS2__FPssss
/* 804B7108  38 7E 14 04 */	addi r3, r30, 0x1404
/* 804B710C  38 80 FC 18 */	li r4, -1000
/* 804B7110  38 A0 00 04 */	li r5, 4
/* 804B7114  38 C0 03 E8 */	li r6, 0x3e8
/* 804B7118  4B DB 94 F0 */	b cLib_addCalcAngleS2__FPssss
/* 804B711C  38 7E 14 64 */	addi r3, r30, 0x1464
/* 804B7120  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 804B7124  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804B7128  C0 7F 01 C0 */	lfs f3, 0x1c0(r31)
/* 804B712C  4B DB 89 10 */	b cLib_addCalc2__FPffff
/* 804B7130  38 7E 14 08 */	addi r3, r30, 0x1408
/* 804B7134  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804B7138  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804B713C  C0 7F 01 5C */	lfs f3, 0x15c(r31)
/* 804B7140  4B DB 88 FC */	b cLib_addCalc2__FPffff
/* 804B7144  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B7148  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B714C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B7150  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B7154  A8 1E 14 00 */	lha r0, 0x1400(r30)
/* 804B7158  7C 04 02 14 */	add r0, r4, r0
/* 804B715C  7C 04 07 34 */	extsh r4, r0
/* 804B7160  4B B5 52 7C */	b mDoMtx_YrotS__FPA4_fs
/* 804B7164  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B7168  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B716C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B7170  A8 9E 14 04 */	lha r4, 0x1404(r30)
/* 804B7174  4B B5 52 28 */	b mDoMtx_XrotM__FPA4_fs
/* 804B7178  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B717C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B7180  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B7184  C0 1E 14 64 */	lfs f0, 0x1464(r30)
/* 804B7188  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B718C  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7190  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B7194  4B DB 9D 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B7198  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B719C  38 9E 13 DC */	addi r4, r30, 0x13dc
/* 804B71A0  7C 65 1B 78 */	mr r5, r3
/* 804B71A4  4B E8 FE EC */	b PSVECAdd
/* 804B71A8  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B71AC  38 9E 13 DC */	addi r4, r30, 0x13dc
/* 804B71B0  48 00 42 F5 */	bl __as__4cXyzFRC4cXyz
/* 804B71B4  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B71B8  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 804B71BC  7C 03 07 34 */	extsh r3, r0
/* 804B71C0  48 00 41 BD */	bl cM_ssin__Fs
/* 804B71C4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804B71C8  EC 20 00 72 */	fmuls f1, f0, f1
/* 804B71CC  C0 1E 13 C8 */	lfs f0, 0x13c8(r30)
/* 804B71D0  EC 00 08 2A */	fadds f0, f0, f1
/* 804B71D4  D0 1E 13 C8 */	stfs f0, 0x13c8(r30)
/* 804B71D8  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 804B71DC  60 00 00 0A */	ori r0, r0, 0xa
/* 804B71E0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 804B71E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B71E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B71EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B71F0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B71F4  4B B5 51 E8 */	b mDoMtx_YrotS__FPA4_fs
/* 804B71F8  A8 1E 14 02 */	lha r0, 0x1402(r30)
/* 804B71FC  2C 00 00 00 */	cmpwi r0, 0
/* 804B7200  40 80 00 0C */	bge lbl_804B720C
/* 804B7204  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 804B7208  48 00 00 08 */	b lbl_804B7210
lbl_804B720C:
/* 804B720C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
lbl_804B7210:
/* 804B7210  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B7214  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804B7218  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B721C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B7220  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B7224  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7228  38 9E 05 38 */	addi r4, r30, 0x538
/* 804B722C  4B DB 9C C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B7230  38 7E 05 38 */	addi r3, r30, 0x538
/* 804B7234  38 9D 05 38 */	addi r4, r29, 0x538
/* 804B7238  7C 65 1B 78 */	mr r5, r3
/* 804B723C  4B E8 FE 54 */	b PSVECAdd
/* 804B7240  38 7E 05 50 */	addi r3, r30, 0x550
/* 804B7244  38 9E 05 38 */	addi r4, r30, 0x538
/* 804B7248  48 00 42 5D */	bl __as__4cXyzFRC4cXyz
/* 804B724C  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B7250  2C 00 00 0A */	cmpwi r0, 0xa
/* 804B7254  41 80 0B FC */	blt lbl_804B7E50
/* 804B7258  88 1E 14 6D */	lbz r0, 0x146d(r30)
/* 804B725C  7C 00 07 75 */	extsb. r0, r0
/* 804B7260  40 82 01 FC */	bne lbl_804B745C
/* 804B7264  38 00 00 01 */	li r0, 1
/* 804B7268  98 1E 14 6D */	stb r0, 0x146d(r30)
/* 804B726C  80 78 00 40 */	lwz r3, 0x40(r24)
/* 804B7270  88 03 07 D5 */	lbz r0, 0x7d5(r3)
/* 804B7274  28 00 00 00 */	cmplwi r0, 0
/* 804B7278  41 82 00 50 */	beq lbl_804B72C8
/* 804B727C  88 03 07 D6 */	lbz r0, 0x7d6(r3)
/* 804B7280  28 00 00 00 */	cmplwi r0, 0
/* 804B7284  41 82 00 10 */	beq lbl_804B7294
/* 804B7288  A8 1E 14 72 */	lha r0, 0x1472(r30)
/* 804B728C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 804B7290  40 82 00 38 */	bne lbl_804B72C8
lbl_804B7294:
/* 804B7294  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7298  7F C4 F3 78 */	mr r4, r30
/* 804B729C  38 A0 03 C3 */	li r5, 0x3c3
/* 804B72A0  38 C0 00 00 */	li r6, 0
/* 804B72A4  38 E0 00 00 */	li r7, 0
/* 804B72A8  4B D9 2C E8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B72AC  38 00 00 00 */	li r0, 0
/* 804B72B0  80 78 00 40 */	lwz r3, 0x40(r24)
/* 804B72B4  98 03 07 D5 */	stb r0, 0x7d5(r3)
/* 804B72B8  38 00 00 01 */	li r0, 1
/* 804B72BC  80 78 00 40 */	lwz r3, 0x40(r24)
/* 804B72C0  98 03 07 D6 */	stb r0, 0x7d6(r3)
/* 804B72C4  48 00 01 98 */	b lbl_804B745C
lbl_804B72C8:
/* 804B72C8  88 03 07 B8 */	lbz r0, 0x7b8(r3)
/* 804B72CC  28 00 00 00 */	cmplwi r0, 0
/* 804B72D0  41 82 00 38 */	beq lbl_804B7308
/* 804B72D4  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B72D8  7F C4 F3 78 */	mr r4, r30
/* 804B72DC  38 A0 02 C9 */	li r5, 0x2c9
/* 804B72E0  38 C0 00 00 */	li r6, 0
/* 804B72E4  38 E0 00 00 */	li r7, 0
/* 804B72E8  4B D9 2C A8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B72EC  38 00 00 32 */	li r0, 0x32
/* 804B72F0  80 78 00 40 */	lwz r3, 0x40(r24)
/* 804B72F4  B0 03 06 BA */	sth r0, 0x6ba(r3)
/* 804B72F8  38 00 00 00 */	li r0, 0
/* 804B72FC  80 78 00 40 */	lwz r3, 0x40(r24)
/* 804B7300  98 03 07 B8 */	stb r0, 0x7b8(r3)
/* 804B7304  48 00 01 58 */	b lbl_804B745C
lbl_804B7308:
/* 804B7308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B730C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7310  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B7314  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B7318  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B731C  A0 84 03 A6 */	lhz r4, 0x3a6(r4)
/* 804B7320  4B B7 D6 9C */	b isEventBit__11dSv_event_cCFUs
/* 804B7324  2C 03 00 00 */	cmpwi r3, 0
/* 804B7328  40 82 00 B4 */	bne lbl_804B73DC
/* 804B732C  88 1E 14 70 */	lbz r0, 0x1470(r30)
/* 804B7330  28 00 00 00 */	cmplwi r0, 0
/* 804B7334  40 82 00 8C */	bne lbl_804B73C0
/* 804B7338  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 804B733C  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804B7340  C0 5F 02 B8 */	lfs f2, 0x2b8(r31)
/* 804B7344  D0 41 01 10 */	stfs f2, 0x110(r1)
/* 804B7348  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804B734C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B7350  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804B7354  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804B7358  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B735C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B7360  EC 21 00 72 */	fmuls f1, f1, f1
/* 804B7364  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B7368  EC 21 00 2A */	fadds f1, f1, f0
/* 804B736C  48 00 3F 69 */	bl JMAFastSqrt__Ff
/* 804B7370  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 804B7374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B7378  40 80 00 2C */	bge lbl_804B73A4
/* 804B737C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7380  7F C4 F3 78 */	mr r4, r30
/* 804B7384  38 A0 03 C2 */	li r5, 0x3c2
/* 804B7388  38 C0 00 00 */	li r6, 0
/* 804B738C  38 E0 00 00 */	li r7, 0
/* 804B7390  4B D9 2C 00 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7394  88 7E 14 70 */	lbz r3, 0x1470(r30)
/* 804B7398  38 03 00 01 */	addi r0, r3, 1
/* 804B739C  98 1E 14 70 */	stb r0, 0x1470(r30)
/* 804B73A0  48 00 00 BC */	b lbl_804B745C
lbl_804B73A4:
/* 804B73A4  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B73A8  7F C4 F3 78 */	mr r4, r30
/* 804B73AC  38 A0 03 CF */	li r5, 0x3cf
/* 804B73B0  38 C0 00 00 */	li r6, 0
/* 804B73B4  38 E0 00 00 */	li r7, 0
/* 804B73B8  4B D9 2B D8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B73BC  48 00 00 A0 */	b lbl_804B745C
lbl_804B73C0:
/* 804B73C0  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B73C4  7F C4 F3 78 */	mr r4, r30
/* 804B73C8  38 A0 03 CF */	li r5, 0x3cf
/* 804B73CC  38 C0 00 00 */	li r6, 0
/* 804B73D0  38 E0 00 00 */	li r7, 0
/* 804B73D4  4B D9 2B BC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B73D8  48 00 00 84 */	b lbl_804B745C
lbl_804B73DC:
/* 804B73DC  A8 7E 14 72 */	lha r3, 0x1472(r30)
/* 804B73E0  38 03 00 01 */	addi r0, r3, 1
/* 804B73E4  B0 1E 14 72 */	sth r0, 0x1472(r30)
/* 804B73E8  A8 1E 14 72 */	lha r0, 0x1472(r30)
/* 804B73EC  2C 00 00 01 */	cmpwi r0, 1
/* 804B73F0  40 82 00 20 */	bne lbl_804B7410
/* 804B73F4  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B73F8  7F C4 F3 78 */	mr r4, r30
/* 804B73FC  38 A0 03 D0 */	li r5, 0x3d0
/* 804B7400  38 C0 00 00 */	li r6, 0
/* 804B7404  38 E0 00 00 */	li r7, 0
/* 804B7408  4B D9 2B 88 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B740C  48 00 00 50 */	b lbl_804B745C
lbl_804B7410:
/* 804B7410  2C 00 00 02 */	cmpwi r0, 2
/* 804B7414  40 82 00 20 */	bne lbl_804B7434
/* 804B7418  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B741C  7F C4 F3 78 */	mr r4, r30
/* 804B7420  38 A0 03 D1 */	li r5, 0x3d1
/* 804B7424  38 C0 00 00 */	li r6, 0
/* 804B7428  38 E0 00 00 */	li r7, 0
/* 804B742C  4B D9 2B 64 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7430  48 00 00 2C */	b lbl_804B745C
lbl_804B7434:
/* 804B7434  2C 00 00 03 */	cmpwi r0, 3
/* 804B7438  40 82 00 24 */	bne lbl_804B745C
/* 804B743C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7440  7F C4 F3 78 */	mr r4, r30
/* 804B7444  38 A0 03 D2 */	li r5, 0x3d2
/* 804B7448  38 C0 00 00 */	li r6, 0
/* 804B744C  38 E0 00 00 */	li r7, 0
/* 804B7450  4B D9 2B 40 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7454  38 00 00 00 */	li r0, 0
/* 804B7458  B0 1E 14 72 */	sth r0, 0x1472(r30)
lbl_804B745C:
/* 804B745C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7460  7F C4 F3 78 */	mr r4, r30
/* 804B7464  38 A0 00 00 */	li r5, 0
/* 804B7468  38 C0 00 00 */	li r6, 0
/* 804B746C  4B D9 2E 6C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7470  2C 03 00 00 */	cmpwi r3, 0
/* 804B7474  41 82 09 DC */	beq lbl_804B7E50
/* 804B7478  38 61 00 78 */	addi r3, r1, 0x78
/* 804B747C  38 9E 13 C4 */	addi r4, r30, 0x13c4
/* 804B7480  48 00 3E 39 */	bl __ct__4cXyzFRC4cXyz
/* 804B7484  38 61 00 6C */	addi r3, r1, 0x6c
/* 804B7488  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B748C  48 00 3E 2D */	bl __ct__4cXyzFRC4cXyz
/* 804B7490  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7494  38 81 00 78 */	addi r4, r1, 0x78
/* 804B7498  38 A1 00 6C */	addi r5, r1, 0x6c
/* 804B749C  C0 3E 14 08 */	lfs f1, 0x1408(r30)
/* 804B74A0  38 C0 00 00 */	li r6, 0
/* 804B74A4  4B CC 96 FC */	b Reset__9dCamera_cF4cXyz4cXyzfs
/* 804B74A8  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B74AC  4B CA A0 00 */	b Start__9dCamera_cFv
/* 804B74B0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B74B4  38 80 00 00 */	li r4, 0
/* 804B74B8  4B CA BB 54 */	b SetTrimSize__9dCamera_cFl
/* 804B74BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B74C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B74C4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B74C8  4B B8 AF A0 */	b reset__14dEvt_control_cFv
/* 804B74CC  48 00 3D DD */	bl daPy_getPlayerActorClass__Fv
/* 804B74D0  48 00 3D C5 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 804B74D4  38 60 00 00 */	li r3, 0
/* 804B74D8  B0 7E 13 B4 */	sth r3, 0x13b4(r30)
/* 804B74DC  38 00 00 1E */	li r0, 0x1e
/* 804B74E0  98 1E 14 6C */	stb r0, 0x146c(r30)
/* 804B74E4  98 7E 14 6D */	stb r3, 0x146d(r30)
/* 804B74E8  48 00 09 68 */	b lbl_804B7E50
lbl_804B74EC:
/* 804B74EC  38 00 03 B7 */	li r0, 0x3b7
/* 804B74F0  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B74F4  38 00 00 00 */	li r0, 0
/* 804B74F8  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B74FC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804B7500  D0 1E 14 08 */	stfs f0, 0x1408(r30)
/* 804B7504  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B7508  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B750C  48 00 3F 99 */	bl __as__4cXyzFRC4cXyz
/* 804B7510  C0 3E 13 C8 */	lfs f1, 0x13c8(r30)
/* 804B7514  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 804B7518  EC 01 00 2A */	fadds f0, f1, f0
/* 804B751C  D0 1E 13 C8 */	stfs f0, 0x13c8(r30)
lbl_804B7520:
/* 804B7520  38 60 00 22 */	li r3, 0x22
/* 804B7524  38 80 00 00 */	li r4, 0
/* 804B7528  48 00 3F D1 */	bl dComIfGp_setDoStatusForce__FUcUc
/* 804B752C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804B7530  D0 1E 0F 78 */	stfs f0, 0xf78(r30)
/* 804B7534  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B7538  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B753C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B7540  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804B7544  4B B5 4E 98 */	b mDoMtx_YrotS__FPA4_fs
/* 804B7548  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B754C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B7550  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804B7554  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B7558  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804B755C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B7560  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7564  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B7568  4B DB 99 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B756C  38 7E 13 B8 */	addi r3, r30, 0x13b8
/* 804B7570  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804B7574  7C 65 1B 78 */	mr r5, r3
/* 804B7578  4B E8 FB 18 */	b PSVECAdd
/* 804B757C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 804B7580  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804B7584  48 00 3F 21 */	bl __as__4cXyzFRC4cXyz
/* 804B7588  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B758C  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 804B7590  EC 01 00 2A */	fadds f0, f1, f0
/* 804B7594  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 804B7598  38 7E 13 C4 */	addi r3, r30, 0x13c4
/* 804B759C  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 804B75A0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B75A4  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 804B75A8  4B DB 84 94 */	b cLib_addCalc2__FPffff
/* 804B75AC  38 7E 13 C8 */	addi r3, r30, 0x13c8
/* 804B75B0  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 804B75B4  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B75B8  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 804B75BC  4B DB 84 80 */	b cLib_addCalc2__FPffff
/* 804B75C0  38 7E 13 CC */	addi r3, r30, 0x13cc
/* 804B75C4  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 804B75C8  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B75CC  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 804B75D0  4B DB 84 6C */	b cLib_addCalc2__FPffff
/* 804B75D4  A8 1E 13 B4 */	lha r0, 0x13b4(r30)
/* 804B75D8  2C 00 03 B7 */	cmpwi r0, 0x3b7
/* 804B75DC  40 82 08 74 */	bne lbl_804B7E50
/* 804B75E0  88 18 05 8C */	lbz r0, 0x58c(r24)
/* 804B75E4  7C 00 07 75 */	extsb. r0, r0
/* 804B75E8  40 82 00 14 */	bne lbl_804B75FC
/* 804B75EC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B75F0  D0 18 05 88 */	stfs f0, 0x588(r24)
/* 804B75F4  38 00 00 01 */	li r0, 1
/* 804B75F8  98 18 05 8C */	stb r0, 0x58c(r24)
lbl_804B75FC:
/* 804B75FC  88 18 05 94 */	lbz r0, 0x594(r24)
/* 804B7600  7C 00 07 75 */	extsb. r0, r0
/* 804B7604  40 82 00 14 */	bne lbl_804B7618
/* 804B7608  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B760C  D0 18 05 90 */	stfs f0, 0x590(r24)
/* 804B7610  38 00 00 01 */	li r0, 1
/* 804B7614  98 18 05 94 */	stb r0, 0x594(r24)
lbl_804B7618:
/* 804B7618  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804B761C  C0 43 D2 E8 */	lfs f2, m_cpadInfo__8mDoCPd_c@l(r3)
/* 804B7620  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 804B7624  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804B7628  4C 41 13 82 */	cror 2, 1, 2
/* 804B762C  40 82 00 10 */	bne lbl_804B763C
/* 804B7630  C0 18 05 88 */	lfs f0, 0x588(r24)
/* 804B7634  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B7638  41 80 00 64 */	blt lbl_804B769C
lbl_804B763C:
/* 804B763C  C0 3F 02 C4 */	lfs f1, 0x2c4(r31)
/* 804B7640  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804B7644  4C 40 13 82 */	cror 2, 0, 2
/* 804B7648  40 82 00 10 */	bne lbl_804B7658
/* 804B764C  C0 18 05 88 */	lfs f0, 0x588(r24)
/* 804B7650  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B7654  41 81 00 48 */	bgt lbl_804B769C
lbl_804B7658:
/* 804B7658  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804B765C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 804B7660  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 804B7664  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 804B7668  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804B766C  4C 41 13 82 */	cror 2, 1, 2
/* 804B7670  40 82 00 10 */	bne lbl_804B7680
/* 804B7674  C0 18 05 90 */	lfs f0, 0x590(r24)
/* 804B7678  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B767C  41 80 00 20 */	blt lbl_804B769C
lbl_804B7680:
/* 804B7680  C0 3F 02 C4 */	lfs f1, 0x2c4(r31)
/* 804B7684  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804B7688  4C 40 13 82 */	cror 2, 0, 2
/* 804B768C  40 82 01 0C */	bne lbl_804B7798
/* 804B7690  C0 18 05 90 */	lfs f0, 0x590(r24)
/* 804B7694  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B7698  40 81 01 00 */	ble lbl_804B7798
lbl_804B769C:
/* 804B769C  3B 20 00 00 */	li r25, 0
/* 804B76A0  3B 40 00 01 */	li r26, 1
/* 804B76A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B76A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B76AC  3A E3 07 F0 */	addi r23, r3, 0x7f0
/* 804B76B0  7E E3 BB 78 */	mr r3, r23
/* 804B76B4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B76B8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B76BC  A0 84 03 A4 */	lhz r4, 0x3a4(r4)
/* 804B76C0  4B B7 D2 FC */	b isEventBit__11dSv_event_cCFUs
/* 804B76C4  2C 03 00 00 */	cmpwi r3, 0
/* 804B76C8  41 82 00 08 */	beq lbl_804B76D0
/* 804B76CC  3B 20 00 01 */	li r25, 1
lbl_804B76D0:
/* 804B76D0  7E E3 BB 78 */	mr r3, r23
/* 804B76D4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B76D8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B76DC  A0 84 03 AA */	lhz r4, 0x3aa(r4)
/* 804B76E0  4B B7 D2 DC */	b isEventBit__11dSv_event_cCFUs
/* 804B76E4  2C 03 00 00 */	cmpwi r3, 0
/* 804B76E8  41 82 00 08 */	beq lbl_804B76F0
/* 804B76EC  3B 40 00 00 */	li r26, 0
lbl_804B76F0:
/* 804B76F0  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B76F4  2C 00 00 0F */	cmpwi r0, 0xf
/* 804B76F8  41 80 00 A0 */	blt lbl_804B7798
/* 804B76FC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804B7700  C4 03 D2 E8 */	lfsu f0, m_cpadInfo__8mDoCPd_c@l(r3)
/* 804B7704  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804B7708  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B770C  4C 41 13 82 */	cror 2, 1, 2
/* 804B7710  41 82 00 14 */	beq lbl_804B7724
/* 804B7714  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804B7718  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B771C  4C 41 13 82 */	cror 2, 1, 2
/* 804B7720  40 82 00 30 */	bne lbl_804B7750
lbl_804B7724:
/* 804B7724  88 7E 0F 81 */	lbz r3, 0xf81(r30)
/* 804B7728  38 03 00 01 */	addi r0, r3, 1
/* 804B772C  98 1E 0F 81 */	stb r0, 0xf81(r30)
/* 804B7730  88 1E 0F 81 */	lbz r0, 0xf81(r30)
/* 804B7734  7C 03 07 74 */	extsb r3, r0
/* 804B7738  38 19 00 03 */	addi r0, r25, 3
/* 804B773C  7C 00 07 74 */	extsb r0, r0
/* 804B7740  7C 03 00 00 */	cmpw r3, r0
/* 804B7744  40 81 00 30 */	ble lbl_804B7774
/* 804B7748  9B 5E 0F 81 */	stb r26, 0xf81(r30)
/* 804B774C  48 00 00 28 */	b lbl_804B7774
lbl_804B7750:
/* 804B7750  88 7E 0F 81 */	lbz r3, 0xf81(r30)
/* 804B7754  38 03 FF FF */	addi r0, r3, -1
/* 804B7758  98 1E 0F 81 */	stb r0, 0xf81(r30)
/* 804B775C  88 1E 0F 81 */	lbz r0, 0xf81(r30)
/* 804B7760  7C 00 07 74 */	extsb r0, r0
/* 804B7764  7C 00 D0 00 */	cmpw r0, r26
/* 804B7768  40 80 00 0C */	bge lbl_804B7774
/* 804B776C  38 19 00 03 */	addi r0, r25, 3
/* 804B7770  98 1E 0F 81 */	stb r0, 0xf81(r30)
lbl_804B7774:
/* 804B7774  38 60 00 4E */	li r3, 0x4e
/* 804B7778  38 80 00 00 */	li r4, 0
/* 804B777C  38 A0 00 00 */	li r5, 0
/* 804B7780  38 C0 00 00 */	li r6, 0
/* 804B7784  48 00 3B 95 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 804B7788  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B778C  4B D9 2D 38 */	b remove__10dMsgFlow_cFv
/* 804B7790  38 00 00 00 */	li r0, 0
/* 804B7794  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
lbl_804B7798:
/* 804B7798  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804B779C  C4 03 D2 E8 */	lfsu f0, m_cpadInfo__8mDoCPd_c@l(r3)
/* 804B77A0  D0 18 05 88 */	stfs f0, 0x588(r24)
/* 804B77A4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804B77A8  D0 18 05 90 */	stfs f0, 0x590(r24)
/* 804B77AC  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B77B0  2C 00 00 01 */	cmpwi r0, 1
/* 804B77B4  40 82 00 B8 */	bne lbl_804B786C
/* 804B77B8  88 7E 0F 81 */	lbz r3, 0xf81(r30)
/* 804B77BC  7C 60 07 75 */	extsb. r0, r3
/* 804B77C0  40 82 00 20 */	bne lbl_804B77E0
/* 804B77C4  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B77C8  7F C4 F3 78 */	mr r4, r30
/* 804B77CC  38 A0 02 C3 */	li r5, 0x2c3
/* 804B77D0  38 C0 00 00 */	li r6, 0
/* 804B77D4  38 E0 00 00 */	li r7, 0
/* 804B77D8  4B D9 27 B8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B77DC  48 00 00 90 */	b lbl_804B786C
lbl_804B77E0:
/* 804B77E0  7C 63 07 74 */	extsb r3, r3
/* 804B77E4  2C 03 00 01 */	cmpwi r3, 1
/* 804B77E8  40 82 00 20 */	bne lbl_804B7808
/* 804B77EC  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B77F0  7F C4 F3 78 */	mr r4, r30
/* 804B77F4  38 A0 02 C4 */	li r5, 0x2c4
/* 804B77F8  38 C0 00 00 */	li r6, 0
/* 804B77FC  38 E0 00 00 */	li r7, 0
/* 804B7800  4B D9 27 90 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7804  48 00 00 68 */	b lbl_804B786C
lbl_804B7808:
/* 804B7808  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B780C  2C 00 00 02 */	cmpwi r0, 2
/* 804B7810  40 82 00 20 */	bne lbl_804B7830
/* 804B7814  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7818  7F C4 F3 78 */	mr r4, r30
/* 804B781C  38 A0 02 C5 */	li r5, 0x2c5
/* 804B7820  38 C0 00 00 */	li r6, 0
/* 804B7824  38 E0 00 00 */	li r7, 0
/* 804B7828  4B D9 27 68 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B782C  48 00 00 40 */	b lbl_804B786C
lbl_804B7830:
/* 804B7830  2C 03 00 03 */	cmpwi r3, 3
/* 804B7834  40 82 00 20 */	bne lbl_804B7854
/* 804B7838  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B783C  7F C4 F3 78 */	mr r4, r30
/* 804B7840  38 A0 02 C6 */	li r5, 0x2c6
/* 804B7844  38 C0 00 00 */	li r6, 0
/* 804B7848  38 E0 00 00 */	li r7, 0
/* 804B784C  4B D9 27 44 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7850  48 00 00 1C */	b lbl_804B786C
lbl_804B7854:
/* 804B7854  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7858  7F C4 F3 78 */	mr r4, r30
/* 804B785C  38 A0 02 C7 */	li r5, 0x2c7
/* 804B7860  38 C0 00 00 */	li r6, 0
/* 804B7864  38 E0 00 00 */	li r7, 0
/* 804B7868  4B D9 27 28 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_804B786C:
/* 804B786C  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B7870  2C 00 00 0F */	cmpwi r0, 0xf
/* 804B7874  41 80 00 30 */	blt lbl_804B78A4
/* 804B7878  38 60 00 00 */	li r3, 0
/* 804B787C  48 00 3C 61 */	bl getTrigA__8mDoCPd_cFUl
/* 804B7880  28 03 00 00 */	cmplwi r3, 0
/* 804B7884  41 82 00 20 */	beq lbl_804B78A4
/* 804B7888  38 60 00 4F */	li r3, 0x4f
/* 804B788C  38 80 00 00 */	li r4, 0
/* 804B7890  38 A0 00 00 */	li r5, 0
/* 804B7894  38 C0 00 00 */	li r6, 0
/* 804B7898  48 00 3A 81 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 804B789C  38 00 00 01 */	li r0, 1
/* 804B78A0  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
lbl_804B78A4:
/* 804B78A4  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B78A8  2C 00 00 01 */	cmpwi r0, 1
/* 804B78AC  41 80 05 A4 */	blt lbl_804B7E50
/* 804B78B0  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B78B4  7F C4 F3 78 */	mr r4, r30
/* 804B78B8  38 A0 00 00 */	li r5, 0
/* 804B78BC  38 C0 00 00 */	li r6, 0
/* 804B78C0  4B D9 2A 18 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B78C4  2C 03 00 00 */	cmpwi r3, 0
/* 804B78C8  41 82 05 88 */	beq lbl_804B7E50
/* 804B78CC  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B78D0  2C 00 00 0F */	cmpwi r0, 0xf
/* 804B78D4  41 80 05 7C */	blt lbl_804B7E50
/* 804B78D8  80 18 00 40 */	lwz r0, 0x40(r24)
/* 804B78DC  28 00 00 00 */	cmplwi r0, 0
/* 804B78E0  41 82 00 24 */	beq lbl_804B7904
/* 804B78E4  88 1E 0F 81 */	lbz r0, 0xf81(r30)
/* 804B78E8  2C 00 00 04 */	cmpwi r0, 4
/* 804B78EC  40 82 00 18 */	bne lbl_804B7904
/* 804B78F0  38 00 04 22 */	li r0, 0x422
/* 804B78F4  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B78F8  38 00 00 00 */	li r0, 0
/* 804B78FC  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B7900  48 00 05 50 */	b lbl_804B7E50
lbl_804B7904:
/* 804B7904  38 00 04 1D */	li r0, 0x41d
/* 804B7908  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B790C  48 00 05 44 */	b lbl_804B7E50
lbl_804B7910:
/* 804B7910  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804B7914  28 00 00 02 */	cmplwi r0, 2
/* 804B7918  41 82 00 44 */	beq lbl_804B795C
/* 804B791C  7F C3 F3 78 */	mr r3, r30
/* 804B7920  38 80 00 02 */	li r4, 2
/* 804B7924  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804B7928  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804B792C  38 C0 00 00 */	li r6, 0
/* 804B7930  4B B6 3F D8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804B7934  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804B7938  60 00 00 02 */	ori r0, r0, 2
/* 804B793C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804B7940  38 61 01 84 */	addi r3, r1, 0x184
/* 804B7944  38 80 FF FF */	li r4, -1
/* 804B7948  4B BB FF 00 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 804B794C  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 804B7950  38 80 FF FF */	li r4, -1
/* 804B7954  4B BB FC 9C */	b __dt__11dBgS_GndChkFv
/* 804B7958  48 00 06 E4 */	b lbl_804B803C
lbl_804B795C:
/* 804B795C  38 00 03 E9 */	li r0, 0x3e9
/* 804B7960  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7964  38 00 00 00 */	li r0, 0
/* 804B7968  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B796C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7970  7F C4 F3 78 */	mr r4, r30
/* 804B7974  38 A0 02 CA */	li r5, 0x2ca
/* 804B7978  38 C0 00 00 */	li r6, 0
/* 804B797C  38 E0 00 00 */	li r7, 0
/* 804B7980  4B D9 26 10 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7984  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7988  4B CA 9B 48 */	b Stop__9dCamera_cFv
/* 804B798C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7990  38 80 00 01 */	li r4, 1
/* 804B7994  4B CA B6 78 */	b SetTrimSize__9dCamera_cFl
lbl_804B7998:
/* 804B7998  48 00 38 59 */	bl daAlink_getAlinkActorClass__Fv
/* 804B799C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B79A0  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804B79A4  7D 89 03 A6 */	mtctr r12
/* 804B79A8  4E 80 04 21 */	bctrl 
/* 804B79AC  28 03 00 00 */	cmplwi r3, 0
/* 804B79B0  41 82 00 2C */	beq lbl_804B79DC
/* 804B79B4  80 1E 11 44 */	lwz r0, 0x1144(r30)
/* 804B79B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B79BC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B79C0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B79C4  38 81 00 0C */	addi r4, r1, 0xc
/* 804B79C8  4B B6 1E 30 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B79CC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B79D0  FC 40 08 90 */	fmr f2, f1
/* 804B79D4  38 63 05 2C */	addi r3, r3, 0x52c
/* 804B79D8  4B DB 80 A8 */	b cLib_addCalc0__FPfff
lbl_804B79DC:
/* 804B79DC  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B79E0  7F C4 F3 78 */	mr r4, r30
/* 804B79E4  38 A0 00 00 */	li r5, 0
/* 804B79E8  38 C0 00 00 */	li r6, 0
/* 804B79EC  4B D9 28 EC */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B79F0  2C 03 00 00 */	cmpwi r3, 0
/* 804B79F4  41 82 04 5C */	beq lbl_804B7E50
/* 804B79F8  38 00 00 00 */	li r0, 0
/* 804B79FC  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B7A00  38 00 03 EA */	li r0, 0x3ea
/* 804B7A04  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7A08  48 00 04 48 */	b lbl_804B7E50
lbl_804B7A0C:
/* 804B7A0C  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B7A10  2C 00 00 01 */	cmpwi r0, 1
/* 804B7A14  41 80 04 3C */	blt lbl_804B7E50
/* 804B7A18  3A E0 00 00 */	li r23, 0
/* 804B7A1C  40 82 00 88 */	bne lbl_804B7AA4
/* 804B7A20  4B D8 0A 20 */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B7A24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B7A28  40 82 00 20 */	bne lbl_804B7A48
/* 804B7A2C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7A30  7F C4 F3 78 */	mr r4, r30
/* 804B7A34  38 A0 02 CB */	li r5, 0x2cb
/* 804B7A38  38 C0 00 00 */	li r6, 0
/* 804B7A3C  38 E0 00 00 */	li r7, 0
/* 804B7A40  4B D9 25 50 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7A44  48 00 00 60 */	b lbl_804B7AA4
lbl_804B7A48:
/* 804B7A48  4B D8 09 F8 */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B7A4C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B7A50  28 00 00 01 */	cmplwi r0, 1
/* 804B7A54  40 82 00 20 */	bne lbl_804B7A74
/* 804B7A58  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7A5C  7F C4 F3 78 */	mr r4, r30
/* 804B7A60  38 A0 02 CC */	li r5, 0x2cc
/* 804B7A64  38 C0 00 00 */	li r6, 0
/* 804B7A68  38 E0 00 00 */	li r7, 0
/* 804B7A6C  4B D9 25 24 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7A70  48 00 00 34 */	b lbl_804B7AA4
lbl_804B7A74:
/* 804B7A74  4B D8 09 CC */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B7A78  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B7A7C  28 00 00 02 */	cmplwi r0, 2
/* 804B7A80  40 82 00 20 */	bne lbl_804B7AA0
/* 804B7A84  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7A88  7F C4 F3 78 */	mr r4, r30
/* 804B7A8C  38 A0 02 CD */	li r5, 0x2cd
/* 804B7A90  38 C0 00 00 */	li r6, 0
/* 804B7A94  38 E0 00 00 */	li r7, 0
/* 804B7A98  4B D9 24 F8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7A9C  48 00 00 08 */	b lbl_804B7AA4
lbl_804B7AA0:
/* 804B7AA0  3A E0 00 01 */	li r23, 1
lbl_804B7AA4:
/* 804B7AA4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 804B7AA8  40 82 00 20 */	bne lbl_804B7AC8
/* 804B7AAC  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7AB0  7F C4 F3 78 */	mr r4, r30
/* 804B7AB4  38 A0 00 00 */	li r5, 0
/* 804B7AB8  38 C0 00 00 */	li r6, 0
/* 804B7ABC  4B D9 28 1C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7AC0  2C 03 00 00 */	cmpwi r3, 0
/* 804B7AC4  41 82 03 8C */	beq lbl_804B7E50
lbl_804B7AC8:
/* 804B7AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B7ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7AD0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B7AD4  4B B8 A9 94 */	b reset__14dEvt_control_cFv
/* 804B7AD8  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7ADC  4B CA 99 D0 */	b Start__9dCamera_cFv
/* 804B7AE0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7AE4  38 80 00 00 */	li r4, 0
/* 804B7AE8  4B CA B5 24 */	b SetTrimSize__9dCamera_cFl
/* 804B7AEC  38 00 00 00 */	li r0, 0
/* 804B7AF0  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7AF4  38 00 00 1E */	li r0, 0x1e
/* 804B7AF8  98 1E 14 6C */	stb r0, 0x146c(r30)
/* 804B7AFC  48 00 03 54 */	b lbl_804B7E50
lbl_804B7B00:
/* 804B7B00  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804B7B04  28 00 00 02 */	cmplwi r0, 2
/* 804B7B08  41 82 00 44 */	beq lbl_804B7B4C
/* 804B7B0C  7F C3 F3 78 */	mr r3, r30
/* 804B7B10  38 80 00 02 */	li r4, 2
/* 804B7B14  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804B7B18  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804B7B1C  38 C0 00 00 */	li r6, 0
/* 804B7B20  4B B6 3D E8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804B7B24  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804B7B28  60 00 00 02 */	ori r0, r0, 2
/* 804B7B2C  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804B7B30  38 61 01 84 */	addi r3, r1, 0x184
/* 804B7B34  38 80 FF FF */	li r4, -1
/* 804B7B38  4B BB FD 10 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 804B7B3C  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 804B7B40  38 80 FF FF */	li r4, -1
/* 804B7B44  4B BB FA AC */	b __dt__11dBgS_GndChkFv
/* 804B7B48  48 00 04 F4 */	b lbl_804B803C
lbl_804B7B4C:
/* 804B7B4C  38 00 04 1B */	li r0, 0x41b
/* 804B7B50  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7B54  38 00 00 00 */	li r0, 0
/* 804B7B58  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B7B5C  80 18 00 40 */	lwz r0, 0x40(r24)
/* 804B7B60  28 00 00 00 */	cmplwi r0, 0
/* 804B7B64  41 82 00 20 */	beq lbl_804B7B84
/* 804B7B68  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7B6C  7F C4 F3 78 */	mr r4, r30
/* 804B7B70  38 A0 02 BF */	li r5, 0x2bf
/* 804B7B74  38 C0 00 00 */	li r6, 0
/* 804B7B78  38 E0 00 00 */	li r7, 0
/* 804B7B7C  4B D9 24 14 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7B80  48 00 00 1C */	b lbl_804B7B9C
lbl_804B7B84:
/* 804B7B84  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7B88  7F C4 F3 78 */	mr r4, r30
/* 804B7B8C  38 A0 02 C1 */	li r5, 0x2c1
/* 804B7B90  38 C0 00 00 */	li r6, 0
/* 804B7B94  38 E0 00 00 */	li r7, 0
/* 804B7B98  4B D9 23 F8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_804B7B9C:
/* 804B7B9C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7BA0  4B CA 99 30 */	b Stop__9dCamera_cFv
/* 804B7BA4  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7BA8  38 80 00 01 */	li r4, 1
/* 804B7BAC  4B CA B4 60 */	b SetTrimSize__9dCamera_cFl
lbl_804B7BB0:
/* 804B7BB0  48 00 36 41 */	bl daAlink_getAlinkActorClass__Fv
/* 804B7BB4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B7BB8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804B7BBC  7D 89 03 A6 */	mtctr r12
/* 804B7BC0  4E 80 04 21 */	bctrl 
/* 804B7BC4  28 03 00 00 */	cmplwi r3, 0
/* 804B7BC8  41 82 00 2C */	beq lbl_804B7BF4
/* 804B7BCC  80 1E 11 44 */	lwz r0, 0x1144(r30)
/* 804B7BD0  90 01 00 08 */	stw r0, 8(r1)
/* 804B7BD4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B7BD8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B7BDC  38 81 00 08 */	addi r4, r1, 8
/* 804B7BE0  4B B6 1C 18 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B7BE4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B7BE8  FC 40 08 90 */	fmr f2, f1
/* 804B7BEC  38 63 05 2C */	addi r3, r3, 0x52c
/* 804B7BF0  4B DB 7E 90 */	b cLib_addCalc0__FPfff
lbl_804B7BF4:
/* 804B7BF4  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7BF8  7F C4 F3 78 */	mr r4, r30
/* 804B7BFC  38 A0 00 00 */	li r5, 0
/* 804B7C00  38 C0 00 00 */	li r6, 0
/* 804B7C04  4B D9 26 D4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7C08  2C 03 00 00 */	cmpwi r3, 0
/* 804B7C0C  41 82 02 44 */	beq lbl_804B7E50
/* 804B7C10  38 00 00 00 */	li r0, 0
/* 804B7C14  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B7C18  38 00 04 1C */	li r0, 0x41c
/* 804B7C1C  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7C20  48 00 02 30 */	b lbl_804B7E50
lbl_804B7C24:
/* 804B7C24  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B7C28  2C 00 00 01 */	cmpwi r0, 1
/* 804B7C2C  41 80 02 24 */	blt lbl_804B7E50
/* 804B7C30  40 82 00 80 */	bne lbl_804B7CB0
/* 804B7C34  4B D8 08 0C */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B7C38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B7C3C  40 82 00 10 */	bne lbl_804B7C4C
/* 804B7C40  38 00 04 1D */	li r0, 0x41d
/* 804B7C44  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7C48  48 00 00 68 */	b lbl_804B7CB0
lbl_804B7C4C:
/* 804B7C4C  4B D8 07 F4 */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B7C50  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B7C54  28 00 00 01 */	cmplwi r0, 1
/* 804B7C58  40 82 00 10 */	bne lbl_804B7C68
/* 804B7C5C  38 00 03 B6 */	li r0, 0x3b6
/* 804B7C60  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7C64  48 00 00 4C */	b lbl_804B7CB0
lbl_804B7C68:
/* 804B7C68  80 18 00 40 */	lwz r0, 0x40(r24)
/* 804B7C6C  28 00 00 00 */	cmplwi r0, 0
/* 804B7C70  41 82 00 20 */	beq lbl_804B7C90
/* 804B7C74  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7C78  7F C4 F3 78 */	mr r4, r30
/* 804B7C7C  38 A0 02 C0 */	li r5, 0x2c0
/* 804B7C80  38 C0 00 00 */	li r6, 0
/* 804B7C84  38 E0 00 00 */	li r7, 0
/* 804B7C88  4B D9 23 08 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7C8C  48 00 00 1C */	b lbl_804B7CA8
lbl_804B7C90:
/* 804B7C90  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7C94  7F C4 F3 78 */	mr r4, r30
/* 804B7C98  38 A0 02 C2 */	li r5, 0x2c2
/* 804B7C9C  38 C0 00 00 */	li r6, 0
/* 804B7CA0  38 E0 00 00 */	li r7, 0
/* 804B7CA4  4B D9 22 EC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_804B7CA8:
/* 804B7CA8  38 00 04 1F */	li r0, 0x41f
/* 804B7CAC  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
lbl_804B7CB0:
/* 804B7CB0  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7CB4  7F C4 F3 78 */	mr r4, r30
/* 804B7CB8  38 A0 00 00 */	li r5, 0
/* 804B7CBC  38 C0 00 00 */	li r6, 0
/* 804B7CC0  4B D9 26 18 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7CC4  48 00 01 8C */	b lbl_804B7E50
lbl_804B7CC8:
/* 804B7CC8  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7CCC  7F C4 F3 78 */	mr r4, r30
/* 804B7CD0  38 A0 00 00 */	li r5, 0
/* 804B7CD4  38 C0 00 00 */	li r6, 0
/* 804B7CD8  4B D9 26 00 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7CDC  2C 03 00 00 */	cmpwi r3, 0
/* 804B7CE0  41 82 01 70 */	beq lbl_804B7E50
/* 804B7CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B7CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7CEC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B7CF0  4B B8 A7 78 */	b reset__14dEvt_control_cFv
/* 804B7CF4  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7CF8  4B CA 97 B4 */	b Start__9dCamera_cFv
/* 804B7CFC  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7D00  38 80 00 00 */	li r4, 0
/* 804B7D04  4B CA B3 08 */	b SetTrimSize__9dCamera_cFl
/* 804B7D08  38 00 00 00 */	li r0, 0
/* 804B7D0C  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7D10  38 00 00 1E */	li r0, 0x1e
/* 804B7D14  98 1E 14 6C */	stb r0, 0x146c(r30)
/* 804B7D18  48 00 01 38 */	b lbl_804B7E50
lbl_804B7D1C:
/* 804B7D1C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7D20  7F C4 F3 78 */	mr r4, r30
/* 804B7D24  38 A0 00 00 */	li r5, 0
/* 804B7D28  38 C0 00 00 */	li r6, 0
/* 804B7D2C  4B D9 25 AC */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7D30  2C 03 00 00 */	cmpwi r3, 0
/* 804B7D34  41 82 01 1C */	beq lbl_804B7E50
/* 804B7D38  4B D8 07 08 */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B7D3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B7D40  41 82 00 3C */	beq lbl_804B7D7C
/* 804B7D44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B7D48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7D4C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B7D50  4B B8 A7 18 */	b reset__14dEvt_control_cFv
/* 804B7D54  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7D58  4B CA 97 54 */	b Start__9dCamera_cFv
/* 804B7D5C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7D60  38 80 00 00 */	li r4, 0
/* 804B7D64  4B CA B2 A8 */	b SetTrimSize__9dCamera_cFl
/* 804B7D68  38 00 00 1E */	li r0, 0x1e
/* 804B7D6C  98 1E 14 6C */	stb r0, 0x146c(r30)
/* 804B7D70  38 00 00 00 */	li r0, 0
/* 804B7D74  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7D78  48 00 00 D8 */	b lbl_804B7E50
lbl_804B7D7C:
/* 804B7D7C  38 60 00 02 */	li r3, 2
/* 804B7D80  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804B7D84  38 80 00 00 */	li r4, 0
/* 804B7D88  38 A0 00 00 */	li r5, 0
/* 804B7D8C  38 C0 00 00 */	li r6, 0
/* 804B7D90  38 E0 FF FF */	li r7, -1
/* 804B7D94  4B B6 F3 DC */	b dStage_changeScene__FifUlScsi
/* 804B7D98  38 00 00 01 */	li r0, 1
/* 804B7D9C  3C 60 80 45 */	lis r3, struct_80450C98+0x1@ha
/* 804B7DA0  98 03 0C 99 */	stb r0, struct_80450C98+0x1@l(r3)
/* 804B7DA4  48 00 00 AC */	b lbl_804B7E50
lbl_804B7DA8:
/* 804B7DA8  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B7DAC  2C 00 00 05 */	cmpwi r0, 5
/* 804B7DB0  41 80 00 A0 */	blt lbl_804B7E50
/* 804B7DB4  40 82 00 28 */	bne lbl_804B7DDC
/* 804B7DB8  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7DBC  7F C4 F3 78 */	mr r4, r30
/* 804B7DC0  38 A0 02 C8 */	li r5, 0x2c8
/* 804B7DC4  38 C0 00 00 */	li r6, 0
/* 804B7DC8  38 E0 00 00 */	li r7, 0
/* 804B7DCC  4B D9 21 C4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B7DD0  48 00 34 21 */	bl daAlink_getAlinkActorClass__Fv
/* 804B7DD4  38 00 00 03 */	li r0, 3
/* 804B7DD8  98 03 2F C8 */	stb r0, 0x2fc8(r3)
lbl_804B7DDC:
/* 804B7DDC  38 7E 14 74 */	addi r3, r30, 0x1474
/* 804B7DE0  7F C4 F3 78 */	mr r4, r30
/* 804B7DE4  38 A0 00 00 */	li r5, 0
/* 804B7DE8  38 C0 00 00 */	li r6, 0
/* 804B7DEC  4B D9 24 EC */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B7DF0  2C 03 00 00 */	cmpwi r3, 0
/* 804B7DF4  41 82 00 5C */	beq lbl_804B7E50
/* 804B7DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B7DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7E00  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B7E04  4B B8 A6 64 */	b reset__14dEvt_control_cFv
/* 804B7E08  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7E0C  4B CA 96 A0 */	b Start__9dCamera_cFv
/* 804B7E10  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B7E14  38 80 00 00 */	li r4, 0
/* 804B7E18  4B CA B1 F4 */	b SetTrimSize__9dCamera_cFl
/* 804B7E1C  38 00 00 00 */	li r0, 0
/* 804B7E20  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 804B7E24  38 00 00 1E */	li r0, 0x1e
/* 804B7E28  98 1E 14 6C */	stb r0, 0x146c(r30)
/* 804B7E2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B7E30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7E34  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B7E38  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B7E3C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B7E40  A0 84 03 A4 */	lhz r4, 0x3a4(r4)
/* 804B7E44  4B B7 CB 60 */	b offEventBit__11dSv_event_cFUs
/* 804B7E48  38 00 00 01 */	li r0, 1
/* 804B7E4C  98 1E 0F 81 */	stb r0, 0xf81(r30)
lbl_804B7E50:
/* 804B7E50  A8 1E 13 B4 */	lha r0, 0x13b4(r30)
/* 804B7E54  2C 00 00 00 */	cmpwi r0, 0
/* 804B7E58  41 82 01 CC */	beq lbl_804B8024
/* 804B7E5C  A8 7E 13 B6 */	lha r3, 0x13b6(r30)
/* 804B7E60  38 03 00 01 */	addi r0, r3, 1
/* 804B7E64  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 804B7E68  A8 1E 13 B6 */	lha r0, 0x13b6(r30)
/* 804B7E6C  2C 00 27 10 */	cmpwi r0, 0x2710
/* 804B7E70  40 81 00 0C */	ble lbl_804B7E7C
/* 804B7E74  38 00 27 10 */	li r0, 0x2710
/* 804B7E78  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
lbl_804B7E7C:
/* 804B7E7C  A8 1E 13 B4 */	lha r0, 0x13b4(r30)
/* 804B7E80  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B7E84  40 80 01 A0 */	bge lbl_804B8024
/* 804B7E88  38 61 00 CC */	addi r3, r1, 0xcc
/* 804B7E8C  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B7E90  48 00 34 29 */	bl __ct__4cXyzFRC4cXyz
/* 804B7E94  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804B7E98  38 9E 13 C4 */	addi r4, r30, 0x13c4
/* 804B7E9C  48 00 34 1D */	bl __ct__4cXyzFRC4cXyz
/* 804B7EA0  2C 1B 00 00 */	cmpwi r27, 0
/* 804B7EA4  41 82 01 50 */	beq lbl_804B7FF4
/* 804B7EA8  38 61 01 14 */	addi r3, r1, 0x114
/* 804B7EAC  4B BB FD BC */	b __ct__11dBgS_LinChkFv
/* 804B7EB0  38 61 01 6C */	addi r3, r1, 0x16c
/* 804B7EB4  4B BC 10 2C */	b SetRope__16dBgS_PolyPassChkFv
/* 804B7EB8  38 61 00 B4 */	addi r3, r1, 0xb4
/* 804B7EBC  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B7EC0  48 00 33 F9 */	bl __ct__4cXyzFRC4cXyz
/* 804B7EC4  38 61 00 60 */	addi r3, r1, 0x60
/* 804B7EC8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804B7ECC  38 BE 13 C4 */	addi r5, r30, 0x13c4
/* 804B7ED0  4B DA EC 64 */	b __mi__4cXyzCFRC3Vec
/* 804B7ED4  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7ED8  38 81 00 60 */	addi r4, r1, 0x60
/* 804B7EDC  48 00 35 C9 */	bl __as__4cXyzFRC4cXyz
/* 804B7EE0  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 804B7EE4  C0 41 01 10 */	lfs f2, 0x110(r1)
/* 804B7EE8  4B DA F7 8C */	b cM_atan2s__Fff
/* 804B7EEC  7C 64 07 34 */	extsh r4, r3
/* 804B7EF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B7EF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B7EF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804B7EFC  4B B5 44 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 804B7F00  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B7F04  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 804B7F08  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 804B7F0C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B7F10  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 804B7F14  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7F18  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B7F1C  4B DB 8F D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B7F20  38 61 00 B4 */	addi r3, r1, 0xb4
/* 804B7F24  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B7F28  7C 65 1B 78 */	mr r5, r3
/* 804B7F2C  4B E8 F1 64 */	b PSVECAdd
/* 804B7F30  38 61 00 54 */	addi r3, r1, 0x54
/* 804B7F34  38 81 00 FC */	addi r4, r1, 0xfc
/* 804B7F38  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804B7F3C  4B DA EC 48 */	b __ml__4cXyzCFf
/* 804B7F40  38 61 00 48 */	addi r3, r1, 0x48
/* 804B7F44  38 9E 13 B8 */	addi r4, r30, 0x13b8
/* 804B7F48  38 A1 00 54 */	addi r5, r1, 0x54
/* 804B7F4C  4B DA EB E8 */	b __mi__4cXyzCFRC3Vec
/* 804B7F50  38 61 00 A8 */	addi r3, r1, 0xa8
/* 804B7F54  38 81 00 48 */	addi r4, r1, 0x48
/* 804B7F58  48 00 35 4D */	bl __as__4cXyzFRC4cXyz
/* 804B7F5C  38 61 01 14 */	addi r3, r1, 0x114
/* 804B7F60  38 81 00 A8 */	addi r4, r1, 0xa8
/* 804B7F64  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 804B7F68  7F C6 F3 78 */	mr r6, r30
/* 804B7F6C  4B BB FD F8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804B7F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B7F74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B7F78  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804B7F7C  38 81 01 14 */	addi r4, r1, 0x114
/* 804B7F80  4B BB C4 34 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804B7F84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B7F88  41 82 00 60 */	beq lbl_804B7FE8
/* 804B7F8C  38 61 00 3C */	addi r3, r1, 0x3c
/* 804B7F90  38 81 01 44 */	addi r4, r1, 0x144
/* 804B7F94  38 A1 00 FC */	addi r5, r1, 0xfc
/* 804B7F98  4B DA EB 9C */	b __mi__4cXyzCFRC3Vec
/* 804B7F9C  38 61 00 CC */	addi r3, r1, 0xcc
/* 804B7FA0  38 81 00 3C */	addi r4, r1, 0x3c
/* 804B7FA4  48 00 35 01 */	bl __as__4cXyzFRC4cXyz
/* 804B7FA8  38 61 00 30 */	addi r3, r1, 0x30
/* 804B7FAC  38 81 00 CC */	addi r4, r1, 0xcc
/* 804B7FB0  38 BD 05 38 */	addi r5, r29, 0x538
/* 804B7FB4  4B DA EB 80 */	b __mi__4cXyzCFRC3Vec
/* 804B7FB8  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7FBC  38 81 00 30 */	addi r4, r1, 0x30
/* 804B7FC0  48 00 34 E5 */	bl __as__4cXyzFRC4cXyz
/* 804B7FC4  38 61 01 08 */	addi r3, r1, 0x108
/* 804B7FC8  48 00 33 C9 */	bl abs__4cXyzCFv
/* 804B7FCC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B7FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B7FD4  40 80 00 14 */	bge lbl_804B7FE8
/* 804B7FD8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804B7FDC  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 804B7FE0  EC 00 08 2A */	fadds f0, f0, f1
/* 804B7FE4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804B7FE8:
/* 804B7FE8  38 61 01 14 */	addi r3, r1, 0x114
/* 804B7FEC  38 80 FF FF */	li r4, -1
/* 804B7FF0  4B BB FC EC */	b __dt__11dBgS_LinChkFv
lbl_804B7FF4:
/* 804B7FF4  38 61 00 24 */	addi r3, r1, 0x24
/* 804B7FF8  38 81 00 C0 */	addi r4, r1, 0xc0
/* 804B7FFC  48 00 32 BD */	bl __ct__4cXyzFRC4cXyz
/* 804B8000  38 61 00 18 */	addi r3, r1, 0x18
/* 804B8004  38 81 00 CC */	addi r4, r1, 0xcc
/* 804B8008  48 00 32 B1 */	bl __ct__4cXyzFRC4cXyz
/* 804B800C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B8010  38 81 00 24 */	addi r4, r1, 0x24
/* 804B8014  38 A1 00 18 */	addi r5, r1, 0x18
/* 804B8018  C0 3E 14 08 */	lfs f1, 0x1408(r30)
/* 804B801C  38 C0 00 00 */	li r6, 0
/* 804B8020  4B CC 8A C0 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_804B8024:
/* 804B8024  38 61 01 84 */	addi r3, r1, 0x184
/* 804B8028  38 80 FF FF */	li r4, -1
/* 804B802C  4B BB F8 1C */	b __dt__18dBgS_ObjGndChk_SplFv
/* 804B8030  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 804B8034  38 80 FF FF */	li r4, -1
/* 804B8038  4B BB F5 B8 */	b __dt__11dBgS_GndChkFv
lbl_804B803C:
/* 804B803C  E3 E1 02 68 */	psq_l f31, 616(r1), 0, 0 /* qr0 */
/* 804B8040  CB E1 02 60 */	lfd f31, 0x260(r1)
/* 804B8044  39 61 02 60 */	addi r11, r1, 0x260
/* 804B8048  4B EA A1 C8 */	b _restgpr_23
/* 804B804C  80 01 02 74 */	lwz r0, 0x274(r1)
/* 804B8050  7C 08 03 A6 */	mtlr r0
/* 804B8054  38 21 02 70 */	addi r1, r1, 0x270
/* 804B8058  4E 80 00 20 */	blr 
