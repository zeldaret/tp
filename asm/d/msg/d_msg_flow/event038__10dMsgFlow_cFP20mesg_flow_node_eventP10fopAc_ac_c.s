lbl_8024D918:
/* 8024D918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D91C  7C 08 02 A6 */	mflr r0
/* 8024D920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D924  4B FD 0F B9 */	bl dMeter2Info_recieveLetter__Fv
/* 8024D928  38 60 00 01 */	li r3, 1
/* 8024D92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D930  7C 08 03 A6 */	mtlr r0
/* 8024D934  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D938  4E 80 00 20 */	blr 
