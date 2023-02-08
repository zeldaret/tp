lbl_802F3B8C:
/* 802F3B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3B90  7C 08 02 A6 */	mflr r0
/* 802F3B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3B98  81 04 00 04 */	lwz r8, 4(r4)
/* 802F3B9C  80 E4 00 08 */	lwz r7, 8(r4)
/* 802F3BA0  54 A0 08 3C */	slwi r0, r5, 1
/* 802F3BA4  7C 07 02 2E */	lhzx r0, r7, r0
/* 802F3BA8  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3BAC  7C A8 02 14 */	add r5, r8, r0
/* 802F3BB0  54 C0 08 3C */	slwi r0, r6, 1
/* 802F3BB4  7C A5 02 14 */	add r5, r5, r0
/* 802F3BB8  A0 05 00 9A */	lhz r0, 0x9a(r5)
/* 802F3BBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3BC0  41 82 00 18 */	beq lbl_802F3BD8
/* 802F3BC4  80 84 00 44 */	lwz r4, 0x44(r4)
/* 802F3BC8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F3BCC  7C 84 02 14 */	add r4, r4, r0
/* 802F3BD0  48 00 05 41 */	bl __ct__11J2DTevStageFRC15J2DTevStageInfo
/* 802F3BD4  48 00 00 08 */	b lbl_802F3BDC
lbl_802F3BD8:
/* 802F3BD8  4B FF DD 69 */	bl __ct__11J2DTevStageFv
lbl_802F3BDC:
/* 802F3BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3BE0  7C 08 03 A6 */	mtlr r0
/* 802F3BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3BE8  4E 80 00 20 */	blr 
