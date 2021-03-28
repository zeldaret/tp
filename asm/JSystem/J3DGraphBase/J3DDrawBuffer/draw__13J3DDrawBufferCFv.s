lbl_803254AC:
/* 803254AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803254B0  7C 08 02 A6 */	mflr r0
/* 803254B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803254B8  80 03 00 08 */	lwz r0, 8(r3)
/* 803254BC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 803254C0  3C 80 80 3D */	lis r4, drawFuncTable__13J3DDrawBuffer@ha
/* 803254C4  38 04 EC 90 */	addi r0, r4, drawFuncTable__13J3DDrawBuffer@l
/* 803254C8  7C A0 2A 14 */	add r5, r0, r5
/* 803254CC  80 85 00 00 */	lwz r4, 0(r5)
/* 803254D0  80 05 00 04 */	lwz r0, 4(r5)
/* 803254D4  90 81 00 08 */	stw r4, 8(r1)
/* 803254D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803254DC  80 05 00 08 */	lwz r0, 8(r5)
/* 803254E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803254E4  39 81 00 08 */	addi r12, r1, 8
/* 803254E8  48 03 CB 9D */	bl __ptmf_scall
/* 803254EC  60 00 00 00 */	nop 
/* 803254F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803254F4  7C 08 03 A6 */	mtlr r0
/* 803254F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803254FC  4E 80 00 20 */	blr 
