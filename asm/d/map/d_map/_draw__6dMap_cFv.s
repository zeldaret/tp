lbl_8002AB54:
/* 8002AB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002AB58  7C 08 02 A6 */	mflr r0
/* 8002AB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002AB60  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 8002AB64  2C 04 00 00 */	cmpwi r4, 0
/* 8002AB68  41 80 00 34 */	blt lbl_8002AB9C
/* 8002AB6C  88 03 00 8D */	lbz r0, 0x8d(r3)
/* 8002AB70  28 00 00 00 */	cmplwi r0, 0
/* 8002AB74  41 82 00 28 */	beq lbl_8002AB9C
/* 8002AB78  38 A0 00 00 */	li r5, 0
/* 8002AB7C  88 0D 88 E0 */	lbz r0, mNowStayFloorNoDecisionFlg__10dMapInfo_c(r13)
/* 8002AB80  28 00 00 00 */	cmplwi r0, 0
/* 8002AB84  41 82 00 08 */	beq lbl_8002AB8C
/* 8002AB88  88 AD 88 D8 */	lbz r5, mNowStayFloorNo__10dMapInfo_c(r13)
lbl_8002AB8C:
/* 8002AB8C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8002AB90  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 8002AB94  C0 63 00 58 */	lfs f3, 0x58(r3)
/* 8002AB98  48 01 51 71 */	bl entry__16renderingDAmap_cFfffiSc
lbl_8002AB9C:
/* 8002AB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002ABA0  7C 08 03 A6 */	mtlr r0
/* 8002ABA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002ABA8  4E 80 00 20 */	blr 
