lbl_806D0054:
/* 806D0054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D0058  7C 08 02 A6 */	mflr r0
/* 806D005C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D0064  7C 7F 1B 78 */	mr r31, r3
/* 806D0068  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806D006C  3C 80 80 6D */	lis r4, d_a_e_gi__stringBase0@ha /* 0x806D0F78@ha */
/* 806D0070  38 84 0F 78 */	addi r4, r4, d_a_e_gi__stringBase0@l /* 0x806D0F78@l */
/* 806D0074  4B 95 CF 95 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806D0078  88 1F 10 78 */	lbz r0, 0x1078(r31)
/* 806D007C  28 00 00 00 */	cmplwi r0, 0
/* 806D0080  41 82 00 10 */	beq lbl_806D0090
/* 806D0084  38 00 00 00 */	li r0, 0
/* 806D0088  3C 60 80 6D */	lis r3, data_806D1128@ha /* 0x806D1128@ha */
/* 806D008C  98 03 11 28 */	stb r0, data_806D1128@l(r3)  /* 0x806D1128@l */
lbl_806D0090:
/* 806D0090  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806D0094  28 00 00 00 */	cmplwi r0, 0
/* 806D0098  41 82 00 18 */	beq lbl_806D00B0
/* 806D009C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806D00A0  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806D00A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 806D00A8  7D 89 03 A6 */	mtctr r12
/* 806D00AC  4E 80 04 21 */	bctrl 
lbl_806D00B0:
/* 806D00B0  38 60 00 01 */	li r3, 1
/* 806D00B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D00B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D00BC  7C 08 03 A6 */	mtlr r0
/* 806D00C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806D00C4  4E 80 00 20 */	blr 
