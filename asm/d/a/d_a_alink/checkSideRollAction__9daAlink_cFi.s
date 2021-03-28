lbl_800B9148:
/* 800B9148  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B914C  7C 08 02 A6 */	mflr r0
/* 800B9150  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B9154  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800B9158  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800B915C  7C 7E 1B 78 */	mr r30, r3
/* 800B9160  7C 9F 23 78 */	mr r31, r4
/* 800B9164  4B FF 89 C5 */	bl checkNotJumpSinkLimit__9daAlink_cFv
/* 800B9168  2C 03 00 00 */	cmpwi r3, 0
/* 800B916C  40 82 00 3C */	bne lbl_800B91A8
/* 800B9170  7F C3 F3 78 */	mr r3, r30
/* 800B9174  38 80 00 01 */	li r4, 1
/* 800B9178  38 A0 00 01 */	li r5, 1
/* 800B917C  48 00 23 3D */	bl checkHeavyStateOn__9daAlink_cFii
/* 800B9180  2C 03 00 00 */	cmpwi r3, 0
/* 800B9184  40 82 00 24 */	bne lbl_800B91A8
/* 800B9188  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800B918C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B9190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B9194  40 81 00 14 */	ble lbl_800B91A8
/* 800B9198  7F C3 F3 78 */	mr r3, r30
/* 800B919C  48 01 96 F5 */	bl checkCutBackState__9daAlink_cFv
/* 800B91A0  2C 03 00 00 */	cmpwi r3, 0
/* 800B91A4  40 82 00 0C */	bne lbl_800B91B0
lbl_800B91A8:
/* 800B91A8  38 60 00 00 */	li r3, 0
/* 800B91AC  48 00 00 90 */	b lbl_800B923C
lbl_800B91B0:
/* 800B91B0  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800B91B4  28 03 00 00 */	cmplwi r3, 0
/* 800B91B8  40 82 00 14 */	bne lbl_800B91CC
/* 800B91BC  7F C3 F3 78 */	mr r3, r30
/* 800B91C0  7F E4 FB 78 */	mr r4, r31
/* 800B91C4  48 00 C1 65 */	bl procSideRollInit__9daAlink_cFi
/* 800B91C8  48 00 00 74 */	b lbl_800B923C
lbl_800B91CC:
/* 800B91CC  48 02 33 7D */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800B91D0  2C 03 00 00 */	cmpwi r3, 0
/* 800B91D4  41 82 00 5C */	beq lbl_800B9230
/* 800B91D8  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800B91DC  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 800B91E0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800B91E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800B91E8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B91EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800B91F0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800B91F4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800B91F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800B91FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B9200  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800B9204  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800B9208  38 61 00 08 */	addi r3, r1, 8
/* 800B920C  38 81 00 14 */	addi r4, r1, 0x14
/* 800B9210  48 28 E1 8D */	bl PSVECSquareDistance
/* 800B9214  C0 02 92 CC */	lfs f0, lit_6237(r2)
/* 800B9218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B921C  40 80 00 14 */	bge lbl_800B9230
/* 800B9220  7F C3 F3 78 */	mr r3, r30
/* 800B9224  7F E4 FB 78 */	mr r4, r31
/* 800B9228  48 02 4D E1 */	bl procTurnMoveInit__9daAlink_cFi
/* 800B922C  48 00 00 10 */	b lbl_800B923C
lbl_800B9230:
/* 800B9230  7F C3 F3 78 */	mr r3, r30
/* 800B9234  7F E4 FB 78 */	mr r4, r31
/* 800B9238  48 00 C0 F1 */	bl procSideRollInit__9daAlink_cFi
lbl_800B923C:
/* 800B923C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800B9240  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800B9244  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B9248  7C 08 03 A6 */	mtlr r0
/* 800B924C  38 21 00 30 */	addi r1, r1, 0x30
/* 800B9250  4E 80 00 20 */	blr 
