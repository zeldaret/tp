lbl_80327A2C:
/* 80327A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80327A30  7C 08 02 A6 */	mflr r0
/* 80327A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80327A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80327A3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80327A40  7C 9E 23 79 */	or. r30, r4, r4
/* 80327A44  7C BF 2B 78 */	mr r31, r5
/* 80327A48  93 C3 00 C8 */	stw r30, 0xc8(r3)
/* 80327A4C  40 82 00 0C */	bne lbl_80327A58
/* 80327A50  38 60 00 00 */	li r3, 0
/* 80327A54  48 00 00 34 */	b lbl_80327A88
lbl_80327A58:
/* 80327A58  38 63 00 88 */	addi r3, r3, 0x88
/* 80327A5C  7F E4 FB 78 */	mr r4, r31
/* 80327A60  4B FE 98 71 */	bl copyLocalVtxArray__15J3DVertexBufferFUl
/* 80327A64  2C 03 00 00 */	cmpwi r3, 0
/* 80327A68  41 82 00 08 */	beq lbl_80327A70
/* 80327A6C  48 00 00 1C */	b lbl_80327A88
lbl_80327A70:
/* 80327A70  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 80327A74  41 82 00 10 */	beq lbl_80327A84
/* 80327A78  7F C3 F3 78 */	mr r3, r30
/* 80327A7C  38 80 00 01 */	li r4, 1
/* 80327A80  48 00 67 B1 */	bl offAllFlag__13J3DDeformDataFUl
lbl_80327A84:
/* 80327A84  38 60 00 00 */	li r3, 0
lbl_80327A88:
/* 80327A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80327A8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80327A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80327A94  7C 08 03 A6 */	mtlr r0
/* 80327A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80327A9C  4E 80 00 20 */	blr 
