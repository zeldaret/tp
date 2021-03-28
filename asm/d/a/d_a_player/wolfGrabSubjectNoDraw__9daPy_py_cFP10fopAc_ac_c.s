lbl_8015F60C:
/* 8015F60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F610  7C 08 02 A6 */	mflr r0
/* 8015F614  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015F61C  3B E0 00 00 */	li r31, 0
/* 8015F620  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015F624  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015F628  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 8015F62C  80 04 05 74 */	lwz r0, 0x574(r4)
/* 8015F630  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8015F634  41 82 00 14 */	beq lbl_8015F648
/* 8015F638  4B FF FF 25 */	bl linkGrabSubjectNoDraw__9daPy_py_cFP10fopAc_ac_c
/* 8015F63C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015F640  41 82 00 08 */	beq lbl_8015F648
/* 8015F644  3B E0 00 01 */	li r31, 1
lbl_8015F648:
/* 8015F648  7F E3 FB 78 */	mr r3, r31
/* 8015F64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F654  7C 08 03 A6 */	mtlr r0
/* 8015F658  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F65C  4E 80 00 20 */	blr 
