lbl_8035001C:
/* 8035001C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006C00@ha */
/* 80350020  80 03 6C 00 */	lwz r0, 0x6C00(r3)
/* 80350024  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80350028  4E 80 00 20 */	blr 
