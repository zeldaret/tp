lbl_80036AA4:
/* 80036AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80036AA8  7C 08 02 A6 */	mflr r0
/* 80036AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80036AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80036AB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80036AB8  41 82 00 1C */	beq lbl_80036AD4
/* 80036ABC  3C A0 80 3A */	lis r5, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 80036AC0  38 05 79 04 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 80036AC4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80036AC8  7C 80 07 35 */	extsh. r0, r4
/* 80036ACC  40 81 00 08 */	ble lbl_80036AD4
/* 80036AD0  48 29 82 6D */	bl __dl__FPv
lbl_80036AD4:
/* 80036AD4  7F E3 FB 78 */	mr r3, r31
/* 80036AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80036ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80036AE0  7C 08 03 A6 */	mtlr r0
/* 80036AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80036AE8  4E 80 00 20 */	blr 
