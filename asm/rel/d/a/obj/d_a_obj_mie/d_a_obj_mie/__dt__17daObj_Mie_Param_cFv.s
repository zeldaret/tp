lbl_80C95A40:
/* 80C95A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95A44  7C 08 02 A6 */	mflr r0
/* 80C95A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C95A50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C95A54  41 82 00 1C */	beq lbl_80C95A70
/* 80C95A58  3C A0 80 C9 */	lis r5, __vt__17daObj_Mie_Param_c@ha
/* 80C95A5C  38 05 5C B8 */	addi r0, r5, __vt__17daObj_Mie_Param_c@l
/* 80C95A60  90 1F 00 00 */	stw r0, 0(r31)
/* 80C95A64  7C 80 07 35 */	extsh. r0, r4
/* 80C95A68  40 81 00 08 */	ble lbl_80C95A70
/* 80C95A6C  4B 63 92 D0 */	b __dl__FPv
lbl_80C95A70:
/* 80C95A70  7F E3 FB 78 */	mr r3, r31
/* 80C95A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C95A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95A7C  7C 08 03 A6 */	mtlr r0
/* 80C95A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95A84  4E 80 00 20 */	blr 
