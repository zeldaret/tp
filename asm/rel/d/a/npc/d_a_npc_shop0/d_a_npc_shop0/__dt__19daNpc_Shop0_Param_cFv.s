lbl_80AEBB14:
/* 80AEBB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBB18  7C 08 02 A6 */	mflr r0
/* 80AEBB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEBB24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEBB28  41 82 00 1C */	beq lbl_80AEBB44
/* 80AEBB2C  3C A0 80 AF */	lis r5, __vt__19daNpc_Shop0_Param_c@ha /* 0x80AEBD0C@ha */
/* 80AEBB30  38 05 BD 0C */	addi r0, r5, __vt__19daNpc_Shop0_Param_c@l /* 0x80AEBD0C@l */
/* 80AEBB34  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEBB38  7C 80 07 35 */	extsh. r0, r4
/* 80AEBB3C  40 81 00 08 */	ble lbl_80AEBB44
/* 80AEBB40  4B 7E 31 FD */	bl __dl__FPv
lbl_80AEBB44:
/* 80AEBB44  7F E3 FB 78 */	mr r3, r31
/* 80AEBB48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEBB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBB50  7C 08 03 A6 */	mtlr r0
/* 80AEBB54  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBB58  4E 80 00 20 */	blr 
