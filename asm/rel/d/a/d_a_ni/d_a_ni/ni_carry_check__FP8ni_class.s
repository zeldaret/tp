lbl_8094C688:
/* 8094C688  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8094C68C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8094C690  4D 82 00 20 */	beqlr 
/* 8094C694  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 8094C698  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8094C69C  90 03 05 5C */	stw r0, 0x55c(r3)
/* 8094C6A0  38 00 00 03 */	li r0, 3
/* 8094C6A4  B0 03 05 FA */	sth r0, 0x5fa(r3)
/* 8094C6A8  38 00 00 00 */	li r0, 0
/* 8094C6AC  B0 03 05 FC */	sth r0, 0x5fc(r3)
/* 8094C6B0  3C 80 80 95 */	lis r4, lit_3982@ha
/* 8094C6B4  C0 04 11 E4 */	lfs f0, lit_3982@l(r4)
/* 8094C6B8  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 8094C6BC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 8094C6C0  4E 80 00 20 */	blr 
