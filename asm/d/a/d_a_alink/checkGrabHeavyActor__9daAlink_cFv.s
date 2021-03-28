lbl_800E3D6C:
/* 800E3D6C  38 80 00 00 */	li r4, 0
/* 800E3D70  80 63 28 30 */	lwz r3, 0x2830(r3)
/* 800E3D74  28 03 00 00 */	cmplwi r3, 0
/* 800E3D78  41 82 00 14 */	beq lbl_800E3D8C
/* 800E3D7C  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 800E3D80  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800E3D84  41 82 00 08 */	beq lbl_800E3D8C
/* 800E3D88  38 80 00 01 */	li r4, 1
lbl_800E3D8C:
/* 800E3D8C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800E3D90  4E 80 00 20 */	blr 
