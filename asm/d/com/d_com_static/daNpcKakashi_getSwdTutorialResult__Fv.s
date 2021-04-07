lbl_80031718:
/* 80031718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003171C  7C 08 02 A6 */	mflr r0
/* 80031720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031724  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80031728  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003172C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80031730  38 80 00 40 */	li r4, 0x40
/* 80031734  48 00 32 89 */	bl isEventBit__11dSv_event_cCFUs
/* 80031738  30 03 FF FF */	addic r0, r3, -1
/* 8003173C  7C 00 19 10 */	subfe r0, r0, r3
/* 80031740  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80031744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031748  7C 08 03 A6 */	mtlr r0
/* 8003174C  38 21 00 10 */	addi r1, r1, 0x10
/* 80031750  4E 80 00 20 */	blr 
