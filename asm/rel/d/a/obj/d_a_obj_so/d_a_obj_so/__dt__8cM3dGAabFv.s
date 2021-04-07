lbl_80CE3868:
/* 80CE3868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE386C  7C 08 02 A6 */	mflr r0
/* 80CE3870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE3878  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE387C  41 82 00 1C */	beq lbl_80CE3898
/* 80CE3880  3C A0 80 CE */	lis r5, __vt__8cM3dGAab@ha /* 0x80CE3C0C@ha */
/* 80CE3884  38 05 3C 0C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CE3C0C@l */
/* 80CE3888  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CE388C  7C 80 07 35 */	extsh. r0, r4
/* 80CE3890  40 81 00 08 */	ble lbl_80CE3898
/* 80CE3894  4B 5E B4 A9 */	bl __dl__FPv
lbl_80CE3898:
/* 80CE3898  7F E3 FB 78 */	mr r3, r31
/* 80CE389C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE38A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE38A4  7C 08 03 A6 */	mtlr r0
/* 80CE38A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE38AC  4E 80 00 20 */	blr 
