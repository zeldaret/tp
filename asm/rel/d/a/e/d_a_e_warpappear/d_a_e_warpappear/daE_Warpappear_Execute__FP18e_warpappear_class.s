lbl_807D1BAC:
/* 807D1BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D1BB0  7C 08 02 A6 */	mflr r0
/* 807D1BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D1BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D1BBC  7C 7F 1B 78 */	mr r31, r3
/* 807D1BC0  A8 63 05 94 */	lha r3, 0x594(r3)
/* 807D1BC4  38 03 00 01 */	addi r0, r3, 1
/* 807D1BC8  B0 1F 05 94 */	sth r0, 0x594(r31)
/* 807D1BCC  3C 60 80 7D */	lis r3, lit_4949@ha
/* 807D1BD0  C0 03 22 7C */	lfs f0, lit_4949@l(r3)
/* 807D1BD4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 807D1BD8  38 60 00 00 */	li r3, 0
/* 807D1BDC  38 00 00 02 */	li r0, 2
/* 807D1BE0  7C 09 03 A6 */	mtctr r0
lbl_807D1BE4:
/* 807D1BE4  38 A3 05 9A */	addi r5, r3, 0x59a
/* 807D1BE8  7C 9F 2A AE */	lhax r4, r31, r5
/* 807D1BEC  2C 04 00 00 */	cmpwi r4, 0
/* 807D1BF0  41 82 00 0C */	beq lbl_807D1BFC
/* 807D1BF4  38 04 FF FF */	addi r0, r4, -1
/* 807D1BF8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807D1BFC:
/* 807D1BFC  38 63 00 02 */	addi r3, r3, 2
/* 807D1C00  42 00 FF E4 */	bdnz lbl_807D1BE4
/* 807D1C04  7F E3 FB 78 */	mr r3, r31
/* 807D1C08  4B FF E3 CD */	bl action__FP18e_warpappear_class
/* 807D1C0C  7F E3 FB 78 */	mr r3, r31
/* 807D1C10  4B FF E7 1D */	bl demo_camera__FP18e_warpappear_class
/* 807D1C14  7F E3 FB 78 */	mr r3, r31
/* 807D1C18  4B FF FF 31 */	bl mtx_set__FP18e_warpappear_class
/* 807D1C1C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 807D1C20  4B 83 B8 08 */	b play__14mDoExt_baseAnmFv
/* 807D1C24  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 807D1C28  54 00 10 3A */	slwi r0, r0, 2
/* 807D1C2C  7C 7F 02 14 */	add r3, r31, r0
/* 807D1C30  80 63 05 7C */	lwz r3, 0x57c(r3)
/* 807D1C34  4B 83 B7 F4 */	b play__14mDoExt_baseAnmFv
/* 807D1C38  38 60 00 01 */	li r3, 1
/* 807D1C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D1C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D1C44  7C 08 03 A6 */	mtlr r0
/* 807D1C48  38 21 00 10 */	addi r1, r1, 0x10
/* 807D1C4C  4E 80 00 20 */	blr 
