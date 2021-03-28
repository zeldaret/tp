lbl_8032A4E0:
/* 8032A4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A4E4  7C 08 02 A6 */	mflr r0
/* 8032A4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032A4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032A4F0  7C 7F 1B 78 */	mr r31, r3
/* 8032A4F4  4B FF FD A9 */	bl __ct__14J3DAnmVtxColorFv
/* 8032A4F8  3C 60 80 3D */	lis r3, __vt__17J3DAnmVtxColorKey@ha
/* 8032A4FC  38 03 ED AC */	addi r0, r3, __vt__17J3DAnmVtxColorKey@l
/* 8032A500  90 1F 00 00 */	stw r0, 0(r31)
/* 8032A504  38 60 00 00 */	li r3, 0
/* 8032A508  7C 64 1B 78 */	mr r4, r3
/* 8032A50C  38 00 00 02 */	li r0, 2
/* 8032A510  7C 09 03 A6 */	mtctr r0
lbl_8032A514:
/* 8032A514  38 03 00 18 */	addi r0, r3, 0x18
/* 8032A518  7C 9F 01 2E */	stwx r4, r31, r0
/* 8032A51C  38 63 00 04 */	addi r3, r3, 4
/* 8032A520  42 00 FF F4 */	bdnz lbl_8032A514
/* 8032A524  7F E3 FB 78 */	mr r3, r31
/* 8032A528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032A52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032A530  7C 08 03 A6 */	mtlr r0
/* 8032A534  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A538  4E 80 00 20 */	blr 
