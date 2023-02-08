lbl_8021BC24:
/* 8021BC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021BC28  7C 08 02 A6 */	mflr r0
/* 8021BC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021BC30  4B F6 5A 11 */	bl dCam_getBody__Fv
/* 8021BC34  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8021BC38  20 00 00 04 */	subfic r0, r0, 4
/* 8021BC3C  7C 00 00 34 */	cntlzw r0, r0
/* 8021BC40  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8021BC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021BC48  7C 08 03 A6 */	mtlr r0
/* 8021BC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8021BC50  4E 80 00 20 */	blr 
