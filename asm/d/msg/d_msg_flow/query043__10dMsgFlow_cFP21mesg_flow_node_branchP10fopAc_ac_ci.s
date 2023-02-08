lbl_8024C0A8:
/* 8024C0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C0AC  7C 08 02 A6 */	mflr r0
/* 8024C0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024C0B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8024C0BC  A3 C4 00 04 */	lhz r30, 4(r4)
/* 8024C0C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C0C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C0C8  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024C0CC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024C0D0  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024C0D4  4B DE 89 31 */	bl getEventReg__11dSv_event_cCFUs
/* 8024C0D8  7C 64 1B 78 */	mr r4, r3
/* 8024C0DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C0E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C0E4  38 63 00 EC */	addi r3, r3, 0xec
/* 8024C0E8  38 04 FF FF */	addi r0, r4, -1
/* 8024C0EC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024C0F0  4B DE 7E 8D */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8024C0F4  7C 7F 1B 78 */	mr r31, r3
/* 8024C0F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C0FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C100  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8024C104  38 80 00 72 */	li r4, 0x72
/* 8024C108  4B DE 7F F1 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8024C10C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8024C110  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8024C114  7C 00 F2 14 */	add r0, r0, r30
/* 8024C118  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 8024C11C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024C120  7C 00 28 10 */	subfc r0, r0, r5
/* 8024C124  7C 04 19 14 */	adde r0, r4, r3
/* 8024C128  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024C12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024C130  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024C134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C138  7C 08 03 A6 */	mtlr r0
/* 8024C13C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C140  4E 80 00 20 */	blr 
