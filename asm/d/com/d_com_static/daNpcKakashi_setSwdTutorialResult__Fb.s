lbl_80031754:
/* 80031754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031758  7C 08 02 A6 */	mflr r0
/* 8003175C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031760  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80031764  41 82 00 1C */	beq lbl_80031780
/* 80031768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003176C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80031770  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80031774  38 80 00 40 */	li r4, 0x40
/* 80031778  48 00 32 15 */	bl onEventBit__11dSv_event_cFUs
/* 8003177C  48 00 00 18 */	b lbl_80031794
lbl_80031780:
/* 80031780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80031784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80031788  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8003178C  38 80 00 40 */	li r4, 0x40
/* 80031790  48 00 32 15 */	bl offEventBit__11dSv_event_cFUs
lbl_80031794:
/* 80031794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031798  7C 08 03 A6 */	mtlr r0
/* 8003179C  38 21 00 10 */	addi r1, r1, 0x10
/* 800317A0  4E 80 00 20 */	blr 
