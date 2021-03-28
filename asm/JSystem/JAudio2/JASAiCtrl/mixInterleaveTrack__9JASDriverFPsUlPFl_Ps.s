lbl_8029CC50:
/* 8029CC50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029CC54  7C 08 02 A6 */	mflr r0
/* 8029CC58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029CC5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029CC60  48 0C 55 7D */	bl _savegpr_29
/* 8029CC64  7C 7E 1B 78 */	mr r30, r3
/* 8029CC68  7C 9D 23 78 */	mr r29, r4
/* 8029CC6C  7F A3 EB 78 */	mr r3, r29
/* 8029CC70  7C AC 2B 78 */	mr r12, r5
/* 8029CC74  7D 89 03 A6 */	mtctr r12
/* 8029CC78  4E 80 04 21 */	bctrl 
/* 8029CC7C  28 03 00 00 */	cmplwi r3, 0
/* 8029CC80  41 82 00 3C */	beq lbl_8029CCBC
/* 8029CC84  7F DF F3 78 */	mr r31, r30
/* 8029CC88  7C 7E 1B 78 */	mr r30, r3
/* 8029CC8C  57 BD 08 3C */	slwi r29, r29, 1
/* 8029CC90  48 00 00 24 */	b lbl_8029CCB4
lbl_8029CC94:
/* 8029CC94  A8 7F 00 00 */	lha r3, 0(r31)
/* 8029CC98  A8 1E 00 00 */	lha r0, 0(r30)
/* 8029CC9C  7C 63 02 14 */	add r3, r3, r0
/* 8029CCA0  4B FF 29 FD */	bl func_8028F69C
/* 8029CCA4  B0 7F 00 00 */	sth r3, 0(r31)
/* 8029CCA8  3B FF 00 02 */	addi r31, r31, 2
/* 8029CCAC  3B DE 00 02 */	addi r30, r30, 2
/* 8029CCB0  3B BD FF FF */	addi r29, r29, -1
lbl_8029CCB4:
/* 8029CCB4  28 1D 00 00 */	cmplwi r29, 0
/* 8029CCB8  40 82 FF DC */	bne lbl_8029CC94
lbl_8029CCBC:
/* 8029CCBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8029CCC0  48 0C 55 69 */	bl _restgpr_29
/* 8029CCC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029CCC8  7C 08 03 A6 */	mtlr r0
/* 8029CCCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029CCD0  4E 80 00 20 */	blr 
