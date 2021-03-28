lbl_80D5FF60:
/* 80D5FF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FF64  7C 08 02 A6 */	mflr r0
/* 80D5FF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FF6C  4B FF FC 91 */	bl execute__14daTagRmbitSw_cFv
/* 80D5FF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FF74  7C 08 03 A6 */	mtlr r0
/* 80D5FF78  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FF7C  4E 80 00 20 */	blr 
