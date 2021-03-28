lbl_8065B760:
/* 8065B760  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8065B764  7C 08 02 A6 */	mflr r0
/* 8065B768  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065B76C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8065B770  7C 9F 23 78 */	mr r31, r4
/* 8065B774  4B FF D3 31 */	bl isChaseCowGame__7daCow_cFv
/* 8065B778  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065B77C  41 82 00 0C */	beq lbl_8065B788
/* 8065B780  38 60 00 00 */	li r3, 0
/* 8065B784  48 00 01 10 */	b lbl_8065B894
lbl_8065B788:
/* 8065B788  38 61 00 14 */	addi r3, r1, 0x14
/* 8065B78C  7F E4 FB 78 */	mr r4, r31
/* 8065B790  3C A0 80 66 */	lis r5, data_806634C4@ha
/* 8065B794  38 A5 34 C4 */	addi r5, r5, data_806634C4@l
/* 8065B798  4B C0 B3 9C */	b __mi__4cXyzCFRC3Vec
/* 8065B79C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8065B7A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8065B7A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8065B7A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8065B7AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8065B7B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065B7B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065B7B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065B7BC  3C 80 80 66 */	lis r4, struct_80662FB8+0x2@ha
/* 8065B7C0  38 84 2F BA */	addi r4, r4, struct_80662FB8+0x2@l
/* 8065B7C4  A8 84 00 00 */	lha r4, 0(r4)
/* 8065B7C8  4B 9B 0C 14 */	b mDoMtx_YrotS__FPA4_fs
/* 8065B7CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065B7D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065B7D4  38 81 00 20 */	addi r4, r1, 0x20
/* 8065B7D8  7C 85 23 78 */	mr r5, r4
/* 8065B7DC  4B CE B6 70 */	b PSMTXMultVecSR
/* 8065B7E0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8065B7E4  3C 60 80 66 */	lis r3, lit_3998@ha
/* 8065B7E8  C0 03 2D C8 */	lfs f0, lit_3998@l(r3)
/* 8065B7EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065B7F0  40 81 00 28 */	ble lbl_8065B818
/* 8065B7F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8065B7F8  FC 00 02 10 */	fabs f0, f0
/* 8065B7FC  FC 20 00 18 */	frsp f1, f0
/* 8065B800  3C 60 80 66 */	lis r3, lit_5409@ha
/* 8065B804  C0 03 2E 68 */	lfs f0, lit_5409@l(r3)
/* 8065B808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065B80C  40 80 00 0C */	bge lbl_8065B818
/* 8065B810  38 60 00 01 */	li r3, 1
/* 8065B814  48 00 00 80 */	b lbl_8065B894
lbl_8065B818:
/* 8065B818  38 61 00 08 */	addi r3, r1, 8
/* 8065B81C  7F E4 FB 78 */	mr r4, r31
/* 8065B820  3C A0 80 66 */	lis r5, data_806634AC@ha
/* 8065B824  38 A5 34 AC */	addi r5, r5, data_806634AC@l
/* 8065B828  4B C0 B3 0C */	b __mi__4cXyzCFRC3Vec
/* 8065B82C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8065B830  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8065B834  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8065B838  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8065B83C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8065B840  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065B844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065B848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065B84C  3C 80 80 66 */	lis r4, struct_80662FB8+0x0@ha
/* 8065B850  A8 04 2F B8 */	lha r0, struct_80662FB8+0x0@l(r4)
/* 8065B854  7C 00 00 D0 */	neg r0, r0
/* 8065B858  7C 04 07 34 */	extsh r4, r0
/* 8065B85C  4B 9B 0B 80 */	b mDoMtx_YrotS__FPA4_fs
/* 8065B860  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065B864  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065B868  38 81 00 20 */	addi r4, r1, 0x20
/* 8065B86C  7C 85 23 78 */	mr r5, r4
/* 8065B870  4B CE B5 DC */	b PSMTXMultVecSR
/* 8065B874  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8065B878  3C 60 80 66 */	lis r3, lit_3998@ha
/* 8065B87C  C0 03 2D C8 */	lfs f0, lit_3998@l(r3)
/* 8065B880  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065B884  40 81 00 0C */	ble lbl_8065B890
/* 8065B888  38 60 00 02 */	li r3, 2
/* 8065B88C  48 00 00 08 */	b lbl_8065B894
lbl_8065B890:
/* 8065B890  38 60 00 00 */	li r3, 0
lbl_8065B894:
/* 8065B894  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8065B898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8065B89C  7C 08 03 A6 */	mtlr r0
/* 8065B8A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8065B8A4  4E 80 00 20 */	blr 
