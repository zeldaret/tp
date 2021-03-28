lbl_800E3D1C:
/* 800E3D1C  80 83 28 30 */	lwz r4, 0x2830(r3)
/* 800E3D20  38 60 00 00 */	li r3, 0
/* 800E3D24  28 04 00 00 */	cmplwi r4, 0
/* 800E3D28  41 82 00 3C */	beq lbl_800E3D64
/* 800E3D2C  88 04 04 9A */	lbz r0, 0x49a(r4)
/* 800E3D30  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800E3D34  40 82 00 2C */	bne lbl_800E3D60
/* 800E3D38  A8 04 00 08 */	lha r0, 8(r4)
/* 800E3D3C  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 800E3D40  40 82 00 24 */	bne lbl_800E3D64
/* 800E3D44  88 04 0C F0 */	lbz r0, 0xcf0(r4)
/* 800E3D48  2C 00 00 01 */	cmpwi r0, 1
/* 800E3D4C  41 82 00 14 */	beq lbl_800E3D60
/* 800E3D50  2C 00 00 0A */	cmpwi r0, 0xa
/* 800E3D54  41 82 00 0C */	beq lbl_800E3D60
/* 800E3D58  2C 00 00 04 */	cmpwi r0, 4
/* 800E3D5C  40 82 00 08 */	bne lbl_800E3D64
lbl_800E3D60:
/* 800E3D60  38 60 00 01 */	li r3, 1
lbl_800E3D64:
/* 800E3D64  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800E3D68  4E 80 00 20 */	blr 
