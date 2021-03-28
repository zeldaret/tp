lbl_80106F00:
/* 80106F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80106F04  7C 08 02 A6 */	mflr r0
/* 80106F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80106F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80106F10  93 C1 00 08 */	stw r30, 8(r1)
/* 80106F14  7C 7E 1B 78 */	mr r30, r3
/* 80106F18  38 80 00 01 */	li r4, 1
/* 80106F1C  4B FF EC 3D */	bl boardCommon__9daAlink_cFi
/* 80106F20  2C 03 00 00 */	cmpwi r3, 0
/* 80106F24  41 82 00 0C */	beq lbl_80106F30
/* 80106F28  38 60 00 01 */	li r3, 1
/* 80106F2C  48 00 01 1C */	b lbl_80107048
lbl_80106F30:
/* 80106F30  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 80106F34  2C 00 00 00 */	cmpwi r0, 0
/* 80106F38  41 82 00 18 */	beq lbl_80106F50
/* 80106F3C  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80106F40  60 00 00 40 */	ori r0, r0, 0x40
/* 80106F44  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80106F48  38 00 00 04 */	li r0, 4
/* 80106F4C  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_80106F50:
/* 80106F50  7F C3 F3 78 */	mr r3, r30
/* 80106F54  4B FF F6 39 */	bl checkNextActionBoard__9daAlink_cFv
/* 80106F58  2C 03 00 00 */	cmpwi r3, 0
/* 80106F5C  40 82 00 E8 */	bne lbl_80107044
/* 80106F60  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80106F64  7F E3 FB 78 */	mr r3, r31
/* 80106F68  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80106F6C  48 22 14 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80106F70  2C 03 00 00 */	cmpwi r3, 0
/* 80106F74  41 82 00 90 */	beq lbl_80107004
/* 80106F78  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80106F7C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80106F80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106F84  40 81 00 64 */	ble lbl_80106FE8
/* 80106F88  A8 7E 2F E0 */	lha r3, 0x2fe0(r30)
/* 80106F8C  48 25 E1 45 */	bl abs
/* 80106F90  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80106F94  40 80 00 54 */	bge lbl_80106FE8
/* 80106F98  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80106F9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106FA0  40 82 00 48 */	bne lbl_80106FE8
/* 80106FA4  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 80106FA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80106FAC  41 82 00 3C */	beq lbl_80106FE8
/* 80106FB0  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 80106FB4  A8 1E 31 22 */	lha r0, 0x3122(r30)
/* 80106FB8  7C 03 00 00 */	cmpw r3, r0
/* 80106FBC  40 80 00 2C */	bge lbl_80106FE8
/* 80106FC0  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 80106FC4  3C 60 80 39 */	lis r3, m__19daAlinkHIO_board_c0@ha
/* 80106FC8  38 63 E8 70 */	addi r3, r3, m__19daAlinkHIO_board_c0@l
/* 80106FCC  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80106FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106FD4  4C 40 13 82 */	cror 2, 0, 2
/* 80106FD8  40 82 00 10 */	bne lbl_80106FE8
/* 80106FDC  38 00 00 00 */	li r0, 0
/* 80106FE0  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 80106FE4  48 00 00 60 */	b lbl_80107044
lbl_80106FE8:
/* 80106FE8  7F C3 F3 78 */	mr r3, r30
/* 80106FEC  38 80 00 00 */	li r4, 0
/* 80106FF0  4B FF F5 45 */	bl setCommonBoardAnime__9daAlink_cFi
/* 80106FF4  7F C3 F3 78 */	mr r3, r30
/* 80106FF8  38 80 00 00 */	li r4, 0
/* 80106FFC  4B FF FA 3D */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 80107000  48 00 00 44 */	b lbl_80107044
lbl_80107004:
/* 80107004  7F E3 FB 78 */	mr r3, r31
/* 80107008  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 8010700C  48 22 14 21 */	bl checkPass__12J3DFrameCtrlFf
/* 80107010  2C 03 00 00 */	cmpwi r3, 0
/* 80107014  41 82 00 30 */	beq lbl_80107044
/* 80107018  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 8010701C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_board_c0@ha
/* 80107020  38 63 E8 70 */	addi r3, r3, m__19daAlinkHIO_board_c0@l
/* 80107024  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80107028  EC 01 00 2A */	fadds f0, f1, f0
/* 8010702C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80107030  C0 1E 33 98 */	lfs f0, 0x3398(r30)
/* 80107034  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 80107038  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8010703C  40 81 00 08 */	ble lbl_80107044
/* 80107040  D0 3E 33 98 */	stfs f1, 0x3398(r30)
lbl_80107044:
/* 80107044  38 60 00 01 */	li r3, 1
lbl_80107048:
/* 80107048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010704C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80107050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80107054  7C 08 03 A6 */	mtlr r0
/* 80107058  38 21 00 10 */	addi r1, r1, 0x10
/* 8010705C  4E 80 00 20 */	blr 
