lbl_8029F4CC:
/* 8029F4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F4D0  7C 08 02 A6 */	mflr r0
/* 8029F4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F4DC  7C 7F 1B 78 */	mr r31, r3
/* 8029F4E0  48 00 02 AD */	bl prepare___5JAISeFv
/* 8029F4E4  38 7F 00 10 */	addi r3, r31, 0x10
/* 8029F4E8  48 00 31 D1 */	bl calc_JAISound___8JAISoundFv
/* 8029F4EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029F4F0  41 82 00 5C */	beq lbl_8029F54C
/* 8029F4F4  C0 3F 03 28 */	lfs f1, 0x328(r31)
/* 8029F4F8  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 8029F4FC  28 03 00 01 */	cmplwi r3, 1
/* 8029F500  40 81 00 18 */	ble lbl_8029F518
/* 8029F504  38 03 FF FF */	addi r0, r3, -1
/* 8029F508  90 1F 03 34 */	stw r0, 0x334(r31)
/* 8029F50C  C0 1F 03 2C */	lfs f0, 0x32c(r31)
/* 8029F510  EC 21 00 2A */	fadds f1, f1, f0
/* 8029F514  48 00 00 14 */	b lbl_8029F528
lbl_8029F518:
/* 8029F518  40 82 00 10 */	bne lbl_8029F528
/* 8029F51C  38 00 00 00 */	li r0, 0
/* 8029F520  90 1F 03 34 */	stw r0, 0x334(r31)
/* 8029F524  C0 3F 03 30 */	lfs f1, 0x330(r31)
lbl_8029F528:
/* 8029F528  D0 3F 03 28 */	stfs f1, 0x328(r31)
/* 8029F52C  80 7F 03 24 */	lwz r3, 0x324(r31)
/* 8029F530  28 03 00 00 */	cmplwi r3, 0
/* 8029F534  41 82 00 18 */	beq lbl_8029F54C
/* 8029F538  7F E4 FB 78 */	mr r4, r31
/* 8029F53C  81 83 00 00 */	lwz r12, 0(r3)
/* 8029F540  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8029F544  7D 89 03 A6 */	mtctr r12
/* 8029F548  4E 80 04 21 */	bctrl 
lbl_8029F54C:
/* 8029F54C  38 80 00 00 */	li r4, 0
/* 8029F550  88 7F 00 2F */	lbz r3, 0x2f(r31)
/* 8029F554  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8029F558  41 82 00 2C */	beq lbl_8029F584
/* 8029F55C  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8029F560  41 82 00 20 */	beq lbl_8029F580
/* 8029F564  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8029F568  28 00 00 00 */	cmplwi r0, 0
/* 8029F56C  40 82 00 18 */	bne lbl_8029F584
/* 8029F570  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8029F574  C0 02 BD 84 */	lfs f0, lit_736(r2)
/* 8029F578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F57C  40 80 00 08 */	bge lbl_8029F584
lbl_8029F580:
/* 8029F580  38 80 00 01 */	li r4, 1
lbl_8029F584:
/* 8029F584  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8029F588  40 82 00 14 */	bne lbl_8029F59C
/* 8029F58C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8029F590  3C 03 00 01 */	addis r0, r3, 1
/* 8029F594  28 00 FF FF */	cmplwi r0, 0xffff
/* 8029F598  40 82 00 10 */	bne lbl_8029F5A8
lbl_8029F59C:
/* 8029F59C  38 00 FF FF */	li r0, -1
/* 8029F5A0  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 8029F5A4  48 00 00 10 */	b lbl_8029F5B4
lbl_8029F5A8:
/* 8029F5A8  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 8029F5AC  7C 00 1A 14 */	add r0, r0, r3
/* 8029F5B0  90 1F 00 B0 */	stw r0, 0xb0(r31)
lbl_8029F5B4:
/* 8029F5B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F5BC  7C 08 03 A6 */	mtlr r0
/* 8029F5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F5C4  4E 80 00 20 */	blr 
