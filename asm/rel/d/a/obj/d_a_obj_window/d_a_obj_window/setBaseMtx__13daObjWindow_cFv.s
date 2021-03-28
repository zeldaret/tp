lbl_80D387B8:
/* 80D387B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D387BC  7C 08 02 A6 */	mflr r0
/* 80D387C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D387C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D387C8  7C 7F 1B 78 */	mr r31, r3
/* 80D387CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D387D0  4B 2D 45 94 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D387D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D387D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D387DC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D387E0  4B 2D 3C 54 */	b mDoMtx_YrotM__FPA4_fs
/* 80D387E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D387E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D387EC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D387F0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D387F4  4B 60 DC BC */	b PSMTXCopy
/* 80D387F8  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80D387FC  28 00 00 00 */	cmplwi r0, 0
/* 80D38800  41 82 00 1C */	beq lbl_80D3881C
/* 80D38804  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D38808  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D3880C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D38810  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D38814  4B 60 DC 9C */	b PSMTXCopy
/* 80D38818  48 00 00 14 */	b lbl_80D3882C
lbl_80D3881C:
/* 80D3881C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D38820  38 63 00 24 */	addi r3, r3, 0x24
/* 80D38824  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D38828  4B 60 DC 88 */	b PSMTXCopy
lbl_80D3882C:
/* 80D3882C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D38830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38834  7C 08 03 A6 */	mtlr r0
/* 80D38838  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3883C  4E 80 00 20 */	blr 
