lbl_802FD9BC:
/* 802FD9BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FD9C0  7C 08 02 A6 */	mflr r0
/* 802FD9C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD9C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD9CC  48 06 48 05 */	bl _savegpr_26
/* 802FD9D0  7C 7A 1B 78 */	mr r26, r3
/* 802FD9D4  7C 9B 23 78 */	mr r27, r4
/* 802FD9D8  7C BC 2B 78 */	mr r28, r5
/* 802FD9DC  7C DD 33 78 */	mr r29, r6
/* 802FD9E0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802FD9E4  88 A3 01 08 */	lbz r5, 0x108(r3)
/* 802FD9E8  7C 00 28 40 */	cmplw r0, r5
/* 802FD9EC  41 81 00 14 */	bgt lbl_802FDA00
/* 802FD9F0  28 00 00 02 */	cmplwi r0, 2
/* 802FD9F4  40 80 00 0C */	bge lbl_802FDA00
/* 802FD9F8  28 1B 00 00 */	cmplwi r27, 0
/* 802FD9FC  40 82 00 0C */	bne lbl_802FDA08
lbl_802FDA00:
/* 802FDA00  38 60 00 00 */	li r3, 0
/* 802FDA04  48 00 00 AC */	b lbl_802FDAB0
lbl_802FDA08:
/* 802FDA08  7C 00 28 40 */	cmplw r0, r5
/* 802FDA0C  40 80 00 88 */	bge lbl_802FDA94
/* 802FDA10  7F 84 E3 78 */	mr r4, r28
/* 802FDA14  81 83 00 00 */	lwz r12, 0(r3)
/* 802FDA18  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 802FDA1C  7D 89 03 A6 */	mtctr r12
/* 802FDA20  4E 80 04 21 */	bctrl 
/* 802FDA24  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 802FDA28  3B C0 00 00 */	li r30, 0
/* 802FDA2C  88 1B 00 08 */	lbz r0, 8(r27)
/* 802FDA30  28 00 00 00 */	cmplwi r0, 0
/* 802FDA34  41 82 00 30 */	beq lbl_802FDA64
/* 802FDA38  7F 43 D3 78 */	mr r3, r26
/* 802FDA3C  7F 84 E3 78 */	mr r4, r28
/* 802FDA40  81 9A 00 00 */	lwz r12, 0(r26)
/* 802FDA44  81 8C 01 48 */	lwz r12, 0x148(r12)
/* 802FDA48  7D 89 03 A6 */	mtctr r12
/* 802FDA4C  4E 80 04 21 */	bctrl 
/* 802FDA50  7C 65 1B 78 */	mr r5, r3
/* 802FDA54  7F 43 D3 78 */	mr r3, r26
/* 802FDA58  7F 64 DB 78 */	mr r4, r27
/* 802FDA5C  48 00 17 75 */	bl getTlutID__10J2DPictureFPC7ResTIMGUc
/* 802FDA60  7C 7E 1B 78 */	mr r30, r3
lbl_802FDA64:
/* 802FDA64  7F 43 D3 78 */	mr r3, r26
/* 802FDA68  7F 84 E3 78 */	mr r4, r28
/* 802FDA6C  81 9A 00 00 */	lwz r12, 0(r26)
/* 802FDA70  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 802FDA74  7D 89 03 A6 */	mtctr r12
/* 802FDA78  4E 80 04 21 */	bctrl 
/* 802FDA7C  7F 64 DB 78 */	mr r4, r27
/* 802FDA80  7F A5 EB 78 */	mr r5, r29
/* 802FDA84  7F C6 F3 78 */	mr r6, r30
/* 802FDA88  4B FE 09 F9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette7_GXTlut
/* 802FDA8C  7F E3 FB 78 */	mr r3, r31
/* 802FDA90  48 00 00 20 */	b lbl_802FDAB0
lbl_802FDA94:
/* 802FDA94  7F A5 EB 78 */	mr r5, r29
/* 802FDA98  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FDA9C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FDAA0  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 802FDAA4  7D 89 03 A6 */	mtctr r12
/* 802FDAA8  4E 80 04 21 */	bctrl 
/* 802FDAAC  38 60 00 00 */	li r3, 0
lbl_802FDAB0:
/* 802FDAB0  39 61 00 20 */	addi r11, r1, 0x20
/* 802FDAB4  48 06 47 69 */	bl _restgpr_26
/* 802FDAB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FDABC  7C 08 03 A6 */	mtlr r0
/* 802FDAC0  38 21 00 20 */	addi r1, r1, 0x20
/* 802FDAC4  4E 80 00 20 */	blr 
