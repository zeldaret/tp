lbl_80B9F164:
/* 80B9F164  3C 80 80 BA */	lis r4, mCcDObjInfo__11daTvCdlst_c@ha
/* 80B9F168  38 84 F8 90 */	addi r4, r4, mCcDObjInfo__11daTvCdlst_c@l
/* 80B9F16C  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 80B9F170  D0 03 07 00 */	stfs f0, 0x700(r3)
/* 80B9F174  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80B9F178  D0 03 07 04 */	stfs f0, 0x704(r3)
/* 80B9F17C  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80B9F180  D0 03 07 08 */	stfs f0, 0x708(r3)
/* 80B9F184  C0 23 07 04 */	lfs f1, 0x704(r3)
/* 80B9F188  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80B9F18C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B9F190  D0 03 07 04 */	stfs f0, 0x704(r3)
/* 80B9F194  88 03 07 0C */	lbz r0, 0x70c(r3)
/* 80B9F198  28 00 00 00 */	cmplwi r0, 0
/* 80B9F19C  41 82 00 48 */	beq lbl_80B9F1E4
/* 80B9F1A0  C0 03 07 00 */	lfs f0, 0x700(r3)
/* 80B9F1A4  D0 03 07 14 */	stfs f0, 0x714(r3)
/* 80B9F1A8  C0 03 07 04 */	lfs f0, 0x704(r3)
/* 80B9F1AC  D0 03 07 18 */	stfs f0, 0x718(r3)
/* 80B9F1B0  C0 03 07 08 */	lfs f0, 0x708(r3)
/* 80B9F1B4  D0 03 07 1C */	stfs f0, 0x71c(r3)
/* 80B9F1B8  38 00 00 BC */	li r0, 0xbc
/* 80B9F1BC  B0 03 07 20 */	sth r0, 0x720(r3)
/* 80B9F1C0  38 00 00 66 */	li r0, 0x66
/* 80B9F1C4  B0 03 07 22 */	sth r0, 0x722(r3)
/* 80B9F1C8  38 00 00 42 */	li r0, 0x42
/* 80B9F1CC  B0 03 07 24 */	sth r0, 0x724(r3)
/* 80B9F1D0  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80B9F1D4  D0 03 07 28 */	stfs f0, 0x728(r3)
/* 80B9F1D8  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80B9F1DC  D0 03 07 2C */	stfs f0, 0x72c(r3)
/* 80B9F1E0  4E 80 00 20 */	blr 
lbl_80B9F1E4:
/* 80B9F1E4  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80B9F1E8  D0 03 07 10 */	stfs f0, 0x710(r3)
/* 80B9F1EC  4E 80 00 20 */	blr 
