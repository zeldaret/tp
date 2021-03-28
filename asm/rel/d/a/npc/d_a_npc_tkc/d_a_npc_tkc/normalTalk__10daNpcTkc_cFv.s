lbl_80B0E8EC:
/* 80B0E8EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0E8F0  7C 08 02 A6 */	mflr r0
/* 80B0E8F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0E8F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B0E8FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B0E900  7C 7F 1B 78 */	mr r31, r3
/* 80B0E904  A0 03 0D 76 */	lhz r0, 0xd76(r3)
/* 80B0E908  2C 00 00 02 */	cmpwi r0, 2
/* 80B0E90C  41 82 00 68 */	beq lbl_80B0E974
/* 80B0E910  40 80 00 10 */	bge lbl_80B0E920
/* 80B0E914  2C 00 00 00 */	cmpwi r0, 0
/* 80B0E918  41 82 00 14 */	beq lbl_80B0E92C
/* 80B0E91C  48 00 01 DC */	b lbl_80B0EAF8
lbl_80B0E920:
/* 80B0E920  2C 00 00 04 */	cmpwi r0, 4
/* 80B0E924  40 80 01 D4 */	bge lbl_80B0EAF8
/* 80B0E928  48 00 01 98 */	b lbl_80B0EAC0
lbl_80B0E92C:
/* 80B0E92C  A8 9F 0D 72 */	lha r4, 0xd72(r31)
/* 80B0E930  38 A0 00 00 */	li r5, 0
/* 80B0E934  4B 64 53 E8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B0E938  38 00 00 00 */	li r0, 0
/* 80B0E93C  90 1F 09 50 */	stw r0, 0x950(r31)
/* 80B0E940  A8 1F 0D 74 */	lha r0, 0xd74(r31)
/* 80B0E944  2C 00 00 02 */	cmpwi r0, 2
/* 80B0E948  41 82 00 0C */	beq lbl_80B0E954
/* 80B0E94C  38 00 00 02 */	li r0, 2
/* 80B0E950  B0 1F 0D 74 */	sth r0, 0xd74(r31)
lbl_80B0E954:
/* 80B0E954  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E958  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B0E95C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B0E960  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B0E964  4B 64 1D 58 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B0E968  38 00 00 02 */	li r0, 2
/* 80B0E96C  B0 1F 0D 76 */	sth r0, 0xd76(r31)
/* 80B0E970  48 00 01 88 */	b lbl_80B0EAF8
lbl_80B0E974:
/* 80B0E974  38 80 00 00 */	li r4, 0
/* 80B0E978  38 A0 00 01 */	li r5, 1
/* 80B0E97C  38 C0 00 00 */	li r6, 0
/* 80B0E980  4B 64 54 04 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B0E984  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E988  41 82 00 8C */	beq lbl_80B0EA14
/* 80B0E98C  3C 60 80 B1 */	lis r3, lit_5113@ha
/* 80B0E990  38 83 0B A4 */	addi r4, r3, lit_5113@l
/* 80B0E994  80 64 00 00 */	lwz r3, 0(r4)
/* 80B0E998  80 04 00 04 */	lwz r0, 4(r4)
/* 80B0E99C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B0E9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0E9A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B0E9A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B0E9AC  38 00 00 03 */	li r0, 3
/* 80B0E9B0  B0 1F 0D 76 */	sth r0, 0xd76(r31)
/* 80B0E9B4  38 7F 0D 20 */	addi r3, r31, 0xd20
/* 80B0E9B8  4B 85 36 60 */	b __ptmf_test
/* 80B0E9BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E9C0  41 82 00 14 */	beq lbl_80B0E9D4
/* 80B0E9C4  7F E3 FB 78 */	mr r3, r31
/* 80B0E9C8  39 9F 0D 20 */	addi r12, r31, 0xd20
/* 80B0E9CC  4B 85 36 B8 */	b __ptmf_scall
/* 80B0E9D0  60 00 00 00 */	nop 
lbl_80B0E9D4:
/* 80B0E9D4  38 00 00 00 */	li r0, 0
/* 80B0E9D8  B0 1F 0D 76 */	sth r0, 0xd76(r31)
/* 80B0E9DC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80B0E9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0E9E4  90 7F 0D 20 */	stw r3, 0xd20(r31)
/* 80B0E9E8  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 80B0E9EC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B0E9F0  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 80B0E9F4  38 7F 0D 20 */	addi r3, r31, 0xd20
/* 80B0E9F8  4B 85 36 20 */	b __ptmf_test
/* 80B0E9FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B0EA00  41 82 00 14 */	beq lbl_80B0EA14
/* 80B0EA04  7F E3 FB 78 */	mr r3, r31
/* 80B0EA08  39 9F 0D 20 */	addi r12, r31, 0xd20
/* 80B0EA0C  4B 85 36 78 */	b __ptmf_scall
/* 80B0EA10  60 00 00 00 */	nop 
lbl_80B0EA14:
/* 80B0EA14  83 DF 09 50 */	lwz r30, 0x950(r31)
/* 80B0EA18  7F E3 FB 78 */	mr r3, r31
/* 80B0EA1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B0EA20  38 A1 00 08 */	addi r5, r1, 8
/* 80B0EA24  7F E6 FB 78 */	mr r6, r31
/* 80B0EA28  38 E0 00 00 */	li r7, 0
/* 80B0EA2C  4B 64 4C EC */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B0EA30  2C 03 00 00 */	cmpwi r3, 0
/* 80B0EA34  41 82 00 4C */	beq lbl_80B0EA80
/* 80B0EA38  7F E3 FB 78 */	mr r3, r31
/* 80B0EA3C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0EA40  3C A0 80 B1 */	lis r5, lit_4891@ha
/* 80B0EA44  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)
/* 80B0EA48  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B0EA4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EA50  7D 89 03 A6 */	mtctr r12
/* 80B0EA54  4E 80 04 21 */	bctrl 
/* 80B0EA58  7F E3 FB 78 */	mr r3, r31
/* 80B0EA5C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0EA60  3C A0 80 B1 */	lis r5, lit_4891@ha
/* 80B0EA64  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)
/* 80B0EA68  38 A0 00 00 */	li r5, 0
/* 80B0EA6C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B0EA70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B0EA74  7D 89 03 A6 */	mtctr r12
/* 80B0EA78  4E 80 04 21 */	bctrl 
/* 80B0EA7C  48 00 00 38 */	b lbl_80B0EAB4
lbl_80B0EA80:
/* 80B0EA80  2C 1E 00 00 */	cmpwi r30, 0
/* 80B0EA84  41 82 00 30 */	beq lbl_80B0EAB4
/* 80B0EA88  80 1F 09 50 */	lwz r0, 0x950(r31)
/* 80B0EA8C  2C 00 00 00 */	cmpwi r0, 0
/* 80B0EA90  40 82 00 24 */	bne lbl_80B0EAB4
/* 80B0EA94  7F E3 FB 78 */	mr r3, r31
/* 80B0EA98  38 80 00 01 */	li r4, 1
/* 80B0EA9C  3C A0 80 B1 */	lis r5, lit_4891@ha
/* 80B0EAA0  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)
/* 80B0EAA4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B0EAA8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EAAC  7D 89 03 A6 */	mtctr r12
/* 80B0EAB0  4E 80 04 21 */	bctrl 
lbl_80B0EAB4:
/* 80B0EAB4  7F E3 FB 78 */	mr r3, r31
/* 80B0EAB8  4B FF F4 41 */	bl calcFly__10daNpcTkc_cFv
/* 80B0EABC  48 00 00 3C */	b lbl_80B0EAF8
lbl_80B0EAC0:
/* 80B0EAC0  38 80 00 01 */	li r4, 1
/* 80B0EAC4  3C A0 80 B1 */	lis r5, lit_4891@ha
/* 80B0EAC8  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)
/* 80B0EACC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B0EAD0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EAD4  7D 89 03 A6 */	mtctr r12
/* 80B0EAD8  4E 80 04 21 */	bctrl 
/* 80B0EADC  88 1F 09 EC */	lbz r0, 0x9ec(r31)
/* 80B0EAE0  28 00 00 00 */	cmplwi r0, 0
/* 80B0EAE4  40 82 00 14 */	bne lbl_80B0EAF8
/* 80B0EAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0EAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0EAF0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0EAF4  4B 53 39 74 */	b reset__14dEvt_control_cFv
lbl_80B0EAF8:
/* 80B0EAF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B0EAFC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B0EB00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0EB04  7C 08 03 A6 */	mtlr r0
/* 80B0EB08  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0EB0C  4E 80 00 20 */	blr 
