lbl_803629CC:
/* 803629CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803629D0  7C 08 02 A6 */	mflr r0
/* 803629D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803629D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803629DC  80 0D 94 10 */	lwz r0, __aborting(r13)
/* 803629E0  2C 00 00 00 */	cmpwi r0, 0
/* 803629E4  40 82 00 5C */	bne lbl_80362A40
/* 803629E8  38 60 00 00 */	li r3, 0
/* 803629EC  48 00 2A 7D */	bl __begin_critical_region
/* 803629F0  38 60 00 00 */	li r3, 0
/* 803629F4  48 00 2A 71 */	bl __end_critical_region
/* 803629F8  4B FF F1 E5 */	bl __destroy_global_chain
/* 803629FC  3C 60 80 37 */	lis r3, __destroy_global_chain_reference@ha
/* 80362A00  38 03 39 80 */	addi r0, r3, __destroy_global_chain_reference@l
/* 80362A04  7C 1F 03 78 */	mr r31, r0
/* 80362A08  48 00 00 10 */	b lbl_80362A18
lbl_80362A0C:
/* 80362A0C  7D 89 03 A6 */	mtctr r12
/* 80362A10  4E 80 04 21 */	bctrl 
/* 80362A14  3B FF 00 04 */	addi r31, r31, 4
lbl_80362A18:
/* 80362A18  81 9F 00 00 */	lwz r12, 0(r31)
/* 80362A1C  28 0C 00 00 */	cmplwi r12, 0
/* 80362A20  40 82 FF EC */	bne lbl_80362A0C
/* 80362A24  81 8D 94 18 */	lwz r12, __stdio_exit(r13)
/* 80362A28  28 0C 00 00 */	cmplwi r12, 0
/* 80362A2C  41 82 00 14 */	beq lbl_80362A40
/* 80362A30  7D 89 03 A6 */	mtctr r12
/* 80362A34  4E 80 04 21 */	bctrl 
/* 80362A38  38 00 00 00 */	li r0, 0
/* 80362A3C  90 0D 94 18 */	stw r0, __stdio_exit(r13)
lbl_80362A40:
/* 80362A40  38 60 00 00 */	li r3, 0
/* 80362A44  48 00 2A 25 */	bl __begin_critical_region
/* 80362A48  3C 60 80 45 */	lis r3, __atexit_funcs@ha
/* 80362A4C  3B E3 D4 40 */	addi r31, r3, __atexit_funcs@l
/* 80362A50  48 00 00 20 */	b lbl_80362A70
lbl_80362A54:
/* 80362A54  80 6D 94 14 */	lwz r3, __atexit_curr_func(r13)
/* 80362A58  38 63 FF FF */	addi r3, r3, -1
/* 80362A5C  54 60 10 3A */	slwi r0, r3, 2
/* 80362A60  90 6D 94 14 */	stw r3, __atexit_curr_func(r13)
/* 80362A64  7D 9F 00 2E */	lwzx r12, r31, r0
/* 80362A68  7D 89 03 A6 */	mtctr r12
/* 80362A6C  4E 80 04 21 */	bctrl 
lbl_80362A70:
/* 80362A70  80 0D 94 14 */	lwz r0, __atexit_curr_func(r13)
/* 80362A74  2C 00 00 00 */	cmpwi r0, 0
/* 80362A78  41 81 FF DC */	bgt lbl_80362A54
/* 80362A7C  38 60 00 00 */	li r3, 0
/* 80362A80  48 00 29 E5 */	bl __end_critical_region
/* 80362A84  48 00 29 E9 */	bl __kill_critical_regions
/* 80362A88  81 8D 94 1C */	lwz r12, __console_exit(r13)
/* 80362A8C  28 0C 00 00 */	cmplwi r12, 0
/* 80362A90  41 82 00 14 */	beq lbl_80362AA4
/* 80362A94  7D 89 03 A6 */	mtctr r12
/* 80362A98  4E 80 04 21 */	bctrl 
/* 80362A9C  38 00 00 00 */	li r0, 0
/* 80362AA0  90 0D 94 1C */	stw r0, __console_exit(r13)
lbl_80362AA4:
/* 80362AA4  4B FE 01 49 */	bl _ExitProcess
/* 80362AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80362AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80362AB0  7C 08 03 A6 */	mtlr r0
/* 80362AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80362AB8  4E 80 00 20 */	blr 
