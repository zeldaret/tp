lbl_802645C0:
/* 802645C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802645C4  7C 08 02 A6 */	mflr r0
/* 802645C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802645CC  38 63 00 20 */	addi r3, r3, 0x20
/* 802645D0  38 84 00 20 */	addi r4, r4, 0x20
/* 802645D4  48 00 79 31 */	bl cM3d_Cross_SphTri__FPC8cM3dGSphPC8cM3dGTriP3Vec
/* 802645D8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802645DC  30 03 FF FF */	addic r0, r3, -1
/* 802645E0  7C 00 19 10 */	subfe r0, r0, r3
/* 802645E4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802645E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802645EC  7C 08 03 A6 */	mtlr r0
/* 802645F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802645F4  4E 80 00 20 */	blr 
