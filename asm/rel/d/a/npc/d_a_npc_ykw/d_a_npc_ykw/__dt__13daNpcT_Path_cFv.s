lbl_80B66CBC:
/* 80B66CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66CC0  7C 08 02 A6 */	mflr r0
/* 80B66CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66CCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B66CD0  41 82 00 1C */	beq lbl_80B66CEC
/* 80B66CD4  3C A0 80 B7 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80B68C84@ha */
/* 80B66CD8  38 05 8C 84 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80B68C84@l */
/* 80B66CDC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B66CE0  7C 80 07 35 */	extsh. r0, r4
/* 80B66CE4  40 81 00 08 */	ble lbl_80B66CEC
/* 80B66CE8  4B 76 80 55 */	bl __dl__FPv
lbl_80B66CEC:
/* 80B66CEC  7F E3 FB 78 */	mr r3, r31
/* 80B66CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66CF8  7C 08 03 A6 */	mtlr r0
/* 80B66CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66D00  4E 80 00 20 */	blr 
