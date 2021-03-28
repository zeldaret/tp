lbl_802CD888:
/* 802CD888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD88C  7C 08 02 A6 */	mflr r0
/* 802CD890  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD894  28 04 00 02 */	cmplwi r4, 2
/* 802CD898  41 81 00 0C */	bgt lbl_802CD8A4
/* 802CD89C  7C 83 23 78 */	mr r3, r4
/* 802CD8A0  4B FD 08 D9 */	bl setOutputMode__9JASDriverFUl
lbl_802CD8A4:
/* 802CD8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD8A8  7C 08 03 A6 */	mtlr r0
/* 802CD8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD8B0  4E 80 00 20 */	blr 
