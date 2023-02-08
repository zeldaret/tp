lbl_80C33C14:
/* 80C33C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33C18  7C 08 02 A6 */	mflr r0
/* 80C33C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C33C24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C33C28  41 82 00 1C */	beq lbl_80C33C44
/* 80C33C2C  3C A0 80 C3 */	lis r5, __vt__18daObj_Kago_Param_c@ha /* 0x80C33EEC@ha */
/* 80C33C30  38 05 3E EC */	addi r0, r5, __vt__18daObj_Kago_Param_c@l /* 0x80C33EEC@l */
/* 80C33C34  90 1F 00 00 */	stw r0, 0(r31)
/* 80C33C38  7C 80 07 35 */	extsh. r0, r4
/* 80C33C3C  40 81 00 08 */	ble lbl_80C33C44
/* 80C33C40  4B 69 B0 FD */	bl __dl__FPv
lbl_80C33C44:
/* 80C33C44  7F E3 FB 78 */	mr r3, r31
/* 80C33C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C33C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33C50  7C 08 03 A6 */	mtlr r0
/* 80C33C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33C58  4E 80 00 20 */	blr 
