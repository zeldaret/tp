lbl_80174EAC:
/* 80174EAC  80 83 0A FC */	lwz r4, 0xafc(r3)
/* 80174EB0  A0 04 00 04 */	lhz r0, 4(r4)
/* 80174EB4  2C 00 00 04 */	cmpwi r0, 4
/* 80174EB8  41 82 00 0C */	beq lbl_80174EC4
/* 80174EBC  38 60 00 00 */	li r3, 0
/* 80174EC0  4E 80 00 20 */	blr 
lbl_80174EC4:
/* 80174EC4  C0 03 04 0C */	lfs f0, 0x40c(r3)
/* 80174EC8  D0 03 07 3C */	stfs f0, 0x73c(r3)
/* 80174ECC  38 60 00 01 */	li r3, 1
/* 80174ED0  4E 80 00 20 */	blr 
