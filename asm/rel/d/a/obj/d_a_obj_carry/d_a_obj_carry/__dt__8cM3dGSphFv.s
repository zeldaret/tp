lbl_8046FD90:
/* 8046FD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FD94  7C 08 02 A6 */	mflr r0
/* 8046FD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FDA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046FDA4  41 82 00 1C */	beq lbl_8046FDC0
/* 8046FDA8  3C A0 80 48 */	lis r5, __vt__8cM3dGSph@ha /* 0x8047B184@ha */
/* 8046FDAC  38 05 B1 84 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8047B184@l */
/* 8046FDB0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8046FDB4  7C 80 07 35 */	extsh. r0, r4
/* 8046FDB8  40 81 00 08 */	ble lbl_8046FDC0
/* 8046FDBC  4B E5 EF 81 */	bl __dl__FPv
lbl_8046FDC0:
/* 8046FDC0  7F E3 FB 78 */	mr r3, r31
/* 8046FDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FDCC  7C 08 03 A6 */	mtlr r0
/* 8046FDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FDD4  4E 80 00 20 */	blr 
