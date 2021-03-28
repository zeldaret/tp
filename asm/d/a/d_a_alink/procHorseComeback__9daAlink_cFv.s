lbl_800F2DE4:
/* 800F2DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2DE8  7C 08 02 A6 */	mflr r0
/* 800F2DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 800F2DF8  7C 7E 1B 78 */	mr r30, r3
/* 800F2DFC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800F2E00  4B FF AC 25 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2E04  7F E3 FB 78 */	mr r3, r31
/* 800F2E08  48 06 B6 C5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F2E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F2E10  41 82 00 18 */	beq lbl_800F2E28
/* 800F2E14  38 00 00 13 */	li r0, 0x13
/* 800F2E18  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F2E1C  7F C3 F3 78 */	mr r3, r30
/* 800F2E20  4B FF DB 61 */	bl procHorseWaitInit__9daAlink_cFv
/* 800F2E24  48 00 00 A4 */	b lbl_800F2EC8
lbl_800F2E28:
/* 800F2E28  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F2E2C  C0 02 94 20 */	lfs f0, lit_14619(r2)
/* 800F2E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F2E34  4C 41 13 82 */	cror 2, 1, 2
/* 800F2E38  40 82 00 14 */	bne lbl_800F2E4C
/* 800F2E3C  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F2E40  60 00 00 02 */	ori r0, r0, 2
/* 800F2E44  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F2E48  48 00 00 7C */	b lbl_800F2EC4
lbl_800F2E4C:
/* 800F2E4C  C0 02 94 80 */	lfs f0, lit_16036(r2)
/* 800F2E50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F2E54  4C 41 13 82 */	cror 2, 1, 2
/* 800F2E58  40 82 00 1C */	bne lbl_800F2E74
/* 800F2E5C  38 00 00 05 */	li r0, 5
/* 800F2E60  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800F2E64  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F2E68  60 00 00 10 */	ori r0, r0, 0x10
/* 800F2E6C  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F2E70  48 00 00 54 */	b lbl_800F2EC4
lbl_800F2E74:
/* 800F2E74  C0 02 94 F8 */	lfs f0, lit_20303(r2)
/* 800F2E78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F2E7C  4C 41 13 82 */	cror 2, 1, 2
/* 800F2E80  40 82 00 14 */	bne lbl_800F2E94
/* 800F2E84  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800F2E88  60 00 00 01 */	ori r0, r0, 1
/* 800F2E8C  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F2E90  48 00 00 34 */	b lbl_800F2EC4
lbl_800F2E94:
/* 800F2E94  7F E3 FB 78 */	mr r3, r31
/* 800F2E98  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 800F2E9C  48 23 55 91 */	bl checkPass__12J3DFrameCtrlFf
/* 800F2EA0  2C 03 00 00 */	cmpwi r3, 0
/* 800F2EA4  41 82 00 20 */	beq lbl_800F2EC4
/* 800F2EA8  7F C3 F3 78 */	mr r3, r30
/* 800F2EAC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000E@ha */
/* 800F2EB0  38 84 00 0E */	addi r4, r4, 0x000E /* 0x0001000E@l */
/* 800F2EB4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F2EB8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F2EBC  7D 89 03 A6 */	mtctr r12
/* 800F2EC0  4E 80 04 21 */	bctrl 
lbl_800F2EC4:
/* 800F2EC4  38 60 00 01 */	li r3, 1
lbl_800F2EC8:
/* 800F2EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2ECC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F2ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2ED4  7C 08 03 A6 */	mtlr r0
/* 800F2ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2EDC  4E 80 00 20 */	blr 
