lbl_8028FD4C:
/* 8028FD4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028FD50  7C 08 02 A6 */	mflr r0
/* 8028FD54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028FD58  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FD5C  48 0D 24 7D */	bl _savegpr_28
/* 8028FD60  7C 7F 1B 78 */	mr r31, r3
/* 8028FD64  38 60 00 04 */	li r3, 4
/* 8028FD68  64 63 00 04 */	oris r3, r3, 4
/* 8028FD6C  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8028FD70  38 60 00 05 */	li r3, 5
/* 8028FD74  64 63 00 05 */	oris r3, r3, 5
/* 8028FD78  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8028FD7C  38 60 00 06 */	li r3, 6
/* 8028FD80  64 63 00 06 */	oris r3, r3, 6
/* 8028FD84  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8028FD88  38 60 00 07 */	li r3, 7
/* 8028FD8C  64 63 00 07 */	oris r3, r3, 7
/* 8028FD90  7C 75 E3 A6 */	mtspr 0x395, r3
lbl_8028FD94:
/* 8028FD94  38 7F 00 30 */	addi r3, r31, 0x30
/* 8028FD98  38 81 00 0C */	addi r4, r1, 0xc
/* 8028FD9C  38 A0 00 01 */	li r5, 1
/* 8028FDA0  48 0A ED 1D */	bl OSReceiveMessage
/* 8028FDA4  83 81 00 0C */	lwz r28, 0xc(r1)
/* 8028FDA8  88 1F 00 84 */	lbz r0, 0x84(r31)
/* 8028FDAC  28 00 00 00 */	cmplwi r0, 0
/* 8028FDB0  41 82 00 0C */	beq lbl_8028FDBC
/* 8028FDB4  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8028FDB8  48 0B 1D F5 */	bl OSSleepThread
lbl_8028FDBC:
/* 8028FDBC  80 1C 00 04 */	lwz r0, 4(r28)
/* 8028FDC0  28 00 00 00 */	cmplwi r0, 0
/* 8028FDC4  41 82 00 18 */	beq lbl_8028FDDC
/* 8028FDC8  38 7C 00 08 */	addi r3, r28, 8
/* 8028FDCC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8028FDD0  7D 89 03 A6 */	mtctr r12
/* 8028FDD4  4E 80 04 21 */	bctrl 
/* 8028FDD8  48 00 00 14 */	b lbl_8028FDEC
lbl_8028FDDC:
/* 8028FDDC  80 7C 00 08 */	lwz r3, 8(r28)
/* 8028FDE0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8028FDE4  7D 89 03 A6 */	mtctr r12
/* 8028FDE8  4E 80 04 21 */	bctrl 
lbl_8028FDEC:
/* 8028FDEC  48 00 0C DD */	bl getCommandHeap__9JASKernelFv
/* 8028FDF0  7C 7E 1B 78 */	mr r30, r3
/* 8028FDF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8028FDF8  48 0A F2 49 */	bl OSLockMutex
/* 8028FDFC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8028FE00  3B A0 00 00 */	li r29, 0
/* 8028FE04  48 00 00 70 */	b lbl_8028FE74
lbl_8028FE08:
/* 8028FE08  38 80 00 00 */	li r4, 0
/* 8028FE0C  38 03 00 0C */	addi r0, r3, 0xc
/* 8028FE10  7C 00 E0 40 */	cmplw r0, r28
/* 8028FE14  41 81 00 14 */	bgt lbl_8028FE28
/* 8028FE18  38 03 04 0C */	addi r0, r3, 0x40c
/* 8028FE1C  7C 1C 00 40 */	cmplw r28, r0
/* 8028FE20  40 80 00 08 */	bge lbl_8028FE28
/* 8028FE24  38 80 00 01 */	li r4, 1
lbl_8028FE28:
/* 8028FE28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8028FE2C  41 82 00 40 */	beq lbl_8028FE6C
/* 8028FE30  80 83 00 08 */	lwz r4, 8(r3)
/* 8028FE34  38 04 FF FF */	addi r0, r4, -1
/* 8028FE38  90 03 00 08 */	stw r0, 8(r3)
/* 8028FE3C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8028FE40  7C 03 00 40 */	cmplw r3, r0
/* 8028FE44  41 82 00 1C */	beq lbl_8028FE60
/* 8028FE48  80 03 00 08 */	lwz r0, 8(r3)
/* 8028FE4C  28 00 00 00 */	cmplwi r0, 0
/* 8028FE50  40 82 00 10 */	bne lbl_8028FE60
/* 8028FE54  83 83 00 00 */	lwz r28, 0(r3)
/* 8028FE58  48 03 EE E5 */	bl __dl__FPv
/* 8028FE5C  93 9D 00 00 */	stw r28, 0(r29)
lbl_8028FE60:
/* 8028FE60  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FE64  48 0A F2 B9 */	bl OSUnlockMutex
/* 8028FE68  4B FF FF 2C */	b lbl_8028FD94
lbl_8028FE6C:
/* 8028FE6C  7C 7D 1B 78 */	mr r29, r3
/* 8028FE70  80 63 00 00 */	lwz r3, 0(r3)
lbl_8028FE74:
/* 8028FE74  28 03 00 00 */	cmplwi r3, 0
/* 8028FE78  40 82 FF 90 */	bne lbl_8028FE08
/* 8028FE7C  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FE80  48 0A F2 9D */	bl OSUnlockMutex
/* 8028FE84  4B FF FF 10 */	b lbl_8028FD94
