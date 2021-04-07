lbl_80CC983C:
/* 80CC983C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9840  7C 08 02 A6 */	mflr r0
/* 80CC9844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC984C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC9850  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC9854  7C 9F 23 78 */	mr r31, r4
/* 80CC9858  41 82 00 9C */	beq lbl_80CC98F4
/* 80CC985C  3C 60 80 CD */	lis r3, __vt__14daSCannonCrs_c@ha /* 0x80CCB278@ha */
/* 80CC9860  38 03 B2 78 */	addi r0, r3, __vt__14daSCannonCrs_c@l /* 0x80CCB278@l */
/* 80CC9864  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CC9868  7F C3 F3 78 */	mr r3, r30
/* 80CC986C  41 82 00 08 */	beq lbl_80CC9874
/* 80CC9870  38 63 05 68 */	addi r3, r3, 0x568
lbl_80CC9874:
/* 80CC9874  3C 80 80 CD */	lis r4, l_arcName@ha /* 0x80CCB17C@ha */
/* 80CC9878  38 84 B1 7C */	addi r4, r4, l_arcName@l /* 0x80CCB17C@l */
/* 80CC987C  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC9880  4B 36 37 89 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC9884  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80CC9888  41 82 00 20 */	beq lbl_80CC98A8
/* 80CC988C  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80CC9890  41 82 00 18 */	beq lbl_80CC98A8
/* 80CC9894  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80CC9898  41 82 00 10 */	beq lbl_80CC98A8
/* 80CC989C  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CCB284@ha */
/* 80CC98A0  38 03 B2 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CCB284@l */
/* 80CC98A4  90 1E 05 E8 */	stw r0, 0x5e8(r30)
lbl_80CC98A8:
/* 80CC98A8  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80CC98AC  41 82 00 20 */	beq lbl_80CC98CC
/* 80CC98B0  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80CC98B4  41 82 00 18 */	beq lbl_80CC98CC
/* 80CC98B8  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80CC98BC  41 82 00 10 */	beq lbl_80CC98CC
/* 80CC98C0  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CCB284@ha */
/* 80CC98C4  38 03 B2 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CCB284@l */
/* 80CC98C8  90 1E 05 CC */	stw r0, 0x5cc(r30)
lbl_80CC98CC:
/* 80CC98CC  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CC98D0  38 80 FF FF */	li r4, -1
/* 80CC98D4  4B 58 06 75 */	bl __dt__10dMsgFlow_cFv
/* 80CC98D8  7F C3 F3 78 */	mr r3, r30
/* 80CC98DC  38 80 00 00 */	li r4, 0
/* 80CC98E0  4B 34 F3 AD */	bl __dt__10fopAc_ac_cFv
/* 80CC98E4  7F E0 07 35 */	extsh. r0, r31
/* 80CC98E8  40 81 00 0C */	ble lbl_80CC98F4
/* 80CC98EC  7F C3 F3 78 */	mr r3, r30
/* 80CC98F0  4B 60 54 4D */	bl __dl__FPv
lbl_80CC98F4:
/* 80CC98F4  7F C3 F3 78 */	mr r3, r30
/* 80CC98F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC98FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC9900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9904  7C 08 03 A6 */	mtlr r0
/* 80CC9908  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC990C  4E 80 00 20 */	blr 
