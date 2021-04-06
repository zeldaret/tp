lbl_8024BBE4:
/* 8024BBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BBE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BBEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BBF0  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8024BBF4  C0 02 B3 98 */	lfs f0, lit_5608(r2)
/* 8024BBF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8024BBFC  FC 00 00 1E */	fctiwz f0, f0
/* 8024BC00  D8 01 00 08 */	stfd f0, 8(r1)
/* 8024BC04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8024BC08  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024BC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BC10  4E 80 00 20 */	blr 
