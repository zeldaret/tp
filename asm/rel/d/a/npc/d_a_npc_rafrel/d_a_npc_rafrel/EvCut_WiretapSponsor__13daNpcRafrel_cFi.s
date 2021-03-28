lbl_80ABD8A0:
/* 80ABD8A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ABD8A4  7C 08 02 A6 */	mflr r0
/* 80ABD8A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ABD8AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80ABD8B0  4B 8A 49 24 */	b _savegpr_27
/* 80ABD8B4  7C 7D 1B 78 */	mr r29, r3
/* 80ABD8B8  7C 9B 23 78 */	mr r27, r4
/* 80ABD8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABD8C0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ABD8C4  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ABD8C8  3C 60 80 AC */	lis r3, lit_5583@ha
/* 80ABD8CC  38 83 FD 8C */	addi r4, r3, lit_5583@l
/* 80ABD8D0  80 64 00 00 */	lwz r3, 0(r4)
/* 80ABD8D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80ABD8D8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80ABD8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABD8E0  80 64 00 08 */	lwz r3, 8(r4)
/* 80ABD8E4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80ABD8E8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80ABD8EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABD8F0  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80ABD8F4  38 7D 0C 84 */	addi r3, r29, 0xc84
/* 80ABD8F8  4B 69 2D F4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABD8FC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ABD900  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80ABD904  4B 69 2D E8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABD908  90 61 00 18 */	stw r3, 0x18(r1)
/* 80ABD90C  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 80ABD910  4B 69 2D DC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABD914  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80ABD918  7F 83 E3 78 */	mr r3, r28
/* 80ABD91C  7F 64 DB 78 */	mr r4, r27
/* 80ABD920  4B 58 A6 3C */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ABD924  7C 7F 1B 78 */	mr r31, r3
/* 80ABD928  7F 83 E3 78 */	mr r3, r28
/* 80ABD92C  7F 64 DB 78 */	mr r4, r27
/* 80ABD930  4B 58 A4 1C */	b getIsAddvance__16dEvent_manager_cFi
/* 80ABD934  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD938  41 82 00 70 */	beq lbl_80ABD9A8
/* 80ABD93C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ABD940  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80ABD944  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80ABD948  7C 04 00 00 */	cmpw r4, r0
/* 80ABD94C  41 82 00 08 */	beq lbl_80ABD954
/* 80ABD950  48 00 00 58 */	b lbl_80ABD9A8
lbl_80ABD954:
/* 80ABD954  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ABD958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABD95C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABD960  90 03 5E F0 */	stw r0, 0x5ef0(r3)
/* 80ABD964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABD968  90 03 5E F4 */	stw r0, 0x5ef4(r3)
/* 80ABD96C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ABD970  90 03 5E F8 */	stw r0, 0x5ef8(r3)
/* 80ABD974  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ABD978  90 03 5E FC */	stw r0, 0x5efc(r3)
/* 80ABD97C  38 00 00 00 */	li r0, 0
/* 80ABD980  90 03 5F 00 */	stw r0, 0x5f00(r3)
/* 80ABD984  90 03 5F 04 */	stw r0, 0x5f04(r3)
/* 80ABD988  90 03 5F 08 */	stw r0, 0x5f08(r3)
/* 80ABD98C  90 03 5F 0C */	stw r0, 0x5f0c(r3)
/* 80ABD990  90 03 5F 10 */	stw r0, 0x5f10(r3)
/* 80ABD994  90 03 5F 14 */	stw r0, 0x5f14(r3)
/* 80ABD998  7F A3 EB 78 */	mr r3, r29
/* 80ABD99C  A8 9D 0E 0C */	lha r4, 0xe0c(r29)
/* 80ABD9A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80ABD9A4  4B 69 63 78 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80ABD9A8:
/* 80ABD9A8  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ABD9AC  7F A3 EB 78 */	mr r3, r29
/* 80ABD9B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABD9B4  38 A1 00 08 */	addi r5, r1, 8
/* 80ABD9B8  7F A6 EB 78 */	mr r6, r29
/* 80ABD9BC  38 E0 00 00 */	li r7, 0
/* 80ABD9C0  4B 69 5D 58 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ABD9C4  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD9C8  41 82 00 4C */	beq lbl_80ABDA14
/* 80ABD9CC  7F A3 EB 78 */	mr r3, r29
/* 80ABD9D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ABD9D4  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABD9D8  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABD9DC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABD9E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD9E4  7D 89 03 A6 */	mtctr r12
/* 80ABD9E8  4E 80 04 21 */	bctrl 
/* 80ABD9EC  7F A3 EB 78 */	mr r3, r29
/* 80ABD9F0  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABD9F4  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABD9F8  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABD9FC  38 A0 00 00 */	li r5, 0
/* 80ABDA00  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDA04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABDA08  7D 89 03 A6 */	mtctr r12
/* 80ABDA0C  4E 80 04 21 */	bctrl 
/* 80ABDA10  48 00 00 CC */	b lbl_80ABDADC
lbl_80ABDA14:
/* 80ABDA14  2C 1C 00 00 */	cmpwi r28, 0
/* 80ABDA18  41 82 00 C4 */	beq lbl_80ABDADC
/* 80ABDA1C  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ABDA20  2C 00 00 00 */	cmpwi r0, 0
/* 80ABDA24  40 82 00 B8 */	bne lbl_80ABDADC
/* 80ABDA28  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ABDA2C  2C 00 00 02 */	cmpwi r0, 2
/* 80ABDA30  41 82 00 44 */	beq lbl_80ABDA74
/* 80ABDA34  40 80 00 10 */	bge lbl_80ABDA44
/* 80ABDA38  2C 00 00 01 */	cmpwi r0, 1
/* 80ABDA3C  40 80 00 14 */	bge lbl_80ABDA50
/* 80ABDA40  48 00 00 7C */	b lbl_80ABDABC
lbl_80ABDA44:
/* 80ABDA44  2C 00 00 04 */	cmpwi r0, 4
/* 80ABDA48  40 80 00 74 */	bge lbl_80ABDABC
/* 80ABDA4C  48 00 00 4C */	b lbl_80ABDA98
lbl_80ABDA50:
/* 80ABDA50  7F A3 EB 78 */	mr r3, r29
/* 80ABDA54  38 80 00 04 */	li r4, 4
/* 80ABDA58  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABDA5C  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABDA60  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDA64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDA68  7D 89 03 A6 */	mtctr r12
/* 80ABDA6C  4E 80 04 21 */	bctrl 
/* 80ABDA70  48 00 00 6C */	b lbl_80ABDADC
lbl_80ABDA74:
/* 80ABDA74  7F A3 EB 78 */	mr r3, r29
/* 80ABDA78  38 80 00 05 */	li r4, 5
/* 80ABDA7C  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABDA80  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABDA84  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDA88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDA8C  7D 89 03 A6 */	mtctr r12
/* 80ABDA90  4E 80 04 21 */	bctrl 
/* 80ABDA94  48 00 00 48 */	b lbl_80ABDADC
lbl_80ABDA98:
/* 80ABDA98  7F A3 EB 78 */	mr r3, r29
/* 80ABDA9C  38 80 00 06 */	li r4, 6
/* 80ABDAA0  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABDAA4  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABDAA8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDAAC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDAB0  7D 89 03 A6 */	mtctr r12
/* 80ABDAB4  4E 80 04 21 */	bctrl 
/* 80ABDAB8  48 00 00 24 */	b lbl_80ABDADC
lbl_80ABDABC:
/* 80ABDABC  7F A3 EB 78 */	mr r3, r29
/* 80ABDAC0  38 80 00 07 */	li r4, 7
/* 80ABDAC4  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABDAC8  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABDACC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABDAD0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABDAD4  7D 89 03 A6 */	mtctr r12
/* 80ABDAD8  4E 80 04 21 */	bctrl 
lbl_80ABDADC:
/* 80ABDADC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ABDAE0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80ABDAE4  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80ABDAE8  7C 04 00 00 */	cmpw r4, r0
/* 80ABDAEC  41 82 00 08 */	beq lbl_80ABDAF4
/* 80ABDAF0  48 00 00 70 */	b lbl_80ABDB60
lbl_80ABDAF4:
/* 80ABDAF4  7F A3 EB 78 */	mr r3, r29
/* 80ABDAF8  38 80 00 00 */	li r4, 0
/* 80ABDAFC  38 A0 00 01 */	li r5, 1
/* 80ABDB00  38 C1 00 10 */	addi r6, r1, 0x10
/* 80ABDB04  4B 69 62 80 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ABDB08  2C 03 00 00 */	cmpwi r3, 0
/* 80ABDB0C  41 82 00 0C */	beq lbl_80ABDB18
/* 80ABDB10  38 60 00 01 */	li r3, 1
/* 80ABDB14  48 00 00 50 */	b lbl_80ABDB64
lbl_80ABDB18:
/* 80ABDB18  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ABDB1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABDB20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ABDB24  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80ABDB28  4B 58 57 C4 */	b convPId__14dEvt_control_cFUi
/* 80ABDB2C  7C 03 E8 40 */	cmplw r3, r29
/* 80ABDB30  40 82 00 0C */	bne lbl_80ABDB3C
/* 80ABDB34  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80ABDB38  4B 69 2B B4 */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_80ABDB3C:
/* 80ABDB3C  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABDB40  2C 00 00 04 */	cmpwi r0, 4
/* 80ABDB44  40 82 00 10 */	bne lbl_80ABDB54
/* 80ABDB48  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABDB4C  7C 03 00 40 */	cmplw r3, r0
/* 80ABDB50  41 82 00 10 */	beq lbl_80ABDB60
lbl_80ABDB54:
/* 80ABDB54  38 00 00 04 */	li r0, 4
/* 80ABDB58  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABDB5C  90 7D 0C 9C */	stw r3, 0xc9c(r29)
lbl_80ABDB60:
/* 80ABDB60  38 60 00 00 */	li r3, 0
lbl_80ABDB64:
/* 80ABDB64  39 61 00 40 */	addi r11, r1, 0x40
/* 80ABDB68  4B 8A 46 B8 */	b _restgpr_27
/* 80ABDB6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ABDB70  7C 08 03 A6 */	mtlr r0
/* 80ABDB74  38 21 00 40 */	addi r1, r1, 0x40
/* 80ABDB78  4E 80 00 20 */	blr 
