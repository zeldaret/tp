lbl_801FD094:
/* 801FD094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD098  7C 08 02 A6 */	mflr r0
/* 801FD09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FD0A4  7C 7F 1B 78 */	mr r31, r3
/* 801FD0A8  80 03 01 38 */	lwz r0, 0x138(r3)
/* 801FD0AC  2C 00 00 00 */	cmpwi r0, 0
/* 801FD0B0  40 82 00 10 */	bne lbl_801FD0C0
/* 801FD0B4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 801FD0B8  48 0D 16 CD */	bl getTotalFreeSize__7JKRHeapFv
/* 801FD0BC  90 7F 01 38 */	stw r3, 0x138(r31)
lbl_801FD0C0:
/* 801FD0C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FD0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD0C8  7C 08 03 A6 */	mtlr r0
/* 801FD0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD0D0  4E 80 00 20 */	blr 
