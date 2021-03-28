lbl_806C4F0C:
/* 806C4F0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806C4F10  7C 08 02 A6 */	mflr r0
/* 806C4F14  90 01 00 84 */	stw r0, 0x84(r1)
/* 806C4F18  39 61 00 80 */	addi r11, r1, 0x80
/* 806C4F1C  4B C9 D2 B8 */	b _savegpr_27
/* 806C4F20  7C 7C 1B 78 */	mr r28, r3
/* 806C4F24  3C 80 80 6C */	lis r4, lit_3906@ha
/* 806C4F28  3B C4 74 E8 */	addi r30, r4, lit_3906@l
/* 806C4F2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C4F30  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 806C4F34  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 806C4F38  7C 00 07 74 */	extsb r0, r0
/* 806C4F3C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806C4F40  7C 9F 02 14 */	add r4, r31, r0
/* 806C4F44  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 806C4F48  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 806C4F4C  A8 03 0E 90 */	lha r0, 0xe90(r3)
/* 806C4F50  2C 00 00 04 */	cmpwi r0, 4
/* 806C4F54  41 82 05 D8 */	beq lbl_806C552C
/* 806C4F58  40 80 00 20 */	bge lbl_806C4F78
/* 806C4F5C  2C 00 00 01 */	cmpwi r0, 1
/* 806C4F60  41 82 00 3C */	beq lbl_806C4F9C
/* 806C4F64  40 80 00 08 */	bge lbl_806C4F6C
/* 806C4F68  48 00 09 0C */	b lbl_806C5874
lbl_806C4F6C:
/* 806C4F6C  2C 00 00 03 */	cmpwi r0, 3
/* 806C4F70  40 80 03 7C */	bge lbl_806C52EC
/* 806C4F74  48 00 01 FC */	b lbl_806C5170
lbl_806C4F78:
/* 806C4F78  2C 00 00 0B */	cmpwi r0, 0xb
/* 806C4F7C  41 82 08 00 */	beq lbl_806C577C
/* 806C4F80  40 80 00 10 */	bge lbl_806C4F90
/* 806C4F84  2C 00 00 0A */	cmpwi r0, 0xa
/* 806C4F88  40 80 07 98 */	bge lbl_806C5720
/* 806C4F8C  48 00 08 E8 */	b lbl_806C5874
lbl_806C4F90:
/* 806C4F90  2C 00 00 64 */	cmpwi r0, 0x64
/* 806C4F94  41 82 08 60 */	beq lbl_806C57F4
/* 806C4F98  48 00 08 DC */	b lbl_806C5874
lbl_806C4F9C:
/* 806C4F9C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 806C4FA0  28 00 00 02 */	cmplwi r0, 2
/* 806C4FA4  41 82 00 28 */	beq lbl_806C4FCC
/* 806C4FA8  38 80 00 02 */	li r4, 2
/* 806C4FAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806C4FB0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806C4FB4  38 C0 00 00 */	li r6, 0
/* 806C4FB8  4B 95 69 50 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806C4FBC  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 806C4FC0  60 00 00 02 */	ori r0, r0, 2
/* 806C4FC4  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 806C4FC8  48 00 0A 14 */	b lbl_806C59DC
lbl_806C4FCC:
/* 806C4FCC  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C4FD0  4B A9 C5 00 */	b Stop__9dCamera_cFv
/* 806C4FD4  38 00 00 02 */	li r0, 2
/* 806C4FD8  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C4FDC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 806C4FE0  D0 1C 0E E8 */	stfs f0, 0xee8(r28)
/* 806C4FE4  38 00 00 00 */	li r0, 0
/* 806C4FE8  B0 1C 0E 92 */	sth r0, 0xe92(r28)
/* 806C4FEC  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C4FF0  38 80 00 03 */	li r4, 3
/* 806C4FF4  4B A9 E0 18 */	b SetTrimSize__9dCamera_cFl
/* 806C4FF8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806C4FFC  38 00 00 03 */	li r0, 3
/* 806C5000  B0 03 06 04 */	sth r0, 0x604(r3)
/* 806C5004  38 00 00 00 */	li r0, 0
/* 806C5008  90 03 06 0C */	stw r0, 0x60c(r3)
/* 806C500C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 806C5010  D0 1C 06 74 */	stfs f0, 0x674(r28)
/* 806C5014  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 806C5018  D0 1C 06 78 */	stfs f0, 0x678(r28)
/* 806C501C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806C5020  D0 1C 06 7C */	stfs f0, 0x67c(r28)
/* 806C5024  38 00 50 00 */	li r0, 0x5000
/* 806C5028  B0 1C 06 84 */	sth r0, 0x684(r28)
/* 806C502C  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 806C5030  D0 5C 0E A0 */	stfs f2, 0xea0(r28)
/* 806C5034  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 806C5038  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
/* 806C503C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 806C5040  D0 1C 0E A8 */	stfs f0, 0xea8(r28)
/* 806C5044  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 806C5048  D0 1C 0E 94 */	stfs f0, 0xe94(r28)
/* 806C504C  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 806C5050  D0 3C 0E 98 */	stfs f1, 0xe98(r28)
/* 806C5054  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 806C5058  D0 1C 0E 9C */	stfs f0, 0xe9c(r28)
/* 806C505C  D0 5C 0E B8 */	stfs f2, 0xeb8(r28)
/* 806C5060  D0 3C 0E BC */	stfs f1, 0xebc(r28)
/* 806C5064  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 806C5068  D0 1C 0E C0 */	stfs f0, 0xec0(r28)
/* 806C506C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 806C5070  D0 1C 0E AC */	stfs f0, 0xeac(r28)
/* 806C5074  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806C5078  D0 1C 0E B0 */	stfs f0, 0xeb0(r28)
/* 806C507C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 806C5080  D0 1C 0E B4 */	stfs f0, 0xeb4(r28)
/* 806C5084  C0 3C 0E AC */	lfs f1, 0xeac(r28)
/* 806C5088  C0 1C 0E 94 */	lfs f0, 0xe94(r28)
/* 806C508C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5090  FC 00 02 10 */	fabs f0, f0
/* 806C5094  FC 00 00 18 */	frsp f0, f0
/* 806C5098  D0 1C 0E C4 */	stfs f0, 0xec4(r28)
/* 806C509C  C0 3C 0E B0 */	lfs f1, 0xeb0(r28)
/* 806C50A0  C0 1C 0E 98 */	lfs f0, 0xe98(r28)
/* 806C50A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C50A8  FC 00 02 10 */	fabs f0, f0
/* 806C50AC  FC 00 00 18 */	frsp f0, f0
/* 806C50B0  D0 1C 0E C8 */	stfs f0, 0xec8(r28)
/* 806C50B4  C0 3C 0E B4 */	lfs f1, 0xeb4(r28)
/* 806C50B8  C0 1C 0E 9C */	lfs f0, 0xe9c(r28)
/* 806C50BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C50C0  FC 00 02 10 */	fabs f0, f0
/* 806C50C4  FC 00 00 18 */	frsp f0, f0
/* 806C50C8  D0 1C 0E CC */	stfs f0, 0xecc(r28)
/* 806C50CC  C0 3C 0E B8 */	lfs f1, 0xeb8(r28)
/* 806C50D0  C0 1C 0E A0 */	lfs f0, 0xea0(r28)
/* 806C50D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C50D8  FC 00 02 10 */	fabs f0, f0
/* 806C50DC  FC 00 00 18 */	frsp f0, f0
/* 806C50E0  D0 1C 0E D0 */	stfs f0, 0xed0(r28)
/* 806C50E4  C0 3C 0E BC */	lfs f1, 0xebc(r28)
/* 806C50E8  C0 1C 0E A4 */	lfs f0, 0xea4(r28)
/* 806C50EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C50F0  FC 00 02 10 */	fabs f0, f0
/* 806C50F4  FC 00 00 18 */	frsp f0, f0
/* 806C50F8  D0 1C 0E D4 */	stfs f0, 0xed4(r28)
/* 806C50FC  C0 3C 0E C0 */	lfs f1, 0xec0(r28)
/* 806C5100  C0 1C 0E A8 */	lfs f0, 0xea8(r28)
/* 806C5104  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5108  FC 00 02 10 */	fabs f0, f0
/* 806C510C  FC 00 00 18 */	frsp f0, f0
/* 806C5110  D0 1C 0E D8 */	stfs f0, 0xed8(r28)
/* 806C5114  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C5118  D0 1C 0E E4 */	stfs f0, 0xee4(r28)
/* 806C511C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C5120  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C5124  80 63 00 00 */	lwz r3, 0(r3)
/* 806C5128  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806C512C  38 80 00 01 */	li r4, 1
/* 806C5130  4B BE F0 34 */	b setBattleBgmOff__8Z2SeqMgrFb
/* 806C5134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C5138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C513C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806C5140  7F 84 E3 78 */	mr r4, r28
/* 806C5144  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 806C5148  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 806C514C  38 C0 00 00 */	li r6, 0
/* 806C5150  4B 97 D7 C4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 806C5154  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C5158  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C515C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806C5160  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 806C5164  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806C5168  7C 05 07 74 */	extsb r5, r0
/* 806C516C  4B 97 00 94 */	b onSwitch__10dSv_info_cFii
lbl_806C5170:
/* 806C5170  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 806C5174  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C5178  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 806C517C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C5180  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 806C5184  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806C5188  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806C518C  38 81 00 48 */	addi r4, r1, 0x48
/* 806C5190  38 A0 00 00 */	li r5, 0
/* 806C5194  38 C0 00 00 */	li r6, 0
/* 806C5198  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806C519C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806C51A0  7D 89 03 A6 */	mtctr r12
/* 806C51A4  4E 80 04 21 */	bctrl 
/* 806C51A8  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C51AC  2C 00 00 32 */	cmpwi r0, 0x32
/* 806C51B0  40 81 00 24 */	ble lbl_806C51D4
/* 806C51B4  7F 83 E3 78 */	mr r3, r28
/* 806C51B8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806C51BC  4B FF FC 6D */	bl cam_3d_morf__FP10e_gb_classf
/* 806C51C0  38 7C 0E E4 */	addi r3, r28, 0xee4
/* 806C51C4  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 806C51C8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C51CC  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 806C51D0  4B BA A8 6C */	b cLib_addCalc2__FPffff
lbl_806C51D4:
/* 806C51D4  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C51D8  2C 00 00 AA */	cmpwi r0, 0xaa
/* 806C51DC  40 82 06 98 */	bne lbl_806C5874
/* 806C51E0  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 806C51E4  D0 1C 0E A0 */	stfs f0, 0xea0(r28)
/* 806C51E8  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 806C51EC  D0 3C 0E A4 */	stfs f1, 0xea4(r28)
/* 806C51F0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 806C51F4  D0 1C 0E A8 */	stfs f0, 0xea8(r28)
/* 806C51F8  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 806C51FC  D0 1C 0E 94 */	stfs f0, 0xe94(r28)
/* 806C5200  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 806C5204  D0 1C 0E 98 */	stfs f0, 0xe98(r28)
/* 806C5208  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 806C520C  D0 1C 0E 9C */	stfs f0, 0xe9c(r28)
/* 806C5210  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 806C5214  D0 1C 0E B8 */	stfs f0, 0xeb8(r28)
/* 806C5218  D0 3C 0E BC */	stfs f1, 0xebc(r28)
/* 806C521C  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 806C5220  D0 1C 0E C0 */	stfs f0, 0xec0(r28)
/* 806C5224  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 806C5228  D0 1C 0E AC */	stfs f0, 0xeac(r28)
/* 806C522C  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 806C5230  D0 1C 0E B0 */	stfs f0, 0xeb0(r28)
/* 806C5234  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 806C5238  D0 1C 0E B4 */	stfs f0, 0xeb4(r28)
/* 806C523C  C0 3C 0E AC */	lfs f1, 0xeac(r28)
/* 806C5240  C0 1C 0E 94 */	lfs f0, 0xe94(r28)
/* 806C5244  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5248  FC 00 02 10 */	fabs f0, f0
/* 806C524C  FC 00 00 18 */	frsp f0, f0
/* 806C5250  D0 1C 0E C4 */	stfs f0, 0xec4(r28)
/* 806C5254  C0 3C 0E B0 */	lfs f1, 0xeb0(r28)
/* 806C5258  C0 1C 0E 98 */	lfs f0, 0xe98(r28)
/* 806C525C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5260  FC 00 02 10 */	fabs f0, f0
/* 806C5264  FC 00 00 18 */	frsp f0, f0
/* 806C5268  D0 1C 0E C8 */	stfs f0, 0xec8(r28)
/* 806C526C  C0 3C 0E B4 */	lfs f1, 0xeb4(r28)
/* 806C5270  C0 1C 0E 9C */	lfs f0, 0xe9c(r28)
/* 806C5274  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5278  FC 00 02 10 */	fabs f0, f0
/* 806C527C  FC 00 00 18 */	frsp f0, f0
/* 806C5280  D0 1C 0E CC */	stfs f0, 0xecc(r28)
/* 806C5284  C0 3C 0E B8 */	lfs f1, 0xeb8(r28)
/* 806C5288  C0 1C 0E A0 */	lfs f0, 0xea0(r28)
/* 806C528C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5290  FC 00 02 10 */	fabs f0, f0
/* 806C5294  FC 00 00 18 */	frsp f0, f0
/* 806C5298  D0 1C 0E D0 */	stfs f0, 0xed0(r28)
/* 806C529C  C0 3C 0E BC */	lfs f1, 0xebc(r28)
/* 806C52A0  C0 1C 0E A4 */	lfs f0, 0xea4(r28)
/* 806C52A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C52A8  FC 00 02 10 */	fabs f0, f0
/* 806C52AC  FC 00 00 18 */	frsp f0, f0
/* 806C52B0  D0 1C 0E D4 */	stfs f0, 0xed4(r28)
/* 806C52B4  C0 3C 0E C0 */	lfs f1, 0xec0(r28)
/* 806C52B8  C0 1C 0E A8 */	lfs f0, 0xea8(r28)
/* 806C52BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C52C0  FC 00 02 10 */	fabs f0, f0
/* 806C52C4  FC 00 00 18 */	frsp f0, f0
/* 806C52C8  D0 1C 0E D8 */	stfs f0, 0xed8(r28)
/* 806C52CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C52D0  D0 1C 0E E4 */	stfs f0, 0xee4(r28)
/* 806C52D4  38 00 00 03 */	li r0, 3
/* 806C52D8  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C52DC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 806C52E0  D0 1C 0E E8 */	stfs f0, 0xee8(r28)
/* 806C52E4  38 00 00 00 */	li r0, 0
/* 806C52E8  B0 1C 0E 92 */	sth r0, 0xe92(r28)
lbl_806C52EC:
/* 806C52EC  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C52F0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806C52F4  40 81 00 24 */	ble lbl_806C5318
/* 806C52F8  7F 83 E3 78 */	mr r3, r28
/* 806C52FC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806C5300  4B FF FB 29 */	bl cam_3d_morf__FP10e_gb_classf
/* 806C5304  38 7C 0E E4 */	addi r3, r28, 0xee4
/* 806C5308  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 806C530C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C5310  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 806C5314  4B BA A7 28 */	b cLib_addCalc2__FPffff
lbl_806C5318:
/* 806C5318  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C531C  2C 00 00 82 */	cmpwi r0, 0x82
/* 806C5320  40 82 00 10 */	bne lbl_806C5330
/* 806C5324  A8 7C 06 9C */	lha r3, 0x69c(r28)
/* 806C5328  38 03 00 01 */	addi r0, r3, 1
/* 806C532C  B0 1C 06 9C */	sth r0, 0x69c(r28)
lbl_806C5330:
/* 806C5330  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C5334  2C 00 00 87 */	cmpwi r0, 0x87
/* 806C5338  40 82 00 30 */	bne lbl_806C5368
/* 806C533C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014C@ha */
/* 806C5340  38 03 01 4C */	addi r0, r3, 0x014C /* 0x0007014C@l */
/* 806C5344  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C5348  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806C534C  38 81 00 14 */	addi r4, r1, 0x14
/* 806C5350  38 A0 00 00 */	li r5, 0
/* 806C5354  38 C0 FF FF */	li r6, -1
/* 806C5358  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 806C535C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C5360  7D 89 03 A6 */	mtctr r12
/* 806C5364  4E 80 04 21 */	bctrl 
lbl_806C5368:
/* 806C5368  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C536C  2C 00 00 8F */	cmpwi r0, 0x8f
/* 806C5370  40 82 00 0C */	bne lbl_806C537C
/* 806C5374  38 00 00 02 */	li r0, 2
/* 806C5378  98 1C 06 70 */	stb r0, 0x670(r28)
lbl_806C537C:
/* 806C537C  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C5380  2C 00 00 A2 */	cmpwi r0, 0xa2
/* 806C5384  40 82 00 28 */	bne lbl_806C53AC
/* 806C5388  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806C538C  38 00 00 17 */	li r0, 0x17
/* 806C5390  90 03 06 14 */	stw r0, 0x614(r3)
/* 806C5394  38 00 00 01 */	li r0, 1
/* 806C5398  90 03 06 0C */	stw r0, 0x60c(r3)
/* 806C539C  38 00 00 02 */	li r0, 2
/* 806C53A0  90 03 06 10 */	stw r0, 0x610(r3)
/* 806C53A4  38 00 00 00 */	li r0, 0
/* 806C53A8  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_806C53AC:
/* 806C53AC  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C53B0  2C 00 00 BE */	cmpwi r0, 0xbe
/* 806C53B4  40 82 04 C0 */	bne lbl_806C5874
/* 806C53B8  A8 7C 06 9C */	lha r3, 0x69c(r28)
/* 806C53BC  38 03 00 01 */	addi r0, r3, 1
/* 806C53C0  B0 1C 06 9C */	sth r0, 0x69c(r28)
/* 806C53C4  38 00 00 04 */	li r0, 4
/* 806C53C8  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C53CC  38 00 00 00 */	li r0, 0
/* 806C53D0  B0 1C 0E 92 */	sth r0, 0xe92(r28)
/* 806C53D4  7F 83 E3 78 */	mr r3, r28
/* 806C53D8  38 80 00 18 */	li r4, 0x18
/* 806C53DC  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 806C53E0  38 A0 00 00 */	li r5, 0
/* 806C53E4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C53E8  4B FF CA 05 */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C53EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070158@ha */
/* 806C53F0  38 03 01 58 */	addi r0, r3, 0x0158 /* 0x00070158@l */
/* 806C53F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C53F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C53FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C5400  80 63 00 00 */	lwz r3, 0(r3)
/* 806C5404  38 81 00 0C */	addi r4, r1, 0xc
/* 806C5408  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806C540C  38 C0 00 00 */	li r6, 0
/* 806C5410  38 E0 00 00 */	li r7, 0
/* 806C5414  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5418  FC 40 08 90 */	fmr f2, f1
/* 806C541C  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 806C5420  FC 80 18 90 */	fmr f4, f3
/* 806C5424  39 00 00 00 */	li r8, 0
/* 806C5428  4B BE 65 5C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C542C  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 806C5430  D0 1C 0E A0 */	stfs f0, 0xea0(r28)
/* 806C5434  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 806C5438  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
/* 806C543C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 806C5440  D0 1C 0E A8 */	stfs f0, 0xea8(r28)
/* 806C5444  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 806C5448  D0 1C 0E 94 */	stfs f0, 0xe94(r28)
/* 806C544C  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 806C5450  D0 1C 0E 98 */	stfs f0, 0xe98(r28)
/* 806C5454  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 806C5458  D0 1C 0E 9C */	stfs f0, 0xe9c(r28)
/* 806C545C  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 806C5460  D0 1C 0E B8 */	stfs f0, 0xeb8(r28)
/* 806C5464  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 806C5468  D0 1C 0E BC */	stfs f0, 0xebc(r28)
/* 806C546C  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 806C5470  D0 1C 0E C0 */	stfs f0, 0xec0(r28)
/* 806C5474  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 806C5478  D0 1C 0E AC */	stfs f0, 0xeac(r28)
/* 806C547C  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 806C5480  D0 1C 0E B0 */	stfs f0, 0xeb0(r28)
/* 806C5484  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 806C5488  D0 1C 0E B4 */	stfs f0, 0xeb4(r28)
/* 806C548C  C0 3C 0E AC */	lfs f1, 0xeac(r28)
/* 806C5490  C0 1C 0E 94 */	lfs f0, 0xe94(r28)
/* 806C5494  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5498  FC 00 02 10 */	fabs f0, f0
/* 806C549C  FC 00 00 18 */	frsp f0, f0
/* 806C54A0  D0 1C 0E C4 */	stfs f0, 0xec4(r28)
/* 806C54A4  C0 3C 0E B0 */	lfs f1, 0xeb0(r28)
/* 806C54A8  C0 1C 0E 98 */	lfs f0, 0xe98(r28)
/* 806C54AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C54B0  FC 00 02 10 */	fabs f0, f0
/* 806C54B4  FC 00 00 18 */	frsp f0, f0
/* 806C54B8  D0 1C 0E C8 */	stfs f0, 0xec8(r28)
/* 806C54BC  C0 3C 0E B4 */	lfs f1, 0xeb4(r28)
/* 806C54C0  C0 1C 0E 9C */	lfs f0, 0xe9c(r28)
/* 806C54C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C54C8  FC 00 02 10 */	fabs f0, f0
/* 806C54CC  FC 00 00 18 */	frsp f0, f0
/* 806C54D0  D0 1C 0E CC */	stfs f0, 0xecc(r28)
/* 806C54D4  C0 3C 0E B8 */	lfs f1, 0xeb8(r28)
/* 806C54D8  C0 1C 0E A0 */	lfs f0, 0xea0(r28)
/* 806C54DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C54E0  FC 00 02 10 */	fabs f0, f0
/* 806C54E4  FC 00 00 18 */	frsp f0, f0
/* 806C54E8  D0 1C 0E D0 */	stfs f0, 0xed0(r28)
/* 806C54EC  C0 3C 0E BC */	lfs f1, 0xebc(r28)
/* 806C54F0  C0 1C 0E A4 */	lfs f0, 0xea4(r28)
/* 806C54F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C54F8  FC 00 02 10 */	fabs f0, f0
/* 806C54FC  FC 00 00 18 */	frsp f0, f0
/* 806C5500  D0 1C 0E D4 */	stfs f0, 0xed4(r28)
/* 806C5504  C0 3C 0E C0 */	lfs f1, 0xec0(r28)
/* 806C5508  C0 1C 0E A8 */	lfs f0, 0xea8(r28)
/* 806C550C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C5510  FC 00 02 10 */	fabs f0, f0
/* 806C5514  FC 00 00 18 */	frsp f0, f0
/* 806C5518  D0 1C 0E D8 */	stfs f0, 0xed8(r28)
/* 806C551C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C5520  D0 1C 0E E4 */	stfs f0, 0xee4(r28)
/* 806C5524  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 806C5528  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
lbl_806C552C:
/* 806C552C  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C5530  2C 00 00 30 */	cmpwi r0, 0x30
/* 806C5534  40 82 00 48 */	bne lbl_806C557C
/* 806C5538  7F 83 E3 78 */	mr r3, r28
/* 806C553C  38 80 00 0E */	li r4, 0xe
/* 806C5540  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 806C5544  38 A0 00 00 */	li r5, 0
/* 806C5548  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C554C  4B FF C7 F1 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C5550  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014D@ha */
/* 806C5554  38 03 01 4D */	addi r0, r3, 0x014D /* 0x0007014D@l */
/* 806C5558  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C555C  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806C5560  38 81 00 10 */	addi r4, r1, 0x10
/* 806C5564  38 A0 00 00 */	li r5, 0
/* 806C5568  38 C0 FF FF */	li r6, -1
/* 806C556C  81 9C 05 C4 */	lwz r12, 0x5c4(r28)
/* 806C5570  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C5574  7D 89 03 A6 */	mtctr r12
/* 806C5578  4E 80 04 21 */	bctrl 
lbl_806C557C:
/* 806C557C  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C5580  2C 00 00 36 */	cmpwi r0, 0x36
/* 806C5584  40 82 00 4C */	bne lbl_806C55D0
/* 806C5588  7F 83 E3 78 */	mr r3, r28
/* 806C558C  38 80 00 0E */	li r4, 0xe
/* 806C5590  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 806C5594  38 A0 00 00 */	li r5, 0
/* 806C5598  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C559C  4B FF C7 A1 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C55A0  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806C55A4  D0 1C 06 74 */	stfs f0, 0x674(r28)
/* 806C55A8  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 806C55AC  D0 1C 06 78 */	stfs f0, 0x678(r28)
/* 806C55B0  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 806C55B4  D0 1C 06 7C */	stfs f0, 0x67c(r28)
/* 806C55B8  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 806C55BC  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 806C55C0  EC 01 00 2A */	fadds f0, f1, f0
/* 806C55C4  D0 1C 06 78 */	stfs f0, 0x678(r28)
/* 806C55C8  38 00 00 01 */	li r0, 1
/* 806C55CC  98 1C 06 70 */	stb r0, 0x670(r28)
lbl_806C55D0:
/* 806C55D0  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C55D4  2C 00 00 44 */	cmpwi r0, 0x44
/* 806C55D8  40 82 00 64 */	bne lbl_806C563C
/* 806C55DC  7F 83 E3 78 */	mr r3, r28
/* 806C55E0  38 80 00 15 */	li r4, 0x15
/* 806C55E4  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 806C55E8  38 A0 00 00 */	li r5, 0
/* 806C55EC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C55F0  4B FF C7 FD */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C55F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070159@ha */
/* 806C55F8  38 03 01 59 */	addi r0, r3, 0x0159 /* 0x00070159@l */
/* 806C55FC  90 01 00 08 */	stw r0, 8(r1)
/* 806C5600  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C5604  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C5608  80 63 00 00 */	lwz r3, 0(r3)
/* 806C560C  38 81 00 08 */	addi r4, r1, 8
/* 806C5610  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806C5614  38 C0 00 00 */	li r6, 0
/* 806C5618  38 E0 00 00 */	li r7, 0
/* 806C561C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5620  FC 40 08 90 */	fmr f2, f1
/* 806C5624  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 806C5628  FC 80 18 90 */	fmr f4, f3
/* 806C562C  39 00 00 00 */	li r8, 0
/* 806C5630  4B BE 63 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C5634  38 00 00 00 */	li r0, 0
/* 806C5638  98 1C 09 55 */	stb r0, 0x955(r28)
lbl_806C563C:
/* 806C563C  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C5640  2C 00 00 96 */	cmpwi r0, 0x96
/* 806C5644  40 81 00 28 */	ble lbl_806C566C
/* 806C5648  7F 83 E3 78 */	mr r3, r28
/* 806C564C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806C5650  4B FF F7 D9 */	bl cam_3d_morf__FP10e_gb_classf
/* 806C5654  38 7C 0E E4 */	addi r3, r28, 0xee4
/* 806C5658  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 806C565C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C5660  C0 7E 01 9C */	lfs f3, 0x19c(r30)
/* 806C5664  4B BA A3 D8 */	b cLib_addCalc2__FPffff
/* 806C5668  48 00 00 20 */	b lbl_806C5688
lbl_806C566C:
/* 806C566C  2C 00 00 50 */	cmpwi r0, 0x50
/* 806C5670  41 80 00 18 */	blt lbl_806C5688
/* 806C5674  38 7C 0E A4 */	addi r3, r28, 0xea4
/* 806C5678  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 806C567C  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 806C5680  C0 7E 00 08 */	lfs f3, 8(r30)
/* 806C5684  4B BA A3 B8 */	b cLib_addCalc2__FPffff
lbl_806C5688:
/* 806C5688  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 806C568C  2C 00 00 15 */	cmpwi r0, 0x15
/* 806C5690  40 82 00 4C */	bne lbl_806C56DC
/* 806C5694  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 806C5698  38 80 00 01 */	li r4, 1
/* 806C569C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C56A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C56A4  40 82 00 18 */	bne lbl_806C56BC
/* 806C56A8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C56AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C56B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C56B4  41 82 00 08 */	beq lbl_806C56BC
/* 806C56B8  38 80 00 00 */	li r4, 0
lbl_806C56BC:
/* 806C56BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C56C0  41 82 00 1C */	beq lbl_806C56DC
/* 806C56C4  7F 83 E3 78 */	mr r3, r28
/* 806C56C8  38 80 00 1A */	li r4, 0x1a
/* 806C56CC  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 806C56D0  38 A0 00 02 */	li r5, 2
/* 806C56D4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C56D8  4B FF C7 15 */	bl body_anm_init__FP10e_gb_classifUcf
lbl_806C56DC:
/* 806C56DC  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C56E0  2C 00 00 DC */	cmpwi r0, 0xdc
/* 806C56E4  40 82 01 90 */	bne lbl_806C5874
/* 806C56E8  38 00 00 64 */	li r0, 0x64
/* 806C56EC  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C56F0  38 00 00 00 */	li r0, 0
/* 806C56F4  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 806C56F8  B0 1C 06 9C */	sth r0, 0x69c(r28)
/* 806C56FC  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 806C5700  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 806C5704  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C5708  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C570C  80 63 00 00 */	lwz r3, 0(r3)
/* 806C5710  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806C5714  38 80 00 00 */	li r4, 0
/* 806C5718  4B BE EA 4C */	b setBattleBgmOff__8Z2SeqMgrFb
/* 806C571C  48 00 01 58 */	b lbl_806C5874
lbl_806C5720:
/* 806C5720  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 806C5724  28 00 00 02 */	cmplwi r0, 2
/* 806C5728  41 82 00 28 */	beq lbl_806C5750
/* 806C572C  38 80 00 02 */	li r4, 2
/* 806C5730  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806C5734  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806C5738  38 C0 00 00 */	li r6, 0
/* 806C573C  4B 95 61 CC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806C5740  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 806C5744  60 00 00 02 */	ori r0, r0, 2
/* 806C5748  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 806C574C  48 00 02 90 */	b lbl_806C59DC
lbl_806C5750:
/* 806C5750  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C5754  4B A9 BD 7C */	b Stop__9dCamera_cFv
/* 806C5758  38 00 00 0B */	li r0, 0xb
/* 806C575C  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C5760  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 806C5764  D0 1C 0E E8 */	stfs f0, 0xee8(r28)
/* 806C5768  38 00 00 00 */	li r0, 0
/* 806C576C  B0 1C 0E 92 */	sth r0, 0xe92(r28)
/* 806C5770  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C5774  38 80 00 03 */	li r4, 3
/* 806C5778  4B A9 D8 94 */	b SetTrimSize__9dCamera_cFl
lbl_806C577C:
/* 806C577C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806C5780  D0 1C 0E A0 */	stfs f0, 0xea0(r28)
/* 806C5784  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 806C5788  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
/* 806C578C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 806C5790  D0 1C 0E A8 */	stfs f0, 0xea8(r28)
/* 806C5794  C0 3C 0E A4 */	lfs f1, 0xea4(r28)
/* 806C5798  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806C579C  EC 01 00 2A */	fadds f0, f1, f0
/* 806C57A0  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
/* 806C57A4  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806C57A8  D0 1C 0E 94 */	stfs f0, 0xe94(r28)
/* 806C57AC  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 806C57B0  D0 1C 0E 98 */	stfs f0, 0xe98(r28)
/* 806C57B4  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 806C57B8  D0 1C 0E 9C */	stfs f0, 0xe9c(r28)
/* 806C57BC  C0 3C 0E 98 */	lfs f1, 0xe98(r28)
/* 806C57C0  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 806C57C4  EC 01 00 2A */	fadds f0, f1, f0
/* 806C57C8  D0 1C 0E 98 */	stfs f0, 0xe98(r28)
/* 806C57CC  C0 3C 0E 9C */	lfs f1, 0xe9c(r28)
/* 806C57D0  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 806C57D4  EC 01 00 2A */	fadds f0, f1, f0
/* 806C57D8  D0 1C 0E 9C */	stfs f0, 0xe9c(r28)
/* 806C57DC  A8 1C 0E 92 */	lha r0, 0xe92(r28)
/* 806C57E0  2C 00 00 64 */	cmpwi r0, 0x64
/* 806C57E4  40 82 00 90 */	bne lbl_806C5874
/* 806C57E8  38 00 00 64 */	li r0, 0x64
/* 806C57EC  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C57F0  48 00 00 84 */	b lbl_806C5874
lbl_806C57F4:
/* 806C57F4  C0 1C 0E A0 */	lfs f0, 0xea0(r28)
/* 806C57F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C57FC  C0 1C 0E A4 */	lfs f0, 0xea4(r28)
/* 806C5800  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C5804  C0 1C 0E A8 */	lfs f0, 0xea8(r28)
/* 806C5808  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806C580C  C0 1C 0E 94 */	lfs f0, 0xe94(r28)
/* 806C5810  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806C5814  C0 1C 0E 98 */	lfs f0, 0xe98(r28)
/* 806C5818  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806C581C  C0 1C 0E 9C */	lfs f0, 0xe9c(r28)
/* 806C5820  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806C5824  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C5828  38 81 00 3C */	addi r4, r1, 0x3c
/* 806C582C  38 A1 00 30 */	addi r5, r1, 0x30
/* 806C5830  4B AB B3 E8 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 806C5834  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C5838  4B A9 BC 74 */	b Start__9dCamera_cFv
/* 806C583C  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C5840  38 80 00 00 */	li r4, 0
/* 806C5844  4B A9 D7 C8 */	b SetTrimSize__9dCamera_cFl
/* 806C5848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C584C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C5850  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806C5854  4B 97 CC 14 */	b reset__14dEvt_control_cFv
/* 806C5858  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806C585C  38 00 00 02 */	li r0, 2
/* 806C5860  B0 03 06 04 */	sth r0, 0x604(r3)
/* 806C5864  38 00 00 01 */	li r0, 1
/* 806C5868  90 03 06 14 */	stw r0, 0x614(r3)
/* 806C586C  38 00 00 00 */	li r0, 0
/* 806C5870  B0 1C 0E 90 */	sth r0, 0xe90(r28)
lbl_806C5874:
/* 806C5874  A8 1C 0E 90 */	lha r0, 0xe90(r28)
/* 806C5878  2C 00 00 00 */	cmpwi r0, 0
/* 806C587C  41 82 01 60 */	beq lbl_806C59DC
/* 806C5880  C0 1C 0E A0 */	lfs f0, 0xea0(r28)
/* 806C5884  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806C5888  C0 1C 0E A4 */	lfs f0, 0xea4(r28)
/* 806C588C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806C5890  C0 1C 0E A8 */	lfs f0, 0xea8(r28)
/* 806C5894  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806C5898  C0 1C 0E 94 */	lfs f0, 0xe94(r28)
/* 806C589C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806C58A0  C0 1C 0E 98 */	lfs f0, 0xe98(r28)
/* 806C58A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806C58A8  C0 1C 0E 9C */	lfs f0, 0xe9c(r28)
/* 806C58AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806C58B0  38 7D 02 48 */	addi r3, r29, 0x248
/* 806C58B4  38 81 00 24 */	addi r4, r1, 0x24
/* 806C58B8  38 A1 00 18 */	addi r5, r1, 0x18
/* 806C58BC  C0 3C 0E E8 */	lfs f1, 0xee8(r28)
/* 806C58C0  38 C0 00 00 */	li r6, 0
/* 806C58C4  4B AB B2 1C */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 806C58C8  A8 7C 0E 92 */	lha r3, 0xe92(r28)
/* 806C58CC  38 03 00 01 */	addi r0, r3, 1
/* 806C58D0  B0 1C 0E 92 */	sth r0, 0xe92(r28)
/* 806C58D4  A8 1C 0E 90 */	lha r0, 0xe90(r28)
/* 806C58D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 806C58DC  40 80 01 00 */	bge lbl_806C59DC
/* 806C58E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C58E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C58E8  3B A3 4E C8 */	addi r29, r3, 0x4ec8
/* 806C58EC  7F A3 EB 78 */	mr r3, r29
/* 806C58F0  7F 84 E3 78 */	mr r4, r28
/* 806C58F4  3C A0 80 04 */	lis r5, dEv_defaultSkipProc__FPvi@ha
/* 806C58F8  38 A5 25 E8 */	addi r5, r5, dEv_defaultSkipProc__FPvi@l
/* 806C58FC  38 C0 00 00 */	li r6, 0
/* 806C5900  4B 97 D0 14 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 806C5904  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 806C5908  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806C590C  41 82 00 D0 */	beq lbl_806C59DC
/* 806C5910  38 00 00 64 */	li r0, 0x64
/* 806C5914  B0 1C 0E 90 */	sth r0, 0xe90(r28)
/* 806C5918  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C591C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C5920  80 63 00 00 */	lwz r3, 0(r3)
/* 806C5924  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 806C5928  4B 94 6A B4 */	b mDoMtx_YrotS__FPA4_fs
/* 806C592C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C5930  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806C5934  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806C5938  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806C593C  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 806C5940  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806C5944  38 61 00 54 */	addi r3, r1, 0x54
/* 806C5948  38 9C 0E 94 */	addi r4, r28, 0xe94
/* 806C594C  4B BA B5 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C5950  38 7C 0E 94 */	addi r3, r28, 0xe94
/* 806C5954  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 806C5958  7C 65 1B 78 */	mr r5, r3
/* 806C595C  4B C8 17 34 */	b PSVECAdd
/* 806C5960  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 806C5964  D0 1C 0E A0 */	stfs f0, 0xea0(r28)
/* 806C5968  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806C596C  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
/* 806C5970  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 806C5974  D0 1C 0E A8 */	stfs f0, 0xea8(r28)
/* 806C5978  C0 3C 0E A4 */	lfs f1, 0xea4(r28)
/* 806C597C  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 806C5980  EC 01 00 2A */	fadds f0, f1, f0
/* 806C5984  D0 1C 0E A4 */	stfs f0, 0xea4(r28)
/* 806C5988  38 00 00 00 */	li r0, 0
/* 806C598C  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 806C5990  B0 1C 06 9C */	sth r0, 0x69c(r28)
/* 806C5994  B0 1C 06 9E */	sth r0, 0x69e(r28)
/* 806C5998  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 806C599C  7F 83 E3 78 */	mr r3, r28
/* 806C59A0  38 80 00 1A */	li r4, 0x1a
/* 806C59A4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C59A8  38 A0 00 02 */	li r5, 2
/* 806C59AC  FC 40 08 90 */	fmr f2, f1
/* 806C59B0  4B FF C4 3D */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C59B4  38 00 00 00 */	li r0, 0
/* 806C59B8  90 1C 06 6C */	stw r0, 0x66c(r28)
/* 806C59BC  B0 1C 06 86 */	sth r0, 0x686(r28)
/* 806C59C0  98 1C 09 55 */	stb r0, 0x955(r28)
/* 806C59C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C59C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C59CC  80 63 00 00 */	lwz r3, 0(r3)
/* 806C59D0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806C59D4  38 80 00 00 */	li r4, 0
/* 806C59D8  4B BE E7 8C */	b setBattleBgmOff__8Z2SeqMgrFb
lbl_806C59DC:
/* 806C59DC  39 61 00 80 */	addi r11, r1, 0x80
/* 806C59E0  4B C9 C8 40 */	b _restgpr_27
/* 806C59E4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806C59E8  7C 08 03 A6 */	mtlr r0
/* 806C59EC  38 21 00 80 */	addi r1, r1, 0x80
/* 806C59F0  4E 80 00 20 */	blr 
