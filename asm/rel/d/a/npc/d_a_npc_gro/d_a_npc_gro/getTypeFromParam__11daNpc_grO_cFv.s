lbl_809DC3DC:
/* 809DC3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DC3E0  7C 08 02 A6 */	mflr r0
/* 809DC3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DC3E8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809DC3EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809DC3F0  2C 00 00 01 */	cmpwi r0, 1
/* 809DC3F4  41 82 00 1C */	beq lbl_809DC410
/* 809DC3F8  40 80 00 30 */	bge lbl_809DC428
/* 809DC3FC  2C 00 00 00 */	cmpwi r0, 0
/* 809DC400  40 80 00 08 */	bge lbl_809DC408
/* 809DC404  48 00 00 24 */	b lbl_809DC428
lbl_809DC408:
/* 809DC408  38 60 00 00 */	li r3, 0
/* 809DC40C  48 00 00 20 */	b lbl_809DC42C
lbl_809DC410:
/* 809DC410  38 60 00 6D */	li r3, 0x6d
/* 809DC414  4B 77 92 21 */	bl daNpcF_chkEvtBit__FUl
/* 809DC418  30 03 FF FF */	addic r0, r3, -1
/* 809DC41C  7C 60 19 10 */	subfe r3, r0, r3
/* 809DC420  38 63 00 01 */	addi r3, r3, 1
/* 809DC424  48 00 00 08 */	b lbl_809DC42C
lbl_809DC428:
/* 809DC428  38 60 00 00 */	li r3, 0
lbl_809DC42C:
/* 809DC42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DC430  7C 08 03 A6 */	mtlr r0
/* 809DC434  38 21 00 10 */	addi r1, r1, 0x10
/* 809DC438  4E 80 00 20 */	blr 
