lbl_80CB8678:
/* 80CB8678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB867C  7C 08 02 A6 */	mflr r0
/* 80CB8680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8688  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB868C  7C 7F 1B 78 */	mr r31, r3
/* 80CB8690  4B 36 04 D5 */	bl __ct__10fopAc_ac_cFv
/* 80CB8694  3C 60 80 CC */	lis r3, __vt__14daObjRCircle_c@ha /* 0x80CB8D64@ha */
/* 80CB8698  38 03 8D 64 */	addi r0, r3, __vt__14daObjRCircle_c@l /* 0x80CB8D64@l */
/* 80CB869C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CB86A0  3B DF 05 74 */	addi r30, r31, 0x574
/* 80CB86A4  3C 60 80 CC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CB8D70@ha */
/* 80CB86A8  38 03 8D 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CB8D70@l */
/* 80CB86AC  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80CB86B0  7F C3 F3 78 */	mr r3, r30
/* 80CB86B4  38 80 00 00 */	li r4, 0
/* 80CB86B8  4B 66 FD 45 */	bl init__12J3DFrameCtrlFs
/* 80CB86BC  38 00 00 00 */	li r0, 0
/* 80CB86C0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CB86C4  3B DF 05 8C */	addi r30, r31, 0x58c
/* 80CB86C8  3C 60 80 CC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CB8D70@ha */
/* 80CB86CC  38 03 8D 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CB8D70@l */
/* 80CB86D0  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80CB86D4  7F C3 F3 78 */	mr r3, r30
/* 80CB86D8  38 80 00 00 */	li r4, 0
/* 80CB86DC  4B 66 FD 21 */	bl init__12J3DFrameCtrlFs
/* 80CB86E0  38 00 00 00 */	li r0, 0
/* 80CB86E4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CB86E8  7F E3 FB 78 */	mr r3, r31
/* 80CB86EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB86F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB86F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB86F8  7C 08 03 A6 */	mtlr r0
/* 80CB86FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8700  4E 80 00 20 */	blr 
