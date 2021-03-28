lbl_80C04180:
/* 80C04180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C04184  7C 08 02 A6 */	mflr r0
/* 80C04188  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0418C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C04190  7C 7F 1B 78 */	mr r31, r3
/* 80C04194  2C 04 00 00 */	cmpwi r4, 0
/* 80C04198  41 82 00 38 */	beq lbl_80C041D0
/* 80C0419C  38 80 00 0C */	li r4, 0xc
/* 80C041A0  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C041A4  4B FF D2 0D */	bl setBaseAnm__11daObj_GrA_cFif
/* 80C041A8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005008A@ha */
/* 80C041AC  38 03 00 8A */	addi r0, r3, 0x008A /* 0x0005008A@l */
/* 80C041B0  90 01 00 08 */	stw r0, 8(r1)
/* 80C041B4  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C041B8  38 81 00 08 */	addi r4, r1, 8
/* 80C041BC  38 A0 FF FF */	li r5, -1
/* 80C041C0  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C041C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C041C8  7D 89 03 A6 */	mtctr r12
/* 80C041CC  4E 80 04 21 */	bctrl 
lbl_80C041D0:
/* 80C041D0  38 60 00 01 */	li r3, 1
/* 80C041D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C041D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C041DC  7C 08 03 A6 */	mtlr r0
/* 80C041E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C041E4  4E 80 00 20 */	blr 
