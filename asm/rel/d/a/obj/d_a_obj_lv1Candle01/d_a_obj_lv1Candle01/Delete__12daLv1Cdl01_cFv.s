lbl_80C57698:
/* 80C57698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5769C  7C 08 02 A6 */	mflr r0
/* 80C576A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C576A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C576A8  7C 7F 1B 78 */	mr r31, r3
/* 80C576AC  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80C576B0  4B 66 69 48 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C576B4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C576B8  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C576BC  38 84 78 C0 */	addi r4, r4, stringBase0@l
/* 80C576C0  4B 3D 59 48 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C576C4  88 1F 07 40 */	lbz r0, 0x740(r31)
/* 80C576C8  28 00 00 00 */	cmplwi r0, 0
/* 80C576CC  41 82 00 0C */	beq lbl_80C576D8
/* 80C576D0  38 7F 07 48 */	addi r3, r31, 0x748
/* 80C576D4  4B 55 02 58 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C576D8:
/* 80C576D8  38 60 00 01 */	li r3, 1
/* 80C576DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C576E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C576E4  7C 08 03 A6 */	mtlr r0
/* 80C576E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C576EC  4E 80 00 20 */	blr 
