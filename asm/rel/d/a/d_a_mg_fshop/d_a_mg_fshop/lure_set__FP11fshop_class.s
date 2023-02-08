lbl_8086C6E4:
/* 8086C6E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8086C6E8  7C 08 02 A6 */	mflr r0
/* 8086C6EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8086C6F0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8086C6F4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8086C6F8  39 61 00 50 */	addi r11, r1, 0x50
/* 8086C6FC  4B AF 5A BD */	bl _savegpr_20
/* 8086C700  3C 80 80 87 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80870284@ha */
/* 8086C704  3A C4 02 84 */	addi r22, r4, cNullVec__6Z2Calc@l /* 0x80870284@l */
/* 8086C708  3C 80 80 87 */	lis r4, lit_3829@ha /* 0x80870094@ha */
/* 8086C70C  3A E4 00 94 */	addi r23, r4, lit_3829@l /* 0x80870094@l */
/* 8086C710  3A A3 05 74 */	addi r21, r3, 0x574
/* 8086C714  3A 80 00 00 */	li r20, 0
/* 8086C718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086C71C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086C720  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8086C724  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8086C728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086C72C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086C730  7F 5B D3 78 */	mr r27, r26
/* 8086C734  7F 5C D3 78 */	mr r28, r26
/* 8086C738  7F 5D D3 78 */	mr r29, r26
/* 8086C73C  7F 5E D3 78 */	mr r30, r26
/* 8086C740  7F 5F D3 78 */	mr r31, r26
lbl_8086C744:
/* 8086C744  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 8086C748  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8086C74C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8086C750  41 82 00 5C */	beq lbl_8086C7AC
/* 8086C754  C0 37 00 20 */	lfs f1, 0x20(r23)
/* 8086C758  4B 9F B1 FD */	bl cM_rndF__Ff
/* 8086C75C  FC 00 08 1E */	fctiwz f0, f1
/* 8086C760  D8 01 00 08 */	stfd f0, 8(r1)
/* 8086C764  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8086C768  B0 15 00 34 */	sth r0, 0x34(r21)
/* 8086C76C  C0 37 00 20 */	lfs f1, 0x20(r23)
/* 8086C770  4B 9F B1 E5 */	bl cM_rndF__Ff
/* 8086C774  FC 00 08 1E */	fctiwz f0, f1
/* 8086C778  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086C77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086C780  B0 15 00 36 */	sth r0, 0x36(r21)
/* 8086C784  C0 37 00 28 */	lfs f1, 0x28(r23)
/* 8086C788  4B 9F B1 CD */	bl cM_rndF__Ff
/* 8086C78C  C0 17 00 24 */	lfs f0, 0x24(r23)
/* 8086C790  EC 00 08 2A */	fadds f0, f0, f1
/* 8086C794  D0 15 00 38 */	stfs f0, 0x38(r21)
/* 8086C798  C0 37 00 28 */	lfs f1, 0x28(r23)
/* 8086C79C  4B 9F B1 B9 */	bl cM_rndF__Ff
/* 8086C7A0  C0 17 00 24 */	lfs f0, 0x24(r23)
/* 8086C7A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8086C7A8  D0 15 00 3C */	stfs f0, 0x3c(r21)
lbl_8086C7AC:
/* 8086C7AC  A8 75 00 34 */	lha r3, 0x34(r21)
/* 8086C7B0  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 8086C7B4  B0 15 00 34 */	sth r0, 0x34(r21)
/* 8086C7B8  A8 75 00 36 */	lha r3, 0x36(r21)
/* 8086C7BC  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 8086C7C0  B0 15 00 36 */	sth r0, 0x36(r21)
/* 8086C7C4  A8 15 00 36 */	lha r0, 0x36(r21)
/* 8086C7C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8086C7CC  7C 39 04 2E */	lfsx f1, r25, r0
/* 8086C7D0  C0 15 00 3C */	lfs f0, 0x3c(r21)
/* 8086C7D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086C7D8  FC 00 00 1E */	fctiwz f0, f0
/* 8086C7DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086C7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086C7E4  B0 15 00 32 */	sth r0, 0x32(r21)
/* 8086C7E8  A8 15 00 34 */	lha r0, 0x34(r21)
/* 8086C7EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8086C7F0  7C 39 04 2E */	lfsx f1, r25, r0
/* 8086C7F4  C0 15 00 38 */	lfs f0, 0x38(r21)
/* 8086C7F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086C7FC  FC 00 00 1E */	fctiwz f0, f0
/* 8086C800  D8 01 00 08 */	stfd f0, 8(r1)
/* 8086C804  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8086C808  B0 15 00 30 */	sth r0, 0x30(r21)
/* 8086C80C  38 75 00 3C */	addi r3, r21, 0x3c
/* 8086C810  C0 37 00 04 */	lfs f1, 4(r23)
/* 8086C814  C0 57 00 2C */	lfs f2, 0x2c(r23)
/* 8086C818  4B A0 32 69 */	bl cLib_addCalc0__FPfff
/* 8086C81C  38 75 00 38 */	addi r3, r21, 0x38
/* 8086C820  C0 37 00 04 */	lfs f1, 4(r23)
/* 8086C824  C0 57 00 2C */	lfs f2, 0x2c(r23)
/* 8086C828  4B A0 32 59 */	bl cLib_addCalc0__FPfff
/* 8086C82C  C0 57 00 1C */	lfs f2, 0x1c(r23)
/* 8086C830  80 15 00 24 */	lwz r0, 0x24(r21)
/* 8086C834  2C 00 00 03 */	cmpwi r0, 3
/* 8086C838  41 82 00 28 */	beq lbl_8086C860
/* 8086C83C  C3 F7 00 30 */	lfs f31, 0x30(r23)
/* 8086C840  C0 37 00 34 */	lfs f1, 0x34(r23)
/* 8086C844  C0 15 00 28 */	lfs f0, 0x28(r21)
/* 8086C848  EC 21 00 24 */	fdivs f1, f1, f0
/* 8086C84C  54 00 10 3A */	slwi r0, r0, 2
/* 8086C850  38 76 04 E4 */	addi r3, r22, 0x4e4
/* 8086C854  7C 03 04 2E */	lfsx f0, r3, r0
/* 8086C858  EC 41 00 2A */	fadds f2, f1, f0
/* 8086C85C  48 00 00 08 */	b lbl_8086C864
lbl_8086C860:
/* 8086C860  C3 F7 00 38 */	lfs f31, 0x38(r23)
lbl_8086C864:
/* 8086C864  7F 43 D3 78 */	mr r3, r26
/* 8086C868  C0 35 00 00 */	lfs f1, 0(r21)
/* 8086C86C  C0 15 00 04 */	lfs f0, 4(r21)
/* 8086C870  EC 40 10 2A */	fadds f2, f0, f2
/* 8086C874  C0 75 00 08 */	lfs f3, 8(r21)
/* 8086C878  4B AD A0 71 */	bl PSMTXTrans
/* 8086C87C  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 8086C880  FC 40 F8 90 */	fmr f2, f31
/* 8086C884  FC 60 08 90 */	fmr f3, f1
/* 8086C888  4B 7A 05 15 */	bl transM__14mDoMtx_stack_cFfff
/* 8086C88C  7F 43 D3 78 */	mr r3, r26
/* 8086C890  A8 95 00 32 */	lha r4, 0x32(r21)
/* 8086C894  4B 79 FC 39 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086C898  7F 63 DB 78 */	mr r3, r27
/* 8086C89C  A8 95 00 30 */	lha r4, 0x30(r21)
/* 8086C8A0  4B 79 FA FD */	bl mDoMtx_XrotM__FPA4_fs
/* 8086C8A4  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 8086C8A8  FC 40 F8 50 */	fneg f2, f31
/* 8086C8AC  FC 60 08 90 */	fmr f3, f1
/* 8086C8B0  4B 7A 04 ED */	bl transM__14mDoMtx_stack_cFfff
/* 8086C8B4  7F 83 E3 78 */	mr r3, r28
/* 8086C8B8  A8 95 00 0E */	lha r4, 0xe(r21)
/* 8086C8BC  4B 79 FB 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 8086C8C0  7F A3 EB 78 */	mr r3, r29
/* 8086C8C4  A8 95 00 0C */	lha r4, 0xc(r21)
/* 8086C8C8  4B 79 FA D5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8086C8CC  7F C3 F3 78 */	mr r3, r30
/* 8086C8D0  A8 95 00 10 */	lha r4, 0x10(r21)
/* 8086C8D4  4B 79 FB F9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8086C8D8  C0 35 00 2C */	lfs f1, 0x2c(r21)
/* 8086C8DC  FC 40 08 90 */	fmr f2, f1
/* 8086C8E0  C0 75 00 28 */	lfs f3, 0x28(r21)
/* 8086C8E4  4B 7A 05 55 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8086C8E8  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 8086C8EC  FC 40 08 90 */	fmr f2, f1
/* 8086C8F0  FC 60 08 90 */	fmr f3, f1
/* 8086C8F4  4B 7A 04 A9 */	bl transM__14mDoMtx_stack_cFfff
/* 8086C8F8  7F E3 FB 78 */	mr r3, r31
/* 8086C8FC  80 95 00 14 */	lwz r4, 0x14(r21)
/* 8086C900  38 84 00 24 */	addi r4, r4, 0x24
/* 8086C904  4B AD 9B AD */	bl PSMTXCopy
/* 8086C908  80 15 00 24 */	lwz r0, 0x24(r21)
/* 8086C90C  2C 00 00 03 */	cmpwi r0, 3
/* 8086C910  41 82 00 90 */	beq lbl_8086C9A0
/* 8086C914  4B 7A 03 B5 */	bl push__14mDoMtx_stack_cFv
/* 8086C918  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 8086C91C  80 15 00 24 */	lwz r0, 0x24(r21)
/* 8086C920  54 00 10 3A */	slwi r0, r0, 2
/* 8086C924  38 76 04 C0 */	addi r3, r22, 0x4c0
/* 8086C928  7C 43 04 2E */	lfsx f2, r3, r0
/* 8086C92C  C0 77 00 04 */	lfs f3, 4(r23)
/* 8086C930  4B 7A 04 6D */	bl transM__14mDoMtx_stack_cFfff
/* 8086C934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086C938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086C93C  38 80 D8 F0 */	li r4, -10000
/* 8086C940  4B 79 FA 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 8086C944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086C948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086C94C  80 95 00 18 */	lwz r4, 0x18(r21)
/* 8086C950  38 84 00 24 */	addi r4, r4, 0x24
/* 8086C954  4B AD 9B 5D */	bl PSMTXCopy
/* 8086C958  4B 7A 03 BD */	bl pop__14mDoMtx_stack_cFv
/* 8086C95C  80 15 00 24 */	lwz r0, 0x24(r21)
/* 8086C960  54 00 10 3A */	slwi r0, r0, 2
/* 8086C964  C0 37 00 1C */	lfs f1, 0x1c(r23)
/* 8086C968  38 76 04 D8 */	addi r3, r22, 0x4d8
/* 8086C96C  7C 43 04 2E */	lfsx f2, r3, r0
/* 8086C970  38 76 04 CC */	addi r3, r22, 0x4cc
/* 8086C974  7C 63 04 2E */	lfsx f3, r3, r0
/* 8086C978  4B 7A 04 25 */	bl transM__14mDoMtx_stack_cFfff
/* 8086C97C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086C980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086C984  38 80 40 00 */	li r4, 0x4000
/* 8086C988  4B 79 FA 15 */	bl mDoMtx_XrotM__FPA4_fs
/* 8086C98C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8086C990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8086C994  80 95 00 1C */	lwz r4, 0x1c(r21)
/* 8086C998  38 84 00 24 */	addi r4, r4, 0x24
/* 8086C99C  4B AD 9B 15 */	bl PSMTXCopy
lbl_8086C9A0:
/* 8086C9A0  3A 94 00 01 */	addi r20, r20, 1
/* 8086C9A4  2C 14 00 30 */	cmpwi r20, 0x30
/* 8086C9A8  3A B5 00 40 */	addi r21, r21, 0x40
/* 8086C9AC  41 80 FD 98 */	blt lbl_8086C744
/* 8086C9B0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8086C9B4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8086C9B8  39 61 00 50 */	addi r11, r1, 0x50
/* 8086C9BC  4B AF 58 49 */	bl _restgpr_20
/* 8086C9C0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8086C9C4  7C 08 03 A6 */	mtlr r0
/* 8086C9C8  38 21 00 60 */	addi r1, r1, 0x60
/* 8086C9CC  4E 80 00 20 */	blr 
