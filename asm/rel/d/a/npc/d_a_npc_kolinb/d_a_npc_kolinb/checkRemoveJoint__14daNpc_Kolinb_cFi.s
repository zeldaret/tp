lbl_80A4864C:
/* 80A4864C  88 03 0F B4 */	lbz r0, 0xfb4(r3)
/* 80A48650  28 00 00 02 */	cmplwi r0, 2
/* 80A48654  38 60 00 0B */	li r3, 0xb
/* 80A48658  40 82 00 08 */	bne lbl_80A48660
/* 80A4865C  38 60 00 0F */	li r3, 0xf
lbl_80A48660:
/* 80A48660  38 03 FF FF */	addi r0, r3, -1
/* 80A48664  7C 04 00 50 */	subf r0, r4, r0
/* 80A48668  7C 00 00 34 */	cntlzw r0, r0
/* 80A4866C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A48670  4E 80 00 20 */	blr 
