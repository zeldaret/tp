lbl_80362ABC:
/* 80362ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80362AC0  7C 08 02 A6 */	mflr r0
/* 80362AC4  38 60 00 01 */	li r3, 1
/* 80362AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80362ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80362AD0  48 00 5D 4D */	bl raise
/* 80362AD4  38 00 00 01 */	li r0, 1
/* 80362AD8  38 60 00 00 */	li r3, 0
/* 80362ADC  90 0D 94 10 */	stw r0, __aborting(r13)
/* 80362AE0  48 00 29 89 */	bl __begin_critical_region
/* 80362AE4  3C 60 80 45 */	lis r3, __atexit_funcs@ha /* 0x8044D440@ha */
/* 80362AE8  3B E3 D4 40 */	addi r31, r3, __atexit_funcs@l /* 0x8044D440@l */
/* 80362AEC  48 00 00 20 */	b lbl_80362B0C
lbl_80362AF0:
/* 80362AF0  80 6D 94 14 */	lwz r3, __atexit_curr_func(r13)
/* 80362AF4  38 63 FF FF */	addi r3, r3, -1
/* 80362AF8  54 60 10 3A */	slwi r0, r3, 2
/* 80362AFC  90 6D 94 14 */	stw r3, __atexit_curr_func(r13)
/* 80362B00  7D 9F 00 2E */	lwzx r12, r31, r0
/* 80362B04  7D 89 03 A6 */	mtctr r12
/* 80362B08  4E 80 04 21 */	bctrl 
lbl_80362B0C:
/* 80362B0C  80 0D 94 14 */	lwz r0, __atexit_curr_func(r13)
/* 80362B10  2C 00 00 00 */	cmpwi r0, 0
/* 80362B14  41 81 FF DC */	bgt lbl_80362AF0
/* 80362B18  38 60 00 00 */	li r3, 0
/* 80362B1C  48 00 29 49 */	bl __end_critical_region
/* 80362B20  48 00 29 4D */	bl __kill_critical_regions
/* 80362B24  81 8D 94 1C */	lwz r12, __console_exit(r13)
/* 80362B28  28 0C 00 00 */	cmplwi r12, 0
/* 80362B2C  41 82 00 14 */	beq lbl_80362B40
/* 80362B30  7D 89 03 A6 */	mtctr r12
/* 80362B34  4E 80 04 21 */	bctrl 
/* 80362B38  38 00 00 00 */	li r0, 0
/* 80362B3C  90 0D 94 1C */	stw r0, __console_exit(r13)
lbl_80362B40:
/* 80362B40  4B FE 00 AD */	bl _ExitProcess
/* 80362B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80362B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80362B4C  7C 08 03 A6 */	mtlr r0
/* 80362B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80362B54  4E 80 00 20 */	blr 
