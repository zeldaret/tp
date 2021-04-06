lbl_80316FE0:
/* 80316FE0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80316FE4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80316FE8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80316FEC  90 03 00 54 */	stw r0, 0x54(r3)
/* 80316FF0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80316FF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80316FF8  4E 80 00 20 */	blr 
