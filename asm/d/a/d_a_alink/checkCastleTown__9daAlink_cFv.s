lbl_800C0358:
/* 800C0358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C035C  7C 08 02 A6 */	mflr r0
/* 800C0360  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C036C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 800C0370  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800C0374  7D 89 03 A6 */	mtctr r12
/* 800C0378  4E 80 04 21 */	bctrl 
/* 800C037C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800C0380  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 800C0384  20 00 00 04 */	subfic r0, r0, 4
/* 800C0388  7C 00 00 34 */	cntlzw r0, r0
/* 800C038C  54 03 D9 7E */	srwi r3, r0, 5
/* 800C0390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0394  7C 08 03 A6 */	mtlr r0
/* 800C0398  38 21 00 10 */	addi r1, r1, 0x10
/* 800C039C  4E 80 00 20 */	blr 
