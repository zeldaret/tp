lbl_80BC729C:
/* 80BC729C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC72A0  7C 08 02 A6 */	mflr r0
/* 80BC72A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC72A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC72AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC72B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC72B4  7C 9F 23 78 */	mr r31, r4
/* 80BC72B8  41 82 00 A4 */	beq lbl_80BC735C
/* 80BC72BC  3C 60 80 BC */	lis r3, __vt__12daObjCdoor_c@ha
/* 80BC72C0  38 03 7E 80 */	addi r0, r3, __vt__12daObjCdoor_c@l
/* 80BC72C4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BC72C8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80BC72CC  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC72D0  54 00 10 3A */	slwi r0, r0, 2
/* 80BC72D4  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BC72D8  38 84 7D 78 */	addi r4, r4, l_arcName@l
/* 80BC72DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BC72E0  4B 46 5D 28 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC72E4  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 80BC72E8  41 82 00 20 */	beq lbl_80BC7308
/* 80BC72EC  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 80BC72F0  41 82 00 18 */	beq lbl_80BC7308
/* 80BC72F4  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 80BC72F8  41 82 00 10 */	beq lbl_80BC7308
/* 80BC72FC  3C 60 80 BC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80BC7300  38 03 7E AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80BC7304  90 1E 05 DC */	stw r0, 0x5dc(r30)
lbl_80BC7308:
/* 80BC7308  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80BC730C  41 82 00 20 */	beq lbl_80BC732C
/* 80BC7310  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80BC7314  41 82 00 18 */	beq lbl_80BC732C
/* 80BC7318  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80BC731C  41 82 00 10 */	beq lbl_80BC732C
/* 80BC7320  3C 60 80 BC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80BC7324  38 03 7E AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80BC7328  90 1E 05 C0 */	stw r0, 0x5c0(r30)
lbl_80BC732C:
/* 80BC732C  28 1E 00 00 */	cmplwi r30, 0
/* 80BC7330  41 82 00 1C */	beq lbl_80BC734C
/* 80BC7334  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80BC7338  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80BC733C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BC7340  7F C3 F3 78 */	mr r3, r30
/* 80BC7344  38 80 00 00 */	li r4, 0
/* 80BC7348  4B 45 19 44 */	b __dt__10fopAc_ac_cFv
lbl_80BC734C:
/* 80BC734C  7F E0 07 35 */	extsh. r0, r31
/* 80BC7350  40 81 00 0C */	ble lbl_80BC735C
/* 80BC7354  7F C3 F3 78 */	mr r3, r30
/* 80BC7358  4B 70 79 E4 */	b __dl__FPv
lbl_80BC735C:
/* 80BC735C  7F C3 F3 78 */	mr r3, r30
/* 80BC7360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7364  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC7368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC736C  7C 08 03 A6 */	mtlr r0
/* 80BC7370  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7374  4E 80 00 20 */	blr 
