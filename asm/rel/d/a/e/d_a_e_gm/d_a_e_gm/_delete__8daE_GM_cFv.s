lbl_806D6980:
/* 806D6980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D6984  7C 08 02 A6 */	mflr r0
/* 806D6988  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D698C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D6990  93 C1 00 08 */	stw r30, 8(r1)
/* 806D6994  7C 7E 1B 78 */	mr r30, r3
/* 806D6998  3C 60 80 6D */	lis r3, lit_1109@ha /* 0x806D7E78@ha */
/* 806D699C  3B E3 7E 78 */	addi r31, r3, lit_1109@l /* 0x806D7E78@l */
/* 806D69A0  88 1E 0A 6F */	lbz r0, 0xa6f(r30)
/* 806D69A4  28 00 00 03 */	cmplwi r0, 3
/* 806D69A8  40 82 00 1C */	bne lbl_806D69C4
/* 806D69AC  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 806D69B0  3C 80 80 6D */	lis r4, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D69B4  38 84 7A F0 */	addi r4, r4, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D69B8  38 84 00 05 */	addi r4, r4, 5
/* 806D69BC  4B 95 66 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806D69C0  48 00 00 14 */	b lbl_806D69D4
lbl_806D69C4:
/* 806D69C4  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 806D69C8  3C 80 80 6D */	lis r4, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D69CC  38 84 7A F0 */	addi r4, r4, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D69D0  4B 95 66 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_806D69D4:
/* 806D69D4  88 7F 00 A5 */	lbz r3, 0xa5(r31)
/* 806D69D8  38 03 FF FF */	addi r0, r3, -1
/* 806D69DC  98 1F 00 A5 */	stb r0, 0xa5(r31)
/* 806D69E0  88 7F 00 A6 */	lbz r3, 0xa6(r31)
/* 806D69E4  28 03 00 00 */	cmplwi r3, 0
/* 806D69E8  41 82 00 0C */	beq lbl_806D69F4
/* 806D69EC  38 03 FF FF */	addi r0, r3, -1
/* 806D69F0  98 1F 00 A6 */	stb r0, 0xa6(r31)
lbl_806D69F4:
/* 806D69F4  3C 60 80 6D */	lis r3, data_806D7B34@ha /* 0x806D7B34@ha */
/* 806D69F8  38 63 7B 34 */	addi r3, r3, data_806D7B34@l /* 0x806D7B34@l */
/* 806D69FC  80 63 00 00 */	lwz r3, 0(r3)
/* 806D6A00  28 1E 00 00 */	cmplwi r30, 0
/* 806D6A04  41 82 00 0C */	beq lbl_806D6A10
/* 806D6A08  80 1E 00 04 */	lwz r0, 4(r30)
/* 806D6A0C  48 00 00 08 */	b lbl_806D6A14
lbl_806D6A10:
/* 806D6A10  38 00 FF FF */	li r0, -1
lbl_806D6A14:
/* 806D6A14  7C 03 00 40 */	cmplw r3, r0
/* 806D6A18  40 82 00 18 */	bne lbl_806D6A30
/* 806D6A1C  38 00 FF FF */	li r0, -1
/* 806D6A20  3C 60 80 6D */	lis r3, data_806D7B34@ha /* 0x806D7B34@ha */
/* 806D6A24  90 03 7B 34 */	stw r0, data_806D7B34@l(r3)  /* 0x806D7B34@l */
/* 806D6A28  38 00 00 00 */	li r0, 0
/* 806D6A2C  98 1F 00 A4 */	stb r0, 0xa4(r31)
lbl_806D6A30:
/* 806D6A30  3C 60 80 6D */	lis r3, data_806D7B38@ha /* 0x806D7B38@ha */
/* 806D6A34  38 63 7B 38 */	addi r3, r3, data_806D7B38@l /* 0x806D7B38@l */
/* 806D6A38  80 63 00 00 */	lwz r3, 0(r3)
/* 806D6A3C  28 1E 00 00 */	cmplwi r30, 0
/* 806D6A40  41 82 00 0C */	beq lbl_806D6A4C
/* 806D6A44  80 1E 00 04 */	lwz r0, 4(r30)
/* 806D6A48  48 00 00 08 */	b lbl_806D6A50
lbl_806D6A4C:
/* 806D6A4C  38 00 FF FF */	li r0, -1
lbl_806D6A50:
/* 806D6A50  7C 03 00 40 */	cmplw r3, r0
/* 806D6A54  40 82 00 10 */	bne lbl_806D6A64
/* 806D6A58  38 00 FF FF */	li r0, -1
/* 806D6A5C  3C 60 80 6D */	lis r3, data_806D7B38@ha /* 0x806D7B38@ha */
/* 806D6A60  90 03 7B 38 */	stw r0, data_806D7B38@l(r3)  /* 0x806D7B38@l */
lbl_806D6A64:
/* 806D6A64  88 1F 00 3D */	lbz r0, 0x3d(r31)
/* 806D6A68  28 00 00 00 */	cmplwi r0, 0
/* 806D6A6C  41 82 00 0C */	beq lbl_806D6A78
/* 806D6A70  38 00 00 00 */	li r0, 0
/* 806D6A74  98 1F 00 3D */	stb r0, 0x3d(r31)
lbl_806D6A78:
/* 806D6A78  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 806D6A7C  28 00 00 00 */	cmplwi r0, 0
/* 806D6A80  41 82 00 0C */	beq lbl_806D6A8C
/* 806D6A84  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D6A88  4B 93 A8 89 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806D6A8C:
/* 806D6A8C  38 60 00 01 */	li r3, 1
/* 806D6A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D6A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D6A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D6A9C  7C 08 03 A6 */	mtlr r0
/* 806D6AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 806D6AA4  4E 80 00 20 */	blr 
