lbl_807CCF64:
/* 807CCF64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807CCF68  7C 08 02 A6 */	mflr r0
/* 807CCF6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807CCF70  39 61 00 20 */	addi r11, r1, 0x20
/* 807CCF74  4B B9 52 65 */	bl _savegpr_28
/* 807CCF78  7C 7C 1B 78 */	mr r28, r3
/* 807CCF7C  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 807CCF80  3C 80 80 7D */	lis r4, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CCF84  38 84 EE FC */	addi r4, r4, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CCF88  4B 86 00 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807CCF8C  3C 7C 00 01 */	addis r3, r28, 1
/* 807CCF90  88 03 0F F8 */	lbz r0, 0xff8(r3)
/* 807CCF94  28 00 00 00 */	cmplwi r0, 0
/* 807CCF98  41 82 00 10 */	beq lbl_807CCFA8
/* 807CCF9C  38 00 00 00 */	li r0, 0
/* 807CCFA0  3C 60 80 7D */	lis r3, struct_807CF4B4+0x1@ha /* 0x807CF4B5@ha */
/* 807CCFA4  98 03 F4 B5 */	stb r0, struct_807CF4B4+0x1@l(r3)  /* 0x807CF4B5@l */
lbl_807CCFA8:
/* 807CCFA8  3B A0 00 00 */	li r29, 0
/* 807CCFAC  3B E0 00 00 */	li r31, 0
/* 807CCFB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CCFB4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_807CCFB8:
/* 807CCFB8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807CCFBC  38 63 02 10 */	addi r3, r3, 0x210
/* 807CCFC0  3C 9F 00 01 */	addis r4, r31, 1
/* 807CCFC4  38 84 0F 78 */	addi r4, r4, 0xf78
/* 807CCFC8  7C 9C 20 2E */	lwzx r4, r28, r4
/* 807CCFCC  4B 87 E9 4D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807CCFD0  28 03 00 00 */	cmplwi r3, 0
/* 807CCFD4  41 82 00 08 */	beq lbl_807CCFDC
/* 807CCFD8  4B AB 1C 89 */	bl deleteAllParticle__14JPABaseEmitterFv
lbl_807CCFDC:
/* 807CCFDC  3B BD 00 01 */	addi r29, r29, 1
/* 807CCFE0  2C 1D 00 02 */	cmpwi r29, 2
/* 807CCFE4  3B FF 00 04 */	addi r31, r31, 4
/* 807CCFE8  41 80 FF D0 */	blt lbl_807CCFB8
/* 807CCFEC  80 1C 00 F0 */	lwz r0, 0xf0(r28)
/* 807CCFF0  28 00 00 00 */	cmplwi r0, 0
/* 807CCFF4  41 82 00 18 */	beq lbl_807CD00C
/* 807CCFF8  38 7C 12 54 */	addi r3, r28, 0x1254
/* 807CCFFC  81 9C 12 54 */	lwz r12, 0x1254(r28)
/* 807CD000  81 8C 00 08 */	lwz r12, 8(r12)
/* 807CD004  7D 89 03 A6 */	mtctr r12
/* 807CD008  4E 80 04 21 */	bctrl 
lbl_807CD00C:
/* 807CD00C  38 60 00 01 */	li r3, 1
/* 807CD010  39 61 00 20 */	addi r11, r1, 0x20
/* 807CD014  4B B9 52 11 */	bl _restgpr_28
/* 807CD018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807CD01C  7C 08 03 A6 */	mtlr r0
/* 807CD020  38 21 00 20 */	addi r1, r1, 0x20
/* 807CD024  4E 80 00 20 */	blr 
