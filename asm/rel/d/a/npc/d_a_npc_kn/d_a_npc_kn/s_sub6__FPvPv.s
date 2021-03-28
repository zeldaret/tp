lbl_80A2FBB4:
/* 80A2FBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2FBB8  7C 08 02 A6 */	mflr r0
/* 80A2FBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2FBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2FBC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2FBC8  7C 7E 1B 78 */	mr r30, r3
/* 80A2FBCC  7C 9F 23 78 */	mr r31, r4
/* 80A2FBD0  4B 5E 91 10 */	b fopAc_IsActor__FPv
/* 80A2FBD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2FBD8  41 82 00 20 */	beq lbl_80A2FBF8
/* 80A2FBDC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A2FBE0  2C 00 02 5A */	cmpwi r0, 0x25a
/* 80A2FBE4  40 82 00 14 */	bne lbl_80A2FBF8
/* 80A2FBE8  7C 1E F8 40 */	cmplw r30, r31
/* 80A2FBEC  41 82 00 0C */	beq lbl_80A2FBF8
/* 80A2FBF0  38 00 00 12 */	li r0, 0x12
/* 80A2FBF4  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A2FBF8:
/* 80A2FBF8  38 60 00 00 */	li r3, 0
/* 80A2FBFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2FC00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2FC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2FC08  7C 08 03 A6 */	mtlr r0
/* 80A2FC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2FC10  4E 80 00 20 */	blr 
