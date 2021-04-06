lbl_80539E48:
/* 80539E48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80539E4C  7C 08 02 A6 */	mflr r0
/* 80539E50  90 01 00 54 */	stw r0, 0x54(r1)
/* 80539E54  39 61 00 50 */	addi r11, r1, 0x50
/* 80539E58  4B E2 83 6D */	bl _savegpr_23
/* 80539E5C  7C 77 1B 78 */	mr r23, r3
/* 80539E60  7C 98 23 78 */	mr r24, r4
/* 80539E64  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha /* 0x8053E754@ha */
/* 80539E68  3B E3 E7 54 */	addi r31, r3, m__18daNpc_Besu_Param_c@l /* 0x8053E754@l */
/* 80539E6C  3B A0 00 00 */	li r29, 0
/* 80539E70  3B 80 FF FF */	li r28, -1
/* 80539E74  3B 60 00 00 */	li r27, 0
/* 80539E78  3B 40 00 00 */	li r26, 0
/* 80539E7C  3B 20 00 00 */	li r25, 0
/* 80539E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539E88  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80539E8C  7F C3 F3 78 */	mr r3, r30
/* 80539E90  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 80539E94  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 80539E98  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 80539E9C  38 C0 00 03 */	li r6, 3
/* 80539EA0  4B B0 E2 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80539EA4  28 03 00 00 */	cmplwi r3, 0
/* 80539EA8  41 82 00 08 */	beq lbl_80539EB0
/* 80539EAC  83 83 00 00 */	lwz r28, 0(r3)
lbl_80539EB0:
/* 80539EB0  7F C3 F3 78 */	mr r3, r30
/* 80539EB4  7F 04 C3 78 */	mr r4, r24
/* 80539EB8  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 80539EBC  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 80539EC0  38 A5 01 F7 */	addi r5, r5, 0x1f7
/* 80539EC4  38 C0 00 03 */	li r6, 3
/* 80539EC8  4B B0 E2 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80539ECC  28 03 00 00 */	cmplwi r3, 0
/* 80539ED0  41 82 00 08 */	beq lbl_80539ED8
/* 80539ED4  83 63 00 00 */	lwz r27, 0(r3)
lbl_80539ED8:
/* 80539ED8  7F C3 F3 78 */	mr r3, r30
/* 80539EDC  7F 04 C3 78 */	mr r4, r24
/* 80539EE0  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 80539EE4  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 80539EE8  38 A5 01 FD */	addi r5, r5, 0x1fd
/* 80539EEC  38 C0 00 03 */	li r6, 3
/* 80539EF0  4B B0 E1 FD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80539EF4  28 03 00 00 */	cmplwi r3, 0
/* 80539EF8  41 82 00 08 */	beq lbl_80539F00
/* 80539EFC  83 43 00 00 */	lwz r26, 0(r3)
lbl_80539F00:
/* 80539F00  7F C3 F3 78 */	mr r3, r30
/* 80539F04  7F 04 C3 78 */	mr r4, r24
/* 80539F08  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 80539F0C  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 80539F10  38 A5 02 04 */	addi r5, r5, 0x204
/* 80539F14  38 C0 00 03 */	li r6, 3
/* 80539F18  4B B0 E1 D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80539F1C  28 03 00 00 */	cmplwi r3, 0
/* 80539F20  41 82 00 08 */	beq lbl_80539F28
/* 80539F24  83 23 00 00 */	lwz r25, 0(r3)
lbl_80539F28:
/* 80539F28  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80539F2C  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80539F30  90 61 00 14 */	stw r3, 0x14(r1)
/* 80539F34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80539F38  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80539F3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80539F40  38 77 10 C8 */	addi r3, r23, 0x10c8
/* 80539F44  4B C0 B7 C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80539F48  90 61 00 14 */	stw r3, 0x14(r1)
/* 80539F4C  38 77 10 D0 */	addi r3, r23, 0x10d0
/* 80539F50  4B C0 B7 B9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80539F54  90 61 00 18 */	stw r3, 0x18(r1)
/* 80539F58  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 80539F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80539F60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539F64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539F68  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80539F6C  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80539F70  92 E4 5E F8 */	stw r23, 0x5ef8(r4)
/* 80539F74  38 00 00 00 */	li r0, 0
/* 80539F78  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80539F7C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80539F80  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80539F84  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80539F88  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80539F8C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80539F90  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80539F94  7F C3 F3 78 */	mr r3, r30
/* 80539F98  7F 04 C3 78 */	mr r4, r24
/* 80539F9C  4B B0 DD B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80539FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80539FA4  41 82 00 70 */	beq lbl_8053A014
/* 80539FA8  28 1C 00 15 */	cmplwi r28, 0x15
/* 80539FAC  41 81 00 68 */	bgt lbl_8053A014
/* 80539FB0  3C 60 80 54 */	lis r3, lit_5770@ha /* 0x8053FC54@ha */
/* 80539FB4  38 63 FC 54 */	addi r3, r3, lit_5770@l /* 0x8053FC54@l */
/* 80539FB8  57 80 10 3A */	slwi r0, r28, 2
/* 80539FBC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80539FC0  7C 09 03 A6 */	mtctr r0
/* 80539FC4  4E 80 04 20 */	bctr 
lbl_80539FC8:
/* 80539FC8  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80539FCC  7E E3 BB 78 */	mr r3, r23
/* 80539FD0  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 80539FD4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80539FD8  4B C1 1C 19 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80539FDC  48 00 00 38 */	b lbl_8053A014
lbl_80539FE0:
/* 80539FE0  38 00 00 01 */	li r0, 1
/* 80539FE4  98 17 11 2C */	stb r0, 0x112c(r23)
/* 80539FE8  38 00 00 00 */	li r0, 0
/* 80539FEC  90 17 11 28 */	stw r0, 0x1128(r23)
/* 80539FF0  7E E3 BB 78 */	mr r3, r23
/* 80539FF4  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 80539FF8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80539FFC  4B C1 1B F5 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8053A000  48 00 00 14 */	b lbl_8053A014
lbl_8053A004:
/* 8053A004  7E E3 BB 78 */	mr r3, r23
/* 8053A008  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 8053A00C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8053A010  4B C1 1B E1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8053A014:
/* 8053A014  80 7F 01 88 */	lwz r3, 0x188(r31)
/* 8053A018  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 8053A01C  90 61 00 08 */	stw r3, 8(r1)
/* 8053A020  90 01 00 0C */	stw r0, 0xc(r1)
/* 8053A024  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8053A028  90 01 00 10 */	stw r0, 0x10(r1)
/* 8053A02C  28 1C 00 15 */	cmplwi r28, 0x15
/* 8053A030  41 81 04 10 */	bgt lbl_8053A440
/* 8053A034  3C 60 80 54 */	lis r3, lit_5771@ha /* 0x8053FBFC@ha */
/* 8053A038  38 63 FB FC */	addi r3, r3, lit_5771@l /* 0x8053FBFC@l */
/* 8053A03C  57 80 10 3A */	slwi r0, r28, 2
/* 8053A040  7C 03 00 2E */	lwzx r0, r3, r0
/* 8053A044  7C 09 03 A6 */	mtctr r0
/* 8053A048  4E 80 04 20 */	bctr 
lbl_8053A04C:
/* 8053A04C  3B A0 00 01 */	li r29, 1
/* 8053A050  48 00 03 F0 */	b lbl_8053A440
lbl_8053A054:
/* 8053A054  2C 1C 00 04 */	cmpwi r28, 4
/* 8053A058  41 82 01 60 */	beq lbl_8053A1B8
/* 8053A05C  40 80 00 18 */	bge lbl_8053A074
/* 8053A060  2C 1C 00 03 */	cmpwi r28, 3
/* 8053A064  40 80 00 C0 */	bge lbl_8053A124
/* 8053A068  2C 1C 00 01 */	cmpwi r28, 1
/* 8053A06C  40 80 00 20 */	bge lbl_8053A08C
/* 8053A070  48 00 03 5C */	b lbl_8053A3CC
lbl_8053A074:
/* 8053A074  2C 1C 00 0C */	cmpwi r28, 0xc
/* 8053A078  41 82 02 C4 */	beq lbl_8053A33C
/* 8053A07C  40 80 03 50 */	bge lbl_8053A3CC
/* 8053A080  2C 1C 00 0A */	cmpwi r28, 0xa
/* 8053A084  40 80 02 24 */	bge lbl_8053A2A8
/* 8053A088  48 00 03 44 */	b lbl_8053A3CC
lbl_8053A08C:
/* 8053A08C  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8053A090  2C 00 00 01 */	cmpwi r0, 1
/* 8053A094  41 82 00 28 */	beq lbl_8053A0BC
/* 8053A098  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A09C  4B C0 B6 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053A0A0  38 00 00 00 */	li r0, 0
/* 8053A0A4  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8053A0A8  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A0AC  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8053A0B0  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A0B4  38 00 00 01 */	li r0, 1
/* 8053A0B8  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_8053A0BC:
/* 8053A0BC  38 00 00 00 */	li r0, 0
/* 8053A0C0  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A0C4  A8 77 0D C8 */	lha r3, 0xdc8(r23)
/* 8053A0C8  A8 17 0D 7A */	lha r0, 0xd7a(r23)
/* 8053A0CC  7C 03 00 00 */	cmpw r3, r0
/* 8053A0D0  41 82 02 FC */	beq lbl_8053A3CC
/* 8053A0D4  7E E3 BB 78 */	mr r3, r23
/* 8053A0D8  4B FF DF 25 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053A0DC  2C 03 00 00 */	cmpwi r3, 0
/* 8053A0E0  41 82 00 24 */	beq lbl_8053A104
/* 8053A0E4  7E E3 BB 78 */	mr r3, r23
/* 8053A0E8  A8 97 0D C8 */	lha r4, 0xdc8(r23)
/* 8053A0EC  38 A0 FF FF */	li r5, -1
/* 8053A0F0  38 C0 FF FF */	li r6, -1
/* 8053A0F4  38 E0 00 0F */	li r7, 0xf
/* 8053A0F8  39 00 00 00 */	li r8, 0
/* 8053A0FC  4B C1 15 4D */	bl step__8daNpcT_cFsiiii
/* 8053A100  48 00 02 CC */	b lbl_8053A3CC
lbl_8053A104:
/* 8053A104  7E E3 BB 78 */	mr r3, r23
/* 8053A108  A8 97 0D C8 */	lha r4, 0xdc8(r23)
/* 8053A10C  38 A0 FF FF */	li r5, -1
/* 8053A110  38 C0 FF FF */	li r6, -1
/* 8053A114  38 E0 00 0F */	li r7, 0xf
/* 8053A118  39 00 00 00 */	li r8, 0
/* 8053A11C  4B C1 15 2D */	bl step__8daNpcT_cFsiiii
/* 8053A120  48 00 02 AC */	b lbl_8053A3CC
lbl_8053A124:
/* 8053A124  83 01 00 14 */	lwz r24, 0x14(r1)
/* 8053A128  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A12C  4B C0 B5 DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8053A130  7C 63 C0 50 */	subf r3, r3, r24
/* 8053A134  30 03 FF FF */	addic r0, r3, -1
/* 8053A138  7C 00 19 10 */	subfe r0, r0, r3
/* 8053A13C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053A140  40 82 00 10 */	bne lbl_8053A150
/* 8053A144  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8053A148  2C 00 00 02 */	cmpwi r0, 2
/* 8053A14C  41 82 00 30 */	beq lbl_8053A17C
lbl_8053A150:
/* 8053A150  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A154  4B C0 B5 A9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053A158  38 00 00 00 */	li r0, 0
/* 8053A15C  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8053A160  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A164  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8053A168  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A16C  38 00 00 02 */	li r0, 2
/* 8053A170  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 8053A174  38 00 00 01 */	li r0, 1
/* 8053A178  48 00 00 08 */	b lbl_8053A180
lbl_8053A17C:
/* 8053A17C  38 00 00 00 */	li r0, 0
lbl_8053A180:
/* 8053A180  2C 00 00 00 */	cmpwi r0, 0
/* 8053A184  41 82 00 28 */	beq lbl_8053A1AC
/* 8053A188  7F 03 C3 78 */	mr r3, r24
/* 8053A18C  4B AD EB 55 */	bl fopAc_IsActor__FPv
/* 8053A190  2C 03 00 00 */	cmpwi r3, 0
/* 8053A194  41 82 00 18 */	beq lbl_8053A1AC
/* 8053A198  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A19C  7F 04 C3 78 */	mr r4, r24
/* 8053A1A0  4B C0 B5 41 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053A1A4  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053A1A8  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
lbl_8053A1AC:
/* 8053A1AC  38 00 00 00 */	li r0, 0
/* 8053A1B0  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A1B4  48 00 02 18 */	b lbl_8053A3CC
lbl_8053A1B8:
/* 8053A1B8  83 01 00 14 */	lwz r24, 0x14(r1)
/* 8053A1BC  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A1C0  4B C0 B5 49 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8053A1C4  7C 63 C0 50 */	subf r3, r3, r24
/* 8053A1C8  30 03 FF FF */	addic r0, r3, -1
/* 8053A1CC  7C 00 19 10 */	subfe r0, r0, r3
/* 8053A1D0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053A1D4  40 82 00 10 */	bne lbl_8053A1E4
/* 8053A1D8  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8053A1DC  2C 00 00 02 */	cmpwi r0, 2
/* 8053A1E0  41 82 00 30 */	beq lbl_8053A210
lbl_8053A1E4:
/* 8053A1E4  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A1E8  4B C0 B5 15 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053A1EC  38 00 00 00 */	li r0, 0
/* 8053A1F0  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8053A1F4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A1F8  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8053A1FC  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A200  38 00 00 02 */	li r0, 2
/* 8053A204  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 8053A208  38 00 00 01 */	li r0, 1
/* 8053A20C  48 00 00 08 */	b lbl_8053A214
lbl_8053A210:
/* 8053A210  38 00 00 00 */	li r0, 0
lbl_8053A214:
/* 8053A214  2C 00 00 00 */	cmpwi r0, 0
/* 8053A218  41 82 00 28 */	beq lbl_8053A240
/* 8053A21C  7F 03 C3 78 */	mr r3, r24
/* 8053A220  4B AD EA C1 */	bl fopAc_IsActor__FPv
/* 8053A224  2C 03 00 00 */	cmpwi r3, 0
/* 8053A228  41 82 00 18 */	beq lbl_8053A240
/* 8053A22C  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A230  7F 04 C3 78 */	mr r4, r24
/* 8053A234  4B C0 B4 AD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053A238  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053A23C  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
lbl_8053A240:
/* 8053A240  38 00 00 00 */	li r0, 0
/* 8053A244  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A248  A8 77 04 B6 */	lha r3, 0x4b6(r23)
/* 8053A24C  A8 17 0D 7A */	lha r0, 0xd7a(r23)
/* 8053A250  7C 03 00 00 */	cmpw r3, r0
/* 8053A254  41 82 01 78 */	beq lbl_8053A3CC
/* 8053A258  7E E3 BB 78 */	mr r3, r23
/* 8053A25C  4B FF DD A1 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053A260  2C 03 00 00 */	cmpwi r3, 0
/* 8053A264  41 82 00 24 */	beq lbl_8053A288
/* 8053A268  7E E3 BB 78 */	mr r3, r23
/* 8053A26C  A8 97 04 B6 */	lha r4, 0x4b6(r23)
/* 8053A270  38 A0 FF FF */	li r5, -1
/* 8053A274  38 C0 FF FF */	li r6, -1
/* 8053A278  38 E0 00 0F */	li r7, 0xf
/* 8053A27C  39 00 00 00 */	li r8, 0
/* 8053A280  4B C1 13 C9 */	bl step__8daNpcT_cFsiiii
/* 8053A284  48 00 01 48 */	b lbl_8053A3CC
lbl_8053A288:
/* 8053A288  7E E3 BB 78 */	mr r3, r23
/* 8053A28C  A8 97 04 B6 */	lha r4, 0x4b6(r23)
/* 8053A290  38 A0 FF FF */	li r5, -1
/* 8053A294  38 C0 FF FF */	li r6, -1
/* 8053A298  38 E0 00 0F */	li r7, 0xf
/* 8053A29C  39 00 00 00 */	li r8, 0
/* 8053A2A0  4B C1 13 A9 */	bl step__8daNpcT_cFsiiii
/* 8053A2A4  48 00 01 28 */	b lbl_8053A3CC
lbl_8053A2A8:
/* 8053A2A8  83 01 00 14 */	lwz r24, 0x14(r1)
/* 8053A2AC  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A2B0  4B C0 B4 59 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8053A2B4  7C 63 C0 50 */	subf r3, r3, r24
/* 8053A2B8  30 03 FF FF */	addic r0, r3, -1
/* 8053A2BC  7C 00 19 10 */	subfe r0, r0, r3
/* 8053A2C0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053A2C4  40 82 00 10 */	bne lbl_8053A2D4
/* 8053A2C8  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8053A2CC  2C 00 00 02 */	cmpwi r0, 2
/* 8053A2D0  41 82 00 30 */	beq lbl_8053A300
lbl_8053A2D4:
/* 8053A2D4  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A2D8  4B C0 B4 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053A2DC  38 00 00 00 */	li r0, 0
/* 8053A2E0  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8053A2E4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A2E8  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8053A2EC  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A2F0  38 00 00 02 */	li r0, 2
/* 8053A2F4  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 8053A2F8  38 00 00 01 */	li r0, 1
/* 8053A2FC  48 00 00 08 */	b lbl_8053A304
lbl_8053A300:
/* 8053A300  38 00 00 00 */	li r0, 0
lbl_8053A304:
/* 8053A304  2C 00 00 00 */	cmpwi r0, 0
/* 8053A308  41 82 00 28 */	beq lbl_8053A330
/* 8053A30C  7F 03 C3 78 */	mr r3, r24
/* 8053A310  4B AD E9 D1 */	bl fopAc_IsActor__FPv
/* 8053A314  2C 03 00 00 */	cmpwi r3, 0
/* 8053A318  41 82 00 18 */	beq lbl_8053A330
/* 8053A31C  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A320  7F 04 C3 78 */	mr r4, r24
/* 8053A324  4B C0 B3 BD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053A328  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053A32C  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
lbl_8053A330:
/* 8053A330  38 00 00 00 */	li r0, 0
/* 8053A334  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A338  48 00 00 94 */	b lbl_8053A3CC
lbl_8053A33C:
/* 8053A33C  83 01 00 18 */	lwz r24, 0x18(r1)
/* 8053A340  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A344  4B C0 B3 C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8053A348  7C 63 C0 50 */	subf r3, r3, r24
/* 8053A34C  30 03 FF FF */	addic r0, r3, -1
/* 8053A350  7C 00 19 10 */	subfe r0, r0, r3
/* 8053A354  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053A358  40 82 00 10 */	bne lbl_8053A368
/* 8053A35C  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8053A360  2C 00 00 02 */	cmpwi r0, 2
/* 8053A364  41 82 00 30 */	beq lbl_8053A394
lbl_8053A368:
/* 8053A368  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A36C  4B C0 B3 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053A370  38 00 00 00 */	li r0, 0
/* 8053A374  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8053A378  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A37C  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8053A380  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8053A384  38 00 00 02 */	li r0, 2
/* 8053A388  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 8053A38C  38 00 00 01 */	li r0, 1
/* 8053A390  48 00 00 08 */	b lbl_8053A398
lbl_8053A394:
/* 8053A394  38 00 00 00 */	li r0, 0
lbl_8053A398:
/* 8053A398  2C 00 00 00 */	cmpwi r0, 0
/* 8053A39C  41 82 00 28 */	beq lbl_8053A3C4
/* 8053A3A0  7F 03 C3 78 */	mr r3, r24
/* 8053A3A4  4B AD E9 3D */	bl fopAc_IsActor__FPv
/* 8053A3A8  2C 03 00 00 */	cmpwi r3, 0
/* 8053A3AC  41 82 00 18 */	beq lbl_8053A3C4
/* 8053A3B0  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8053A3B4  7F 04 C3 78 */	mr r4, r24
/* 8053A3B8  4B C0 B3 29 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053A3BC  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053A3C0  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
lbl_8053A3C4:
/* 8053A3C4  38 00 00 00 */	li r0, 0
/* 8053A3C8  98 17 0C FF */	stb r0, 0xcff(r23)
lbl_8053A3CC:
/* 8053A3CC  93 61 00 08 */	stw r27, 8(r1)
/* 8053A3D0  93 41 00 0C */	stw r26, 0xc(r1)
/* 8053A3D4  7E E3 BB 78 */	mr r3, r23
/* 8053A3D8  38 81 00 08 */	addi r4, r1, 8
/* 8053A3DC  38 A0 00 00 */	li r5, 0
/* 8053A3E0  38 C1 00 14 */	addi r6, r1, 0x14
/* 8053A3E4  38 E0 00 00 */	li r7, 0
/* 8053A3E8  4B C1 18 91 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8053A3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8053A3F0  41 82 00 50 */	beq lbl_8053A440
/* 8053A3F4  2C 1B 00 00 */	cmpwi r27, 0
/* 8053A3F8  40 82 00 20 */	bne lbl_8053A418
/* 8053A3FC  2C 1A 00 00 */	cmpwi r26, 0
/* 8053A400  40 82 00 18 */	bne lbl_8053A418
/* 8053A404  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 8053A408  28 00 00 01 */	cmplwi r0, 1
/* 8053A40C  40 82 00 34 */	bne lbl_8053A440
/* 8053A410  3B A0 00 01 */	li r29, 1
/* 8053A414  48 00 00 2C */	b lbl_8053A440
lbl_8053A418:
/* 8053A418  3B A0 00 01 */	li r29, 1
/* 8053A41C  48 00 00 24 */	b lbl_8053A440
lbl_8053A420:
/* 8053A420  38 60 00 0A */	li r3, 0xa
/* 8053A424  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8053A428  38 80 00 00 */	li r4, 0
/* 8053A42C  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 8053A430  7C 05 07 74 */	extsb r5, r0
/* 8053A434  38 C0 00 00 */	li r6, 0
/* 8053A438  38 E0 FF FF */	li r7, -1
/* 8053A43C  4B AE CD 35 */	bl dStage_changeScene__FifUlScsi
lbl_8053A440:
/* 8053A440  7F A3 EB 78 */	mr r3, r29
/* 8053A444  39 61 00 50 */	addi r11, r1, 0x50
/* 8053A448  4B E2 7D C9 */	bl _restgpr_23
/* 8053A44C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8053A450  7C 08 03 A6 */	mtlr r0
/* 8053A454  38 21 00 50 */	addi r1, r1, 0x50
/* 8053A458  4E 80 00 20 */	blr 
