lbl_8003D320:
/* 8003D320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D324  7C 08 02 A6 */	mflr r0
/* 8003D328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003D330  7C 7F 1B 78 */	mr r31, r3
/* 8003D334  38 60 00 00 */	li r3, 0
/* 8003D338  38 80 00 00 */	li r4, 0
/* 8003D33C  38 A0 00 00 */	li r5, 0
/* 8003D340  38 C0 00 00 */	li r6, 0
/* 8003D344  48 31 FD A5 */	bl GXSetCopyFilter
/* 8003D348  38 60 00 00 */	li r3, 0
/* 8003D34C  38 80 00 00 */	li r4, 0
/* 8003D350  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 8003D354  A0 DF 00 1E */	lhz r6, 0x1e(r31)
/* 8003D358  48 31 F7 29 */	bl GXSetTexCopySrc
/* 8003D35C  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 8003D360  A0 9F 00 1E */	lhz r4, 0x1e(r31)
/* 8003D364  38 A0 00 28 */	li r5, 0x28
/* 8003D368  38 C0 00 00 */	li r6, 0
/* 8003D36C  48 31 F7 C5 */	bl GXSetTexCopyDst
/* 8003D370  80 7F 00 04 */	lwz r3, 4(r31)
/* 8003D374  38 80 00 01 */	li r4, 1
/* 8003D378  48 32 00 F5 */	bl GXCopyTex
/* 8003D37C  48 31 EF F9 */	bl GXPixModeSync
/* 8003D380  38 60 00 00 */	li r3, 0
/* 8003D384  48 32 32 4D */	bl GXSetClipMode
/* 8003D388  38 60 00 01 */	li r3, 1
/* 8003D38C  48 32 2A 4D */	bl GXSetDither
/* 8003D390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003D394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003D398  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 8003D39C  81 83 00 00 */	lwz r12, 0(r3)
/* 8003D3A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8003D3A4  7D 89 03 A6 */	mtctr r12
/* 8003D3A8  4E 80 04 21 */	bctrl 
/* 8003D3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003D3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D3B4  7C 08 03 A6 */	mtlr r0
/* 8003D3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D3BC  4E 80 00 20 */	blr 
