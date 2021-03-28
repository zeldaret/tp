lbl_80A67794:
/* 80A67794  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A67798  7C 08 02 A6 */	mflr r0
/* 80A6779C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A677A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A677A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A677A8  7C 7F 1B 78 */	mr r31, r3
/* 80A677AC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A677B0  2C 00 00 02 */	cmpwi r0, 2
/* 80A677B4  41 82 00 E0 */	beq lbl_80A67894
/* 80A677B8  40 80 02 CC */	bge lbl_80A67A84
/* 80A677BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A677C0  40 80 00 0C */	bge lbl_80A677CC
/* 80A677C4  48 00 02 C0 */	b lbl_80A67A84
/* 80A677C8  48 00 02 BC */	b lbl_80A67A84
lbl_80A677CC:
/* 80A677CC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A677D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A677D4  40 82 00 C0 */	bne lbl_80A67894
/* 80A677D8  88 1F 0F EE */	lbz r0, 0xfee(r31)
/* 80A677DC  28 00 00 00 */	cmplwi r0, 0
/* 80A677E0  40 82 00 0C */	bne lbl_80A677EC
/* 80A677E4  38 60 00 0B */	li r3, 0xb
/* 80A677E8  4B 6E 53 44 */	b daNpcT_offTmpBit__FUl
lbl_80A677EC:
/* 80A677EC  88 1F 0E 2E */	lbz r0, 0xe2e(r31)
/* 80A677F0  28 00 00 82 */	cmplwi r0, 0x82
/* 80A677F4  40 82 00 18 */	bne lbl_80A6780C
/* 80A677F8  7F E3 FB 78 */	mr r3, r31
/* 80A677FC  38 80 00 28 */	li r4, 0x28
/* 80A67800  38 A0 00 00 */	li r5, 0
/* 80A67804  4B 6E 43 EC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A67808  48 00 00 14 */	b lbl_80A6781C
lbl_80A6780C:
/* 80A6780C  7F E3 FB 78 */	mr r3, r31
/* 80A67810  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A67814  38 A0 00 00 */	li r5, 0
/* 80A67818  4B 6E 43 D8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A6781C:
/* 80A6781C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A67820  2C 00 00 07 */	cmpwi r0, 7
/* 80A67824  41 82 00 08 */	beq lbl_80A6782C
/* 80A67828  48 00 00 64 */	b lbl_80A6788C
lbl_80A6782C:
/* 80A6782C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A67830  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A67834  41 82 00 28 */	beq lbl_80A6785C
/* 80A67838  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6783C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A67840  4B 6D E0 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67844  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A67848  38 00 00 11 */	li r0, 0x11
/* 80A6784C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A67850  3C 60 80 A7 */	lis r3, lit_4695@ha
/* 80A67854  C0 03 8F 98 */	lfs f0, lit_4695@l(r3)
/* 80A67858  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6785C:
/* 80A6785C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A67860  2C 00 00 00 */	cmpwi r0, 0
/* 80A67864  41 82 00 28 */	beq lbl_80A6788C
/* 80A67868  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6786C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A67870  4B 6D E0 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67874  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A67878  38 00 00 00 */	li r0, 0
/* 80A6787C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A67880  3C 60 80 A7 */	lis r3, lit_4695@ha
/* 80A67884  C0 03 8F 98 */	lfs f0, lit_4695@l(r3)
/* 80A67888  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6788C:
/* 80A6788C  38 00 00 02 */	li r0, 2
/* 80A67890  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A67894:
/* 80A67894  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A67898  2C 00 00 00 */	cmpwi r0, 0
/* 80A6789C  40 82 01 E8 */	bne lbl_80A67A84
/* 80A678A0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A678A4  28 00 00 00 */	cmplwi r0, 0
/* 80A678A8  40 82 00 28 */	bne lbl_80A678D0
/* 80A678AC  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80A678B0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A678B4  7C 03 00 00 */	cmpw r3, r0
/* 80A678B8  41 82 00 18 */	beq lbl_80A678D0
/* 80A678BC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A678C0  28 00 00 00 */	cmplwi r0, 0
/* 80A678C4  41 82 00 0C */	beq lbl_80A678D0
/* 80A678C8  28 00 00 02 */	cmplwi r0, 2
/* 80A678CC  40 82 01 60 */	bne lbl_80A67A2C
lbl_80A678D0:
/* 80A678D0  7F E3 FB 78 */	mr r3, r31
/* 80A678D4  38 80 00 00 */	li r4, 0
/* 80A678D8  38 A0 00 00 */	li r5, 0
/* 80A678DC  38 C0 00 00 */	li r6, 0
/* 80A678E0  38 E0 00 00 */	li r7, 0
/* 80A678E4  4B 6E 43 94 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A678E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A678EC  41 82 00 BC */	beq lbl_80A679A8
/* 80A678F0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A678F4  38 81 00 08 */	addi r4, r1, 8
/* 80A678F8  4B 7E 2C 30 */	b getEventId__10dMsgFlow_cFPi
/* 80A678FC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80A67900  38 00 00 00 */	li r0, 0
/* 80A67904  98 1F 0F EE */	stb r0, 0xfee(r31)
/* 80A67908  2C 03 00 01 */	cmpwi r3, 1
/* 80A6790C  41 82 00 08 */	beq lbl_80A67914
/* 80A67910  48 00 00 60 */	b lbl_80A67970
lbl_80A67914:
/* 80A67914  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80A67918  3C 03 00 01 */	addis r0, r3, 1
/* 80A6791C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A67920  40 82 00 28 */	bne lbl_80A67948
/* 80A67924  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A67928  80 81 00 08 */	lwz r4, 8(r1)
/* 80A6792C  38 A0 00 00 */	li r5, 0
/* 80A67930  38 C0 FF FF */	li r6, -1
/* 80A67934  38 E0 FF FF */	li r7, -1
/* 80A67938  39 00 00 00 */	li r8, 0
/* 80A6793C  39 20 00 00 */	li r9, 0
/* 80A67940  4B 5B 42 A8 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A67944  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80A67948:
/* 80A67948  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80A6794C  4B 5B 9A 50 */	b fpcEx_IsExist__FUi
/* 80A67950  2C 03 00 00 */	cmpwi r3, 0
/* 80A67954  41 82 00 54 */	beq lbl_80A679A8
/* 80A67958  38 00 00 01 */	li r0, 1
/* 80A6795C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A67960  98 1F 0F EE */	stb r0, 0xfee(r31)
/* 80A67964  7F E3 FB 78 */	mr r3, r31
/* 80A67968  4B 6E 28 BC */	b evtChange__8daNpcT_cFv
/* 80A6796C  48 00 00 3C */	b lbl_80A679A8
lbl_80A67970:
/* 80A67970  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A67974  28 00 00 01 */	cmplwi r0, 1
/* 80A67978  40 82 00 30 */	bne lbl_80A679A8
/* 80A6797C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A67980  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A67984  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A67988  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A6798C  4B 6D DD 54 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A67990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A67994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A67998  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A6799C  4B 5D AA CC */	b reset__14dEvt_control_cFv
/* 80A679A0  38 00 00 03 */	li r0, 3
/* 80A679A4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A679A8:
/* 80A679A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A679AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A679B0  41 82 00 2C */	beq lbl_80A679DC
/* 80A679B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A679B8  4B 6D DD 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A679BC  38 00 00 00 */	li r0, 0
/* 80A679C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A679C4  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A679C8  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A679CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A679D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A679D4  38 00 00 01 */	li r0, 1
/* 80A679D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A679DC:
/* 80A679DC  38 00 00 00 */	li r0, 0
/* 80A679E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A679E4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A679E8  28 00 00 00 */	cmplwi r0, 0
/* 80A679EC  41 82 00 98 */	beq lbl_80A67A84
/* 80A679F0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A679F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A679F8  41 82 00 28 */	beq lbl_80A67A20
/* 80A679FC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A67A00  4B 6D DC FC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A67A04  38 00 00 00 */	li r0, 0
/* 80A67A08  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A67A0C  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A67A10  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A67A14  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A67A18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A67A1C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A67A20:
/* 80A67A20  38 00 00 00 */	li r0, 0
/* 80A67A24  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A67A28  48 00 00 5C */	b lbl_80A67A84
lbl_80A67A2C:
/* 80A67A2C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A67A30  2C 00 00 01 */	cmpwi r0, 1
/* 80A67A34  41 82 00 2C */	beq lbl_80A67A60
/* 80A67A38  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A67A3C  4B 6D DC C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A67A40  38 00 00 00 */	li r0, 0
/* 80A67A44  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A67A48  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A67A4C  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A67A50  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A67A54  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A67A58  38 00 00 01 */	li r0, 1
/* 80A67A5C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A67A60:
/* 80A67A60  38 00 00 00 */	li r0, 0
/* 80A67A64  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A67A68  7F E3 FB 78 */	mr r3, r31
/* 80A67A6C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A67A70  38 A0 00 11 */	li r5, 0x11
/* 80A67A74  38 C0 00 0D */	li r6, 0xd
/* 80A67A78  38 E0 00 0F */	li r7, 0xf
/* 80A67A7C  39 00 00 00 */	li r8, 0
/* 80A67A80  4B 6E 3B C8 */	b step__8daNpcT_cFsiiii
lbl_80A67A84:
/* 80A67A84  38 60 00 00 */	li r3, 0
/* 80A67A88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A67A8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A67A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A67A94  7C 08 03 A6 */	mtlr r0
/* 80A67A98  38 21 00 20 */	addi r1, r1, 0x20
/* 80A67A9C  4E 80 00 20 */	blr 
