lbl_80835D28:
/* 80835D28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80835D2C  7C 08 02 A6 */	mflr r0
/* 80835D30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80835D34  39 61 00 30 */	addi r11, r1, 0x30
/* 80835D38  4B B2 C4 98 */	b _savegpr_26
/* 80835D3C  7C 7A 1B 78 */	mr r26, r3
/* 80835D40  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha
/* 80835D44  3B C3 78 A8 */	addi r30, r3, M_attr__10daFmtMng_c@l
/* 80835D48  83 9A 05 6C */	lwz r28, 0x56c(r26)
/* 80835D4C  38 00 00 00 */	li r0, 0
/* 80835D50  90 01 00 08 */	stw r0, 8(r1)
/* 80835D54  3B 60 00 00 */	li r27, 0
/* 80835D58  48 00 00 68 */	b lbl_80835DC0
lbl_80835D5C:
/* 80835D5C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80835D60  38 81 00 08 */	addi r4, r1, 8
/* 80835D64  4B 7E 3C 58 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80835D68  83 A1 00 08 */	lwz r29, 8(r1)
/* 80835D6C  28 1D 00 00 */	cmplwi r29, 0
/* 80835D70  41 82 00 48 */	beq lbl_80835DB8
/* 80835D74  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80835D78  4B A3 1B DC */	b cM_rndF__Ff
/* 80835D7C  FC 00 08 1E */	fctiwz f0, f1
/* 80835D80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80835D84  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80835D88  7F A3 EB 78 */	mr r3, r29
/* 80835D8C  38 80 00 02 */	li r4, 2
/* 80835D90  80 BD 0A CC */	lwz r5, 0xacc(r29)
/* 80835D94  4B 92 23 5C */	b getAnmP__10daNpcCd2_cFii
/* 80835D98  7C 64 1B 78 */	mr r4, r3
/* 80835D9C  7F A3 EB 78 */	mr r3, r29
/* 80835DA0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80835DA4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80835DA8  38 A0 00 02 */	li r5, 2
/* 80835DAC  7F E6 FB 78 */	mr r6, r31
/* 80835DB0  38 E0 FF FF */	li r7, -1
/* 80835DB4  4B 92 31 4C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80835DB8:
/* 80835DB8  3B 7B 00 01 */	addi r27, r27, 1
/* 80835DBC  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_80835DC0:
/* 80835DC0  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80835DC4  80 1A 05 84 */	lwz r0, 0x584(r26)
/* 80835DC8  7C 03 01 D6 */	mullw r0, r3, r0
/* 80835DCC  7C 1B 00 00 */	cmpw r27, r0
/* 80835DD0  41 80 FF 8C */	blt lbl_80835D5C
/* 80835DD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80835DD8  4B B2 C4 44 */	b _restgpr_26
/* 80835DDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80835DE0  7C 08 03 A6 */	mtlr r0
/* 80835DE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80835DE8  4E 80 00 20 */	blr 
