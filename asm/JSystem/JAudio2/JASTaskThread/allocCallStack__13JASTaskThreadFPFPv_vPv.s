lbl_8028F9EC:
/* 8028F9EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028F9F0  7C 08 02 A6 */	mflr r0
/* 8028F9F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028F9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8028F9FC  48 0D 27 DD */	bl _savegpr_28
/* 8028FA00  7C 9E 23 78 */	mr r30, r4
/* 8028FA04  7C BF 2B 78 */	mr r31, r5
/* 8028FA08  48 00 10 C1 */	bl getCommandHeap__9JASKernelFv
/* 8028FA0C  7C 7D 1B 78 */	mr r29, r3
/* 8028FA10  93 A1 00 08 */	stw r29, 8(r1)
/* 8028FA14  48 0A F6 2D */	bl OSLockMutex
/* 8028FA18  83 9D 00 18 */	lwz r28, 0x18(r29)
/* 8028FA1C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8028FA20  20 00 04 00 */	subfic r0, r0, 0x400
/* 8028FA24  28 00 00 0C */	cmplwi r0, 0xc
/* 8028FA28  40 80 00 CC */	bge lbl_8028FAF4
/* 8028FA2C  28 1C 00 00 */	cmplwi r28, 0
/* 8028FA30  41 82 00 20 */	beq lbl_8028FA50
/* 8028FA34  80 1C 00 08 */	lwz r0, 8(r28)
/* 8028FA38  28 00 00 00 */	cmplwi r0, 0
/* 8028FA3C  40 82 00 14 */	bne lbl_8028FA50
/* 8028FA40  38 00 00 00 */	li r0, 0
/* 8028FA44  90 1C 00 04 */	stw r0, 4(r28)
/* 8028FA48  38 00 00 01 */	li r0, 1
/* 8028FA4C  48 00 00 90 */	b lbl_8028FADC
lbl_8028FA50:
/* 8028FA50  48 00 10 71 */	bl getSystemHeap__9JASKernelFv
/* 8028FA54  7C 64 1B 78 */	mr r4, r3
/* 8028FA58  38 60 04 0C */	li r3, 0x40c
/* 8028FA5C  38 A0 00 00 */	li r5, 0
/* 8028FA60  48 03 F2 39 */	bl __nw__FUlP7JKRHeapi
/* 8028FA64  28 03 00 00 */	cmplwi r3, 0
/* 8028FA68  41 82 00 14 */	beq lbl_8028FA7C
/* 8028FA6C  93 83 00 00 */	stw r28, 0(r3)
/* 8028FA70  38 00 00 00 */	li r0, 0
/* 8028FA74  90 03 00 04 */	stw r0, 4(r3)
/* 8028FA78  90 03 00 08 */	stw r0, 8(r3)
lbl_8028FA7C:
/* 8028FA7C  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8028FA80  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8028FA84  28 00 00 00 */	cmplwi r0, 0
/* 8028FA88  41 82 00 0C */	beq lbl_8028FA94
/* 8028FA8C  38 00 00 01 */	li r0, 1
/* 8028FA90  48 00 00 4C */	b lbl_8028FADC
lbl_8028FA94:
/* 8028FA94  38 60 04 0C */	li r3, 0x40c
/* 8028FA98  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 8028FA9C  38 A0 00 00 */	li r5, 0
/* 8028FAA0  48 03 F1 F9 */	bl __nw__FUlP7JKRHeapi
/* 8028FAA4  28 03 00 00 */	cmplwi r3, 0
/* 8028FAA8  41 82 00 14 */	beq lbl_8028FABC
/* 8028FAAC  93 83 00 00 */	stw r28, 0(r3)
/* 8028FAB0  38 00 00 00 */	li r0, 0
/* 8028FAB4  90 03 00 04 */	stw r0, 4(r3)
/* 8028FAB8  90 03 00 08 */	stw r0, 8(r3)
lbl_8028FABC:
/* 8028FABC  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8028FAC0  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8028FAC4  28 00 00 00 */	cmplwi r0, 0
/* 8028FAC8  41 82 00 0C */	beq lbl_8028FAD4
/* 8028FACC  38 00 00 01 */	li r0, 1
/* 8028FAD0  48 00 00 0C */	b lbl_8028FADC
lbl_8028FAD4:
/* 8028FAD4  93 9D 00 18 */	stw r28, 0x18(r29)
/* 8028FAD8  38 00 00 00 */	li r0, 0
lbl_8028FADC:
/* 8028FADC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028FAE0  40 82 00 14 */	bne lbl_8028FAF4
/* 8028FAE4  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FAE8  48 0A F6 35 */	bl OSUnlockMutex
/* 8028FAEC  3B A0 00 00 */	li r29, 0
/* 8028FAF0  48 00 00 30 */	b lbl_8028FB20
lbl_8028FAF4:
/* 8028FAF4  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 8028FAF8  80 64 00 04 */	lwz r3, 4(r4)
/* 8028FAFC  3B A3 00 0C */	addi r29, r3, 0xc
/* 8028FB00  7F A4 EA 14 */	add r29, r4, r29
/* 8028FB04  38 03 00 0C */	addi r0, r3, 0xc
/* 8028FB08  90 04 00 04 */	stw r0, 4(r4)
/* 8028FB0C  80 64 00 08 */	lwz r3, 8(r4)
/* 8028FB10  38 03 00 01 */	addi r0, r3, 1
/* 8028FB14  90 04 00 08 */	stw r0, 8(r4)
/* 8028FB18  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FB1C  48 0A F6 01 */	bl OSUnlockMutex
lbl_8028FB20:
/* 8028FB20  28 1D 00 00 */	cmplwi r29, 0
/* 8028FB24  40 82 00 0C */	bne lbl_8028FB30
/* 8028FB28  38 60 00 00 */	li r3, 0
/* 8028FB2C  48 00 00 18 */	b lbl_8028FB44
lbl_8028FB30:
/* 8028FB30  38 00 00 00 */	li r0, 0
/* 8028FB34  90 1D 00 04 */	stw r0, 4(r29)
/* 8028FB38  93 FD 00 08 */	stw r31, 8(r29)
/* 8028FB3C  93 DD 00 00 */	stw r30, 0(r29)
/* 8028FB40  7F A3 EB 78 */	mr r3, r29
lbl_8028FB44:
/* 8028FB44  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FB48  48 0D 26 DD */	bl _restgpr_28
/* 8028FB4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028FB50  7C 08 03 A6 */	mtlr r0
/* 8028FB54  38 21 00 20 */	addi r1, r1, 0x20
/* 8028FB58  4E 80 00 20 */	blr 
