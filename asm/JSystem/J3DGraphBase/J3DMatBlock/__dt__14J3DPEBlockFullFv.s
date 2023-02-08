lbl_80321A70:
/* 80321A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321A74  7C 08 02 A6 */	mflr r0
/* 80321A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80321A80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80321A84  41 82 00 30 */	beq lbl_80321AB4
/* 80321A88  3C 60 80 3D */	lis r3, __vt__14J3DPEBlockFull@ha /* 0x803CDFF0@ha */
/* 80321A8C  38 03 DF F0 */	addi r0, r3, __vt__14J3DPEBlockFull@l /* 0x803CDFF0@l */
/* 80321A90  90 1F 00 00 */	stw r0, 0(r31)
/* 80321A94  41 82 00 10 */	beq lbl_80321AA4
/* 80321A98  3C 60 80 3D */	lis r3, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 80321A9C  38 03 DD 20 */	addi r0, r3, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 80321AA0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80321AA4:
/* 80321AA4  7C 80 07 35 */	extsh. r0, r4
/* 80321AA8  40 81 00 0C */	ble lbl_80321AB4
/* 80321AAC  7F E3 FB 78 */	mr r3, r31
/* 80321AB0  4B FA D2 8D */	bl __dl__FPv
lbl_80321AB4:
/* 80321AB4  7F E3 FB 78 */	mr r3, r31
/* 80321AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80321ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321AC0  7C 08 03 A6 */	mtlr r0
/* 80321AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80321AC8  4E 80 00 20 */	blr 
