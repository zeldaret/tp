lbl_80C11964:
/* 80C11964  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80C11968  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 80C1196C  4E 80 00 20 */	blr 
