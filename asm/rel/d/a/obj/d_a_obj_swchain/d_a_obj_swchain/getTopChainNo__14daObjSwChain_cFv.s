lbl_80CFB450:
/* 80CFB450  88 83 0A 64 */	lbz r4, 0xa64(r3)
/* 80CFB454  88 03 0A 65 */	lbz r0, 0xa65(r3)
/* 80CFB458  7C 64 00 50 */	subf r3, r4, r0
/* 80CFB45C  38 63 00 01 */	addi r3, r3, 1
/* 80CFB460  4E 80 00 20 */	blr 
