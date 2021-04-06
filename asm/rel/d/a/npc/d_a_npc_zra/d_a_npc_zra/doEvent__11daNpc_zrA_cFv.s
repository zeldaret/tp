lbl_80B7DF40:
/* 80B7DF40  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B7DF44  7C 08 02 A6 */	mflr r0
/* 80B7DF48  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B7DF4C  39 61 00 90 */	addi r11, r1, 0x90
/* 80B7DF50  4B 7E 42 81 */	bl _savegpr_26
/* 80B7DF54  7C 7B 1B 78 */	mr r27, r3
/* 80B7DF58  3C 60 80 B9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B8CE90@ha */
/* 80B7DF5C  3B C3 CE 90 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80B8CE90@l */
/* 80B7DF60  3B 80 00 00 */	li r28, 0
/* 80B7DF64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7DF68  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7DF6C  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80B7DF70  28 00 00 00 */	cmplwi r0, 0
/* 80B7DF74  41 82 06 94 */	beq lbl_80B7E608
/* 80B7DF78  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80B7DF7C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B7DF80  28 00 00 01 */	cmplwi r0, 1
/* 80B7DF84  41 82 00 0C */	beq lbl_80B7DF90
/* 80B7DF88  28 00 00 02 */	cmplwi r0, 2
/* 80B7DF8C  40 82 00 0C */	bne lbl_80B7DF98
lbl_80B7DF90:
/* 80B7DF90  38 00 00 00 */	li r0, 0
/* 80B7DF94  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_80B7DF98:
/* 80B7DF98  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B7DF9C  28 00 00 01 */	cmplwi r0, 1
/* 80B7DFA0  40 82 03 78 */	bne lbl_80B7E318
/* 80B7DFA4  88 1B 15 21 */	lbz r0, 0x1521(r27)
/* 80B7DFA8  28 00 00 01 */	cmplwi r0, 1
/* 80B7DFAC  40 82 00 6C */	bne lbl_80B7E018
/* 80B7DFB0  88 1B 14 E8 */	lbz r0, 0x14e8(r27)
/* 80B7DFB4  28 00 00 01 */	cmplwi r0, 1
/* 80B7DFB8  40 82 00 60 */	bne lbl_80B7E018
/* 80B7DFBC  38 00 00 01 */	li r0, 1
/* 80B7DFC0  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7DFC4  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B7DFC8  54 06 18 38 */	slwi r6, r0, 3
/* 80B7DFCC  7F 63 DB 78 */	mr r3, r27
/* 80B7DFD0  38 BE 02 CC */	addi r5, r30, 0x2cc
/* 80B7DFD4  7C 85 32 14 */	add r4, r5, r6
/* 80B7DFD8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7DFDC  54 00 10 3A */	slwi r0, r0, 2
/* 80B7DFE0  38 9E 04 70 */	addi r4, r30, 0x470
/* 80B7DFE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7DFE8  7C 05 30 2E */	lwzx r0, r5, r6
/* 80B7DFEC  54 00 10 3A */	slwi r0, r0, 2
/* 80B7DFF0  38 BE 03 34 */	addi r5, r30, 0x334
/* 80B7DFF4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B7DFF8  38 C0 00 01 */	li r6, 1
/* 80B7DFFC  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B7E000  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B7E004  4B 5D 59 51 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80B7E008  38 7E 04 9C */	addi r3, r30, 0x49c
/* 80B7E00C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B7E010  90 1B 14 FC */	stw r0, 0x14fc(r27)
/* 80B7E014  48 00 02 FC */	b lbl_80B7E310
lbl_80B7E018:
/* 80B7E018  88 1B 14 E8 */	lbz r0, 0x14e8(r27)
/* 80B7E01C  28 00 00 02 */	cmplwi r0, 2
/* 80B7E020  40 82 00 AC */	bne lbl_80B7E0CC
/* 80B7E024  80 7E 08 54 */	lwz r3, 0x854(r30)
/* 80B7E028  80 1E 08 58 */	lwz r0, 0x858(r30)
/* 80B7E02C  90 61 00 64 */	stw r3, 0x64(r1)
/* 80B7E030  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B7E034  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 80B7E038  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B7E03C  7F 63 DB 78 */	mr r3, r27
/* 80B7E040  38 81 00 64 */	addi r4, r1, 0x64
/* 80B7E044  4B FF FA B1 */	bl chkAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E048  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E04C  41 82 00 1C */	beq lbl_80B7E068
/* 80B7E050  7F 63 DB 78 */	mr r3, r27
/* 80B7E054  38 80 00 00 */	li r4, 0
/* 80B7E058  39 9B 14 80 */	addi r12, r27, 0x1480
/* 80B7E05C  4B 7E 40 29 */	bl __ptmf_scall
/* 80B7E060  60 00 00 00 */	nop 
/* 80B7E064  48 00 02 AC */	b lbl_80B7E310
lbl_80B7E068:
/* 80B7E068  38 00 00 00 */	li r0, 0
/* 80B7E06C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7E070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7E074  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B7E078  28 03 00 01 */	cmplwi r3, 1
/* 80B7E07C  41 82 00 0C */	beq lbl_80B7E088
/* 80B7E080  28 03 00 02 */	cmplwi r3, 2
/* 80B7E084  40 82 00 08 */	bne lbl_80B7E08C
lbl_80B7E088:
/* 80B7E088  38 00 00 01 */	li r0, 1
lbl_80B7E08C:
/* 80B7E08C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B7E090  41 82 00 14 */	beq lbl_80B7E0A4
/* 80B7E094  7F A3 EB 78 */	mr r3, r29
/* 80B7E098  4B 4C A7 59 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B7E09C  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E0A0  41 82 02 70 */	beq lbl_80B7E310
lbl_80B7E0A4:
/* 80B7E0A4  80 7E 08 60 */	lwz r3, 0x860(r30)
/* 80B7E0A8  80 1E 08 64 */	lwz r0, 0x864(r30)
/* 80B7E0AC  90 61 00 58 */	stw r3, 0x58(r1)
/* 80B7E0B0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B7E0B4  80 1E 08 68 */	lwz r0, 0x868(r30)
/* 80B7E0B8  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B7E0BC  7F 63 DB 78 */	mr r3, r27
/* 80B7E0C0  38 81 00 58 */	addi r4, r1, 0x58
/* 80B7E0C4  4B FF FA 5D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E0C8  48 00 02 48 */	b lbl_80B7E310
lbl_80B7E0CC:
/* 80B7E0CC  28 00 00 05 */	cmplwi r0, 5
/* 80B7E0D0  40 82 00 54 */	bne lbl_80B7E124
/* 80B7E0D4  38 00 00 0A */	li r0, 0xa
/* 80B7E0D8  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7E0DC  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B7E0E0  54 06 18 38 */	slwi r6, r0, 3
/* 80B7E0E4  7F 63 DB 78 */	mr r3, r27
/* 80B7E0E8  38 BE 02 CC */	addi r5, r30, 0x2cc
/* 80B7E0EC  7C 85 32 14 */	add r4, r5, r6
/* 80B7E0F0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7E0F4  54 00 10 3A */	slwi r0, r0, 2
/* 80B7E0F8  38 9E 04 70 */	addi r4, r30, 0x470
/* 80B7E0FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7E100  7C 05 30 2E */	lwzx r0, r5, r6
/* 80B7E104  54 00 10 3A */	slwi r0, r0, 2
/* 80B7E108  38 BE 03 34 */	addi r5, r30, 0x334
/* 80B7E10C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B7E110  38 C0 00 01 */	li r6, 1
/* 80B7E114  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B7E118  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B7E11C  4B 5D 58 39 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80B7E120  48 00 01 F0 */	b lbl_80B7E310
lbl_80B7E124:
/* 80B7E124  28 00 00 00 */	cmplwi r0, 0
/* 80B7E128  40 82 00 84 */	bne lbl_80B7E1AC
/* 80B7E12C  7F 63 DB 78 */	mr r3, r27
/* 80B7E130  4B FF E4 B5 */	bl getMultiModeFromParam__11daNpc_zrA_cFv
/* 80B7E134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B7E138  41 82 00 74 */	beq lbl_80B7E1AC
/* 80B7E13C  7F 63 DB 78 */	mr r3, r27
/* 80B7E140  4B FF E4 A5 */	bl getMultiModeFromParam__11daNpc_zrA_cFv
/* 80B7E144  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B7E148  28 00 00 01 */	cmplwi r0, 1
/* 80B7E14C  40 82 00 10 */	bne lbl_80B7E15C
/* 80B7E150  38 00 00 0B */	li r0, 0xb
/* 80B7E154  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7E158  48 00 00 0C */	b lbl_80B7E164
lbl_80B7E15C:
/* 80B7E15C  38 00 00 0C */	li r0, 0xc
/* 80B7E160  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
lbl_80B7E164:
/* 80B7E164  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B7E168  54 06 18 38 */	slwi r6, r0, 3
/* 80B7E16C  7F 63 DB 78 */	mr r3, r27
/* 80B7E170  38 BE 02 CC */	addi r5, r30, 0x2cc
/* 80B7E174  7C 85 32 14 */	add r4, r5, r6
/* 80B7E178  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7E17C  54 00 10 3A */	slwi r0, r0, 2
/* 80B7E180  38 9E 04 70 */	addi r4, r30, 0x470
/* 80B7E184  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7E188  7C 05 30 2E */	lwzx r0, r5, r6
/* 80B7E18C  54 00 10 3A */	slwi r0, r0, 2
/* 80B7E190  38 BE 03 34 */	addi r5, r30, 0x334
/* 80B7E194  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B7E198  38 C0 00 01 */	li r6, 1
/* 80B7E19C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B7E1A0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B7E1A4  4B 5D 57 B1 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80B7E1A8  48 00 01 68 */	b lbl_80B7E310
lbl_80B7E1AC:
/* 80B7E1AC  80 7E 08 6C */	lwz r3, 0x86c(r30)
/* 80B7E1B0  80 1E 08 70 */	lwz r0, 0x870(r30)
/* 80B7E1B4  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B7E1B8  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B7E1BC  80 1E 08 74 */	lwz r0, 0x874(r30)
/* 80B7E1C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B7E1C4  7F 63 DB 78 */	mr r3, r27
/* 80B7E1C8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B7E1CC  4B FF F9 29 */	bl chkAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E1D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E1D4  41 82 00 1C */	beq lbl_80B7E1F0
/* 80B7E1D8  7F 63 DB 78 */	mr r3, r27
/* 80B7E1DC  38 80 00 00 */	li r4, 0
/* 80B7E1E0  39 9B 14 80 */	addi r12, r27, 0x1480
/* 80B7E1E4  4B 7E 3E A1 */	bl __ptmf_scall
/* 80B7E1E8  60 00 00 00 */	nop 
/* 80B7E1EC  48 00 01 24 */	b lbl_80B7E310
lbl_80B7E1F0:
/* 80B7E1F0  3B 9F 4E C8 */	addi r28, r31, 0x4ec8
/* 80B7E1F4  38 00 00 00 */	li r0, 0
/* 80B7E1F8  88 7F 4F B5 */	lbz r3, 0x4fb5(r31)
/* 80B7E1FC  28 03 00 01 */	cmplwi r3, 1
/* 80B7E200  41 82 00 0C */	beq lbl_80B7E20C
/* 80B7E204  28 03 00 02 */	cmplwi r3, 2
/* 80B7E208  40 82 00 08 */	bne lbl_80B7E210
lbl_80B7E20C:
/* 80B7E20C  38 00 00 01 */	li r0, 1
lbl_80B7E210:
/* 80B7E210  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B7E214  41 82 00 D8 */	beq lbl_80B7E2EC
/* 80B7E218  7F A3 EB 78 */	mr r3, r29
/* 80B7E21C  4B 4C A5 D5 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B7E220  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E224  41 82 00 EC */	beq lbl_80B7E310
/* 80B7E228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7E22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7E230  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80B7E234  28 00 00 91 */	cmplwi r0, 0x91
/* 80B7E238  40 82 00 64 */	bne lbl_80B7E29C
/* 80B7E23C  88 1B 14 E9 */	lbz r0, 0x14e9(r27)
/* 80B7E240  28 00 00 02 */	cmplwi r0, 2
/* 80B7E244  41 82 00 28 */	beq lbl_80B7E26C
/* 80B7E248  A8 1B 04 B4 */	lha r0, 0x4b4(r27)
/* 80B7E24C  2C 00 00 6D */	cmpwi r0, 0x6d
/* 80B7E250  40 82 00 10 */	bne lbl_80B7E260
/* 80B7E254  38 00 00 04 */	li r0, 4
/* 80B7E258  90 1B 14 E0 */	stw r0, 0x14e0(r27)
/* 80B7E25C  48 00 00 18 */	b lbl_80B7E274
lbl_80B7E260:
/* 80B7E260  38 00 00 05 */	li r0, 5
/* 80B7E264  90 1B 14 E0 */	stw r0, 0x14e0(r27)
/* 80B7E268  48 00 00 0C */	b lbl_80B7E274
lbl_80B7E26C:
/* 80B7E26C  38 00 00 06 */	li r0, 6
/* 80B7E270  90 1B 14 E0 */	stw r0, 0x14e0(r27)
lbl_80B7E274:
/* 80B7E274  80 7E 08 78 */	lwz r3, 0x878(r30)
/* 80B7E278  80 1E 08 7C */	lwz r0, 0x87c(r30)
/* 80B7E27C  90 61 00 40 */	stw r3, 0x40(r1)
/* 80B7E280  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B7E284  80 1E 08 80 */	lwz r0, 0x880(r30)
/* 80B7E288  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B7E28C  7F 63 DB 78 */	mr r3, r27
/* 80B7E290  38 81 00 40 */	addi r4, r1, 0x40
/* 80B7E294  4B FF F8 8D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E298  48 00 00 78 */	b lbl_80B7E310
lbl_80B7E29C:
/* 80B7E29C  7F A3 EB 78 */	mr r3, r29
/* 80B7E2A0  7F 64 DB 78 */	mr r4, r27
/* 80B7E2A4  3C A0 80 B9 */	lis r5, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B7E2A8  38 A5 CD 30 */	addi r5, r5, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B7E2AC  38 A5 01 4F */	addi r5, r5, 0x14f
/* 80B7E2B0  38 C0 00 FF */	li r6, 0xff
/* 80B7E2B4  4B 4C 94 A5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B7E2B8  7C 7A 1B 78 */	mr r26, r3
/* 80B7E2BC  7F 83 E3 78 */	mr r3, r28
/* 80B7E2C0  7F 64 DB 78 */	mr r4, r27
/* 80B7E2C4  4B 4C 42 55 */	bl reset__14dEvt_control_cFPv
/* 80B7E2C8  7F 63 DB 78 */	mr r3, r27
/* 80B7E2CC  7F 44 D3 78 */	mr r4, r26
/* 80B7E2D0  38 A0 00 01 */	li r5, 1
/* 80B7E2D4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B7E2D8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B7E2DC  4B 49 D3 09 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80B7E2E0  38 00 00 01 */	li r0, 1
/* 80B7E2E4  98 1B 09 EC */	stb r0, 0x9ec(r27)
/* 80B7E2E8  48 00 00 28 */	b lbl_80B7E310
lbl_80B7E2EC:
/* 80B7E2EC  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80B7E2F0  80 1E 08 88 */	lwz r0, 0x888(r30)
/* 80B7E2F4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80B7E2F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B7E2FC  80 1E 08 8C */	lwz r0, 0x88c(r30)
/* 80B7E300  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B7E304  7F 63 DB 78 */	mr r3, r27
/* 80B7E308  38 81 00 34 */	addi r4, r1, 0x34
/* 80B7E30C  4B FF F8 15 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B7E310:
/* 80B7E310  3B 80 00 01 */	li r28, 1
/* 80B7E314  48 00 02 54 */	b lbl_80B7E568
lbl_80B7E318:
/* 80B7E318  80 9B 14 CC */	lwz r4, 0x14cc(r27)
/* 80B7E31C  3C 04 00 01 */	addis r0, r4, 1
/* 80B7E320  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B7E324  41 82 00 14 */	beq lbl_80B7E338
/* 80B7E328  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B7E32C  4B 4C 53 C1 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80B7E330  38 00 FF FF */	li r0, -1
/* 80B7E334  90 1B 14 CC */	stw r0, 0x14cc(r27)
lbl_80B7E338:
/* 80B7E338  7F A3 EB 78 */	mr r3, r29
/* 80B7E33C  80 9B 14 FC */	lwz r4, 0x14fc(r27)
/* 80B7E340  7F 65 DB 78 */	mr r5, r27
/* 80B7E344  38 C0 00 00 */	li r6, 0
/* 80B7E348  4B 4C 97 D5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B7E34C  7C 7A 1B 78 */	mr r26, r3
/* 80B7E350  2C 1A FF FF */	cmpwi r26, -1
/* 80B7E354  41 82 00 5C */	beq lbl_80B7E3B0
/* 80B7E358  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 80B7E35C  7F A3 EB 78 */	mr r3, r29
/* 80B7E360  7F 44 D3 78 */	mr r4, r26
/* 80B7E364  38 BE 04 AC */	addi r5, r30, 0x4ac
/* 80B7E368  38 C0 00 0B */	li r6, 0xb
/* 80B7E36C  38 E0 00 00 */	li r7, 0
/* 80B7E370  39 00 00 00 */	li r8, 0
/* 80B7E374  4B 4C 9A 9D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B7E378  7C 60 1B 78 */	mr r0, r3
/* 80B7E37C  7F 63 DB 78 */	mr r3, r27
/* 80B7E380  7F 44 D3 78 */	mr r4, r26
/* 80B7E384  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B7E388  39 9E 05 50 */	addi r12, r30, 0x550
/* 80B7E38C  7D 8C 02 14 */	add r12, r12, r0
/* 80B7E390  4B 7E 3C F5 */	bl __ptmf_scall
/* 80B7E394  60 00 00 00 */	nop 
/* 80B7E398  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E39C  41 82 00 10 */	beq lbl_80B7E3AC
/* 80B7E3A0  7F A3 EB 78 */	mr r3, r29
/* 80B7E3A4  7F 44 D3 78 */	mr r4, r26
/* 80B7E3A8  4B 4C 9D D5 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B7E3AC:
/* 80B7E3AC  3B 80 00 01 */	li r28, 1
lbl_80B7E3B0:
/* 80B7E3B0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B7E3B4  28 00 00 02 */	cmplwi r0, 2
/* 80B7E3B8  40 82 01 B0 */	bne lbl_80B7E568
/* 80B7E3BC  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80B7E3C0  2C 04 FF FF */	cmpwi r4, -1
/* 80B7E3C4  41 82 01 64 */	beq lbl_80B7E528
/* 80B7E3C8  7F A3 EB 78 */	mr r3, r29
/* 80B7E3CC  4B 4C 96 AD */	bl endCheck__16dEvent_manager_cFs
/* 80B7E3D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E3D4  41 82 01 54 */	beq lbl_80B7E528
/* 80B7E3D8  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B7E3DC  2C 00 00 04 */	cmpwi r0, 4
/* 80B7E3E0  40 80 00 10 */	bge lbl_80B7E3F0
/* 80B7E3E4  2C 00 00 01 */	cmpwi r0, 1
/* 80B7E3E8  41 82 00 1C */	beq lbl_80B7E404
/* 80B7E3EC  48 00 01 20 */	b lbl_80B7E50C
lbl_80B7E3F0:
/* 80B7E3F0  2C 00 00 08 */	cmpwi r0, 8
/* 80B7E3F4  40 80 01 18 */	bge lbl_80B7E50C
/* 80B7E3F8  2C 00 00 06 */	cmpwi r0, 6
/* 80B7E3FC  40 80 00 C8 */	bge lbl_80B7E4C4
/* 80B7E400  48 00 00 4C */	b lbl_80B7E44C
lbl_80B7E404:
/* 80B7E404  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B7E408  4B 4C 40 61 */	bl reset__14dEvt_control_cFv
/* 80B7E40C  80 7E 08 90 */	lwz r3, 0x890(r30)
/* 80B7E410  80 1E 08 94 */	lwz r0, 0x894(r30)
/* 80B7E414  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B7E418  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B7E41C  80 1E 08 98 */	lwz r0, 0x898(r30)
/* 80B7E420  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B7E424  7F 63 DB 78 */	mr r3, r27
/* 80B7E428  38 81 00 28 */	addi r4, r1, 0x28
/* 80B7E42C  4B FF F6 F5 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E430  38 00 00 00 */	li r0, 0
/* 80B7E434  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7E438  38 00 FF FF */	li r0, -1
/* 80B7E43C  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B7E440  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B7E444  90 1B 14 FC */	stw r0, 0x14fc(r27)
/* 80B7E448  48 00 01 20 */	b lbl_80B7E568
lbl_80B7E44C:
/* 80B7E44C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B7E450  4B 4C 40 19 */	bl reset__14dEvt_control_cFv
/* 80B7E454  38 00 00 05 */	li r0, 5
/* 80B7E458  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B7E45C  80 7E 08 9C */	lwz r3, 0x89c(r30)
/* 80B7E460  80 1E 08 A0 */	lwz r0, 0x8a0(r30)
/* 80B7E464  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B7E468  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B7E46C  80 1E 08 A4 */	lwz r0, 0x8a4(r30)
/* 80B7E470  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7E474  7F 63 DB 78 */	mr r3, r27
/* 80B7E478  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B7E47C  4B FF F6 A5 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E480  38 00 00 00 */	li r0, 0
/* 80B7E484  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7E488  38 00 FF FF */	li r0, -1
/* 80B7E48C  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B7E490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7E494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7E498  88 9B 15 0E */	lbz r4, 0x150e(r27)
/* 80B7E49C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B7E4A0  7C 05 07 74 */	extsb r5, r0
/* 80B7E4A4  4B 4B 6E 0D */	bl offSwitch__10dSv_info_cFii
/* 80B7E4A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7E4AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7E4B0  88 9B 15 0F */	lbz r4, 0x150f(r27)
/* 80B7E4B4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B7E4B8  7C 05 07 74 */	extsb r5, r0
/* 80B7E4BC  4B 4B 6D F5 */	bl offSwitch__10dSv_info_cFii
/* 80B7E4C0  48 00 00 A8 */	b lbl_80B7E568
lbl_80B7E4C4:
/* 80B7E4C4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B7E4C8  4B 4C 3F A1 */	bl reset__14dEvt_control_cFv
/* 80B7E4CC  38 00 00 03 */	li r0, 3
/* 80B7E4D0  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B7E4D4  80 7E 08 A8 */	lwz r3, 0x8a8(r30)
/* 80B7E4D8  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 80B7E4DC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B7E4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7E4E4  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 80B7E4E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B7E4EC  7F 63 DB 78 */	mr r3, r27
/* 80B7E4F0  38 81 00 10 */	addi r4, r1, 0x10
/* 80B7E4F4  4B FF F6 2D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B7E4F8  38 00 00 00 */	li r0, 0
/* 80B7E4FC  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7E500  38 00 FF FF */	li r0, -1
/* 80B7E504  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B7E508  48 00 00 60 */	b lbl_80B7E568
lbl_80B7E50C:
/* 80B7E50C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B7E510  4B 4C 3F 59 */	bl reset__14dEvt_control_cFv
/* 80B7E514  38 00 00 00 */	li r0, 0
/* 80B7E518  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B7E51C  38 00 FF FF */	li r0, -1
/* 80B7E520  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B7E524  48 00 00 44 */	b lbl_80B7E568
lbl_80B7E528:
/* 80B7E528  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B7E52C  2C 00 00 07 */	cmpwi r0, 7
/* 80B7E530  41 82 00 28 */	beq lbl_80B7E558
/* 80B7E534  40 80 00 34 */	bge lbl_80B7E568
/* 80B7E538  2C 00 00 06 */	cmpwi r0, 6
/* 80B7E53C  40 80 00 08 */	bge lbl_80B7E544
/* 80B7E540  48 00 00 28 */	b lbl_80B7E568
lbl_80B7E544:
/* 80B7E544  7F 63 DB 78 */	mr r3, r27
/* 80B7E548  38 80 00 06 */	li r4, 6
/* 80B7E54C  38 A0 00 08 */	li r5, 8
/* 80B7E550  48 00 01 19 */	bl setSkipZev__11daNpc_zrA_cFii
/* 80B7E554  48 00 00 14 */	b lbl_80B7E568
lbl_80B7E558:
/* 80B7E558  7F 63 DB 78 */	mr r3, r27
/* 80B7E55C  38 80 00 07 */	li r4, 7
/* 80B7E560  38 A0 00 09 */	li r5, 9
/* 80B7E564  48 00 01 05 */	bl setSkipZev__11daNpc_zrA_cFii
lbl_80B7E568:
/* 80B7E568  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80B7E56C  7F 63 DB 78 */	mr r3, r27
/* 80B7E570  38 81 00 0C */	addi r4, r1, 0xc
/* 80B7E574  38 A1 00 08 */	addi r5, r1, 8
/* 80B7E578  7F 66 DB 78 */	mr r6, r27
/* 80B7E57C  38 E0 00 00 */	li r7, 0
/* 80B7E580  4B 5D 51 99 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B7E584  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E588  41 82 00 58 */	beq lbl_80B7E5E0
/* 80B7E58C  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80B7E590  28 00 00 00 */	cmplwi r0, 0
/* 80B7E594  40 82 00 74 */	bne lbl_80B7E608
/* 80B7E598  7F 63 DB 78 */	mr r3, r27
/* 80B7E59C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B7E5A0  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7E5A4  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7E5A8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B7E5AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7E5B0  7D 89 03 A6 */	mtctr r12
/* 80B7E5B4  4E 80 04 21 */	bctrl 
/* 80B7E5B8  7F 63 DB 78 */	mr r3, r27
/* 80B7E5BC  80 81 00 08 */	lwz r4, 8(r1)
/* 80B7E5C0  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7E5C4  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7E5C8  38 A0 00 00 */	li r5, 0
/* 80B7E5CC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B7E5D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7E5D4  7D 89 03 A6 */	mtctr r12
/* 80B7E5D8  4E 80 04 21 */	bctrl 
/* 80B7E5DC  48 00 00 2C */	b lbl_80B7E608
lbl_80B7E5E0:
/* 80B7E5E0  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80B7E5E4  28 00 00 00 */	cmplwi r0, 0
/* 80B7E5E8  40 82 00 20 */	bne lbl_80B7E608
/* 80B7E5EC  2C 1A 00 00 */	cmpwi r26, 0
/* 80B7E5F0  41 82 00 18 */	beq lbl_80B7E608
/* 80B7E5F4  80 1B 09 50 */	lwz r0, 0x950(r27)
/* 80B7E5F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B7E5FC  40 82 00 0C */	bne lbl_80B7E608
/* 80B7E600  7F 63 DB 78 */	mr r3, r27
/* 80B7E604  48 00 04 8D */	bl setExpressionTalkAfter__11daNpc_zrA_cFv
lbl_80B7E608:
/* 80B7E608  2C 1C 00 00 */	cmpwi r28, 0
/* 80B7E60C  40 82 00 40 */	bne lbl_80B7E64C
/* 80B7E610  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 80B7E614  2C 00 FF FF */	cmpwi r0, -1
/* 80B7E618  41 82 00 2C */	beq lbl_80B7E644
/* 80B7E61C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B7E620  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B7E624  80 64 00 00 */	lwz r3, 0(r4)
/* 80B7E628  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7E62C  90 7B 14 80 */	stw r3, 0x1480(r27)
/* 80B7E630  90 1B 14 84 */	stw r0, 0x1484(r27)
/* 80B7E634  80 04 00 08 */	lwz r0, 8(r4)
/* 80B7E638  90 1B 14 88 */	stw r0, 0x1488(r27)
/* 80B7E63C  38 00 FF FF */	li r0, -1
/* 80B7E640  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_80B7E644:
/* 80B7E644  38 00 00 00 */	li r0, 0
/* 80B7E648  90 1B 09 50 */	stw r0, 0x950(r27)
lbl_80B7E64C:
/* 80B7E64C  7F 83 E3 78 */	mr r3, r28
/* 80B7E650  39 61 00 90 */	addi r11, r1, 0x90
/* 80B7E654  4B 7E 3B C9 */	bl _restgpr_26
/* 80B7E658  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B7E65C  7C 08 03 A6 */	mtlr r0
/* 80B7E660  38 21 00 90 */	addi r1, r1, 0x90
/* 80B7E664  4E 80 00 20 */	blr 
