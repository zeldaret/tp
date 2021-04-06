lbl_80296868:
/* 80296868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029686C  7C 08 02 A6 */	mflr r0
/* 80296870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296878  7C 7F 1B 78 */	mr r31, r3
/* 8029687C  3C 60 80 29 */	lis r3, channelProcCallback__13JASAramStreamFPv@ha /* 0x80296D74@ha */
/* 80296880  38 63 6D 74 */	addi r3, r3, channelProcCallback__13JASAramStreamFPv@l /* 0x80296D74@l */
/* 80296884  7F E4 FB 78 */	mr r4, r31
/* 80296888  48 00 79 3D */	bl rejectCallback__9JASDriverFPFPv_lPv
/* 8029688C  81 9F 01 50 */	lwz r12, 0x150(r31)
/* 80296890  28 0C 00 00 */	cmplwi r12, 0
/* 80296894  41 82 00 20 */	beq lbl_802968B4
/* 80296898  38 60 00 00 */	li r3, 0
/* 8029689C  7F E4 FB 78 */	mr r4, r31
/* 802968A0  80 BF 01 54 */	lwz r5, 0x154(r31)
/* 802968A4  7D 89 03 A6 */	mtctr r12
/* 802968A8  4E 80 04 21 */	bctrl 
/* 802968AC  38 00 00 00 */	li r0, 0
/* 802968B0  90 1F 01 50 */	stw r0, 0x150(r31)
lbl_802968B4:
/* 802968B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802968B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802968BC  7C 08 03 A6 */	mtlr r0
/* 802968C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802968C4  4E 80 00 20 */	blr 
