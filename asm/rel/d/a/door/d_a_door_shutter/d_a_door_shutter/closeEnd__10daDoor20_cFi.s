lbl_80462868:
/* 80462868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046286C  7C 08 02 A6 */	mflr r0
/* 80462870  90 01 00 24 */	stw r0, 0x24(r1)
/* 80462874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80462878  7C 7F 1B 78 */	mr r31, r3
/* 8046287C  A0 03 06 8E */	lhz r0, 0x68e(r3)
/* 80462880  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80462884  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 80462888  48 00 2E 69 */	bl closeEndCom__10daDoor20_cFv
/* 8046288C  3C 60 80 46 */	lis r3, lit_4256@ha
/* 80462890  C0 23 68 2C */	lfs f1, lit_4256@l(r3)
/* 80462894  D0 21 00 08 */	stfs f1, 8(r1)
/* 80462898  3C 60 80 46 */	lis r3, lit_4124@ha
/* 8046289C  C0 03 68 24 */	lfs f0, lit_4124@l(r3)
/* 804628A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804628A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804628A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804628AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804628B0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804628B4  38 80 00 04 */	li r4, 4
/* 804628B8  38 A0 00 1F */	li r5, 0x1f
/* 804628BC  38 C1 00 08 */	addi r6, r1, 8
/* 804628C0  4B C0 D1 64 */	b StartShock__12dVibration_cFii4cXyz
/* 804628C4  7F E3 FB 78 */	mr r3, r31
/* 804628C8  4B BD 78 C0 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 804628CC  28 03 00 0C */	cmplwi r3, 0xc
/* 804628D0  41 81 00 1C */	bgt lbl_804628EC
/* 804628D4  3C 80 80 46 */	lis r4, lit_4776@ha
/* 804628D8  38 84 6F A0 */	addi r4, r4, lit_4776@l
/* 804628DC  54 60 10 3A */	slwi r0, r3, 2
/* 804628E0  7C 04 00 2E */	lwzx r0, r4, r0
/* 804628E4  7C 09 03 A6 */	mtctr r0
/* 804628E8  4E 80 04 20 */	bctr 
lbl_804628EC:
/* 804628EC  7F E3 FB 78 */	mr r3, r31
/* 804628F0  4B FF FE F9 */	bl closeEnd_0__10daDoor20_cFv
/* 804628F4  48 00 00 0C */	b lbl_80462900
lbl_804628F8:
/* 804628F8  7F E3 FB 78 */	mr r3, r31
/* 804628FC  4B FF FE F1 */	bl closeEnd_1__10daDoor20_cFv
lbl_80462900:
/* 80462900  7F E3 FB 78 */	mr r3, r31
/* 80462904  48 00 21 E1 */	bl deleteKey__10daDoor20_cFv
/* 80462908  7F E3 FB 78 */	mr r3, r31
/* 8046290C  48 00 1D 2D */	bl setDoorAngleSpec__10daDoor20_cFv
/* 80462910  38 60 00 01 */	li r3, 1
/* 80462914  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80462918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046291C  7C 08 03 A6 */	mtlr r0
/* 80462920  38 21 00 20 */	addi r1, r1, 0x20
/* 80462924  4E 80 00 20 */	blr 
