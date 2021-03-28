lbl_8084FAA8:
/* 8084FAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084FAAC  7C 08 02 A6 */	mflr r0
/* 8084FAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084FAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084FAB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8084FABC  7C 7E 1B 78 */	mr r30, r3
/* 8084FAC0  4B 93 1B 80 */	b dCam_getBody__Fv
/* 8084FAC4  7C 7F 1B 78 */	mr r31, r3
/* 8084FAC8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8084FACC  28 00 00 02 */	cmplwi r0, 2
/* 8084FAD0  41 82 00 2C */	beq lbl_8084FAFC
/* 8084FAD4  7F C3 F3 78 */	mr r3, r30
/* 8084FAD8  38 80 00 02 */	li r4, 2
/* 8084FADC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8084FAE0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8084FAE4  38 C0 00 03 */	li r6, 3
/* 8084FAE8  4B 7C BE 20 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8084FAEC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8084FAF0  60 00 00 02 */	ori r0, r0, 2
/* 8084FAF4  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8084FAF8  48 00 00 40 */	b lbl_8084FB38
lbl_8084FAFC:
/* 8084FAFC  4B 91 19 D4 */	b Stop__9dCamera_cFv
/* 8084FB00  7F E3 FB 78 */	mr r3, r31
/* 8084FB04  38 80 00 03 */	li r4, 3
/* 8084FB08  4B 91 35 04 */	b SetTrimSize__9dCamera_cFl
/* 8084FB0C  38 00 00 00 */	li r0, 0
/* 8084FB10  90 1E 07 48 */	stw r0, 0x748(r30)
/* 8084FB14  90 1E 07 4C */	stw r0, 0x74c(r30)
/* 8084FB18  7F C3 F3 78 */	mr r3, r30
/* 8084FB1C  38 80 00 07 */	li r4, 7
/* 8084FB20  38 A0 00 00 */	li r5, 0
/* 8084FB24  4B FF AF 75 */	bl setActionMode__8daKago_cFii
/* 8084FB28  38 00 00 01 */	li r0, 1
/* 8084FB2C  98 1E 06 DC */	stb r0, 0x6dc(r30)
/* 8084FB30  38 00 00 FF */	li r0, 0xff
/* 8084FB34  98 1E 06 DE */	stb r0, 0x6de(r30)
lbl_8084FB38:
/* 8084FB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084FB3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8084FB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084FB44  7C 08 03 A6 */	mtlr r0
/* 8084FB48  38 21 00 10 */	addi r1, r1, 0x10
/* 8084FB4C  4E 80 00 20 */	blr 
