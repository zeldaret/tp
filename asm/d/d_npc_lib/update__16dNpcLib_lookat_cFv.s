lbl_80251EF8:
/* 80251EF8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80251EFC  7C 08 02 A6 */	mflr r0
/* 80251F00  90 01 00 94 */	stw r0, 0x94(r1)
/* 80251F04  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80251F08  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80251F0C  39 61 00 80 */	addi r11, r1, 0x80
/* 80251F10  48 11 02 B5 */	bl _savegpr_23
/* 80251F14  7C 7D 1B 78 */	mr r29, r3
/* 80251F18  80 0D 8B E0 */	lwz r0, Zero__5csXyz(r13)
/* 80251F1C  90 01 00 08 */	stw r0, 8(r1)
/* 80251F20  A0 0D 8B E4 */	lhz r0, Zero__5csXyz+4(r13)
/* 80251F24  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80251F28  3B C0 00 00 */	li r30, 0
/* 80251F2C  3B 80 00 00 */	li r28, 0
/* 80251F30  3B 60 00 00 */	li r27, 0
/* 80251F34  3B 40 00 00 */	li r26, 0
/* 80251F38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80251F3C  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80251F40  7F F8 FB 78 */	mr r24, r31
/* 80251F44  C3 E2 B3 E8 */	lfs f31, lit_3864(r2)
/* 80251F48  7F F9 FB 78 */	mr r25, r31
/* 80251F4C  48 00 00 A0 */	b lbl_80251FEC
lbl_80251F50:
/* 80251F50  7E FD D2 14 */	add r23, r29, r26
/* 80251F54  38 77 00 34 */	addi r3, r23, 0x34
/* 80251F58  4B DB AF 45 */	bl XYZrotS__14mDoMtx_stack_cFRC5csXyz
/* 80251F5C  7F E3 FB 78 */	mr r3, r31
/* 80251F60  38 81 00 1C */	addi r4, r1, 0x1c
/* 80251F64  48 0F 45 4D */	bl PSMTXCopy
/* 80251F68  38 7B 00 04 */	addi r3, r27, 4
/* 80251F6C  7C 7D 1A 14 */	add r3, r29, r3
/* 80251F70  4B DB AD F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80251F74  A8 61 00 08 */	lha r3, 8(r1)
/* 80251F78  A8 17 00 4C */	lha r0, 0x4c(r23)
/* 80251F7C  7C 03 02 14 */	add r0, r3, r0
/* 80251F80  B0 01 00 08 */	sth r0, 8(r1)
/* 80251F84  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80251F88  A8 17 00 4E */	lha r0, 0x4e(r23)
/* 80251F8C  7C 03 02 14 */	add r0, r3, r0
/* 80251F90  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80251F94  38 61 00 08 */	addi r3, r1, 8
/* 80251F98  4B DB AF AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80251F9C  7F E3 FB 78 */	mr r3, r31
/* 80251FA0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80251FA4  7F 05 C3 78 */	mr r5, r24
/* 80251FA8  48 0F 45 3D */	bl PSMTXConcat
/* 80251FAC  38 1C 00 AC */	addi r0, r28, 0xac
/* 80251FB0  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80251FB4  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80251FB8  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80251FBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80251FC0  7F 23 CB 78 */	mr r3, r25
/* 80251FC4  38 81 00 10 */	addi r4, r1, 0x10
/* 80251FC8  38 1E 00 01 */	addi r0, r30, 1
/* 80251FCC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80251FD0  38 A5 00 04 */	addi r5, r5, 4
/* 80251FD4  7C BD 2A 14 */	add r5, r29, r5
/* 80251FD8  48 0F 4D 95 */	bl PSMTXMultVec
/* 80251FDC  3B DE 00 01 */	addi r30, r30, 1
/* 80251FE0  3B 9C 00 04 */	addi r28, r28, 4
/* 80251FE4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80251FE8  3B 5A 00 06 */	addi r26, r26, 6
lbl_80251FEC:
/* 80251FEC  80 1D 00 CC */	lwz r0, 0xcc(r29)
/* 80251FF0  7C 1E 00 00 */	cmpw r30, r0
/* 80251FF4  41 80 FF 5C */	blt lbl_80251F50
/* 80251FF8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80251FFC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80252000  39 61 00 80 */	addi r11, r1, 0x80
/* 80252004  48 11 02 0D */	bl _restgpr_23
/* 80252008  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8025200C  7C 08 03 A6 */	mtlr r0
/* 80252010  38 21 00 90 */	addi r1, r1, 0x90
/* 80252014  4E 80 00 20 */	blr 
