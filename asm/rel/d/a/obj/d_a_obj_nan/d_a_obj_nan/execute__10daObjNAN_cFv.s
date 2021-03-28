lbl_80CA276C:
/* 80CA276C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA2770  7C 08 02 A6 */	mflr r0
/* 80CA2774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA2778  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CA277C  7C 7F 1B 78 */	mr r31, r3
/* 80CA2780  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80CA2784  2C 00 00 00 */	cmpwi r0, 0
/* 80CA2788  40 81 00 78 */	ble lbl_80CA2800
/* 80CA278C  3C 60 80 CA */	lis r3, lit_4742@ha
/* 80CA2790  C0 43 32 74 */	lfs f2, lit_4742@l(r3)
/* 80CA2794  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80CA2798  3C 60 80 CA */	lis r3, lit_4744@ha
/* 80CA279C  C8 23 32 7C */	lfd f1, lit_4744@l(r3)
/* 80CA27A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA27A4  3C 00 43 30 */	lis r0, 0x4330
/* 80CA27A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA27AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CA27B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CA27B4  EC 02 00 2A */	fadds f0, f2, f0
/* 80CA27B8  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80CA27BC  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80CA27C0  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80CA27C4  90 01 00 08 */	stw r0, 8(r1)
/* 80CA27C8  38 7F 05 98 */	addi r3, r31, 0x598
/* 80CA27CC  38 81 00 08 */	addi r4, r1, 8
/* 80CA27D0  38 A0 00 00 */	li r5, 0
/* 80CA27D4  38 C0 FF FF */	li r6, -1
/* 80CA27D8  81 9F 05 98 */	lwz r12, 0x598(r31)
/* 80CA27DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CA27E0  7D 89 03 A6 */	mtctr r12
/* 80CA27E4  4E 80 04 21 */	bctrl 
/* 80CA27E8  7F E3 FB 78 */	mr r3, r31
/* 80CA27EC  4B 4B B8 8C */	b Insect_GetDemoMain__9dInsect_cFv
/* 80CA27F0  7F E3 FB 78 */	mr r3, r31
/* 80CA27F4  4B FF F3 5D */	bl nan_setParticle__10daObjNAN_cFv
/* 80CA27F8  38 60 00 01 */	li r3, 1
/* 80CA27FC  48 00 00 F4 */	b lbl_80CA28F0
lbl_80CA2800:
/* 80CA2800  A8 7F 07 E0 */	lha r3, 0x7e0(r31)
/* 80CA2804  2C 03 00 00 */	cmpwi r3, 0
/* 80CA2808  41 82 00 0C */	beq lbl_80CA2814
/* 80CA280C  38 03 FF FF */	addi r0, r3, -1
/* 80CA2810  B0 1F 07 E0 */	sth r0, 0x7e0(r31)
lbl_80CA2814:
/* 80CA2814  A0 7F 07 F8 */	lhz r3, 0x7f8(r31)
/* 80CA2818  28 03 00 00 */	cmplwi r3, 0
/* 80CA281C  41 82 00 0C */	beq lbl_80CA2828
/* 80CA2820  38 03 FF FF */	addi r0, r3, -1
/* 80CA2824  B0 1F 07 F8 */	sth r0, 0x7f8(r31)
lbl_80CA2828:
/* 80CA2828  88 1F 07 FA */	lbz r0, 0x7fa(r31)
/* 80CA282C  28 00 00 00 */	cmplwi r0, 0
/* 80CA2830  40 82 00 0C */	bne lbl_80CA283C
/* 80CA2834  7F E3 FB 78 */	mr r3, r31
/* 80CA2838  4B FF FE 21 */	bl hit_check__10daObjNAN_cFv
lbl_80CA283C:
/* 80CA283C  7F E3 FB 78 */	mr r3, r31
/* 80CA2840  4B FF FE CD */	bl action__10daObjNAN_cFv
/* 80CA2844  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 80CA2848  4B 36 AB E0 */	b play__14mDoExt_baseAnmFv
/* 80CA284C  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 80CA2850  4B 36 AB D8 */	b play__14mDoExt_baseAnmFv
/* 80CA2854  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CA2858  7C 03 07 74 */	extsb r3, r0
/* 80CA285C  4B 38 A8 10 */	b dComIfGp_getReverb__Fi
/* 80CA2860  7C 65 1B 78 */	mr r5, r3
/* 80CA2864  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80CA2868  38 80 00 00 */	li r4, 0
/* 80CA286C  4B 36 E8 44 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80CA2870  7F E3 FB 78 */	mr r3, r31
/* 80CA2874  48 00 00 F9 */	bl setBaseMtx__10daObjNAN_cFv
/* 80CA2878  88 1F 07 FA */	lbz r0, 0x7fa(r31)
/* 80CA287C  28 00 00 00 */	cmplwi r0, 0
/* 80CA2880  40 82 00 6C */	bne lbl_80CA28EC
/* 80CA2884  38 7F 07 94 */	addi r3, r31, 0x794
/* 80CA2888  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CA288C  4B 5C CD BC */	b SetC__8cM3dGSphFRC4cXyz
/* 80CA2890  38 7F 07 94 */	addi r3, r31, 0x794
/* 80CA2894  3C 80 80 CA */	lis r4, lit_3985@ha
/* 80CA2898  C0 24 31 E0 */	lfs f1, lit_3985@l(r4)
/* 80CA289C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CA28A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CA28A4  4B 5C CE 64 */	b SetR__8cM3dGSphFf
/* 80CA28A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA28AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA28B0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CA28B4  38 9F 06 70 */	addi r4, r31, 0x670
/* 80CA28B8  4B 5C 22 F0 */	b Set__4cCcSFP8cCcD_Obj
/* 80CA28BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CA28C0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CA28C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CA28C8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CA28CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CA28D0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CA28D4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80CA28D8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CA28DC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80CA28E0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CA28E4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80CA28E8  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_80CA28EC:
/* 80CA28EC  38 60 00 01 */	li r3, 1
lbl_80CA28F0:
/* 80CA28F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CA28F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA28F8  7C 08 03 A6 */	mtlr r0
/* 80CA28FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA2900  4E 80 00 20 */	blr 
