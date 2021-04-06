lbl_802736DC:
/* 802736DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802736E0  7C 08 02 A6 */	mflr r0
/* 802736E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802736E8  3C 60 80 43 */	lis r3, sList__8JFWAlarm@ha /* 0x80430FE4@ha */
/* 802736EC  38 63 0F E4 */	addi r3, r3, sList__8JFWAlarm@l /* 0x80430FE4@l */
/* 802736F0  38 80 00 00 */	li r4, 0
/* 802736F4  48 06 87 81 */	bl __ct__10JSUPtrListFb
/* 802736F8  3C 60 80 43 */	lis r3, sList__8JFWAlarm@ha /* 0x80430FE4@ha */
/* 802736FC  38 63 0F E4 */	addi r3, r3, sList__8JFWAlarm@l /* 0x80430FE4@l */
/* 80273700  3C 80 80 27 */	lis r4, func_80273724@ha /* 0x80273724@ha */
/* 80273704  38 84 37 24 */	addi r4, r4, func_80273724@l /* 0x80273724@l */
/* 80273708  3C A0 80 43 */	lis r5, lit_2184@ha /* 0x80430FD8@ha */
/* 8027370C  38 A5 0F D8 */	addi r5, r5, lit_2184@l /* 0x80430FD8@l */
/* 80273710  48 0E E5 15 */	bl __register_global_object
/* 80273714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80273718  7C 08 03 A6 */	mtlr r0
/* 8027371C  38 21 00 10 */	addi r1, r1, 0x10
/* 80273720  4E 80 00 20 */	blr 
