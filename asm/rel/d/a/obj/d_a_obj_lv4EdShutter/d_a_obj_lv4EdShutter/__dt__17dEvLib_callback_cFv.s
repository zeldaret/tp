lbl_80C5E7D4:
/* 80C5E7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E7D8  7C 08 02 A6 */	mflr r0
/* 80C5E7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E7E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5E7E8  41 82 00 1C */	beq lbl_80C5E804
/* 80C5E7EC  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80C5E9D4@ha */
/* 80C5E7F0  38 05 E9 D4 */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80C5E9D4@l */
/* 80C5E7F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5E7F8  7C 80 07 35 */	extsh. r0, r4
/* 80C5E7FC  40 81 00 08 */	ble lbl_80C5E804
/* 80C5E800  4B 67 05 3D */	bl __dl__FPv
lbl_80C5E804:
/* 80C5E804  7F E3 FB 78 */	mr r3, r31
/* 80C5E808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E810  7C 08 03 A6 */	mtlr r0
/* 80C5E814  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E818  4E 80 00 20 */	blr 
