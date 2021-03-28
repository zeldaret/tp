lbl_80CCECA8:
/* 80CCECA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCECAC  7C 08 02 A6 */	mflr r0
/* 80CCECB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCECB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCECB8  4B 69 35 24 */	b _savegpr_29
/* 80CCECBC  7C 7D 1B 78 */	mr r29, r3
/* 80CCECC0  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80CCECC4  28 1E 00 00 */	cmplwi r30, 0
/* 80CCECC8  41 82 00 30 */	beq lbl_80CCECF8
/* 80CCECCC  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80CCECD0  80 84 00 04 */	lwz r4, 4(r4)
/* 80CCECD4  83 E4 00 04 */	lwz r31, 4(r4)
/* 80CCECD8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80CCECDC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80CCECE0  7D 89 03 A6 */	mtctr r12
/* 80CCECE4  4E 80 04 21 */	bctrl 
/* 80CCECE8  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80CCECEC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80CCECF0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80CCECF4  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80CCECF8:
/* 80CCECF8  38 E0 00 00 */	li r7, 0
/* 80CCECFC  88 1D 10 C8 */	lbz r0, 0x10c8(r29)
/* 80CCED00  28 00 00 02 */	cmplwi r0, 2
/* 80CCED04  41 82 00 24 */	beq lbl_80CCED28
/* 80CCED08  28 00 00 03 */	cmplwi r0, 3
/* 80CCED0C  41 82 00 1C */	beq lbl_80CCED28
/* 80CCED10  28 00 00 04 */	cmplwi r0, 4
/* 80CCED14  41 82 00 14 */	beq lbl_80CCED28
/* 80CCED18  28 00 00 05 */	cmplwi r0, 5
/* 80CCED1C  41 82 00 0C */	beq lbl_80CCED28
/* 80CCED20  28 00 00 06 */	cmplwi r0, 6
/* 80CCED24  40 82 00 08 */	bne lbl_80CCED2C
lbl_80CCED28:
/* 80CCED28  38 E0 00 01 */	li r7, 1
lbl_80CCED2C:
/* 80CCED2C  7F A3 EB 78 */	mr r3, r29
/* 80CCED30  38 80 00 00 */	li r4, 0
/* 80CCED34  38 A0 00 00 */	li r5, 0
/* 80CCED38  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80CCED3C  38 C0 00 00 */	li r6, 0
/* 80CCED40  3D 00 80 CD */	lis r8, lit_4350@ha
/* 80CCED44  C0 48 5D BC */	lfs f2, lit_4350@l(r8)
/* 80CCED48  20 00 00 06 */	subfic r0, r0, 6
/* 80CCED4C  7C 00 00 34 */	cntlzw r0, r0
/* 80CCED50  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 80CCED54  39 20 00 00 */	li r9, 0
/* 80CCED58  4B 47 9B 14 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80CCED5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCED60  4B 69 34 C8 */	b _restgpr_29
/* 80CCED64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCED68  7C 08 03 A6 */	mtlr r0
/* 80CCED6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCED70  4E 80 00 20 */	blr 
