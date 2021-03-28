lbl_800ECD90:
/* 800ECD90  38 00 00 00 */	li r0, 0
/* 800ECD94  A0 63 2F E8 */	lhz r3, 0x2fe8(r3)
/* 800ECD98  28 03 00 3D */	cmplwi r3, 0x3d
/* 800ECD9C  41 82 00 1C */	beq lbl_800ECDB8
/* 800ECDA0  28 03 00 3E */	cmplwi r3, 0x3e
/* 800ECDA4  41 82 00 14 */	beq lbl_800ECDB8
/* 800ECDA8  28 03 00 50 */	cmplwi r3, 0x50
/* 800ECDAC  41 82 00 0C */	beq lbl_800ECDB8
/* 800ECDB0  28 03 00 3F */	cmplwi r3, 0x3f
/* 800ECDB4  40 82 00 08 */	bne lbl_800ECDBC
lbl_800ECDB8:
/* 800ECDB8  38 00 00 01 */	li r0, 1
lbl_800ECDBC:
/* 800ECDBC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800ECDC0  4E 80 00 20 */	blr 
