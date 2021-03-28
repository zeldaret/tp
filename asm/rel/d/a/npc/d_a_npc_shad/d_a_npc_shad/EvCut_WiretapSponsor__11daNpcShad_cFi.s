lbl_80ADFB70:
/* 80ADFB70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ADFB74  7C 08 02 A6 */	mflr r0
/* 80ADFB78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ADFB7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80ADFB80  4B 88 26 54 */	b _savegpr_27
/* 80ADFB84  7C 7D 1B 78 */	mr r29, r3
/* 80ADFB88  7C 9B 23 78 */	mr r27, r4
/* 80ADFB8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADFB90  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ADFB94  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ADFB98  3C 60 80 AE */	lis r3, lit_6782@ha
/* 80ADFB9C  38 83 24 A0 */	addi r4, r3, lit_6782@l
/* 80ADFBA0  80 64 00 00 */	lwz r3, 0(r4)
/* 80ADFBA4  80 04 00 04 */	lwz r0, 4(r4)
/* 80ADFBA8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80ADFBAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ADFBB0  80 64 00 08 */	lwz r3, 8(r4)
/* 80ADFBB4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80ADFBB8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80ADFBBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADFBC0  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 80ADFBC4  4B 67 0B 28 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADFBC8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80ADFBCC  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 80ADFBD0  4B 67 0B 1C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADFBD4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ADFBD8  93 A1 00 18 */	stw r29, 0x18(r1)
/* 80ADFBDC  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 80ADFBE0  4B 67 0B 0C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADFBE4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80ADFBE8  7F 83 E3 78 */	mr r3, r28
/* 80ADFBEC  7F 64 DB 78 */	mr r4, r27
/* 80ADFBF0  4B 56 83 6C */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ADFBF4  7C 7F 1B 78 */	mr r31, r3
/* 80ADFBF8  7F 83 E3 78 */	mr r3, r28
/* 80ADFBFC  7F 64 DB 78 */	mr r4, r27
/* 80ADFC00  4B 56 81 4C */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADFC04  2C 03 00 00 */	cmpwi r3, 0
/* 80ADFC08  41 82 00 70 */	beq lbl_80ADFC78
/* 80ADFC0C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADFC10  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80ADFC14  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80ADFC18  7C 04 00 00 */	cmpw r4, r0
/* 80ADFC1C  41 82 00 08 */	beq lbl_80ADFC24
/* 80ADFC20  48 00 00 58 */	b lbl_80ADFC78
lbl_80ADFC24:
/* 80ADFC24  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ADFC28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADFC2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADFC30  90 03 5E F0 */	stw r0, 0x5ef0(r3)
/* 80ADFC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ADFC38  90 03 5E F4 */	stw r0, 0x5ef4(r3)
/* 80ADFC3C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ADFC40  90 03 5E F8 */	stw r0, 0x5ef8(r3)
/* 80ADFC44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ADFC48  90 03 5E FC */	stw r0, 0x5efc(r3)
/* 80ADFC4C  38 00 00 00 */	li r0, 0
/* 80ADFC50  90 03 5F 00 */	stw r0, 0x5f00(r3)
/* 80ADFC54  90 03 5F 04 */	stw r0, 0x5f04(r3)
/* 80ADFC58  90 03 5F 08 */	stw r0, 0x5f08(r3)
/* 80ADFC5C  90 03 5F 0C */	stw r0, 0x5f0c(r3)
/* 80ADFC60  90 03 5F 10 */	stw r0, 0x5f10(r3)
/* 80ADFC64  90 03 5F 14 */	stw r0, 0x5f14(r3)
/* 80ADFC68  7F A3 EB 78 */	mr r3, r29
/* 80ADFC6C  A8 9D 0E 14 */	lha r4, 0xe14(r29)
/* 80ADFC70  38 A1 00 10 */	addi r5, r1, 0x10
/* 80ADFC74  4B 67 40 A8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80ADFC78:
/* 80ADFC78  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ADFC7C  7F A3 EB 78 */	mr r3, r29
/* 80ADFC80  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADFC84  38 A1 00 08 */	addi r5, r1, 8
/* 80ADFC88  7F A6 EB 78 */	mr r6, r29
/* 80ADFC8C  38 E0 00 00 */	li r7, 0
/* 80ADFC90  4B 67 3A 88 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADFC94  2C 03 00 00 */	cmpwi r3, 0
/* 80ADFC98  41 82 00 4C */	beq lbl_80ADFCE4
/* 80ADFC9C  7F A3 EB 78 */	mr r3, r29
/* 80ADFCA0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADFCA4  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFCA8  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFCAC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFCB0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFCB4  7D 89 03 A6 */	mtctr r12
/* 80ADFCB8  4E 80 04 21 */	bctrl 
/* 80ADFCBC  7F A3 EB 78 */	mr r3, r29
/* 80ADFCC0  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADFCC4  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFCC8  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFCCC  38 A0 00 00 */	li r5, 0
/* 80ADFCD0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFCD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADFCD8  7D 89 03 A6 */	mtctr r12
/* 80ADFCDC  4E 80 04 21 */	bctrl 
/* 80ADFCE0  48 00 00 F4 */	b lbl_80ADFDD4
lbl_80ADFCE4:
/* 80ADFCE4  2C 1C 00 00 */	cmpwi r28, 0
/* 80ADFCE8  41 82 00 EC */	beq lbl_80ADFDD4
/* 80ADFCEC  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ADFCF0  2C 00 00 00 */	cmpwi r0, 0
/* 80ADFCF4  40 82 00 E0 */	bne lbl_80ADFDD4
/* 80ADFCF8  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ADFCFC  2C 00 00 03 */	cmpwi r0, 3
/* 80ADFD00  41 82 00 6C */	beq lbl_80ADFD6C
/* 80ADFD04  40 80 00 14 */	bge lbl_80ADFD18
/* 80ADFD08  2C 00 00 01 */	cmpwi r0, 1
/* 80ADFD0C  41 82 00 18 */	beq lbl_80ADFD24
/* 80ADFD10  40 80 00 38 */	bge lbl_80ADFD48
/* 80ADFD14  48 00 00 A0 */	b lbl_80ADFDB4
lbl_80ADFD18:
/* 80ADFD18  2C 00 00 05 */	cmpwi r0, 5
/* 80ADFD1C  40 80 00 98 */	bge lbl_80ADFDB4
/* 80ADFD20  48 00 00 70 */	b lbl_80ADFD90
lbl_80ADFD24:
/* 80ADFD24  7F A3 EB 78 */	mr r3, r29
/* 80ADFD28  38 80 00 08 */	li r4, 8
/* 80ADFD2C  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFD30  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFD34  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFD38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFD3C  7D 89 03 A6 */	mtctr r12
/* 80ADFD40  4E 80 04 21 */	bctrl 
/* 80ADFD44  48 00 00 90 */	b lbl_80ADFDD4
lbl_80ADFD48:
/* 80ADFD48  7F A3 EB 78 */	mr r3, r29
/* 80ADFD4C  38 80 00 09 */	li r4, 9
/* 80ADFD50  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFD54  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFD58  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFD5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFD60  7D 89 03 A6 */	mtctr r12
/* 80ADFD64  4E 80 04 21 */	bctrl 
/* 80ADFD68  48 00 00 6C */	b lbl_80ADFDD4
lbl_80ADFD6C:
/* 80ADFD6C  7F A3 EB 78 */	mr r3, r29
/* 80ADFD70  38 80 00 0A */	li r4, 0xa
/* 80ADFD74  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFD78  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFD7C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFD80  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFD84  7D 89 03 A6 */	mtctr r12
/* 80ADFD88  4E 80 04 21 */	bctrl 
/* 80ADFD8C  48 00 00 48 */	b lbl_80ADFDD4
lbl_80ADFD90:
/* 80ADFD90  7F A3 EB 78 */	mr r3, r29
/* 80ADFD94  38 80 00 07 */	li r4, 7
/* 80ADFD98  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFD9C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFDA0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFDA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFDA8  7D 89 03 A6 */	mtctr r12
/* 80ADFDAC  4E 80 04 21 */	bctrl 
/* 80ADFDB0  48 00 00 24 */	b lbl_80ADFDD4
lbl_80ADFDB4:
/* 80ADFDB4  7F A3 EB 78 */	mr r3, r29
/* 80ADFDB8  38 80 00 0C */	li r4, 0xc
/* 80ADFDBC  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADFDC0  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADFDC4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADFDC8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFDCC  7D 89 03 A6 */	mtctr r12
/* 80ADFDD0  4E 80 04 21 */	bctrl 
lbl_80ADFDD4:
/* 80ADFDD4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADFDD8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80ADFDDC  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80ADFDE0  7C 04 00 00 */	cmpw r4, r0
/* 80ADFDE4  41 82 00 08 */	beq lbl_80ADFDEC
/* 80ADFDE8  48 00 00 70 */	b lbl_80ADFE58
lbl_80ADFDEC:
/* 80ADFDEC  7F A3 EB 78 */	mr r3, r29
/* 80ADFDF0  38 80 00 00 */	li r4, 0
/* 80ADFDF4  38 A0 00 01 */	li r5, 1
/* 80ADFDF8  38 C1 00 10 */	addi r6, r1, 0x10
/* 80ADFDFC  4B 67 3F 88 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADFE00  2C 03 00 00 */	cmpwi r3, 0
/* 80ADFE04  41 82 00 0C */	beq lbl_80ADFE10
/* 80ADFE08  38 60 00 01 */	li r3, 1
/* 80ADFE0C  48 00 00 50 */	b lbl_80ADFE5C
lbl_80ADFE10:
/* 80ADFE10  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ADFE14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADFE18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADFE1C  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80ADFE20  4B 56 34 CC */	b convPId__14dEvt_control_cFUi
/* 80ADFE24  7C 03 E8 40 */	cmplw r3, r29
/* 80ADFE28  40 82 00 0C */	bne lbl_80ADFE34
/* 80ADFE2C  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 80ADFE30  4B 67 08 BC */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_80ADFE34:
/* 80ADFE34  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADFE38  2C 00 00 04 */	cmpwi r0, 4
/* 80ADFE3C  40 82 00 10 */	bne lbl_80ADFE4C
/* 80ADFE40  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADFE44  7C 03 00 40 */	cmplw r3, r0
/* 80ADFE48  41 82 00 10 */	beq lbl_80ADFE58
lbl_80ADFE4C:
/* 80ADFE4C  38 00 00 04 */	li r0, 4
/* 80ADFE50  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADFE54  90 7D 0C A8 */	stw r3, 0xca8(r29)
lbl_80ADFE58:
/* 80ADFE58  38 60 00 00 */	li r3, 0
lbl_80ADFE5C:
/* 80ADFE5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80ADFE60  4B 88 23 C0 */	b _restgpr_27
/* 80ADFE64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ADFE68  7C 08 03 A6 */	mtlr r0
/* 80ADFE6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80ADFE70  4E 80 00 20 */	blr 
