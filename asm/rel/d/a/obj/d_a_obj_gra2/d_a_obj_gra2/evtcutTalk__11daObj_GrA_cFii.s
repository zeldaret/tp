lbl_80C048F8:
/* 80C048F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C048FC  7C 08 02 A6 */	mflr r0
/* 80C04900  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C04904  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C04908  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C0490C  7C 7E 1B 78 */	mr r30, r3
/* 80C04910  80 03 08 48 */	lwz r0, 0x848(r3)
/* 80C04914  2C 05 00 00 */	cmpwi r5, 0
/* 80C04918  41 82 00 24 */	beq lbl_80C0493C
/* 80C0491C  38 7E 08 4C */	addi r3, r30, 0x84c
/* 80C04920  7F C4 F3 78 */	mr r4, r30
/* 80C04924  7C 05 03 78 */	mr r5, r0
/* 80C04928  38 C0 00 00 */	li r6, 0
/* 80C0492C  38 E0 00 00 */	li r7, 0
/* 80C04930  4B 64 56 60 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80C04934  38 00 00 00 */	li r0, 0
/* 80C04938  90 1E 0A A0 */	stw r0, 0xaa0(r30)
lbl_80C0493C:
/* 80C0493C  38 7E 08 4C */	addi r3, r30, 0x84c
/* 80C04940  7F C4 F3 78 */	mr r4, r30
/* 80C04944  38 A0 00 00 */	li r5, 0
/* 80C04948  38 C0 00 00 */	li r6, 0
/* 80C0494C  4B 64 59 8C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80C04950  2C 03 00 00 */	cmpwi r3, 0
/* 80C04954  41 82 00 0C */	beq lbl_80C04960
/* 80C04958  38 60 00 01 */	li r3, 1
/* 80C0495C  48 00 00 98 */	b lbl_80C049F4
lbl_80C04960:
/* 80C04960  83 FE 0A A0 */	lwz r31, 0xaa0(r30)
/* 80C04964  7F C3 F3 78 */	mr r3, r30
/* 80C04968  38 81 00 0C */	addi r4, r1, 0xc
/* 80C0496C  38 A1 00 08 */	addi r5, r1, 8
/* 80C04970  7F C6 F3 78 */	mr r6, r30
/* 80C04974  4B FF EC 45 */	bl ctrlMsgAnm__11daObj_GrA_cFRiRiP10fopAc_ac_c
/* 80C04978  2C 03 00 00 */	cmpwi r3, 0
/* 80C0497C  41 82 00 64 */	beq lbl_80C049E0
/* 80C04980  80 01 00 08 */	lwz r0, 8(r1)
/* 80C04984  2C 00 FF FF */	cmpwi r0, -1
/* 80C04988  41 82 00 28 */	beq lbl_80C049B0
/* 80C0498C  7F C3 F3 78 */	mr r3, r30
/* 80C04990  54 00 08 3C */	slwi r0, r0, 1
/* 80C04994  3C 80 80 C1 */	lis r4, l_eventMotionChangeTable@ha
/* 80C04998  38 84 00 2C */	addi r4, r4, l_eventMotionChangeTable@l
/* 80C0499C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C049A0  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C049A4  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C049A8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C049AC  4B FF CD E1 */	bl setBaseMotion__11daObj_GrA_cFif
lbl_80C049B0:
/* 80C049B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C049B4  2C 00 FF FF */	cmpwi r0, -1
/* 80C049B8  41 82 00 38 */	beq lbl_80C049F0
/* 80C049BC  7F C3 F3 78 */	mr r3, r30
/* 80C049C0  54 00 08 3C */	slwi r0, r0, 1
/* 80C049C4  3C 80 80 C1 */	lis r4, l_eventFaceChangeTable@ha
/* 80C049C8  38 84 00 44 */	addi r4, r4, l_eventFaceChangeTable@l
/* 80C049CC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C049D0  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C049D4  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C049D8  4B FF CD D5 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C049DC  48 00 00 14 */	b lbl_80C049F0
lbl_80C049E0:
/* 80C049E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80C049E4  41 82 00 0C */	beq lbl_80C049F0
/* 80C049E8  7F C3 F3 78 */	mr r3, r30
/* 80C049EC  48 00 00 21 */	bl setFaceTalkAfter__11daObj_GrA_cFv
lbl_80C049F0:
/* 80C049F0  38 60 00 00 */	li r3, 0
lbl_80C049F4:
/* 80C049F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C049F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C049FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C04A00  7C 08 03 A6 */	mtlr r0
/* 80C04A04  38 21 00 20 */	addi r1, r1, 0x20
/* 80C04A08  4E 80 00 20 */	blr 
