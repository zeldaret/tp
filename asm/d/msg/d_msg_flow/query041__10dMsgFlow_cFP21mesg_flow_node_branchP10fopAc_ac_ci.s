lbl_8024BF50:
/* 8024BF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BF54  7C 08 02 A6 */	mflr r0
/* 8024BF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024BF60  93 C1 00 08 */	stw r30, 8(r1)
/* 8024BF64  A3 C4 00 04 */	lhz r30, 4(r4)
/* 8024BF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BF70  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024BF74  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024BF78  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024BF7C  4B DE 8A 89 */	bl getEventReg__11dSv_event_cCFUs
/* 8024BF80  7C 64 1B 78 */	mr r4, r3
/* 8024BF84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BF88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BF8C  38 63 00 EC */	addi r3, r3, 0xec
/* 8024BF90  38 04 FF FF */	addi r0, r4, -1
/* 8024BF94  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024BF98  4B DE 7F E5 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8024BF9C  7C 7F 1B 78 */	mr r31, r3
/* 8024BFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BFA8  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024BFAC  38 80 00 71 */	li r4, 0x71
/* 8024BFB0  4B DE 81 49 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024BFB4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8024BFB8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8024BFBC  7C 00 F2 14 */	add r0, r0, r30
/* 8024BFC0  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 8024BFC4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024BFC8  7C 00 28 10 */	subfc r0, r0, r5
/* 8024BFCC  7C 04 19 14 */	adde r0, r4, r3
/* 8024BFD0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024BFD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024BFD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024BFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BFE0  7C 08 03 A6 */	mtlr r0
/* 8024BFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BFE8  4E 80 00 20 */	blr 
