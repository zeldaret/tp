lbl_80B3074C:
/* 80B3074C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B30750  7C 08 02 A6 */	mflr r0
/* 80B30754  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B30758  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B3075C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B30760  39 61 00 20 */	addi r11, r1, 0x20
/* 80B30764  4B 83 1A 75 */	bl _savegpr_28
/* 80B30768  7C 7E 1B 78 */	mr r30, r3
/* 80B3076C  FF E0 08 90 */	fmr f31, f1
/* 80B30770  80 A3 0E 04 */	lwz r5, 0xe04(r3)
/* 80B30774  80 A5 00 00 */	lwz r5, 0(r5)
/* 80B30778  54 9F 18 38 */	slwi r31, r4, 3
/* 80B3077C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80B30780  2C 05 00 00 */	cmpwi r5, 0
/* 80B30784  41 80 00 20 */	blt lbl_80B307A4
/* 80B30788  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B3078C  54 00 10 3A */	slwi r0, r0, 2
/* 80B30790  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B30794  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B30798  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3079C  4B 62 23 91 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B307A0  48 00 00 08 */	b lbl_80B307A8
lbl_80B307A4:
/* 80B307A4  38 60 00 00 */	li r3, 0
lbl_80B307A8:
/* 80B307A8  7C 7D 1B 78 */	mr r29, r3
/* 80B307AC  80 7E 0E 04 */	lwz r3, 0xe04(r30)
/* 80B307B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B307B4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80B307B8  2C 05 00 00 */	cmpwi r5, 0
/* 80B307BC  41 80 00 24 */	blt lbl_80B307E0
/* 80B307C0  7F C3 F3 78 */	mr r3, r30
/* 80B307C4  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B307C8  54 00 10 3A */	slwi r0, r0, 2
/* 80B307CC  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B307D0  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B307D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B307D8  4B 62 23 CD */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B307DC  48 00 00 08 */	b lbl_80B307E4
lbl_80B307E0:
/* 80B307E0  38 60 00 00 */	li r3, 0
lbl_80B307E4:
/* 80B307E4  7C 7C 1B 78 */	mr r28, r3
/* 80B307E8  80 9E 0E 04 */	lwz r4, 0xe04(r30)
/* 80B307EC  80 04 00 00 */	lwz r0, 0(r4)
/* 80B307F0  7C 60 FA 14 */	add r3, r0, r31
/* 80B307F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B307F8  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80B307FC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B30800  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B30804  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80B30808  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B3080C  28 1D 00 00 */	cmplwi r29, 0
/* 80B30810  41 82 00 40 */	beq lbl_80B30850
/* 80B30814  7F C3 F3 78 */	mr r3, r30
/* 80B30818  7F A4 EB 78 */	mr r4, r29
/* 80B3081C  3C C0 80 B4 */	lis r6, lit_4417@ha /* 0x80B41890@ha */
/* 80B30820  C0 26 18 90 */	lfs f1, lit_4417@l(r6)  /* 0x80B41890@l */
/* 80B30824  FC 40 F8 90 */	fmr f2, f31
/* 80B30828  38 C0 00 00 */	li r6, 0
/* 80B3082C  38 E0 FF FF */	li r7, -1
/* 80B30830  4B 62 23 ED */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80B30834  2C 03 00 00 */	cmpwi r3, 0
/* 80B30838  41 82 00 18 */	beq lbl_80B30850
/* 80B3083C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B30840  60 00 00 09 */	ori r0, r0, 9
/* 80B30844  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B30848  38 00 00 00 */	li r0, 0
/* 80B3084C  B0 1E 09 E2 */	sth r0, 0x9e2(r30)
lbl_80B30850:
/* 80B30850  28 1C 00 00 */	cmplwi r28, 0
/* 80B30854  41 82 00 3C */	beq lbl_80B30890
/* 80B30858  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B3085C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B30860  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B30864  7F C3 F3 78 */	mr r3, r30
/* 80B30868  7F 84 E3 78 */	mr r4, r28
/* 80B3086C  3C C0 80 B4 */	lis r6, lit_4417@ha /* 0x80B41890@ha */
/* 80B30870  C0 26 18 90 */	lfs f1, lit_4417@l(r6)  /* 0x80B41890@l */
/* 80B30874  7F E6 FB 78 */	mr r6, r31
/* 80B30878  4B 62 24 8D */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80B3087C  2C 03 00 00 */	cmpwi r3, 0
/* 80B30880  41 82 00 10 */	beq lbl_80B30890
/* 80B30884  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B30888  60 00 00 12 */	ori r0, r0, 0x12
/* 80B3088C  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80B30890:
/* 80B30890  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B30894  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B30898  39 61 00 20 */	addi r11, r1, 0x20
/* 80B3089C  4B 83 19 89 */	bl _restgpr_28
/* 80B308A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B308A4  7C 08 03 A6 */	mtlr r0
/* 80B308A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B308AC  4E 80 00 20 */	blr 
