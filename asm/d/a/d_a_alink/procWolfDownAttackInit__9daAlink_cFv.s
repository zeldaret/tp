lbl_8013B528:
/* 8013B528  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013B52C  7C 08 02 A6 */	mflr r0
/* 8013B530  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013B534  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013B538  7C 7F 1B 78 */	mr r31, r3
/* 8013B53C  38 80 01 22 */	li r4, 0x122
/* 8013B540  4B F8 6A 2D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013B544  7F E3 FB 78 */	mr r3, r31
/* 8013B548  38 80 00 62 */	li r4, 0x62
/* 8013B54C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtDown_c0@ha /* 0x8038F658@ha */
/* 8013B550  38 A5 F6 58 */	addi r5, r5, m__22daAlinkHIO_wlAtDown_c0@l /* 0x8038F658@l */
/* 8013B554  4B FE E2 F5 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013B558  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 8013B55C  C0 03 05 68 */	lfs f0, 0x568(r3)
/* 8013B560  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8013B564  C0 23 05 6C */	lfs f1, 0x56c(r3)
/* 8013B568  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8013B56C  C0 03 05 70 */	lfs f0, 0x570(r3)
/* 8013B570  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8013B574  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 8013B578  EC 01 00 2A */	fadds f0, f1, f0
/* 8013B57C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8013B580  38 61 00 24 */	addi r3, r1, 0x24
/* 8013B584  4B EE 27 39 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8013B588  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013B58C  41 82 00 10 */	beq lbl_8013B59C
/* 8013B590  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 8013B594  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8013B598  48 00 00 14 */	b lbl_8013B5AC
lbl_8013B59C:
/* 8013B59C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8013B5A0  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 8013B5A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013B5A8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8013B5AC:
/* 8013B5AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8013B5B0  38 81 00 24 */	addi r4, r1, 0x24
/* 8013B5B4  48 13 56 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013B5B8  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8013B5BC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8013B5C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013B5C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013B5C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013B5CC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8013B5D0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8013B5D4  C0 62 93 B0 */	lfs f3, lit_10039(r2)
/* 8013B5D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8013B5DC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8013B5E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8013B5E4  7C 63 02 14 */	add r3, r3, r0
/* 8013B5E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013B5EC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8013B5F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8013B5F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8013B5F8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8013B5FC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8013B600  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8013B604  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013B608  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013B60C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8013B610  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8013B614  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8013B618  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8013B61C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8013B620  38 61 00 0C */	addi r3, r1, 0xc
/* 8013B624  38 81 00 18 */	addi r4, r1, 0x18
/* 8013B628  48 20 BD 75 */	bl PSVECSquareDistance
/* 8013B62C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013B630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B634  40 81 00 58 */	ble lbl_8013B68C
/* 8013B638  FC 00 08 34 */	frsqrte f0, f1
/* 8013B63C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013B640  FC 44 00 32 */	fmul f2, f4, f0
/* 8013B644  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013B648  FC 00 00 32 */	fmul f0, f0, f0
/* 8013B64C  FC 01 00 32 */	fmul f0, f1, f0
/* 8013B650  FC 03 00 28 */	fsub f0, f3, f0
/* 8013B654  FC 02 00 32 */	fmul f0, f2, f0
/* 8013B658  FC 44 00 32 */	fmul f2, f4, f0
/* 8013B65C  FC 00 00 32 */	fmul f0, f0, f0
/* 8013B660  FC 01 00 32 */	fmul f0, f1, f0
/* 8013B664  FC 03 00 28 */	fsub f0, f3, f0
/* 8013B668  FC 02 00 32 */	fmul f0, f2, f0
/* 8013B66C  FC 44 00 32 */	fmul f2, f4, f0
/* 8013B670  FC 00 00 32 */	fmul f0, f0, f0
/* 8013B674  FC 01 00 32 */	fmul f0, f1, f0
/* 8013B678  FC 03 00 28 */	fsub f0, f3, f0
/* 8013B67C  FC 02 00 32 */	fmul f0, f2, f0
/* 8013B680  FC 21 00 32 */	fmul f1, f1, f0
/* 8013B684  FC 20 08 18 */	frsp f1, f1
/* 8013B688  48 00 00 88 */	b lbl_8013B710
lbl_8013B68C:
/* 8013B68C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013B690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B694  40 80 00 10 */	bge lbl_8013B6A4
/* 8013B698  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013B69C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013B6A0  48 00 00 70 */	b lbl_8013B710
lbl_8013B6A4:
/* 8013B6A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013B6A8  80 81 00 08 */	lwz r4, 8(r1)
/* 8013B6AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013B6B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013B6B4  7C 03 00 00 */	cmpw r3, r0
/* 8013B6B8  41 82 00 14 */	beq lbl_8013B6CC
/* 8013B6BC  40 80 00 40 */	bge lbl_8013B6FC
/* 8013B6C0  2C 03 00 00 */	cmpwi r3, 0
/* 8013B6C4  41 82 00 20 */	beq lbl_8013B6E4
/* 8013B6C8  48 00 00 34 */	b lbl_8013B6FC
lbl_8013B6CC:
/* 8013B6CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013B6D0  41 82 00 0C */	beq lbl_8013B6DC
/* 8013B6D4  38 00 00 01 */	li r0, 1
/* 8013B6D8  48 00 00 28 */	b lbl_8013B700
lbl_8013B6DC:
/* 8013B6DC  38 00 00 02 */	li r0, 2
/* 8013B6E0  48 00 00 20 */	b lbl_8013B700
lbl_8013B6E4:
/* 8013B6E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013B6E8  41 82 00 0C */	beq lbl_8013B6F4
/* 8013B6EC  38 00 00 05 */	li r0, 5
/* 8013B6F0  48 00 00 10 */	b lbl_8013B700
lbl_8013B6F4:
/* 8013B6F4  38 00 00 03 */	li r0, 3
/* 8013B6F8  48 00 00 08 */	b lbl_8013B700
lbl_8013B6FC:
/* 8013B6FC  38 00 00 04 */	li r0, 4
lbl_8013B700:
/* 8013B700  2C 00 00 01 */	cmpwi r0, 1
/* 8013B704  40 82 00 0C */	bne lbl_8013B710
/* 8013B708  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013B70C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8013B710:
/* 8013B710  C0 02 93 58 */	lfs f0, lit_8249(r2)
/* 8013B714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B718  40 81 00 08 */	ble lbl_8013B720
/* 8013B71C  FC 20 00 90 */	fmr f1, f0
lbl_8013B720:
/* 8013B720  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtDown_c0@ha /* 0x8038F658@ha */
/* 8013B724  38 63 F6 58 */	addi r3, r3, m__22daAlinkHIO_wlAtDown_c0@l /* 0x8038F658@l */
/* 8013B728  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 8013B72C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8013B730  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8013B734  C0 BF 05 30 */	lfs f5, 0x530(r31)
/* 8013B738  EC C0 28 2A */	fadds f6, f0, f5
/* 8013B73C  EC 86 01 B2 */	fmuls f4, f6, f6
/* 8013B740  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8013B744  EC 60 01 72 */	fmuls f3, f0, f5
/* 8013B748  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8013B74C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8013B750  EC 02 00 28 */	fsubs f0, f2, f0
/* 8013B754  EC 03 00 32 */	fmuls f0, f3, f0
/* 8013B758  EC 44 00 2A */	fadds f2, f4, f0
/* 8013B75C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013B760  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8013B764  40 80 00 18 */	bge lbl_8013B77C
/* 8013B768  EC 21 01 72 */	fmuls f1, f1, f5
/* 8013B76C  FC 00 30 50 */	fneg f0, f6
/* 8013B770  EC 01 00 24 */	fdivs f0, f1, f0
/* 8013B774  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013B778  48 00 00 2C */	b lbl_8013B7A4
lbl_8013B77C:
/* 8013B77C  40 81 00 10 */	ble lbl_8013B78C
/* 8013B780  FC 00 10 34 */	frsqrte f0, f2
/* 8013B784  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8013B788  48 00 00 08 */	b lbl_8013B790
lbl_8013B78C:
/* 8013B78C  FC 00 10 90 */	fmr f0, f2
lbl_8013B790:
/* 8013B790  EC 21 01 72 */	fmuls f1, f1, f5
/* 8013B794  FC 00 00 50 */	fneg f0, f0
/* 8013B798  EC 00 30 28 */	fsubs f0, f0, f6
/* 8013B79C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8013B7A0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_8013B7A4:
/* 8013B7A4  38 00 00 00 */	li r0, 0
/* 8013B7A8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013B7AC  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013B7B0  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 8013B7B4  48 02 35 05 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8013B7B8  7F E3 FB 78 */	mr r3, r31
/* 8013B7BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100BE@ha */
/* 8013B7C0  38 84 00 BE */	addi r4, r4, 0x00BE /* 0x000100BE@l */
/* 8013B7C4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013B7C8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013B7CC  7D 89 03 A6 */	mtctr r12
/* 8013B7D0  4E 80 04 21 */	bctrl 
/* 8013B7D4  7F E3 FB 78 */	mr r3, r31
/* 8013B7D8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020009@ha */
/* 8013B7DC  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00020009@l */
/* 8013B7E0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013B7E4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013B7E8  7D 89 03 A6 */	mtctr r12
/* 8013B7EC  4E 80 04 21 */	bctrl 
/* 8013B7F0  38 60 00 01 */	li r3, 1
/* 8013B7F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8013B7F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8013B7FC  7C 08 03 A6 */	mtlr r0
/* 8013B800  38 21 00 40 */	addi r1, r1, 0x40
/* 8013B804  4E 80 00 20 */	blr 
