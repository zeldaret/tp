lbl_800E0630:
/* 800E0630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0634  7C 08 02 A6 */	mflr r0
/* 800E0638  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E063C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0640  7C 7F 1B 78 */	mr r31, r3
/* 800E0644  38 80 00 52 */	li r4, 0x52
/* 800E0648  38 A0 00 02 */	li r5, 2
/* 800E064C  3C C0 80 39 */	lis r6, m__18daAlinkHIO_boom_c0@ha
/* 800E0650  38 C6 E6 C8 */	addi r6, r6, m__18daAlinkHIO_boom_c0@l
/* 800E0654  38 C6 00 14 */	addi r6, r6, 0x14
/* 800E0658  4B FC D0 99 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800E065C  7F E3 FB 78 */	mr r3, r31
/* 800E0660  38 80 00 E8 */	li r4, 0xe8
/* 800E0664  38 A0 00 01 */	li r5, 1
/* 800E0668  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800E066C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800E0670  4B FC EE 41 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800E0674  38 00 00 FE */	li r0, 0xfe
/* 800E0678  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800E067C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E0680  28 00 00 46 */	cmplwi r0, 0x46
/* 800E0684  41 82 00 20 */	beq lbl_800E06A4
/* 800E0688  7F E3 FB 78 */	mr r3, r31
/* 800E068C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002002F@ha */
/* 800E0690  38 84 00 2F */	addi r4, r4, 0x002F /* 0x0002002F@l */
/* 800E0694  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E0698  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800E069C  7D 89 03 A6 */	mtctr r12
/* 800E06A0  4E 80 04 21 */	bctrl 
lbl_800E06A4:
/* 800E06A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E06A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E06AC  7C 08 03 A6 */	mtlr r0
/* 800E06B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E06B4  4E 80 00 20 */	blr 
