lbl_80CB1E30:
/* 80CB1E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1E34  7C 08 02 A6 */	mflr r0
/* 80CB1E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1E3C  88 03 05 EC */	lbz r0, 0x5ec(r3)
/* 80CB1E40  28 00 00 00 */	cmplwi r0, 0
/* 80CB1E44  41 82 00 0C */	beq lbl_80CB1E50
/* 80CB1E48  38 63 05 F4 */	addi r3, r3, 0x5f4
/* 80CB1E4C  4B 4F 5A E0 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80CB1E50:
/* 80CB1E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1E54  7C 08 03 A6 */	mtlr r0
/* 80CB1E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1E5C  4E 80 00 20 */	blr 
