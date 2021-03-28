lbl_8061E9EC:
/* 8061E9EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061E9F0  7C 08 02 A6 */	mflr r0
/* 8061E9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061E9F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061E9FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061EA00  41 82 00 10 */	beq lbl_8061EA10
/* 8061EA04  7C 80 07 35 */	extsh. r0, r4
/* 8061EA08  40 81 00 08 */	ble lbl_8061EA10
/* 8061EA0C  4B CB 03 30 */	b __dl__FPv
lbl_8061EA10:
/* 8061EA10  7F E3 FB 78 */	mr r3, r31
/* 8061EA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061EA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061EA1C  7C 08 03 A6 */	mtlr r0
/* 8061EA20  38 21 00 10 */	addi r1, r1, 0x10
/* 8061EA24  4E 80 00 20 */	blr 
