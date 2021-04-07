lbl_80B82E88:
/* 80B82E88  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B82E8C  7C 08 02 A6 */	mflr r0
/* 80B82E90  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B82E94  39 61 00 90 */	addi r11, r1, 0x90
/* 80B82E98  4B 7D F3 2D */	bl _savegpr_23
/* 80B82E9C  7C 79 1B 78 */	mr r25, r3
/* 80B82EA0  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B82EA4  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B82EA8  38 9F 00 00 */	addi r4, r31, 0
/* 80B82EAC  A8 04 00 74 */	lha r0, 0x74(r4)
/* 80B82EB0  54 00 08 3C */	slwi r0, r0, 1
/* 80B82EB4  7C 1C 07 34 */	extsh r28, r0
/* 80B82EB8  3B 60 00 02 */	li r27, 2
/* 80B82EBC  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B82EC0  2C 00 00 02 */	cmpwi r0, 2
/* 80B82EC4  41 82 01 18 */	beq lbl_80B82FDC
/* 80B82EC8  40 80 04 E4 */	bge lbl_80B833AC
/* 80B82ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80B82ED0  41 82 00 0C */	beq lbl_80B82EDC
/* 80B82ED4  48 00 04 D8 */	b lbl_80B833AC
/* 80B82ED8  48 00 04 D4 */	b lbl_80B833AC
lbl_80B82EDC:
/* 80B82EDC  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B82EE0  60 00 00 02 */	ori r0, r0, 2
/* 80B82EE4  90 19 05 FC */	stw r0, 0x5fc(r25)
/* 80B82EE8  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B82EEC  60 00 00 04 */	ori r0, r0, 4
/* 80B82EF0  90 19 05 FC */	stw r0, 0x5fc(r25)
/* 80B82EF4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B82EF8  D0 19 05 30 */	stfs f0, 0x530(r25)
/* 80B82EFC  D0 19 04 F8 */	stfs f0, 0x4f8(r25)
/* 80B82F00  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 80B82F04  D0 19 05 00 */	stfs f0, 0x500(r25)
/* 80B82F08  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 80B82F0C  38 00 00 00 */	li r0, 0
/* 80B82F10  98 19 15 3D */	stb r0, 0x153d(r25)
/* 80B82F14  38 80 00 00 */	li r4, 0
/* 80B82F18  38 A0 00 00 */	li r5, 0
/* 80B82F1C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B82F20  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B82F24  7D 89 03 A6 */	mtctr r12
/* 80B82F28  4E 80 04 21 */	bctrl 
/* 80B82F2C  88 19 15 76 */	lbz r0, 0x1576(r25)
/* 80B82F30  28 00 00 00 */	cmplwi r0, 0
/* 80B82F34  40 82 00 28 */	bne lbl_80B82F5C
/* 80B82F38  7F 23 CB 78 */	mr r3, r25
/* 80B82F3C  38 80 00 17 */	li r4, 0x17
/* 80B82F40  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B82F44  38 A0 00 00 */	li r5, 0
/* 80B82F48  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B82F4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B82F50  7D 89 03 A6 */	mtctr r12
/* 80B82F54  4E 80 04 21 */	bctrl 
/* 80B82F58  48 00 00 24 */	b lbl_80B82F7C
lbl_80B82F5C:
/* 80B82F5C  7F 23 CB 78 */	mr r3, r25
/* 80B82F60  38 80 00 16 */	li r4, 0x16
/* 80B82F64  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B82F68  38 A0 00 00 */	li r5, 0
/* 80B82F6C  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B82F70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B82F74  7D 89 03 A6 */	mtctr r12
/* 80B82F78  4E 80 04 21 */	bctrl 
lbl_80B82F7C:
/* 80B82F7C  38 00 00 01 */	li r0, 1
/* 80B82F80  98 19 15 20 */	stb r0, 0x1520(r25)
/* 80B82F84  38 7F 00 00 */	addi r3, r31, 0
/* 80B82F88  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80B82F8C  D0 19 15 6C */	stfs f0, 0x156c(r25)
/* 80B82F90  38 00 00 00 */	li r0, 0
/* 80B82F94  98 19 07 BC */	stb r0, 0x7bc(r25)
/* 80B82F98  7F 23 CB 78 */	mr r3, r25
/* 80B82F9C  38 80 00 00 */	li r4, 0
/* 80B82FA0  4B FF B7 55 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B82FA4  38 60 00 00 */	li r3, 0
/* 80B82FA8  90 79 09 38 */	stw r3, 0x938(r25)
/* 80B82FAC  90 79 09 6C */	stw r3, 0x96c(r25)
/* 80B82FB0  38 00 00 02 */	li r0, 2
/* 80B82FB4  B0 19 14 E6 */	sth r0, 0x14e6(r25)
/* 80B82FB8  98 79 15 3E */	stb r3, 0x153e(r25)
/* 80B82FBC  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B82FC0  B0 19 15 36 */	sth r0, 0x1536(r25)
/* 80B82FC4  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B82FC8  B0 19 15 38 */	sth r0, 0x1538(r25)
/* 80B82FCC  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B82FD0  B0 19 15 3A */	sth r0, 0x153a(r25)
/* 80B82FD4  7F 23 CB 78 */	mr r3, r25
/* 80B82FD8  4B FF F2 61 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
lbl_80B82FDC:
/* 80B82FDC  A3 59 0C 18 */	lhz r26, 0xc18(r25)
/* 80B82FE0  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80B82FE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B82FE8  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B82FEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B82FF0  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80B82FF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B82FF8  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B82FFC  38 81 00 20 */	addi r4, r1, 0x20
/* 80B83000  38 A1 00 44 */	addi r5, r1, 0x44
/* 80B83004  4B FF 55 09 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B83008  2C 03 00 00 */	cmpwi r3, 0
/* 80B8300C  41 82 00 84 */	beq lbl_80B83090
/* 80B83010  2C 1A 00 00 */	cmpwi r26, 0
/* 80B83014  40 82 00 7C */	bne lbl_80B83090
/* 80B83018  88 19 0C 1A */	lbz r0, 0xc1a(r25)
/* 80B8301C  28 00 00 01 */	cmplwi r0, 1
/* 80B83020  40 82 00 70 */	bne lbl_80B83090
/* 80B83024  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B83028  4B 5C DB 95 */	bl reverse__13daNpcF_Path_cFv
/* 80B8302C  38 00 00 00 */	li r0, 0
/* 80B83030  98 19 15 94 */	stb r0, 0x1594(r25)
/* 80B83034  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B83038  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B8303C  7F 23 CB 78 */	mr r3, r25
/* 80B83040  38 80 00 1E */	li r4, 0x1e
/* 80B83044  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B83048  38 A0 00 00 */	li r5, 0
/* 80B8304C  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B83050  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B83054  7D 89 03 A6 */	mtctr r12
/* 80B83058  4E 80 04 21 */	bctrl 
/* 80B8305C  3C 60 80 B9 */	lis r3, lit_8131@ha /* 0x80B8D750@ha */
/* 80B83060  38 83 D7 50 */	addi r4, r3, lit_8131@l /* 0x80B8D750@l */
/* 80B83064  80 64 00 00 */	lwz r3, 0(r4)
/* 80B83068  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8306C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B83070  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B83074  80 04 00 08 */	lwz r0, 8(r4)
/* 80B83078  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B8307C  7F 23 CB 78 */	mr r3, r25
/* 80B83080  38 81 00 14 */	addi r4, r1, 0x14
/* 80B83084  4B FF AA 9D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B83088  38 60 00 00 */	li r3, 0
/* 80B8308C  48 00 03 24 */	b lbl_80B833B0
lbl_80B83090:
/* 80B83090  38 61 00 44 */	addi r3, r1, 0x44
/* 80B83094  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80B83098  4B 6E DB DD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8309C  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80B830A0  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B830A4  38 81 00 44 */	addi r4, r1, 0x44
/* 80B830A8  4B 6E DB 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B830AC  3B C1 00 0E */	addi r30, r1, 0xe
/* 80B830B0  B0 61 00 0E */	sth r3, 0xe(r1)
/* 80B830B4  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B830B8  3B A1 00 10 */	addi r29, r1, 0x10
/* 80B830BC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B830C0  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B830C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B830C8  4B 5C DB E1 */	bl getBeforePos__13daNpcF_Path_cFR4cXyz
/* 80B830CC  38 61 00 44 */	addi r3, r1, 0x44
/* 80B830D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B830D4  4B 6E DB A1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B830D8  7C 60 07 34 */	extsh r0, r3
/* 80B830DC  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80B830E0  40 81 00 20 */	ble lbl_80B83100
/* 80B830E4  38 00 40 00 */	li r0, 0x4000
/* 80B830E8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B830EC  38 00 00 00 */	li r0, 0
/* 80B830F0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80B830F4  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 80B830F8  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B830FC  48 00 00 0C */	b lbl_80B83108
lbl_80B83100:
/* 80B83100  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B83104  D0 19 15 28 */	stfs f0, 0x1528(r25)
lbl_80B83108:
/* 80B83108  A8 79 04 DC */	lha r3, 0x4dc(r25)
/* 80B8310C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80B83110  7C 03 00 50 */	subf r0, r3, r0
/* 80B83114  7C 18 07 34 */	extsh r24, r0
/* 80B83118  A8 79 04 DE */	lha r3, 0x4de(r25)
/* 80B8311C  A8 01 00 0E */	lha r0, 0xe(r1)
/* 80B83120  7C 03 00 50 */	subf r0, r3, r0
/* 80B83124  7C 17 07 34 */	extsh r23, r0
/* 80B83128  3B 40 00 00 */	li r26, 0
/* 80B8312C  88 19 15 76 */	lbz r0, 0x1576(r25)
/* 80B83130  28 00 00 00 */	cmplwi r0, 0
/* 80B83134  41 82 01 18 */	beq lbl_80B8324C
/* 80B83138  7F 03 C3 78 */	mr r3, r24
/* 80B8313C  4B 7E 1F 95 */	bl abs
/* 80B83140  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B83144  41 81 00 14 */	bgt lbl_80B83158
/* 80B83148  7E E3 BB 78 */	mr r3, r23
/* 80B8314C  4B 7E 1F 85 */	bl abs
/* 80B83150  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B83154  40 81 00 F8 */	ble lbl_80B8324C
lbl_80B83158:
/* 80B83158  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B8315C  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 80B83160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B83164  40 81 00 E8 */	ble lbl_80B8324C
/* 80B83168  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B8316C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B83170  A8 81 00 10 */	lha r4, 0x10(r1)
/* 80B83174  2C 04 20 00 */	cmpwi r4, 0x2000
/* 80B83178  40 81 00 0C */	ble lbl_80B83184
/* 80B8317C  7E E0 07 35 */	extsh. r0, r23
/* 80B83180  41 80 00 84 */	blt lbl_80B83204
lbl_80B83184:
/* 80B83184  2C 04 E0 00 */	cmpwi r4, -8192
/* 80B83188  40 80 00 0C */	bge lbl_80B83194
/* 80B8318C  7E E0 07 35 */	extsh. r0, r23
/* 80B83190  41 81 00 74 */	bgt lbl_80B83204
lbl_80B83194:
/* 80B83194  2C 18 D0 00 */	cmpwi r24, -12288
/* 80B83198  40 80 00 2C */	bge lbl_80B831C4
/* 80B8319C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B831A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B831A4  4C 41 13 82 */	cror 2, 1, 2
/* 80B831A8  40 82 00 5C */	bne lbl_80B83204
/* 80B831AC  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 80B831B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B831B4  4C 40 13 82 */	cror 2, 0, 2
/* 80B831B8  40 82 00 4C */	bne lbl_80B83204
/* 80B831BC  3B 40 00 01 */	li r26, 1
/* 80B831C0  48 00 00 44 */	b lbl_80B83204
lbl_80B831C4:
/* 80B831C4  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 80B831C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B831CC  4C 41 13 82 */	cror 2, 1, 2
/* 80B831D0  40 82 00 34 */	bne lbl_80B83204
/* 80B831D4  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 80B831D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B831DC  4C 40 13 82 */	cror 2, 0, 2
/* 80B831E0  40 82 00 24 */	bne lbl_80B83204
/* 80B831E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B831E8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B831EC  C0 3F 07 98 */	lfs f1, 0x798(r31)
/* 80B831F0  4B 48 C9 8D */	bl setMorf__13mDoExt_morf_cFf
/* 80B831F4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80B831F8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B831FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B83200  3B 40 00 01 */	li r26, 1
lbl_80B83204:
/* 80B83204  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B83208  41 82 00 20 */	beq lbl_80B83228
/* 80B8320C  7F 23 CB 78 */	mr r3, r25
/* 80B83210  38 81 00 0C */	addi r4, r1, 0xc
/* 80B83214  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B83218  38 C0 00 01 */	li r6, 1
/* 80B8321C  7F 87 E3 78 */	mr r7, r28
/* 80B83220  4B FF F2 D5 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B83224  48 00 00 40 */	b lbl_80B83264
lbl_80B83228:
/* 80B83228  7F 23 CB 78 */	mr r3, r25
/* 80B8322C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B83230  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B83234  38 C0 00 02 */	li r6, 2
/* 80B83238  7F 80 0E 70 */	srawi r0, r28, 1
/* 80B8323C  7C 00 01 94 */	addze r0, r0
/* 80B83240  7C 07 07 34 */	extsh r7, r0
/* 80B83244  4B FF F2 B1 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B83248  48 00 00 1C */	b lbl_80B83264
lbl_80B8324C:
/* 80B8324C  7F 23 CB 78 */	mr r3, r25
/* 80B83250  38 81 00 0C */	addi r4, r1, 0xc
/* 80B83254  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B83258  38 C0 00 02 */	li r6, 2
/* 80B8325C  7F 87 E3 78 */	mr r7, r28
/* 80B83260  4B FF F2 95 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
lbl_80B83264:
/* 80B83264  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B83268  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80B8326C  40 81 00 44 */	ble lbl_80B832B0
/* 80B83270  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 80B83274  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B83278  C8 3F 07 D0 */	lfd f1, 0x7d0(r31)
/* 80B8327C  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80B83280  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B83284  3C 00 43 30 */	lis r0, 0x4330
/* 80B83288  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B8328C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80B83290  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B83294  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B83298  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B8329C  FC 00 00 1E */	fctiwz f0, f0
/* 80B832A0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B832A4  83 81 00 5C */	lwz r28, 0x5c(r1)
/* 80B832A8  3B 60 00 02 */	li r27, 2
/* 80B832AC  48 00 00 0C */	b lbl_80B832B8
lbl_80B832B0:
/* 80B832B0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B832B4  D0 19 15 28 */	stfs f0, 0x1528(r25)
lbl_80B832B8:
/* 80B832B8  38 79 15 24 */	addi r3, r25, 0x1524
/* 80B832BC  C0 39 15 28 */	lfs f1, 0x1528(r25)
/* 80B832C0  38 9F 00 00 */	addi r4, r31, 0
/* 80B832C4  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80B832C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B832CC  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 80B832D0  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80B832D4  4B 6E C7 69 */	bl cLib_addCalc2__FPffff
/* 80B832D8  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B832DC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B832E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B832E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B832E8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B832EC  7F 23 CB 78 */	mr r3, r25
/* 80B832F0  38 81 00 38 */	addi r4, r1, 0x38
/* 80B832F4  4B FF F2 91 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B832F8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B832FC  40 82 00 60 */	bne lbl_80B8335C
/* 80B83300  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B83304  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B83308  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B8330C  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B83310  38 7F 00 00 */	addi r3, r31, 0
/* 80B83314  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80B83318  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B8331C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B83320  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B83324  40 80 00 08 */	bge lbl_80B8332C
/* 80B83328  48 00 00 18 */	b lbl_80B83340
lbl_80B8332C:
/* 80B8332C  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80B83330  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B83334  40 81 00 08 */	ble lbl_80B8333C
/* 80B83338  48 00 00 08 */	b lbl_80B83340
lbl_80B8333C:
/* 80B8333C  FC 20 00 90 */	fmr f1, f0
lbl_80B83340:
/* 80B83340  38 61 00 08 */	addi r3, r1, 8
/* 80B83344  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B83348  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80B8334C  4B 6E C6 F1 */	bl cLib_addCalc2__FPffff
/* 80B83350  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B83354  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B83358  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B8335C:
/* 80B8335C  7F 23 CB 78 */	mr r3, r25
/* 80B83360  7F 84 E3 78 */	mr r4, r28
/* 80B83364  7F 65 DB 78 */	mr r5, r27
/* 80B83368  7F C6 F3 78 */	mr r6, r30
/* 80B8336C  7F A7 EB 78 */	mr r7, r29
/* 80B83370  4B FF EC 49 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B83374  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80B83378  B0 19 04 E0 */	sth r0, 0x4e0(r25)
/* 80B8337C  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B83380  B0 19 08 F0 */	sth r0, 0x8f0(r25)
/* 80B83384  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B83388  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B8338C  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B83390  B0 19 08 F4 */	sth r0, 0x8f4(r25)
/* 80B83394  A8 19 08 F0 */	lha r0, 0x8f0(r25)
/* 80B83398  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 80B8339C  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B833A0  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B833A4  A8 19 08 F4 */	lha r0, 0x8f4(r25)
/* 80B833A8  B0 19 04 E8 */	sth r0, 0x4e8(r25)
lbl_80B833AC:
/* 80B833AC  38 60 00 01 */	li r3, 1
lbl_80B833B0:
/* 80B833B0  39 61 00 90 */	addi r11, r1, 0x90
/* 80B833B4  4B 7D EE 5D */	bl _restgpr_23
/* 80B833B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B833BC  7C 08 03 A6 */	mtlr r0
/* 80B833C0  38 21 00 90 */	addi r1, r1, 0x90
/* 80B833C4  4E 80 00 20 */	blr 
