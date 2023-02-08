lbl_80B1DCEC:
/* 80B1DCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1DCF0  7C 08 02 A6 */	mflr r0
/* 80B1DCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1DCF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1DCFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1DD00  41 82 00 1C */	beq lbl_80B1DD1C
/* 80B1DD04  3C A0 80 B2 */	lis r5, __vt__16daNpcTks_Param_c@ha /* 0x80B1E530@ha */
/* 80B1DD08  38 05 E5 30 */	addi r0, r5, __vt__16daNpcTks_Param_c@l /* 0x80B1E530@l */
/* 80B1DD0C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B1DD10  7C 80 07 35 */	extsh. r0, r4
/* 80B1DD14  40 81 00 08 */	ble lbl_80B1DD1C
/* 80B1DD18  4B 7B 10 25 */	bl __dl__FPv
lbl_80B1DD1C:
/* 80B1DD1C  7F E3 FB 78 */	mr r3, r31
/* 80B1DD20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DD28  7C 08 03 A6 */	mtlr r0
/* 80B1DD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DD30  4E 80 00 20 */	blr 
