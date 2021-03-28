lbl_800474BC:
/* 800474BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800474C0  7C 08 02 A6 */	mflr r0
/* 800474C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800474C8  7C 86 07 34 */	extsh r6, r4
/* 800474CC  2C 06 FF FF */	cmpwi r6, -1
/* 800474D0  40 82 00 0C */	bne lbl_800474DC
/* 800474D4  38 60 00 00 */	li r3, 0
/* 800474D8  48 00 00 2C */	b lbl_80047504
lbl_800474DC:
/* 800474DC  38 06 00 01 */	addi r0, r6, 1
/* 800474E0  30 00 FF FF */	addic r0, r0, -1
/* 800474E4  7C A0 01 10 */	subfe r5, r0, r0
/* 800474E8  7C C0 46 70 */	srawi r0, r6, 8
/* 800474EC  7C 05 28 78 */	andc r5, r0, r5
/* 800474F0  38 00 FF FF */	li r0, -1
/* 800474F4  41 82 00 08 */	beq lbl_800474FC
/* 800474F8  54 80 06 3E */	clrlwi r0, r4, 0x18
lbl_800474FC:
/* 800474FC  7C 04 03 78 */	mr r4, r0
/* 80047500  4B FF FF 55 */	bl getEventData__16dEvent_manager_cFsi
lbl_80047504:
/* 80047504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047508  7C 08 03 A6 */	mtlr r0
/* 8004750C  38 21 00 10 */	addi r1, r1, 0x10
/* 80047510  4E 80 00 20 */	blr 
