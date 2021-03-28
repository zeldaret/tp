lbl_800E7894:
/* 800E7894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E7898  7C 08 02 A6 */	mflr r0
/* 800E789C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E78A0  39 61 00 20 */	addi r11, r1, 0x20
/* 800E78A4  48 27 A9 39 */	bl _savegpr_29
/* 800E78A8  7C 7D 1B 78 */	mr r29, r3
/* 800E78AC  7C 9E 23 78 */	mr r30, r4
/* 800E78B0  3B E0 00 00 */	li r31, 0
/* 800E78B4  C0 23 33 AC */	lfs f1, 0x33ac(r3)
/* 800E78B8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800E78BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E78C0  40 81 00 70 */	ble lbl_800E7930
/* 800E78C4  7F E3 FB 78 */	mr r3, r31
/* 800E78C8  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800E78CC  28 00 00 62 */	cmplwi r0, 0x62
/* 800E78D0  41 82 00 10 */	beq lbl_800E78E0
/* 800E78D4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E78D8  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800E78DC  40 82 00 08 */	bne lbl_800E78E4
lbl_800E78E0:
/* 800E78E0  38 60 00 01 */	li r3, 1
lbl_800E78E4:
/* 800E78E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E78E8  41 82 00 48 */	beq lbl_800E7930
/* 800E78EC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E78F0  C0 1D 34 00 */	lfs f0, 0x3400(r29)
/* 800E78F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800E78F8  40 82 00 10 */	bne lbl_800E7908
/* 800E78FC  C0 1D 34 04 */	lfs f0, 0x3404(r29)
/* 800E7900  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800E7904  41 82 00 2C */	beq lbl_800E7930
lbl_800E7908:
/* 800E7908  4B FD 89 C1 */	bl checkBossRoom__9daAlink_cFv
/* 800E790C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E7910  40 82 00 1C */	bne lbl_800E792C
/* 800E7914  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 800E7918  7C 1E 00 50 */	subf r0, r30, r0
/* 800E791C  7C 03 07 34 */	extsh r3, r0
/* 800E7920  48 27 D7 B1 */	bl abs
/* 800E7924  2C 03 38 00 */	cmpwi r3, 0x3800
/* 800E7928  41 80 00 08 */	blt lbl_800E7930
lbl_800E792C:
/* 800E792C  3B E0 00 01 */	li r31, 1
lbl_800E7930:
/* 800E7930  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800E7934  39 61 00 20 */	addi r11, r1, 0x20
/* 800E7938  48 27 A8 F1 */	bl _restgpr_29
/* 800E793C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E7940  7C 08 03 A6 */	mtlr r0
/* 800E7944  38 21 00 20 */	addi r1, r1, 0x20
/* 800E7948  4E 80 00 20 */	blr 
