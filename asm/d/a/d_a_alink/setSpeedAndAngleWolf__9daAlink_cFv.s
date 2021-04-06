lbl_80127F50:
/* 80127F50  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80127F54  7C 08 02 A6 */	mflr r0
/* 80127F58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80127F5C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80127F60  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80127F64  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80127F68  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80127F6C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80127F70  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80127F74  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80127F78  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80127F7C  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80127F80  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80127F84  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80127F88  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 80127F8C  39 61 00 50 */	addi r11, r1, 0x50
/* 80127F90  48 23 A2 3D */	bl _savegpr_25
/* 80127F94  7C 79 1B 78 */	mr r25, r3
/* 80127F98  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 80127F9C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80127FA0  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80127FA4  41 82 00 6C */	beq lbl_80128010
/* 80127FA8  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 80127FAC  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80127FB0  AB C4 00 54 */	lha r30, 0x54(r4)
/* 80127FB4  AB A4 00 50 */	lha r29, 0x50(r4)
/* 80127FB8  AB 84 00 52 */	lha r28, 0x52(r4)
/* 80127FBC  4B FF FF 65 */	bl checkWolfSlowDash__9daAlink_cFv
/* 80127FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80127FC4  41 82 00 14 */	beq lbl_80127FD8
/* 80127FC8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 80127FCC  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80127FD0  C3 C3 00 EC */	lfs f30, 0xec(r3)
/* 80127FD4  48 00 00 2C */	b lbl_80128000
lbl_80127FD8:
/* 80127FD8  88 19 2F C7 */	lbz r0, 0x2fc7(r25)
/* 80127FDC  28 00 00 02 */	cmplwi r0, 2
/* 80127FE0  40 82 00 14 */	bne lbl_80127FF4
/* 80127FE4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 80127FE8  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80127FEC  C3 C3 00 FC */	lfs f30, 0xfc(r3)
/* 80127FF0  48 00 00 10 */	b lbl_80128000
lbl_80127FF4:
/* 80127FF4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 80127FF8  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80127FFC  C3 C3 00 D0 */	lfs f30, 0xd0(r3)
lbl_80128000:
/* 80128000  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 80128004  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80128008  C3 A3 00 6C */	lfs f29, 0x6c(r3)
/* 8012800C  48 00 00 20 */	b lbl_8012802C
lbl_80128010:
/* 80128010  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 80128014  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 80128018  AB C3 00 04 */	lha r30, 4(r3)
/* 8012801C  AB A3 00 00 */	lha r29, 0(r3)
/* 80128020  AB 83 00 02 */	lha r28, 2(r3)
/* 80128024  C3 C3 00 0C */	lfs f30, 0xc(r3)
/* 80128028  C3 A3 00 10 */	lfs f29, 0x10(r3)
lbl_8012802C:
/* 8012802C  7F 23 CB 78 */	mr r3, r25
/* 80128030  4B FE DB F1 */	bl checkEventRun__9daAlink_cCFv
/* 80128034  7C 7F 1B 78 */	mr r31, r3
/* 80128038  C0 39 33 AC */	lfs f1, 0x33ac(r25)
/* 8012803C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80128040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128044  40 81 02 F0 */	ble lbl_80128334
/* 80128048  A8 99 04 DE */	lha r4, 0x4de(r25)
/* 8012804C  7C 9B 23 78 */	mr r27, r4
/* 80128050  3B 40 00 00 */	li r26, 0
/* 80128054  C0 19 33 A8 */	lfs f0, 0x33a8(r25)
/* 80128058  EF 80 00 32 */	fmuls f28, f0, f0
/* 8012805C  C0 39 05 2C */	lfs f1, 0x52c(r25)
/* 80128060  C0 19 05 94 */	lfs f0, 0x594(r25)
/* 80128064  EF 61 00 24 */	fdivs f27, f1, f0
/* 80128068  A8 79 2F E2 */	lha r3, 0x2fe2(r25)
/* 8012806C  48 14 8D B9 */	bl cLib_distanceAngleS__Fss
/* 80128070  2C 03 70 00 */	cmpwi r3, 0x7000
/* 80128074  40 81 01 30 */	ble lbl_801281A4
/* 80128078  80 79 31 80 */	lwz r3, 0x3180(r25)
/* 8012807C  48 23 D0 55 */	bl abs
/* 80128080  2C 03 50 00 */	cmpwi r3, 0x5000
/* 80128084  40 80 01 20 */	bge lbl_801281A4
/* 80128088  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 8012808C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80128090  40 82 00 14 */	bne lbl_801280A4
/* 80128094  C0 39 05 2C */	lfs f1, 0x52c(r25)
/* 80128098  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 8012809C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801280A0  40 80 00 14 */	bge lbl_801280B4
lbl_801280A4:
/* 801280A4  C0 39 33 A8 */	lfs f1, 0x33a8(r25)
/* 801280A8  C0 02 95 DC */	lfs f0, lit_27477(r2)
/* 801280AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801280B0  40 81 00 F4 */	ble lbl_801281A4
lbl_801280B4:
/* 801280B4  28 00 00 00 */	cmplwi r0, 0
/* 801280B8  40 82 00 14 */	bne lbl_801280CC
/* 801280BC  C0 39 05 2C */	lfs f1, 0x52c(r25)
/* 801280C0  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 801280C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801280C8  40 80 00 58 */	bge lbl_80128120
lbl_801280CC:
/* 801280CC  2C 1F 00 00 */	cmpwi r31, 0
/* 801280D0  40 82 00 50 */	bne lbl_80128120
/* 801280D4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 801280D8  28 00 00 F1 */	cmplwi r0, 0xf1
/* 801280DC  41 82 00 0C */	beq lbl_801280E8
/* 801280E0  28 00 00 F2 */	cmplwi r0, 0xf2
/* 801280E4  40 82 00 3C */	bne lbl_80128120
lbl_801280E8:
/* 801280E8  38 79 04 DE */	addi r3, r25, 0x4de
/* 801280EC  A8 99 2F E2 */	lha r4, 0x2fe2(r25)
/* 801280F0  7F C5 F3 78 */	mr r5, r30
/* 801280F4  7F A6 EB 78 */	mr r6, r29
/* 801280F8  7F 87 E3 78 */	mr r7, r28
/* 801280FC  48 14 84 45 */	bl cLib_addCalcAngleS__FPsssss
/* 80128100  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 80128104  28 00 00 F2 */	cmplwi r0, 0xf2
/* 80128108  40 82 01 40 */	bne lbl_80128248
/* 8012810C  C0 02 92 AC */	lfs f0, lit_6023(r2)
/* 80128110  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80128114  40 81 01 34 */	ble lbl_80128248
/* 80128118  3B 40 00 01 */	li r26, 1
/* 8012811C  48 00 01 2C */	b lbl_80128248
lbl_80128120:
/* 80128120  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 80128124  28 00 00 F2 */	cmplwi r0, 0xf2
/* 80128128  40 82 00 44 */	bne lbl_8012816C
/* 8012812C  80 19 05 74 */	lwz r0, 0x574(r25)
/* 80128130  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80128134  41 82 00 18 */	beq lbl_8012814C
/* 80128138  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8012813C  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80128140  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80128144  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80128148  41 81 02 E8 */	bgt lbl_80128430
lbl_8012814C:
/* 8012814C  28 00 00 00 */	cmplwi r0, 0
/* 80128150  40 82 00 1C */	bne lbl_8012816C
/* 80128154  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 80128158  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 8012815C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80128160  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80128164  40 81 00 08 */	ble lbl_8012816C
/* 80128168  48 00 02 C8 */	b lbl_80128430
lbl_8012816C:
/* 8012816C  38 79 04 DE */	addi r3, r25, 0x4de
/* 80128170  A8 99 2F E2 */	lha r4, 0x2fe2(r25)
/* 80128174  7F C5 F3 78 */	mr r5, r30
/* 80128178  7F A6 EB 78 */	mr r6, r29
/* 8012817C  7F 87 E3 78 */	mr r7, r28
/* 80128180  48 14 83 C1 */	bl cLib_addCalcAngleS__FPsssss
/* 80128184  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 80128188  28 00 00 F2 */	cmplwi r0, 0xf2
/* 8012818C  40 82 00 BC */	bne lbl_80128248
/* 80128190  C0 02 92 AC */	lfs f0, lit_6023(r2)
/* 80128194  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80128198  40 81 00 B0 */	ble lbl_80128248
/* 8012819C  3B 40 00 01 */	li r26, 1
/* 801281A0  48 00 00 A8 */	b lbl_80128248
lbl_801281A4:
/* 801281A4  2C 1F 00 00 */	cmpwi r31, 0
/* 801281A8  41 82 00 10 */	beq lbl_801281B8
/* 801281AC  7F A6 EB 78 */	mr r6, r29
/* 801281B0  7F 87 E3 78 */	mr r7, r28
/* 801281B4  48 00 00 84 */	b lbl_80128238
lbl_801281B8:
/* 801281B8  7F A0 07 34 */	extsh r0, r29
/* 801281BC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 801281C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801281C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801281C8  3C 00 43 30 */	lis r0, 0x4330
/* 801281CC  90 01 00 08 */	stw r0, 8(r1)
/* 801281D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801281D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801281D8  EC 00 07 32 */	fmuls f0, f0, f28
/* 801281DC  FC 00 00 1E */	fctiwz f0, f0
/* 801281E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801281E4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801281E8  7C C0 07 34 */	extsh r0, r6
/* 801281EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 801281F0  40 80 00 08 */	bge lbl_801281F8
/* 801281F4  38 C0 00 0A */	li r6, 0xa
lbl_801281F8:
/* 801281F8  7F 80 07 34 */	extsh r0, r28
/* 801281FC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80128200  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80128204  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80128208  3C 00 43 30 */	lis r0, 0x4330
/* 8012820C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80128210  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80128214  EC 00 08 28 */	fsubs f0, f0, f1
/* 80128218  EC 00 07 32 */	fmuls f0, f0, f28
/* 8012821C  FC 00 00 1E */	fctiwz f0, f0
/* 80128220  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80128224  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 80128228  7C E0 07 34 */	extsh r0, r7
/* 8012822C  2C 00 00 01 */	cmpwi r0, 1
/* 80128230  40 80 00 08 */	bge lbl_80128238
/* 80128234  38 E0 00 01 */	li r7, 1
lbl_80128238:
/* 80128238  38 79 04 DE */	addi r3, r25, 0x4de
/* 8012823C  A8 99 2F E2 */	lha r4, 0x2fe2(r25)
/* 80128240  7F C5 F3 78 */	mr r5, r30
/* 80128244  48 14 82 FD */	bl cLib_addCalcAngleS__FPsssss
lbl_80128248:
/* 80128248  7F 23 CB 78 */	mr r3, r25
/* 8012824C  7F 64 DB 78 */	mr r4, r27
/* 80128250  48 00 1D DD */	bl wolfSideBgCheck__9daAlink_cFs
/* 80128254  2C 03 00 00 */	cmpwi r3, 0
/* 80128258  41 82 00 2C */	beq lbl_80128284
/* 8012825C  B3 79 04 DE */	sth r27, 0x4de(r25)
/* 80128260  80 19 05 8C */	lwz r0, 0x58c(r25)
/* 80128264  64 00 00 20 */	oris r0, r0, 0x20
/* 80128268  90 19 05 8C */	stw r0, 0x58c(r25)
/* 8012826C  A8 79 2F E2 */	lha r3, 0x2fe2(r25)
/* 80128270  A8 99 04 DE */	lha r4, 0x4de(r25)
/* 80128274  48 14 8B B1 */	bl cLib_distanceAngleS__Fss
/* 80128278  2C 03 70 00 */	cmpwi r3, 0x7000
/* 8012827C  40 81 00 08 */	ble lbl_80128284
/* 80128280  3B 40 00 01 */	li r26, 1
lbl_80128284:
/* 80128284  2C 1A 00 00 */	cmpwi r26, 0
/* 80128288  40 82 00 AC */	bne lbl_80128334
/* 8012828C  7F 23 CB 78 */	mr r3, r25
/* 80128290  4B F8 BC 9D */	bl getStickAngleDistanceRate__9daAlink_cFv
/* 80128294  FF 60 08 90 */	fmr f27, f1
/* 80128298  2C 1F 00 00 */	cmpwi r31, 0
/* 8012829C  41 82 00 14 */	beq lbl_801282B0
/* 801282A0  C0 19 33 A8 */	lfs f0, 0x33a8(r25)
/* 801282A4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801282A8  EF FB 00 32 */	fmuls f31, f27, f0
/* 801282AC  48 00 00 88 */	b lbl_80128334
lbl_801282B0:
/* 801282B0  C0 39 33 98 */	lfs f1, 0x3398(r25)
/* 801282B4  C0 19 05 94 */	lfs f0, 0x594(r25)
/* 801282B8  EC 01 00 24 */	fdivs f0, f1, f0
/* 801282BC  FC 00 02 10 */	fabs f0, f0
/* 801282C0  FC 40 00 18 */	frsp f2, f0
/* 801282C4  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 801282C8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801282CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801282D0  EF 41 00 32 */	fmuls f26, f1, f0
/* 801282D4  7F 23 CB 78 */	mr r3, r25
/* 801282D8  38 80 00 01 */	li r4, 1
/* 801282DC  38 A0 00 01 */	li r5, 1
/* 801282E0  4B F9 31 D9 */	bl checkHeavyStateOn__9daAlink_cFii
/* 801282E4  2C 03 00 00 */	cmpwi r3, 0
/* 801282E8  41 82 00 0C */	beq lbl_801282F4
/* 801282EC  C0 19 34 34 */	lfs f0, 0x3434(r25)
/* 801282F0  EF 5A 00 32 */	fmuls f26, f26, f0
lbl_801282F4:
/* 801282F4  80 19 05 74 */	lwz r0, 0x574(r25)
/* 801282F8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 801282FC  41 82 00 24 */	beq lbl_80128320
/* 80128300  A8 79 04 DE */	lha r3, 0x4de(r25)
/* 80128304  3C 63 00 01 */	addis r3, r3, 1
/* 80128308  38 03 80 00 */	addi r0, r3, -32768
/* 8012830C  7C 03 07 34 */	extsh r3, r0
/* 80128310  A8 99 30 92 */	lha r4, 0x3092(r25)
/* 80128314  48 14 8B 11 */	bl cLib_distanceAngleS__Fss
/* 80128318  2C 03 0C 00 */	cmpwi r3, 0xc00
/* 8012831C  41 80 00 18 */	blt lbl_80128334
lbl_80128320:
/* 80128320  C0 19 33 A8 */	lfs f0, 0x33a8(r25)
/* 80128324  FC 00 D0 40 */	fcmpo cr0, f0, f26
/* 80128328  40 81 00 0C */	ble lbl_80128334
/* 8012832C  EC 1E 07 32 */	fmuls f0, f30, f28
/* 80128330  EF FB 00 32 */	fmuls f31, f27, f0
lbl_80128334:
/* 80128334  C0 39 33 AC */	lfs f1, 0x33ac(r25)
/* 80128338  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012833C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128340  41 81 00 10 */	bgt lbl_80128350
/* 80128344  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 80128348  28 00 01 1B */	cmplwi r0, 0x11b
/* 8012834C  40 82 00 88 */	bne lbl_801283D4
lbl_80128350:
/* 80128350  AB 59 04 E6 */	lha r26, 0x4e6(r25)
/* 80128354  7F 23 CB 78 */	mr r3, r25
/* 80128358  4B FF FA 11 */	bl checkWolfShapeReverse__9daAlink_cCFv
/* 8012835C  2C 03 00 00 */	cmpwi r3, 0
/* 80128360  41 82 00 18 */	beq lbl_80128378
/* 80128364  A8 79 2F E2 */	lha r3, 0x2fe2(r25)
/* 80128368  3C 63 00 01 */	addis r3, r3, 1
/* 8012836C  38 03 80 00 */	addi r0, r3, -32768
/* 80128370  7C 04 07 34 */	extsh r4, r0
/* 80128374  48 00 00 08 */	b lbl_8012837C
lbl_80128378:
/* 80128378  A8 99 2F E2 */	lha r4, 0x2fe2(r25)
lbl_8012837C:
/* 8012837C  38 79 04 E6 */	addi r3, r25, 0x4e6
/* 80128380  7F C5 F3 78 */	mr r5, r30
/* 80128384  7F A0 07 34 */	extsh r0, r29
/* 80128388  54 00 08 3C */	slwi r0, r0, 1
/* 8012838C  7C 06 07 34 */	extsh r6, r0
/* 80128390  7F 80 07 34 */	extsh r0, r28
/* 80128394  54 00 08 3C */	slwi r0, r0, 1
/* 80128398  7C 07 07 34 */	extsh r7, r0
/* 8012839C  48 14 81 A5 */	bl cLib_addCalcAngleS__FPsssss
/* 801283A0  A8 99 04 DE */	lha r4, 0x4de(r25)
/* 801283A4  7C 04 D0 50 */	subf r0, r4, r26
/* 801283A8  7C 03 07 34 */	extsh r3, r0
/* 801283AC  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 801283B0  7C 04 00 50 */	subf r0, r4, r0
/* 801283B4  7C 00 07 34 */	extsh r0, r0
/* 801283B8  7C 60 19 D7 */	mullw. r3, r0, r3
/* 801283BC  41 81 00 64 */	bgt lbl_80128420
/* 801283C0  3C 00 FF 00 */	lis r0, 0xff00
/* 801283C4  7C 03 00 00 */	cmpw r3, r0
/* 801283C8  41 80 00 58 */	blt lbl_80128420
/* 801283CC  B0 99 04 E6 */	sth r4, 0x4e6(r25)
/* 801283D0  48 00 00 50 */	b lbl_80128420
lbl_801283D4:
/* 801283D4  2C 1F 00 00 */	cmpwi r31, 0
/* 801283D8  40 82 00 48 */	bne lbl_80128420
/* 801283DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801283E0  41 81 00 40 */	bgt lbl_80128420
/* 801283E4  7F 23 CB 78 */	mr r3, r25
/* 801283E8  4B F8 B1 19 */	bl checkAttentionState__9daAlink_cFv
/* 801283EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801283F0  41 82 00 30 */	beq lbl_80128420
/* 801283F4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 801283F8  28 00 00 F1 */	cmplwi r0, 0xf1
/* 801283FC  40 82 00 24 */	bne lbl_80128420
/* 80128400  38 79 04 E6 */	addi r3, r25, 0x4e6
/* 80128404  A8 99 2F E4 */	lha r4, 0x2fe4(r25)
/* 80128408  38 A0 00 02 */	li r5, 2
/* 8012840C  38 C0 20 00 */	li r6, 0x2000
/* 80128410  38 E0 08 00 */	li r7, 0x800
/* 80128414  48 14 81 2D */	bl cLib_addCalcAngleS__FPsssss
/* 80128418  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 8012841C  B0 19 04 DE */	sth r0, 0x4de(r25)
lbl_80128420:
/* 80128420  7F 23 CB 78 */	mr r3, r25
/* 80128424  FC 20 F8 90 */	fmr f1, f31
/* 80128428  FC 40 E8 90 */	fmr f2, f29
/* 8012842C  4B F8 B4 F9 */	bl setNormalSpeedF__9daAlink_cFff
lbl_80128430:
/* 80128430  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80128434  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80128438  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8012843C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80128440  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80128444  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80128448  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 8012844C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 80128450  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 80128454  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80128458  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 8012845C  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 80128460  39 61 00 50 */	addi r11, r1, 0x50
/* 80128464  48 23 9D B5 */	bl _restgpr_25
/* 80128468  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8012846C  7C 08 03 A6 */	mtlr r0
/* 80128470  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80128474  4E 80 00 20 */	blr 
