lbl_80258BC8:
/* 80258BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80258BCC  7C 08 02 A6 */	mflr r0
/* 80258BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80258BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80258BD8  7C 7F 1B 78 */	mr r31, r3
/* 80258BDC  4B DC 59 7D */	bl fopOvlpM_IsPeek__Fv
/* 80258BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80258BE4  40 82 00 0C */	bne lbl_80258BF0
/* 80258BE8  7F E3 FB 78 */	mr r3, r31
/* 80258BEC  4B DD 41 59 */	bl dComIfG_resetToOpening__FP11scene_class
lbl_80258BF0:
/* 80258BF0  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80258BF4  80 03 00 00 */	lwz r0, 0(r3)
/* 80258BF8  2C 00 00 00 */	cmpwi r0, 0
/* 80258BFC  41 82 00 28 */	beq lbl_80258C24
/* 80258C00  88 1F 04 20 */	lbz r0, 0x420(r31)
/* 80258C04  28 00 00 00 */	cmplwi r0, 0
/* 80258C08  40 82 00 1C */	bne lbl_80258C24
/* 80258C0C  80 7F 04 14 */	lwz r3, 0x414(r31)
/* 80258C10  88 03 23 74 */	lbz r0, 0x2374(r3)
/* 80258C14  28 00 00 00 */	cmplwi r0, 0
/* 80258C18  40 82 00 0C */	bne lbl_80258C24
/* 80258C1C  38 60 00 01 */	li r3, 1
/* 80258C20  48 00 00 28 */	b lbl_80258C48
lbl_80258C24:
/* 80258C24  7F E3 FB 78 */	mr r3, r31
/* 80258C28  88 1F 04 1D */	lbz r0, 0x41d(r31)
/* 80258C2C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80258C30  3C 80 80 3C */	lis r4, MainProc@ha
/* 80258C34  38 04 30 94 */	addi r0, r4, MainProc@l
/* 80258C38  7D 80 2A 14 */	add r12, r0, r5
/* 80258C3C  48 10 94 49 */	bl __ptmf_scall
/* 80258C40  60 00 00 00 */	nop 
/* 80258C44  38 60 00 01 */	li r3, 1
lbl_80258C48:
/* 80258C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80258C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258C50  7C 08 03 A6 */	mtlr r0
/* 80258C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80258C58  4E 80 00 20 */	blr 
