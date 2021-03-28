lbl_80CB3918:
/* 80CB3918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB391C  7C 08 02 A6 */	mflr r0
/* 80CB3920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3924  88 83 05 C5 */	lbz r4, 0x5c5(r3)
/* 80CB3928  28 04 00 00 */	cmplwi r4, 0
/* 80CB392C  41 82 00 10 */	beq lbl_80CB393C
/* 80CB3930  38 04 FF FF */	addi r0, r4, -1
/* 80CB3934  98 03 05 C5 */	stb r0, 0x5c5(r3)
/* 80CB3938  48 00 00 10 */	b lbl_80CB3948
lbl_80CB393C:
/* 80CB393C  38 00 00 00 */	li r0, 0
/* 80CB3940  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80CB3944  48 00 01 99 */	bl init_modeFireEnd__10daPoFire_cFv
lbl_80CB3948:
/* 80CB3948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB394C  7C 08 03 A6 */	mtlr r0
/* 80CB3950  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3954  4E 80 00 20 */	blr 
