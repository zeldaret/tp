lbl_80322E04:
/* 80322E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322E08  7C 08 02 A6 */	mflr r0
/* 80322E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322E14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80322E18  41 82 00 40 */	beq lbl_80322E58
/* 80322E1C  3C 60 80 3D */	lis r3, __vt__15J3DTexGenBlock4@ha /* 0x803CE5A0@ha */
/* 80322E20  38 03 E5 A0 */	addi r0, r3, __vt__15J3DTexGenBlock4@l /* 0x803CE5A0@l */
/* 80322E24  90 1F 00 00 */	stw r0, 0(r31)
/* 80322E28  41 82 00 20 */	beq lbl_80322E48
/* 80322E2C  3C 60 80 3D */	lis r3, __vt__21J3DTexGenBlockPatched@ha /* 0x803CE60C@ha */
/* 80322E30  38 03 E6 0C */	addi r0, r3, __vt__21J3DTexGenBlockPatched@l /* 0x803CE60C@l */
/* 80322E34  90 1F 00 00 */	stw r0, 0(r31)
/* 80322E38  41 82 00 10 */	beq lbl_80322E48
/* 80322E3C  3C 60 80 3D */	lis r3, __vt__14J3DTexGenBlock@ha /* 0x803CDE34@ha */
/* 80322E40  38 03 DE 34 */	addi r0, r3, __vt__14J3DTexGenBlock@l /* 0x803CDE34@l */
/* 80322E44  90 1F 00 00 */	stw r0, 0(r31)
lbl_80322E48:
/* 80322E48  7C 80 07 35 */	extsh. r0, r4
/* 80322E4C  40 81 00 0C */	ble lbl_80322E58
/* 80322E50  7F E3 FB 78 */	mr r3, r31
/* 80322E54  4B FA BE E9 */	bl __dl__FPv
lbl_80322E58:
/* 80322E58  7F E3 FB 78 */	mr r3, r31
/* 80322E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80322E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322E64  7C 08 03 A6 */	mtlr r0
/* 80322E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80322E6C  4E 80 00 20 */	blr 
