lbl_803329B0:
/* 803329B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803329B4  7C 08 02 A6 */	mflr r0
/* 803329B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803329BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803329C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803329C4  41 82 00 30 */	beq lbl_803329F4
/* 803329C8  3C 60 80 3D */	lis r3, __vt__14J3DPEBlockNull@ha /* 0x803CEE90@ha */
/* 803329CC  38 03 EE 90 */	addi r0, r3, __vt__14J3DPEBlockNull@l /* 0x803CEE90@l */
/* 803329D0  90 1F 00 00 */	stw r0, 0(r31)
/* 803329D4  41 82 00 10 */	beq lbl_803329E4
/* 803329D8  3C 60 80 3D */	lis r3, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 803329DC  38 03 DD 20 */	addi r0, r3, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 803329E0  90 1F 00 00 */	stw r0, 0(r31)
lbl_803329E4:
/* 803329E4  7C 80 07 35 */	extsh. r0, r4
/* 803329E8  40 81 00 0C */	ble lbl_803329F4
/* 803329EC  7F E3 FB 78 */	mr r3, r31
/* 803329F0  4B F9 C3 4D */	bl __dl__FPv
lbl_803329F4:
/* 803329F4  7F E3 FB 78 */	mr r3, r31
/* 803329F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803329FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332A00  7C 08 03 A6 */	mtlr r0
/* 80332A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80332A08  4E 80 00 20 */	blr 
