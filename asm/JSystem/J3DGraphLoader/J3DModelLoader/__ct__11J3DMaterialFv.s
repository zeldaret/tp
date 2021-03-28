lbl_80336650:
/* 80336650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80336654  7C 08 02 A6 */	mflr r0
/* 80336658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033665C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80336660  7C 7F 1B 78 */	mr r31, r3
/* 80336664  3C 80 80 3D */	lis r4, __vt__11J3DMaterial@ha
/* 80336668  38 04 DC F0 */	addi r0, r4, __vt__11J3DMaterial@l
/* 8033666C  90 03 00 00 */	stw r0, 0(r3)
/* 80336670  3C 80 3C F4 */	lis r4, 0x3CF4 /* 0x3CF3CF00@ha */
/* 80336674  38 04 CF 00 */	addi r0, r4, 0xCF00 /* 0x3CF3CF00@l */
/* 80336678  90 03 00 40 */	stw r0, 0x40(r3)
/* 8033667C  3C 80 00 F4 */	lis r4, 0x00F4 /* 0x00F3CF3C@ha */
/* 80336680  38 04 CF 3C */	addi r0, r4, 0xCF3C /* 0x00F3CF3C@l */
/* 80336684  90 03 00 44 */	stw r0, 0x44(r3)
/* 80336688  4B FD FB B9 */	bl initialize__11J3DMaterialFv
/* 8033668C  7F E3 FB 78 */	mr r3, r31
/* 80336690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80336694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80336698  7C 08 03 A6 */	mtlr r0
/* 8033669C  38 21 00 10 */	addi r1, r1, 0x10
/* 803366A0  4E 80 00 20 */	blr 
