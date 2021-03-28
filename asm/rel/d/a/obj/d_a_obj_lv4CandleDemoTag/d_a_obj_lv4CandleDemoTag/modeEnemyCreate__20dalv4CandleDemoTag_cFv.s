lbl_80C5CE70:
/* 80C5CE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CE74  7C 08 02 A6 */	mflr r0
/* 80C5CE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CE80  7C 7F 1B 78 */	mr r31, r3
/* 80C5CE84  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C5CE88  7C 03 07 74 */	extsb r3, r0
/* 80C5CE8C  4B 3B FB 90 */	b fopAcM_myRoomSearchEnemy__FSc
/* 80C5CE90  28 03 00 00 */	cmplwi r3, 0
/* 80C5CE94  41 82 00 0C */	beq lbl_80C5CEA0
/* 80C5CE98  7F E3 FB 78 */	mr r3, r31
/* 80C5CE9C  48 00 00 19 */	bl init_modeNG__20dalv4CandleDemoTag_cFv
lbl_80C5CEA0:
/* 80C5CEA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CEA8  7C 08 03 A6 */	mtlr r0
/* 80C5CEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CEB0  4E 80 00 20 */	blr 
