lbl_8031CD44:
/* 8031CD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031CD48  7C 08 02 A6 */	mflr r0
/* 8031CD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031CD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031CD54  93 C1 00 08 */	stw r30, 8(r1)
/* 8031CD58  7C 7E 1B 78 */	mr r30, r3
/* 8031CD5C  7C 9F 23 78 */	mr r31, r4
/* 8031CD60  54 80 87 3F */	rlwinm. r0, r4, 0x10, 0x1c, 0x1f
/* 8031CD64  41 82 00 14 */	beq lbl_8031CD78
/* 8031CD68  81 83 00 00 */	lwz r12, 0(r3)
/* 8031CD6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8031CD70  7D 89 03 A6 */	mtctr r12
/* 8031CD74  4E 80 04 21 */	bctrl 
lbl_8031CD78:
/* 8031CD78  57 E0 01 4B */	rlwinm. r0, r31, 0, 5, 5
/* 8031CD7C  41 82 00 18 */	beq lbl_8031CD94
/* 8031CD80  7F C3 F3 78 */	mr r3, r30
/* 8031CD84  81 9E 00 00 */	lwz r12, 0(r30)
/* 8031CD88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8031CD8C  7D 89 03 A6 */	mtctr r12
/* 8031CD90  4E 80 04 21 */	bctrl 
lbl_8031CD94:
/* 8031CD94  57 E0 67 3F */	rlwinm. r0, r31, 0xc, 0x1c, 0x1f
/* 8031CD98  41 82 00 34 */	beq lbl_8031CDCC
/* 8031CD9C  7F C3 F3 78 */	mr r3, r30
/* 8031CDA0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8031CDA4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8031CDA8  7D 89 03 A6 */	mtctr r12
/* 8031CDAC  4E 80 04 21 */	bctrl 
/* 8031CDB0  57 E0 01 09 */	rlwinm. r0, r31, 0, 4, 4
/* 8031CDB4  41 82 00 18 */	beq lbl_8031CDCC
/* 8031CDB8  7F C3 F3 78 */	mr r3, r30
/* 8031CDBC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8031CDC0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8031CDC4  7D 89 03 A6 */	mtctr r12
/* 8031CDC8  4E 80 04 21 */	bctrl 
lbl_8031CDCC:
/* 8031CDCC  57 E0 01 CF */	rlwinm. r0, r31, 0, 7, 7
/* 8031CDD0  41 82 00 18 */	beq lbl_8031CDE8
/* 8031CDD4  7F C3 F3 78 */	mr r3, r30
/* 8031CDD8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8031CDDC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8031CDE0  7D 89 03 A6 */	mtctr r12
/* 8031CDE4  4E 80 04 21 */	bctrl 
lbl_8031CDE8:
/* 8031CDE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031CDEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031CDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031CDF4  7C 08 03 A6 */	mtlr r0
/* 8031CDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031CDFC  4E 80 00 20 */	blr 
