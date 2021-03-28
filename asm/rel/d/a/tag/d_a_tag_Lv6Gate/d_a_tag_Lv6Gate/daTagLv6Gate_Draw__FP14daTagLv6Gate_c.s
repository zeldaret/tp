lbl_80D5068C:
/* 80D5068C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50690  7C 08 02 A6 */	mflr r0
/* 80D50694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D50698  48 00 00 15 */	bl draw__14daTagLv6Gate_cFv
/* 80D5069C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D506A0  7C 08 03 A6 */	mtlr r0
/* 80D506A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D506A8  4E 80 00 20 */	blr 
