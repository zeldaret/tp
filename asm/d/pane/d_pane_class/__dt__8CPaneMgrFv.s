lbl_80253A18:
/* 80253A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80253A1C  7C 08 02 A6 */	mflr r0
/* 80253A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80253A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80253A28  93 C1 00 08 */	stw r30, 8(r1)
/* 80253A2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80253A30  7C 9F 23 78 */	mr r31, r4
/* 80253A34  41 82 00 64 */	beq lbl_80253A98
/* 80253A38  3C 60 80 3C */	lis r3, __vt__8CPaneMgr@ha
/* 80253A3C  38 03 2E 04 */	addi r0, r3, __vt__8CPaneMgr@l
/* 80253A40  90 1E 00 00 */	stw r0, 0(r30)
/* 80253A44  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 80253A48  28 04 00 00 */	cmplwi r4, 0
/* 80253A4C  41 82 00 14 */	beq lbl_80253A60
/* 80253A50  80 7E 00 08 */	lwz r3, 8(r30)
/* 80253A54  48 07 AA F5 */	bl free__7JKRHeapFPv
/* 80253A58  38 00 00 00 */	li r0, 0
/* 80253A5C  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_80253A60:
/* 80253A60  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80253A64  28 04 00 00 */	cmplwi r4, 0
/* 80253A68  41 82 00 14 */	beq lbl_80253A7C
/* 80253A6C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80253A70  48 07 AA D9 */	bl free__7JKRHeapFPv
/* 80253A74  38 00 00 00 */	li r0, 0
/* 80253A78  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_80253A7C:
/* 80253A7C  7F C3 F3 78 */	mr r3, r30
/* 80253A80  38 80 00 00 */	li r4, 0
/* 80253A84  48 00 19 E9 */	bl __dt__13CPaneMgrAlphaFv
/* 80253A88  7F E0 07 35 */	extsh. r0, r31
/* 80253A8C  40 81 00 0C */	ble lbl_80253A98
/* 80253A90  7F C3 F3 78 */	mr r3, r30
/* 80253A94  48 07 B2 A9 */	bl __dl__FPv
lbl_80253A98:
/* 80253A98  7F C3 F3 78 */	mr r3, r30
/* 80253A9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80253AA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80253AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80253AA8  7C 08 03 A6 */	mtlr r0
/* 80253AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80253AB0  4E 80 00 20 */	blr 
