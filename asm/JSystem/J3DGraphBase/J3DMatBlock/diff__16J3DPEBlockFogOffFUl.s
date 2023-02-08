lbl_80321ACC:
/* 80321ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321AD0  7C 08 02 A6 */	mflr r0
/* 80321AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321AD8  54 80 00 85 */	rlwinm. r0, r4, 0, 2, 2
/* 80321ADC  41 82 00 14 */	beq lbl_80321AF0
/* 80321AE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80321AE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80321AE8  7D 89 03 A6 */	mtctr r12
/* 80321AEC  4E 80 04 21 */	bctrl 
lbl_80321AF0:
/* 80321AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321AF4  7C 08 03 A6 */	mtlr r0
/* 80321AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80321AFC  4E 80 00 20 */	blr 
