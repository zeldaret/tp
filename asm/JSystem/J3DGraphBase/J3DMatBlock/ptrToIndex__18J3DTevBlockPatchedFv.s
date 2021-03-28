lbl_8031DFB4:
/* 8031DFB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031DFB8  7C 08 02 A6 */	mflr r0
/* 8031DFBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031DFC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8031DFC4  48 04 42 09 */	bl _savegpr_25
/* 8031DFC8  7C 7D 1B 78 */	mr r29, r3
/* 8031DFCC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031DFD0  80 64 00 00 */	lwz r3, 0(r4)
/* 8031DFD4  80 1D 00 04 */	lwz r0, 4(r29)
/* 8031DFD8  7C 03 02 14 */	add r0, r3, r0
/* 8031DFDC  90 04 00 08 */	stw r0, 8(r4)
/* 8031DFE0  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031DFE4  83 43 00 08 */	lwz r26, 8(r3)
/* 8031DFE8  3B E0 00 00 */	li r31, 0
/* 8031DFEC  3B C0 00 00 */	li r30, 0
/* 8031DFF0  3B 80 00 00 */	li r28, 0
/* 8031DFF4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8031DFF8  3B 63 4A C8 */	addi r27, r3, j3dSys@l
lbl_8031DFFC:
/* 8031DFFC  3B 3C 00 08 */	addi r25, r28, 8
/* 8031E000  7F 3D CA 14 */	add r25, r29, r25
/* 8031E004  A0 19 00 00 */	lhz r0, 0(r25)
/* 8031E008  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031E00C  41 82 00 50 */	beq lbl_8031E05C
/* 8031E010  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031E014  80 04 00 00 */	lwz r0, 0(r4)
/* 8031E018  80 7D 00 04 */	lwz r3, 4(r29)
/* 8031E01C  7C 1F 02 14 */	add r0, r31, r0
/* 8031E020  7C 03 02 14 */	add r0, r3, r0
/* 8031E024  90 04 00 08 */	stw r0, 8(r4)
/* 8031E028  7F C3 F3 78 */	mr r3, r30
/* 8031E02C  7F 24 CB 78 */	mr r4, r25
/* 8031E030  48 00 61 0D */	bl patchTexNo_PtrToIdx__FUlRCUs
/* 8031E034  80 7B 00 58 */	lwz r3, 0x58(r27)
/* 8031E038  80 63 00 04 */	lwz r3, 4(r3)
/* 8031E03C  A0 19 00 00 */	lhz r0, 0(r25)
/* 8031E040  54 00 28 34 */	slwi r0, r0, 5
/* 8031E044  7C 63 02 14 */	add r3, r3, r0
/* 8031E048  88 03 00 08 */	lbz r0, 8(r3)
/* 8031E04C  28 00 00 01 */	cmplwi r0, 1
/* 8031E050  3B FF 00 14 */	addi r31, r31, 0x14
/* 8031E054  40 82 00 08 */	bne lbl_8031E05C
/* 8031E058  3B FF 00 23 */	addi r31, r31, 0x23
lbl_8031E05C:
/* 8031E05C  3B DE 00 01 */	addi r30, r30, 1
/* 8031E060  28 1E 00 08 */	cmplwi r30, 8
/* 8031E064  3B 9C 00 02 */	addi r28, r28, 2
/* 8031E068  41 80 FF 94 */	blt lbl_8031DFFC
/* 8031E06C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031E070  80 03 00 08 */	lwz r0, 8(r3)
/* 8031E074  7F 43 D3 78 */	mr r3, r26
/* 8031E078  7C 9A 00 50 */	subf r4, r26, r0
/* 8031E07C  48 01 D5 61 */	bl DCStoreRange
/* 8031E080  39 61 00 30 */	addi r11, r1, 0x30
/* 8031E084  48 04 41 95 */	bl _restgpr_25
/* 8031E088  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031E08C  7C 08 03 A6 */	mtlr r0
/* 8031E090  38 21 00 30 */	addi r1, r1, 0x30
/* 8031E094  4E 80 00 20 */	blr 
