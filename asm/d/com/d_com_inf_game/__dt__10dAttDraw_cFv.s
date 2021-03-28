lbl_8003054C:
/* 8003054C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030550  7C 08 02 A6 */	mflr r0
/* 80030554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003055C  93 C1 00 08 */	stw r30, 8(r1)
/* 80030560  7C 7E 1B 79 */	or. r30, r3, r3
/* 80030564  7C 9F 23 78 */	mr r31, r4
/* 80030568  41 82 01 1C */	beq lbl_80030684
/* 8003056C  34 1E 01 4C */	addic. r0, r30, 0x14c
/* 80030570  41 82 00 20 */	beq lbl_80030590
/* 80030574  34 1E 01 4C */	addic. r0, r30, 0x14c
/* 80030578  41 82 00 18 */	beq lbl_80030590
/* 8003057C  34 1E 01 4C */	addic. r0, r30, 0x14c
/* 80030580  41 82 00 10 */	beq lbl_80030590
/* 80030584  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80030588  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8003058C  90 1E 01 4C */	stw r0, 0x14c(r30)
lbl_80030590:
/* 80030590  34 1E 01 34 */	addic. r0, r30, 0x134
/* 80030594  41 82 00 20 */	beq lbl_800305B4
/* 80030598  34 1E 01 34 */	addic. r0, r30, 0x134
/* 8003059C  41 82 00 18 */	beq lbl_800305B4
/* 800305A0  34 1E 01 34 */	addic. r0, r30, 0x134
/* 800305A4  41 82 00 10 */	beq lbl_800305B4
/* 800305A8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 800305AC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 800305B0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_800305B4:
/* 800305B4  34 1E 01 1C */	addic. r0, r30, 0x11c
/* 800305B8  41 82 00 20 */	beq lbl_800305D8
/* 800305BC  34 1E 01 1C */	addic. r0, r30, 0x11c
/* 800305C0  41 82 00 18 */	beq lbl_800305D8
/* 800305C4  34 1E 01 1C */	addic. r0, r30, 0x11c
/* 800305C8  41 82 00 10 */	beq lbl_800305D8
/* 800305CC  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 800305D0  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 800305D4  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_800305D8:
/* 800305D8  34 1E 01 00 */	addic. r0, r30, 0x100
/* 800305DC  41 82 00 20 */	beq lbl_800305FC
/* 800305E0  34 1E 01 00 */	addic. r0, r30, 0x100
/* 800305E4  41 82 00 18 */	beq lbl_800305FC
/* 800305E8  34 1E 01 00 */	addic. r0, r30, 0x100
/* 800305EC  41 82 00 10 */	beq lbl_800305FC
/* 800305F0  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 800305F4  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 800305F8  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_800305FC:
/* 800305FC  38 7E 00 D0 */	addi r3, r30, 0xd0
/* 80030600  3C 80 80 03 */	lis r4, __dt__13mDoExt_btkAnmFv@ha
/* 80030604  38 84 07 9C */	addi r4, r4, __dt__13mDoExt_btkAnmFv@l
/* 80030608  38 A0 00 18 */	li r5, 0x18
/* 8003060C  38 C0 00 02 */	li r6, 2
/* 80030610  48 33 16 D9 */	bl __destroy_arr
/* 80030614  38 7E 00 A0 */	addi r3, r30, 0xa0
/* 80030618  3C 80 80 03 */	lis r4, __dt__13mDoExt_brkAnmFv@ha
/* 8003061C  38 84 07 48 */	addi r4, r4, __dt__13mDoExt_brkAnmFv@l
/* 80030620  38 A0 00 18 */	li r5, 0x18
/* 80030624  38 C0 00 02 */	li r6, 2
/* 80030628  48 33 16 C1 */	bl __destroy_arr
/* 8003062C  38 7E 00 70 */	addi r3, r30, 0x70
/* 80030630  3C 80 80 03 */	lis r4, __dt__13mDoExt_brkAnmFv@ha
/* 80030634  38 84 07 48 */	addi r4, r4, __dt__13mDoExt_brkAnmFv@l
/* 80030638  38 A0 00 18 */	li r5, 0x18
/* 8003063C  38 C0 00 02 */	li r6, 2
/* 80030640  48 33 16 A9 */	bl __destroy_arr
/* 80030644  38 7E 00 40 */	addi r3, r30, 0x40
/* 80030648  3C 80 80 03 */	lis r4, __dt__13mDoExt_bpkAnmFv@ha
/* 8003064C  38 84 06 F4 */	addi r4, r4, __dt__13mDoExt_bpkAnmFv@l
/* 80030650  38 A0 00 18 */	li r5, 0x18
/* 80030654  38 C0 00 02 */	li r6, 2
/* 80030658  48 33 16 91 */	bl __destroy_arr
/* 8003065C  38 7E 00 08 */	addi r3, r30, 8
/* 80030660  3C 80 80 03 */	lis r4, __dt__13mDoExt_bckAnmFv@ha
/* 80030664  38 84 06 A0 */	addi r4, r4, __dt__13mDoExt_bckAnmFv@l
/* 80030668  38 A0 00 1C */	li r5, 0x1c
/* 8003066C  38 C0 00 02 */	li r6, 2
/* 80030670  48 33 16 79 */	bl __destroy_arr
/* 80030674  7F E0 07 35 */	extsh. r0, r31
/* 80030678  40 81 00 0C */	ble lbl_80030684
/* 8003067C  7F C3 F3 78 */	mr r3, r30
/* 80030680  48 29 E6 BD */	bl __dl__FPv
lbl_80030684:
/* 80030684  7F C3 F3 78 */	mr r3, r30
/* 80030688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003068C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80030690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030694  7C 08 03 A6 */	mtlr r0
/* 80030698  38 21 00 10 */	addi r1, r1, 0x10
/* 8003069C  4E 80 00 20 */	blr 
