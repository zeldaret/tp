lbl_8002E688:
/* 8002E688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E68C  7C 08 02 A6 */	mflr r0
/* 8002E690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E694  4B FF F8 89 */	bl dComIfGp_getSelectItem__Fi
/* 8002E698  7C 64 1B 78 */	mr r4, r3
/* 8002E69C  38 60 00 00 */	li r3, 0
/* 8002E6A0  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8002E6A4  28 05 00 50 */	cmplwi r5, 0x50
/* 8002E6A8  40 82 00 0C */	bne lbl_8002E6B4
/* 8002E6AC  38 60 00 01 */	li r3, 1
/* 8002E6B0  48 00 00 54 */	b lbl_8002E704
lbl_8002E6B4:
/* 8002E6B4  38 04 FF 90 */	addi r0, r4, -112
/* 8002E6B8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8002E6BC  28 00 00 02 */	cmplwi r0, 2
/* 8002E6C0  40 81 00 0C */	ble lbl_8002E6CC
/* 8002E6C4  28 05 00 59 */	cmplwi r5, 0x59
/* 8002E6C8  40 82 00 1C */	bne lbl_8002E6E4
lbl_8002E6CC:
/* 8002E6CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002E6D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002E6D4  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8002E6D8  48 00 5A 21 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8002E6DC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8002E6E0  48 00 00 24 */	b lbl_8002E704
lbl_8002E6E4:
/* 8002E6E4  28 05 00 4B */	cmplwi r5, 0x4b
/* 8002E6E8  40 82 00 0C */	bne lbl_8002E6F4
/* 8002E6EC  38 60 00 32 */	li r3, 0x32
/* 8002E6F0  48 00 00 14 */	b lbl_8002E704
lbl_8002E6F4:
/* 8002E6F4  28 05 00 76 */	cmplwi r5, 0x76
/* 8002E6F8  40 82 00 0C */	bne lbl_8002E704
/* 8002E6FC  4B FF FE BD */	bl dComIfGs_getBottleMax__Fv
/* 8002E700  54 63 06 3E */	clrlwi r3, r3, 0x18
lbl_8002E704:
/* 8002E704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E708  7C 08 03 A6 */	mtlr r0
/* 8002E70C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E710  4E 80 00 20 */	blr 
