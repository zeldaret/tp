lbl_8003AB30:
/* 8003AB30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003AB34  7C 08 02 A6 */	mflr r0
/* 8003AB38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003AB3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003AB40  48 32 76 95 */	bl _savegpr_27
/* 8003AB44  7C 7B 1B 78 */	mr r27, r3
/* 8003AB48  3B 80 00 00 */	li r28, 0
/* 8003AB4C  48 00 00 A8 */	b lbl_8003ABF4
lbl_8003AB50:
/* 8003AB50  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 8003AB54  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8003AB58  7F E3 00 2E */	lwzx r31, r3, r0
/* 8003AB5C  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 8003AB60  7F C3 F3 78 */	mr r3, r30
/* 8003AB64  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AB68  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 8003AB6C  7D 89 03 A6 */	mtctr r12
/* 8003AB70  4E 80 04 21 */	bctrl 
/* 8003AB74  7C 60 1B 78 */	mr r0, r3
/* 8003AB78  7F C3 F3 78 */	mr r3, r30
/* 8003AB7C  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8003AB80  38 9D FF FF */	addi r4, r29, -1
/* 8003AB84  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AB88  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8003AB8C  7D 89 03 A6 */	mtctr r12
/* 8003AB90  4E 80 04 21 */	bctrl 
/* 8003AB94  88 03 00 01 */	lbz r0, 1(r3)
/* 8003AB98  28 00 00 03 */	cmplwi r0, 3
/* 8003AB9C  41 82 00 68 */	beq lbl_8003AC04
/* 8003ABA0  7F C3 F3 78 */	mr r3, r30
/* 8003ABA4  38 1D 00 01 */	addi r0, r29, 1
/* 8003ABA8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8003ABAC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003ABB0  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8003ABB4  7D 89 03 A6 */	mtctr r12
/* 8003ABB8  4E 80 04 21 */	bctrl 
/* 8003ABBC  83 DF 00 28 */	lwz r30, 0x28(r31)
/* 8003ABC0  7F C3 F3 78 */	mr r3, r30
/* 8003ABC4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003ABC8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8003ABCC  7D 89 03 A6 */	mtctr r12
/* 8003ABD0  4E 80 04 21 */	bctrl 
/* 8003ABD4  7C 64 1B 78 */	mr r4, r3
/* 8003ABD8  7F C3 F3 78 */	mr r3, r30
/* 8003ABDC  38 84 00 01 */	addi r4, r4, 1
/* 8003ABE0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003ABE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8003ABE8  7D 89 03 A6 */	mtctr r12
/* 8003ABEC  4E 80 04 21 */	bctrl 
/* 8003ABF0  3B 9C 00 01 */	addi r28, r28, 1
lbl_8003ABF4:
/* 8003ABF4  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8003ABF8  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 8003ABFC  7C 03 00 40 */	cmplw r3, r0
/* 8003AC00  41 80 FF 50 */	blt lbl_8003AB50
lbl_8003AC04:
/* 8003AC04  39 61 00 20 */	addi r11, r1, 0x20
/* 8003AC08  48 32 76 19 */	bl _restgpr_27
/* 8003AC0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003AC10  7C 08 03 A6 */	mtlr r0
/* 8003AC14  38 21 00 20 */	addi r1, r1, 0x20
/* 8003AC18  4E 80 00 20 */	blr 
