lbl_8027D61C:
/* 8027D61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D620  7C 08 02 A6 */	mflr r0
/* 8027D624  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D62C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D630  41 82 00 30 */	beq lbl_8027D660
/* 8027D634  3C 60 80 3C */	lis r3, __vt__14JPAFieldMagnet@ha /* 0x803C4558@ha */
/* 8027D638  38 03 45 58 */	addi r0, r3, __vt__14JPAFieldMagnet@l /* 0x803C4558@l */
/* 8027D63C  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D640  41 82 00 10 */	beq lbl_8027D650
/* 8027D644  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D648  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D64C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D650:
/* 8027D650  7C 80 07 35 */	extsh. r0, r4
/* 8027D654  40 81 00 0C */	ble lbl_8027D660
/* 8027D658  7F E3 FB 78 */	mr r3, r31
/* 8027D65C  48 05 16 E1 */	bl __dl__FPv
lbl_8027D660:
/* 8027D660  7F E3 FB 78 */	mr r3, r31
/* 8027D664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D66C  7C 08 03 A6 */	mtlr r0
/* 8027D670  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D674  4E 80 00 20 */	blr 
