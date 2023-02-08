lbl_80296DF0:
/* 80296DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296DF4  7C 08 02 A6 */	mflr r0
/* 80296DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296DFC  7C 68 1B 78 */	mr r8, r3
/* 80296E00  7C 87 23 78 */	mr r7, r4
/* 80296E04  7C A0 2B 78 */	mr r0, r5
/* 80296E08  7C C3 33 78 */	mr r3, r6
/* 80296E0C  7D 04 43 78 */	mr r4, r8
/* 80296E10  7C E5 3B 78 */	mr r5, r7
/* 80296E14  7C 06 03 78 */	mr r6, r0
/* 80296E18  48 00 00 15 */	bl updateChannel__13JASAramStreamFUlP10JASChannelPQ26JASDsp8TChannel
/* 80296E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296E20  7C 08 03 A6 */	mtlr r0
/* 80296E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80296E28  4E 80 00 20 */	blr 
