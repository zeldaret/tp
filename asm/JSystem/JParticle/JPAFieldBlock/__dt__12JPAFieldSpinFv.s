lbl_8027D3F4:
/* 8027D3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D3F8  7C 08 02 A6 */	mflr r0
/* 8027D3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D404  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D408  41 82 00 30 */	beq lbl_8027D438
/* 8027D40C  3C 60 80 3C */	lis r3, __vt__12JPAFieldSpin@ha /* 0x803C44E0@ha */
/* 8027D410  38 03 44 E0 */	addi r0, r3, __vt__12JPAFieldSpin@l /* 0x803C44E0@l */
/* 8027D414  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D418  41 82 00 10 */	beq lbl_8027D428
/* 8027D41C  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D420  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D424  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D428:
/* 8027D428  7C 80 07 35 */	extsh. r0, r4
/* 8027D42C  40 81 00 0C */	ble lbl_8027D438
/* 8027D430  7F E3 FB 78 */	mr r3, r31
/* 8027D434  48 05 19 09 */	bl __dl__FPv
lbl_8027D438:
/* 8027D438  7F E3 FB 78 */	mr r3, r31
/* 8027D43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D444  7C 08 03 A6 */	mtlr r0
/* 8027D448  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D44C  4E 80 00 20 */	blr 
