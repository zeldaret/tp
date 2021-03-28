lbl_80B7C614:
/* 80B7C614  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B7C618  54 04 47 3E */	rlwinm r4, r0, 8, 0x1c, 0x1f
/* 80B7C61C  88 03 14 E8 */	lbz r0, 0x14e8(r3)
/* 80B7C620  28 00 00 00 */	cmplwi r0, 0
/* 80B7C624  41 82 00 0C */	beq lbl_80B7C630
/* 80B7C628  38 60 00 00 */	li r3, 0
/* 80B7C62C  4E 80 00 20 */	blr 
lbl_80B7C630:
/* 80B7C630  38 04 FF F1 */	addi r0, r4, -15
/* 80B7C634  30 00 FF FF */	addic r0, r0, -1
/* 80B7C638  7C 00 01 10 */	subfe r0, r0, r0
/* 80B7C63C  7C 83 00 78 */	andc r3, r4, r0
/* 80B7C640  4E 80 00 20 */	blr 
