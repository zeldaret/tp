lbl_80AD48C4:
/* 80AD48C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD48C8  7C 08 02 A6 */	mflr r0
/* 80AD48CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD48D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD48D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD48D8  41 82 00 1C */	beq lbl_80AD48F4
/* 80AD48DC  3C A0 80 AD */	lis r5, __vt__20daNpc_Seira2_Param_c@ha /* 0x80AD5600@ha */
/* 80AD48E0  38 05 56 00 */	addi r0, r5, __vt__20daNpc_Seira2_Param_c@l /* 0x80AD5600@l */
/* 80AD48E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD48E8  7C 80 07 35 */	extsh. r0, r4
/* 80AD48EC  40 81 00 08 */	ble lbl_80AD48F4
/* 80AD48F0  4B 7F A4 4D */	bl __dl__FPv
lbl_80AD48F4:
/* 80AD48F4  7F E3 FB 78 */	mr r3, r31
/* 80AD48F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD48FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD4900  7C 08 03 A6 */	mtlr r0
/* 80AD4904  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD4908  4E 80 00 20 */	blr 
