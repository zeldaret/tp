lbl_80366368:
/* 80366368  7C E3 2A 14 */	add r7, r3, r5
/* 8036636C  7C C4 2A 14 */	add r6, r4, r5
/* 80366370  54 E3 07 BF */	clrlwi. r3, r7, 0x1e
/* 80366374  41 82 00 18 */	beq lbl_8036638C
/* 80366378  7C A3 28 50 */	subf r5, r3, r5
lbl_8036637C:
/* 8036637C  8C 06 FF FF */	lbzu r0, -1(r6)
/* 80366380  34 63 FF FF */	addic. r3, r3, -1
/* 80366384  9C 07 FF FF */	stbu r0, -1(r7)
/* 80366388  40 82 FF F4 */	bne lbl_8036637C
lbl_8036638C:
/* 8036638C  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 80366390  41 82 00 4C */	beq lbl_803663DC
lbl_80366394:
/* 80366394  80 66 FF FC */	lwz r3, -4(r6)
/* 80366398  34 84 FF FF */	addic. r4, r4, -1
/* 8036639C  80 06 FF F8 */	lwz r0, -8(r6)
/* 803663A0  90 67 FF FC */	stw r3, -4(r7)
/* 803663A4  80 66 FF F4 */	lwz r3, -0xc(r6)
/* 803663A8  90 07 FF F8 */	stw r0, -8(r7)
/* 803663AC  80 06 FF F0 */	lwz r0, -0x10(r6)
/* 803663B0  90 67 FF F4 */	stw r3, -0xc(r7)
/* 803663B4  80 66 FF EC */	lwz r3, -0x14(r6)
/* 803663B8  90 07 FF F0 */	stw r0, -0x10(r7)
/* 803663BC  80 06 FF E8 */	lwz r0, -0x18(r6)
/* 803663C0  90 67 FF EC */	stw r3, -0x14(r7)
/* 803663C4  80 66 FF E4 */	lwz r3, -0x1c(r6)
/* 803663C8  90 07 FF E8 */	stw r0, -0x18(r7)
/* 803663CC  84 06 FF E0 */	lwzu r0, -0x20(r6)
/* 803663D0  90 67 FF E4 */	stw r3, -0x1c(r7)
/* 803663D4  94 07 FF E0 */	stwu r0, -0x20(r7)
/* 803663D8  40 82 FF BC */	bne lbl_80366394
lbl_803663DC:
/* 803663DC  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 803663E0  41 82 00 14 */	beq lbl_803663F4
lbl_803663E4:
/* 803663E4  84 06 FF FC */	lwzu r0, -4(r6)
/* 803663E8  34 63 FF FF */	addic. r3, r3, -1
/* 803663EC  94 07 FF FC */	stwu r0, -4(r7)
/* 803663F0  40 82 FF F4 */	bne lbl_803663E4
lbl_803663F4:
/* 803663F4  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 803663F8  4D 82 00 20 */	beqlr 
lbl_803663FC:
/* 803663FC  8C 06 FF FF */	lbzu r0, -1(r6)
/* 80366400  34 A5 FF FF */	addic. r5, r5, -1
/* 80366404  9C 07 FF FF */	stbu r0, -1(r7)
/* 80366408  40 82 FF F4 */	bne lbl_803663FC
/* 8036640C  4E 80 00 20 */	blr 
