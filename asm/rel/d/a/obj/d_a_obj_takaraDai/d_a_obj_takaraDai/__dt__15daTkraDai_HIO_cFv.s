lbl_80D0775C:
/* 80D0775C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07760  7C 08 02 A6 */	mflr r0
/* 80D07764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0776C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D07770  41 82 00 30 */	beq lbl_80D077A0
/* 80D07774  3C 60 80 D0 */	lis r3, __vt__15daTkraDai_HIO_c@ha /* 0x80D078F0@ha */
/* 80D07778  38 03 78 F0 */	addi r0, r3, __vt__15daTkraDai_HIO_c@l /* 0x80D078F0@l */
/* 80D0777C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D07780  41 82 00 10 */	beq lbl_80D07790
/* 80D07784  3C 60 80 D0 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D078FC@ha */
/* 80D07788  38 03 78 FC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D078FC@l */
/* 80D0778C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D07790:
/* 80D07790  7C 80 07 35 */	extsh. r0, r4
/* 80D07794  40 81 00 0C */	ble lbl_80D077A0
/* 80D07798  7F E3 FB 78 */	mr r3, r31
/* 80D0779C  4B 5C 75 A1 */	bl __dl__FPv
lbl_80D077A0:
/* 80D077A0  7F E3 FB 78 */	mr r3, r31
/* 80D077A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D077A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D077AC  7C 08 03 A6 */	mtlr r0
/* 80D077B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D077B4  4E 80 00 20 */	blr 
