lbl_8095D5D4:
/* 8095D5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095D5D8  7C 08 02 A6 */	mflr r0
/* 8095D5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095D5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095D5E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095D5E8  41 82 00 1C */	beq lbl_8095D604
/* 8095D5EC  3C A0 80 96 */	lis r5, __vt__16daNpcAsh_Param_c@ha
/* 8095D5F0  38 05 DD 2C */	addi r0, r5, __vt__16daNpcAsh_Param_c@l
/* 8095D5F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8095D5F8  7C 80 07 35 */	extsh. r0, r4
/* 8095D5FC  40 81 00 08 */	ble lbl_8095D604
/* 8095D600  4B 97 17 3C */	b __dl__FPv
lbl_8095D604:
/* 8095D604  7F E3 FB 78 */	mr r3, r31
/* 8095D608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095D60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095D610  7C 08 03 A6 */	mtlr r0
/* 8095D614  38 21 00 10 */	addi r1, r1, 0x10
/* 8095D618  4E 80 00 20 */	blr 
