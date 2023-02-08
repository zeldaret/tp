lbl_8031FD08:
/* 8031FD08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031FD0C  7C 08 02 A6 */	mflr r0
/* 8031FD10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031FD14  39 61 00 20 */	addi r11, r1, 0x20
/* 8031FD18  48 04 24 C1 */	bl _savegpr_28
/* 8031FD1C  7C 7C 1B 78 */	mr r28, r3
/* 8031FD20  7C 9D 23 78 */	mr r29, r4
/* 8031FD24  7F A3 EB 78 */	mr r3, r29
/* 8031FD28  81 9D 00 00 */	lwz r12, 0(r29)
/* 8031FD2C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8031FD30  7D 89 03 A6 */	mtctr r12
/* 8031FD34  4E 80 04 21 */	bctrl 
/* 8031FD38  98 7C 00 0C */	stb r3, 0xc(r28)
/* 8031FD3C  3B C0 00 00 */	li r30, 0
/* 8031FD40  3B E0 00 00 */	li r31, 0
lbl_8031FD44:
/* 8031FD44  7F A3 EB 78 */	mr r3, r29
/* 8031FD48  7F C4 F3 78 */	mr r4, r30
/* 8031FD4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8031FD50  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8031FD54  7D 89 03 A6 */	mtctr r12
/* 8031FD58  4E 80 04 21 */	bctrl 
/* 8031FD5C  88 03 00 00 */	lbz r0, 0(r3)
/* 8031FD60  7C 9C FA 14 */	add r4, r28, r31
/* 8031FD64  98 04 00 04 */	stb r0, 4(r4)
/* 8031FD68  88 03 00 01 */	lbz r0, 1(r3)
/* 8031FD6C  98 04 00 05 */	stb r0, 5(r4)
/* 8031FD70  88 03 00 02 */	lbz r0, 2(r3)
/* 8031FD74  98 04 00 06 */	stb r0, 6(r4)
/* 8031FD78  88 03 00 03 */	lbz r0, 3(r3)
/* 8031FD7C  98 04 00 07 */	stb r0, 7(r4)
/* 8031FD80  3B DE 00 01 */	addi r30, r30, 1
/* 8031FD84  28 1E 00 02 */	cmplwi r30, 2
/* 8031FD88  3B FF 00 04 */	addi r31, r31, 4
/* 8031FD8C  41 80 FF B8 */	blt lbl_8031FD44
/* 8031FD90  3B C0 00 00 */	li r30, 0
/* 8031FD94  3B E0 00 00 */	li r31, 0
lbl_8031FD98:
/* 8031FD98  7F A3 EB 78 */	mr r3, r29
/* 8031FD9C  7F C4 F3 78 */	mr r4, r30
/* 8031FDA0  81 9D 00 00 */	lwz r12, 0(r29)
/* 8031FDA4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8031FDA8  7D 89 03 A6 */	mtctr r12
/* 8031FDAC  4E 80 04 21 */	bctrl 
/* 8031FDB0  A0 63 00 00 */	lhz r3, 0(r3)
/* 8031FDB4  38 1F 00 0E */	addi r0, r31, 0xe
/* 8031FDB8  7C 7C 03 2E */	sthx r3, r28, r0
/* 8031FDBC  3B DE 00 01 */	addi r30, r30, 1
/* 8031FDC0  28 1E 00 04 */	cmplwi r30, 4
/* 8031FDC4  3B FF 00 02 */	addi r31, r31, 2
/* 8031FDC8  41 80 FF D0 */	blt lbl_8031FD98
/* 8031FDCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8031FDD0  48 04 24 55 */	bl _restgpr_28
/* 8031FDD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031FDD8  7C 08 03 A6 */	mtlr r0
/* 8031FDDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8031FDE0  4E 80 00 20 */	blr 
