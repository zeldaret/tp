lbl_80979B2C:
/* 80979B2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80979B30  7C 08 02 A6 */	mflr r0
/* 80979B34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80979B38  39 61 00 30 */	addi r11, r1, 0x30
/* 80979B3C  4B 9E 86 A0 */	b _savegpr_29
/* 80979B40  7C 7E 1B 78 */	mr r30, r3
/* 80979B44  3C 80 80 98 */	lis r4, lit_4037@ha
/* 80979B48  3B E4 F5 40 */	addi r31, r4, lit_4037@l
/* 80979B4C  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 80979B50  83 A4 00 08 */	lwz r29, 8(r4)
/* 80979B54  38 80 00 2F */	li r4, 0x2f
/* 80979B58  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 80979B5C  4B 7D E5 94 */	b getAnmP__10daNpcCd2_cFii
/* 80979B60  7C 1D 18 40 */	cmplw r29, r3
/* 80979B64  40 82 00 A0 */	bne lbl_80979C04
/* 80979B68  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 80979B6C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80979B70  40 82 00 30 */	bne lbl_80979BA0
/* 80979B74  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F8@ha */
/* 80979B78  38 03 00 F8 */	addi r0, r3, 0x00F8 /* 0x000500F8@l */
/* 80979B7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80979B80  38 7E 05 94 */	addi r3, r30, 0x594
/* 80979B84  38 81 00 10 */	addi r4, r1, 0x10
/* 80979B88  38 A0 FF FF */	li r5, -1
/* 80979B8C  81 9E 05 94 */	lwz r12, 0x594(r30)
/* 80979B90  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80979B94  7D 89 03 A6 */	mtctr r12
/* 80979B98  4E 80 04 21 */	bctrl 
/* 80979B9C  48 00 00 68 */	b lbl_80979C04
lbl_80979BA0:
/* 80979BA0  2C 00 00 02 */	cmpwi r0, 2
/* 80979BA4  40 82 00 30 */	bne lbl_80979BD4
/* 80979BA8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F9@ha */
/* 80979BAC  38 03 00 F9 */	addi r0, r3, 0x00F9 /* 0x000500F9@l */
/* 80979BB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80979BB4  38 7E 05 94 */	addi r3, r30, 0x594
/* 80979BB8  38 81 00 0C */	addi r4, r1, 0xc
/* 80979BBC  38 A0 FF FF */	li r5, -1
/* 80979BC0  81 9E 05 94 */	lwz r12, 0x594(r30)
/* 80979BC4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80979BC8  7D 89 03 A6 */	mtctr r12
/* 80979BCC  4E 80 04 21 */	bctrl 
/* 80979BD0  48 00 00 34 */	b lbl_80979C04
lbl_80979BD4:
/* 80979BD4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80979BD8  40 82 00 2C */	bne lbl_80979C04
/* 80979BDC  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500FA@ha */
/* 80979BE0  38 03 00 FA */	addi r0, r3, 0x00FA /* 0x000500FA@l */
/* 80979BE4  90 01 00 08 */	stw r0, 8(r1)
/* 80979BE8  38 7E 05 94 */	addi r3, r30, 0x594
/* 80979BEC  38 81 00 08 */	addi r4, r1, 8
/* 80979BF0  38 A0 FF FF */	li r5, -1
/* 80979BF4  81 9E 05 94 */	lwz r12, 0x594(r30)
/* 80979BF8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80979BFC  7D 89 03 A6 */	mtctr r12
/* 80979C00  4E 80 04 21 */	bctrl 
lbl_80979C04:
/* 80979C04  88 1E 0B 98 */	lbz r0, 0xb98(r30)
/* 80979C08  2C 00 00 02 */	cmpwi r0, 2
/* 80979C0C  41 82 01 24 */	beq lbl_80979D30
/* 80979C10  40 80 00 14 */	bge lbl_80979C24
/* 80979C14  2C 00 00 00 */	cmpwi r0, 0
/* 80979C18  41 82 00 18 */	beq lbl_80979C30
/* 80979C1C  40 80 00 A4 */	bge lbl_80979CC0
/* 80979C20  48 00 02 D0 */	b lbl_80979EF0
lbl_80979C24:
/* 80979C24  2C 00 00 04 */	cmpwi r0, 4
/* 80979C28  40 80 02 C8 */	bge lbl_80979EF0
/* 80979C2C  48 00 02 70 */	b lbl_80979E9C
lbl_80979C30:
/* 80979C30  88 1E 0A C6 */	lbz r0, 0xac6(r30)
/* 80979C34  28 00 00 00 */	cmplwi r0, 0
/* 80979C38  40 82 00 24 */	bne lbl_80979C5C
/* 80979C3C  7F C3 F3 78 */	mr r3, r30
/* 80979C40  48 00 19 69 */	bl isInShop__11daNpcCdn3_cFv
/* 80979C44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979C48  40 82 00 14 */	bne lbl_80979C5C
/* 80979C4C  7F C3 F3 78 */	mr r3, r30
/* 80979C50  48 00 1A 35 */	bl isNoTurnTalk__11daNpcCdn3_cFv
/* 80979C54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979C58  41 82 00 14 */	beq lbl_80979C6C
lbl_80979C5C:
/* 80979C5C  88 7E 0B 98 */	lbz r3, 0xb98(r30)
/* 80979C60  38 03 00 01 */	addi r0, r3, 1
/* 80979C64  98 1E 0B 98 */	stb r0, 0xb98(r30)
/* 80979C68  48 00 02 88 */	b lbl_80979EF0
lbl_80979C6C:
/* 80979C6C  38 7E 0A F8 */	addi r3, r30, 0xaf8
/* 80979C70  4B 7C BA 98 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80979C74  7C 64 1B 78 */	mr r4, r3
/* 80979C78  7F C3 F3 78 */	mr r3, r30
/* 80979C7C  4B 6A 0A 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80979C80  7C 64 1B 78 */	mr r4, r3
/* 80979C84  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80979C88  38 A0 00 04 */	li r5, 4
/* 80979C8C  38 C0 08 00 */	li r6, 0x800
/* 80979C90  38 E0 00 10 */	li r7, 0x10
/* 80979C94  4B 8F 68 AC */	b cLib_addCalcAngleS__FPsssss
/* 80979C98  7C 60 07 35 */	extsh. r0, r3
/* 80979C9C  40 82 00 18 */	bne lbl_80979CB4
/* 80979CA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80979CA4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80979CA8  88 7E 0B 98 */	lbz r3, 0xb98(r30)
/* 80979CAC  38 03 00 01 */	addi r0, r3, 1
/* 80979CB0  98 1E 0B 98 */	stb r0, 0xb98(r30)
lbl_80979CB4:
/* 80979CB4  7F C3 F3 78 */	mr r3, r30
/* 80979CB8  48 00 0F 25 */	bl setAngle__11daNpcCdn3_cFv
/* 80979CBC  48 00 02 34 */	b lbl_80979EF0
lbl_80979CC0:
/* 80979CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80979CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80979CC8  38 00 00 00 */	li r0, 0
/* 80979CCC  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80979CD0  28 04 00 01 */	cmplwi r4, 1
/* 80979CD4  41 82 00 0C */	beq lbl_80979CE0
/* 80979CD8  28 04 00 02 */	cmplwi r4, 2
/* 80979CDC  40 82 00 08 */	bne lbl_80979CE4
lbl_80979CE0:
/* 80979CE0  38 00 00 01 */	li r0, 1
lbl_80979CE4:
/* 80979CE4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80979CE8  41 82 00 24 */	beq lbl_80979D0C
/* 80979CEC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80979CF0  4B 6C EB 00 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80979CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80979CF8  41 82 01 F8 */	beq lbl_80979EF0
/* 80979CFC  88 7E 0B 98 */	lbz r3, 0xb98(r30)
/* 80979D00  38 03 00 01 */	addi r0, r3, 1
/* 80979D04  98 1E 0B 98 */	stb r0, 0xb98(r30)
/* 80979D08  48 00 00 10 */	b lbl_80979D18
lbl_80979D0C:
/* 80979D0C  88 7E 0B 98 */	lbz r3, 0xb98(r30)
/* 80979D10  38 03 00 01 */	addi r0, r3, 1
/* 80979D14  98 1E 0B 98 */	stb r0, 0xb98(r30)
lbl_80979D18:
/* 80979D18  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 80979D1C  7F C4 F3 78 */	mr r4, r30
/* 80979D20  80 BE 0B 70 */	lwz r5, 0xb70(r30)
/* 80979D24  38 C0 00 00 */	li r6, 0
/* 80979D28  38 E0 00 00 */	li r7, 0
/* 80979D2C  4B 8D 02 64 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80979D30:
/* 80979D30  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 80979D34  7F C4 F3 78 */	mr r4, r30
/* 80979D38  38 A0 00 00 */	li r5, 0
/* 80979D3C  38 C0 00 00 */	li r6, 0
/* 80979D40  4B 8D 05 98 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80979D44  2C 03 00 00 */	cmpwi r3, 0
/* 80979D48  41 82 00 A8 */	beq lbl_80979DF0
/* 80979D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80979D50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80979D54  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80979D58  4B 6C 87 10 */	b reset__14dEvt_control_cFv
/* 80979D5C  38 7E 0A F8 */	addi r3, r30, 0xaf8
/* 80979D60  4B 7C B9 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80979D64  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80979D68  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 80979D6C  80 1E 0B 68 */	lwz r0, 0xb68(r30)
/* 80979D70  28 00 00 00 */	cmplwi r0, 0
/* 80979D74  41 82 00 14 */	beq lbl_80979D88
/* 80979D78  7F C3 F3 78 */	mr r3, r30
/* 80979D7C  80 9E 0B 54 */	lwz r4, 0xb54(r30)
/* 80979D80  4B FF F0 55 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 80979D84  48 00 01 6C */	b lbl_80979EF0
lbl_80979D88:
/* 80979D88  7F C3 F3 78 */	mr r3, r30
/* 80979D8C  48 00 18 1D */	bl isInShop__11daNpcCdn3_cFv
/* 80979D90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979D94  40 82 00 4C */	bne lbl_80979DE0
/* 80979D98  3B A0 00 00 */	li r29, 0
/* 80979D9C  7F C3 F3 78 */	mr r3, r30
/* 80979DA0  48 00 18 6D */	bl isChairStyle__11daNpcCdn3_cFv
/* 80979DA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979DA8  41 82 00 08 */	beq lbl_80979DB0
/* 80979DAC  3B A0 00 0E */	li r29, 0xe
lbl_80979DB0:
/* 80979DB0  7F C3 F3 78 */	mr r3, r30
/* 80979DB4  7F A4 EB 78 */	mr r4, r29
/* 80979DB8  80 BE 0B 58 */	lwz r5, 0xb58(r30)
/* 80979DBC  4B 7D E3 34 */	b getAnmP__10daNpcCd2_cFii
/* 80979DC0  7C 64 1B 78 */	mr r4, r3
/* 80979DC4  7F C3 F3 78 */	mr r3, r30
/* 80979DC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80979DCC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80979DD0  38 A0 00 02 */	li r5, 2
/* 80979DD4  38 C0 00 00 */	li r6, 0
/* 80979DD8  38 E0 FF FF */	li r7, -1
/* 80979DDC  4B 7D F1 24 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80979DE0:
/* 80979DE0  88 7E 0B 98 */	lbz r3, 0xb98(r30)
/* 80979DE4  38 03 00 01 */	addi r0, r3, 1
/* 80979DE8  98 1E 0B 98 */	stb r0, 0xb98(r30)
/* 80979DEC  48 00 01 04 */	b lbl_80979EF0
lbl_80979DF0:
/* 80979DF0  7F C3 F3 78 */	mr r3, r30
/* 80979DF4  48 00 11 21 */	bl ctrlMsgAnm__11daNpcCdn3_cFv
/* 80979DF8  2C 03 FF FF */	cmpwi r3, -1
/* 80979DFC  41 82 00 18 */	beq lbl_80979E14
/* 80979E00  90 7E 0B 78 */	stw r3, 0xb78(r30)
/* 80979E04  38 00 00 00 */	li r0, 0
/* 80979E08  98 1E 0B 97 */	stb r0, 0xb97(r30)
/* 80979E0C  38 00 00 01 */	li r0, 1
/* 80979E10  98 1E 0B 94 */	stb r0, 0xb94(r30)
lbl_80979E14:
/* 80979E14  7F C3 F3 78 */	mr r3, r30
/* 80979E18  38 80 00 00 */	li r4, 0
/* 80979E1C  80 1E 0B 78 */	lwz r0, 0xb78(r30)
/* 80979E20  54 00 10 3A */	slwi r0, r0, 2
/* 80979E24  3C A0 80 98 */	lis r5, m_funcTbl__11daNpcCdn3_c@ha
/* 80979E28  38 A5 F8 48 */	addi r5, r5, m_funcTbl__11daNpcCdn3_c@l
/* 80979E2C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80979E30  88 1E 0B 97 */	lbz r0, 0xb97(r30)
/* 80979E34  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80979E38  7D 85 02 14 */	add r12, r5, r0
/* 80979E3C  4B 9E 82 48 */	b __ptmf_scall
/* 80979E40  60 00 00 00 */	nop 
/* 80979E44  2C 03 00 00 */	cmpwi r3, 0
/* 80979E48  41 82 00 A8 */	beq lbl_80979EF0
/* 80979E4C  80 1E 0B 78 */	lwz r0, 0xb78(r30)
/* 80979E50  54 00 10 3A */	slwi r0, r0, 2
/* 80979E54  3C 60 80 98 */	lis r3, m_funcTbl__11daNpcCdn3_c@ha
/* 80979E58  38 63 F8 48 */	addi r3, r3, m_funcTbl__11daNpcCdn3_c@l
/* 80979E5C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80979E60  88 7E 0B 97 */	lbz r3, 0xb97(r30)
/* 80979E64  38 03 00 01 */	addi r0, r3, 1
/* 80979E68  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80979E6C  7C 64 02 14 */	add r3, r4, r0
/* 80979E70  4B 9E 81 A8 */	b __ptmf_test
/* 80979E74  2C 03 00 00 */	cmpwi r3, 0
/* 80979E78  40 82 00 0C */	bne lbl_80979E84
/* 80979E7C  38 00 00 00 */	li r0, 0
/* 80979E80  48 00 00 0C */	b lbl_80979E8C
lbl_80979E84:
/* 80979E84  88 7E 0B 97 */	lbz r3, 0xb97(r30)
/* 80979E88  38 03 00 01 */	addi r0, r3, 1
lbl_80979E8C:
/* 80979E8C  98 1E 0B 97 */	stb r0, 0xb97(r30)
/* 80979E90  38 00 00 01 */	li r0, 1
/* 80979E94  98 1E 0B 94 */	stb r0, 0xb94(r30)
/* 80979E98  48 00 00 58 */	b lbl_80979EF0
lbl_80979E9C:
/* 80979E9C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80979EA0  A8 9E 0B 92 */	lha r4, 0xb92(r30)
/* 80979EA4  38 A0 00 04 */	li r5, 4
/* 80979EA8  38 C0 08 00 */	li r6, 0x800
/* 80979EAC  38 E0 00 10 */	li r7, 0x10
/* 80979EB0  4B 8F 66 90 */	b cLib_addCalcAngleS__FPsssss
/* 80979EB4  7C 60 07 35 */	extsh. r0, r3
/* 80979EB8  40 82 00 30 */	bne lbl_80979EE8
/* 80979EBC  7F C3 F3 78 */	mr r3, r30
/* 80979EC0  80 9E 0B 80 */	lwz r4, 0xb80(r30)
/* 80979EC4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80979EC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80979ECC  38 A0 00 02 */	li r5, 2
/* 80979ED0  38 C0 00 00 */	li r6, 0
/* 80979ED4  38 E0 FF FF */	li r7, -1
/* 80979ED8  4B 7D F0 28 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80979EDC  7F C3 F3 78 */	mr r3, r30
/* 80979EE0  80 9E 0B 54 */	lwz r4, 0xb54(r30)
/* 80979EE4  4B FF EE F1 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_80979EE8:
/* 80979EE8  7F C3 F3 78 */	mr r3, r30
/* 80979EEC  48 00 0C F1 */	bl setAngle__11daNpcCdn3_cFv
lbl_80979EF0:
/* 80979EF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80979EF4  4B 9E 83 34 */	b _restgpr_29
/* 80979EF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80979EFC  7C 08 03 A6 */	mtlr r0
/* 80979F00  38 21 00 30 */	addi r1, r1, 0x30
/* 80979F04  4E 80 00 20 */	blr 
