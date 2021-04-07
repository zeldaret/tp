lbl_8063E6F8:
/* 8063E6F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E6FC  7C 08 02 A6 */	mflr r0
/* 8063E700  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E704  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E708  4B D2 3A D5 */	bl _savegpr_29
/* 8063E70C  7C 7D 1B 78 */	mr r29, r3
/* 8063E710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063E714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063E718  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8063E71C  3B C0 00 00 */	li r30, 0
/* 8063E720  80 7D 0C 50 */	lwz r3, 0xc50(r29)
/* 8063E724  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8063E728  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8063E72C  41 82 00 4C */	beq lbl_8063E778
/* 8063E730  4B B2 0C 69 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 8063E734  2C 03 00 00 */	cmpwi r3, 0
/* 8063E738  41 82 00 40 */	beq lbl_8063E778
/* 8063E73C  80 7D 0C 50 */	lwz r3, 0xc50(r29)
/* 8063E740  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8063E744  28 00 00 04 */	cmplwi r0, 4
/* 8063E748  41 80 00 0C */	blt lbl_8063E754
/* 8063E74C  3B C0 00 01 */	li r30, 1
/* 8063E750  48 00 00 28 */	b lbl_8063E778
lbl_8063E754:
/* 8063E754  A0 1F 05 6E */	lhz r0, 0x56e(r31)
/* 8063E758  28 00 00 00 */	cmplwi r0, 0
/* 8063E75C  41 82 00 0C */	beq lbl_8063E768
/* 8063E760  3B C0 00 01 */	li r30, 1
/* 8063E764  48 00 00 14 */	b lbl_8063E778
lbl_8063E768:
/* 8063E768  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 8063E76C  28 00 00 04 */	cmplwi r0, 4
/* 8063E770  41 80 00 08 */	blt lbl_8063E778
/* 8063E774  3B C0 00 01 */	li r30, 1
lbl_8063E778:
/* 8063E778  30 1E FF FF */	addic r0, r30, -1
/* 8063E77C  7C 00 F1 10 */	subfe r0, r0, r30
/* 8063E780  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8063E784  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E788  4B D2 3A A1 */	bl _restgpr_29
/* 8063E78C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E790  7C 08 03 A6 */	mtlr r0
/* 8063E794  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E798  4E 80 00 20 */	blr 
