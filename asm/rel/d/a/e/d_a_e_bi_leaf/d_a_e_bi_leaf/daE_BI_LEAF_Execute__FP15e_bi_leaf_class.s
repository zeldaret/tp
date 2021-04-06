lbl_8068DDD0:
/* 8068DDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DDD4  7C 08 02 A6 */	mflr r0
/* 8068DDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DDDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068DDE0  7C 7F 1B 78 */	mr r31, r3
/* 8068DDE4  A8 63 05 BE */	lha r3, 0x5be(r3)
/* 8068DDE8  2C 03 00 00 */	cmpwi r3, 0
/* 8068DDEC  41 82 00 0C */	beq lbl_8068DDF8
/* 8068DDF0  38 03 FF FF */	addi r0, r3, -1
/* 8068DDF4  B0 1F 05 BE */	sth r0, 0x5be(r31)
lbl_8068DDF8:
/* 8068DDF8  7F E3 FB 78 */	mr r3, r31
/* 8068DDFC  4B FF FE D5 */	bl action__FP15e_bi_leaf_class
/* 8068DE00  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8068DE04  28 00 00 01 */	cmplwi r0, 1
/* 8068DE08  40 82 00 0C */	bne lbl_8068DE14
/* 8068DE0C  38 60 00 01 */	li r3, 1
/* 8068DE10  48 00 00 44 */	b lbl_8068DE54
lbl_8068DE14:
/* 8068DE14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068DE18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068DE1C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8068DE20  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8068DE24  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8068DE28  4B CB 8A C1 */	bl PSMTXTrans
/* 8068DE2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068DE30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068DE34  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8068DE38  4B 97 E5 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 8068DE3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068DE40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068DE44  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8068DE48  38 84 00 24 */	addi r4, r4, 0x24
/* 8068DE4C  4B CB 86 65 */	bl PSMTXCopy
/* 8068DE50  38 60 00 01 */	li r3, 1
lbl_8068DE54:
/* 8068DE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068DE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DE5C  7C 08 03 A6 */	mtlr r0
/* 8068DE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DE64  4E 80 00 20 */	blr 
