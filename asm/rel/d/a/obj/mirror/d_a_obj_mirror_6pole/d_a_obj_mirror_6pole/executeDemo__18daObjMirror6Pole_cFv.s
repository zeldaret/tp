lbl_80C95E8C:
/* 80C95E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95E90  7C 08 02 A6 */	mflr r0
/* 80C95E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C95E9C  7C 7F 1B 78 */	mr r31, r3
/* 80C95EA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C95EA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C95EA8  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80C95EAC  28 00 00 00 */	cmplwi r0, 0
/* 80C95EB0  40 82 00 30 */	bne lbl_80C95EE0
/* 80C95EB4  38 00 00 00 */	li r0, 0
/* 80C95EB8  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80C95EBC  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80C95EC0  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80C95EC4  3C 80 80 C9 */	lis r4, ActionTable__18daObjMirror6Pole_c@ha /* 0x80C96580@ha */
/* 80C95EC8  38 04 65 80 */	addi r0, r4, ActionTable__18daObjMirror6Pole_c@l /* 0x80C96580@l */
/* 80C95ECC  7C 00 2A 14 */	add r0, r0, r5
/* 80C95ED0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80C95ED4  81 9F 05 78 */	lwz r12, 0x578(r31)
/* 80C95ED8  4B 6C C1 AD */	bl __ptmf_scall
/* 80C95EDC  60 00 00 00 */	nop 
lbl_80C95EE0:
/* 80C95EE0  7F E3 FB 78 */	mr r3, r31
/* 80C95EE4  48 00 00 19 */	bl setBaseMtx__18daObjMirror6Pole_cFv
/* 80C95EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C95EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95EF0  7C 08 03 A6 */	mtlr r0
/* 80C95EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95EF8  4E 80 00 20 */	blr 
