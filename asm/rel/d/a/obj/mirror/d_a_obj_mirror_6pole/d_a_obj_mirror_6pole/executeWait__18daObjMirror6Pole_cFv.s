lbl_80C95E2C:
/* 80C95E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95E30  7C 08 02 A6 */	mflr r0
/* 80C95E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95E38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C95E3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C95E40  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80C95E44  28 00 00 00 */	cmplwi r0, 0
/* 80C95E48  41 82 00 30 */	beq lbl_80C95E78
/* 80C95E4C  38 00 00 01 */	li r0, 1
/* 80C95E50  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80C95E54  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80C95E58  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80C95E5C  3C 80 80 C9 */	lis r4, ActionTable__18daObjMirror6Pole_c@ha
/* 80C95E60  38 04 65 80 */	addi r0, r4, ActionTable__18daObjMirror6Pole_c@l
/* 80C95E64  7C 00 2A 14 */	add r0, r0, r5
/* 80C95E68  90 03 05 78 */	stw r0, 0x578(r3)
/* 80C95E6C  81 83 05 78 */	lwz r12, 0x578(r3)
/* 80C95E70  4B 6C C2 14 */	b __ptmf_scall
/* 80C95E74  60 00 00 00 */	nop 
lbl_80C95E78:
/* 80C95E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95E7C  7C 08 03 A6 */	mtlr r0
/* 80C95E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95E84  4E 80 00 20 */	blr 
