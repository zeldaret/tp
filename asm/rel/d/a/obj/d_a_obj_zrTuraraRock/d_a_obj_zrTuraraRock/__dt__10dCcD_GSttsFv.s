lbl_80D41E94:
/* 80D41E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41E98  7C 08 02 A6 */	mflr r0
/* 80D41E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41EA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D41EA8  41 82 00 30 */	beq lbl_80D41ED8
/* 80D41EAC  3C 60 80 D4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D41EB0  38 03 25 2C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D41EB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D41EB8  41 82 00 10 */	beq lbl_80D41EC8
/* 80D41EBC  3C 60 80 D4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D41EC0  38 03 25 20 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D41EC4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D41EC8:
/* 80D41EC8  7C 80 07 35 */	extsh. r0, r4
/* 80D41ECC  40 81 00 0C */	ble lbl_80D41ED8
/* 80D41ED0  7F E3 FB 78 */	mr r3, r31
/* 80D41ED4  4B 58 CE 68 */	b __dl__FPv
lbl_80D41ED8:
/* 80D41ED8  7F E3 FB 78 */	mr r3, r31
/* 80D41EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41EE4  7C 08 03 A6 */	mtlr r0
/* 80D41EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41EEC  4E 80 00 20 */	blr 
