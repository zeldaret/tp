lbl_80490E50:
/* 80490E50  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80490E54  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80490E58  1C 80 00 1C */	mulli r4, r0, 0x1c
/* 80490E5C  3C 60 80 49 */	lis r3, l_modelInfo@ha
/* 80490E60  38 03 64 FC */	addi r0, r3, l_modelInfo@l
/* 80490E64  7C 60 22 14 */	add r3, r0, r4
/* 80490E68  4E 80 00 20 */	blr 
