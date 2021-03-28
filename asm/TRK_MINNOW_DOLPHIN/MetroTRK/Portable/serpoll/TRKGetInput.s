lbl_8036D974:
/* 8036D974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036D978  7C 08 02 A6 */	mflr r0
/* 8036D97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036D980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036D984  48 00 00 51 */	bl TRKTestForPacket
/* 8036D988  7C 7F 1B 78 */	mr r31, r3
/* 8036D98C  2C 1F FF FF */	cmpwi r31, -1
/* 8036D990  41 82 00 30 */	beq lbl_8036D9C0
/* 8036D994  4B FF FD 5D */	bl TRKGetBuffer
/* 8036D998  38 61 00 08 */	addi r3, r1, 8
/* 8036D99C  38 80 00 02 */	li r4, 2
/* 8036D9A0  4B FF F2 9D */	bl TRKConstructEvent
/* 8036D9A4  3C 60 80 45 */	lis r3, gTRKFramingState@ha
/* 8036D9A8  38 00 FF FF */	li r0, -1
/* 8036D9AC  38 83 F2 70 */	addi r4, r3, gTRKFramingState@l
/* 8036D9B0  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8036D9B4  38 61 00 08 */	addi r3, r1, 8
/* 8036D9B8  90 04 00 00 */	stw r0, 0(r4)
/* 8036D9BC  4B FF F2 99 */	bl TRKPostEvent
lbl_8036D9C0:
/* 8036D9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036D9C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036D9C8  7C 08 03 A6 */	mtlr r0
/* 8036D9CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8036D9D0  4E 80 00 20 */	blr 
