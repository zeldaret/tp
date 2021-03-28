lbl_8027D4AC:
/* 8027D4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D4B0  7C 08 02 A6 */	mflr r0
/* 8027D4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D4B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D4BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D4C0  41 82 00 30 */	beq lbl_8027D4F0
/* 8027D4C4  3C 60 80 3C */	lis r3, __vt__14JPAFieldRandom@ha
/* 8027D4C8  38 03 45 08 */	addi r0, r3, __vt__14JPAFieldRandom@l
/* 8027D4CC  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D4D0  41 82 00 10 */	beq lbl_8027D4E0
/* 8027D4D4  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha
/* 8027D4D8  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l
/* 8027D4DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D4E0:
/* 8027D4E0  7C 80 07 35 */	extsh. r0, r4
/* 8027D4E4  40 81 00 0C */	ble lbl_8027D4F0
/* 8027D4E8  7F E3 FB 78 */	mr r3, r31
/* 8027D4EC  48 05 18 51 */	bl __dl__FPv
lbl_8027D4F0:
/* 8027D4F0  7F E3 FB 78 */	mr r3, r31
/* 8027D4F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D4FC  7C 08 03 A6 */	mtlr r0
/* 8027D500  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D504  4E 80 00 20 */	blr 
