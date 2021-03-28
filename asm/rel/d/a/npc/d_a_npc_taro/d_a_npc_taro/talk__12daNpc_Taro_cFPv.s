lbl_8056FDCC:
/* 8056FDCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056FDD0  7C 08 02 A6 */	mflr r0
/* 8056FDD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056FDD8  39 61 00 30 */	addi r11, r1, 0x30
/* 8056FDDC  4B DF 23 FC */	b _savegpr_28
/* 8056FDE0  7C 7E 1B 78 */	mr r30, r3
/* 8056FDE4  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha
/* 8056FDE8  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l
/* 8056FDEC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 8056FDF0  2C 00 00 02 */	cmpwi r0, 2
/* 8056FDF4  41 82 00 BC */	beq lbl_8056FEB0
/* 8056FDF8  40 80 03 5C */	bge lbl_80570154
/* 8056FDFC  2C 00 00 00 */	cmpwi r0, 0
/* 8056FE00  40 80 00 0C */	bge lbl_8056FE0C
/* 8056FE04  48 00 03 50 */	b lbl_80570154
/* 8056FE08  48 00 03 4C */	b lbl_80570154
lbl_8056FE0C:
/* 8056FE0C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 8056FE10  2C 00 00 00 */	cmpwi r0, 0
/* 8056FE14  40 82 00 9C */	bne lbl_8056FEB0
/* 8056FE18  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8056FE1C  28 00 00 08 */	cmplwi r0, 8
/* 8056FE20  40 82 00 6C */	bne lbl_8056FE8C
/* 8056FE24  38 60 00 49 */	li r3, 0x49
/* 8056FE28  4B BD CC 84 */	b daNpcT_chkEvtBit__FUl
/* 8056FE2C  2C 03 00 00 */	cmpwi r3, 0
/* 8056FE30  40 82 00 5C */	bne lbl_8056FE8C
/* 8056FE34  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8056FE38  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056FE3C  41 82 00 24 */	beq lbl_8056FE60
/* 8056FE40  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8056FE44  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8056FE48  4B BD 5A 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FE4C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8056FE50  38 00 00 1F */	li r0, 0x1f
/* 8056FE54  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8056FE58  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FE5C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8056FE60:
/* 8056FE60  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8056FE64  2C 00 00 00 */	cmpwi r0, 0
/* 8056FE68  41 82 00 24 */	beq lbl_8056FE8C
/* 8056FE6C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8056FE70  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8056FE74  4B BD 5A 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FE78  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8056FE7C  38 00 00 00 */	li r0, 0
/* 8056FE80  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8056FE84  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FE88  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8056FE8C:
/* 8056FE8C  38 60 00 4A */	li r3, 0x4a
/* 8056FE90  4B BD CC 1C */	b daNpcT_chkEvtBit__FUl
/* 8056FE94  98 7E 11 A3 */	stb r3, 0x11a3(r30)
/* 8056FE98  7F C3 F3 78 */	mr r3, r30
/* 8056FE9C  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 8056FEA0  38 A0 00 00 */	li r5, 0
/* 8056FEA4  4B BD BD 4C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056FEA8  38 00 00 02 */	li r0, 2
/* 8056FEAC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_8056FEB0:
/* 8056FEB0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 8056FEB4  2C 00 00 00 */	cmpwi r0, 0
/* 8056FEB8  40 82 02 9C */	bne lbl_80570154
/* 8056FEBC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8056FEC0  28 00 00 00 */	cmplwi r0, 0
/* 8056FEC4  40 82 00 44 */	bne lbl_8056FF08
/* 8056FEC8  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 8056FECC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8056FED0  7C 03 00 00 */	cmpw r3, r0
/* 8056FED4  41 82 00 34 */	beq lbl_8056FF08
/* 8056FED8  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8056FEDC  28 00 00 08 */	cmplwi r0, 8
/* 8056FEE0  40 82 00 14 */	bne lbl_8056FEF4
/* 8056FEE4  38 60 00 49 */	li r3, 0x49
/* 8056FEE8  4B BD CB C4 */	b daNpcT_chkEvtBit__FUl
/* 8056FEEC  2C 03 00 00 */	cmpwi r3, 0
/* 8056FEF0  40 82 00 18 */	bne lbl_8056FF08
lbl_8056FEF4:
/* 8056FEF4  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8056FEF8  28 00 00 06 */	cmplwi r0, 6
/* 8056FEFC  41 82 00 0C */	beq lbl_8056FF08
/* 8056FF00  28 00 00 0D */	cmplwi r0, 0xd
/* 8056FF04  40 82 01 FC */	bne lbl_80570100
lbl_8056FF08:
/* 8056FF08  7F C3 F3 78 */	mr r3, r30
/* 8056FF0C  38 80 00 00 */	li r4, 0
/* 8056FF10  38 A0 00 00 */	li r5, 0
/* 8056FF14  38 C0 00 00 */	li r6, 0
/* 8056FF18  38 E0 00 00 */	li r7, 0
/* 8056FF1C  4B BD BD 5C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056FF20  2C 03 00 00 */	cmpwi r3, 0
/* 8056FF24  41 82 01 30 */	beq lbl_80570054
/* 8056FF28  80 7F 02 30 */	lwz r3, 0x230(r31)
/* 8056FF2C  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8056FF30  90 61 00 0C */	stw r3, 0xc(r1)
/* 8056FF34  90 01 00 10 */	stw r0, 0x10(r1)
/* 8056FF38  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 8056FF3C  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 8056FF40  90 61 00 14 */	stw r3, 0x14(r1)
/* 8056FF44  90 01 00 18 */	stw r0, 0x18(r1)
/* 8056FF48  38 7E 09 74 */	addi r3, r30, 0x974
/* 8056FF4C  38 81 00 08 */	addi r4, r1, 8
/* 8056FF50  4B CD A5 D8 */	b getEventId__10dMsgFlow_cFPi
/* 8056FF54  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8056FF58  2C 00 00 08 */	cmpwi r0, 8
/* 8056FF5C  40 82 00 C0 */	bne lbl_8057001C
/* 8056FF60  80 01 00 08 */	lwz r0, 8(r1)
/* 8056FF64  2C 00 00 00 */	cmpwi r0, 0
/* 8056FF68  40 82 00 B4 */	bne lbl_8057001C
/* 8056FF6C  3B 80 00 00 */	li r28, 0
/* 8056FF70  88 1E 11 A3 */	lbz r0, 0x11a3(r30)
/* 8056FF74  28 00 00 00 */	cmplwi r0, 0
/* 8056FF78  41 82 00 6C */	beq lbl_8056FFE4
/* 8056FF7C  38 60 00 42 */	li r3, 0x42
/* 8056FF80  4B BD CB 6C */	b daNpcT_onTmpBit__FUl
/* 8056FF84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056FF88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056FF8C  3B A3 09 58 */	addi r29, r3, 0x958
/* 8056FF90  7F A3 EB 78 */	mr r3, r29
/* 8056FF94  38 80 00 67 */	li r4, 0x67
/* 8056FF98  3B 80 00 01 */	li r28, 1
/* 8056FF9C  4B AC 48 C4 */	b isSwitch__12dSv_memBit_cCFi
/* 8056FFA0  2C 03 00 00 */	cmpwi r3, 0
/* 8056FFA4  41 82 00 20 */	beq lbl_8056FFC4
/* 8056FFA8  7F A3 EB 78 */	mr r3, r29
/* 8056FFAC  38 80 00 68 */	li r4, 0x68
/* 8056FFB0  3B 80 00 02 */	li r28, 2
/* 8056FFB4  4B AC 48 AC */	b isSwitch__12dSv_memBit_cCFi
/* 8056FFB8  2C 03 00 00 */	cmpwi r3, 0
/* 8056FFBC  41 82 00 08 */	beq lbl_8056FFC4
/* 8056FFC0  3B 80 00 03 */	li r28, 3
lbl_8056FFC4:
/* 8056FFC4  57 9C 08 3C */	slwi r28, r28, 1
/* 8056FFC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056FFCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056FFD0  88 03 00 EC */	lbz r0, 0xec(r3)
/* 8056FFD4  28 00 00 00 */	cmplwi r0, 0
/* 8056FFD8  40 82 00 28 */	bne lbl_80570000
/* 8056FFDC  3B 9C 00 01 */	addi r28, r28, 1
/* 8056FFE0  48 00 00 20 */	b lbl_80570000
lbl_8056FFE4:
/* 8056FFE4  57 9C 08 3C */	slwi r28, r28, 1
/* 8056FFE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056FFEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056FFF0  88 03 00 EC */	lbz r0, 0xec(r3)
/* 8056FFF4  28 00 00 03 */	cmplwi r0, 3
/* 8056FFF8  40 80 00 08 */	bge lbl_80570000
/* 8056FFFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80570000:
/* 80570000  57 80 08 3C */	slwi r0, r28, 1
/* 80570004  38 61 00 0C */	addi r3, r1, 0xc
/* 80570008  7C 03 02 2E */	lhzx r0, r3, r0
/* 8057000C  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80570010  7F C3 F3 78 */	mr r3, r30
/* 80570014  4B BD A2 10 */	b evtChange__8daNpcT_cFv
/* 80570018  48 00 00 3C */	b lbl_80570054
lbl_8057001C:
/* 8057001C  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80570020  28 00 00 01 */	cmplwi r0, 1
/* 80570024  40 82 00 30 */	bne lbl_80570054
/* 80570028  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8057002C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80570030  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80570034  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80570038  4B BD 56 A8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8057003C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80570040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80570044  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80570048  4B AD 24 20 */	b reset__14dEvt_control_cFv
/* 8057004C  38 00 00 03 */	li r0, 3
/* 80570050  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80570054:
/* 80570054  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80570058  2C 00 00 01 */	cmpwi r0, 1
/* 8057005C  41 82 00 28 */	beq lbl_80570084
/* 80570060  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80570064  4B BD 56 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80570068  38 00 00 00 */	li r0, 0
/* 8057006C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80570070  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80570074  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80570078  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8057007C  38 00 00 01 */	li r0, 1
/* 80570080  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80570084:
/* 80570084  38 00 00 00 */	li r0, 0
/* 80570088  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8057008C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80570090  28 00 00 00 */	cmplwi r0, 0
/* 80570094  40 82 00 34 */	bne lbl_805700C8
/* 80570098  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8057009C  28 00 00 08 */	cmplwi r0, 8
/* 805700A0  40 82 00 14 */	bne lbl_805700B4
/* 805700A4  38 60 00 49 */	li r3, 0x49
/* 805700A8  4B BD CA 04 */	b daNpcT_chkEvtBit__FUl
/* 805700AC  2C 03 00 00 */	cmpwi r3, 0
/* 805700B0  40 82 00 18 */	bne lbl_805700C8
lbl_805700B4:
/* 805700B4  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 805700B8  28 00 00 0D */	cmplwi r0, 0xd
/* 805700BC  41 82 00 0C */	beq lbl_805700C8
/* 805700C0  28 00 00 06 */	cmplwi r0, 6
/* 805700C4  40 82 00 90 */	bne lbl_80570154
lbl_805700C8:
/* 805700C8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805700CC  2C 00 00 00 */	cmpwi r0, 0
/* 805700D0  41 82 00 24 */	beq lbl_805700F4
/* 805700D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805700D8  4B BD 56 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 805700DC  38 00 00 00 */	li r0, 0
/* 805700E0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805700E4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805700E8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805700EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805700F0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805700F4:
/* 805700F4  38 00 00 00 */	li r0, 0
/* 805700F8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805700FC  48 00 00 58 */	b lbl_80570154
lbl_80570100:
/* 80570100  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80570104  2C 00 00 01 */	cmpwi r0, 1
/* 80570108  41 82 00 28 */	beq lbl_80570130
/* 8057010C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80570110  4B BD 55 EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80570114  38 00 00 00 */	li r0, 0
/* 80570118  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8057011C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80570120  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80570124  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80570128  38 00 00 01 */	li r0, 1
/* 8057012C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80570130:
/* 80570130  38 00 00 00 */	li r0, 0
/* 80570134  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80570138  7F C3 F3 78 */	mr r3, r30
/* 8057013C  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80570140  38 A0 00 1F */	li r5, 0x1f
/* 80570144  38 C0 00 24 */	li r6, 0x24
/* 80570148  38 E0 00 0F */	li r7, 0xf
/* 8057014C  39 00 00 00 */	li r8, 0
/* 80570150  4B BD B4 F8 */	b step__8daNpcT_cFsiiii
lbl_80570154:
/* 80570154  38 60 00 00 */	li r3, 0
/* 80570158  39 61 00 30 */	addi r11, r1, 0x30
/* 8057015C  4B DF 20 C8 */	b _restgpr_28
/* 80570160  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80570164  7C 08 03 A6 */	mtlr r0
/* 80570168  38 21 00 30 */	addi r1, r1, 0x30
/* 8057016C  4E 80 00 20 */	blr 
