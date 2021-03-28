lbl_80C7A668:
/* 80C7A668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A66C  7C 08 02 A6 */	mflr r0
/* 80C7A670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A678  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7A67C  41 82 00 1C */	beq lbl_80C7A698
/* 80C7A680  3C A0 80 C8 */	lis r5, __vt__8cM3dGLin@ha
/* 80C7A684  38 05 CA 04 */	addi r0, r5, __vt__8cM3dGLin@l
/* 80C7A688  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C7A68C  7C 80 07 35 */	extsh. r0, r4
/* 80C7A690  40 81 00 08 */	ble lbl_80C7A698
/* 80C7A694  4B 65 46 A8 */	b __dl__FPv
lbl_80C7A698:
/* 80C7A698  7F E3 FB 78 */	mr r3, r31
/* 80C7A69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A6A4  7C 08 03 A6 */	mtlr r0
/* 80C7A6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A6AC  4E 80 00 20 */	blr 
