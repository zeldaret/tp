lbl_80CC973C:
/* 80CC973C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9740  7C 08 02 A6 */	mflr r0
/* 80CC9744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC974C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC9750  7C 7F 1B 78 */	mr r31, r3
/* 80CC9754  4B 34 F4 10 */	b __ct__10fopAc_ac_cFv
/* 80CC9758  3C 60 80 CD */	lis r3, __vt__14daSCannonCrs_c@ha
/* 80CC975C  38 03 B2 78 */	addi r0, r3, __vt__14daSCannonCrs_c@l
/* 80CC9760  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CC9764  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CC9768  4B 58 07 98 */	b __ct__10dMsgFlow_cFv
/* 80CC976C  3B DF 05 CC */	addi r30, r31, 0x5cc
/* 80CC9770  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CC9774  38 03 B2 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CC9778  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80CC977C  7F C3 F3 78 */	mr r3, r30
/* 80CC9780  38 80 00 00 */	li r4, 0
/* 80CC9784  4B 65 EC 78 */	b init__12J3DFrameCtrlFs
/* 80CC9788  38 00 00 00 */	li r0, 0
/* 80CC978C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80CC9790  3B DF 05 E8 */	addi r30, r31, 0x5e8
/* 80CC9794  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CC9798  38 03 B2 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CC979C  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80CC97A0  7F C3 F3 78 */	mr r3, r30
/* 80CC97A4  38 80 00 00 */	li r4, 0
/* 80CC97A8  4B 65 EC 54 */	b init__12J3DFrameCtrlFs
/* 80CC97AC  38 00 00 00 */	li r0, 0
/* 80CC97B0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CC97B4  90 1F 06 04 */	stw r0, 0x604(r31)
/* 80CC97B8  38 7F 06 54 */	addi r3, r31, 0x654
/* 80CC97BC  38 80 00 00 */	li r4, 0
/* 80CC97C0  38 A0 00 10 */	li r5, 0x10
/* 80CC97C4  4B 33 9C 94 */	b memset
/* 80CC97C8  38 7F 06 64 */	addi r3, r31, 0x664
/* 80CC97CC  38 80 00 00 */	li r4, 0
/* 80CC97D0  38 A0 00 10 */	li r5, 0x10
/* 80CC97D4  4B 33 9C 84 */	b memset
/* 80CC97D8  7F E3 FB 78 */	mr r3, r31
/* 80CC97DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC97E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC97E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC97E8  7C 08 03 A6 */	mtlr r0
/* 80CC97EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC97F0  4E 80 00 20 */	blr 
