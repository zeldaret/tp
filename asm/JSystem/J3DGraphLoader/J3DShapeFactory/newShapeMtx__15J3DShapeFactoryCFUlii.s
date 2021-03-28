lbl_803375BC:
/* 803375BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803375C0  7C 08 02 A6 */	mflr r0
/* 803375C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803375C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803375CC  48 02 AC 11 */	bl _savegpr_29
/* 803375D0  7C 7D 1B 78 */	mr r29, r3
/* 803375D4  3B E0 00 00 */	li r31, 0
/* 803375D8  80 E3 00 00 */	lwz r7, 0(r3)
/* 803375DC  80 63 00 04 */	lwz r3, 4(r3)
/* 803375E0  54 A0 08 3C */	slwi r0, r5, 1
/* 803375E4  7C 03 02 2E */	lhzx r0, r3, r0
/* 803375E8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 803375EC  7C E7 02 14 */	add r7, r7, r0
/* 803375F0  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 803375F4  A0 07 00 06 */	lhz r0, 6(r7)
/* 803375F8  54 03 18 38 */	slwi r3, r0, 3
/* 803375FC  54 C0 18 38 */	slwi r0, r6, 3
/* 80337600  7F C3 02 14 */	add r30, r3, r0
/* 80337604  7F C5 F2 14 */	add r30, r5, r30
/* 80337608  54 80 06 F6 */	rlwinm r0, r4, 0, 0x1b, 0x1b
/* 8033760C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80337610  41 82 00 14 */	beq lbl_80337624
/* 80337614  40 80 01 70 */	bge lbl_80337784
/* 80337618  2C 00 00 00 */	cmpwi r0, 0
/* 8033761C  41 82 01 68 */	beq lbl_80337784
/* 80337620  48 00 01 64 */	b lbl_80337784
lbl_80337624:
/* 80337624  88 07 00 00 */	lbz r0, 0(r7)
/* 80337628  2C 00 00 02 */	cmpwi r0, 2
/* 8033762C  41 82 00 A0 */	beq lbl_803376CC
/* 80337630  40 80 00 14 */	bge lbl_80337644
/* 80337634  2C 00 00 00 */	cmpwi r0, 0
/* 80337638  41 82 00 18 */	beq lbl_80337650
/* 8033763C  40 80 00 4C */	bge lbl_80337688
/* 80337640  48 00 01 30 */	b lbl_80337770
lbl_80337644:
/* 80337644  2C 00 00 04 */	cmpwi r0, 4
/* 80337648  40 80 01 28 */	bge lbl_80337770
/* 8033764C  48 00 00 C4 */	b lbl_80337710
lbl_80337650:
/* 80337650  38 60 00 08 */	li r3, 8
/* 80337654  4B F9 75 F9 */	bl __nw__FUl
/* 80337658  28 03 00 00 */	cmplwi r3, 0
/* 8033765C  41 82 00 24 */	beq lbl_80337680
/* 80337660  A0 BE 00 00 */	lhz r5, 0(r30)
/* 80337664  3C 80 80 3D */	lis r4, __vt__11J3DShapeMtx@ha
/* 80337668  38 04 DC 44 */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 8033766C  90 03 00 00 */	stw r0, 0(r3)
/* 80337670  B0 A3 00 04 */	sth r5, 4(r3)
/* 80337674  3C 80 80 3D */	lis r4, __vt__21J3DShapeMtxConcatView@ha
/* 80337678  38 04 DC 1C */	addi r0, r4, __vt__21J3DShapeMtxConcatView@l
/* 8033767C  90 03 00 00 */	stw r0, 0(r3)
lbl_80337680:
/* 80337680  7C 7F 1B 78 */	mr r31, r3
/* 80337684  48 00 01 AC */	b lbl_80337830
lbl_80337688:
/* 80337688  38 60 00 08 */	li r3, 8
/* 8033768C  4B F9 75 C1 */	bl __nw__FUl
/* 80337690  28 03 00 00 */	cmplwi r3, 0
/* 80337694  41 82 00 30 */	beq lbl_803376C4
/* 80337698  A0 BE 00 00 */	lhz r5, 0(r30)
/* 8033769C  3C 80 80 3D */	lis r4, __vt__11J3DShapeMtx@ha
/* 803376A0  38 04 DC 44 */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 803376A4  90 03 00 00 */	stw r0, 0(r3)
/* 803376A8  B0 A3 00 04 */	sth r5, 4(r3)
/* 803376AC  3C 80 80 3D */	lis r4, __vt__21J3DShapeMtxConcatView@ha
/* 803376B0  38 04 DC 1C */	addi r0, r4, __vt__21J3DShapeMtxConcatView@l
/* 803376B4  90 03 00 00 */	stw r0, 0(r3)
/* 803376B8  3C 80 80 3D */	lis r4, __vt__27J3DShapeMtxBBoardConcatView@ha
/* 803376BC  38 04 DB AC */	addi r0, r4, __vt__27J3DShapeMtxBBoardConcatView@l
/* 803376C0  90 03 00 00 */	stw r0, 0(r3)
lbl_803376C4:
/* 803376C4  7C 7F 1B 78 */	mr r31, r3
/* 803376C8  48 00 01 68 */	b lbl_80337830
lbl_803376CC:
/* 803376CC  38 60 00 08 */	li r3, 8
/* 803376D0  4B F9 75 7D */	bl __nw__FUl
/* 803376D4  28 03 00 00 */	cmplwi r3, 0
/* 803376D8  41 82 00 30 */	beq lbl_80337708
/* 803376DC  A0 BE 00 00 */	lhz r5, 0(r30)
/* 803376E0  3C 80 80 3D */	lis r4, __vt__11J3DShapeMtx@ha
/* 803376E4  38 04 DC 44 */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 803376E8  90 03 00 00 */	stw r0, 0(r3)
/* 803376EC  B0 A3 00 04 */	sth r5, 4(r3)
/* 803376F0  3C 80 80 3D */	lis r4, __vt__21J3DShapeMtxConcatView@ha
/* 803376F4  38 04 DC 1C */	addi r0, r4, __vt__21J3DShapeMtxConcatView@l
/* 803376F8  90 03 00 00 */	stw r0, 0(r3)
/* 803376FC  3C 80 80 3D */	lis r4, __vt__28J3DShapeMtxYBBoardConcatView@ha
/* 80337700  38 04 DB 84 */	addi r0, r4, __vt__28J3DShapeMtxYBBoardConcatView@l
/* 80337704  90 03 00 00 */	stw r0, 0(r3)
lbl_80337708:
/* 80337708  7C 7F 1B 78 */	mr r31, r3
/* 8033770C  48 00 01 24 */	b lbl_80337830
lbl_80337710:
/* 80337710  38 60 00 10 */	li r3, 0x10
/* 80337714  4B F9 75 39 */	bl __nw__FUl
/* 80337718  28 03 00 00 */	cmplwi r3, 0
/* 8033771C  41 82 00 4C */	beq lbl_80337768
/* 80337720  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80337724  80 1E 00 04 */	lwz r0, 4(r30)
/* 80337728  54 00 08 3C */	slwi r0, r0, 1
/* 8033772C  7C E4 02 14 */	add r7, r4, r0
/* 80337730  A0 DE 00 02 */	lhz r6, 2(r30)
/* 80337734  A0 BE 00 00 */	lhz r5, 0(r30)
/* 80337738  3C 80 80 3D */	lis r4, __vt__11J3DShapeMtx@ha
/* 8033773C  38 04 DC 44 */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 80337740  90 03 00 00 */	stw r0, 0(r3)
/* 80337744  B0 A3 00 04 */	sth r5, 4(r3)
/* 80337748  3C 80 80 3D */	lis r4, __vt__21J3DShapeMtxConcatView@ha
/* 8033774C  38 04 DC 1C */	addi r0, r4, __vt__21J3DShapeMtxConcatView@l
/* 80337750  90 03 00 00 */	stw r0, 0(r3)
/* 80337754  3C 80 80 3D */	lis r4, __vt__26J3DShapeMtxMultiConcatView@ha
/* 80337758  38 04 DB D4 */	addi r0, r4, __vt__26J3DShapeMtxMultiConcatView@l
/* 8033775C  90 03 00 00 */	stw r0, 0(r3)
/* 80337760  B0 C3 00 08 */	sth r6, 8(r3)
/* 80337764  90 E3 00 0C */	stw r7, 0xc(r3)
lbl_80337768:
/* 80337768  7C 7F 1B 78 */	mr r31, r3
/* 8033776C  48 00 00 C4 */	b lbl_80337830
lbl_80337770:
/* 80337770  3C 60 80 3A */	lis r3, J3DShapeFactory__stringBase0@ha
/* 80337774  38 63 21 00 */	addi r3, r3, J3DShapeFactory__stringBase0@l
/* 80337778  4C C6 31 82 */	crclr 6
/* 8033777C  4B CC F3 41 */	bl OSReport
/* 80337780  48 00 00 B0 */	b lbl_80337830
lbl_80337784:
/* 80337784  88 07 00 00 */	lbz r0, 0(r7)
/* 80337788  2C 00 00 03 */	cmpwi r0, 3
/* 8033778C  41 82 00 40 */	beq lbl_803377CC
/* 80337790  40 80 00 90 */	bge lbl_80337820
/* 80337794  2C 00 00 00 */	cmpwi r0, 0
/* 80337798  40 80 00 08 */	bge lbl_803377A0
/* 8033779C  48 00 00 84 */	b lbl_80337820
lbl_803377A0:
/* 803377A0  38 60 00 08 */	li r3, 8
/* 803377A4  4B F9 74 A9 */	bl __nw__FUl
/* 803377A8  28 03 00 00 */	cmplwi r3, 0
/* 803377AC  41 82 00 18 */	beq lbl_803377C4
/* 803377B0  A0 BE 00 00 */	lhz r5, 0(r30)
/* 803377B4  3C 80 80 3D */	lis r4, __vt__11J3DShapeMtx@ha
/* 803377B8  38 04 DC 44 */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 803377BC  90 03 00 00 */	stw r0, 0(r3)
/* 803377C0  B0 A3 00 04 */	sth r5, 4(r3)
lbl_803377C4:
/* 803377C4  7C 7F 1B 78 */	mr r31, r3
/* 803377C8  48 00 00 68 */	b lbl_80337830
lbl_803377CC:
/* 803377CC  38 60 00 10 */	li r3, 0x10
/* 803377D0  4B F9 74 7D */	bl __nw__FUl
/* 803377D4  28 03 00 00 */	cmplwi r3, 0
/* 803377D8  41 82 00 40 */	beq lbl_80337818
/* 803377DC  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 803377E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 803377E4  54 00 08 3C */	slwi r0, r0, 1
/* 803377E8  7C E4 02 14 */	add r7, r4, r0
/* 803377EC  A0 DE 00 02 */	lhz r6, 2(r30)
/* 803377F0  A0 BE 00 00 */	lhz r5, 0(r30)
/* 803377F4  3C 80 80 3D */	lis r4, __vt__11J3DShapeMtx@ha
/* 803377F8  38 04 DC 44 */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 803377FC  90 03 00 00 */	stw r0, 0(r3)
/* 80337800  B0 A3 00 04 */	sth r5, 4(r3)
/* 80337804  3C 80 80 3D */	lis r4, __vt__16J3DShapeMtxMulti@ha
/* 80337808  38 04 DB FC */	addi r0, r4, __vt__16J3DShapeMtxMulti@l
/* 8033780C  90 03 00 00 */	stw r0, 0(r3)
/* 80337810  B0 C3 00 08 */	sth r6, 8(r3)
/* 80337814  90 E3 00 0C */	stw r7, 0xc(r3)
lbl_80337818:
/* 80337818  7C 7F 1B 78 */	mr r31, r3
/* 8033781C  48 00 00 14 */	b lbl_80337830
lbl_80337820:
/* 80337820  3C 60 80 3A */	lis r3, J3DShapeFactory__stringBase0@ha
/* 80337824  38 63 21 00 */	addi r3, r3, J3DShapeFactory__stringBase0@l
/* 80337828  4C C6 31 82 */	crclr 6
/* 8033782C  4B CC F2 91 */	bl OSReport
lbl_80337830:
/* 80337830  7F E3 FB 78 */	mr r3, r31
/* 80337834  39 61 00 20 */	addi r11, r1, 0x20
/* 80337838  48 02 A9 F1 */	bl _restgpr_29
/* 8033783C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80337840  7C 08 03 A6 */	mtlr r0
/* 80337844  38 21 00 20 */	addi r1, r1, 0x20
/* 80337848  4E 80 00 20 */	blr 
