lbl_801AEDAC:
/* 801AEDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AEDB0  7C 08 02 A6 */	mflr r0
/* 801AEDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AEDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AEDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 801AEDC0  7C 7E 1B 78 */	mr r30, r3
/* 801AEDC4  8B E3 01 00 */	lbz r31, 0x100(r3)
/* 801AEDC8  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801AEDCC  3C 80 80 3C */	lis r4, map_move_process@ha
/* 801AEDD0  38 04 C3 1C */	addi r0, r4, map_move_process@l
/* 801AEDD4  7D 80 2A 14 */	add r12, r0, r5
/* 801AEDD8  48 1B 32 AD */	bl __ptmf_scall
/* 801AEDDC  60 00 00 00 */	nop 
/* 801AEDE0  88 1E 01 00 */	lbz r0, 0x100(r30)
/* 801AEDE4  7C 1F 00 40 */	cmplw r31, r0
/* 801AEDE8  41 82 00 20 */	beq lbl_801AEE08
/* 801AEDEC  7F C3 F3 78 */	mr r3, r30
/* 801AEDF0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801AEDF4  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801AEDF8  38 04 C2 8C */	addi r0, r4, map_init_process@l
/* 801AEDFC  7D 80 2A 14 */	add r12, r0, r5
/* 801AEE00  48 1B 32 85 */	bl __ptmf_scall
/* 801AEE04  60 00 00 00 */	nop 
lbl_801AEE08:
/* 801AEE08  7F C3 F3 78 */	mr r3, r30
/* 801AEE0C  38 80 00 00 */	li r4, 0
/* 801AEE10  48 00 0B F1 */	bl setHIO__19dMenu_Calibration_cFb
/* 801AEE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AEE18  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AEE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AEE20  7C 08 03 A6 */	mtlr r0
/* 801AEE24  38 21 00 10 */	addi r1, r1, 0x10
/* 801AEE28  4E 80 00 20 */	blr 
