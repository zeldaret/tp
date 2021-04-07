lbl_803170DC:
/* 803170DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803170E0  7C 08 02 A6 */	mflr r0
/* 803170E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803170E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803170EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803170F0  41 82 00 30 */	beq lbl_80317120
/* 803170F4  3C 60 80 3D */	lis r3, __vt__21J3DColorBlockLightOff@ha /* 0x803CEA34@ha */
/* 803170F8  38 03 EA 34 */	addi r0, r3, __vt__21J3DColorBlockLightOff@l /* 0x803CEA34@l */
/* 803170FC  90 1F 00 00 */	stw r0, 0(r31)
/* 80317100  41 82 00 10 */	beq lbl_80317110
/* 80317104  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha /* 0x803CDEA0@ha */
/* 80317108  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l /* 0x803CDEA0@l */
/* 8031710C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80317110:
/* 80317110  7C 80 07 35 */	extsh. r0, r4
/* 80317114  40 81 00 0C */	ble lbl_80317120
/* 80317118  7F E3 FB 78 */	mr r3, r31
/* 8031711C  4B FB 7C 21 */	bl __dl__FPv
lbl_80317120:
/* 80317120  7F E3 FB 78 */	mr r3, r31
/* 80317124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80317128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031712C  7C 08 03 A6 */	mtlr r0
/* 80317130  38 21 00 10 */	addi r1, r1, 0x10
/* 80317134  4E 80 00 20 */	blr 
