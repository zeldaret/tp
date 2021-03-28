lbl_802D35F4:
/* 802D35F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D35F8  7C 08 02 A6 */	mflr r0
/* 802D35FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3600  48 00 02 CD */	bl startDMA__12JKRAramPieceFP12JKRAMCommand
/* 802D3604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3608  7C 08 03 A6 */	mtlr r0
/* 802D360C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3610  4E 80 00 20 */	blr 
