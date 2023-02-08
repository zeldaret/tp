lbl_80B2CD94:
/* 80B2CD94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2CD98  7C 08 02 A6 */	mflr r0
/* 80B2CD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2CDA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2CDA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2CDA8  41 82 00 1C */	beq lbl_80B2CDC4
/* 80B2CDAC  3C A0 80 B3 */	lis r5, __vt__17daNpc_Uri_Param_c@ha /* 0x80B2DD00@ha */
/* 80B2CDB0  38 05 DD 00 */	addi r0, r5, __vt__17daNpc_Uri_Param_c@l /* 0x80B2DD00@l */
/* 80B2CDB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B2CDB8  7C 80 07 35 */	extsh. r0, r4
/* 80B2CDBC  40 81 00 08 */	ble lbl_80B2CDC4
/* 80B2CDC0  4B 7A 1F 7D */	bl __dl__FPv
lbl_80B2CDC4:
/* 80B2CDC4  7F E3 FB 78 */	mr r3, r31
/* 80B2CDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2CDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2CDD0  7C 08 03 A6 */	mtlr r0
/* 80B2CDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2CDD8  4E 80 00 20 */	blr 
