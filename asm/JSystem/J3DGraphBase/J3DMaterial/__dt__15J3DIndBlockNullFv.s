lbl_803173B0:
/* 803173B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803173B4  7C 08 02 A6 */	mflr r0
/* 803173B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803173BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803173C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803173C4  41 82 00 30 */	beq lbl_803173F4
/* 803173C8  3C 60 80 3D */	lis r3, __vt__15J3DIndBlockNull@ha /* 0x803CDD9C@ha */
/* 803173CC  38 03 DD 9C */	addi r0, r3, __vt__15J3DIndBlockNull@l /* 0x803CDD9C@l */
/* 803173D0  90 1F 00 00 */	stw r0, 0(r31)
/* 803173D4  41 82 00 10 */	beq lbl_803173E4
/* 803173D8  3C 60 80 3D */	lis r3, __vt__11J3DIndBlock@ha /* 0x803CDDE8@ha */
/* 803173DC  38 03 DD E8 */	addi r0, r3, __vt__11J3DIndBlock@l /* 0x803CDDE8@l */
/* 803173E0  90 1F 00 00 */	stw r0, 0(r31)
lbl_803173E4:
/* 803173E4  7C 80 07 35 */	extsh. r0, r4
/* 803173E8  40 81 00 0C */	ble lbl_803173F4
/* 803173EC  7F E3 FB 78 */	mr r3, r31
/* 803173F0  4B FB 79 4D */	bl __dl__FPv
lbl_803173F4:
/* 803173F4  7F E3 FB 78 */	mr r3, r31
/* 803173F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803173FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80317400  7C 08 03 A6 */	mtlr r0
/* 80317404  38 21 00 10 */	addi r1, r1, 0x10
/* 80317408  4E 80 00 20 */	blr 
