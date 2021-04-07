lbl_805A475C:
/* 805A475C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4760  7C 08 02 A6 */	mflr r0
/* 805A4764  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A476C  7C 7F 1B 78 */	mr r31, r3
/* 805A4770  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 805A4774  28 00 00 01 */	cmplwi r0, 1
/* 805A4778  40 82 00 A0 */	bne lbl_805A4818
/* 805A477C  88 1F 05 73 */	lbz r0, 0x573(r31)
/* 805A4780  28 00 00 02 */	cmplwi r0, 2
/* 805A4784  40 82 00 30 */	bne lbl_805A47B4
/* 805A4788  3C 60 80 5A */	lis r3, m_msgFlow__12daTagHstop_c@ha /* 0x805A4B8C@ha */
/* 805A478C  38 63 4B 8C */	addi r3, r3, m_msgFlow__12daTagHstop_c@l /* 0x805A4B8C@l */
/* 805A4790  7F E4 FB 78 */	mr r4, r31
/* 805A4794  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 805A4798  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805A479C  38 C0 00 00 */	li r6, 0
/* 805A47A0  38 E0 00 00 */	li r7, 0
/* 805A47A4  4B CA 57 ED */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805A47A8  38 00 00 03 */	li r0, 3
/* 805A47AC  98 1F 05 73 */	stb r0, 0x573(r31)
/* 805A47B0  48 00 02 E0 */	b lbl_805A4A90
lbl_805A47B4:
/* 805A47B4  3C 60 80 5A */	lis r3, m_msgFlow__12daTagHstop_c@ha /* 0x805A4B8C@ha */
/* 805A47B8  38 63 4B 8C */	addi r3, r3, m_msgFlow__12daTagHstop_c@l /* 0x805A4B8C@l */
/* 805A47BC  7F E4 FB 78 */	mr r4, r31
/* 805A47C0  38 A0 00 00 */	li r5, 0
/* 805A47C4  38 C0 00 00 */	li r6, 0
/* 805A47C8  4B CA 5B 11 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805A47CC  2C 03 00 00 */	cmpwi r3, 0
/* 805A47D0  41 82 02 C0 */	beq lbl_805A4A90
/* 805A47D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A47D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A47DC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A47E0  4B A9 DC 89 */	bl reset__14dEvt_control_cFv
/* 805A47E4  38 00 00 00 */	li r0, 0
/* 805A47E8  98 1F 05 73 */	stb r0, 0x573(r31)
/* 805A47EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A47F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A47F4  A8 83 5D F8 */	lha r4, 0x5df8(r3)
/* 805A47F8  A8 03 5D F4 */	lha r0, 0x5df4(r3)
/* 805A47FC  7C 00 22 14 */	add r0, r0, r4
/* 805A4800  B0 03 5D F4 */	sth r0, 0x5df4(r3)
/* 805A4804  38 80 00 8D */	li r4, 0x8d
/* 805A4808  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A480C  7C 05 07 74 */	extsb r5, r0
/* 805A4810  4B A9 09 F1 */	bl onSwitch__10dSv_info_cFii
/* 805A4814  48 00 02 7C */	b lbl_805A4A90
lbl_805A4818:
/* 805A4818  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 805A481C  2C 00 00 00 */	cmpwi r0, 0
/* 805A4820  41 82 00 84 */	beq lbl_805A48A4
/* 805A4824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A482C  38 80 00 8F */	li r4, 0x8f
/* 805A4830  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4834  7C 05 07 74 */	extsb r5, r0
/* 805A4838  4B A9 0B 29 */	bl isSwitch__10dSv_info_cCFii
/* 805A483C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4840  41 82 00 10 */	beq lbl_805A4850
/* 805A4844  38 00 00 00 */	li r0, 0
/* 805A4848  90 1F 05 74 */	stw r0, 0x574(r31)
/* 805A484C  48 00 00 58 */	b lbl_805A48A4
lbl_805A4850:
/* 805A4850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4854  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4858  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805A485C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805A4860  81 8C 01 48 */	lwz r12, 0x148(r12)
/* 805A4864  7D 89 03 A6 */	mtctr r12
/* 805A4868  4E 80 04 21 */	bctrl 
/* 805A486C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4870  41 82 00 28 */	beq lbl_805A4898
/* 805A4874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A487C  38 80 00 8F */	li r4, 0x8f
/* 805A4880  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4884  7C 05 07 74 */	extsb r5, r0
/* 805A4888  4B A9 09 79 */	bl onSwitch__10dSv_info_cFii
/* 805A488C  38 00 00 00 */	li r0, 0
/* 805A4890  90 1F 05 74 */	stw r0, 0x574(r31)
/* 805A4894  48 00 00 10 */	b lbl_805A48A4
lbl_805A4898:
/* 805A4898  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 805A489C  38 03 FF FF */	addi r0, r3, -1
/* 805A48A0  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_805A48A4:
/* 805A48A4  7F E3 FB 78 */	mr r3, r31
/* 805A48A8  4B FF FE 11 */	bl setActive__12daTagHstop_cFv
/* 805A48AC  88 9F 05 73 */	lbz r4, 0x573(r31)
/* 805A48B0  28 04 00 00 */	cmplwi r4, 0
/* 805A48B4  41 82 00 98 */	beq lbl_805A494C
/* 805A48B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A48BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A48C0  80 A3 5D B8 */	lwz r5, 0x5db8(r3)
/* 805A48C4  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 805A48C8  28 00 00 02 */	cmplwi r0, 2
/* 805A48CC  40 82 00 18 */	bne lbl_805A48E4
/* 805A48D0  88 03 00 EC */	lbz r0, 0xec(r3)
/* 805A48D4  28 00 00 00 */	cmplwi r0, 0
/* 805A48D8  40 82 00 0C */	bne lbl_805A48E4
/* 805A48DC  28 05 00 00 */	cmplwi r5, 0
/* 805A48E0  40 82 00 10 */	bne lbl_805A48F0
lbl_805A48E4:
/* 805A48E4  38 00 00 00 */	li r0, 0
/* 805A48E8  98 1F 05 73 */	stb r0, 0x573(r31)
/* 805A48EC  48 00 01 A4 */	b lbl_805A4A90
lbl_805A48F0:
/* 805A48F0  28 04 00 01 */	cmplwi r4, 1
/* 805A48F4  40 82 00 24 */	bne lbl_805A4918
/* 805A48F8  80 65 17 48 */	lwz r3, 0x1748(r5)
/* 805A48FC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 805A4900  41 82 01 90 */	beq lbl_805A4A90
/* 805A4904  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 805A4908  40 82 01 88 */	bne lbl_805A4A90
/* 805A490C  38 00 00 02 */	li r0, 2
/* 805A4910  98 1F 05 73 */	stb r0, 0x573(r31)
/* 805A4914  48 00 01 7C */	b lbl_805A4A90
lbl_805A4918:
/* 805A4918  28 04 00 02 */	cmplwi r4, 2
/* 805A491C  40 82 01 74 */	bne lbl_805A4A90
/* 805A4920  80 05 17 48 */	lwz r0, 0x1748(r5)
/* 805A4924  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805A4928  40 82 01 68 */	bne lbl_805A4A90
/* 805A492C  7F E3 FB 78 */	mr r3, r31
/* 805A4930  38 80 00 00 */	li r4, 0
/* 805A4934  38 A0 00 00 */	li r5, 0
/* 805A4938  4B A7 68 65 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 805A493C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A4940  60 00 00 01 */	ori r0, r0, 1
/* 805A4944  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805A4948  48 00 01 48 */	b lbl_805A4A90
lbl_805A494C:
/* 805A494C  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 805A4950  28 00 00 02 */	cmplwi r0, 2
/* 805A4954  40 82 01 3C */	bne lbl_805A4A90
/* 805A4958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A495C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4960  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805A4964  28 00 00 00 */	cmplwi r0, 0
/* 805A4968  40 82 01 28 */	bne lbl_805A4A90
/* 805A496C  88 03 00 EC */	lbz r0, 0xec(r3)
/* 805A4970  28 00 00 00 */	cmplwi r0, 0
/* 805A4974  40 82 00 C0 */	bne lbl_805A4A34
/* 805A4978  38 80 00 8D */	li r4, 0x8d
/* 805A497C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4980  7C 05 07 74 */	extsb r5, r0
/* 805A4984  4B A9 09 DD */	bl isSwitch__10dSv_info_cCFii
/* 805A4988  2C 03 00 00 */	cmpwi r3, 0
/* 805A498C  40 82 00 A8 */	bne lbl_805A4A34
/* 805A4990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4998  38 80 00 8D */	li r4, 0x8d
/* 805A499C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A49A0  7C 05 07 74 */	extsb r5, r0
/* 805A49A4  4B A9 08 5D */	bl onSwitch__10dSv_info_cFii
/* 805A49A8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 805A49AC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 805A49B0  38 80 00 2B */	li r4, 0x2b
/* 805A49B4  38 A0 00 5A */	li r5, 0x5a
/* 805A49B8  38 C0 00 01 */	li r6, 1
/* 805A49BC  4B C7 77 61 */	bl setFloatingFlow__13dMeter2Info_cFUssb
/* 805A49C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A49C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A49C8  38 80 00 8F */	li r4, 0x8f
/* 805A49CC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A49D0  7C 05 07 74 */	extsb r5, r0
/* 805A49D4  4B A9 09 8D */	bl isSwitch__10dSv_info_cCFii
/* 805A49D8  2C 03 00 00 */	cmpwi r3, 0
/* 805A49DC  40 82 00 B4 */	bne lbl_805A4A90
/* 805A49E0  38 00 04 B0 */	li r0, 0x4b0
/* 805A49E4  90 1F 05 74 */	stw r0, 0x574(r31)
/* 805A49E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A49EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A49F0  38 80 00 8A */	li r4, 0x8a
/* 805A49F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A49F8  7C 05 07 74 */	extsb r5, r0
/* 805A49FC  4B A9 08 B5 */	bl offSwitch__10dSv_info_cFii
/* 805A4A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4A08  38 80 00 8B */	li r4, 0x8b
/* 805A4A0C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4A10  7C 05 07 74 */	extsb r5, r0
/* 805A4A14  4B A9 08 9D */	bl offSwitch__10dSv_info_cFii
/* 805A4A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4A1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4A20  38 80 00 8C */	li r4, 0x8c
/* 805A4A24  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4A28  7C 05 07 74 */	extsb r5, r0
/* 805A4A2C  4B A9 08 85 */	bl offSwitch__10dSv_info_cFii
/* 805A4A30  48 00 00 60 */	b lbl_805A4A90
lbl_805A4A34:
/* 805A4A34  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 805A4A38  2C 00 00 00 */	cmpwi r0, 0
/* 805A4A3C  40 82 00 54 */	bne lbl_805A4A90
/* 805A4A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4A48  38 80 00 8F */	li r4, 0x8f
/* 805A4A4C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4A50  7C 05 07 74 */	extsb r5, r0
/* 805A4A54  4B A9 09 0D */	bl isSwitch__10dSv_info_cCFii
/* 805A4A58  2C 03 00 00 */	cmpwi r3, 0
/* 805A4A5C  40 82 00 34 */	bne lbl_805A4A90
/* 805A4A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4A68  38 80 00 8F */	li r4, 0x8f
/* 805A4A6C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4A70  7C 05 07 74 */	extsb r5, r0
/* 805A4A74  4B A9 07 8D */	bl onSwitch__10dSv_info_cFii
/* 805A4A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A4A80  38 80 00 8E */	li r4, 0x8e
/* 805A4A84  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4A88  7C 05 07 74 */	extsb r5, r0
/* 805A4A8C  4B A9 07 75 */	bl onSwitch__10dSv_info_cFii
lbl_805A4A90:
/* 805A4A90  38 60 00 01 */	li r3, 1
/* 805A4A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A4A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4A9C  7C 08 03 A6 */	mtlr r0
/* 805A4AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4AA4  4E 80 00 20 */	blr 
