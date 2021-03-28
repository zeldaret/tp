lbl_800B5C34:
/* 800B5C34  A0 83 30 F0 */	lhz r4, 0x30f0(r3)
/* 800B5C38  28 04 00 00 */	cmplwi r4, 0
/* 800B5C3C  40 82 00 1C */	bne lbl_800B5C58
/* 800B5C40  88 03 2F 8D */	lbz r0, 0x2f8d(r3)
/* 800B5C44  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B5C48  4D 82 00 20 */	beqlr 
/* 800B5C4C  38 00 00 41 */	li r0, 0x41
/* 800B5C50  B0 03 30 F0 */	sth r0, 0x30f0(r3)
/* 800B5C54  4E 80 00 20 */	blr 
lbl_800B5C58:
/* 800B5C58  38 04 FF FF */	addi r0, r4, -1
/* 800B5C5C  B0 03 30 F0 */	sth r0, 0x30f0(r3)
/* 800B5C60  4E 80 00 20 */	blr 
