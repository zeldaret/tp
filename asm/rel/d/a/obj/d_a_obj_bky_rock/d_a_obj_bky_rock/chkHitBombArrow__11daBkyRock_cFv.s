lbl_80BB7690:
/* 80BB7690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB7694  7C 08 02 A6 */	mflr r0
/* 80BB7698  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB769C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB76A0  4B 7A AB 39 */	bl _savegpr_28
/* 80BB76A4  7C 7C 1B 78 */	mr r28, r3
/* 80BB76A8  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80BB76AC  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 80BB76B0  2C 00 00 01 */	cmpwi r0, 1
/* 80BB76B4  40 82 00 2C */	bne lbl_80BB76E0
/* 80BB76B8  54 64 A6 3E */	rlwinm r4, r3, 0x14, 0x18, 0x1f
/* 80BB76BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB76C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB76C4  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80BB76C8  7C 05 07 74 */	extsb r5, r0
/* 80BB76CC  4B 47 DC 95 */	bl isSwitch__10dSv_info_cCFii
/* 80BB76D0  2C 03 00 00 */	cmpwi r3, 0
/* 80BB76D4  40 82 00 0C */	bne lbl_80BB76E0
/* 80BB76D8  38 60 00 00 */	li r3, 0
/* 80BB76DC  48 00 00 78 */	b lbl_80BB7754
lbl_80BB76E0:
/* 80BB76E0  3B A0 00 00 */	li r29, 0
/* 80BB76E4  3B E0 00 00 */	li r31, 0
lbl_80BB76E8:
/* 80BB76E8  2C 1D 00 00 */	cmpwi r29, 0
/* 80BB76EC  40 82 00 54 */	bne lbl_80BB7740
/* 80BB76F0  3B DF 05 EC */	addi r30, r31, 0x5ec
/* 80BB76F4  7F DC F2 14 */	add r30, r28, r30
/* 80BB76F8  7F C3 F3 78 */	mr r3, r30
/* 80BB76FC  4B 4C CD 65 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BB7700  28 03 00 00 */	cmplwi r3, 0
/* 80BB7704  41 82 00 3C */	beq lbl_80BB7740
/* 80BB7708  7F C3 F3 78 */	mr r3, r30
/* 80BB770C  4B 4C CD ED */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BB7710  28 03 00 00 */	cmplwi r3, 0
/* 80BB7714  41 82 00 18 */	beq lbl_80BB772C
/* 80BB7718  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BB771C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BB7720  41 82 00 0C */	beq lbl_80BB772C
/* 80BB7724  38 60 00 01 */	li r3, 1
/* 80BB7728  48 00 00 2C */	b lbl_80BB7754
lbl_80BB772C:
/* 80BB772C  7F C3 F3 78 */	mr r3, r30
/* 80BB7730  81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 80BB7734  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BB7738  7D 89 03 A6 */	mtctr r12
/* 80BB773C  4E 80 04 21 */	bctrl 
lbl_80BB7740:
/* 80BB7740  3B BD 00 01 */	addi r29, r29, 1
/* 80BB7744  2C 1D 00 02 */	cmpwi r29, 2
/* 80BB7748  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80BB774C  41 80 FF 9C */	blt lbl_80BB76E8
/* 80BB7750  38 60 00 00 */	li r3, 0
lbl_80BB7754:
/* 80BB7754  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB7758  4B 7A AA CD */	bl _restgpr_28
/* 80BB775C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB7760  7C 08 03 A6 */	mtlr r0
/* 80BB7764  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB7768  4E 80 00 20 */	blr 
