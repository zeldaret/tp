lbl_8063D45C:
/* 8063D45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D460  7C 08 02 A6 */	mflr r0
/* 8063D464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D46C  7C 7F 1B 78 */	mr r31, r3
/* 8063D470  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8063D474  3C 80 80 64 */	lis r4, d_a_b_yo_ice__stringBase0@ha /* 0x8063DD9C@ha */
/* 8063D478  38 84 DD 9C */	addi r4, r4, d_a_b_yo_ice__stringBase0@l /* 0x8063DD9C@l */
/* 8063D47C  4B 9E FB 8D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8063D480  88 1F 0B 38 */	lbz r0, 0xb38(r31)
/* 8063D484  28 00 00 00 */	cmplwi r0, 0
/* 8063D488  41 82 00 10 */	beq lbl_8063D498
/* 8063D48C  38 00 00 00 */	li r0, 0
/* 8063D490  3C 60 80 64 */	lis r3, data_8063DFE8@ha /* 0x8063DFE8@ha */
/* 8063D494  98 03 DF E8 */	stb r0, data_8063DFE8@l(r3)  /* 0x8063DFE8@l */
lbl_8063D498:
/* 8063D498  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8063D49C  28 00 00 00 */	cmplwi r0, 0
/* 8063D4A0  41 82 00 20 */	beq lbl_8063D4C0
/* 8063D4A4  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 8063D4A8  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 8063D4AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8063D4B0  7D 89 03 A6 */	mtctr r12
/* 8063D4B4  4E 80 04 21 */	bctrl 
/* 8063D4B8  38 7F 06 48 */	addi r3, r31, 0x648
/* 8063D4BC  4B C8 0B 3D */	bl deleteObject__14Z2SoundObjBaseFv
lbl_8063D4C0:
/* 8063D4C0  38 60 00 01 */	li r3, 1
/* 8063D4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D4CC  7C 08 03 A6 */	mtlr r0
/* 8063D4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D4D4  4E 80 00 20 */	blr 
