lbl_80098128:
/* 80098128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009812C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098130  A8 64 5D F6 */	lha r3, 0x5df6(r4)
/* 80098134  38 03 00 32 */	addi r0, r3, 0x32
/* 80098138  B0 04 5D F6 */	sth r0, 0x5df6(r4)
/* 8009813C  4E 80 00 20 */	blr 
