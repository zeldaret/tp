lbl_800D0F5C:
/* 800D0F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0F60  7C 08 02 A6 */	mflr r0
/* 800D0F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0F68  48 08 E4 31 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 800D0F6C  2C 03 00 00 */	cmpwi r3, 0
/* 800D0F70  38 60 00 02 */	li r3, 2
/* 800D0F74  41 82 00 0C */	beq lbl_800D0F80
/* 800D0F78  3C 60 04 00 */	lis r3, 0x0400 /* 0x04000002@ha */
/* 800D0F7C  38 63 00 02 */	addi r3, r3, 0x0002 /* 0x04000002@l */
lbl_800D0F80:
/* 800D0F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0F84  7C 08 03 A6 */	mtlr r0
/* 800D0F88  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0F8C  4E 80 00 20 */	blr 
