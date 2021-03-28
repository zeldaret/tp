lbl_8009C49C:
/* 8009C49C  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 8009C4A0  3C 60 80 38 */	lis r3, typeToTypeGroup__7dTres_c@ha
/* 8009C4A4  38 63 B0 D8 */	addi r3, r3, typeToTypeGroup__7dTres_c@l
/* 8009C4A8  7C 63 00 AE */	lbzx r3, r3, r0
/* 8009C4AC  4E 80 00 20 */	blr 
