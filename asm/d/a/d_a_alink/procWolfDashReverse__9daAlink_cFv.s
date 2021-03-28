lbl_8012DA5C:
/* 8012DA5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012DA60  7C 08 02 A6 */	mflr r0
/* 8012DA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012DA68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012DA6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8012DA70  7C 7F 1B 78 */	mr r31, r3
/* 8012DA74  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8012DA78  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8012DA7C  2C 00 00 00 */	cmpwi r0, 0
/* 8012DA80  40 82 00 0C */	bne lbl_8012DA8C
/* 8012DA84  38 00 00 04 */	li r0, 4
/* 8012DA88  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8012DA8C:
/* 8012DA8C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8012DA90  54 03 07 BD */	rlwinm. r3, r0, 0, 0x1e, 0x1e
/* 8012DA94  40 82 00 4C */	bne lbl_8012DAE0
/* 8012DA98  7F C3 F3 78 */	mr r3, r30
/* 8012DA9C  48 03 0A 31 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012DAA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012DAA4  41 82 00 14 */	beq lbl_8012DAB8
/* 8012DAA8  7F E3 FB 78 */	mr r3, r31
/* 8012DAAC  38 80 00 00 */	li r4, 0
/* 8012DAB0  4B FF C0 95 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012DAB4  48 00 00 D8 */	b lbl_8012DB8C
lbl_8012DAB8:
/* 8012DAB8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8012DABC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012DAC0  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012DAC4  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8012DAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012DACC  40 81 00 C0 */	ble lbl_8012DB8C
/* 8012DAD0  7F E3 FB 78 */	mr r3, r31
/* 8012DAD4  38 80 00 01 */	li r4, 1
/* 8012DAD8  4B FF C0 6D */	bl checkNextActionWolf__9daAlink_cFi
/* 8012DADC  48 00 00 B0 */	b lbl_8012DB8C
lbl_8012DAE0:
/* 8012DAE0  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8012DAE4  2C 00 00 00 */	cmpwi r0, 0
/* 8012DAE8  41 82 00 10 */	beq lbl_8012DAF8
/* 8012DAEC  38 00 00 00 */	li r0, 0
/* 8012DAF0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012DAF4  48 00 00 98 */	b lbl_8012DB8C
lbl_8012DAF8:
/* 8012DAF8  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8012DAFC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012DB00  40 82 00 10 */	bne lbl_8012DB10
/* 8012DB04  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 8012DB08  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8012DB0C  41 82 00 80 */	beq lbl_8012DB8C
lbl_8012DB10:
/* 8012DB10  28 03 00 00 */	cmplwi r3, 0
/* 8012DB14  41 82 00 78 */	beq lbl_8012DB8C
/* 8012DB18  7F E3 FB 78 */	mr r3, r31
/* 8012DB1C  38 80 00 00 */	li r4, 0
/* 8012DB20  4B FF BD 5D */	bl checkWolfLandAction__9daAlink_cFi
/* 8012DB24  2C 03 00 00 */	cmpwi r3, 0
/* 8012DB28  41 82 00 0C */	beq lbl_8012DB34
/* 8012DB2C  38 60 00 01 */	li r3, 1
/* 8012DB30  48 00 00 60 */	b lbl_8012DB90
lbl_8012DB34:
/* 8012DB34  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012DB38  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012DB3C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012DB40  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012DB44  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8012DB48  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8012DB4C  EC 01 00 2A */	fadds f0, f1, f0
/* 8012DB50  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8012DB54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8012DB58  80 9F 1F 2C */	lwz r4, 0x1f2c(r31)
/* 8012DB5C  D0 04 00 08 */	stfs f0, 8(r4)
/* 8012DB60  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8012DB64  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8012DB68  B0 1E 00 08 */	sth r0, 8(r30)
/* 8012DB6C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012DB70  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012DB74  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8012DB78  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8012DB7C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8012DB80  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8012DB84  60 00 80 00 */	ori r0, r0, 0x8000
/* 8012DB88  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8012DB8C:
/* 8012DB8C  38 60 00 01 */	li r3, 1
lbl_8012DB90:
/* 8012DB90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012DB94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012DB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012DB9C  7C 08 03 A6 */	mtlr r0
/* 8012DBA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8012DBA4  4E 80 00 20 */	blr 
