lbl_8033C40C:
/* 8033C40C  7C 08 02 A6 */	mflr r0
/* 8033C410  90 01 00 04 */	stw r0, 4(r1)
/* 8033C414  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033C418  3C 60 80 34 */	lis r3, OSSwitchFPUContext@ha /* 0x8033C388@ha */
/* 8033C41C  38 83 C3 88 */	addi r4, r3, OSSwitchFPUContext@l /* 0x8033C388@l */
/* 8033C420  38 60 00 07 */	li r3, 7
/* 8033C424  4B FF E2 C5 */	bl __OSSetExceptionHandler
/* 8033C428  38 00 00 00 */	li r0, 0
/* 8033C42C  4C C6 31 82 */	crclr 6
/* 8033C430  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000D8@ha */
/* 8033C434  3C 60 80 3D */	lis r3, lit_76@ha /* 0x803CF8F4@ha */
/* 8033C438  90 04 00 D8 */	stw r0, 0x00D8(r4)  /* 0x800000D8@l */
/* 8033C43C  38 63 F8 F4 */	addi r3, r3, lit_76@l /* 0x803CF8F4@l */
/* 8033C440  48 00 9F F5 */	bl DBPrintf
/* 8033C444  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033C448  38 21 00 08 */	addi r1, r1, 8
/* 8033C44C  7C 08 03 A6 */	mtlr r0
/* 8033C450  4E 80 00 20 */	blr 
