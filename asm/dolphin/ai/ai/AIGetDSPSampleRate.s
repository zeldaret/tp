lbl_8034FF34:
/* 8034FF34  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006C00@ha */
/* 8034FF38  80 03 6C 00 */	lwz r0, 0x6C00(r3)
/* 8034FF3C  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8034FF40  68 03 00 01 */	xori r3, r0, 1
/* 8034FF44  4E 80 00 20 */	blr 
