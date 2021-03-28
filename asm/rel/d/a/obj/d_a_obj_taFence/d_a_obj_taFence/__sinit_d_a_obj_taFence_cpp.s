lbl_80D0605C:
/* 80D0605C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06060  7C 08 02 A6 */	mflr r0
/* 80D06064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06068  3C 60 80 D0 */	lis r3, l_HIO@ha
/* 80D0606C  38 63 63 3C */	addi r3, r3, l_HIO@l
/* 80D06070  4B FF ED FD */	bl __ct__15daTaFence_HIO_cFv
/* 80D06074  3C 80 80 D0 */	lis r4, __dt__15daTaFence_HIO_cFv@ha
/* 80D06078  38 84 60 00 */	addi r4, r4, __dt__15daTaFence_HIO_cFv@l
/* 80D0607C  3C A0 80 D0 */	lis r5, lit_3645@ha
/* 80D06080  38 A5 63 30 */	addi r5, r5, lit_3645@l
/* 80D06084  4B FF ED 75 */	bl __register_global_object
/* 80D06088  3C 60 80 D0 */	lis r3, mCcDCyl__11daTaFence_c@ha
/* 80D0608C  38 63 61 C4 */	addi r3, r3, mCcDCyl__11daTaFence_c@l
/* 80D06090  38 A3 FF FC */	addi r5, r3, -4
/* 80D06094  3C 60 80 D0 */	lis r3, mCcDObjInfo__11daTaFence_c@ha
/* 80D06098  38 63 61 14 */	addi r3, r3, mCcDObjInfo__11daTaFence_c@l
/* 80D0609C  38 83 FF FC */	addi r4, r3, -4
/* 80D060A0  38 00 00 06 */	li r0, 6
/* 80D060A4  7C 09 03 A6 */	mtctr r0
lbl_80D060A8:
/* 80D060A8  80 64 00 04 */	lwz r3, 4(r4)
/* 80D060AC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D060B0  90 65 00 04 */	stw r3, 4(r5)
/* 80D060B4  94 05 00 08 */	stwu r0, 8(r5)
/* 80D060B8  42 00 FF F0 */	bdnz lbl_80D060A8
/* 80D060BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D060C0  7C 08 03 A6 */	mtlr r0
/* 80D060C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D060C8  4E 80 00 20 */	blr 
