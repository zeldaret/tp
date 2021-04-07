lbl_803232CC:
/* 803232CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803232D0  7C 08 02 A6 */	mflr r0
/* 803232D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803232D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803232DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803232E0  41 82 00 30 */	beq lbl_80323310
/* 803232E4  3C 60 80 3D */	lis r3, __vt__17J3DPEBlockTexEdge@ha /* 0x803CE814@ha */
/* 803232E8  38 03 E8 14 */	addi r0, r3, __vt__17J3DPEBlockTexEdge@l /* 0x803CE814@l */
/* 803232EC  90 1F 00 00 */	stw r0, 0(r31)
/* 803232F0  41 82 00 10 */	beq lbl_80323300
/* 803232F4  3C 60 80 3D */	lis r3, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 803232F8  38 03 DD 20 */	addi r0, r3, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 803232FC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80323300:
/* 80323300  7C 80 07 35 */	extsh. r0, r4
/* 80323304  40 81 00 0C */	ble lbl_80323310
/* 80323308  7F E3 FB 78 */	mr r3, r31
/* 8032330C  4B FA BA 31 */	bl __dl__FPv
lbl_80323310:
/* 80323310  7F E3 FB 78 */	mr r3, r31
/* 80323314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80323318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032331C  7C 08 03 A6 */	mtlr r0
/* 80323320  38 21 00 10 */	addi r1, r1, 0x10
/* 80323324  4E 80 00 20 */	blr 
