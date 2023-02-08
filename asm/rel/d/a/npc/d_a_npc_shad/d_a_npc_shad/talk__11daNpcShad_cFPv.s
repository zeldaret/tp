lbl_80ADB628:
/* 80ADB628  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80ADB62C  7C 08 02 A6 */	mflr r0
/* 80ADB630  90 01 00 94 */	stw r0, 0x94(r1)
/* 80ADB634  39 61 00 90 */	addi r11, r1, 0x90
/* 80ADB638  4B 88 6B 99 */	bl _savegpr_26
/* 80ADB63C  7C 7B 1B 78 */	mr r27, r3
/* 80ADB640  3C 80 80 AE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AE2620@ha */
/* 80ADB644  3B A4 26 20 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80AE2620@l */
/* 80ADB648  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80ADB64C  3B C4 1F DC */	addi r30, r4, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80ADB650  3B 80 00 00 */	li r28, 0
/* 80ADB654  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80ADB658  2C 00 00 02 */	cmpwi r0, 2
/* 80ADB65C  41 82 00 74 */	beq lbl_80ADB6D0
/* 80ADB660  40 80 00 10 */	bge lbl_80ADB670
/* 80ADB664  2C 00 00 00 */	cmpwi r0, 0
/* 80ADB668  41 82 00 14 */	beq lbl_80ADB67C
/* 80ADB66C  48 00 08 20 */	b lbl_80ADBE8C
lbl_80ADB670:
/* 80ADB670  2C 00 00 04 */	cmpwi r0, 4
/* 80ADB674  40 80 08 18 */	bge lbl_80ADBE8C
/* 80ADB678  48 00 07 D0 */	b lbl_80ADBE48
lbl_80ADB67C:
/* 80ADB67C  A8 9B 0E 14 */	lha r4, 0xe14(r27)
/* 80ADB680  38 A0 00 00 */	li r5, 0
/* 80ADB684  4B 67 86 99 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADB688  38 00 00 00 */	li r0, 0
/* 80ADB68C  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADB690  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80ADB694  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80ADB698  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80ADB69C  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80ADB6A0  2C 00 00 03 */	cmpwi r0, 3
/* 80ADB6A4  40 82 00 10 */	bne lbl_80ADB6B4
/* 80ADB6A8  80 1B 0C A8 */	lwz r0, 0xca8(r27)
/* 80ADB6AC  28 00 00 00 */	cmplwi r0, 0
/* 80ADB6B0  41 82 00 14 */	beq lbl_80ADB6C4
lbl_80ADB6B4:
/* 80ADB6B4  38 00 00 03 */	li r0, 3
/* 80ADB6B8  B0 1B 0E 18 */	sth r0, 0xe18(r27)
/* 80ADB6BC  38 00 00 00 */	li r0, 0
/* 80ADB6C0  90 1B 0C A8 */	stw r0, 0xca8(r27)
lbl_80ADB6C4:
/* 80ADB6C4  38 00 00 02 */	li r0, 2
/* 80ADB6C8  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB6CC  48 00 07 C0 */	b lbl_80ADBE8C
lbl_80ADB6D0:
/* 80ADB6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADB6D4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADB6D8  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80ADB6DC  3C 80 80 AE */	lis r4, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADB6E0  38 84 24 C4 */	addi r4, r4, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADB6E4  38 84 01 1B */	addi r4, r4, 0x11b
/* 80ADB6E8  4B 88 D2 AD */	bl strcmp
/* 80ADB6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB6F0  41 82 00 28 */	beq lbl_80ADB718
/* 80ADB6F4  7F 63 DB 78 */	mr r3, r27
/* 80ADB6F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADB6FC  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADB700  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADB704  4B 53 F0 0D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADB708  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80ADB70C  7C 60 07 34 */	extsh r0, r3
/* 80ADB710  7C 04 00 00 */	cmpw r4, r0
/* 80ADB714  40 82 05 B4 */	bne lbl_80ADBCC8
lbl_80ADB718:
/* 80ADB718  7F 63 DB 78 */	mr r3, r27
/* 80ADB71C  38 80 00 00 */	li r4, 0
/* 80ADB720  38 A0 00 01 */	li r5, 1
/* 80ADB724  38 C0 00 00 */	li r6, 0
/* 80ADB728  4B 67 86 5D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADB72C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB730  41 82 04 54 */	beq lbl_80ADBB84
/* 80ADB734  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADB738  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADB73C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADB740  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADB744  4B 67 4F 79 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ADB748  38 00 00 00 */	li r0, 0
/* 80ADB74C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ADB750  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80ADB754  38 81 00 10 */	addi r4, r1, 0x10
/* 80ADB758  4B 76 ED D1 */	bl getEventId__10dMsgFlow_cFPi
/* 80ADB75C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80ADB760  28 00 00 01 */	cmplwi r0, 1
/* 80ADB764  40 82 02 50 */	bne lbl_80ADB9B4
/* 80ADB768  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80ADB76C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ADB770  38 A0 00 00 */	li r5, 0
/* 80ADB774  38 C0 FF FF */	li r6, -1
/* 80ADB778  38 E0 FF FF */	li r7, -1
/* 80ADB77C  39 00 00 00 */	li r8, 0
/* 80ADB780  39 20 00 00 */	li r9, 0
/* 80ADB784  4B 54 04 65 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80ADB788  90 7B 0E 08 */	stw r3, 0xe08(r27)
/* 80ADB78C  80 7B 0E 08 */	lwz r3, 0xe08(r27)
/* 80ADB790  3C 03 00 01 */	addis r0, r3, 1
/* 80ADB794  28 00 FF FF */	cmplwi r0, 0xffff
/* 80ADB798  41 82 03 E4 */	beq lbl_80ADBB7C
/* 80ADB79C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80ADB7A0  7F 64 DB 78 */	mr r4, r27
/* 80ADB7A4  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADB7A8  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADB7AC  38 A5 01 3E */	addi r5, r5, 0x13e
/* 80ADB7B0  38 C0 00 FF */	li r6, 0xff
/* 80ADB7B4  4B 56 BF A5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80ADB7B8  7C 7A 1B 78 */	mr r26, r3
/* 80ADB7BC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80ADB7C0  7F 64 DB 78 */	mr r4, r27
/* 80ADB7C4  4B 56 6D 55 */	bl reset__14dEvt_control_cFPv
/* 80ADB7C8  7F 63 DB 78 */	mr r3, r27
/* 80ADB7CC  7F 44 D3 78 */	mr r4, r26
/* 80ADB7D0  38 A0 00 01 */	li r5, 1
/* 80ADB7D4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ADB7D8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ADB7DC  4B 53 FE 09 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80ADB7E0  38 00 00 01 */	li r0, 1
/* 80ADB7E4  98 1B 09 EC */	stb r0, 0x9ec(r27)
/* 80ADB7E8  88 1B 0E 20 */	lbz r0, 0xe20(r27)
/* 80ADB7EC  2C 00 00 01 */	cmpwi r0, 1
/* 80ADB7F0  41 82 00 AC */	beq lbl_80ADB89C
/* 80ADB7F4  40 80 00 10 */	bge lbl_80ADB804
/* 80ADB7F8  2C 00 00 00 */	cmpwi r0, 0
/* 80ADB7FC  40 80 00 14 */	bge lbl_80ADB810
/* 80ADB800  48 00 03 7C */	b lbl_80ADBB7C
lbl_80ADB804:
/* 80ADB804  2C 00 00 03 */	cmpwi r0, 3
/* 80ADB808  40 80 03 74 */	bge lbl_80ADBB7C
/* 80ADB80C  48 00 01 1C */	b lbl_80ADB928
lbl_80ADB810:
/* 80ADB810  80 7D 04 BC */	lwz r3, 0x4bc(r29)
/* 80ADB814  80 1D 04 C0 */	lwz r0, 0x4c0(r29)
/* 80ADB818  90 61 00 38 */	stw r3, 0x38(r1)
/* 80ADB81C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ADB820  80 1D 04 C4 */	lwz r0, 0x4c4(r29)
/* 80ADB824  90 01 00 40 */	stw r0, 0x40(r1)
/* 80ADB828  38 00 00 03 */	li r0, 3
/* 80ADB82C  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB830  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADB834  4B 88 67 E5 */	bl __ptmf_test
/* 80ADB838  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB83C  41 82 00 18 */	beq lbl_80ADB854
/* 80ADB840  7F 63 DB 78 */	mr r3, r27
/* 80ADB844  38 80 00 00 */	li r4, 0
/* 80ADB848  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADB84C  4B 88 68 39 */	bl __ptmf_scall
/* 80ADB850  60 00 00 00 */	nop 
lbl_80ADB854:
/* 80ADB854  38 00 00 00 */	li r0, 0
/* 80ADB858  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB85C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80ADB860  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80ADB864  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADB868  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADB86C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80ADB870  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADB874  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADB878  4B 88 67 A1 */	bl __ptmf_test
/* 80ADB87C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB880  41 82 02 FC */	beq lbl_80ADBB7C
/* 80ADB884  7F 63 DB 78 */	mr r3, r27
/* 80ADB888  38 80 00 00 */	li r4, 0
/* 80ADB88C  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADB890  4B 88 67 F5 */	bl __ptmf_scall
/* 80ADB894  60 00 00 00 */	nop 
/* 80ADB898  48 00 02 E4 */	b lbl_80ADBB7C
lbl_80ADB89C:
/* 80ADB89C  80 7D 04 C8 */	lwz r3, 0x4c8(r29)
/* 80ADB8A0  80 1D 04 CC */	lwz r0, 0x4cc(r29)
/* 80ADB8A4  90 61 00 44 */	stw r3, 0x44(r1)
/* 80ADB8A8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80ADB8AC  80 1D 04 D0 */	lwz r0, 0x4d0(r29)
/* 80ADB8B0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80ADB8B4  38 00 00 03 */	li r0, 3
/* 80ADB8B8  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB8BC  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADB8C0  4B 88 67 59 */	bl __ptmf_test
/* 80ADB8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB8C8  41 82 00 18 */	beq lbl_80ADB8E0
/* 80ADB8CC  7F 63 DB 78 */	mr r3, r27
/* 80ADB8D0  38 80 00 00 */	li r4, 0
/* 80ADB8D4  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADB8D8  4B 88 67 AD */	bl __ptmf_scall
/* 80ADB8DC  60 00 00 00 */	nop 
lbl_80ADB8E0:
/* 80ADB8E0  38 00 00 00 */	li r0, 0
/* 80ADB8E4  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB8E8  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80ADB8EC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80ADB8F0  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADB8F4  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADB8F8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80ADB8FC  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADB900  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADB904  4B 88 67 15 */	bl __ptmf_test
/* 80ADB908  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB90C  41 82 02 70 */	beq lbl_80ADBB7C
/* 80ADB910  7F 63 DB 78 */	mr r3, r27
/* 80ADB914  38 80 00 00 */	li r4, 0
/* 80ADB918  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADB91C  4B 88 67 69 */	bl __ptmf_scall
/* 80ADB920  60 00 00 00 */	nop 
/* 80ADB924  48 00 02 58 */	b lbl_80ADBB7C
lbl_80ADB928:
/* 80ADB928  80 7D 04 D4 */	lwz r3, 0x4d4(r29)
/* 80ADB92C  80 1D 04 D8 */	lwz r0, 0x4d8(r29)
/* 80ADB930  90 61 00 50 */	stw r3, 0x50(r1)
/* 80ADB934  90 01 00 54 */	stw r0, 0x54(r1)
/* 80ADB938  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80ADB93C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80ADB940  38 00 00 03 */	li r0, 3
/* 80ADB944  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB948  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADB94C  4B 88 66 CD */	bl __ptmf_test
/* 80ADB950  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB954  41 82 00 18 */	beq lbl_80ADB96C
/* 80ADB958  7F 63 DB 78 */	mr r3, r27
/* 80ADB95C  38 80 00 00 */	li r4, 0
/* 80ADB960  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADB964  4B 88 67 21 */	bl __ptmf_scall
/* 80ADB968  60 00 00 00 */	nop 
lbl_80ADB96C:
/* 80ADB96C  38 00 00 00 */	li r0, 0
/* 80ADB970  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB974  80 61 00 50 */	lwz r3, 0x50(r1)
/* 80ADB978  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80ADB97C  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADB980  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADB984  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80ADB988  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADB98C  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADB990  4B 88 66 89 */	bl __ptmf_test
/* 80ADB994  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB998  41 82 01 E4 */	beq lbl_80ADBB7C
/* 80ADB99C  7F 63 DB 78 */	mr r3, r27
/* 80ADB9A0  38 80 00 00 */	li r4, 0
/* 80ADB9A4  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADB9A8  4B 88 66 DD */	bl __ptmf_scall
/* 80ADB9AC  60 00 00 00 */	nop 
/* 80ADB9B0  48 00 01 CC */	b lbl_80ADBB7C
lbl_80ADB9B4:
/* 80ADB9B4  88 1B 0E 20 */	lbz r0, 0xe20(r27)
/* 80ADB9B8  2C 00 00 01 */	cmpwi r0, 1
/* 80ADB9BC  41 82 00 AC */	beq lbl_80ADBA68
/* 80ADB9C0  40 80 00 10 */	bge lbl_80ADB9D0
/* 80ADB9C4  2C 00 00 00 */	cmpwi r0, 0
/* 80ADB9C8  40 80 00 14 */	bge lbl_80ADB9DC
/* 80ADB9CC  48 00 01 B0 */	b lbl_80ADBB7C
lbl_80ADB9D0:
/* 80ADB9D0  2C 00 00 03 */	cmpwi r0, 3
/* 80ADB9D4  40 80 01 A8 */	bge lbl_80ADBB7C
/* 80ADB9D8  48 00 01 1C */	b lbl_80ADBAF4
lbl_80ADB9DC:
/* 80ADB9DC  80 7D 04 BC */	lwz r3, 0x4bc(r29)
/* 80ADB9E0  80 1D 04 C0 */	lwz r0, 0x4c0(r29)
/* 80ADB9E4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ADB9E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADB9EC  80 1D 04 C4 */	lwz r0, 0x4c4(r29)
/* 80ADB9F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADB9F4  38 00 00 03 */	li r0, 3
/* 80ADB9F8  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADB9FC  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADBA00  4B 88 66 19 */	bl __ptmf_test
/* 80ADBA04  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBA08  41 82 00 18 */	beq lbl_80ADBA20
/* 80ADBA0C  7F 63 DB 78 */	mr r3, r27
/* 80ADBA10  38 80 00 00 */	li r4, 0
/* 80ADBA14  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADBA18  4B 88 66 6D */	bl __ptmf_scall
/* 80ADBA1C  60 00 00 00 */	nop 
lbl_80ADBA20:
/* 80ADBA20  38 00 00 00 */	li r0, 0
/* 80ADBA24  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADBA28  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ADBA2C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ADBA30  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADBA34  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADBA38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ADBA3C  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADBA40  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADBA44  4B 88 65 D5 */	bl __ptmf_test
/* 80ADBA48  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBA4C  41 82 01 30 */	beq lbl_80ADBB7C
/* 80ADBA50  7F 63 DB 78 */	mr r3, r27
/* 80ADBA54  38 80 00 00 */	li r4, 0
/* 80ADBA58  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADBA5C  4B 88 66 29 */	bl __ptmf_scall
/* 80ADBA60  60 00 00 00 */	nop 
/* 80ADBA64  48 00 01 18 */	b lbl_80ADBB7C
lbl_80ADBA68:
/* 80ADBA68  80 7D 04 C8 */	lwz r3, 0x4c8(r29)
/* 80ADBA6C  80 1D 04 CC */	lwz r0, 0x4cc(r29)
/* 80ADBA70  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ADBA74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADBA78  80 1D 04 D0 */	lwz r0, 0x4d0(r29)
/* 80ADBA7C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ADBA80  38 00 00 03 */	li r0, 3
/* 80ADBA84  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADBA88  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADBA8C  4B 88 65 8D */	bl __ptmf_test
/* 80ADBA90  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBA94  41 82 00 18 */	beq lbl_80ADBAAC
/* 80ADBA98  7F 63 DB 78 */	mr r3, r27
/* 80ADBA9C  38 80 00 00 */	li r4, 0
/* 80ADBAA0  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADBAA4  4B 88 65 E1 */	bl __ptmf_scall
/* 80ADBAA8  60 00 00 00 */	nop 
lbl_80ADBAAC:
/* 80ADBAAC  38 00 00 00 */	li r0, 0
/* 80ADBAB0  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADBAB4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80ADBAB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADBABC  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADBAC0  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADBAC4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ADBAC8  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADBACC  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADBAD0  4B 88 65 49 */	bl __ptmf_test
/* 80ADBAD4  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBAD8  41 82 00 A4 */	beq lbl_80ADBB7C
/* 80ADBADC  7F 63 DB 78 */	mr r3, r27
/* 80ADBAE0  38 80 00 00 */	li r4, 0
/* 80ADBAE4  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADBAE8  4B 88 65 9D */	bl __ptmf_scall
/* 80ADBAEC  60 00 00 00 */	nop 
/* 80ADBAF0  48 00 00 8C */	b lbl_80ADBB7C
lbl_80ADBAF4:
/* 80ADBAF4  80 7D 04 D4 */	lwz r3, 0x4d4(r29)
/* 80ADBAF8  80 1D 04 D8 */	lwz r0, 0x4d8(r29)
/* 80ADBAFC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80ADBB00  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADBB04  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80ADBB08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADBB0C  38 00 00 03 */	li r0, 3
/* 80ADBB10  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADBB14  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADBB18  4B 88 65 01 */	bl __ptmf_test
/* 80ADBB1C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBB20  41 82 00 18 */	beq lbl_80ADBB38
/* 80ADBB24  7F 63 DB 78 */	mr r3, r27
/* 80ADBB28  38 80 00 00 */	li r4, 0
/* 80ADBB2C  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADBB30  4B 88 65 55 */	bl __ptmf_scall
/* 80ADBB34  60 00 00 00 */	nop 
lbl_80ADBB38:
/* 80ADBB38  38 00 00 00 */	li r0, 0
/* 80ADBB3C  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADBB40  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80ADBB44  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80ADBB48  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADBB4C  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADBB50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADBB54  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADBB58  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADBB5C  4B 88 64 BD */	bl __ptmf_test
/* 80ADBB60  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBB64  41 82 00 18 */	beq lbl_80ADBB7C
/* 80ADBB68  7F 63 DB 78 */	mr r3, r27
/* 80ADBB6C  38 80 00 00 */	li r4, 0
/* 80ADBB70  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADBB74  4B 88 65 11 */	bl __ptmf_scall
/* 80ADBB78  60 00 00 00 */	nop 
lbl_80ADBB7C:
/* 80ADBB7C  3B 80 00 01 */	li r28, 1
/* 80ADBB80  48 00 03 0C */	b lbl_80ADBE8C
lbl_80ADBB84:
/* 80ADBB84  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80ADBB88  7F 63 DB 78 */	mr r3, r27
/* 80ADBB8C  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADBB90  38 A1 00 08 */	addi r5, r1, 8
/* 80ADBB94  7F 66 DB 78 */	mr r6, r27
/* 80ADBB98  38 E0 00 00 */	li r7, 0
/* 80ADBB9C  4B 67 7B 7D */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADBBA0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBBA4  41 82 00 44 */	beq lbl_80ADBBE8
/* 80ADBBA8  7F 63 DB 78 */	mr r3, r27
/* 80ADBBAC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADBBB0  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBBB4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBBB8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBBBC  7D 89 03 A6 */	mtctr r12
/* 80ADBBC0  4E 80 04 21 */	bctrl 
/* 80ADBBC4  7F 63 DB 78 */	mr r3, r27
/* 80ADBBC8  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADBBCC  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBBD0  38 A0 00 00 */	li r5, 0
/* 80ADBBD4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBBD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADBBDC  7D 89 03 A6 */	mtctr r12
/* 80ADBBE0  4E 80 04 21 */	bctrl 
/* 80ADBBE4  48 00 02 A8 */	b lbl_80ADBE8C
lbl_80ADBBE8:
/* 80ADBBE8  2C 1A 00 00 */	cmpwi r26, 0
/* 80ADBBEC  41 82 02 A0 */	beq lbl_80ADBE8C
/* 80ADBBF0  80 1B 09 50 */	lwz r0, 0x950(r27)
/* 80ADBBF4  2C 00 00 00 */	cmpwi r0, 0
/* 80ADBBF8  40 82 02 94 */	bne lbl_80ADBE8C
/* 80ADBBFC  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80ADBC00  2C 00 00 03 */	cmpwi r0, 3
/* 80ADBC04  41 82 00 64 */	beq lbl_80ADBC68
/* 80ADBC08  40 80 00 14 */	bge lbl_80ADBC1C
/* 80ADBC0C  2C 00 00 01 */	cmpwi r0, 1
/* 80ADBC10  41 82 00 18 */	beq lbl_80ADBC28
/* 80ADBC14  40 80 00 34 */	bge lbl_80ADBC48
/* 80ADBC18  48 00 00 90 */	b lbl_80ADBCA8
lbl_80ADBC1C:
/* 80ADBC1C  2C 00 00 05 */	cmpwi r0, 5
/* 80ADBC20  40 80 00 88 */	bge lbl_80ADBCA8
/* 80ADBC24  48 00 00 64 */	b lbl_80ADBC88
lbl_80ADBC28:
/* 80ADBC28  7F 63 DB 78 */	mr r3, r27
/* 80ADBC2C  38 80 00 08 */	li r4, 8
/* 80ADBC30  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBC34  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBC38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBC3C  7D 89 03 A6 */	mtctr r12
/* 80ADBC40  4E 80 04 21 */	bctrl 
/* 80ADBC44  48 00 02 48 */	b lbl_80ADBE8C
lbl_80ADBC48:
/* 80ADBC48  7F 63 DB 78 */	mr r3, r27
/* 80ADBC4C  38 80 00 09 */	li r4, 9
/* 80ADBC50  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBC54  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBC58  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBC5C  7D 89 03 A6 */	mtctr r12
/* 80ADBC60  4E 80 04 21 */	bctrl 
/* 80ADBC64  48 00 02 28 */	b lbl_80ADBE8C
lbl_80ADBC68:
/* 80ADBC68  7F 63 DB 78 */	mr r3, r27
/* 80ADBC6C  38 80 00 0A */	li r4, 0xa
/* 80ADBC70  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBC74  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBC78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBC7C  7D 89 03 A6 */	mtctr r12
/* 80ADBC80  4E 80 04 21 */	bctrl 
/* 80ADBC84  48 00 02 08 */	b lbl_80ADBE8C
lbl_80ADBC88:
/* 80ADBC88  7F 63 DB 78 */	mr r3, r27
/* 80ADBC8C  38 80 00 07 */	li r4, 7
/* 80ADBC90  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBC94  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBC98  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBC9C  7D 89 03 A6 */	mtctr r12
/* 80ADBCA0  4E 80 04 21 */	bctrl 
/* 80ADBCA4  48 00 01 E8 */	b lbl_80ADBE8C
lbl_80ADBCA8:
/* 80ADBCA8  7F 63 DB 78 */	mr r3, r27
/* 80ADBCAC  38 80 00 0C */	li r4, 0xc
/* 80ADBCB0  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBCB4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBCB8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBCBC  7D 89 03 A6 */	mtctr r12
/* 80ADBCC0  4E 80 04 21 */	bctrl 
/* 80ADBCC4  48 00 01 C8 */	b lbl_80ADBE8C
lbl_80ADBCC8:
/* 80ADBCC8  7F 63 DB 78 */	mr r3, r27
/* 80ADBCCC  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADBCD0  4B 53 EA 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADBCD4  7C 7D 1B 78 */	mr r29, r3
/* 80ADBCD8  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 80ADBCDC  2C 00 00 00 */	cmpwi r0, 0
/* 80ADBCE0  40 82 00 D4 */	bne lbl_80ADBDB4
/* 80ADBCE4  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 80ADBCE8  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80ADBCEC  7C 00 E8 50 */	subf r0, r0, r29
/* 80ADBCF0  7C 00 07 34 */	extsh r0, r0
/* 80ADBCF4  C8 3E 04 50 */	lfd f1, 0x450(r30)
/* 80ADBCF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADBCFC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ADBD00  3C 00 43 30 */	lis r0, 0x4330
/* 80ADBD04  90 01 00 60 */	stw r0, 0x60(r1)
/* 80ADBD08  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80ADBD0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADBD10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADBD14  FC 00 02 10 */	fabs f0, f0
/* 80ADBD18  FC 00 00 18 */	frsp f0, f0
/* 80ADBD1C  FC 00 00 1E */	fctiwz f0, f0
/* 80ADBD20  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80ADBD24  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80ADBD28  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADBD2C  40 81 00 40 */	ble lbl_80ADBD6C
/* 80ADBD30  7F 63 DB 78 */	mr r3, r27
/* 80ADBD34  38 80 00 0C */	li r4, 0xc
/* 80ADBD38  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBD3C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBD40  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBD44  7D 89 03 A6 */	mtctr r12
/* 80ADBD48  4E 80 04 21 */	bctrl 
/* 80ADBD4C  7F 63 DB 78 */	mr r3, r27
/* 80ADBD50  38 80 00 15 */	li r4, 0x15
/* 80ADBD54  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBD58  38 A0 00 00 */	li r5, 0
/* 80ADBD5C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBD60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADBD64  7D 89 03 A6 */	mtctr r12
/* 80ADBD68  4E 80 04 21 */	bctrl 
lbl_80ADBD6C:
/* 80ADBD6C  B3 BB 09 96 */	sth r29, 0x996(r27)
/* 80ADBD70  38 00 00 00 */	li r0, 0
/* 80ADBD74  90 1B 09 68 */	stw r0, 0x968(r27)
/* 80ADBD78  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 80ADBD7C  A8 1B 09 96 */	lha r0, 0x996(r27)
/* 80ADBD80  7C 03 00 00 */	cmpw r3, r0
/* 80ADBD84  40 82 00 10 */	bne lbl_80ADBD94
/* 80ADBD88  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADBD8C  38 03 00 01 */	addi r0, r3, 1
/* 80ADBD90  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80ADBD94:
/* 80ADBD94  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80ADBD98  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80ADBD9C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADBDA0  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80ADBDA4  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADBDA8  38 03 00 01 */	addi r0, r3, 1
/* 80ADBDAC  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADBDB0  48 00 00 60 */	b lbl_80ADBE10
lbl_80ADBDB4:
/* 80ADBDB4  2C 00 00 01 */	cmpwi r0, 1
/* 80ADBDB8  40 82 00 58 */	bne lbl_80ADBE10
/* 80ADBDBC  7F 63 DB 78 */	mr r3, r27
/* 80ADBDC0  A8 9B 09 96 */	lha r4, 0x996(r27)
/* 80ADBDC4  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80ADBDC8  38 A0 00 00 */	li r5, 0
/* 80ADBDCC  4B 67 81 29 */	bl turn__8daNpcF_cFsfi
/* 80ADBDD0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBDD4  41 82 00 2C */	beq lbl_80ADBE00
/* 80ADBDD8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADBDDC  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80ADBDE0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADBDE4  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80ADBDE8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADBDEC  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 80ADBDF0  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADBDF4  38 03 00 01 */	addi r0, r3, 1
/* 80ADBDF8  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADBDFC  48 00 00 14 */	b lbl_80ADBE10
lbl_80ADBE00:
/* 80ADBE00  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADBE04  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80ADBE08  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADBE0C  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
lbl_80ADBE10:
/* 80ADBE10  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 80ADBE14  2C 00 00 01 */	cmpwi r0, 1
/* 80ADBE18  40 81 00 74 */	ble lbl_80ADBE8C
/* 80ADBE1C  7F 63 DB 78 */	mr r3, r27
/* 80ADBE20  38 80 00 00 */	li r4, 0
/* 80ADBE24  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBE28  38 A0 00 00 */	li r5, 0
/* 80ADBE2C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADBE30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADBE34  7D 89 03 A6 */	mtctr r12
/* 80ADBE38  4E 80 04 21 */	bctrl 
/* 80ADBE3C  38 00 00 00 */	li r0, 0
/* 80ADBE40  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADBE44  48 00 00 48 */	b lbl_80ADBE8C
lbl_80ADBE48:
/* 80ADBE48  38 00 00 01 */	li r0, 1
/* 80ADBE4C  98 1B 0E 1F */	stb r0, 0xe1f(r27)
/* 80ADBE50  A8 1B 0E 16 */	lha r0, 0xe16(r27)
/* 80ADBE54  B0 1B 0E 14 */	sth r0, 0xe14(r27)
/* 80ADBE58  38 80 00 0C */	li r4, 0xc
/* 80ADBE5C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADBE60  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ADBE64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBE68  7D 89 03 A6 */	mtctr r12
/* 80ADBE6C  4E 80 04 21 */	bctrl 
/* 80ADBE70  88 1B 09 EC */	lbz r0, 0x9ec(r27)
/* 80ADBE74  28 00 00 00 */	cmplwi r0, 0
/* 80ADBE78  40 82 00 14 */	bne lbl_80ADBE8C
/* 80ADBE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADBE80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADBE84  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80ADBE88  4B 56 65 E1 */	bl reset__14dEvt_control_cFv
lbl_80ADBE8C:
/* 80ADBE8C  7F 83 E3 78 */	mr r3, r28
/* 80ADBE90  39 61 00 90 */	addi r11, r1, 0x90
/* 80ADBE94  4B 88 63 89 */	bl _restgpr_26
/* 80ADBE98  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80ADBE9C  7C 08 03 A6 */	mtlr r0
/* 80ADBEA0  38 21 00 90 */	addi r1, r1, 0x90
/* 80ADBEA4  4E 80 00 20 */	blr 
