lbl_800EF598:
/* 800EF598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF59C  7C 08 02 A6 */	mflr r0
/* 800EF5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EF5A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF5A8  48 27 2C 31 */	bl _savegpr_28
/* 800EF5AC  7C 7C 1B 78 */	mr r28, r3
/* 800EF5B0  3B E0 00 01 */	li r31, 1
/* 800EF5B4  3B A0 00 00 */	li r29, 0
/* 800EF5B8  7F BE EB 78 */	mr r30, r29
/* 800EF5BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800EF5C0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EF5C4  7D 89 03 A6 */	mtctr r12
/* 800EF5C8  4E 80 04 21 */	bctrl 
/* 800EF5CC  28 03 00 00 */	cmplwi r3, 0
/* 800EF5D0  41 82 00 1C */	beq lbl_800EF5EC
/* 800EF5D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EF5D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EF5DC  80 03 5D B8 */	lwz r0, 0x5db8(r3)
/* 800EF5E0  28 00 00 00 */	cmplwi r0, 0
/* 800EF5E4  41 82 00 08 */	beq lbl_800EF5EC
/* 800EF5E8  3B C0 00 01 */	li r30, 1
lbl_800EF5EC:
/* 800EF5EC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800EF5F0  41 82 00 34 */	beq lbl_800EF624
/* 800EF5F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EF5F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EF5FC  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800EF600  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 800EF604  FC 00 02 10 */	fabs f0, f0
/* 800EF608  FC 20 00 18 */	frsp f1, f0
/* 800EF60C  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800EF610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EF614  7C 00 00 26 */	mfcr r0
/* 800EF618  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 800EF61C  41 82 00 08 */	beq lbl_800EF624
/* 800EF620  3B A0 00 01 */	li r29, 1
lbl_800EF624:
/* 800EF624  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800EF628  40 82 00 6C */	bne lbl_800EF694
/* 800EF62C  3B A0 00 00 */	li r29, 0
/* 800EF630  7F BE EB 78 */	mr r30, r29
/* 800EF634  7F 83 E3 78 */	mr r3, r28
/* 800EF638  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EF63C  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800EF640  7D 89 03 A6 */	mtctr r12
/* 800EF644  4E 80 04 21 */	bctrl 
/* 800EF648  28 03 00 00 */	cmplwi r3, 0
/* 800EF64C  41 82 00 14 */	beq lbl_800EF660
/* 800EF650  80 1C 28 18 */	lwz r0, 0x2818(r28)
/* 800EF654  28 00 00 00 */	cmplwi r0, 0
/* 800EF658  41 82 00 08 */	beq lbl_800EF660
/* 800EF65C  3B C0 00 01 */	li r30, 1
lbl_800EF660:
/* 800EF660  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800EF664  41 82 00 24 */	beq lbl_800EF688
/* 800EF668  80 7C 28 18 */	lwz r3, 0x2818(r28)
/* 800EF66C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 800EF670  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800EF674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EF678  7C 00 00 26 */	mfcr r0
/* 800EF67C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 800EF680  41 82 00 08 */	beq lbl_800EF688
/* 800EF684  3B A0 00 01 */	li r29, 1
lbl_800EF688:
/* 800EF688  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800EF68C  40 82 00 08 */	bne lbl_800EF694
/* 800EF690  3B E0 00 00 */	li r31, 0
lbl_800EF694:
/* 800EF694  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800EF698  39 61 00 20 */	addi r11, r1, 0x20
/* 800EF69C  48 27 2B 89 */	bl _restgpr_28
/* 800EF6A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF6A4  7C 08 03 A6 */	mtlr r0
/* 800EF6A8  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF6AC  4E 80 00 20 */	blr 
