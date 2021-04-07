lbl_80273484:
/* 80273484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80273488  7C 08 02 A6 */	mflr r0
/* 8027348C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80273490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80273494  93 C1 00 08 */	stw r30, 8(r1)
/* 80273498  48 00 00 65 */	bl diagnoseGpHang__Fv
/* 8027349C  48 0E 8B F9 */	bl GXAbortFrame
/* 802734A0  38 00 00 61 */	li r0, 0x61
/* 802734A4  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 802734A8  98 04 80 00 */	stb r0, 0x8000(r4)  /* 0xCC008000@l */
/* 802734AC  3C 60 58 00 */	lis r3, 0x5800 /* 0x5800000F@ha */
/* 802734B0  38 03 00 0F */	addi r0, r3, 0x000F /* 0x5800000F@l */
/* 802734B4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 802734B8  48 0E 79 F1 */	bl GXGetCPUFifo
/* 802734BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802734C0  41 82 00 20 */	beq lbl_802734E0
/* 802734C4  48 0E 77 15 */	bl GXGetFifoBase
/* 802734C8  7C 7E 1B 78 */	mr r30, r3
/* 802734CC  7F E3 FB 78 */	mr r3, r31
/* 802734D0  48 0E 77 11 */	bl GXGetFifoSize
/* 802734D4  7C 64 1B 78 */	mr r4, r3
/* 802734D8  7F C3 F3 78 */	mr r3, r30
/* 802734DC  48 0E 61 95 */	bl GXInit
lbl_802734E0:
/* 802734E0  48 0E 8D 7D */	bl GXSetDrawDone
/* 802734E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802734E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802734EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802734F0  7C 08 03 A6 */	mtlr r0
/* 802734F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802734F8  4E 80 00 20 */	blr 
