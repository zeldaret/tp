lbl_80128478:
/* 80128478  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012847C  7C 08 02 A6 */	mflr r0
/* 80128480  90 01 00 44 */	stw r0, 0x44(r1)
/* 80128484  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80128488  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8012848C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80128490  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80128494  39 61 00 20 */	addi r11, r1, 0x20
/* 80128498  48 23 9D 41 */	bl _savegpr_28
/* 8012849C  7C 7E 1B 78 */	mr r30, r3
/* 801284A0  88 03 2F 98 */	lbz r0, 0x2f98(r3)
/* 801284A4  28 00 00 01 */	cmplwi r0, 1
/* 801284A8  40 82 00 18 */	bne lbl_801284C0
/* 801284AC  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlAtnMove_c0@ha /* 0x8038EF70@ha */
/* 801284B0  38 63 EF 70 */	addi r3, r3, m__23daAlinkHIO_wlAtnMove_c0@l /* 0x8038EF70@l */
/* 801284B4  C3 E3 00 30 */	lfs f31, 0x30(r3)
/* 801284B8  C3 C3 00 34 */	lfs f30, 0x34(r3)
/* 801284BC  48 00 00 14 */	b lbl_801284D0
lbl_801284C0:
/* 801284C0  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlAtnMove_c0@ha /* 0x8038EF70@ha */
/* 801284C4  38 63 EF 70 */	addi r3, r3, m__23daAlinkHIO_wlAtnMove_c0@l /* 0x8038EF70@l */
/* 801284C8  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 801284CC  C3 C3 00 20 */	lfs f30, 0x20(r3)
lbl_801284D0:
/* 801284D0  38 60 00 00 */	li r3, 0
/* 801284D4  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 801284D8  28 00 00 62 */	cmplwi r0, 0x62
/* 801284DC  41 82 00 10 */	beq lbl_801284EC
/* 801284E0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801284E4  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 801284E8  40 82 00 08 */	bne lbl_801284F0
lbl_801284EC:
/* 801284EC  38 60 00 01 */	li r3, 1
lbl_801284F0:
/* 801284F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801284F4  38 00 03 E8 */	li r0, 0x3e8
/* 801284F8  40 82 00 0C */	bne lbl_80128504
/* 801284FC  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlAtnMove_c0@ha /* 0x8038EF70@ha */
/* 80128500  A8 03 EF 70 */	lha r0, m__23daAlinkHIO_wlAtnMove_c0@l(r3)  /* 0x8038EF70@l */
lbl_80128504:
/* 80128504  7C 1F 03 78 */	mr r31, r0
/* 80128508  7F C3 F3 78 */	mr r3, r30
/* 8012850C  38 80 00 8B */	li r4, 0x8b
/* 80128510  48 00 02 FD */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80128514  2C 03 00 00 */	cmpwi r3, 0
/* 80128518  41 82 00 14 */	beq lbl_8012852C
/* 8012851C  7F C3 F3 78 */	mr r3, r30
/* 80128520  A8 9E 2F E4 */	lha r4, 0x2fe4(r30)
/* 80128524  4B FB F4 29 */	bl getChainStickAngleY__9daAlink_cCFs
/* 80128528  48 00 00 08 */	b lbl_80128530
lbl_8012852C:
/* 8012852C  A8 7E 2F E2 */	lha r3, 0x2fe2(r30)
lbl_80128530:
/* 80128530  7C 7D 1B 78 */	mr r29, r3
/* 80128534  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80128538  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012853C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128540  40 81 00 FC */	ble lbl_8012863C
/* 80128544  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80128548  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 8012854C  7C 03 00 50 */	subf r0, r3, r0
/* 80128550  7C 03 07 34 */	extsh r3, r0
/* 80128554  4B F8 AF 41 */	bl getDirectionFromAngle__9daAlink_cFs
/* 80128558  2C 03 00 01 */	cmpwi r3, 1
/* 8012855C  40 82 00 6C */	bne lbl_801285C8
/* 80128560  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 80128564  28 00 00 00 */	cmplwi r0, 0
/* 80128568  41 82 00 0C */	beq lbl_80128574
/* 8012856C  28 00 00 01 */	cmplwi r0, 1
/* 80128570  40 82 00 58 */	bne lbl_801285C8
lbl_80128574:
/* 80128574  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80128578  3C 63 00 01 */	addis r3, r3, 1
/* 8012857C  38 03 80 00 */	addi r0, r3, -32768
/* 80128580  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80128584  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 80128588  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 8012858C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80128590  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80128594  7F C3 F3 78 */	mr r3, r30
/* 80128598  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8012859C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 801285A0  7C 04 00 50 */	subf r0, r4, r0
/* 801285A4  7C 04 07 34 */	extsh r4, r0
/* 801285A8  48 00 09 65 */	bl checkWolfAtnMoveBack__9daAlink_cFs
/* 801285AC  2C 03 00 00 */	cmpwi r3, 0
/* 801285B0  41 82 00 10 */	beq lbl_801285C0
/* 801285B4  38 00 00 01 */	li r0, 1
/* 801285B8  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 801285BC  48 00 00 0C */	b lbl_801285C8
lbl_801285C0:
/* 801285C0  38 00 00 00 */	li r0, 0
/* 801285C4  98 1E 2F 98 */	stb r0, 0x2f98(r30)
lbl_801285C8:
/* 801285C8  AB 9E 04 DE */	lha r28, 0x4de(r30)
/* 801285CC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 801285D0  7F A4 EB 78 */	mr r4, r29
/* 801285D4  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtnMove_c0@ha /* 0x8038EF70@ha */
/* 801285D8  38 E5 EF 70 */	addi r7, r5, m__23daAlinkHIO_wlAtnMove_c0@l /* 0x8038EF70@l */
/* 801285DC  A8 A7 00 04 */	lha r5, 4(r7)
/* 801285E0  7F E6 FB 78 */	mr r6, r31
/* 801285E4  A8 E7 00 02 */	lha r7, 2(r7)
/* 801285E8  48 14 7F 59 */	bl cLib_addCalcAngleS__FPsssss
/* 801285EC  7F C3 F3 78 */	mr r3, r30
/* 801285F0  7F 84 E3 78 */	mr r4, r28
/* 801285F4  48 00 1A 39 */	bl wolfSideBgCheck__9daAlink_cFs
/* 801285F8  2C 03 00 00 */	cmpwi r3, 0
/* 801285FC  41 82 00 14 */	beq lbl_80128610
/* 80128600  B3 9E 04 DE */	sth r28, 0x4de(r30)
/* 80128604  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 80128608  64 00 00 20 */	oris r0, r0, 0x20
/* 8012860C  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80128610:
/* 80128610  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80128614  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80128618  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8012861C  7C 1C 00 50 */	subf r0, r28, r0
/* 80128620  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80128624  7C 63 02 14 */	add r3, r3, r0
/* 80128628  C0 23 00 04 */	lfs f1, 4(r3)
/* 8012862C  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 80128630  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80128634  EF E0 00 72 */	fmuls f31, f0, f1
/* 80128638  48 00 00 A8 */	b lbl_801286E0
lbl_8012863C:
/* 8012863C  7F C3 F3 78 */	mr r3, r30
/* 80128640  4B F8 B2 C5 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80128644  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128648  41 82 00 94 */	beq lbl_801286DC
/* 8012864C  7F C3 F3 78 */	mr r3, r30
/* 80128650  38 80 00 00 */	li r4, 0
/* 80128654  4B F8 B0 E1 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 80128658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012865C  40 82 00 58 */	bne lbl_801286B4
/* 80128660  7F C3 F3 78 */	mr r3, r30
/* 80128664  4B FE D5 BD */	bl checkEventRun__9daAlink_cCFv
/* 80128668  2C 03 00 00 */	cmpwi r3, 0
/* 8012866C  40 82 00 48 */	bne lbl_801286B4
/* 80128670  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80128674  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80128678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012867C  41 81 00 38 */	bgt lbl_801286B4
/* 80128680  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80128684  28 00 00 F1 */	cmplwi r0, 0xf1
/* 80128688  41 82 00 14 */	beq lbl_8012869C
/* 8012868C  28 00 01 1B */	cmplwi r0, 0x11b
/* 80128690  41 82 00 0C */	beq lbl_8012869C
/* 80128694  28 00 00 F6 */	cmplwi r0, 0xf6
/* 80128698  40 82 00 1C */	bne lbl_801286B4
lbl_8012869C:
/* 8012869C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 801286A0  A8 9E 2F E4 */	lha r4, 0x2fe4(r30)
/* 801286A4  38 A0 00 02 */	li r5, 2
/* 801286A8  38 C0 20 00 */	li r6, 0x2000
/* 801286AC  38 E0 08 00 */	li r7, 0x800
/* 801286B0  48 14 7E 91 */	bl cLib_addCalcAngleS__FPsssss
lbl_801286B4:
/* 801286B4  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 801286B8  28 00 00 01 */	cmplwi r0, 1
/* 801286BC  40 82 00 18 */	bne lbl_801286D4
/* 801286C0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 801286C4  3C 63 00 01 */	addis r3, r3, 1
/* 801286C8  38 03 80 00 */	addi r0, r3, -32768
/* 801286CC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 801286D0  48 00 00 0C */	b lbl_801286DC
lbl_801286D4:
/* 801286D4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801286D8  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_801286DC:
/* 801286DC  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
lbl_801286E0:
/* 801286E0  7F C3 F3 78 */	mr r3, r30
/* 801286E4  4B FF F6 85 */	bl checkWolfShapeReverse__9daAlink_cCFv
/* 801286E8  2C 03 00 00 */	cmpwi r3, 0
/* 801286EC  40 82 00 74 */	bne lbl_80128760
/* 801286F0  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 801286F4  28 00 00 01 */	cmplwi r0, 1
/* 801286F8  41 82 00 24 */	beq lbl_8012871C
/* 801286FC  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 80128700  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80128704  41 82 00 2C */	beq lbl_80128730
/* 80128708  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8012870C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80128710  48 14 87 15 */	bl cLib_distanceAngleS__Fss
/* 80128714  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80128718  40 81 00 18 */	ble lbl_80128730
lbl_8012871C:
/* 8012871C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80128720  3C 63 00 01 */	addis r3, r3, 1
/* 80128724  38 03 80 00 */	addi r0, r3, -32768
/* 80128728  7C 04 07 34 */	extsh r4, r0
/* 8012872C  48 00 00 08 */	b lbl_80128734
lbl_80128730:
/* 80128730  A8 9E 04 DE */	lha r4, 0x4de(r30)
lbl_80128734:
/* 80128734  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80128738  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtnMove_c0@ha /* 0x8038EF70@ha */
/* 8012873C  38 E5 EF 70 */	addi r7, r5, m__23daAlinkHIO_wlAtnMove_c0@l /* 0x8038EF70@l */
/* 80128740  A8 A7 00 04 */	lha r5, 4(r7)
/* 80128744  7F E0 07 34 */	extsh r0, r31
/* 80128748  54 00 08 3C */	slwi r0, r0, 1
/* 8012874C  7C 06 07 34 */	extsh r6, r0
/* 80128750  A8 07 00 02 */	lha r0, 2(r7)
/* 80128754  54 00 08 3C */	slwi r0, r0, 1
/* 80128758  7C 07 07 34 */	extsh r7, r0
/* 8012875C  48 14 7D E5 */	bl cLib_addCalcAngleS__FPsssss
lbl_80128760:
/* 80128760  7F C3 F3 78 */	mr r3, r30
/* 80128764  FC 20 F8 90 */	fmr f1, f31
/* 80128768  FC 40 F0 90 */	fmr f2, f30
/* 8012876C  4B F8 B1 B9 */	bl setNormalSpeedF__9daAlink_cFff
/* 80128770  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80128774  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80128778  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8012877C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80128780  39 61 00 20 */	addi r11, r1, 0x20
/* 80128784  48 23 9A A1 */	bl _restgpr_28
/* 80128788  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012878C  7C 08 03 A6 */	mtlr r0
/* 80128790  38 21 00 40 */	addi r1, r1, 0x40
/* 80128794  4E 80 00 20 */	blr 
