lbl_804CE3C0:
/* 804CE3C0  88 83 00 00 */	lbz r4, 0(r3)
/* 804CE3C4  28 04 00 00 */	cmplwi r4, 0
/* 804CE3C8  41 82 00 0C */	beq lbl_804CE3D4
/* 804CE3CC  38 04 FF FF */	addi r0, r4, -1
/* 804CE3D0  98 03 00 00 */	stb r0, 0(r3)
lbl_804CE3D4:
/* 804CE3D4  88 63 00 00 */	lbz r3, 0(r3)
/* 804CE3D8  4E 80 00 20 */	blr 
