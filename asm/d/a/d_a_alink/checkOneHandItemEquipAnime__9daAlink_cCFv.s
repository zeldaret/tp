lbl_800B92D0:
/* 800B92D0  38 80 00 00 */	li r4, 0
/* 800B92D4  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800B92D8  28 00 02 47 */	cmplwi r0, 0x247
/* 800B92DC  41 82 00 10 */	beq lbl_800B92EC
/* 800B92E0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B92E4  28 00 02 48 */	cmplwi r0, 0x248
/* 800B92E8  40 82 00 08 */	bne lbl_800B92F0
lbl_800B92EC:
/* 800B92EC  38 80 00 01 */	li r4, 1
lbl_800B92F0:
/* 800B92F0  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800B92F4  4E 80 00 20 */	blr 
