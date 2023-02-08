lbl_80599DD0:
/* 80599DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599DD4  7C 08 02 A6 */	mflr r0
/* 80599DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599DE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80599DE4  41 82 00 1C */	beq lbl_80599E00
/* 80599DE8  3C A0 80 5A */	lis r5, __vt__19daObj_Stick_Param_c@ha /* 0x80599F70@ha */
/* 80599DEC  38 05 9F 70 */	addi r0, r5, __vt__19daObj_Stick_Param_c@l /* 0x80599F70@l */
/* 80599DF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80599DF4  7C 80 07 35 */	extsh. r0, r4
/* 80599DF8  40 81 00 08 */	ble lbl_80599E00
/* 80599DFC  4B D3 4F 41 */	bl __dl__FPv
lbl_80599E00:
/* 80599E00  7F E3 FB 78 */	mr r3, r31
/* 80599E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599E0C  7C 08 03 A6 */	mtlr r0
/* 80599E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80599E14  4E 80 00 20 */	blr 
