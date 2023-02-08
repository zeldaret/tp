lbl_80292F6C:
/* 80292F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80292F70  7C 08 02 A6 */	mflr r0
/* 80292F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292F78  48 00 00 A5 */	bl seqMain__Q28JASTrack5TListFv
/* 80292F7C  38 60 00 00 */	li r3, 0
/* 80292F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80292F84  7C 08 03 A6 */	mtlr r0
/* 80292F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80292F8C  4E 80 00 20 */	blr 
