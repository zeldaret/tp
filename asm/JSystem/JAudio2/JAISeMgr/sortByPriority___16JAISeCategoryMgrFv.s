lbl_8029FD40:
/* 8029FD40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029FD44  7C 08 02 A6 */	mflr r0
/* 8029FD48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029FD4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029FD50  48 0C 24 8D */	bl _savegpr_29
/* 8029FD54  7C 7D 1B 78 */	mr r29, r3
/* 8029FD58  83 E3 00 60 */	lwz r31, 0x60(r3)
/* 8029FD5C  48 00 00 64 */	b lbl_8029FDC0
lbl_8029FD60:
/* 8029FD60  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 8029FD64  7C 7E 1B 78 */	mr r30, r3
/* 8029FD68  80 83 00 00 */	lwz r4, 0(r3)
/* 8029FD6C  80 84 00 B0 */	lwz r4, 0xb0(r4)
/* 8029FD70  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8029FD74  38 1F FF FF */	addi r0, r31, -1
/* 8029FD78  7C 09 03 A6 */	mtctr r0
/* 8029FD7C  28 1F 00 01 */	cmplwi r31, 1
/* 8029FD80  40 81 00 24 */	ble lbl_8029FDA4
lbl_8029FD84:
/* 8029FD84  80 65 00 00 */	lwz r3, 0(r5)
/* 8029FD88  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8029FD8C  7C 00 20 40 */	cmplw r0, r4
/* 8029FD90  40 80 00 0C */	bge lbl_8029FD9C
/* 8029FD94  7C 04 03 78 */	mr r4, r0
/* 8029FD98  7C BE 2B 78 */	mr r30, r5
lbl_8029FD9C:
/* 8029FD9C  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 8029FDA0  42 00 FF E4 */	bdnz lbl_8029FD84
lbl_8029FDA4:
/* 8029FDA4  38 7D 00 58 */	addi r3, r29, 0x58
/* 8029FDA8  7F C4 F3 78 */	mr r4, r30
/* 8029FDAC  48 03 C3 B1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8029FDB0  38 7D 00 58 */	addi r3, r29, 0x58
/* 8029FDB4  7F C4 F3 78 */	mr r4, r30
/* 8029FDB8  48 03 C1 95 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8029FDBC  3B FF FF FF */	addi r31, r31, -1
lbl_8029FDC0:
/* 8029FDC0  28 1F 00 00 */	cmplwi r31, 0
/* 8029FDC4  40 82 FF 9C */	bne lbl_8029FD60
/* 8029FDC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8029FDCC  48 0C 24 5D */	bl _restgpr_29
/* 8029FDD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029FDD4  7C 08 03 A6 */	mtlr r0
/* 8029FDD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029FDDC  4E 80 00 20 */	blr 
