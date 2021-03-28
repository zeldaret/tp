lbl_80A6DE14:
/* 80A6DE14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6DE18  7C 08 02 A6 */	mflr r0
/* 80A6DE1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6DE20  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6DE24  4B 8F 43 B8 */	b _savegpr_29
/* 80A6DE28  7C 7E 1B 78 */	mr r30, r3
/* 80A6DE2C  3C 60 80 A7 */	lis r3, m__17daNpc_Lud_Param_c@ha
/* 80A6DE30  3B E3 FD 7C */	addi r31, r3, m__17daNpc_Lud_Param_c@l
/* 80A6DE34  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A6DE38  2C 00 00 02 */	cmpwi r0, 2
/* 80A6DE3C  41 82 01 F8 */	beq lbl_80A6E034
/* 80A6DE40  40 80 04 D0 */	bge lbl_80A6E310
/* 80A6DE44  2C 00 00 00 */	cmpwi r0, 0
/* 80A6DE48  40 80 00 0C */	bge lbl_80A6DE54
/* 80A6DE4C  48 00 04 C4 */	b lbl_80A6E310
/* 80A6DE50  48 00 04 C0 */	b lbl_80A6E310
lbl_80A6DE54:
/* 80A6DE54  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A6DE58  2C 00 00 00 */	cmpwi r0, 0
/* 80A6DE5C  40 82 01 D8 */	bne lbl_80A6E034
/* 80A6DE60  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6DE64  2C 00 00 02 */	cmpwi r0, 2
/* 80A6DE68  41 82 01 60 */	beq lbl_80A6DFC8
/* 80A6DE6C  40 80 00 10 */	bge lbl_80A6DE7C
/* 80A6DE70  2C 00 00 01 */	cmpwi r0, 1
/* 80A6DE74  40 80 00 14 */	bge lbl_80A6DE88
/* 80A6DE78  48 00 01 50 */	b lbl_80A6DFC8
lbl_80A6DE7C:
/* 80A6DE7C  2C 00 00 04 */	cmpwi r0, 4
/* 80A6DE80  40 80 01 48 */	bge lbl_80A6DFC8
/* 80A6DE84  48 00 00 E8 */	b lbl_80A6DF6C
lbl_80A6DE88:
/* 80A6DE88  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A6DE8C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A6DE90  28 04 00 FF */	cmplwi r4, 0xff
/* 80A6DE94  41 82 00 7C */	beq lbl_80A6DF10
/* 80A6DE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6DE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6DEA0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A6DEA4  7C 05 07 74 */	extsb r5, r0
/* 80A6DEA8  4B 5C 74 B8 */	b isSwitch__10dSv_info_cCFii
/* 80A6DEAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A6DEB0  41 82 00 60 */	beq lbl_80A6DF10
/* 80A6DEB4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A6DEB8  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A6DEBC  41 82 00 24 */	beq lbl_80A6DEE0
/* 80A6DEC0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A6DEC4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A6DEC8  4B 6D 79 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DECC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A6DED0  38 00 00 10 */	li r0, 0x10
/* 80A6DED4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A6DED8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DEDC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A6DEE0:
/* 80A6DEE0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6DEE4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A6DEE8  41 82 01 38 */	beq lbl_80A6E020
/* 80A6DEEC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A6DEF0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A6DEF4  4B 6D 79 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DEF8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A6DEFC  38 00 00 11 */	li r0, 0x11
/* 80A6DF00  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A6DF04  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DF08  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A6DF0C  48 00 01 14 */	b lbl_80A6E020
lbl_80A6DF10:
/* 80A6DF10  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A6DF14  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A6DF18  41 82 00 24 */	beq lbl_80A6DF3C
/* 80A6DF1C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A6DF20  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A6DF24  4B 6D 79 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DF28  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A6DF2C  38 00 00 0F */	li r0, 0xf
/* 80A6DF30  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A6DF34  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DF38  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A6DF3C:
/* 80A6DF3C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6DF40  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A6DF44  41 82 00 DC */	beq lbl_80A6E020
/* 80A6DF48  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A6DF4C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A6DF50  4B 6D 79 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DF54  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A6DF58  38 00 00 10 */	li r0, 0x10
/* 80A6DF5C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A6DF60  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DF64  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A6DF68  48 00 00 B8 */	b lbl_80A6E020
lbl_80A6DF6C:
/* 80A6DF6C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A6DF70  2C 00 00 09 */	cmpwi r0, 9
/* 80A6DF74  41 82 00 24 */	beq lbl_80A6DF98
/* 80A6DF78  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A6DF7C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A6DF80  4B 6D 79 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DF84  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A6DF88  38 00 00 09 */	li r0, 9
/* 80A6DF8C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A6DF90  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DF94  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A6DF98:
/* 80A6DF98  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6DF9C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A6DFA0  41 82 00 80 */	beq lbl_80A6E020
/* 80A6DFA4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A6DFA8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A6DFAC  4B 6D 78 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DFB0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A6DFB4  38 00 00 0B */	li r0, 0xb
/* 80A6DFB8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A6DFBC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DFC0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A6DFC4  48 00 00 5C */	b lbl_80A6E020
lbl_80A6DFC8:
/* 80A6DFC8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A6DFCC  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A6DFD0  41 82 00 24 */	beq lbl_80A6DFF4
/* 80A6DFD4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A6DFD8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A6DFDC  4B 6D 78 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DFE0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A6DFE4  38 00 00 12 */	li r0, 0x12
/* 80A6DFE8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A6DFEC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6DFF0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A6DFF4:
/* 80A6DFF4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6DFF8  2C 00 00 00 */	cmpwi r0, 0
/* 80A6DFFC  41 82 00 24 */	beq lbl_80A6E020
/* 80A6E000  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A6E004  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A6E008  4B 6D 78 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E00C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A6E010  38 00 00 00 */	li r0, 0
/* 80A6E014  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A6E018  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A6E01C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A6E020:
/* 80A6E020  38 00 00 00 */	li r0, 0
/* 80A6E024  90 1E 0F C0 */	stw r0, 0xfc0(r30)
/* 80A6E028  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80A6E02C  38 00 00 02 */	li r0, 2
/* 80A6E030  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A6E034:
/* 80A6E034  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6E038  2C 00 00 01 */	cmpwi r0, 1
/* 80A6E03C  41 82 00 08 */	beq lbl_80A6E044
/* 80A6E040  48 00 00 8C */	b lbl_80A6E0CC
lbl_80A6E044:
/* 80A6E044  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A6E048  4B 6D 76 C0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A6E04C  28 03 00 00 */	cmplwi r3, 0
/* 80A6E050  41 82 00 44 */	beq lbl_80A6E094
/* 80A6E054  7F C4 F3 78 */	mr r4, r30
/* 80A6E058  38 BF 00 00 */	addi r5, r31, 0
/* 80A6E05C  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80A6E060  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 80A6E064  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 80A6E068  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 80A6E06C  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 80A6E070  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 80A6E074  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 80A6E078  4B FF 80 60 */	b checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 80A6E07C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E080  41 82 00 14 */	beq lbl_80A6E094
/* 80A6E084  38 00 00 02 */	li r0, 2
/* 80A6E088  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80A6E08C  38 00 00 01 */	li r0, 1
/* 80A6E090  98 1E 0F D5 */	stb r0, 0xfd5(r30)
lbl_80A6E094:
/* 80A6E094  88 1E 0F D5 */	lbz r0, 0xfd5(r30)
/* 80A6E098  28 00 00 00 */	cmplwi r0, 0
/* 80A6E09C  41 82 00 30 */	beq lbl_80A6E0CC
/* 80A6E0A0  38 60 00 3C */	li r3, 0x3c
/* 80A6E0A4  4B 6D EA 08 */	b daNpcT_chkEvtBit__FUl
/* 80A6E0A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E0AC  41 82 00 20 */	beq lbl_80A6E0CC
/* 80A6E0B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6E0B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6E0B8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A6E0BC  28 00 00 00 */	cmplwi r0, 0
/* 80A6E0C0  40 82 00 0C */	bne lbl_80A6E0CC
/* 80A6E0C4  38 00 00 00 */	li r0, 0
/* 80A6E0C8  98 1E 0F D5 */	stb r0, 0xfd5(r30)
lbl_80A6E0CC:
/* 80A6E0CC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A6E0D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E0D4  40 82 02 3C */	bne lbl_80A6E310
/* 80A6E0D8  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6E0DC  28 00 00 01 */	cmplwi r0, 1
/* 80A6E0E0  40 82 00 84 */	bne lbl_80A6E164
/* 80A6E0E4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A6E0E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E0EC  41 82 00 24 */	beq lbl_80A6E110
/* 80A6E0F0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6E0F4  4B 6D 76 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E0F8  38 00 00 00 */	li r0, 0
/* 80A6E0FC  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A6E100  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6E104  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A6E108  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E10C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A6E110:
/* 80A6E110  38 00 00 00 */	li r0, 0
/* 80A6E114  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E118  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A6E11C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A6E120  28 04 00 FF */	cmplwi r4, 0xff
/* 80A6E124  41 82 00 34 */	beq lbl_80A6E158
/* 80A6E128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6E12C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6E130  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A6E134  7C 05 07 74 */	extsb r5, r0
/* 80A6E138  4B 5C 72 28 */	b isSwitch__10dSv_info_cCFii
/* 80A6E13C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E140  41 82 00 18 */	beq lbl_80A6E158
/* 80A6E144  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6E148  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A6E14C  41 82 00 0C */	beq lbl_80A6E158
/* 80A6E150  38 00 00 01 */	li r0, 1
/* 80A6E154  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A6E158:
/* 80A6E158  38 00 00 00 */	li r0, 0
/* 80A6E15C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A6E160  48 00 01 98 */	b lbl_80A6E2F8
lbl_80A6E164:
/* 80A6E164  28 00 00 03 */	cmplwi r0, 3
/* 80A6E168  40 82 00 0C */	bne lbl_80A6E174
/* 80A6E16C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A6E170  4B 6D 75 8C */	b remove__18daNpcT_ActorMngr_cFv
lbl_80A6E174:
/* 80A6E174  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A6E178  4B 6D 75 90 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A6E17C  28 03 00 00 */	cmplwi r3, 0
/* 80A6E180  41 82 00 CC */	beq lbl_80A6E24C
/* 80A6E184  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A6E188  28 00 00 00 */	cmplwi r0, 0
/* 80A6E18C  40 82 00 C0 */	bne lbl_80A6E24C
/* 80A6E190  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A6E194  2C 00 00 01 */	cmpwi r0, 1
/* 80A6E198  41 82 00 28 */	beq lbl_80A6E1C0
/* 80A6E19C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6E1A0  4B 6D 75 5C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E1A4  38 00 00 00 */	li r0, 0
/* 80A6E1A8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A6E1AC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6E1B0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A6E1B4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E1B8  38 00 00 01 */	li r0, 1
/* 80A6E1BC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A6E1C0:
/* 80A6E1C0  38 00 00 00 */	li r0, 0
/* 80A6E1C4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E1C8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A6E1CC  4B 6D 75 3C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A6E1D0  7C 64 1B 78 */	mr r4, r3
/* 80A6E1D4  7F C3 F3 78 */	mr r3, r30
/* 80A6E1D8  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80A6E1DC  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A6E1E0  4B 6D C9 F0 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A6E1E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E1E8  40 82 00 38 */	bne lbl_80A6E220
/* 80A6E1EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A6E1F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E1F4  41 82 00 24 */	beq lbl_80A6E218
/* 80A6E1F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6E1FC  4B 6D 75 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E200  38 00 00 00 */	li r0, 0
/* 80A6E204  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A6E208  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6E20C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A6E210  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E214  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A6E218:
/* 80A6E218  38 00 00 00 */	li r0, 0
/* 80A6E21C  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A6E220:
/* 80A6E220  7F C3 F3 78 */	mr r3, r30
/* 80A6E224  4B 6D D1 14 */	b srchPlayerActor__8daNpcT_cFv
/* 80A6E228  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E22C  40 82 00 CC */	bne lbl_80A6E2F8
/* 80A6E230  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A6E234  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A6E238  7C 03 00 00 */	cmpw r3, r0
/* 80A6E23C  40 82 00 BC */	bne lbl_80A6E2F8
/* 80A6E240  38 00 00 01 */	li r0, 1
/* 80A6E244  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A6E248  48 00 00 B0 */	b lbl_80A6E2F8
lbl_80A6E24C:
/* 80A6E24C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A6E250  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E254  41 82 00 24 */	beq lbl_80A6E278
/* 80A6E258  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6E25C  4B 6D 74 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E260  38 00 00 00 */	li r0, 0
/* 80A6E264  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A6E268  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6E26C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A6E270  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E274  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A6E278:
/* 80A6E278  38 00 00 00 */	li r0, 0
/* 80A6E27C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A6E280  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A6E284  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A6E288  7C 04 00 00 */	cmpw r4, r0
/* 80A6E28C  41 82 00 58 */	beq lbl_80A6E2E4
/* 80A6E290  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80A6E294  28 00 00 00 */	cmplwi r0, 0
/* 80A6E298  41 82 00 30 */	beq lbl_80A6E2C8
/* 80A6E29C  7F C3 F3 78 */	mr r3, r30
/* 80A6E2A0  38 A0 00 12 */	li r5, 0x12
/* 80A6E2A4  38 C0 00 12 */	li r6, 0x12
/* 80A6E2A8  38 E0 00 0F */	li r7, 0xf
/* 80A6E2AC  39 00 00 00 */	li r8, 0
/* 80A6E2B0  4B 6D D3 98 */	b step__8daNpcT_cFsiiii
/* 80A6E2B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E2B8  41 82 00 20 */	beq lbl_80A6E2D8
/* 80A6E2BC  38 00 00 01 */	li r0, 1
/* 80A6E2C0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A6E2C4  48 00 00 14 */	b lbl_80A6E2D8
lbl_80A6E2C8:
/* 80A6E2C8  7F C3 F3 78 */	mr r3, r30
/* 80A6E2CC  4B 6D C7 4C */	b setAngle__8daNpcT_cFs
/* 80A6E2D0  38 00 00 01 */	li r0, 1
/* 80A6E2D4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A6E2D8:
/* 80A6E2D8  38 00 00 00 */	li r0, 0
/* 80A6E2DC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A6E2E0  48 00 00 18 */	b lbl_80A6E2F8
lbl_80A6E2E4:
/* 80A6E2E4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A6E2E8  28 00 00 00 */	cmplwi r0, 0
/* 80A6E2EC  40 82 00 0C */	bne lbl_80A6E2F8
/* 80A6E2F0  7F C3 F3 78 */	mr r3, r30
/* 80A6E2F4  4B 6D D0 44 */	b srchPlayerActor__8daNpcT_cFv
lbl_80A6E2F8:
/* 80A6E2F8  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6E2FC  2C 00 00 03 */	cmpwi r0, 3
/* 80A6E300  41 82 00 08 */	beq lbl_80A6E308
/* 80A6E304  48 00 00 0C */	b lbl_80A6E310
lbl_80A6E308:
/* 80A6E308  38 00 00 00 */	li r0, 0
/* 80A6E30C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A6E310:
/* 80A6E310  38 60 00 01 */	li r3, 1
/* 80A6E314  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6E318  4B 8F 3F 10 */	b _restgpr_29
/* 80A6E31C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6E320  7C 08 03 A6 */	mtlr r0
/* 80A6E324  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6E328  4E 80 00 20 */	blr 
