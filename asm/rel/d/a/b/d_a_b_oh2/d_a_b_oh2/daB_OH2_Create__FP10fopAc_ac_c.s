lbl_8061E868:
/* 8061E868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061E86C  7C 08 02 A6 */	mflr r0
/* 8061E870  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061E874  39 61 00 30 */	addi r11, r1, 0x30
/* 8061E878  4B D4 39 64 */	b _savegpr_29
/* 8061E87C  7C 7E 1B 78 */	mr r30, r3
/* 8061E880  3C 80 80 62 */	lis r4, lit_3678@ha
/* 8061E884  3B E4 EA 38 */	addi r31, r4, lit_3678@l
/* 8061E888  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8061E88C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8061E890  40 82 00 68 */	bne lbl_8061E8F8
/* 8061E894  7F C0 F3 79 */	or. r0, r30, r30
/* 8061E898  41 82 00 54 */	beq lbl_8061E8EC
/* 8061E89C  7C 1D 03 78 */	mr r29, r0
/* 8061E8A0  4B 9F A2 C4 */	b __ct__10fopAc_ac_cFv
/* 8061E8A4  38 7D 06 60 */	addi r3, r29, 0x660
/* 8061E8A8  3C 80 80 62 */	lis r4, __ct__4cXyzFv@ha
/* 8061E8AC  38 84 EA 2C */	addi r4, r4, __ct__4cXyzFv@l
/* 8061E8B0  3C A0 80 62 */	lis r5, __dt__4cXyzFv@ha
/* 8061E8B4  38 A5 E1 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 8061E8B8  38 C0 00 0C */	li r6, 0xc
/* 8061E8BC  38 E0 00 1F */	li r7, 0x1f
/* 8061E8C0  4B D4 34 A0 */	b __construct_array
/* 8061E8C4  38 7D 07 D4 */	addi r3, r29, 0x7d4
/* 8061E8C8  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061E8CC  38 84 EA 28 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061E8D0  3C A0 80 62 */	lis r5, __dt__5csXyzFv@ha
/* 8061E8D4  38 A5 E9 EC */	addi r5, r5, __dt__5csXyzFv@l
/* 8061E8D8  38 C0 00 06 */	li r6, 6
/* 8061E8DC  38 E0 00 1F */	li r7, 0x1f
/* 8061E8E0  4B D4 34 80 */	b __construct_array
/* 8061E8E4  38 7D 08 98 */	addi r3, r29, 0x898
/* 8061E8E8  4B CA 26 7C */	b __ct__15Z2CreatureEnemyFv
lbl_8061E8EC:
/* 8061E8EC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8061E8F0  60 00 00 08 */	ori r0, r0, 8
/* 8061E8F4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8061E8F8:
/* 8061E8F8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8061E8FC  3C 80 80 62 */	lis r4, stringBase0@ha
/* 8061E900  38 84 EA 84 */	addi r4, r4, stringBase0@l
/* 8061E904  4B A0 E5 B8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8061E908  7C 7D 1B 78 */	mr r29, r3
/* 8061E90C  2C 1D 00 04 */	cmpwi r29, 4
/* 8061E910  40 82 00 C0 */	bne lbl_8061E9D0
/* 8061E914  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8061E918  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8061E91C  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 8061E920  7F C3 F3 78 */	mr r3, r30
/* 8061E924  3C 80 80 62 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8061E928  38 84 E5 40 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8061E92C  38 A0 23 E0 */	li r5, 0x23e0
/* 8061E930  4B 9F BB 80 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8061E934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8061E938  40 82 00 0C */	bne lbl_8061E944
/* 8061E93C  38 60 00 05 */	li r3, 5
/* 8061E940  48 00 00 94 */	b lbl_8061E9D4
lbl_8061E944:
/* 8061E944  38 7E 08 98 */	addi r3, r30, 0x898
/* 8061E948  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8061E94C  7C 85 23 78 */	mr r5, r4
/* 8061E950  38 C0 00 03 */	li r6, 3
/* 8061E954  38 E0 00 01 */	li r7, 1
/* 8061E958  4B CA 27 3C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8061E95C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8061E960  4B C4 8F F4 */	b cM_rndF__Ff
/* 8061E964  FC 00 08 1E */	fctiwz f0, f1
/* 8061E968  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061E96C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061E970  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 8061E974  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8061E978  4B C4 8F DC */	b cM_rndF__Ff
/* 8061E97C  FC 00 08 1E */	fctiwz f0, f1
/* 8061E980  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8061E984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061E988  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 8061E98C  38 60 00 00 */	li r3, 0
/* 8061E990  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8061E994  38 00 00 1F */	li r0, 0x1f
/* 8061E998  7C 09 03 A6 */	mtctr r0
lbl_8061E99C:
/* 8061E99C  38 03 06 64 */	addi r0, r3, 0x664
/* 8061E9A0  7C 1E 05 2E */	stfsx f0, r30, r0
/* 8061E9A4  38 63 00 0C */	addi r3, r3, 0xc
/* 8061E9A8  42 00 FF F4 */	bdnz lbl_8061E99C
/* 8061E9AC  38 00 00 0A */	li r0, 0xa
/* 8061E9B0  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 8061E9B4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8061E9B8  4B C4 8F D4 */	b cM_rndFX__Ff
/* 8061E9BC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8061E9C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E9C4  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 8061E9C8  7F C3 F3 78 */	mr r3, r30
/* 8061E9CC  4B FF FA 45 */	bl daB_OH2_Execute__FP11b_oh2_class
lbl_8061E9D0:
/* 8061E9D0  7F A3 EB 78 */	mr r3, r29
lbl_8061E9D4:
/* 8061E9D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8061E9D8  4B D4 38 50 */	b _restgpr_29
/* 8061E9DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061E9E0  7C 08 03 A6 */	mtlr r0
/* 8061E9E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8061E9E8  4E 80 00 20 */	blr 
