lbl_8027EDD4:
/* 8027EDD4  80 83 00 E8 */	lwz r4, 0xe8(r3)
/* 8027EDD8  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8027EDDC  80 84 00 00 */	lwz r4, 0(r4)
/* 8027EDE0  A8 04 00 70 */	lha r0, 0x70(r4)
/* 8027EDE4  A8 83 01 04 */	lha r4, 0x104(r3)
/* 8027EDE8  7C 04 00 00 */	cmpw r4, r0
/* 8027EDEC  41 80 00 0C */	blt lbl_8027EDF8
/* 8027EDF0  38 60 00 01 */	li r3, 1
/* 8027EDF4  4E 80 00 20 */	blr 
lbl_8027EDF8:
/* 8027EDF8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027EDFC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8027EE00  40 82 00 0C */	bne lbl_8027EE0C
/* 8027EE04  38 04 00 01 */	addi r0, r4, 1
/* 8027EE08  B0 03 01 04 */	sth r0, 0x104(r3)
lbl_8027EE0C:
/* 8027EE0C  38 60 00 00 */	li r3, 0
/* 8027EE10  4E 80 00 20 */	blr 
