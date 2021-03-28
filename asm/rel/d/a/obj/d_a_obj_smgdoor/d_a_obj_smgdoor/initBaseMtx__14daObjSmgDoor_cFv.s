lbl_80CDBB5C:
/* 80CDBB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBB60  7C 08 02 A6 */	mflr r0
/* 80CDBB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBB68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDBB6C  7C 7F 1B 78 */	mr r31, r3
/* 80CDBB70  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80CDBB74  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CDBB78  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CDBB7C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CDBB80  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CDBB84  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CDBB88  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CDBB8C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CDBB90  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CDBB94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CDBB98  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CDBB9C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CDBBA0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CDBBA4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CDBBA8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDBBAC  4B 33 11 B8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CDBBB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CDBBB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CDBBB8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CDBBBC  4B 33 08 78 */	b mDoMtx_YrotM__FPA4_fs
/* 80CDBBC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CDBBC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CDBBC8  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80CDBBCC  4B 66 A8 E4 */	b PSMTXCopy
/* 80CDBBD0  7F E3 FB 78 */	mr r3, r31
/* 80CDBBD4  48 00 00 19 */	bl setBaseMtx__14daObjSmgDoor_cFv
/* 80CDBBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDBBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBBE0  7C 08 03 A6 */	mtlr r0
/* 80CDBBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBBE8  4E 80 00 20 */	blr 
