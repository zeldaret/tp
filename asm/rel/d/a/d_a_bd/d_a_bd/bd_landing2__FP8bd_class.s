lbl_804D8648:
/* 804D8648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D864C  7C 08 02 A6 */	mflr r0
/* 804D8650  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D8654  39 61 00 30 */	addi r11, r1, 0x30
/* 804D8658  4B E8 9B 84 */	b _savegpr_29
/* 804D865C  7C 7D 1B 78 */	mr r29, r3
/* 804D8660  3C 80 80 4E */	lis r4, lit_3942@ha
/* 804D8664  3B E4 9E 64 */	addi r31, r4, lit_3942@l
/* 804D8668  A8 03 06 4C */	lha r0, 0x64c(r3)
/* 804D866C  2C 00 00 14 */	cmpwi r0, 0x14
/* 804D8670  40 82 00 18 */	bne lbl_804D8688
/* 804D8674  38 80 00 05 */	li r4, 5
/* 804D8678  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D867C  38 A0 00 02 */	li r5, 2
/* 804D8680  FC 40 08 90 */	fmr f2, f1
/* 804D8684  4B FF E6 21 */	bl anm_init__FP8bd_classifUcf
lbl_804D8688:
/* 804D8688  A8 1D 06 4C */	lha r0, 0x64c(r29)
/* 804D868C  2C 00 00 00 */	cmpwi r0, 0
/* 804D8690  40 82 00 30 */	bne lbl_804D86C0
/* 804D8694  7F A3 EB 78 */	mr r3, r29
/* 804D8698  38 80 00 05 */	li r4, 5
/* 804D869C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D86A0  38 A0 00 02 */	li r5, 2
/* 804D86A4  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D86A8  4B FF E5 FD */	bl anm_init__FP8bd_classifUcf
/* 804D86AC  38 00 00 00 */	li r0, 0
/* 804D86B0  B0 1D 06 1A */	sth r0, 0x61a(r29)
/* 804D86B4  B0 1D 06 1C */	sth r0, 0x61c(r29)
/* 804D86B8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D86BC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_804D86C0:
/* 804D86C0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 804D86C4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804D86C8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804D86CC  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 804D86D0  4B D9 73 6C */	b cLib_addCalc2__FPffff
/* 804D86D4  38 61 00 08 */	addi r3, r1, 8
/* 804D86D8  38 9D 05 C4 */	addi r4, r29, 0x5c4
/* 804D86DC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804D86E0  4B D8 E4 54 */	b __mi__4cXyzCFRC3Vec
/* 804D86E4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D86E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804D86EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D86F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D86F4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804D86F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804D86FC  AB DD 04 DE */	lha r30, 0x4de(r29)
/* 804D8700  4B D8 EF 74 */	b cM_atan2s__Fff
/* 804D8704  7C 64 1B 78 */	mr r4, r3
/* 804D8708  38 7D 04 DE */	addi r3, r29, 0x4de
/* 804D870C  38 A0 00 04 */	li r5, 4
/* 804D8710  38 C0 07 D0 */	li r6, 0x7d0
/* 804D8714  4B D9 7E F4 */	b cLib_addCalcAngleS2__FPssss
/* 804D8718  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D871C  EC 20 00 32 */	fmuls f1, f0, f0
/* 804D8720  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D8724  EC 00 00 32 */	fmuls f0, f0, f0
/* 804D8728  EC 41 00 2A */	fadds f2, f1, f0
/* 804D872C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D8730  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804D8734  40 81 00 0C */	ble lbl_804D8740
/* 804D8738  FC 00 10 34 */	frsqrte f0, f2
/* 804D873C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804D8740:
/* 804D8740  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804D8744  4B D8 EF 30 */	b cM_atan2s__Fff
/* 804D8748  7C 03 00 D0 */	neg r0, r3
/* 804D874C  7C 04 07 34 */	extsh r4, r0
/* 804D8750  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 804D8754  38 A0 00 04 */	li r5, 4
/* 804D8758  38 C0 07 D0 */	li r6, 0x7d0
/* 804D875C  4B D9 7E AC */	b cLib_addCalcAngleS2__FPssss
/* 804D8760  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 804D8764  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804D8768  7C 00 F0 50 */	subf r0, r0, r30
/* 804D876C  54 00 10 3A */	slwi r0, r0, 2
/* 804D8770  7C 04 07 34 */	extsh r4, r0
/* 804D8774  38 A0 00 04 */	li r5, 4
/* 804D8778  38 C0 03 E8 */	li r6, 0x3e8
/* 804D877C  4B D9 7E 8C */	b cLib_addCalcAngleS2__FPssss
/* 804D8780  39 61 00 30 */	addi r11, r1, 0x30
/* 804D8784  4B E8 9A A4 */	b _restgpr_29
/* 804D8788  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D878C  7C 08 03 A6 */	mtlr r0
/* 804D8790  38 21 00 30 */	addi r1, r1, 0x30
/* 804D8794  4E 80 00 20 */	blr 
