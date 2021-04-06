lbl_80C57F8C:
/* 80C57F8C  3C 80 80 C6 */	lis r4, mCcDObjInfo__13daLv3Candle_c@ha /* 0x80C58564@ha */
/* 80C57F90  38 84 85 64 */	addi r4, r4, mCcDObjInfo__13daLv3Candle_c@l /* 0x80C58564@l */
/* 80C57F94  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 80C57F98  D0 03 06 FC */	stfs f0, 0x6fc(r3)
/* 80C57F9C  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80C57FA0  D0 03 07 00 */	stfs f0, 0x700(r3)
/* 80C57FA4  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80C57FA8  D0 03 07 04 */	stfs f0, 0x704(r3)
/* 80C57FAC  C0 23 07 00 */	lfs f1, 0x700(r3)
/* 80C57FB0  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80C57FB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C57FB8  D0 03 07 00 */	stfs f0, 0x700(r3)
/* 80C57FBC  88 03 07 08 */	lbz r0, 0x708(r3)
/* 80C57FC0  28 00 00 00 */	cmplwi r0, 0
/* 80C57FC4  41 82 00 48 */	beq lbl_80C5800C
/* 80C57FC8  C0 03 06 FC */	lfs f0, 0x6fc(r3)
/* 80C57FCC  D0 03 07 10 */	stfs f0, 0x710(r3)
/* 80C57FD0  C0 03 07 00 */	lfs f0, 0x700(r3)
/* 80C57FD4  D0 03 07 14 */	stfs f0, 0x714(r3)
/* 80C57FD8  C0 03 07 04 */	lfs f0, 0x704(r3)
/* 80C57FDC  D0 03 07 18 */	stfs f0, 0x718(r3)
/* 80C57FE0  38 00 00 BC */	li r0, 0xbc
/* 80C57FE4  B0 03 07 1C */	sth r0, 0x71c(r3)
/* 80C57FE8  38 00 00 66 */	li r0, 0x66
/* 80C57FEC  B0 03 07 1E */	sth r0, 0x71e(r3)
/* 80C57FF0  38 00 00 42 */	li r0, 0x42
/* 80C57FF4  B0 03 07 20 */	sth r0, 0x720(r3)
/* 80C57FF8  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80C57FFC  D0 03 07 24 */	stfs f0, 0x724(r3)
/* 80C58000  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80C58004  D0 03 07 28 */	stfs f0, 0x728(r3)
/* 80C58008  4E 80 00 20 */	blr 
lbl_80C5800C:
/* 80C5800C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80C58010  D0 03 07 0C */	stfs f0, 0x70c(r3)
/* 80C58014  4E 80 00 20 */	blr 
