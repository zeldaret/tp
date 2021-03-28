lbl_8024C250:
/* 8024C250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C254  7C 08 02 A6 */	mflr r0
/* 8024C258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024C260  4B FD 24 F5 */	bl dMeter2Info_getNewLetterNum__Fv
/* 8024C264  7C 7F 1B 78 */	mr r31, r3
/* 8024C268  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024C26C  28 00 00 02 */	cmplwi r0, 2
/* 8024C270  40 81 00 08 */	ble lbl_8024C278
/* 8024C274  3B E0 00 02 */	li r31, 2
lbl_8024C278:
/* 8024C278  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8024C27C  28 00 00 01 */	cmplwi r0, 1
/* 8024C280  40 82 00 08 */	bne lbl_8024C288
/* 8024C284  4B FD 25 81 */	bl dMeter2Info_setNewLetterSender__Fv
lbl_8024C288:
/* 8024C288  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8024C28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024C290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C294  7C 08 03 A6 */	mtlr r0
/* 8024C298  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C29C  4E 80 00 20 */	blr 
