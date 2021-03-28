lbl_8024B6EC:
/* 8024B6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B6F0  7C 08 02 A6 */	mflr r0
/* 8024B6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B6F8  A0 64 00 04 */	lhz r3, 4(r4)
/* 8024B6FC  38 80 FF FF */	li r4, -1
/* 8024B700  28 05 00 00 */	cmplwi r5, 0
/* 8024B704  41 82 00 10 */	beq lbl_8024B714
/* 8024B708  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 8024B70C  7C 00 07 74 */	extsb r0, r0
/* 8024B710  7C 04 03 78 */	mr r4, r0
lbl_8024B714:
/* 8024B714  4B DE 24 51 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 8024B718  7C 60 00 34 */	cntlzw r0, r3
/* 8024B71C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8024B720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B724  7C 08 03 A6 */	mtlr r0
/* 8024B728  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B72C  4E 80 00 20 */	blr 
