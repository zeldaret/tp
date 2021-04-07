lbl_80138644:
/* 80138644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138648  7C 08 02 A6 */	mflr r0
/* 8013864C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138654  7C 7F 1B 78 */	mr r31, r3
/* 80138658  80 03 06 14 */	lwz r0, 0x614(r3)
/* 8013865C  28 00 00 06 */	cmplwi r0, 6
/* 80138660  41 82 00 0C */	beq lbl_8013866C
/* 80138664  28 00 00 08 */	cmplwi r0, 8
/* 80138668  40 82 00 14 */	bne lbl_8013867C
lbl_8013866C:
/* 8013866C  7F E3 FB 78 */	mr r3, r31
/* 80138670  4B FD FE FD */	bl setShapeAngleToTalkActor__9daAlink_cFv
/* 80138674  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80138678  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8013867C:
/* 8013867C  7F E3 FB 78 */	mr r3, r31
/* 80138680  4B FF F9 81 */	bl setSpeedAndAngleSwimWolf__9daAlink_cFv
/* 80138684  7F E3 FB 78 */	mr r3, r31
/* 80138688  4B FC B9 AD */	bl setSwimUpDownOffset__9daAlink_cFv
/* 8013868C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80138690  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80138694  41 82 00 18 */	beq lbl_801386AC
/* 80138698  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 8013869C  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801386A0  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801386A4  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 801386A8  48 00 00 14 */	b lbl_801386BC
lbl_801386AC:
/* 801386AC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 801386B0  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801386B4  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 801386B8  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
lbl_801386BC:
/* 801386BC  7F E3 FB 78 */	mr r3, r31
/* 801386C0  4B FC A9 99 */	bl checkSwimUpAction__9daAlink_cFv
/* 801386C4  2C 03 00 00 */	cmpwi r3, 0
/* 801386C8  41 82 00 0C */	beq lbl_801386D4
/* 801386CC  38 60 00 01 */	li r3, 1
/* 801386D0  48 00 00 38 */	b lbl_80138708
lbl_801386D4:
/* 801386D4  7F E3 FB 78 */	mr r3, r31
/* 801386D8  4B FF FB 21 */	bl decideDoStatusSwimWolf__9daAlink_cFv
/* 801386DC  2C 03 00 00 */	cmpwi r3, 0
/* 801386E0  41 82 00 0C */	beq lbl_801386EC
/* 801386E4  38 60 00 01 */	li r3, 1
/* 801386E8  48 00 00 20 */	b lbl_80138708
lbl_801386EC:
/* 801386EC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 801386F0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801386F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801386F8  40 81 00 0C */	ble lbl_80138704
/* 801386FC  7F E3 FB 78 */	mr r3, r31
/* 80138700  48 00 00 1D */	bl procWolfSwimMoveInit__9daAlink_cFv
lbl_80138704:
/* 80138704  38 60 00 01 */	li r3, 1
lbl_80138708:
/* 80138708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013870C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138710  7C 08 03 A6 */	mtlr r0
/* 80138714  38 21 00 10 */	addi r1, r1, 0x10
/* 80138718  4E 80 00 20 */	blr 
