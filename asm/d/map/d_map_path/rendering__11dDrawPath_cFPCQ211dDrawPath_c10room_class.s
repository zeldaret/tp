lbl_8003CC24:
/* 8003CC24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003CC28  7C 08 02 A6 */	mflr r0
/* 8003CC2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003CC30  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CC34  48 32 55 A5 */	bl _savegpr_28
/* 8003CC38  7C 7C 1B 78 */	mr r28, r3
/* 8003CC3C  7C 9D 23 79 */	or. r29, r4, r4
/* 8003CC40  41 82 00 6C */	beq lbl_8003CCAC
/* 8003CC44  38 60 00 09 */	li r3, 9
/* 8003CC48  80 9D 00 08 */	lwz r4, 8(r29)
/* 8003CC4C  38 A0 00 08 */	li r5, 8
/* 8003CC50  48 31 EE D9 */	bl GXSetArray
/* 8003CC54  83 FD 00 04 */	lwz r31, 4(r29)
/* 8003CC58  28 1F 00 00 */	cmplwi r31, 0
/* 8003CC5C  41 82 00 50 */	beq lbl_8003CCAC
/* 8003CC60  3B C0 00 00 */	li r30, 0
/* 8003CC64  48 00 00 3C */	b lbl_8003CCA0
lbl_8003CC68:
/* 8003CC68  7F 83 E3 78 */	mr r3, r28
/* 8003CC6C  88 9F 00 00 */	lbz r4, 0(r31)
/* 8003CC70  7C 84 07 74 */	extsb r4, r4
/* 8003CC74  81 9C 00 00 */	lwz r12, 0(r28)
/* 8003CC78  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8003CC7C  7D 89 03 A6 */	mtctr r12
/* 8003CC80  4E 80 04 21 */	bctrl 
/* 8003CC84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003CC88  41 82 00 10 */	beq lbl_8003CC98
/* 8003CC8C  7F 83 E3 78 */	mr r3, r28
/* 8003CC90  7F E4 FB 78 */	mr r4, r31
/* 8003CC94  4B FF FF 29 */	bl rendering__11dDrawPath_cFPCQ211dDrawPath_c11floor_class
lbl_8003CC98:
/* 8003CC98  3B FF 00 08 */	addi r31, r31, 8
/* 8003CC9C  3B DE 00 01 */	addi r30, r30, 1
lbl_8003CCA0:
/* 8003CCA0  88 1D 00 00 */	lbz r0, 0(r29)
/* 8003CCA4  7C 1E 00 00 */	cmpw r30, r0
/* 8003CCA8  41 80 FF C0 */	blt lbl_8003CC68
lbl_8003CCAC:
/* 8003CCAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CCB0  48 32 55 75 */	bl _restgpr_28
/* 8003CCB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003CCB8  7C 08 03 A6 */	mtlr r0
/* 8003CCBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003CCC0  4E 80 00 20 */	blr 
