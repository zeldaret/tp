lbl_8034FC70:
/* 8034FC70  7C 08 02 A6 */	mflr r0
/* 8034FC74  90 01 00 04 */	stw r0, 4(r1)
/* 8034FC78  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034FC7C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034FC80  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034FC84  7C 7E 1B 78 */	mr r30, r3
/* 8034FC88  83 ED 92 FC */	lwz r31, __AID_Callback(r13)
/* 8034FC8C  4B FE DA 69 */	bl OSDisableInterrupts
/* 8034FC90  93 CD 92 FC */	stw r30, __AID_Callback(r13)
/* 8034FC94  4B FE DA 89 */	bl OSRestoreInterrupts
/* 8034FC98  7F E3 FB 78 */	mr r3, r31
/* 8034FC9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034FCA0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034FCA4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034FCA8  38 21 00 18 */	addi r1, r1, 0x18
/* 8034FCAC  7C 08 03 A6 */	mtlr r0
/* 8034FCB0  4E 80 00 20 */	blr 
