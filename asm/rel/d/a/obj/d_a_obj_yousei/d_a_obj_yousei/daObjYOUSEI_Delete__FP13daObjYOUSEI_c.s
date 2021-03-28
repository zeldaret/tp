lbl_804CE8FC:
/* 804CE8FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE900  7C 08 02 A6 */	mflr r0
/* 804CE904  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE908  48 00 26 91 */	bl Delete__13daObjYOUSEI_cFv
/* 804CE90C  38 60 00 01 */	li r3, 1
/* 804CE910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE914  7C 08 03 A6 */	mtlr r0
/* 804CE918  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE91C  4E 80 00 20 */	blr 
