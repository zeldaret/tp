lbl_80ACD770:
/* 80ACD770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACD774  7C 08 02 A6 */	mflr r0
/* 80ACD778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACD77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACD780  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACD784  7C 7E 1B 78 */	mr r30, r3
/* 80ACD788  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha /* 0x80ACFF90@ha */
/* 80ACD78C  3B E4 FF 90 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80ACFF90@l */
/* 80ACD790  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80ACD794  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80ACD798  80 85 00 00 */	lwz r4, 0(r5)
/* 80ACD79C  80 05 00 04 */	lwz r0, 4(r5)
/* 80ACD7A0  90 83 10 DC */	stw r4, 0x10dc(r3)
/* 80ACD7A4  90 03 10 E0 */	stw r0, 0x10e0(r3)
/* 80ACD7A8  80 05 00 08 */	lwz r0, 8(r5)
/* 80ACD7AC  90 03 10 E4 */	stw r0, 0x10e4(r3)
/* 80ACD7B0  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80ACD7B4  2C 00 00 03 */	cmpwi r0, 3
/* 80ACD7B8  41 82 00 84 */	beq lbl_80ACD83C
/* 80ACD7BC  40 80 00 1C */	bge lbl_80ACD7D8
/* 80ACD7C0  2C 00 00 01 */	cmpwi r0, 1
/* 80ACD7C4  41 82 00 40 */	beq lbl_80ACD804
/* 80ACD7C8  40 80 00 58 */	bge lbl_80ACD820
/* 80ACD7CC  2C 00 00 00 */	cmpwi r0, 0
/* 80ACD7D0  40 80 00 18 */	bge lbl_80ACD7E8
/* 80ACD7D4  48 00 00 F8 */	b lbl_80ACD8CC
lbl_80ACD7D8:
/* 80ACD7D8  2C 00 00 05 */	cmpwi r0, 5
/* 80ACD7DC  41 82 00 98 */	beq lbl_80ACD874
/* 80ACD7E0  40 80 00 EC */	bge lbl_80ACD8CC
/* 80ACD7E4  48 00 00 74 */	b lbl_80ACD858
lbl_80ACD7E8:
/* 80ACD7E8  80 7F 09 38 */	lwz r3, 0x938(r31)
/* 80ACD7EC  80 1F 09 3C */	lwz r0, 0x93c(r31)
/* 80ACD7F0  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD7F4  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD7F8  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 80ACD7FC  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD800  48 00 00 E4 */	b lbl_80ACD8E4
lbl_80ACD804:
/* 80ACD804  80 7F 09 44 */	lwz r3, 0x944(r31)
/* 80ACD808  80 1F 09 48 */	lwz r0, 0x948(r31)
/* 80ACD80C  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD810  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD814  80 1F 09 4C */	lwz r0, 0x94c(r31)
/* 80ACD818  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD81C  48 00 00 C8 */	b lbl_80ACD8E4
lbl_80ACD820:
/* 80ACD820  80 7F 09 50 */	lwz r3, 0x950(r31)
/* 80ACD824  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80ACD828  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD82C  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD830  80 1F 09 58 */	lwz r0, 0x958(r31)
/* 80ACD834  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD838  48 00 00 AC */	b lbl_80ACD8E4
lbl_80ACD83C:
/* 80ACD83C  80 7F 09 5C */	lwz r3, 0x95c(r31)
/* 80ACD840  80 1F 09 60 */	lwz r0, 0x960(r31)
/* 80ACD844  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD848  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD84C  80 1F 09 64 */	lwz r0, 0x964(r31)
/* 80ACD850  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD854  48 00 00 90 */	b lbl_80ACD8E4
lbl_80ACD858:
/* 80ACD858  80 7F 09 68 */	lwz r3, 0x968(r31)
/* 80ACD85C  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80ACD860  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD864  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD868  80 1F 09 70 */	lwz r0, 0x970(r31)
/* 80ACD86C  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD870  48 00 00 74 */	b lbl_80ACD8E4
lbl_80ACD874:
/* 80ACD874  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACD878  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACD87C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ACD880  4B 54 D0 E5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ACD884  3C 60 80 AD */	lis r3, lit_5182@ha /* 0x80ACFEE8@ha */
/* 80ACD888  C0 03 FE E8 */	lfs f0, lit_5182@l(r3)  /* 0x80ACFEE8@l */
/* 80ACD88C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ACD890  40 80 00 20 */	bge lbl_80ACD8B0
/* 80ACD894  80 7F 09 74 */	lwz r3, 0x974(r31)
/* 80ACD898  80 1F 09 78 */	lwz r0, 0x978(r31)
/* 80ACD89C  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD8A0  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD8A4  80 1F 09 7C */	lwz r0, 0x97c(r31)
/* 80ACD8A8  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD8AC  48 00 00 38 */	b lbl_80ACD8E4
lbl_80ACD8B0:
/* 80ACD8B0  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80ACD8B4  80 1F 09 84 */	lwz r0, 0x984(r31)
/* 80ACD8B8  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD8BC  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD8C0  80 1F 09 88 */	lwz r0, 0x988(r31)
/* 80ACD8C4  90 1E 10 E4 */	stw r0, 0x10e4(r30)
/* 80ACD8C8  48 00 00 1C */	b lbl_80ACD8E4
lbl_80ACD8CC:
/* 80ACD8CC  80 7F 09 8C */	lwz r3, 0x98c(r31)
/* 80ACD8D0  80 1F 09 90 */	lwz r0, 0x990(r31)
/* 80ACD8D4  90 7E 10 DC */	stw r3, 0x10dc(r30)
/* 80ACD8D8  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80ACD8DC  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 80ACD8E0  90 1E 10 E4 */	stw r0, 0x10e4(r30)
lbl_80ACD8E4:
/* 80ACD8E4  38 60 00 01 */	li r3, 1
/* 80ACD8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACD8EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACD8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACD8F4  7C 08 03 A6 */	mtlr r0
/* 80ACD8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACD8FC  4E 80 00 20 */	blr 
