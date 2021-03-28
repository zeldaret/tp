lbl_806E3800:
/* 806E3800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E3804  7C 08 02 A6 */	mflr r0
/* 806E3808  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E380C  A8 03 05 D4 */	lha r0, 0x5d4(r3)
/* 806E3810  2C 00 00 03 */	cmpwi r0, 3
/* 806E3814  41 82 00 60 */	beq lbl_806E3874
/* 806E3818  40 80 00 1C */	bge lbl_806E3834
/* 806E381C  2C 00 00 01 */	cmpwi r0, 1
/* 806E3820  41 82 00 34 */	beq lbl_806E3854
/* 806E3824  40 80 00 44 */	bge lbl_806E3868
/* 806E3828  2C 00 00 00 */	cmpwi r0, 0
/* 806E382C  40 80 00 20 */	bge lbl_806E384C
/* 806E3830  48 00 00 44 */	b lbl_806E3874
lbl_806E3834:
/* 806E3834  2C 00 00 05 */	cmpwi r0, 5
/* 806E3838  41 82 00 0C */	beq lbl_806E3844
/* 806E383C  40 80 00 38 */	bge lbl_806E3874
/* 806E3840  48 00 00 30 */	b lbl_806E3870
lbl_806E3844:
/* 806E3844  4B FF F1 75 */	bl ShippuAction__8daE_HM_cFv
/* 806E3848  48 00 00 2C */	b lbl_806E3874
lbl_806E384C:
/* 806E384C  4B FF F4 05 */	bl ShieldAction__8daE_HM_cFv
/* 806E3850  48 00 00 24 */	b lbl_806E3874
lbl_806E3854:
/* 806E3854  80 03 09 28 */	lwz r0, 0x928(r3)
/* 806E3858  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E385C  90 03 09 28 */	stw r0, 0x928(r3)
/* 806E3860  4B FF F6 FD */	bl DeathAction__8daE_HM_cFv
/* 806E3864  48 00 00 10 */	b lbl_806E3874
lbl_806E3868:
/* 806E3868  4B FF FB B9 */	bl AttackAction__8daE_HM_cFv
/* 806E386C  48 00 00 08 */	b lbl_806E3874
lbl_806E3870:
/* 806E3870  4B FF FE B5 */	bl WaitAction__8daE_HM_cFv
lbl_806E3874:
/* 806E3874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E3878  7C 08 03 A6 */	mtlr r0
/* 806E387C  38 21 00 10 */	addi r1, r1, 0x10
/* 806E3880  4E 80 00 20 */	blr 
