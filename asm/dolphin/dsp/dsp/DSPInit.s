lbl_803524BC:
/* 803524BC  7C 08 02 A6 */	mflr r0
/* 803524C0  3C 60 80 3D */	lis r3, lit_1@ha
/* 803524C4  90 01 00 04 */	stw r0, 4(r1)
/* 803524C8  38 A3 1C 78 */	addi r5, r3, lit_1@l
/* 803524CC  4C C6 31 82 */	crclr 6
/* 803524D0  38 65 00 48 */	addi r3, r5, 0x48
/* 803524D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803524D8  38 85 00 68 */	addi r4, r5, 0x68
/* 803524DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803524E0  38 A5 00 74 */	addi r5, r5, 0x74
/* 803524E4  48 00 00 9D */	bl __DSP_debug_printf
/* 803524E8  80 0D 93 80 */	lwz r0, __DSP_init_flag(r13)
/* 803524EC  2C 00 00 01 */	cmpwi r0, 1
/* 803524F0  41 82 00 7C */	beq lbl_8035256C
/* 803524F4  80 6D 84 D8 */	lwz r3, __DSPVersion(r13)
/* 803524F8  4B FE 83 7D */	bl OSRegisterVersion
/* 803524FC  4B FE B1 F9 */	bl OSDisableInterrupts
/* 80352500  3C 80 80 2A */	lis r4, __DSPHandler@ha
/* 80352504  3B E3 00 00 */	addi r31, r3, 0
/* 80352508  38 84 EB 20 */	addi r4, r4, __DSPHandler@l
/* 8035250C  38 60 00 07 */	li r3, 7
/* 80352510  4B FE B2 31 */	bl __OSSetInterruptHandler
/* 80352514  3C 60 01 00 */	lis r3, 0x100
/* 80352518  4B FE B6 2D */	bl __OSUnmaskInterrupts
/* 8035251C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC005000@ha */
/* 80352520  38 C3 50 00 */	addi r6, r3, 0x5000 /* 0xCC005000@l */
/* 80352524  A0 63 50 0A */	lhz r3, 0x500a(r3)
/* 80352528  38 00 FF 57 */	li r0, -169
/* 8035252C  7C 60 00 38 */	and r0, r3, r0
/* 80352530  60 00 08 00 */	ori r0, r0, 0x800
/* 80352534  B0 06 00 0A */	sth r0, 0xa(r6)
/* 80352538  38 A0 FF 53 */	li r5, -173
/* 8035253C  38 80 00 00 */	li r4, 0
/* 80352540  A0 E6 00 0A */	lhz r7, 0xa(r6)
/* 80352544  38 00 00 01 */	li r0, 1
/* 80352548  38 7F 00 00 */	addi r3, r31, 0
/* 8035254C  7C E5 28 38 */	and r5, r7, r5
/* 80352550  B0 A6 00 0A */	sth r5, 0xa(r6)
/* 80352554  90 8D 93 88 */	stw r4, __DSP_tmp_task(r13)
/* 80352558  90 8D 93 94 */	stw r4, __DSP_curr_task(r13)
/* 8035255C  90 8D 93 8C */	stw r4, __DSP_last_task(r13)
/* 80352560  90 8D 93 90 */	stw r4, __DSP_first_task(r13)
/* 80352564  90 0D 93 80 */	stw r0, __DSP_init_flag(r13)
/* 80352568  4B FE B1 B5 */	bl OSRestoreInterrupts
lbl_8035256C:
/* 8035256C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80352570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80352574  38 21 00 10 */	addi r1, r1, 0x10
/* 80352578  7C 08 03 A6 */	mtlr r0
/* 8035257C  4E 80 00 20 */	blr 
