lbl_80CB874C:
/* 80CB874C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8750  7C 08 02 A6 */	mflr r0
/* 80CB8754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB875C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB8760  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB8764  7C 9F 23 78 */	mr r31, r4
/* 80CB8768  41 82 00 90 */	beq lbl_80CB87F8
/* 80CB876C  3C 60 80 CC */	lis r3, __vt__14daObjRCircle_c@ha /* 0x80CB8D64@ha */
/* 80CB8770  38 03 8D 64 */	addi r0, r3, __vt__14daObjRCircle_c@l /* 0x80CB8D64@l */
/* 80CB8774  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80CB8778  7F C3 F3 78 */	mr r3, r30
/* 80CB877C  41 82 00 08 */	beq lbl_80CB8784
/* 80CB8780  38 63 05 68 */	addi r3, r3, 0x568
lbl_80CB8784:
/* 80CB8784  3C 80 80 CC */	lis r4, l_arcName@ha /* 0x80CB8D10@ha */
/* 80CB8788  38 84 8D 10 */	addi r4, r4, l_arcName@l /* 0x80CB8D10@l */
/* 80CB878C  80 84 00 00 */	lwz r4, 0(r4)
/* 80CB8790  4B 37 48 79 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB8794  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80CB8798  41 82 00 20 */	beq lbl_80CB87B8
/* 80CB879C  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80CB87A0  41 82 00 18 */	beq lbl_80CB87B8
/* 80CB87A4  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80CB87A8  41 82 00 10 */	beq lbl_80CB87B8
/* 80CB87AC  3C 60 80 CC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CB8D70@ha */
/* 80CB87B0  38 03 8D 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CB8D70@l */
/* 80CB87B4  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80CB87B8:
/* 80CB87B8  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80CB87BC  41 82 00 20 */	beq lbl_80CB87DC
/* 80CB87C0  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80CB87C4  41 82 00 18 */	beq lbl_80CB87DC
/* 80CB87C8  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80CB87CC  41 82 00 10 */	beq lbl_80CB87DC
/* 80CB87D0  3C 60 80 CC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CB8D70@ha */
/* 80CB87D4  38 03 8D 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CB8D70@l */
/* 80CB87D8  90 1E 05 74 */	stw r0, 0x574(r30)
lbl_80CB87DC:
/* 80CB87DC  7F C3 F3 78 */	mr r3, r30
/* 80CB87E0  38 80 00 00 */	li r4, 0
/* 80CB87E4  4B 36 04 A9 */	bl __dt__10fopAc_ac_cFv
/* 80CB87E8  7F E0 07 35 */	extsh. r0, r31
/* 80CB87EC  40 81 00 0C */	ble lbl_80CB87F8
/* 80CB87F0  7F C3 F3 78 */	mr r3, r30
/* 80CB87F4  4B 61 65 49 */	bl __dl__FPv
lbl_80CB87F8:
/* 80CB87F8  7F C3 F3 78 */	mr r3, r30
/* 80CB87FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8800  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB8804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8808  7C 08 03 A6 */	mtlr r0
/* 80CB880C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8810  4E 80 00 20 */	blr 
