lbl_8095FD9C:
/* 8095FD9C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8095FDA0  7C 08 02 A6 */	mflr r0
/* 8095FDA4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8095FDA8  39 61 00 50 */	addi r11, r1, 0x50
/* 8095FDAC  4B A0 24 2C */	b _savegpr_28
/* 8095FDB0  7C 7D 1B 78 */	mr r29, r3
/* 8095FDB4  3C 80 80 96 */	lis r4, m__17daNpcAshB_Param_c@ha
/* 8095FDB8  3B E4 20 E4 */	addi r31, r4, m__17daNpcAshB_Param_c@l
/* 8095FDBC  3B C0 00 00 */	li r30, 0
/* 8095FDC0  A0 03 0D E8 */	lhz r0, 0xde8(r3)
/* 8095FDC4  2C 00 00 02 */	cmpwi r0, 2
/* 8095FDC8  41 82 00 6C */	beq lbl_8095FE34
/* 8095FDCC  40 80 00 10 */	bge lbl_8095FDDC
/* 8095FDD0  2C 00 00 00 */	cmpwi r0, 0
/* 8095FDD4  41 82 00 14 */	beq lbl_8095FDE8
/* 8095FDD8  48 00 04 EC */	b lbl_809602C4
lbl_8095FDDC:
/* 8095FDDC  2C 00 00 04 */	cmpwi r0, 4
/* 8095FDE0  40 80 04 E4 */	bge lbl_809602C4
/* 8095FDE4  48 00 04 A4 */	b lbl_80960288
lbl_8095FDE8:
/* 8095FDE8  A8 9D 0D E4 */	lha r4, 0xde4(r29)
/* 8095FDEC  38 A0 00 00 */	li r5, 0
/* 8095FDF0  4B 7F 3F 2C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 8095FDF4  38 00 00 00 */	li r0, 0
/* 8095FDF8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095FDFC  90 1D 09 50 */	stw r0, 0x950(r29)
/* 8095FE00  98 1D 0D EC */	stb r0, 0xdec(r29)
/* 8095FE04  38 00 00 01 */	li r0, 1
/* 8095FE08  98 1D 0D EE */	stb r0, 0xdee(r29)
/* 8095FE0C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8095FE10  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8095FE14  A8 1D 0D E6 */	lha r0, 0xde6(r29)
/* 8095FE18  2C 00 00 03 */	cmpwi r0, 3
/* 8095FE1C  41 82 00 0C */	beq lbl_8095FE28
/* 8095FE20  38 00 00 03 */	li r0, 3
/* 8095FE24  B0 1D 0D E6 */	sth r0, 0xde6(r29)
lbl_8095FE28:
/* 8095FE28  38 00 00 02 */	li r0, 2
/* 8095FE2C  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FE30  48 00 04 94 */	b lbl_809602C4
lbl_8095FE34:
/* 8095FE34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095FE38  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8095FE3C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095FE40  4B 6B A8 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095FE44  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 8095FE48  7C 60 07 34 */	extsh r0, r3
/* 8095FE4C  7C 04 00 00 */	cmpw r4, r0
/* 8095FE50  40 82 02 A4 */	bne lbl_809600F4
/* 8095FE54  7F A3 EB 78 */	mr r3, r29
/* 8095FE58  38 80 00 00 */	li r4, 0
/* 8095FE5C  38 A0 00 01 */	li r5, 1
/* 8095FE60  38 C0 00 00 */	li r6, 0
/* 8095FE64  4B 7F 3F 20 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8095FE68  2C 03 00 00 */	cmpwi r3, 0
/* 8095FE6C  41 82 01 E4 */	beq lbl_80960050
/* 8095FE70  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095FE74  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095FE78  4B 7F 08 44 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8095FE7C  38 00 00 00 */	li r0, 0
/* 8095FE80  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095FE84  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 8095FE88  38 81 00 10 */	addi r4, r1, 0x10
/* 8095FE8C  4B 8E A6 9C */	b getEventId__10dMsgFlow_cFPi
/* 8095FE90  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8095FE94  28 00 00 01 */	cmplwi r0, 1
/* 8095FE98  40 82 01 20 */	bne lbl_8095FFB8
/* 8095FE9C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8095FEA0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8095FEA4  38 A0 00 00 */	li r5, 0
/* 8095FEA8  38 C0 FF FF */	li r6, -1
/* 8095FEAC  38 E0 FF FF */	li r7, -1
/* 8095FEB0  39 00 00 00 */	li r8, 0
/* 8095FEB4  39 20 00 00 */	li r9, 0
/* 8095FEB8  4B 6B BD 30 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 8095FEBC  90 7D 0D D8 */	stw r3, 0xdd8(r29)
/* 8095FEC0  80 7D 0D D8 */	lwz r3, 0xdd8(r29)
/* 8095FEC4  3C 03 00 01 */	addis r0, r3, 1
/* 8095FEC8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8095FECC  41 82 01 7C */	beq lbl_80960048
/* 8095FED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095FED4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8095FED8  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 8095FEDC  7F A4 EB 78 */	mr r4, r29
/* 8095FEE0  3C A0 80 96 */	lis r5, struct_809623E8+0x0@ha
/* 8095FEE4  38 A5 23 E8 */	addi r5, r5, struct_809623E8+0x0@l
/* 8095FEE8  38 A5 00 1D */	addi r5, r5, 0x1d
/* 8095FEEC  38 C0 00 FF */	li r6, 0xff
/* 8095FEF0  4B 6E 78 68 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8095FEF4  7C 7E 1B 78 */	mr r30, r3
/* 8095FEF8  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 8095FEFC  7F A4 EB 78 */	mr r4, r29
/* 8095FF00  4B 6E 26 18 */	b reset__14dEvt_control_cFPv
/* 8095FF04  7F A3 EB 78 */	mr r3, r29
/* 8095FF08  7F C4 F3 78 */	mr r4, r30
/* 8095FF0C  38 A0 00 01 */	li r5, 1
/* 8095FF10  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8095FF14  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8095FF18  4B 6B B6 CC */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 8095FF1C  38 00 00 01 */	li r0, 1
/* 8095FF20  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 8095FF24  3C 60 80 96 */	lis r3, lit_4874@ha
/* 8095FF28  38 83 26 14 */	addi r4, r3, lit_4874@l
/* 8095FF2C  80 64 00 00 */	lwz r3, 0(r4)
/* 8095FF30  80 04 00 04 */	lwz r0, 4(r4)
/* 8095FF34  90 61 00 20 */	stw r3, 0x20(r1)
/* 8095FF38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095FF3C  80 04 00 08 */	lwz r0, 8(r4)
/* 8095FF40  90 01 00 28 */	stw r0, 0x28(r1)
/* 8095FF44  38 00 00 03 */	li r0, 3
/* 8095FF48  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FF4C  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FF50  4B A0 20 C8 */	b __ptmf_test
/* 8095FF54  2C 03 00 00 */	cmpwi r3, 0
/* 8095FF58  41 82 00 18 */	beq lbl_8095FF70
/* 8095FF5C  7F A3 EB 78 */	mr r3, r29
/* 8095FF60  38 80 00 00 */	li r4, 0
/* 8095FF64  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FF68  4B A0 21 1C */	b __ptmf_scall
/* 8095FF6C  60 00 00 00 */	nop 
lbl_8095FF70:
/* 8095FF70  38 00 00 00 */	li r0, 0
/* 8095FF74  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FF78  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8095FF7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095FF80  90 7D 0D C4 */	stw r3, 0xdc4(r29)
/* 8095FF84  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 8095FF88  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8095FF8C  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 8095FF90  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FF94  4B A0 20 84 */	b __ptmf_test
/* 8095FF98  2C 03 00 00 */	cmpwi r3, 0
/* 8095FF9C  41 82 00 AC */	beq lbl_80960048
/* 8095FFA0  7F A3 EB 78 */	mr r3, r29
/* 8095FFA4  38 80 00 00 */	li r4, 0
/* 8095FFA8  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FFAC  4B A0 20 D8 */	b __ptmf_scall
/* 8095FFB0  60 00 00 00 */	nop 
/* 8095FFB4  48 00 00 94 */	b lbl_80960048
lbl_8095FFB8:
/* 8095FFB8  3C 60 80 96 */	lis r3, lit_4877@ha
/* 8095FFBC  38 83 26 20 */	addi r4, r3, lit_4877@l
/* 8095FFC0  80 64 00 00 */	lwz r3, 0(r4)
/* 8095FFC4  80 04 00 04 */	lwz r0, 4(r4)
/* 8095FFC8  90 61 00 14 */	stw r3, 0x14(r1)
/* 8095FFCC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095FFD0  80 04 00 08 */	lwz r0, 8(r4)
/* 8095FFD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095FFD8  38 00 00 03 */	li r0, 3
/* 8095FFDC  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FFE0  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FFE4  4B A0 20 34 */	b __ptmf_test
/* 8095FFE8  2C 03 00 00 */	cmpwi r3, 0
/* 8095FFEC  41 82 00 18 */	beq lbl_80960004
/* 8095FFF0  7F A3 EB 78 */	mr r3, r29
/* 8095FFF4  38 80 00 00 */	li r4, 0
/* 8095FFF8  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FFFC  4B A0 20 88 */	b __ptmf_scall
/* 80960000  60 00 00 00 */	nop 
lbl_80960004:
/* 80960004  38 00 00 00 */	li r0, 0
/* 80960008  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8096000C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80960010  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80960014  90 7D 0D C4 */	stw r3, 0xdc4(r29)
/* 80960018  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 8096001C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80960020  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80960024  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80960028  4B A0 1F F0 */	b __ptmf_test
/* 8096002C  2C 03 00 00 */	cmpwi r3, 0
/* 80960030  41 82 00 18 */	beq lbl_80960048
/* 80960034  7F A3 EB 78 */	mr r3, r29
/* 80960038  38 80 00 00 */	li r4, 0
/* 8096003C  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 80960040  4B A0 20 44 */	b __ptmf_scall
/* 80960044  60 00 00 00 */	nop 
lbl_80960048:
/* 80960048  3B C0 00 01 */	li r30, 1
/* 8096004C  48 00 02 24 */	b lbl_80960270
lbl_80960050:
/* 80960050  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80960054  7F A3 EB 78 */	mr r3, r29
/* 80960058  38 81 00 0C */	addi r4, r1, 0xc
/* 8096005C  38 A1 00 08 */	addi r5, r1, 8
/* 80960060  7F A6 EB 78 */	mr r6, r29
/* 80960064  38 E0 00 00 */	li r7, 0
/* 80960068  4B 7F 36 B0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 8096006C  2C 03 00 00 */	cmpwi r3, 0
/* 80960070  41 82 00 44 */	beq lbl_809600B4
/* 80960074  7F A3 EB 78 */	mr r3, r29
/* 80960078  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8096007C  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80960080  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80960084  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80960088  7D 89 03 A6 */	mtctr r12
/* 8096008C  4E 80 04 21 */	bctrl 
/* 80960090  7F A3 EB 78 */	mr r3, r29
/* 80960094  80 81 00 08 */	lwz r4, 8(r1)
/* 80960098  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8096009C  38 A0 00 00 */	li r5, 0
/* 809600A0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809600A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809600A8  7D 89 03 A6 */	mtctr r12
/* 809600AC  4E 80 04 21 */	bctrl 
/* 809600B0  48 00 01 C0 */	b lbl_80960270
lbl_809600B4:
/* 809600B4  2C 1C 00 00 */	cmpwi r28, 0
/* 809600B8  41 82 01 B8 */	beq lbl_80960270
/* 809600BC  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 809600C0  2C 00 00 00 */	cmpwi r0, 0
/* 809600C4  40 82 01 AC */	bne lbl_80960270
/* 809600C8  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 809600CC  2C 00 00 02 */	cmpwi r0, 2
/* 809600D0  41 82 01 A0 */	beq lbl_80960270
/* 809600D4  7F A3 EB 78 */	mr r3, r29
/* 809600D8  38 80 00 06 */	li r4, 6
/* 809600DC  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 809600E0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809600E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809600E8  7D 89 03 A6 */	mtctr r12
/* 809600EC  4E 80 04 21 */	bctrl 
/* 809600F0  48 00 01 80 */	b lbl_80960270
lbl_809600F4:
/* 809600F4  7F A3 EB 78 */	mr r3, r29
/* 809600F8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809600FC  4B 6B A6 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80960100  7C 7C 1B 78 */	mr r28, r3
/* 80960104  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80960108  2C 00 00 00 */	cmpwi r0, 0
/* 8096010C  40 82 00 D4 */	bne lbl_809601E0
/* 80960110  C0 5F 02 AC */	lfs f2, 0x2ac(r31)
/* 80960114  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80960118  7C 00 E0 50 */	subf r0, r0, r28
/* 8096011C  7C 00 07 34 */	extsh r0, r0
/* 80960120  C8 3F 02 C8 */	lfd f1, 0x2c8(r31)
/* 80960124  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80960128  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096012C  3C 00 43 30 */	lis r0, 0x4330
/* 80960130  90 01 00 30 */	stw r0, 0x30(r1)
/* 80960134  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80960138  EC 00 08 28 */	fsubs f0, f0, f1
/* 8096013C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80960140  FC 00 02 10 */	fabs f0, f0
/* 80960144  FC 00 00 18 */	frsp f0, f0
/* 80960148  FC 00 00 1E */	fctiwz f0, f0
/* 8096014C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80960150  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80960154  2C 00 00 28 */	cmpwi r0, 0x28
/* 80960158  40 81 00 40 */	ble lbl_80960198
/* 8096015C  7F A3 EB 78 */	mr r3, r29
/* 80960160  38 80 00 06 */	li r4, 6
/* 80960164  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80960168  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8096016C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80960170  7D 89 03 A6 */	mtctr r12
/* 80960174  4E 80 04 21 */	bctrl 
/* 80960178  7F A3 EB 78 */	mr r3, r29
/* 8096017C  38 80 00 0A */	li r4, 0xa
/* 80960180  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80960184  38 A0 00 00 */	li r5, 0
/* 80960188  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8096018C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80960190  7D 89 03 A6 */	mtctr r12
/* 80960194  4E 80 04 21 */	bctrl 
lbl_80960198:
/* 80960198  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 8096019C  38 00 00 00 */	li r0, 0
/* 809601A0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809601A4  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 809601A8  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 809601AC  7C 03 00 00 */	cmpw r3, r0
/* 809601B0  40 82 00 10 */	bne lbl_809601C0
/* 809601B4  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 809601B8  38 03 00 01 */	addi r0, r3, 1
/* 809601BC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809601C0:
/* 809601C0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809601C4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 809601C8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 809601CC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 809601D0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 809601D4  38 03 00 01 */	addi r0, r3, 1
/* 809601D8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809601DC  48 00 00 60 */	b lbl_8096023C
lbl_809601E0:
/* 809601E0  2C 00 00 01 */	cmpwi r0, 1
/* 809601E4  40 82 00 58 */	bne lbl_8096023C
/* 809601E8  7F A3 EB 78 */	mr r3, r29
/* 809601EC  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 809601F0  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 809601F4  38 A0 00 00 */	li r5, 0
/* 809601F8  4B 7F 3C FC */	b turn__8daNpcF_cFsfi
/* 809601FC  2C 03 00 00 */	cmpwi r3, 0
/* 80960200  41 82 00 2C */	beq lbl_8096022C
/* 80960204  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80960208  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8096020C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80960210  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80960214  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80960218  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 8096021C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80960220  38 03 00 01 */	addi r0, r3, 1
/* 80960224  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80960228  48 00 00 14 */	b lbl_8096023C
lbl_8096022C:
/* 8096022C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80960230  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80960234  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80960238  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_8096023C:
/* 8096023C  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80960240  2C 00 00 01 */	cmpwi r0, 1
/* 80960244  40 81 00 2C */	ble lbl_80960270
/* 80960248  7F A3 EB 78 */	mr r3, r29
/* 8096024C  38 80 00 00 */	li r4, 0
/* 80960250  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80960254  38 A0 00 00 */	li r5, 0
/* 80960258  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8096025C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80960260  7D 89 03 A6 */	mtctr r12
/* 80960264  4E 80 04 21 */	bctrl 
/* 80960268  38 00 00 00 */	li r0, 0
/* 8096026C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80960270:
/* 80960270  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80960274  41 82 00 50 */	beq lbl_809602C4
/* 80960278  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8096027C  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80960280  B0 1D 0D E4 */	sth r0, 0xde4(r29)
/* 80960284  48 00 00 40 */	b lbl_809602C4
lbl_80960288:
/* 80960288  38 80 00 06 */	li r4, 6
/* 8096028C  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80960290  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80960294  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80960298  7D 89 03 A6 */	mtctr r12
/* 8096029C  4E 80 04 21 */	bctrl 
/* 809602A0  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809602A4  28 00 00 00 */	cmplwi r0, 0
/* 809602A8  40 82 00 14 */	bne lbl_809602BC
/* 809602AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809602B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809602B4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809602B8  4B 6E 21 B0 */	b reset__14dEvt_control_cFv
lbl_809602BC:
/* 809602BC  38 00 00 00 */	li r0, 0
/* 809602C0  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809602C4:
/* 809602C4  7F C3 F3 78 */	mr r3, r30
/* 809602C8  39 61 00 50 */	addi r11, r1, 0x50
/* 809602CC  4B A0 1F 58 */	b _restgpr_28
/* 809602D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809602D4  7C 08 03 A6 */	mtlr r0
/* 809602D8  38 21 00 50 */	addi r1, r1, 0x50
/* 809602DC  4E 80 00 20 */	blr 
