lbl_8002E5C0:
/* 8002E5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E5C4  7C 08 02 A6 */	mflr r0
/* 8002E5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E5CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002E5D0  7C 7F 1B 78 */	mr r31, r3
/* 8002E5D4  4B FF F9 49 */	bl dComIfGp_getSelectItem__Fi
/* 8002E5D8  38 80 00 00 */	li r4, 0
/* 8002E5DC  38 03 FF 90 */	addi r0, r3, -112
/* 8002E5E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8002E5E4  28 00 00 02 */	cmplwi r0, 2
/* 8002E5E8  40 81 00 10 */	ble lbl_8002E5F8
/* 8002E5EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002E5F0  28 00 00 59 */	cmplwi r0, 0x59
/* 8002E5F4  40 82 00 2C */	bne lbl_8002E620
lbl_8002E5F8:
/* 8002E5F8  7F E3 FB 78 */	mr r3, r31
/* 8002E5FC  4B FF F7 41 */	bl dComIfGs_getSelectMixItemNoArrowIndex__Fi
/* 8002E600  38 03 FF F1 */	addi r0, r3, -15
/* 8002E604  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8002E608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E60C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E610  38 63 00 EC */	addi r3, r3, 0xec
/* 8002E614  48 00 59 69 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8002E618  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8002E61C  48 00 00 54 */	b lbl_8002E670
lbl_8002E620:
/* 8002E620  28 00 00 4B */	cmplwi r0, 0x4b
/* 8002E624  40 82 00 14 */	bne lbl_8002E638
/* 8002E628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E62C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E630  88 83 00 F4 */	lbz r4, 0xf4(r3)
/* 8002E634  48 00 00 3C */	b lbl_8002E670
lbl_8002E638:
/* 8002E638  28 00 00 76 */	cmplwi r0, 0x76
/* 8002E63C  40 82 00 34 */	bne lbl_8002E670
/* 8002E640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E648  7F E4 FB 78 */	mr r4, r31
/* 8002E64C  48 00 44 11 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002E650  7C 64 1B 78 */	mr r4, r3
/* 8002E654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E65C  38 63 00 EC */	addi r3, r3, 0xec
/* 8002E660  38 04 FF F5 */	addi r0, r4, -11
/* 8002E664  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8002E668  48 00 59 C9 */	bl getBottleNum__24dSv_player_item_record_cCFUc
/* 8002E66C  54 64 06 3E */	clrlwi r4, r3, 0x18
lbl_8002E670:
/* 8002E670  7C 83 23 78 */	mr r3, r4
/* 8002E674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002E678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E67C  7C 08 03 A6 */	mtlr r0
/* 8002E680  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E684  4E 80 00 20 */	blr 
