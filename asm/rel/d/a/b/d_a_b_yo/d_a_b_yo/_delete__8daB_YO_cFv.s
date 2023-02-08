lbl_80637FC8:
/* 80637FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637FCC  7C 08 02 A6 */	mflr r0
/* 80637FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637FD8  7C 7F 1B 78 */	mr r31, r3
/* 80637FDC  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80637FE0  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80637FE4  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80637FE8  38 84 00 11 */	addi r4, r4, 0x11
/* 80637FEC  4B 9F 50 1D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80637FF0  80 9F 10 14 */	lwz r4, 0x1014(r31)
/* 80637FF4  28 04 00 00 */	cmplwi r4, 0
/* 80637FF8  41 82 00 14 */	beq lbl_8063800C
/* 80637FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80638000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80638004  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80638008  4B A3 C2 49 */	bl Release__4cBgSFP9dBgW_Base
lbl_8063800C:
/* 8063800C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80638010  28 00 00 00 */	cmplwi r0, 0
/* 80638014  41 82 00 18 */	beq lbl_8063802C
/* 80638018  38 7F 06 34 */	addi r3, r31, 0x634
/* 8063801C  81 9F 06 34 */	lwz r12, 0x634(r31)
/* 80638020  81 8C 00 08 */	lwz r12, 8(r12)
/* 80638024  7D 89 03 A6 */	mtctr r12
/* 80638028  4E 80 04 21 */	bctrl 
lbl_8063802C:
/* 8063802C  88 1F 0F CF */	lbz r0, 0xfcf(r31)
/* 80638030  28 00 00 01 */	cmplwi r0, 1
/* 80638034  40 82 00 0C */	bne lbl_80638040
/* 80638038  38 60 00 01 */	li r3, 1
/* 8063803C  48 00 00 88 */	b lbl_806380C4
lbl_80638040:
/* 80638040  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80638044  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638048  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 8063804C  4B 9F 4F BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80638050  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80638054  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638058  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 8063805C  38 84 00 18 */	addi r4, r4, 0x18
/* 80638060  4B 9F 4F A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80638064  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80638068  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 8063806C  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638070  38 84 00 1C */	addi r4, r4, 0x1c
/* 80638074  4B 9F 4F 95 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80638078  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 8063807C  3C 80 80 64 */	lis r4, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80638080  38 84 9A 34 */	addi r4, r4, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80638084  38 84 00 21 */	addi r4, r4, 0x21
/* 80638088  4B 9F 4F 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8063808C  88 1F 1B 84 */	lbz r0, 0x1b84(r31)
/* 80638090  28 00 00 00 */	cmplwi r0, 0
/* 80638094  41 82 00 10 */	beq lbl_806380A4
/* 80638098  38 00 00 00 */	li r0, 0
/* 8063809C  3C 60 80 64 */	lis r3, struct_80639F74+0x1@ha /* 0x80639F75@ha */
/* 806380A0  98 03 9F 75 */	stb r0, struct_80639F74+0x1@l(r3)  /* 0x80639F75@l */
lbl_806380A4:
/* 806380A4  80 9F 10 18 */	lwz r4, 0x1018(r31)
/* 806380A8  28 04 00 00 */	cmplwi r4, 0
/* 806380AC  41 82 00 14 */	beq lbl_806380C0
/* 806380B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806380B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806380B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806380BC  4B A3 C1 95 */	bl Release__4cBgSFP9dBgW_Base
lbl_806380C0:
/* 806380C0  38 60 00 01 */	li r3, 1
lbl_806380C4:
/* 806380C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806380C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806380CC  7C 08 03 A6 */	mtlr r0
/* 806380D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806380D4  4E 80 00 20 */	blr 
