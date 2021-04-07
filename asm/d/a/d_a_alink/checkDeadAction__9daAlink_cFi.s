lbl_80118D7C:
/* 80118D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118D80  7C 08 02 A6 */	mflr r0
/* 80118D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80118D8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80118D90  7C 7F 1B 78 */	mr r31, r3
/* 80118D94  7C 9E 23 78 */	mr r30, r4
/* 80118D98  4B FF CE 89 */	bl checkEventRun__9daAlink_cCFv
/* 80118D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80118DA0  40 82 02 3C */	bne lbl_80118FDC
/* 80118DA4  7F E3 FB 78 */	mr r3, r31
/* 80118DA8  4B FF FE F1 */	bl checkDeadHP__9daAlink_cFv
/* 80118DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80118DB0  41 82 01 D4 */	beq lbl_80118F84
/* 80118DB4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80118DB8  28 00 00 3A */	cmplwi r0, 0x3a
/* 80118DBC  41 82 01 C8 */	beq lbl_80118F84
/* 80118DC0  28 00 00 3B */	cmplwi r0, 0x3b
/* 80118DC4  41 82 01 C0 */	beq lbl_80118F84
/* 80118DC8  28 00 01 59 */	cmplwi r0, 0x159
/* 80118DCC  41 82 01 B8 */	beq lbl_80118F84
/* 80118DD0  28 00 01 5A */	cmplwi r0, 0x15a
/* 80118DD4  41 82 01 B0 */	beq lbl_80118F84
/* 80118DD8  2C 1E 00 00 */	cmpwi r30, 0
/* 80118DDC  40 82 00 14 */	bne lbl_80118DF0
/* 80118DE0  28 00 00 33 */	cmplwi r0, 0x33
/* 80118DE4  41 82 01 A0 */	beq lbl_80118F84
/* 80118DE8  28 00 01 08 */	cmplwi r0, 0x108
/* 80118DEC  41 82 01 98 */	beq lbl_80118F84
lbl_80118DF0:
/* 80118DF0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 80118DF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80118DF8  40 82 00 60 */	bne lbl_80118E58
/* 80118DFC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80118E00  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80118E04  40 82 00 54 */	bne lbl_80118E58
/* 80118E08  7F E3 FB 78 */	mr r3, r31
/* 80118E0C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80118E10  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 80118E14  7D 89 03 A6 */	mtctr r12
/* 80118E18  4E 80 04 21 */	bctrl 
/* 80118E1C  28 03 00 00 */	cmplwi r3, 0
/* 80118E20  40 82 00 38 */	bne lbl_80118E58
/* 80118E24  7F E3 FB 78 */	mr r3, r31
/* 80118E28  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80118E2C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80118E30  7D 89 03 A6 */	mtctr r12
/* 80118E34  4E 80 04 21 */	bctrl 
/* 80118E38  28 03 00 00 */	cmplwi r3, 0
/* 80118E3C  41 82 00 2C */	beq lbl_80118E68
/* 80118E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118E48  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80118E4C  88 03 16 B4 */	lbz r0, 0x16b4(r3)
/* 80118E50  28 00 00 04 */	cmplwi r0, 4
/* 80118E54  41 82 00 14 */	beq lbl_80118E68
lbl_80118E58:
/* 80118E58  7F E3 FB 78 */	mr r3, r31
/* 80118E5C  38 80 00 01 */	li r4, 1
/* 80118E60  48 00 2F F5 */	bl procCoDeadInit__9daAlink_cFi
/* 80118E64  48 00 01 7C */	b lbl_80118FE0
lbl_80118E68:
/* 80118E68  7F E3 FB 78 */	mr r3, r31
/* 80118E6C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80118E70  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80118E74  7D 89 03 A6 */	mtctr r12
/* 80118E78  4E 80 04 21 */	bctrl 
/* 80118E7C  28 03 00 00 */	cmplwi r3, 0
/* 80118E80  40 82 01 5C */	bne lbl_80118FDC
/* 80118E84  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80118E88  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80118E8C  41 82 00 24 */	beq lbl_80118EB0
/* 80118E90  7F E3 FB 78 */	mr r3, r31
/* 80118E94  4B FC 9F 31 */	bl cancelMagneBootsOn__9daAlink_cFv
/* 80118E98  2C 03 00 00 */	cmpwi r3, 0
/* 80118E9C  40 82 00 14 */	bne lbl_80118EB0
/* 80118EA0  7F E3 FB 78 */	mr r3, r31
/* 80118EA4  38 80 00 01 */	li r4, 1
/* 80118EA8  48 00 2F AD */	bl procCoDeadInit__9daAlink_cFi
/* 80118EAC  48 00 01 34 */	b lbl_80118FE0
lbl_80118EB0:
/* 80118EB0  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 80118EB4  28 00 00 2C */	cmplwi r0, 0x2c
/* 80118EB8  40 82 00 0C */	bne lbl_80118EC4
/* 80118EBC  38 00 00 00 */	li r0, 0
/* 80118EC0  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_80118EC4:
/* 80118EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118ECC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80118ED0  7F C3 F3 78 */	mr r3, r30
/* 80118ED4  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 80118ED8  4B F5 B7 89 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80118EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118EE0  41 82 00 24 */	beq lbl_80118F04
/* 80118EE4  C0 22 93 A4 */	lfs f1, lit_9138(r2)
/* 80118EE8  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 80118EEC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80118EF0  41 82 00 14 */	beq lbl_80118F04
/* 80118EF4  7F C3 F3 78 */	mr r3, r30
/* 80118EF8  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 80118EFC  4B F5 BC 9D */	bl GetExitId__4dBgSFRC13cBgS_PolyInfo
/* 80118F00  48 00 00 08 */	b lbl_80118F08
lbl_80118F04:
/* 80118F04  38 60 00 3F */	li r3, 0x3f
lbl_80118F08:
/* 80118F08  2C 03 00 3F */	cmpwi r3, 0x3f
/* 80118F0C  40 82 00 10 */	bne lbl_80118F1C
/* 80118F10  A0 1F 31 12 */	lhz r0, 0x3112(r31)
/* 80118F14  28 00 00 3F */	cmplwi r0, 0x3f
/* 80118F18  41 82 00 28 */	beq lbl_80118F40
lbl_80118F1C:
/* 80118F1C  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 80118F20  2C 00 00 05 */	cmpwi r0, 5
/* 80118F24  40 82 00 1C */	bne lbl_80118F40
/* 80118F28  C0 3F 33 C8 */	lfs f1, 0x33c8(r31)
/* 80118F2C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80118F30  EC 21 00 28 */	fsubs f1, f1, f0
/* 80118F34  C0 02 93 18 */	lfs f0, lit_7308(r2)
/* 80118F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80118F3C  41 81 00 1C */	bgt lbl_80118F58
lbl_80118F40:
/* 80118F40  A0 1F 31 12 */	lhz r0, 0x3112(r31)
/* 80118F44  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80118F48  41 82 00 2C */	beq lbl_80118F74
/* 80118F4C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80118F50  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80118F54  41 82 00 20 */	beq lbl_80118F74
lbl_80118F58:
/* 80118F58  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80118F5C  64 00 00 04 */	oris r0, r0, 4
/* 80118F60  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80118F64  7F E3 FB 78 */	mr r3, r31
/* 80118F68  38 80 00 00 */	li r4, 0
/* 80118F6C  48 00 2E E9 */	bl procCoDeadInit__9daAlink_cFi
/* 80118F70  48 00 00 70 */	b lbl_80118FE0
lbl_80118F74:
/* 80118F74  7F E3 FB 78 */	mr r3, r31
/* 80118F78  38 80 00 01 */	li r4, 1
/* 80118F7C  48 00 75 B9 */	bl commonFallInit__9daAlink_cFi
/* 80118F80  48 00 00 60 */	b lbl_80118FE0
lbl_80118F84:
/* 80118F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118F8C  A0 03 00 02 */	lhz r0, 2(r3)
/* 80118F90  28 00 00 00 */	cmplwi r0, 0
/* 80118F94  40 82 00 48 */	bne lbl_80118FDC
/* 80118F98  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80118F9C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80118FA0  40 82 00 3C */	bne lbl_80118FDC
/* 80118FA4  3B C3 00 9C */	addi r30, r3, 0x9c
/* 80118FA8  7F C3 F3 78 */	mr r3, r30
/* 80118FAC  38 80 00 6C */	li r4, 0x6c
/* 80118FB0  4B F1 A7 31 */	bl checkBottle__17dSv_player_item_cFUc
/* 80118FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118FB8  41 82 00 24 */	beq lbl_80118FDC
/* 80118FBC  7F E3 FB 78 */	mr r3, r31
/* 80118FC0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80118FC4  38 A0 00 00 */	li r5, 0
/* 80118FC8  4B FF 64 95 */	bl makeFairy__9daAlink_cFP4cXyzUl
/* 80118FCC  7F C3 F3 78 */	mr r3, r30
/* 80118FD0  38 80 00 6C */	li r4, 0x6c
/* 80118FD4  38 A0 00 60 */	li r5, 0x60
/* 80118FD8  4B F1 A3 99 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
lbl_80118FDC:
/* 80118FDC  38 60 00 00 */	li r3, 0
lbl_80118FE0:
/* 80118FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80118FE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80118FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80118FEC  7C 08 03 A6 */	mtlr r0
/* 80118FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80118FF4  4E 80 00 20 */	blr 
