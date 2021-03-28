lbl_800E13AC:
/* 800E13AC  38 A0 00 00 */	li r5, 0
/* 800E13B0  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E13B4  28 00 00 46 */	cmplwi r0, 0x46
/* 800E13B8  40 82 00 14 */	bne lbl_800E13CC
/* 800E13BC  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800E13C0  28 00 00 53 */	cmplwi r0, 0x53
/* 800E13C4  40 82 00 08 */	bne lbl_800E13CC
/* 800E13C8  38 A0 00 01 */	li r5, 1
lbl_800E13CC:
/* 800E13CC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800E13D0  4C 82 00 20 */	bnelr 
/* 800E13D4  2C 04 00 00 */	cmpwi r4, 0
/* 800E13D8  41 82 00 1C */	beq lbl_800E13F4
/* 800E13DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E13E0  D0 03 20 54 */	stfs f0, 0x2054(r3)
/* 800E13E4  D0 03 20 58 */	stfs f0, 0x2058(r3)
/* 800E13E8  80 63 1F 54 */	lwz r3, 0x1f54(r3)
/* 800E13EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E13F0  4E 80 00 20 */	blr 
lbl_800E13F4:
/* 800E13F4  3C 80 80 39 */	lis r4, m__18daAlinkHIO_boom_c0@ha
/* 800E13F8  38 84 E6 C8 */	addi r4, r4, m__18daAlinkHIO_boom_c0@l
/* 800E13FC  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 800E1400  D0 03 20 54 */	stfs f0, 0x2054(r3)
/* 800E1404  4E 80 00 20 */	blr 
