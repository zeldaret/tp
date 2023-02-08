lbl_80BD85C0:
/* 80BD85C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD85C4  7C 08 02 A6 */	mflr r0
/* 80BD85C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD85CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD85D0  4B 78 9C 05 */	bl _savegpr_27
/* 80BD85D4  7C 7F 1B 78 */	mr r31, r3
/* 80BD85D8  3C 80 80 BE */	lis r4, l_wallBmd@ha /* 0x80BD9FA4@ha */
/* 80BD85DC  3B C4 9F A4 */	addi r30, r4, l_wallBmd@l /* 0x80BD9FA4@l */
/* 80BD85E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD85E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD85E8  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 80BD85EC  8B 63 0F 0E */	lbz r27, 0xf0e(r3)
/* 80BD85F0  88 03 0E 90 */	lbz r0, 0xe90(r3)
/* 80BD85F4  28 00 00 00 */	cmplwi r0, 0
/* 80BD85F8  41 82 00 FC */	beq lbl_80BD86F4
/* 80BD85FC  3B A0 00 01 */	li r29, 1
/* 80BD8600  7F 83 E3 78 */	mr r3, r28
/* 80BD8604  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80BD8608  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80BD860C  7D 89 03 A6 */	mtctr r12
/* 80BD8610  4E 80 04 21 */	bctrl 
/* 80BD8614  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8618  41 82 00 14 */	beq lbl_80BD862C
/* 80BD861C  88 1F 0F 12 */	lbz r0, 0xf12(r31)
/* 80BD8620  28 00 00 00 */	cmplwi r0, 0
/* 80BD8624  40 82 00 08 */	bne lbl_80BD862C
/* 80BD8628  3B A0 00 00 */	li r29, 0
lbl_80BD862C:
/* 80BD862C  7F E3 FB 78 */	mr r3, r31
/* 80BD8630  48 00 0F 71 */	bl checkPullNow__12daObjCwall_cFv
/* 80BD8634  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8638  41 82 00 88 */	beq lbl_80BD86C0
/* 80BD863C  88 7F 0F 0E */	lbz r3, 0xf0e(r31)
/* 80BD8640  38 03 00 01 */	addi r0, r3, 1
/* 80BD8644  98 1F 0F 0E */	stb r0, 0xf0e(r31)
/* 80BD8648  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BD864C  C0 1F 0F 50 */	lfs f0, 0xf50(r31)
/* 80BD8650  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BD8654  41 82 00 BC */	beq lbl_80BD8710
/* 80BD8658  7F E3 FB 78 */	mr r3, r31
/* 80BD865C  48 00 0D B9 */	bl checkWall__12daObjCwall_cFv
/* 80BD8660  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8664  40 82 00 AC */	bne lbl_80BD8710
/* 80BD8668  7F 83 E3 78 */	mr r3, r28
/* 80BD866C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80BD8670  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BD8674  7D 89 03 A6 */	mtctr r12
/* 80BD8678  4E 80 04 21 */	bctrl 
/* 80BD867C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80BD8680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8684  40 81 00 8C */	ble lbl_80BD8710
/* 80BD8688  7F 83 E3 78 */	mr r3, r28
/* 80BD868C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80BD8690  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BD8694  7D 89 03 A6 */	mtctr r12
/* 80BD8698  4E 80 04 21 */	bctrl 
/* 80BD869C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80BD86A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD86A4  40 80 00 6C */	bge lbl_80BD8710
/* 80BD86A8  88 1F 0F 0E */	lbz r0, 0xf0e(r31)
/* 80BD86AC  28 00 00 08 */	cmplwi r0, 8
/* 80BD86B0  40 81 00 60 */	ble lbl_80BD8710
/* 80BD86B4  7F E3 FB 78 */	mr r3, r31
/* 80BD86B8  48 00 00 91 */	bl initWalk__12daObjCwall_cFv
/* 80BD86BC  48 00 00 54 */	b lbl_80BD8710
lbl_80BD86C0:
/* 80BD86C0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80BD86C4  41 82 00 4C */	beq lbl_80BD8710
/* 80BD86C8  38 7F 0F 10 */	addi r3, r31, 0xf10
/* 80BD86CC  48 00 17 FD */	bl func_80BD9EC8
/* 80BD86D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD86D4  40 82 00 3C */	bne lbl_80BD8710
/* 80BD86D8  88 1F 0F 0D */	lbz r0, 0xf0d(r31)
/* 80BD86DC  28 00 00 00 */	cmplwi r0, 0
/* 80BD86E0  41 82 00 30 */	beq lbl_80BD8710
/* 80BD86E4  98 1F 0F 59 */	stb r0, 0xf59(r31)
/* 80BD86E8  7F E3 FB 78 */	mr r3, r31
/* 80BD86EC  48 00 04 DD */	bl initClose__12daObjCwall_cFv
/* 80BD86F0  48 00 00 20 */	b lbl_80BD8710
lbl_80BD86F4:
/* 80BD86F4  38 00 00 00 */	li r0, 0
/* 80BD86F8  98 1F 0F 0E */	stb r0, 0xf0e(r31)
/* 80BD86FC  88 1F 0F 0D */	lbz r0, 0xf0d(r31)
/* 80BD8700  28 00 00 00 */	cmplwi r0, 0
/* 80BD8704  41 82 00 0C */	beq lbl_80BD8710
/* 80BD8708  98 1F 0F 59 */	stb r0, 0xf59(r31)
/* 80BD870C  48 00 04 BD */	bl initClose__12daObjCwall_cFv
lbl_80BD8710:
/* 80BD8710  88 1F 0F 0D */	lbz r0, 0xf0d(r31)
/* 80BD8714  28 00 00 09 */	cmplwi r0, 9
/* 80BD8718  41 82 00 10 */	beq lbl_80BD8728
/* 80BD871C  88 1F 0F 0E */	lbz r0, 0xf0e(r31)
/* 80BD8720  7C 1B 00 40 */	cmplw r27, r0
/* 80BD8724  40 82 00 0C */	bne lbl_80BD8730
lbl_80BD8728:
/* 80BD8728  38 00 00 00 */	li r0, 0
/* 80BD872C  98 1F 0F 0E */	stb r0, 0xf0e(r31)
lbl_80BD8730:
/* 80BD8730  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD8734  4B 78 9A ED */	bl _restgpr_27
/* 80BD8738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD873C  7C 08 03 A6 */	mtlr r0
/* 80BD8740  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD8744  4E 80 00 20 */	blr 
