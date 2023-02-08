lbl_80CFEB78:
/* 80CFEB78  80 05 04 9C */	lwz r0, 0x49c(r5)
/* 80CFEB7C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80CFEB80  4D 82 00 20 */	beqlr 
/* 80CFEB84  88 05 04 9A */	lbz r0, 0x49a(r5)
/* 80CFEB88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CFEB8C  41 82 00 10 */	beq lbl_80CFEB9C
/* 80CFEB90  38 00 00 02 */	li r0, 2
/* 80CFEB94  98 04 05 D4 */	stb r0, 0x5d4(r4)
/* 80CFEB98  48 00 00 0C */	b lbl_80CFEBA4
lbl_80CFEB9C:
/* 80CFEB9C  38 00 00 01 */	li r0, 1
/* 80CFEBA0  98 04 05 D4 */	stb r0, 0x5d4(r4)
lbl_80CFEBA4:
/* 80CFEBA4  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80CFEBA8  20 00 00 FD */	subfic r0, r0, 0xfd
/* 80CFEBAC  7C 00 00 34 */	cntlzw r0, r0
/* 80CFEBB0  54 03 D9 7E */	srwi r3, r0, 5
/* 80CFEBB4  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80CFEBB8  41 82 00 0C */	beq lbl_80CFEBC4
/* 80CFEBBC  38 00 00 04 */	li r0, 4
/* 80CFEBC0  98 04 05 D3 */	stb r0, 0x5d3(r4)
lbl_80CFEBC4:
/* 80CFEBC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFEBC8  4D 82 00 20 */	beqlr 
/* 80CFEBCC  80 05 05 70 */	lwz r0, 0x570(r5)
/* 80CFEBD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CFEBD4  4D 82 00 20 */	beqlr 
/* 80CFEBD8  38 00 00 01 */	li r0, 1
/* 80CFEBDC  98 04 05 D9 */	stb r0, 0x5d9(r4)
/* 80CFEBE0  4E 80 00 20 */	blr 
