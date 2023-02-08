lbl_809BE434:
/* 809BE434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE438  7C 08 02 A6 */	mflr r0
/* 809BE43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BE444  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BE448  41 82 00 1C */	beq lbl_809BE464
/* 809BE44C  3C A0 80 9C */	lis r5, __vt__17daNpc_Gnd_Param_c@ha /* 0x809BE834@ha */
/* 809BE450  38 05 E8 34 */	addi r0, r5, __vt__17daNpc_Gnd_Param_c@l /* 0x809BE834@l */
/* 809BE454  90 1F 00 00 */	stw r0, 0(r31)
/* 809BE458  7C 80 07 35 */	extsh. r0, r4
/* 809BE45C  40 81 00 08 */	ble lbl_809BE464
/* 809BE460  4B 91 08 DD */	bl __dl__FPv
lbl_809BE464:
/* 809BE464  7F E3 FB 78 */	mr r3, r31
/* 809BE468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BE46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE470  7C 08 03 A6 */	mtlr r0
/* 809BE474  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE478  4E 80 00 20 */	blr 
