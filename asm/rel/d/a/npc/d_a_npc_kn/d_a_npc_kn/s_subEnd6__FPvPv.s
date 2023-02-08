lbl_80A2FC14:
/* 80A2FC14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2FC18  7C 08 02 A6 */	mflr r0
/* 80A2FC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2FC20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2FC24  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2FC28  7C 7E 1B 78 */	mr r30, r3
/* 80A2FC2C  7C 9F 23 78 */	mr r31, r4
/* 80A2FC30  4B 5E 90 B1 */	bl fopAc_IsActor__FPv
/* 80A2FC34  2C 03 00 00 */	cmpwi r3, 0
/* 80A2FC38  41 82 00 2C */	beq lbl_80A2FC64
/* 80A2FC3C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A2FC40  2C 00 02 5A */	cmpwi r0, 0x25a
/* 80A2FC44  40 82 00 20 */	bne lbl_80A2FC64
/* 80A2FC48  7C 1E F8 40 */	cmplw r30, r31
/* 80A2FC4C  41 82 00 18 */	beq lbl_80A2FC64
/* 80A2FC50  88 1E 15 AE */	lbz r0, 0x15ae(r30)
/* 80A2FC54  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A2FC58  41 82 00 0C */	beq lbl_80A2FC64
/* 80A2FC5C  38 00 00 11 */	li r0, 0x11
/* 80A2FC60  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A2FC64:
/* 80A2FC64  38 60 00 00 */	li r3, 0
/* 80A2FC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2FC6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2FC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2FC74  7C 08 03 A6 */	mtlr r0
/* 80A2FC78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2FC7C  4E 80 00 20 */	blr 
