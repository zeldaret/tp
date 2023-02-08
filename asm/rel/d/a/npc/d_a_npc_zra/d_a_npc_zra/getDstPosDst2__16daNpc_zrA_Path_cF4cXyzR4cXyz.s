lbl_80B7850C:
/* 80B7850C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B78510  7C 08 02 A6 */	mflr r0
/* 80B78514  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B78518  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7851C  4B 7E 9C B9 */	bl _savegpr_27
/* 80B78520  7C 7B 1B 78 */	mr r27, r3
/* 80B78524  7C 9C 23 78 */	mr r28, r4
/* 80B78528  7C BD 2B 78 */	mr r29, r5
/* 80B7852C  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B78530  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B78534  3B C0 00 00 */	li r30, 0
/* 80B78538  A0 03 00 00 */	lhz r0, 0(r3)
/* 80B7853C  80 83 00 04 */	lwz r4, 4(r3)
/* 80B78540  80 84 00 08 */	lwz r4, 8(r4)
/* 80B78544  54 00 20 36 */	slwi r0, r0, 4
/* 80B78548  7C A4 02 14 */	add r5, r4, r0
/* 80B7854C  80 85 00 04 */	lwz r4, 4(r5)
/* 80B78550  80 05 00 08 */	lwz r0, 8(r5)
/* 80B78554  90 81 00 30 */	stw r4, 0x30(r1)
/* 80B78558  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B7855C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80B78560  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B78564  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B78568  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80B7856C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B78570  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80B78574  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B78578  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80B7857C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80B78580  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B78584  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80B78588  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B7858C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80B78590  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B78594  38 81 00 24 */	addi r4, r1, 0x24
/* 80B78598  4B 5D 84 E5 */	bl chkPassedDst__13daNpcF_Path_cF4cXyz
/* 80B7859C  2C 03 00 00 */	cmpwi r3, 0
/* 80B785A0  41 82 01 74 */	beq lbl_80B78714
/* 80B785A4  3B C0 00 01 */	li r30, 1
/* 80B785A8  7F 63 DB 78 */	mr r3, r27
/* 80B785AC  4B 5D 86 35 */	bl setNextIdx__13daNpcF_Path_cFv
/* 80B785B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B785B4  40 82 01 60 */	bne lbl_80B78714
/* 80B785B8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 80B785BC  80 7B 00 04 */	lwz r3, 4(r27)
/* 80B785C0  80 63 00 08 */	lwz r3, 8(r3)
/* 80B785C4  54 00 20 36 */	slwi r0, r0, 4
/* 80B785C8  7C 83 02 14 */	add r4, r3, r0
/* 80B785CC  80 64 00 04 */	lwz r3, 4(r4)
/* 80B785D0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B785D4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B785D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B785DC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B785E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B785E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B785E8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80B785EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B785F0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80B785F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B785F8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80B785FC  38 61 00 0C */	addi r3, r1, 0xc
/* 80B78600  7F 84 E3 78 */	mr r4, r28
/* 80B78604  7F A5 EB 78 */	mr r5, r29
/* 80B78608  4B 6E E5 2D */	bl __mi__4cXyzCFRC3Vec
/* 80B7860C  38 61 00 0C */	addi r3, r1, 0xc
/* 80B78610  4B 7C EB 29 */	bl PSVECSquareMag
/* 80B78614  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B78618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B7861C  40 81 00 58 */	ble lbl_80B78674
/* 80B78620  FC 00 08 34 */	frsqrte f0, f1
/* 80B78624  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B78628  FC 44 00 32 */	fmul f2, f4, f0
/* 80B7862C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B78630  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78634  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78638  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7863C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78640  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78644  FC 00 00 32 */	fmul f0, f0, f0
/* 80B78648  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7864C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78650  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78654  FC 44 00 32 */	fmul f2, f4, f0
/* 80B78658  FC 00 00 32 */	fmul f0, f0, f0
/* 80B7865C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B78660  FC 03 00 28 */	fsub f0, f3, f0
/* 80B78664  FC 02 00 32 */	fmul f0, f2, f0
/* 80B78668  FC 21 00 32 */	fmul f1, f1, f0
/* 80B7866C  FC 20 08 18 */	frsp f1, f1
/* 80B78670  48 00 00 88 */	b lbl_80B786F8
lbl_80B78674:
/* 80B78674  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B78678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B7867C  40 80 00 10 */	bge lbl_80B7868C
/* 80B78680  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B78684  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B78688  48 00 00 70 */	b lbl_80B786F8
lbl_80B7868C:
/* 80B7868C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B78690  80 81 00 08 */	lwz r4, 8(r1)
/* 80B78694  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B78698  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B7869C  7C 03 00 00 */	cmpw r3, r0
/* 80B786A0  41 82 00 14 */	beq lbl_80B786B4
/* 80B786A4  40 80 00 40 */	bge lbl_80B786E4
/* 80B786A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B786AC  41 82 00 20 */	beq lbl_80B786CC
/* 80B786B0  48 00 00 34 */	b lbl_80B786E4
lbl_80B786B4:
/* 80B786B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B786B8  41 82 00 0C */	beq lbl_80B786C4
/* 80B786BC  38 00 00 01 */	li r0, 1
/* 80B786C0  48 00 00 28 */	b lbl_80B786E8
lbl_80B786C4:
/* 80B786C4  38 00 00 02 */	li r0, 2
/* 80B786C8  48 00 00 20 */	b lbl_80B786E8
lbl_80B786CC:
/* 80B786CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B786D0  41 82 00 0C */	beq lbl_80B786DC
/* 80B786D4  38 00 00 05 */	li r0, 5
/* 80B786D8  48 00 00 10 */	b lbl_80B786E8
lbl_80B786DC:
/* 80B786DC  38 00 00 03 */	li r0, 3
/* 80B786E0  48 00 00 08 */	b lbl_80B786E8
lbl_80B786E4:
/* 80B786E4  38 00 00 04 */	li r0, 4
lbl_80B786E8:
/* 80B786E8  2C 00 00 01 */	cmpwi r0, 1
/* 80B786EC  40 82 00 0C */	bne lbl_80B786F8
/* 80B786F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B786F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B786F8:
/* 80B786F8  D0 3B 00 0C */	stfs f1, 0xc(r27)
/* 80B786FC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80B78700  D0 1B 00 14 */	stfs f0, 0x14(r27)
/* 80B78704  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80B78708  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 80B7870C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80B78710  D0 1B 00 1C */	stfs f0, 0x1c(r27)
lbl_80B78714:
/* 80B78714  7F C3 F3 78 */	mr r3, r30
/* 80B78718  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7871C  4B 7E 9B 05 */	bl _restgpr_27
/* 80B78720  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B78724  7C 08 03 A6 */	mtlr r0
/* 80B78728  38 21 00 60 */	addi r1, r1, 0x60
/* 80B7872C  4E 80 00 20 */	blr 
