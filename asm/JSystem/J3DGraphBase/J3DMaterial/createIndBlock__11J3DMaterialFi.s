lbl_80315E78:
/* 80315E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315E7C  7C 08 02 A6 */	mflr r0
/* 80315E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80315E88  2C 03 00 00 */	cmpwi r3, 0
/* 80315E8C  41 82 00 98 */	beq lbl_80315F24
/* 80315E90  38 60 00 7C */	li r3, 0x7c
/* 80315E94  4B FB 8D B9 */	bl __nw__FUl
/* 80315E98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315E9C  41 82 00 80 */	beq lbl_80315F1C
/* 80315EA0  3C 60 80 3D */	lis r3, __vt__11J3DIndBlock@ha /* 0x803CDDE8@ha */
/* 80315EA4  38 03 DD E8 */	addi r0, r3, __vt__11J3DIndBlock@l /* 0x803CDDE8@l */
/* 80315EA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80315EAC  3C 60 80 3D */	lis r3, __vt__15J3DIndBlockFull@ha /* 0x803CE90C@ha */
/* 80315EB0  38 03 E9 0C */	addi r0, r3, __vt__15J3DIndBlockFull@l /* 0x803CE90C@l */
/* 80315EB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80315EB8  38 7F 00 05 */	addi r3, r31, 5
/* 80315EBC  3C 80 80 01 */	lis r4, __ct__14J3DIndTexOrderFv@ha /* 0x8000E128@ha */
/* 80315EC0  38 84 E1 28 */	addi r4, r4, __ct__14J3DIndTexOrderFv@l /* 0x8000E128@l */
/* 80315EC4  38 A0 00 00 */	li r5, 0
/* 80315EC8  38 C0 00 04 */	li r6, 4
/* 80315ECC  38 E0 00 04 */	li r7, 4
/* 80315ED0  48 04 BE 91 */	bl __construct_array
/* 80315ED4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80315ED8  3C 80 80 01 */	lis r4, __ct__12J3DIndTexMtxFv@ha /* 0x8000E0F0@ha */
/* 80315EDC  38 84 E0 F0 */	addi r4, r4, __ct__12J3DIndTexMtxFv@l /* 0x8000E0F0@l */
/* 80315EE0  3C A0 80 01 */	lis r5, __dt__12J3DIndTexMtxFv@ha /* 0x8000E064@ha */
/* 80315EE4  38 A5 E0 64 */	addi r5, r5, __dt__12J3DIndTexMtxFv@l /* 0x8000E064@l */
/* 80315EE8  38 C0 00 1C */	li r6, 0x1c
/* 80315EEC  38 E0 00 03 */	li r7, 3
/* 80315EF0  48 04 BE 71 */	bl __construct_array
/* 80315EF4  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80315EF8  3C 80 80 01 */	lis r4, __ct__19J3DIndTexCoordScaleFv@ha /* 0x8000E0E4@ha */
/* 80315EFC  38 84 E0 E4 */	addi r4, r4, __ct__19J3DIndTexCoordScaleFv@l /* 0x8000E0E4@l */
/* 80315F00  3C A0 80 01 */	lis r5, __dt__19J3DIndTexCoordScaleFv@ha /* 0x8000E024@ha */
/* 80315F04  38 A5 E0 24 */	addi r5, r5, __dt__19J3DIndTexCoordScaleFv@l /* 0x8000E024@l */
/* 80315F08  38 C0 00 04 */	li r6, 4
/* 80315F0C  38 E0 00 04 */	li r7, 4
/* 80315F10  48 04 BE 51 */	bl __construct_array
/* 80315F14  7F E3 FB 78 */	mr r3, r31
/* 80315F18  48 00 1C 11 */	bl initialize__15J3DIndBlockFullFv
lbl_80315F1C:
/* 80315F1C  7F E3 FB 78 */	mr r3, r31
/* 80315F20  48 00 00 2C */	b lbl_80315F4C
lbl_80315F24:
/* 80315F24  38 60 00 04 */	li r3, 4
/* 80315F28  4B FB 8D 25 */	bl __nw__FUl
/* 80315F2C  28 03 00 00 */	cmplwi r3, 0
/* 80315F30  41 82 00 1C */	beq lbl_80315F4C
/* 80315F34  3C 80 80 3D */	lis r4, __vt__11J3DIndBlock@ha /* 0x803CDDE8@ha */
/* 80315F38  38 04 DD E8 */	addi r0, r4, __vt__11J3DIndBlock@l /* 0x803CDDE8@l */
/* 80315F3C  90 03 00 00 */	stw r0, 0(r3)
/* 80315F40  3C 80 80 3D */	lis r4, __vt__15J3DIndBlockNull@ha /* 0x803CDD9C@ha */
/* 80315F44  38 04 DD 9C */	addi r0, r4, __vt__15J3DIndBlockNull@l /* 0x803CDD9C@l */
/* 80315F48  90 03 00 00 */	stw r0, 0(r3)
lbl_80315F4C:
/* 80315F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80315F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315F54  7C 08 03 A6 */	mtlr r0
/* 80315F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80315F5C  4E 80 00 20 */	blr 
