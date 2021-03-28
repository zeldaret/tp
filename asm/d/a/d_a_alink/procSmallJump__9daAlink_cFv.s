lbl_800C72D4:
/* 800C72D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C72D8  7C 08 02 A6 */	mflr r0
/* 800C72DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C72E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C72E4  7C 7F 1B 78 */	mr r31, r3
/* 800C72E8  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800C72EC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C72F0  41 82 00 70 */	beq lbl_800C7360
/* 800C72F4  48 02 CD 15 */	bl checkCanoeJumpRide__9daAlink_cFv
/* 800C72F8  2C 03 00 00 */	cmpwi r3, 0
/* 800C72FC  41 82 00 0C */	beq lbl_800C7308
/* 800C7300  38 60 00 01 */	li r3, 1
/* 800C7304  48 00 01 BC */	b lbl_800C74C0
lbl_800C7308:
/* 800C7308  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800C730C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C7310  41 82 00 14 */	beq lbl_800C7324
/* 800C7314  7F E3 FB 78 */	mr r3, r31
/* 800C7318  38 80 00 00 */	li r4, 0
/* 800C731C  4B FE E9 B1 */	bl checkLandAction__9daAlink_cFi
/* 800C7320  48 00 01 9C */	b lbl_800C74BC
lbl_800C7324:
/* 800C7324  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800C7328  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800C732C  FC 00 00 50 */	fneg f0, f0
/* 800C7330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C7334  40 80 00 20 */	bge lbl_800C7354
/* 800C7338  7F E3 FB 78 */	mr r3, r31
/* 800C733C  38 80 00 02 */	li r4, 2
/* 800C7340  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha
/* 800C7344  38 A5 E1 1C */	addi r5, r5, m__23daAlinkHIO_smallJump_c0@l
/* 800C7348  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 800C734C  4B FF F6 FD */	bl procFallInit__9daAlink_cFif
/* 800C7350  48 00 01 6C */	b lbl_800C74BC
lbl_800C7354:
/* 800C7354  38 00 00 07 */	li r0, 7
/* 800C7358  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800C735C  48 00 01 60 */	b lbl_800C74BC
lbl_800C7360:
/* 800C7360  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800C7364  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 800C7368  48 26 10 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 800C736C  2C 03 00 00 */	cmpwi r3, 0
/* 800C7370  41 82 01 20 */	beq lbl_800C7490
/* 800C7374  7F E3 FB 78 */	mr r3, r31
/* 800C7378  4B FE D5 59 */	bl setJumpMode__9daAlink_cFv
/* 800C737C  3C 60 80 39 */	lis r3, m__23daAlinkHIO_smallJump_c0@ha
/* 800C7380  38 63 E1 1C */	addi r3, r3, m__23daAlinkHIO_smallJump_c0@l
/* 800C7384  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800C7388  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C738C  7F E3 FB 78 */	mr r3, r31
/* 800C7390  38 80 00 01 */	li r4, 1
/* 800C7394  38 A0 00 01 */	li r5, 1
/* 800C7398  4B FF 41 21 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800C739C  2C 03 00 00 */	cmpwi r3, 0
/* 800C73A0  41 82 00 64 */	beq lbl_800C7404
/* 800C73A4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800C73A8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C73AC  40 82 00 58 */	bne lbl_800C7404
/* 800C73B0  C0 62 93 14 */	lfs f3, lit_7307(r2)
/* 800C73B4  3C 60 80 39 */	lis r3, m__23daAlinkHIO_smallJump_c0@ha
/* 800C73B8  38 63 E1 1C */	addi r3, r3, m__23daAlinkHIO_smallJump_c0@l
/* 800C73BC  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 800C73C0  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800C73C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C73C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C73CC  EC 42 00 2A */	fadds f2, f2, f0
/* 800C73D0  C0 22 98 C0 */	lfs f1, lit_70084(r2)
/* 800C73D4  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800C73D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C73DC  FC 00 00 50 */	fneg f0, f0
/* 800C73E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C73E4  EC 23 00 32 */	fmuls f1, f3, f0
/* 800C73E8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C73EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C73F0  40 81 00 0C */	ble lbl_800C73FC
/* 800C73F4  FC 00 08 34 */	frsqrte f0, f1
/* 800C73F8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800C73FC:
/* 800C73FC  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800C7400  48 00 00 4C */	b lbl_800C744C
lbl_800C7404:
/* 800C7404  C0 82 93 14 */	lfs f4, lit_7307(r2)
/* 800C7408  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 800C740C  FC 60 00 50 */	fneg f3, f0
/* 800C7410  3C 60 80 39 */	lis r3, m__23daAlinkHIO_smallJump_c0@ha
/* 800C7414  38 63 E1 1C */	addi r3, r3, m__23daAlinkHIO_smallJump_c0@l
/* 800C7418  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 800C741C  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800C7420  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C7424  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C7428  EC 02 00 2A */	fadds f0, f2, f0
/* 800C742C  EC 03 00 32 */	fmuls f0, f3, f0
/* 800C7430  EC 24 00 32 */	fmuls f1, f4, f0
/* 800C7434  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C7438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C743C  40 81 00 0C */	ble lbl_800C7448
/* 800C7440  FC 00 08 34 */	frsqrte f0, f1
/* 800C7444  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800C7448:
/* 800C7448  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
lbl_800C744C:
/* 800C744C  7F E3 FB 78 */	mr r3, r31
/* 800C7450  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010005@ha */
/* 800C7454  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00010005@l */
/* 800C7458  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C745C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C7460  7D 89 03 A6 */	mtctr r12
/* 800C7464  4E 80 04 21 */	bctrl 
/* 800C7468  38 00 00 07 */	li r0, 7
/* 800C746C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800C7470  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800C7474  2C 00 00 00 */	cmpwi r0, 0
/* 800C7478  41 82 00 44 */	beq lbl_800C74BC
/* 800C747C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C7480  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800C7484  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C7488  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C748C  48 00 00 30 */	b lbl_800C74BC
lbl_800C7490:
/* 800C7490  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800C7494  2C 00 00 00 */	cmpwi r0, 0
/* 800C7498  41 82 00 24 */	beq lbl_800C74BC
/* 800C749C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800C74A0  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800C74A4  38 A0 00 03 */	li r5, 3
/* 800C74A8  38 C0 10 00 */	li r6, 0x1000
/* 800C74AC  38 E0 04 00 */	li r7, 0x400
/* 800C74B0  48 1A 90 91 */	bl cLib_addCalcAngleS__FPsssss
/* 800C74B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C74B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800C74BC:
/* 800C74BC  38 60 00 01 */	li r3, 1
lbl_800C74C0:
/* 800C74C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C74C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C74C8  7C 08 03 A6 */	mtlr r0
/* 800C74CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C74D0  4E 80 00 20 */	blr 
