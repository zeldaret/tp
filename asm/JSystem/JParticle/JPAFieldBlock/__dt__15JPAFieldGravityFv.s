lbl_8027D6D4:
/* 8027D6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D6D8  7C 08 02 A6 */	mflr r0
/* 8027D6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D6E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D6E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D6E8  41 82 00 30 */	beq lbl_8027D718
/* 8027D6EC  3C 60 80 3C */	lis r3, __vt__15JPAFieldGravity@ha
/* 8027D6F0  38 03 45 80 */	addi r0, r3, __vt__15JPAFieldGravity@l
/* 8027D6F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D6F8  41 82 00 10 */	beq lbl_8027D708
/* 8027D6FC  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha
/* 8027D700  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l
/* 8027D704  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D708:
/* 8027D708  7C 80 07 35 */	extsh. r0, r4
/* 8027D70C  40 81 00 0C */	ble lbl_8027D718
/* 8027D710  7F E3 FB 78 */	mr r3, r31
/* 8027D714  48 05 16 29 */	bl __dl__FPv
lbl_8027D718:
/* 8027D718  7F E3 FB 78 */	mr r3, r31
/* 8027D71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D724  7C 08 03 A6 */	mtlr r0
/* 8027D728  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D72C  4E 80 00 20 */	blr 
