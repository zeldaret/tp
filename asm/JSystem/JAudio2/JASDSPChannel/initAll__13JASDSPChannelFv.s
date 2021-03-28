lbl_8029D3C8:
/* 8029D3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D3CC  7C 08 02 A6 */	mflr r0
/* 8029D3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D3D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D3D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8029D3DC  38 60 07 10 */	li r3, 0x710
/* 8029D3E0  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8029D3E4  38 A0 00 20 */	li r5, 0x20
/* 8029D3E8  48 03 19 29 */	bl __nwa__FUlP7JKRHeapi
/* 8029D3EC  3C 80 80 2A */	lis r4, __ct__13JASDSPChannelFv@ha
/* 8029D3F0  38 84 D2 F4 */	addi r4, r4, __ct__13JASDSPChannelFv@l
/* 8029D3F4  38 A0 00 00 */	li r5, 0
/* 8029D3F8  38 C0 00 1C */	li r6, 0x1c
/* 8029D3FC  38 E0 00 40 */	li r7, 0x40
/* 8029D400  48 0C 4B 15 */	bl __construct_new_array
/* 8029D404  90 6D 8D 60 */	stw r3, sDspChannels__13JASDSPChannel(r13)
/* 8029D408  3B C0 00 00 */	li r30, 0
/* 8029D40C  3B E0 00 00 */	li r31, 0
lbl_8029D410:
/* 8029D410  7F C3 F3 78 */	mr r3, r30
/* 8029D414  48 00 06 25 */	bl getDSPHandle__6JASDspFi
/* 8029D418  80 8D 8D 60 */	lwz r4, sDspChannels__13JASDSPChannel(r13)
/* 8029D41C  38 1F 00 18 */	addi r0, r31, 0x18
/* 8029D420  7C 64 01 2E */	stwx r3, r4, r0
/* 8029D424  3B DE 00 01 */	addi r30, r30, 1
/* 8029D428  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8029D42C  3B FF 00 1C */	addi r31, r31, 0x1c
/* 8029D430  41 80 FF E0 */	blt lbl_8029D410
/* 8029D434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D438  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029D43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D440  7C 08 03 A6 */	mtlr r0
/* 8029D444  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D448  4E 80 00 20 */	blr 
