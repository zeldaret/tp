lbl_80BB72FC:
/* 80BB72FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB7300  7C 08 02 A6 */	mflr r0
/* 80BB7304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB730C  7C 7F 1B 78 */	mr r31, r3
/* 80BB7310  88 03 05 78 */	lbz r0, 0x578(r3)
/* 80BB7314  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80BB7318  3C 60 80 BC */	lis r3, s_exeProc__11daBkyRock_c@ha /* 0x80BB8064@ha */
/* 80BB731C  38 03 80 64 */	addi r0, r3, s_exeProc__11daBkyRock_c@l /* 0x80BB8064@l */
/* 80BB7320  7C 60 22 14 */	add r3, r0, r4
/* 80BB7324  4B 7A AC F5 */	bl __ptmf_test
/* 80BB7328  2C 03 00 00 */	cmpwi r3, 0
/* 80BB732C  41 82 00 24 */	beq lbl_80BB7350
/* 80BB7330  7F E3 FB 78 */	mr r3, r31
/* 80BB7334  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80BB7338  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80BB733C  3C 80 80 BC */	lis r4, s_exeProc__11daBkyRock_c@ha /* 0x80BB8064@ha */
/* 80BB7340  38 04 80 64 */	addi r0, r4, s_exeProc__11daBkyRock_c@l /* 0x80BB8064@l */
/* 80BB7344  7D 80 2A 14 */	add r12, r0, r5
/* 80BB7348  4B 7A AD 3D */	bl __ptmf_scall
/* 80BB734C  60 00 00 00 */	nop 
lbl_80BB7350:
/* 80BB7350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB7354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB7358  7C 08 03 A6 */	mtlr r0
/* 80BB735C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB7360  4E 80 00 20 */	blr 
