lbl_80C4FBBC:
/* 80C4FBBC  38 00 00 01 */	li r0, 1
/* 80C4FBC0  90 03 07 90 */	stw r0, 0x790(r3)
/* 80C4FBC4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80C4FBC8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80C4FBCC  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80C4FBD0  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80C4FBD4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C4FBD8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80C4FBDC  38 00 00 00 */	li r0, 0
/* 80C4FBE0  98 03 07 AE */	stb r0, 0x7ae(r3)
/* 80C4FBE4  98 03 07 AF */	stb r0, 0x7af(r3)
/* 80C4FBE8  4E 80 00 20 */	blr 
