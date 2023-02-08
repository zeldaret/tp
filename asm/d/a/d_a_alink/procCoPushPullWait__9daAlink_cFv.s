lbl_800E857C:
/* 800E857C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E8580  7C 08 02 A6 */	mflr r0
/* 800E8584  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E8588  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800E858C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800E8590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E8594  93 C1 00 08 */	stw r30, 8(r1)
/* 800E8598  7C 7F 1B 78 */	mr r31, r3
/* 800E859C  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 800E85A0  2C 00 00 00 */	cmpwi r0, 0
/* 800E85A4  40 82 00 10 */	bne lbl_800E85B4
/* 800E85A8  38 80 00 15 */	li r4, 0x15
/* 800E85AC  38 A0 00 02 */	li r5, 2
/* 800E85B0  4B FF F9 21 */	bl setWallGrabStatus__9daAlink_cFUcUc
lbl_800E85B4:
/* 800E85B4  7F E3 FB 78 */	mr r3, r31
/* 800E85B8  4B FC 7D 05 */	bl setFrontWallType__9daAlink_cFv
/* 800E85BC  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800E85C0  2C 00 00 00 */	cmpwi r0, 0
/* 800E85C4  40 82 00 20 */	bne lbl_800E85E4
/* 800E85C8  7F E3 FB 78 */	mr r3, r31
/* 800E85CC  4B FF F9 4D */	bl wallGrabButton__9daAlink_cFv
/* 800E85D0  2C 03 00 00 */	cmpwi r3, 0
/* 800E85D4  41 82 01 5C */	beq lbl_800E8730
/* 800E85D8  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800E85DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800E85E0  41 82 01 50 */	beq lbl_800E8730
lbl_800E85E4:
/* 800E85E4  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800E85E8  2C 00 00 00 */	cmpwi r0, 0
/* 800E85EC  41 82 00 9C */	beq lbl_800E8688
/* 800E85F0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800E85F4  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800E85F8  38 A0 00 03 */	li r5, 3
/* 800E85FC  38 C0 08 00 */	li r6, 0x800
/* 800E8600  38 E0 01 00 */	li r7, 0x100
/* 800E8604  48 18 7F 3D */	bl cLib_addCalcAngleS__FPsssss
/* 800E8608  7C 7E 1B 78 */	mr r30, r3
/* 800E860C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E8610  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E8614  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800E8618  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800E861C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800E8620  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800E8624  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 800E8628  48 18 73 55 */	bl cLib_addCalc__FPfffff
/* 800E862C  FF E0 08 90 */	fmr f31, f1
/* 800E8630  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 800E8634  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800E8638  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800E863C  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800E8640  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 800E8644  48 18 73 39 */	bl cLib_addCalc__FPfffff
/* 800E8648  EC 3F 08 2A */	fadds f1, f31, f1
/* 800E864C  7F C0 07 35 */	extsh. r0, r30
/* 800E8650  40 82 00 38 */	bne lbl_800E8688
/* 800E8654  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800E8658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E865C  40 80 00 2C */	bge lbl_800E8688
/* 800E8660  7F E3 FB 78 */	mr r3, r31
/* 800E8664  4B FD 0B F1 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800E8668  2C 03 00 00 */	cmpwi r3, 0
/* 800E866C  41 82 00 1C */	beq lbl_800E8688
/* 800E8670  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 800E8674  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800E8678  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 800E867C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800E8680  38 00 00 00 */	li r0, 0
/* 800E8684  90 1F 31 98 */	stw r0, 0x3198(r31)
lbl_800E8688:
/* 800E8688  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800E868C  2C 00 00 00 */	cmpwi r0, 0
/* 800E8690  40 82 00 A8 */	bne lbl_800E8738
/* 800E8694  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800E8698  2C 00 00 00 */	cmpwi r0, 0
/* 800E869C  41 82 00 18 */	beq lbl_800E86B4
/* 800E86A0  7F E3 FB 78 */	mr r3, r31
/* 800E86A4  38 80 00 00 */	li r4, 0
/* 800E86A8  38 A0 00 01 */	li r5, 1
/* 800E86AC  48 00 00 B1 */	bl procCoPushMoveInit__9daAlink_cFii
/* 800E86B0  48 00 00 88 */	b lbl_800E8738
lbl_800E86B4:
/* 800E86B4  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800E86B8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E86BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E86C0  40 81 00 78 */	ble lbl_800E8738
/* 800E86C4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800E86C8  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800E86CC  7C 03 00 50 */	subf r0, r3, r0
/* 800E86D0  7C 03 07 34 */	extsh r3, r0
/* 800E86D4  4B FC AD C1 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800E86D8  2C 03 00 00 */	cmpwi r3, 0
/* 800E86DC  40 82 00 30 */	bne lbl_800E870C
/* 800E86E0  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800E86E4  38 80 00 01 */	li r4, 1
/* 800E86E8  4B FB 9A F9 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800E86EC  7C 60 07 34 */	extsh r0, r3
/* 800E86F0  20 00 00 DF */	subfic r0, r0, 0xdf
/* 800E86F4  7C 00 00 34 */	cntlzw r0, r0
/* 800E86F8  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 800E86FC  7F E3 FB 78 */	mr r3, r31
/* 800E8700  38 80 00 00 */	li r4, 0
/* 800E8704  48 00 00 59 */	bl procCoPushMoveInit__9daAlink_cFii
/* 800E8708  48 00 00 30 */	b lbl_800E8738
lbl_800E870C:
/* 800E870C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E8710  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E8714  40 82 00 24 */	bne lbl_800E8738
/* 800E8718  2C 03 00 01 */	cmpwi r3, 1
/* 800E871C  40 82 00 1C */	bne lbl_800E8738
/* 800E8720  7F E3 FB 78 */	mr r3, r31
/* 800E8724  38 80 00 00 */	li r4, 0
/* 800E8728  48 00 05 F5 */	bl procPullMoveInit__9daAlink_cFi
/* 800E872C  48 00 00 0C */	b lbl_800E8738
lbl_800E8730:
/* 800E8730  7F E3 FB 78 */	mr r3, r31
/* 800E8734  4B FF FC 01 */	bl endPushPull__9daAlink_cFv
lbl_800E8738:
/* 800E8738  38 60 00 01 */	li r3, 1
/* 800E873C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800E8740  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800E8744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E8748  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E874C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E8750  7C 08 03 A6 */	mtlr r0
/* 800E8754  38 21 00 20 */	addi r1, r1, 0x20
/* 800E8758  4E 80 00 20 */	blr 
