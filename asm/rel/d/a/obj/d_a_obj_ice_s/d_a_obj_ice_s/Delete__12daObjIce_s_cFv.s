lbl_80C21A08:
/* 80C21A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21A0C  7C 08 02 A6 */	mflr r0
/* 80C21A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C21A18  7C 7F 1B 78 */	mr r31, r3
/* 80C21A1C  38 7F 06 38 */	addi r3, r31, 0x638
/* 80C21A20  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C21BA8@ha */
/* 80C21A24  38 84 1B A8 */	addi r4, r4, l_arcName@l /* 0x80C21BA8@l */
/* 80C21A28  80 84 00 00 */	lwz r4, 0(r4)
/* 80C21A2C  4B 40 B5 DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C21A30  88 1F 06 40 */	lbz r0, 0x640(r31)
/* 80C21A34  28 00 00 00 */	cmplwi r0, 0
/* 80C21A38  41 82 00 10 */	beq lbl_80C21A48
/* 80C21A3C  38 00 00 00 */	li r0, 0
/* 80C21A40  3C 60 80 C2 */	lis r3, data_80C21C38@ha /* 0x80C21C38@ha */
/* 80C21A44  98 03 1C 38 */	stb r0, data_80C21C38@l(r3)  /* 0x80C21C38@l */
lbl_80C21A48:
/* 80C21A48  38 60 00 01 */	li r3, 1
/* 80C21A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C21A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21A54  7C 08 03 A6 */	mtlr r0
/* 80C21A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21A5C  4E 80 00 20 */	blr 
