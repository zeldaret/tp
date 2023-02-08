lbl_800EF35C:
/* 800EF35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EF360  7C 08 02 A6 */	mflr r0
/* 800EF364  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EF368  38 80 FF FC */	li r4, -4
/* 800EF36C  38 A0 00 01 */	li r5, 1
/* 800EF370  38 C0 00 00 */	li r6, 0
/* 800EF374  38 E0 00 00 */	li r7, 0
/* 800EF378  39 00 00 00 */	li r8, 0
/* 800EF37C  39 20 00 00 */	li r9, 0
/* 800EF380  4B FE A3 5D */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800EF384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EF388  7C 08 03 A6 */	mtlr r0
/* 800EF38C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EF390  4E 80 00 20 */	blr 
