lbl_8015F55C:
/* 8015F55C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015F560  7C 08 02 A6 */	mflr r0
/* 8015F564  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015F568  39 61 00 20 */	addi r11, r1, 0x20
/* 8015F56C  48 20 2C 71 */	bl _savegpr_29
/* 8015F570  3B E0 00 00 */	li r31, 0
/* 8015F574  7F FE FB 78 */	mr r30, r31
/* 8015F578  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8015F57C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8015F580  41 82 00 40 */	beq lbl_8015F5C0
/* 8015F584  28 03 00 00 */	cmplwi r3, 0
/* 8015F588  41 82 00 0C */	beq lbl_8015F594
/* 8015F58C  83 A3 00 04 */	lwz r29, 4(r3)
/* 8015F590  48 00 00 08 */	b lbl_8015F598
lbl_8015F594:
/* 8015F594  3B A0 FF FF */	li r29, -1
lbl_8015F598:
/* 8015F598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F59C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F5A0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8015F5A4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015F5A8  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 8015F5AC  7D 89 03 A6 */	mtctr r12
/* 8015F5B0  4E 80 04 21 */	bctrl 
/* 8015F5B4  7C 03 E8 40 */	cmplw r3, r29
/* 8015F5B8  40 82 00 08 */	bne lbl_8015F5C0
/* 8015F5BC  3B C0 00 01 */	li r30, 1
lbl_8015F5C0:
/* 8015F5C0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8015F5C4  41 82 00 2C */	beq lbl_8015F5F0
/* 8015F5C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F5CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F5D0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8015F5D4  7C 00 07 74 */	extsb r0, r0
/* 8015F5D8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8015F5DC  7C 63 02 14 */	add r3, r3, r0
/* 8015F5E0  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8015F5E4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8015F5E8  41 82 00 08 */	beq lbl_8015F5F0
/* 8015F5EC  3B E0 00 01 */	li r31, 1
lbl_8015F5F0:
/* 8015F5F0  7F E3 FB 78 */	mr r3, r31
/* 8015F5F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8015F5F8  48 20 2C 31 */	bl _restgpr_29
/* 8015F5FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015F600  7C 08 03 A6 */	mtlr r0
/* 8015F604  38 21 00 20 */	addi r1, r1, 0x20
/* 8015F608  4E 80 00 20 */	blr 
