lbl_800E04AC:
/* 800E04AC  38 80 00 00 */	li r4, 0
/* 800E04B0  A0 A3 2F DC */	lhz r5, 0x2fdc(r3)
/* 800E04B4  28 05 00 40 */	cmplwi r5, 0x40
/* 800E04B8  41 82 00 18 */	beq lbl_800E04D0
/* 800E04BC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800E04C0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800E04C4  40 82 00 0C */	bne lbl_800E04D0
/* 800E04C8  28 05 01 02 */	cmplwi r5, 0x102
/* 800E04CC  40 82 00 14 */	bne lbl_800E04E0
lbl_800E04D0:
/* 800E04D0  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800E04D4  28 00 00 53 */	cmplwi r0, 0x53
/* 800E04D8  40 82 00 08 */	bne lbl_800E04E0
/* 800E04DC  38 80 00 01 */	li r4, 1
lbl_800E04E0:
/* 800E04E0  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800E04E4  4E 80 00 20 */	blr 
