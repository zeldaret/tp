lbl_800479F8:
/* 800479F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800479FC  7C 08 02 A6 */	mflr r0
/* 80047A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047A04  4B FF FA B9 */	bl getEventData__16dEvent_manager_cFs
/* 80047A08  28 03 00 00 */	cmplwi r3, 0
/* 80047A0C  40 82 00 0C */	bne lbl_80047A18
/* 80047A10  38 60 00 00 */	li r3, 0
/* 80047A14  48 00 00 14 */	b lbl_80047A28
lbl_80047A18:
/* 80047A18  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 80047A1C  20 00 00 01 */	subfic r0, r0, 1
/* 80047A20  7C 00 00 34 */	cntlzw r0, r0
/* 80047A24  54 03 D9 7E */	srwi r3, r0, 5
lbl_80047A28:
/* 80047A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047A2C  7C 08 03 A6 */	mtlr r0
/* 80047A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80047A34  4E 80 00 20 */	blr 
