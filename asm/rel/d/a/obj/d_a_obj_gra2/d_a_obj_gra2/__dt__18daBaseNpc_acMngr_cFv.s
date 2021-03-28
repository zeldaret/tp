lbl_80C04E54:
/* 80C04E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04E58  7C 08 02 A6 */	mflr r0
/* 80C04E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04E64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C04E68  41 82 00 1C */	beq lbl_80C04E84
/* 80C04E6C  3C A0 80 C1 */	lis r5, __vt__18daBaseNpc_acMngr_c@ha
/* 80C04E70  38 05 08 4C */	addi r0, r5, __vt__18daBaseNpc_acMngr_c@l
/* 80C04E74  90 1F 00 00 */	stw r0, 0(r31)
/* 80C04E78  7C 80 07 35 */	extsh. r0, r4
/* 80C04E7C  40 81 00 08 */	ble lbl_80C04E84
/* 80C04E80  4B 6C 9E BC */	b __dl__FPv
lbl_80C04E84:
/* 80C04E84  7F E3 FB 78 */	mr r3, r31
/* 80C04E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04E90  7C 08 03 A6 */	mtlr r0
/* 80C04E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04E98  4E 80 00 20 */	blr 
