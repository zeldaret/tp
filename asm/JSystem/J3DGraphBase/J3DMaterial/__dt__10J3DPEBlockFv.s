lbl_803172B4:
/* 803172B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803172B8  7C 08 02 A6 */	mflr r0
/* 803172BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803172C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803172C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803172C8  41 82 00 1C */	beq lbl_803172E4
/* 803172CC  3C A0 80 3D */	lis r5, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 803172D0  38 05 DD 20 */	addi r0, r5, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 803172D4  90 1F 00 00 */	stw r0, 0(r31)
/* 803172D8  7C 80 07 35 */	extsh. r0, r4
/* 803172DC  40 81 00 08 */	ble lbl_803172E4
/* 803172E0  4B FB 7A 5D */	bl __dl__FPv
lbl_803172E4:
/* 803172E4  7F E3 FB 78 */	mr r3, r31
/* 803172E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803172EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803172F0  7C 08 03 A6 */	mtlr r0
/* 803172F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803172F8  4E 80 00 20 */	blr 
