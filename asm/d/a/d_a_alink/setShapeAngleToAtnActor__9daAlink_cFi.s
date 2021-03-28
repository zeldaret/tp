lbl_800B3734:
/* 800B3734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B3738  7C 08 02 A6 */	mflr r0
/* 800B373C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B3740  39 61 00 20 */	addi r11, r1, 0x20
/* 800B3744  48 2A EA 99 */	bl _savegpr_29
/* 800B3748  7C 7D 1B 78 */	mr r29, r3
/* 800B374C  7C 9E 23 78 */	mr r30, r4
/* 800B3750  80 83 27 EC */	lwz r4, 0x27ec(r3)
/* 800B3754  28 04 00 00 */	cmplwi r4, 0
/* 800B3758  41 82 00 D0 */	beq lbl_800B3828
/* 800B375C  80 1D 28 38 */	lwz r0, 0x2838(r29)
/* 800B3760  7C 04 00 40 */	cmplw r4, r0
/* 800B3764  40 82 00 20 */	bne lbl_800B3784
/* 800B3768  48 02 CD 45 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800B376C  2C 03 00 00 */	cmpwi r3, 0
/* 800B3770  40 82 00 5C */	bne lbl_800B37CC
/* 800B3774  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800B3778  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B377C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B3780  40 81 00 4C */	ble lbl_800B37CC
lbl_800B3784:
/* 800B3784  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 800B3788  80 1D 28 40 */	lwz r0, 0x2840(r29)
/* 800B378C  7C 03 00 40 */	cmplw r3, r0
/* 800B3790  40 82 00 44 */	bne lbl_800B37D4
/* 800B3794  38 60 00 00 */	li r3, 0
/* 800B3798  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B379C  28 00 00 46 */	cmplwi r0, 0x46
/* 800B37A0  40 82 00 14 */	bne lbl_800B37B4
/* 800B37A4  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B37A8  28 00 00 53 */	cmplwi r0, 0x53
/* 800B37AC  40 82 00 08 */	bne lbl_800B37B4
/* 800B37B0  38 60 00 01 */	li r3, 1
lbl_800B37B4:
/* 800B37B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B37B8  40 82 00 14 */	bne lbl_800B37CC
/* 800B37BC  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800B37C0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B37C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B37C8  41 81 00 0C */	bgt lbl_800B37D4
lbl_800B37CC:
/* 800B37CC  38 60 00 01 */	li r3, 1
/* 800B37D0  48 00 00 5C */	b lbl_800B382C
lbl_800B37D4:
/* 800B37D4  7F A3 EB 78 */	mr r3, r29
/* 800B37D8  4B FF FE 59 */	bl getShapeAngleYAtnActor__9daAlink_cFv
/* 800B37DC  7C 7F 1B 78 */	mr r31, r3
/* 800B37E0  2C 1E 00 00 */	cmpwi r30, 0
/* 800B37E4  41 82 00 24 */	beq lbl_800B3808
/* 800B37E8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800B37EC  7C 00 F8 50 */	subf r0, r0, r31
/* 800B37F0  7C 03 07 34 */	extsh r3, r0
/* 800B37F4  48 2B 18 DD */	bl abs
/* 800B37F8  2C 03 30 00 */	cmpwi r3, 0x3000
/* 800B37FC  40 81 00 0C */	ble lbl_800B3808
/* 800B3800  38 60 00 01 */	li r3, 1
/* 800B3804  48 00 00 28 */	b lbl_800B382C
lbl_800B3808:
/* 800B3808  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 800B380C  7F E4 FB 78 */	mr r4, r31
/* 800B3810  38 A0 00 02 */	li r5, 2
/* 800B3814  38 C0 20 00 */	li r6, 0x2000
/* 800B3818  38 E0 08 00 */	li r7, 0x800
/* 800B381C  48 1B CD 25 */	bl cLib_addCalcAngleS__FPsssss
/* 800B3820  38 60 00 01 */	li r3, 1
/* 800B3824  48 00 00 08 */	b lbl_800B382C
lbl_800B3828:
/* 800B3828  38 60 00 00 */	li r3, 0
lbl_800B382C:
/* 800B382C  39 61 00 20 */	addi r11, r1, 0x20
/* 800B3830  48 2A E9 F9 */	bl _restgpr_29
/* 800B3834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B3838  7C 08 03 A6 */	mtlr r0
/* 800B383C  38 21 00 20 */	addi r1, r1, 0x20
/* 800B3840  4E 80 00 20 */	blr 
