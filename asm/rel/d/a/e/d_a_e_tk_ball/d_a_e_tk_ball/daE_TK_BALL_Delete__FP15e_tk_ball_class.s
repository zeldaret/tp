lbl_807BD0C8:
/* 807BD0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD0CC  7C 08 02 A6 */	mflr r0
/* 807BD0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BD0D8  7C 7F 1B 78 */	mr r31, r3
/* 807BD0DC  88 03 05 B4 */	lbz r0, 0x5b4(r3)
/* 807BD0E0  28 00 00 00 */	cmplwi r0, 0
/* 807BD0E4  40 82 00 18 */	bne lbl_807BD0FC
/* 807BD0E8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807BD0EC  3C 80 80 7C */	lis r4, d_a_e_tk_ball__stringBase0@ha /* 0x807BD5C4@ha */
/* 807BD0F0  38 84 D5 C4 */	addi r4, r4, d_a_e_tk_ball__stringBase0@l /* 0x807BD5C4@l */
/* 807BD0F4  4B 86 FF 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807BD0F8  48 00 00 18 */	b lbl_807BD110
lbl_807BD0FC:
/* 807BD0FC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807BD100  3C 80 80 7C */	lis r4, d_a_e_tk_ball__stringBase0@ha /* 0x807BD5C4@ha */
/* 807BD104  38 84 D5 C4 */	addi r4, r4, d_a_e_tk_ball__stringBase0@l /* 0x807BD5C4@l */
/* 807BD108  38 84 00 05 */	addi r4, r4, 5
/* 807BD10C  4B 86 FE FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_807BD110:
/* 807BD110  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807BD114  28 00 00 00 */	cmplwi r0, 0
/* 807BD118  41 82 00 0C */	beq lbl_807BD124
/* 807BD11C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807BD120  4B B0 0E D9 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_807BD124:
/* 807BD124  38 60 00 01 */	li r3, 1
/* 807BD128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BD12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD130  7C 08 03 A6 */	mtlr r0
/* 807BD134  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD138  4E 80 00 20 */	blr 
