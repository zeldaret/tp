lbl_8027D678:
/* 8027D678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D67C  7C 08 02 A6 */	mflr r0
/* 8027D680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D688  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D68C  41 82 00 30 */	beq lbl_8027D6BC
/* 8027D690  3C 60 80 3C */	lis r3, __vt__11JPAFieldAir@ha
/* 8027D694  38 03 45 6C */	addi r0, r3, __vt__11JPAFieldAir@l
/* 8027D698  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D69C  41 82 00 10 */	beq lbl_8027D6AC
/* 8027D6A0  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha
/* 8027D6A4  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l
/* 8027D6A8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D6AC:
/* 8027D6AC  7C 80 07 35 */	extsh. r0, r4
/* 8027D6B0  40 81 00 0C */	ble lbl_8027D6BC
/* 8027D6B4  7F E3 FB 78 */	mr r3, r31
/* 8027D6B8  48 05 16 85 */	bl __dl__FPv
lbl_8027D6BC:
/* 8027D6BC  7F E3 FB 78 */	mr r3, r31
/* 8027D6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D6C8  7C 08 03 A6 */	mtlr r0
/* 8027D6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D6D0  4E 80 00 20 */	blr 
