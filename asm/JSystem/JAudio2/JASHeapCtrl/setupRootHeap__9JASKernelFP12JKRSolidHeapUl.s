lbl_802909B8:
/* 802909B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802909BC  7C 08 02 A6 */	mflr r0
/* 802909C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802909C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802909C8  48 0D 18 15 */	bl _savegpr_29
/* 802909CC  7C 7D 1B 78 */	mr r29, r3
/* 802909D0  7C 83 23 78 */	mr r3, r4
/* 802909D4  7F A4 EB 78 */	mr r4, r29
/* 802909D8  38 A0 00 00 */	li r5, 0
/* 802909DC  48 03 E4 51 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802909E0  90 6D 8C 98 */	stw r3, sSystemHeap__9JASKernel(r13)
/* 802909E4  38 60 00 1C */	li r3, 0x1c
/* 802909E8  7F A4 EB 78 */	mr r4, r29
/* 802909EC  38 A0 00 00 */	li r5, 0
/* 802909F0  48 03 E2 A9 */	bl __nw__FUlP7JKRHeapi
/* 802909F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802909F8  41 82 00 A8 */	beq lbl_80290AA0
/* 802909FC  48 0A E6 0D */	bl OSInitMutex
/* 80290A00  38 60 00 00 */	li r3, 0
/* 80290A04  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80290A08  83 DF 00 18 */	lwz r30, 0x18(r31)
/* 80290A0C  28 1E 00 00 */	cmplwi r30, 0
/* 80290A10  41 82 00 18 */	beq lbl_80290A28
/* 80290A14  80 1E 00 08 */	lwz r0, 8(r30)
/* 80290A18  28 00 00 00 */	cmplwi r0, 0
/* 80290A1C  40 82 00 0C */	bne lbl_80290A28
/* 80290A20  90 7E 00 04 */	stw r3, 4(r30)
/* 80290A24  48 00 00 7C */	b lbl_80290AA0
lbl_80290A28:
/* 80290A28  48 00 00 99 */	bl getSystemHeap__9JASKernelFv
/* 80290A2C  7C 64 1B 78 */	mr r4, r3
/* 80290A30  38 60 04 0C */	li r3, 0x40c
/* 80290A34  38 A0 00 00 */	li r5, 0
/* 80290A38  48 03 E2 61 */	bl __nw__FUlP7JKRHeapi
/* 80290A3C  28 03 00 00 */	cmplwi r3, 0
/* 80290A40  41 82 00 14 */	beq lbl_80290A54
/* 80290A44  93 C3 00 00 */	stw r30, 0(r3)
/* 80290A48  38 00 00 00 */	li r0, 0
/* 80290A4C  90 03 00 04 */	stw r0, 4(r3)
/* 80290A50  90 03 00 08 */	stw r0, 8(r3)
lbl_80290A54:
/* 80290A54  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80290A58  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80290A5C  28 00 00 00 */	cmplwi r0, 0
/* 80290A60  40 82 00 40 */	bne lbl_80290AA0
/* 80290A64  38 60 04 0C */	li r3, 0x40c
/* 80290A68  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 80290A6C  38 A0 00 00 */	li r5, 0
/* 80290A70  48 03 E2 29 */	bl __nw__FUlP7JKRHeapi
/* 80290A74  28 03 00 00 */	cmplwi r3, 0
/* 80290A78  41 82 00 14 */	beq lbl_80290A8C
/* 80290A7C  93 C3 00 00 */	stw r30, 0(r3)
/* 80290A80  38 00 00 00 */	li r0, 0
/* 80290A84  90 03 00 04 */	stw r0, 4(r3)
/* 80290A88  90 03 00 08 */	stw r0, 8(r3)
lbl_80290A8C:
/* 80290A8C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80290A90  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80290A94  28 00 00 00 */	cmplwi r0, 0
/* 80290A98  40 82 00 08 */	bne lbl_80290AA0
/* 80290A9C  93 DF 00 18 */	stw r30, 0x18(r31)
lbl_80290AA0:
/* 80290AA0  93 ED 8C 9C */	stw r31, sCommandHeap__9JASKernel(r13)
/* 80290AA4  93 AD 8C 90 */	stw r29, JASDram(r13)
/* 80290AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80290AAC  48 0D 17 7D */	bl _restgpr_29
/* 80290AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80290AB4  7C 08 03 A6 */	mtlr r0
/* 80290AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80290ABC  4E 80 00 20 */	blr 
