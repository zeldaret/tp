lbl_8013DE70:
/* 8013DE70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013DE74  7C 08 02 A6 */	mflr r0
/* 8013DE78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013DE7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8013DE80  48 22 43 5D */	bl _savegpr_29
/* 8013DE84  7C 7D 1B 78 */	mr r29, r3
/* 8013DE88  3B FD 1F D0 */	addi r31, r29, 0x1fd0
/* 8013DE8C  38 80 00 96 */	li r4, 0x96
/* 8013DE90  38 A0 00 02 */	li r5, 2
/* 8013DE94  4B FA A0 3D */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 8013DE98  7F E3 FB 78 */	mr r3, r31
/* 8013DE9C  48 02 06 31 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013DEA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013DEA4  40 82 00 2C */	bne lbl_8013DED0
/* 8013DEA8  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 8013DEAC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8013DEB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013DEB4  40 81 00 60 */	ble lbl_8013DF14
/* 8013DEB8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013DEBC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlGrab_c0@ha
/* 8013DEC0  38 63 F9 5C */	addi r3, r3, m__20daAlinkHIO_wlGrab_c0@l
/* 8013DEC4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8013DEC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013DECC  40 81 00 48 */	ble lbl_8013DF14
lbl_8013DED0:
/* 8013DED0  8B DD 2F A3 */	lbz r30, 0x2fa3(r29)
/* 8013DED4  83 FD 28 48 */	lwz r31, 0x2848(r29)
/* 8013DED8  7F A3 EB 78 */	mr r3, r29
/* 8013DEDC  4B FE F2 CD */	bl procWolfWaitInit__9daAlink_cFv
/* 8013DEE0  7F A3 EB 78 */	mr r3, r29
/* 8013DEE4  3C 80 80 39 */	lis r4, m_wlAnmDataTable__9daAlink_c@ha
/* 8013DEE8  38 84 10 10 */	addi r4, r4, m_wlAnmDataTable__9daAlink_c@l
/* 8013DEEC  A0 84 04 50 */	lhz r4, 0x450(r4)
/* 8013DEF0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013DEF4  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8013DEF8  4B F6 F4 B1 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 8013DEFC  28 1F 00 00 */	cmplwi r31, 0
/* 8013DF00  41 82 00 14 */	beq lbl_8013DF14
/* 8013DF04  9B DD 2F A3 */	stb r30, 0x2fa3(r29)
/* 8013DF08  38 7D 28 44 */	addi r3, r29, 0x2844
/* 8013DF0C  7F E4 FB 78 */	mr r4, r31
/* 8013DF10  48 02 0D A9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_8013DF14:
/* 8013DF14  38 60 00 01 */	li r3, 1
/* 8013DF18  39 61 00 20 */	addi r11, r1, 0x20
/* 8013DF1C  48 22 43 0D */	bl _restgpr_29
/* 8013DF20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013DF24  7C 08 03 A6 */	mtlr r0
/* 8013DF28  38 21 00 20 */	addi r1, r1, 0x20
/* 8013DF2C  4E 80 00 20 */	blr 
