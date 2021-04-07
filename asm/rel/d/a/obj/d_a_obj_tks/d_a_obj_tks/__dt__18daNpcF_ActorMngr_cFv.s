lbl_80D12288:
/* 80D12288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1228C  7C 08 02 A6 */	mflr r0
/* 80D12290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12298  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1229C  41 82 00 1C */	beq lbl_80D122B8
/* 80D122A0  3C A0 80 D1 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80D12AB4@ha */
/* 80D122A4  38 05 2A B4 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80D12AB4@l */
/* 80D122A8  90 1F 00 04 */	stw r0, 4(r31)
/* 80D122AC  7C 80 07 35 */	extsh. r0, r4
/* 80D122B0  40 81 00 08 */	ble lbl_80D122B8
/* 80D122B4  4B 5B CA 89 */	bl __dl__FPv
lbl_80D122B8:
/* 80D122B8  7F E3 FB 78 */	mr r3, r31
/* 80D122BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D122C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D122C4  7C 08 03 A6 */	mtlr r0
/* 80D122C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D122CC  4E 80 00 20 */	blr 
