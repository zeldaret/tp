lbl_80A810FC:
/* 80A810FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A81100  7C 08 02 A6 */	mflr r0
/* 80A81104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A81108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A8110C  7C 7F 1B 78 */	mr r31, r3
/* 80A81110  38 7F 0C 84 */	addi r3, r31, 0xc84
/* 80A81114  4B 6C F5 D9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A81118  28 03 00 00 */	cmplwi r3, 0
/* 80A8111C  40 82 00 28 */	bne lbl_80A81144
/* 80A81120  38 00 02 98 */	li r0, 0x298
/* 80A81124  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A81128  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A8112C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A81130  38 81 00 0C */	addi r4, r1, 0xc
/* 80A81134  4B 59 86 C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A81138  7C 64 1B 78 */	mr r4, r3
/* 80A8113C  38 7F 0C 84 */	addi r3, r31, 0xc84
/* 80A81140  4B 6C F5 7D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A81144:
/* 80A81144  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80A81148  4B 6C F5 A5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A8114C  28 03 00 00 */	cmplwi r3, 0
/* 80A81150  40 82 00 28 */	bne lbl_80A81178
/* 80A81154  38 00 02 9A */	li r0, 0x29a
/* 80A81158  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80A8115C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A81160  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A81164  38 81 00 0A */	addi r4, r1, 0xa
/* 80A81168  4B 59 86 91 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A8116C  7C 64 1B 78 */	mr r4, r3
/* 80A81170  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80A81174  4B 6C F5 49 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A81178:
/* 80A81178  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A8117C  4B 6C F5 71 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A81180  28 03 00 00 */	cmplwi r3, 0
/* 80A81184  40 82 00 28 */	bne lbl_80A811AC
/* 80A81188  38 00 02 9B */	li r0, 0x29b
/* 80A8118C  B0 01 00 08 */	sth r0, 8(r1)
/* 80A81190  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80A81194  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80A81198  38 81 00 08 */	addi r4, r1, 8
/* 80A8119C  4B 59 86 5D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A811A0  7C 64 1B 78 */	mr r4, r3
/* 80A811A4  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A811A8  4B 6C F5 15 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A811AC:
/* 80A811AC  38 00 00 0A */	li r0, 0xa
/* 80A811B0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A811B4  88 1F 0E 0B */	lbz r0, 0xe0b(r31)
/* 80A811B8  28 00 00 00 */	cmplwi r0, 0
/* 80A811BC  40 82 00 38 */	bne lbl_80A811F4
/* 80A811C0  7F E3 FB 78 */	mr r3, r31
/* 80A811C4  38 80 00 03 */	li r4, 3
/* 80A811C8  38 A0 00 05 */	li r5, 5
/* 80A811CC  4B 6D 30 AD */	bl getDistTableIdx__8daNpcF_cFii
/* 80A811D0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A811D4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A811D8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A811DC  7F E3 FB 78 */	mr r3, r31
/* 80A811E0  38 80 00 02 */	li r4, 2
/* 80A811E4  38 A0 00 05 */	li r5, 5
/* 80A811E8  4B 6D 30 91 */	bl getDistTableIdx__8daNpcF_cFii
/* 80A811EC  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A811F0  48 00 00 70 */	b lbl_80A81260
lbl_80A811F4:
/* 80A811F4  7F E3 FB 78 */	mr r3, r31
/* 80A811F8  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A811FC  38 A4 32 AC */	addi r5, r4, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A81200  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80A81204  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80A81208  4B 6D 30 71 */	bl getDistTableIdx__8daNpcF_cFii
/* 80A8120C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A81210  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A81214  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A81218  7F E3 FB 78 */	mr r3, r31
/* 80A8121C  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A81220  38 A4 32 AC */	addi r5, r4, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A81224  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80A81228  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80A8122C  4B 6D 30 4D */	bl getDistTableIdx__8daNpcF_cFii
/* 80A81230  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A81234  88 1F 0E 0B */	lbz r0, 0xe0b(r31)
/* 80A81238  28 00 00 01 */	cmplwi r0, 1
/* 80A8123C  40 82 00 24 */	bne lbl_80A81260
/* 80A81240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A81244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A81248  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A8124C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A81250  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A81254  41 82 00 0C */	beq lbl_80A81260
/* 80A81258  38 00 00 00 */	li r0, 0
/* 80A8125C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80A81260:
/* 80A81260  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A81264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A81268  7C 08 03 A6 */	mtlr r0
/* 80A8126C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A81270  4E 80 00 20 */	blr 
