lbl_80AB17DC:
/* 80AB17DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB17E0  7C 08 02 A6 */	mflr r0
/* 80AB17E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB17E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB17EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB17F0  41 82 00 1C */	beq lbl_80AB180C
/* 80AB17F4  3C A0 80 AB */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB17F8  38 05 2B D8 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80AB17FC  90 1F 00 04 */	stw r0, 4(r31)
/* 80AB1800  7C 80 07 35 */	extsh. r0, r4
/* 80AB1804  40 81 00 08 */	ble lbl_80AB180C
/* 80AB1808  4B 81 D5 34 */	b __dl__FPv
lbl_80AB180C:
/* 80AB180C  7F E3 FB 78 */	mr r3, r31
/* 80AB1810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB1814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1818  7C 08 03 A6 */	mtlr r0
/* 80AB181C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1820  4E 80 00 20 */	blr 
