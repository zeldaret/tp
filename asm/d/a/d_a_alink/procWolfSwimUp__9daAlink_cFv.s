lbl_80138484:
/* 80138484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138488  7C 08 02 A6 */	mflr r0
/* 8013848C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138494  93 C1 00 08 */	stw r30, 8(r1)
/* 80138498  7C 7E 1B 78 */	mr r30, r3
/* 8013849C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 801384A0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801384A4  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlSwim_c0@ha
/* 801384A8  38 84 F8 B4 */	addi r4, r4, m__20daAlinkHIO_wlSwim_c0@l
/* 801384AC  C0 44 00 54 */	lfs f2, 0x54(r4)
/* 801384B0  4B F7 B4 75 */	bl setNormalSpeedF__9daAlink_cFff
/* 801384B4  7F E3 FB 78 */	mr r3, r31
/* 801384B8  48 02 60 15 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801384BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801384C0  41 82 00 14 */	beq lbl_801384D4
/* 801384C4  7F C3 F3 78 */	mr r3, r30
/* 801384C8  38 80 00 00 */	li r4, 0
/* 801384CC  48 00 00 61 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 801384D0  48 00 00 40 */	b lbl_80138510
lbl_801384D4:
/* 801384D4  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 801384D8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801384DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801384E0  40 81 00 28 */	ble lbl_80138508
/* 801384E4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801384E8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha
/* 801384EC  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l
/* 801384F0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801384F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801384F8  40 81 00 10 */	ble lbl_80138508
/* 801384FC  7F C3 F3 78 */	mr r3, r30
/* 80138500  48 00 02 1D */	bl procWolfSwimMoveInit__9daAlink_cFv
/* 80138504  48 00 00 0C */	b lbl_80138510
lbl_80138508:
/* 80138508  C0 1E 33 B4 */	lfs f0, 0x33b4(r30)
/* 8013850C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80138510:
/* 80138510  38 60 00 01 */	li r3, 1
/* 80138514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138518  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013851C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138520  7C 08 03 A6 */	mtlr r0
/* 80138524  38 21 00 10 */	addi r1, r1, 0x10
/* 80138528  4E 80 00 20 */	blr 
