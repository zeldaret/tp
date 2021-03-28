lbl_8034FD6C:
/* 8034FD6C  7C 08 02 A6 */	mflr r0
/* 8034FD70  90 01 00 04 */	stw r0, 4(r1)
/* 8034FD74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FD78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034FD7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034FD80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034FD84  7C 7D 1B 78 */	mr r29, r3
/* 8034FD88  48 00 00 BD */	bl AIGetStreamPlayState
/* 8034FD8C  7C 1D 18 40 */	cmplw r29, r3
/* 8034FD90  41 82 00 98 */	beq lbl_8034FE28
/* 8034FD94  48 00 02 89 */	bl AIGetStreamSampleRate
/* 8034FD98  28 03 00 00 */	cmplwi r3, 0
/* 8034FD9C  40 82 00 78 */	bne lbl_8034FE14
/* 8034FDA0  28 1D 00 01 */	cmplwi r29, 1
/* 8034FDA4  40 82 00 70 */	bne lbl_8034FE14
/* 8034FDA8  48 00 02 CD */	bl AIGetStreamVolRight
/* 8034FDAC  7C 7E 1B 78 */	mr r30, r3
/* 8034FDB0  48 00 02 99 */	bl AIGetStreamVolLeft
/* 8034FDB4  3B A3 00 00 */	addi r29, r3, 0
/* 8034FDB8  38 60 00 00 */	li r3, 0
/* 8034FDBC  48 00 02 9D */	bl AISetStreamVolRight
/* 8034FDC0  38 60 00 00 */	li r3, 0
/* 8034FDC4  48 00 02 69 */	bl AISetStreamVolLeft
/* 8034FDC8  4B FE D9 2D */	bl OSDisableInterrupts
/* 8034FDCC  7C 7F 1B 78 */	mr r31, r3
/* 8034FDD0  48 00 05 A1 */	bl __AI_SRC_INIT
/* 8034FDD4  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006C00@ha */
/* 8034FDD8  80 04 6C 00 */	lwz r0, 0x6C00(r4)
/* 8034FDDC  38 7F 00 00 */	addi r3, r31, 0
/* 8034FDE0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8034FDE4  60 00 00 20 */	ori r0, r0, 0x20
/* 8034FDE8  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8034FDEC  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 8034FDF0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8034FDF4  60 00 00 01 */	ori r0, r0, 1
/* 8034FDF8  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8034FDFC  4B FE D9 21 */	bl OSRestoreInterrupts
/* 8034FE00  7F C3 F3 78 */	mr r3, r30
/* 8034FE04  48 00 02 29 */	bl AISetStreamVolLeft
/* 8034FE08  7F A3 EB 78 */	mr r3, r29
/* 8034FE0C  48 00 02 4D */	bl AISetStreamVolRight
/* 8034FE10  48 00 00 18 */	b lbl_8034FE28
lbl_8034FE14:
/* 8034FE14  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006C00@ha */
/* 8034FE18  80 03 6C 00 */	lwz r0, 0x6C00(r3)
/* 8034FE1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8034FE20  7C 00 EB 78 */	or r0, r0, r29
/* 8034FE24  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_8034FE28:
/* 8034FE28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FE2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FE30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FE34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FE38  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FE3C  7C 08 03 A6 */	mtlr r0
/* 8034FE40  4E 80 00 20 */	blr 
