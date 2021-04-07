lbl_800C0310:
/* 800C0310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0314  7C 08 02 A6 */	mflr r0
/* 800C0318  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C031C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C0324  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 800C0328  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800C032C  7D 89 03 A6 */	mtctr r12
/* 800C0330  4E 80 04 21 */	bctrl 
/* 800C0334  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800C0338  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 800C033C  20 00 00 01 */	subfic r0, r0, 1
/* 800C0340  7C 00 00 34 */	cntlzw r0, r0
/* 800C0344  54 03 D9 7E */	srwi r3, r0, 5
/* 800C0348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C034C  7C 08 03 A6 */	mtlr r0
/* 800C0350  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0354  4E 80 00 20 */	blr 
