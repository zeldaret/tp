lbl_8027D508:
/* 8027D508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D50C  7C 08 02 A6 */	mflr r0
/* 8027D510  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D518  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D51C  41 82 00 30 */	beq lbl_8027D54C
/* 8027D520  3C 60 80 3C */	lis r3, __vt__18JPAFieldConvection@ha /* 0x803C451C@ha */
/* 8027D524  38 03 45 1C */	addi r0, r3, __vt__18JPAFieldConvection@l /* 0x803C451C@l */
/* 8027D528  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D52C  41 82 00 10 */	beq lbl_8027D53C
/* 8027D530  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D534  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D538  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D53C:
/* 8027D53C  7C 80 07 35 */	extsh. r0, r4
/* 8027D540  40 81 00 0C */	ble lbl_8027D54C
/* 8027D544  7F E3 FB 78 */	mr r3, r31
/* 8027D548  48 05 17 F5 */	bl __dl__FPv
lbl_8027D54C:
/* 8027D54C  7F E3 FB 78 */	mr r3, r31
/* 8027D550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D558  7C 08 03 A6 */	mtlr r0
/* 8027D55C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D560  4E 80 00 20 */	blr 
