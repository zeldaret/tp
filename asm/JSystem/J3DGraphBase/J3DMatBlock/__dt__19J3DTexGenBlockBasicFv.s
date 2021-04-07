lbl_80322CC8:
/* 80322CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322CCC  7C 08 02 A6 */	mflr r0
/* 80322CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322CD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80322CDC  41 82 00 40 */	beq lbl_80322D1C
/* 80322CE0  3C 60 80 3D */	lis r3, __vt__19J3DTexGenBlockBasic@ha /* 0x803CE534@ha */
/* 80322CE4  38 03 E5 34 */	addi r0, r3, __vt__19J3DTexGenBlockBasic@l /* 0x803CE534@l */
/* 80322CE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80322CEC  41 82 00 20 */	beq lbl_80322D0C
/* 80322CF0  3C 60 80 3D */	lis r3, __vt__21J3DTexGenBlockPatched@ha /* 0x803CE60C@ha */
/* 80322CF4  38 03 E6 0C */	addi r0, r3, __vt__21J3DTexGenBlockPatched@l /* 0x803CE60C@l */
/* 80322CF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80322CFC  41 82 00 10 */	beq lbl_80322D0C
/* 80322D00  3C 60 80 3D */	lis r3, __vt__14J3DTexGenBlock@ha /* 0x803CDE34@ha */
/* 80322D04  38 03 DE 34 */	addi r0, r3, __vt__14J3DTexGenBlock@l /* 0x803CDE34@l */
/* 80322D08  90 1F 00 00 */	stw r0, 0(r31)
lbl_80322D0C:
/* 80322D0C  7C 80 07 35 */	extsh. r0, r4
/* 80322D10  40 81 00 0C */	ble lbl_80322D1C
/* 80322D14  7F E3 FB 78 */	mr r3, r31
/* 80322D18  4B FA C0 25 */	bl __dl__FPv
lbl_80322D1C:
/* 80322D1C  7F E3 FB 78 */	mr r3, r31
/* 80322D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80322D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322D28  7C 08 03 A6 */	mtlr r0
/* 80322D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80322D30  4E 80 00 20 */	blr 
