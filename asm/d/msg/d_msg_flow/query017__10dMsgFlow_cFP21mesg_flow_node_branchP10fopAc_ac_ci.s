lbl_8024B664:
/* 8024B664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B668  7C 08 02 A6 */	mflr r0
/* 8024B66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B670  A0 64 00 04 */	lhz r3, 4(r4)
/* 8024B674  38 80 FF FF */	li r4, -1
/* 8024B678  28 05 00 00 */	cmplwi r5, 0
/* 8024B67C  41 82 00 10 */	beq lbl_8024B68C
/* 8024B680  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 8024B684  7C 00 07 74 */	extsb r0, r0
/* 8024B688  7C 04 03 78 */	mr r4, r0
lbl_8024B68C:
/* 8024B68C  4B DE 23 A5 */	bl dComIfGs_isZoneSwitch__Fii
/* 8024B690  7C 60 00 34 */	cntlzw r0, r3
/* 8024B694  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8024B698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B69C  7C 08 03 A6 */	mtlr r0
/* 8024B6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B6A4  4E 80 00 20 */	blr 
