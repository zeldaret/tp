lbl_800473FC:
/* 800473FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047400  7C 08 02 A6 */	mflr r0
/* 80047404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004740C  7C 7F 1B 78 */	mr r31, r3
/* 80047410  A8 83 01 AA */	lha r4, 0x1aa(r3)
/* 80047414  48 00 00 A9 */	bl getEventData__16dEvent_manager_cFs
/* 80047418  28 03 00 00 */	cmplwi r3, 0
/* 8004741C  41 82 00 24 */	beq lbl_80047440
/* 80047420  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 80047424  2C 00 00 01 */	cmpwi r0, 1
/* 80047428  40 82 00 18 */	bne lbl_80047440
/* 8004742C  80 1F 01 B4 */	lwz r0, 0x1b4(r31)
/* 80047430  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80047434  7C 9F 02 14 */	add r4, r31, r0
/* 80047438  80 84 00 08 */	lwz r4, 8(r4)
/* 8004743C  4B FF CB 35 */	bl specialStaffProc__12dEvDtEvent_cFP12dEvDtStaff_c
lbl_80047440:
/* 80047440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80047444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047448  7C 08 03 A6 */	mtlr r0
/* 8004744C  38 21 00 10 */	addi r1, r1, 0x10
/* 80047450  4E 80 00 20 */	blr 
