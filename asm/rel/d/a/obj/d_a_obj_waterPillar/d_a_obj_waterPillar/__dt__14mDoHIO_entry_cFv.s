lbl_80D2C768:
/* 80D2C768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C76C  7C 08 02 A6 */	mflr r0
/* 80D2C770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2C778  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2C77C  41 82 00 1C */	beq lbl_80D2C798
/* 80D2C780  3C A0 80 D3 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D2EB1C@ha */
/* 80D2C784  38 05 EB 1C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D2EB1C@l */
/* 80D2C788  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2C78C  7C 80 07 35 */	extsh. r0, r4
/* 80D2C790  40 81 00 08 */	ble lbl_80D2C798
/* 80D2C794  4B 5A 25 A9 */	bl __dl__FPv
lbl_80D2C798:
/* 80D2C798  7F E3 FB 78 */	mr r3, r31
/* 80D2C79C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2C7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C7A4  7C 08 03 A6 */	mtlr r0
/* 80D2C7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C7AC  4E 80 00 20 */	blr 
