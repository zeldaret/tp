lbl_8027D5C0:
/* 8027D5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D5C4  7C 08 02 A6 */	mflr r0
/* 8027D5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D5CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D5D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D5D4  41 82 00 30 */	beq lbl_8027D604
/* 8027D5D8  3C 60 80 3C */	lis r3, __vt__14JPAFieldNewton@ha /* 0x803C4544@ha */
/* 8027D5DC  38 03 45 44 */	addi r0, r3, __vt__14JPAFieldNewton@l /* 0x803C4544@l */
/* 8027D5E0  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D5E4  41 82 00 10 */	beq lbl_8027D5F4
/* 8027D5E8  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D5EC  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D5F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D5F4:
/* 8027D5F4  7C 80 07 35 */	extsh. r0, r4
/* 8027D5F8  40 81 00 0C */	ble lbl_8027D604
/* 8027D5FC  7F E3 FB 78 */	mr r3, r31
/* 8027D600  48 05 17 3D */	bl __dl__FPv
lbl_8027D604:
/* 8027D604  7F E3 FB 78 */	mr r3, r31
/* 8027D608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D610  7C 08 03 A6 */	mtlr r0
/* 8027D614  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D618  4E 80 00 20 */	blr 
