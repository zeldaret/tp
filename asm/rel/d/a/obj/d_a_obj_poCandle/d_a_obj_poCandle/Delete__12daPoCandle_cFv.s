lbl_80CB242C:
/* 80CB242C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2430  7C 08 02 A6 */	mflr r0
/* 80CB2434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB243C  7C 7F 1B 78 */	mr r31, r3
/* 80CB2440  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80CB2444  3C 80 80 CB */	lis r4, d_a_obj_poCandle__stringBase0@ha /* 0x80CB26E8@ha */
/* 80CB2448  38 84 26 E8 */	addi r4, r4, d_a_obj_poCandle__stringBase0@l /* 0x80CB26E8@l */
/* 80CB244C  4B 37 AB BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB2450  88 1F 05 EC */	lbz r0, 0x5ec(r31)
/* 80CB2454  28 00 00 00 */	cmplwi r0, 0
/* 80CB2458  41 82 00 0C */	beq lbl_80CB2464
/* 80CB245C  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80CB2460  4B 4F 54 CD */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80CB2464:
/* 80CB2464  38 60 00 01 */	li r3, 1
/* 80CB2468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB246C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2470  7C 08 03 A6 */	mtlr r0
/* 80CB2474  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2478  4E 80 00 20 */	blr 
