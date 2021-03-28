lbl_80313B94:
/* 80313B94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80313B98  7C 08 02 A6 */	mflr r0
/* 80313B9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80313BA0  80 0D 90 28 */	lwz r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 80313BA4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80313BA8  3C 80 80 3D */	lis r4, sMtxLoadPipeline__11J3DShapeMtx@ha
/* 80313BAC  38 04 D9 C0 */	addi r0, r4, sMtxLoadPipeline__11J3DShapeMtx@l
/* 80313BB0  7C A0 2A 14 */	add r5, r0, r5
/* 80313BB4  80 85 00 00 */	lwz r4, 0(r5)
/* 80313BB8  80 05 00 04 */	lwz r0, 4(r5)
/* 80313BBC  90 81 00 08 */	stw r4, 8(r1)
/* 80313BC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80313BC4  80 05 00 08 */	lwz r0, 8(r5)
/* 80313BC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80313BCC  38 80 00 00 */	li r4, 0
/* 80313BD0  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80313BD4  39 81 00 08 */	addi r12, r1, 8
/* 80313BD8  48 04 E4 AD */	bl __ptmf_scall
/* 80313BDC  60 00 00 00 */	nop 
/* 80313BE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80313BE4  7C 08 03 A6 */	mtlr r0
/* 80313BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80313BEC  4E 80 00 20 */	blr 
