lbl_8035AB88:
/* 8035AB88  81 2D 93 A4 */	lwz r9, __cpReg(r13)
/* 8035AB8C  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035AB90  A0 09 00 00 */	lhz r0, 0(r9)
/* 8035AB94  90 08 00 0C */	stw r0, 0xc(r8)
/* 8035AB98  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8035AB9C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8035ABA0  98 03 00 00 */	stb r0, 0(r3)
/* 8035ABA4  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8035ABA8  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8035ABAC  98 04 00 00 */	stb r0, 0(r4)
/* 8035ABB0  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8035ABB4  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 8035ABB8  98 05 00 00 */	stb r0, 0(r5)
/* 8035ABBC  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8035ABC0  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 8035ABC4  98 06 00 00 */	stb r0, 0(r6)
/* 8035ABC8  80 08 00 0C */	lwz r0, 0xc(r8)
/* 8035ABCC  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8035ABD0  98 07 00 00 */	stb r0, 0(r7)
/* 8035ABD4  4E 80 00 20 */	blr 
