lbl_800B9398:
/* 800B9398  38 80 00 00 */	li r4, 0
/* 800B939C  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800B93A0  28 00 02 B7 */	cmplwi r0, 0x2b7
/* 800B93A4  41 82 00 1C */	beq lbl_800B93C0
/* 800B93A8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B93AC  28 00 00 CE */	cmplwi r0, 0xce
/* 800B93B0  40 82 00 14 */	bne lbl_800B93C4
/* 800B93B4  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800B93B8  28 00 00 0C */	cmplwi r0, 0xc
/* 800B93BC  41 82 00 08 */	beq lbl_800B93C4
lbl_800B93C0:
/* 800B93C0  38 80 00 01 */	li r4, 1
lbl_800B93C4:
/* 800B93C4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800B93C8  4E 80 00 20 */	blr 
