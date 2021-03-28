lbl_80767E54:
/* 80767E54  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80767E58  7C 08 02 A6 */	mflr r0
/* 80767E5C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80767E60  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80767E64  4B BF A3 6C */	b _savegpr_26
/* 80767E68  7C 7D 1B 78 */	mr r29, r3
/* 80767E6C  3C 80 80 77 */	lis r4, lit_4007@ha
/* 80767E70  3B 64 B4 5C */	addi r27, r4, lit_4007@l
/* 80767E74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80767E78  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80767E7C  83 5C 5D AC */	lwz r26, 0x5dac(r28)
/* 80767E80  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 80767E84  7C 00 07 74 */	extsb r0, r0
/* 80767E88  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80767E8C  7C 9C 02 14 */	add r4, r28, r0
/* 80767E90  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 80767E94  3B C0 00 00 */	li r30, 0
/* 80767E98  A8 03 10 A8 */	lha r0, 0x10a8(r3)
/* 80767E9C  28 00 00 0F */	cmplwi r0, 0xf
/* 80767EA0  41 81 0B 4C */	bgt lbl_807689EC
/* 80767EA4  3C 80 80 77 */	lis r4, lit_5653@ha
/* 80767EA8  38 84 B7 F0 */	addi r4, r4, lit_5653@l
/* 80767EAC  54 00 10 3A */	slwi r0, r0, 2
/* 80767EB0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80767EB4  7C 09 03 A6 */	mtctr r0
/* 80767EB8  4E 80 04 20 */	bctr 
lbl_80767EBC:
/* 80767EBC  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80767EC0  28 00 00 02 */	cmplwi r0, 2
/* 80767EC4  41 82 00 28 */	beq lbl_80767EEC
/* 80767EC8  38 80 00 02 */	li r4, 2
/* 80767ECC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80767ED0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80767ED4  38 C0 00 00 */	li r6, 0
/* 80767ED8  4B 8B 3A 30 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80767EDC  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80767EE0  60 00 00 02 */	ori r0, r0, 2
/* 80767EE4  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80767EE8  48 00 0C 90 */	b lbl_80768B78
lbl_80767EEC:
/* 80767EEC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80767EF0  4B 9F 95 E0 */	b Stop__9dCamera_cFv
/* 80767EF4  38 00 00 02 */	li r0, 2
/* 80767EF8  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 80767EFC  38 00 00 00 */	li r0, 0
/* 80767F00  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 80767F04  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 80767F08  D0 1D 10 F4 */	stfs f0, 0x10f4(r29)
/* 80767F0C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80767F10  38 80 00 03 */	li r4, 3
/* 80767F14  4B 9F B0 F8 */	b SetTrimSize__9dCamera_cFl
/* 80767F18  38 00 00 03 */	li r0, 3
/* 80767F1C  B0 1A 06 04 */	sth r0, 0x604(r26)
/* 80767F20  38 00 00 00 */	li r0, 0
/* 80767F24  90 1A 06 0C */	stw r0, 0x60c(r26)
/* 80767F28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80767F2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80767F30  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80767F34  7F A4 EB 78 */	mr r4, r29
/* 80767F38  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80767F3C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80767F40  38 C0 00 00 */	li r6, 0
/* 80767F44  4B 8D A9 D0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80767F48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80767F4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80767F50  80 63 00 00 */	lwz r3, 0(r3)
/* 80767F54  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80767F58  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80767F5C  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80767F60  38 84 00 0D */	addi r4, r4, 0xd
/* 80767F64  4B B4 E2 84 */	b setDemoName__11Z2StatusMgrFPc
lbl_80767F68:
/* 80767F68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80767F6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80767F70  80 63 00 00 */	lwz r3, 0(r3)
/* 80767F74  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80767F78  4B 8A 44 64 */	b mDoMtx_YrotS__FPA4_fs
/* 80767F7C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80767F80  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80767F84  C0 1B 00 B4 */	lfs f0, 0xb4(r27)
/* 80767F88  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80767F8C  C0 1B 00 E4 */	lfs f0, 0xe4(r27)
/* 80767F90  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80767F94  38 61 00 90 */	addi r3, r1, 0x90
/* 80767F98  38 81 00 78 */	addi r4, r1, 0x78
/* 80767F9C  4B B0 8F 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 80767FA0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80767FA4  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 80767FA8  EC 40 18 2A */	fadds f2, f0, f3
/* 80767FAC  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80767FB0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80767FB4  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80767FB8  EC 00 08 2A */	fadds f0, f0, f1
/* 80767FBC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80767FC0  C0 1B 00 E8 */	lfs f0, 0xe8(r27)
/* 80767FC4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80767FC8  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 80767FCC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80767FD0  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80767FD4  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80767FD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767FDC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80767FE0  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80767FE4  2C 00 00 00 */	cmpwi r0, 0
/* 80767FE8  40 82 00 34 */	bne lbl_8076801C
/* 80767FEC  D0 7D 10 B8 */	stfs f3, 0x10b8(r29)
/* 80767FF0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80767FF4  D0 1D 10 BC */	stfs f0, 0x10bc(r29)
/* 80767FF8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80767FFC  D0 1D 10 C0 */	stfs f0, 0x10c0(r29)
/* 80768000  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80768004  D0 1D 10 AC */	stfs f0, 0x10ac(r29)
/* 80768008  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8076800C  D0 1D 10 B0 */	stfs f0, 0x10b0(r29)
/* 80768010  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80768014  D0 1D 10 B4 */	stfs f0, 0x10b4(r29)
/* 80768018  48 00 00 54 */	b lbl_8076806C
lbl_8076801C:
/* 8076801C  D0 5D 10 AC */	stfs f2, 0x10ac(r29)
/* 80768020  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80768024  D0 1D 10 B0 */	stfs f0, 0x10b0(r29)
/* 80768028  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8076802C  D0 1D 10 B4 */	stfs f0, 0x10b4(r29)
/* 80768030  38 7D 10 B8 */	addi r3, r29, 0x10b8
/* 80768034  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80768038  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 8076803C  C0 7B 00 00 */	lfs f3, 0(r27)
/* 80768040  4B B0 79 FC */	b cLib_addCalc2__FPffff
/* 80768044  38 7D 10 BC */	addi r3, r29, 0x10bc
/* 80768048  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8076804C  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 80768050  C0 7B 00 00 */	lfs f3, 0(r27)
/* 80768054  4B B0 79 E8 */	b cLib_addCalc2__FPffff
/* 80768058  38 7D 10 C0 */	addi r3, r29, 0x10c0
/* 8076805C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80768060  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 80768064  C0 7B 00 00 */	lfs f3, 0(r27)
/* 80768068  4B B0 79 D4 */	b cLib_addCalc2__FPffff
lbl_8076806C:
/* 8076806C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80768070  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80768074  80 63 00 00 */	lwz r3, 0(r3)
/* 80768078  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8076807C  4B 8A 43 60 */	b mDoMtx_YrotS__FPA4_fs
/* 80768080  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80768084  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80768088  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 8076808C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80768090  C0 1B 00 64 */	lfs f0, 0x64(r27)
/* 80768094  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80768098  38 61 00 90 */	addi r3, r1, 0x90
/* 8076809C  38 81 00 84 */	addi r4, r1, 0x84
/* 807680A0  4B B0 8E 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 807680A4  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 807680A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807680AC  EC 01 00 2A */	fadds f0, f1, f0
/* 807680B0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807680B4  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 807680B8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807680BC  EC 01 00 2A */	fadds f0, f1, f0
/* 807680C0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807680C4  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 807680C8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807680CC  7F 43 D3 78 */	mr r3, r26
/* 807680D0  38 81 00 84 */	addi r4, r1, 0x84
/* 807680D4  A8 BD 06 B0 */	lha r5, 0x6b0(r29)
/* 807680D8  3C A5 00 01 */	addis r5, r5, 1
/* 807680DC  38 05 80 00 */	addi r0, r5, -32768
/* 807680E0  7C 05 07 34 */	extsh r5, r0
/* 807680E4  38 C0 00 00 */	li r6, 0
/* 807680E8  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 807680EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807680F0  7D 89 03 A6 */	mtctr r12
/* 807680F4  4E 80 04 21 */	bctrl 
/* 807680F8  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807680FC  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80768100  41 80 08 EC */	blt lbl_807689EC
/* 80768104  40 82 00 1C */	bne lbl_80768120
/* 80768108  38 7D 11 08 */	addi r3, r29, 0x1108
/* 8076810C  7F A4 EB 78 */	mr r4, r29
/* 80768110  38 A0 03 89 */	li r5, 0x389
/* 80768114  38 C0 00 00 */	li r6, 0
/* 80768118  38 E0 00 00 */	li r7, 0
/* 8076811C  4B AE 1E 74 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80768120:
/* 80768120  38 7D 11 08 */	addi r3, r29, 0x1108
/* 80768124  7F A4 EB 78 */	mr r4, r29
/* 80768128  38 A0 00 00 */	li r5, 0
/* 8076812C  38 C0 00 00 */	li r6, 0
/* 80768130  4B AE 21 A8 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80768134  2C 03 00 00 */	cmpwi r3, 0
/* 80768138  41 82 08 B4 */	beq lbl_807689EC
/* 8076813C  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768140  2C 00 01 68 */	cmpwi r0, 0x168
/* 80768144  41 80 08 A8 */	blt lbl_807689EC
/* 80768148  38 00 00 03 */	li r0, 3
/* 8076814C  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 80768150  38 00 00 00 */	li r0, 0
/* 80768154  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 80768158  C0 1B 00 F0 */	lfs f0, 0xf0(r27)
/* 8076815C  D0 1D 10 D0 */	stfs f0, 0x10d0(r29)
/* 80768160  C0 1B 00 F4 */	lfs f0, 0xf4(r27)
/* 80768164  D0 1D 10 D4 */	stfs f0, 0x10d4(r29)
/* 80768168  C0 1B 00 F8 */	lfs f0, 0xf8(r27)
/* 8076816C  D0 1D 10 D8 */	stfs f0, 0x10d8(r29)
/* 80768170  C0 1B 00 FC */	lfs f0, 0xfc(r27)
/* 80768174  D0 1D 10 C4 */	stfs f0, 0x10c4(r29)
/* 80768178  C0 1B 01 00 */	lfs f0, 0x100(r27)
/* 8076817C  D0 1D 10 C8 */	stfs f0, 0x10c8(r29)
/* 80768180  C0 1B 01 04 */	lfs f0, 0x104(r27)
/* 80768184  D0 1D 10 CC */	stfs f0, 0x10cc(r29)
/* 80768188  7F A3 EB 78 */	mr r3, r29
/* 8076818C  4B FF FC 29 */	bl cam_spd_set__FP11e_rdb_class
/* 80768190  48 00 08 5C */	b lbl_807689EC
lbl_80768194:
/* 80768194  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768198  2C 00 00 14 */	cmpwi r0, 0x14
/* 8076819C  41 80 08 50 */	blt lbl_807689EC
/* 807681A0  C0 3B 00 EC */	lfs f1, 0xec(r27)
/* 807681A4  4B FF FB 2D */	bl cam_3d_morf__FP11e_rdb_classf
/* 807681A8  38 7D 10 F8 */	addi r3, r29, 0x10f8
/* 807681AC  C0 3B 01 08 */	lfs f1, 0x108(r27)
/* 807681B0  C0 5B 00 08 */	lfs f2, 8(r27)
/* 807681B4  C0 7B 01 0C */	lfs f3, 0x10c(r27)
/* 807681B8  4B B0 78 84 */	b cLib_addCalc2__FPffff
/* 807681BC  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807681C0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807681C4  40 82 00 24 */	bne lbl_807681E8
/* 807681C8  38 00 00 17 */	li r0, 0x17
/* 807681CC  90 1A 06 14 */	stw r0, 0x614(r26)
/* 807681D0  38 00 00 01 */	li r0, 1
/* 807681D4  90 1A 06 0C */	stw r0, 0x60c(r26)
/* 807681D8  38 00 00 02 */	li r0, 2
/* 807681DC  90 1A 06 10 */	stw r0, 0x610(r26)
/* 807681E0  38 00 00 00 */	li r0, 0
/* 807681E4  B0 1A 06 0A */	sth r0, 0x60a(r26)
lbl_807681E8:
/* 807681E8  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807681EC  2C 00 00 82 */	cmpwi r0, 0x82
/* 807681F0  40 82 07 FC */	bne lbl_807689EC
/* 807681F4  3B C0 00 01 */	li r30, 1
/* 807681F8  38 00 00 01 */	li r0, 1
/* 807681FC  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 80768200  38 00 00 0A */	li r0, 0xa
/* 80768204  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80768208  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8076820C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80768210  80 63 00 00 */	lwz r3, 0(r3)
/* 80768214  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80768218  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000097@ha */
/* 8076821C  38 84 00 97 */	addi r4, r4, 0x0097 /* 0x01000097@l */
/* 80768220  4B B4 72 7C */	b subBgmStart__8Z2SeqMgrFUl
/* 80768224  48 00 07 C8 */	b lbl_807689EC
lbl_80768228:
/* 80768228  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8076822C  28 00 00 02 */	cmplwi r0, 2
/* 80768230  41 82 00 28 */	beq lbl_80768258
/* 80768234  38 80 00 02 */	li r4, 2
/* 80768238  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8076823C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80768240  38 C0 00 00 */	li r6, 0
/* 80768244  4B 8B 36 C4 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80768248  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8076824C  60 00 00 02 */	ori r0, r0, 2
/* 80768250  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80768254  48 00 09 24 */	b lbl_80768B78
lbl_80768258:
/* 80768258  38 7F 02 48 */	addi r3, r31, 0x248
/* 8076825C  4B 9F 92 74 */	b Stop__9dCamera_cFv
/* 80768260  38 00 00 0B */	li r0, 0xb
/* 80768264  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 80768268  38 00 00 00 */	li r0, 0
/* 8076826C  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 80768270  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 80768274  D0 1D 10 F4 */	stfs f0, 0x10f4(r29)
/* 80768278  38 7F 02 48 */	addi r3, r31, 0x248
/* 8076827C  38 80 00 03 */	li r4, 3
/* 80768280  4B 9F AD 8C */	b SetTrimSize__9dCamera_cFl
/* 80768284  38 00 00 03 */	li r0, 3
/* 80768288  B0 1A 06 04 */	sth r0, 0x604(r26)
/* 8076828C  38 00 00 00 */	li r0, 0
/* 80768290  90 1A 06 0C */	stw r0, 0x60c(r26)
/* 80768294  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80768298  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8076829C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807682A0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807682A4  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807682A8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 807682AC  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 807682B0  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 807682B4  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 807682B8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807682BC  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 807682C0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 807682C4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 807682C8  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 807682CC  88 1D 04 BB */	lbz r0, 0x4bb(r29)
/* 807682D0  98 1D 04 E3 */	stb r0, 0x4e3(r29)
/* 807682D4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 807682D8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 807682DC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807682E0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807682E4  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 807682E8  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 807682EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807682F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807682F4  80 63 00 00 */	lwz r3, 0(r3)
/* 807682F8  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 807682FC  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80768300  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80768304  38 84 00 0D */	addi r4, r4, 0xd
/* 80768308  4B B4 DE E0 */	b setDemoName__11Z2StatusMgrFPc
lbl_8076830C:
/* 8076830C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80768310  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80768314  80 63 00 00 */	lwz r3, 0(r3)
/* 80768318  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8076831C  4B 8A 40 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80768320  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 80768324  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80768328  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8076832C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80768330  C0 1B 01 10 */	lfs f0, 0x110(r27)
/* 80768334  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80768338  38 61 00 90 */	addi r3, r1, 0x90
/* 8076833C  38 81 00 78 */	addi r4, r1, 0x78
/* 80768340  4B B0 8B AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80768344  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80768348  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 8076834C  EC 00 10 2A */	fadds f0, f0, f2
/* 80768350  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80768354  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80768358  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8076835C  EC 00 08 2A */	fadds f0, f0, f1
/* 80768360  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80768364  C0 1B 01 14 */	lfs f0, 0x114(r27)
/* 80768368  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8076836C  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768370  2C 00 01 48 */	cmpwi r0, 0x148
/* 80768374  41 80 00 50 */	blt lbl_807683C4
/* 80768378  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8076837C  80 63 00 04 */	lwz r3, 4(r3)
/* 80768380  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80768384  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80768388  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 8076838C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80768390  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80768394  80 84 00 00 */	lwz r4, 0(r4)
/* 80768398  4B BD E1 18 */	b PSMTXCopy
/* 8076839C  C0 1B 01 18 */	lfs f0, 0x118(r27)
/* 807683A0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807683A4  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 807683A8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807683AC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 807683B0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807683B4  38 61 00 90 */	addi r3, r1, 0x90
/* 807683B8  38 81 00 6C */	addi r4, r1, 0x6c
/* 807683BC  4B B0 8B 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 807683C0  48 00 00 24 */	b lbl_807683E4
lbl_807683C4:
/* 807683C4  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 807683C8  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807683CC  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 807683D0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807683D4  C0 1B 00 B0 */	lfs f0, 0xb0(r27)
/* 807683D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807683DC  40 80 00 08 */	bge lbl_807683E4
/* 807683E0  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_807683E4:
/* 807683E4  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807683E8  2C 00 00 00 */	cmpwi r0, 0
/* 807683EC  40 82 00 38 */	bne lbl_80768424
/* 807683F0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807683F4  D0 1D 10 B8 */	stfs f0, 0x10b8(r29)
/* 807683F8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 807683FC  D0 1D 10 BC */	stfs f0, 0x10bc(r29)
/* 80768400  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80768404  D0 1D 10 C0 */	stfs f0, 0x10c0(r29)
/* 80768408  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8076840C  D0 1D 10 AC */	stfs f0, 0x10ac(r29)
/* 80768410  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80768414  D0 1D 10 B0 */	stfs f0, 0x10b0(r29)
/* 80768418  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8076841C  D0 1D 10 B4 */	stfs f0, 0x10b4(r29)
/* 80768420  48 00 00 58 */	b lbl_80768478
lbl_80768424:
/* 80768424  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80768428  D0 1D 10 AC */	stfs f0, 0x10ac(r29)
/* 8076842C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80768430  D0 1D 10 B0 */	stfs f0, 0x10b0(r29)
/* 80768434  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80768438  D0 1D 10 B4 */	stfs f0, 0x10b4(r29)
/* 8076843C  38 7D 10 B8 */	addi r3, r29, 0x10b8
/* 80768440  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80768444  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 80768448  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 8076844C  4B B0 75 F0 */	b cLib_addCalc2__FPffff
/* 80768450  38 7D 10 BC */	addi r3, r29, 0x10bc
/* 80768454  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80768458  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 8076845C  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 80768460  4B B0 75 DC */	b cLib_addCalc2__FPffff
/* 80768464  38 7D 10 C0 */	addi r3, r29, 0x10c0
/* 80768468  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8076846C  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 80768470  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 80768474  4B B0 75 C8 */	b cLib_addCalc2__FPffff
lbl_80768478:
/* 80768478  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8076847C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80768480  80 63 00 00 */	lwz r3, 0(r3)
/* 80768484  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80768488  4B 8A 3F 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8076848C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80768490  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80768494  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 80768498  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8076849C  C0 1B 01 1C */	lfs f0, 0x11c(r27)
/* 807684A0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807684A4  38 61 00 90 */	addi r3, r1, 0x90
/* 807684A8  38 81 00 84 */	addi r4, r1, 0x84
/* 807684AC  4B B0 8A 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 807684B0  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 807684B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807684B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807684BC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807684C0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 807684C4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807684C8  EC 01 00 2A */	fadds f0, f1, f0
/* 807684CC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807684D0  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 807684D4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807684D8  7F 43 D3 78 */	mr r3, r26
/* 807684DC  38 81 00 84 */	addi r4, r1, 0x84
/* 807684E0  A8 BD 06 B0 */	lha r5, 0x6b0(r29)
/* 807684E4  3C A5 00 01 */	addis r5, r5, 1
/* 807684E8  38 05 80 00 */	addi r0, r5, -32768
/* 807684EC  7C 05 07 34 */	extsh r5, r0
/* 807684F0  38 C0 00 00 */	li r6, 0
/* 807684F4  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 807684F8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807684FC  7D 89 03 A6 */	mtctr r12
/* 80768500  4E 80 04 21 */	bctrl 
/* 80768504  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768508  2C 00 01 68 */	cmpwi r0, 0x168
/* 8076850C  41 80 04 E0 */	blt lbl_807689EC
/* 80768510  40 82 00 1C */	bne lbl_8076852C
/* 80768514  38 7D 11 08 */	addi r3, r29, 0x1108
/* 80768518  7F A4 EB 78 */	mr r4, r29
/* 8076851C  38 A0 03 88 */	li r5, 0x388
/* 80768520  38 C0 00 00 */	li r6, 0
/* 80768524  38 E0 00 00 */	li r7, 0
/* 80768528  4B AE 1A 68 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8076852C:
/* 8076852C  3B 40 00 00 */	li r26, 0
/* 80768530  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768534  2C 00 23 28 */	cmpwi r0, 0x2328
/* 80768538  41 80 00 10 */	blt lbl_80768548
/* 8076853C  38 7D 11 08 */	addi r3, r29, 0x1108
/* 80768540  4B AE 1F 84 */	b remove__10dMsgFlow_cFv
/* 80768544  3B 40 00 01 */	li r26, 1
lbl_80768548:
/* 80768548  38 7D 11 08 */	addi r3, r29, 0x1108
/* 8076854C  7F A4 EB 78 */	mr r4, r29
/* 80768550  38 A0 00 00 */	li r5, 0
/* 80768554  38 C0 00 00 */	li r6, 0
/* 80768558  4B AE 1D 80 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8076855C  2C 03 00 00 */	cmpwi r3, 0
/* 80768560  41 82 00 14 */	beq lbl_80768574
/* 80768564  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768568  2C 00 01 90 */	cmpwi r0, 0x190
/* 8076856C  41 80 00 08 */	blt lbl_80768574
/* 80768570  3B 40 00 01 */	li r26, 1
lbl_80768574:
/* 80768574  2C 1A 00 00 */	cmpwi r26, 0
/* 80768578  41 82 04 74 */	beq lbl_807689EC
/* 8076857C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80768580  38 00 00 0B */	li r0, 0xb
/* 80768584  90 04 06 14 */	stw r0, 0x614(r4)
/* 80768588  38 00 00 20 */	li r0, 0x20
/* 8076858C  90 04 06 0C */	stw r0, 0x60c(r4)
/* 80768590  38 60 00 00 */	li r3, 0
/* 80768594  90 64 06 10 */	stw r3, 0x610(r4)
/* 80768598  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 8076859C  38 00 00 0C */	li r0, 0xc
/* 807685A0  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 807685A4  B0 7D 10 AA */	sth r3, 0x10aa(r29)
/* 807685A8  38 00 00 01 */	li r0, 1
/* 807685AC  98 1D 0F E5 */	stb r0, 0xfe5(r29)
/* 807685B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807685B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807685B8  38 63 09 58 */	addi r3, r3, 0x958
/* 807685BC  38 80 00 03 */	li r4, 3
/* 807685C0  4B 8C C1 E0 */	b onTbox__12dSv_memBit_cFi
/* 807685C4  48 00 04 28 */	b lbl_807689EC
lbl_807685C8:
/* 807685C8  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 807685CC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 807685D0  C0 5B 01 20 */	lfs f2, 0x120(r27)
/* 807685D4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 807685D8  EC 02 00 2A */	fadds f0, f2, f0
/* 807685DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807685E0  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 807685E4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807685E8  38 7D 10 B8 */	addi r3, r29, 0x10b8
/* 807685EC  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 807685F0  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 807685F4  4B B0 74 48 */	b cLib_addCalc2__FPffff
/* 807685F8  38 7D 10 BC */	addi r3, r29, 0x10bc
/* 807685FC  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80768600  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 80768604  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 80768608  4B B0 74 34 */	b cLib_addCalc2__FPffff
/* 8076860C  38 7D 10 C0 */	addi r3, r29, 0x10c0
/* 80768610  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80768614  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 80768618  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 8076861C  4B B0 74 20 */	b cLib_addCalc2__FPffff
/* 80768620  38 7D 10 B0 */	addi r3, r29, 0x10b0
/* 80768624  C0 3B 01 24 */	lfs f1, 0x124(r27)
/* 80768628  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 8076862C  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 80768630  4B B0 74 0C */	b cLib_addCalc2__FPffff
/* 80768634  38 7D 10 F4 */	addi r3, r29, 0x10f4
/* 80768638  C0 3B 01 28 */	lfs f1, 0x128(r27)
/* 8076863C  C0 5B 01 2C */	lfs f2, 0x12c(r27)
/* 80768640  C0 7B 01 30 */	lfs f3, 0x130(r27)
/* 80768644  4B B0 73 F8 */	b cLib_addCalc2__FPffff
/* 80768648  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 8076864C  2C 00 00 46 */	cmpwi r0, 0x46
/* 80768650  41 80 03 9C */	blt lbl_807689EC
/* 80768654  4B AC FB D8 */	b getStatus__12dMsgObject_cFv
/* 80768658  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8076865C  20 60 00 01 */	subfic r3, r0, 1
/* 80768660  30 03 FF FF */	addic r0, r3, -1
/* 80768664  7C 00 19 10 */	subfe r0, r0, r3
/* 80768668  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8076866C  40 82 03 80 */	bne lbl_807689EC
/* 80768670  38 00 00 0D */	li r0, 0xd
/* 80768674  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 80768678  38 00 00 00 */	li r0, 0
/* 8076867C  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 80768680  C0 3B 01 2C */	lfs f1, 0x12c(r27)
/* 80768684  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80768688  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 8076868C  4B 89 F9 4C */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80768690  38 00 00 01 */	li r0, 1
/* 80768694  98 1D 0F E6 */	stb r0, 0xfe6(r29)
/* 80768698  38 60 00 0F */	li r3, 0xf
/* 8076869C  38 80 FF FF */	li r4, -1
/* 807686A0  4B 8C 54 60 */	b dComIfGs_offOneZoneSwitch__Fii
/* 807686A4  48 00 03 48 */	b lbl_807689EC
lbl_807686A8:
/* 807686A8  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807686AC  2C 00 00 28 */	cmpwi r0, 0x28
/* 807686B0  40 82 01 20 */	bne lbl_807687D0
/* 807686B4  C0 3B 01 34 */	lfs f1, 0x134(r27)
/* 807686B8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 807686BC  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 807686C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807686C4  C0 5B 01 38 */	lfs f2, 0x138(r27)
/* 807686C8  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 807686CC  C0 1B 01 3C */	lfs f0, 0x13c(r27)
/* 807686D0  EC 20 08 28 */	fsubs f1, f0, f1
/* 807686D4  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 807686D8  C0 1B 01 40 */	lfs f0, 0x140(r27)
/* 807686DC  EC 40 10 28 */	fsubs f2, f0, f2
/* 807686E0  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 807686E4  4B AF EF 90 */	b cM_atan2s__Fff
/* 807686E8  7C 65 1B 78 */	mr r5, r3
/* 807686EC  38 61 00 10 */	addi r3, r1, 0x10
/* 807686F0  38 80 00 00 */	li r4, 0
/* 807686F4  38 C0 00 00 */	li r6, 0
/* 807686F8  4B AF EC FC */	b __ct__5csXyzFsss
/* 807686FC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80768700  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80768704  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80768708  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8076870C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80768710  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80768714  C0 1B 00 A0 */	lfs f0, 0xa0(r27)
/* 80768718  EC 01 00 2A */	fadds f0, f1, f0
/* 8076871C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80768720  38 60 01 D4 */	li r3, 0x1d4
/* 80768724  38 80 00 0C */	li r4, 0xc
/* 80768728  38 A1 00 60 */	addi r5, r1, 0x60
/* 8076872C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80768730  7C 06 07 74 */	extsb r6, r0
/* 80768734  38 E1 00 10 */	addi r7, r1, 0x10
/* 80768738  39 00 00 00 */	li r8, 0
/* 8076873C  39 20 FF FF */	li r9, -1
/* 80768740  4B 8B 16 58 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80768744  C0 1B 01 44 */	lfs f0, 0x144(r27)
/* 80768748  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8076874C  C0 1B 00 CC */	lfs f0, 0xcc(r27)
/* 80768750  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80768754  C0 1B 01 48 */	lfs f0, 0x148(r27)
/* 80768758  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8076875C  7F 43 D3 78 */	mr r3, r26
/* 80768760  38 81 00 84 */	addi r4, r1, 0x84
/* 80768764  38 A0 A0 C5 */	li r5, -24379
/* 80768768  38 C0 00 00 */	li r6, 0
/* 8076876C  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80768770  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80768774  7D 89 03 A6 */	mtctr r12
/* 80768778  4E 80 04 21 */	bctrl 
/* 8076877C  C0 1B 01 4C */	lfs f0, 0x14c(r27)
/* 80768780  D0 1D 10 B8 */	stfs f0, 0x10b8(r29)
/* 80768784  C0 1B 01 50 */	lfs f0, 0x150(r27)
/* 80768788  D0 1D 10 BC */	stfs f0, 0x10bc(r29)
/* 8076878C  C0 1B 01 54 */	lfs f0, 0x154(r27)
/* 80768790  D0 1D 10 C0 */	stfs f0, 0x10c0(r29)
/* 80768794  C0 1B 01 58 */	lfs f0, 0x158(r27)
/* 80768798  D0 1D 10 AC */	stfs f0, 0x10ac(r29)
/* 8076879C  C0 1B 01 5C */	lfs f0, 0x15c(r27)
/* 807687A0  D0 1D 10 B0 */	stfs f0, 0x10b0(r29)
/* 807687A4  C0 1B 01 60 */	lfs f0, 0x160(r27)
/* 807687A8  D0 1D 10 B4 */	stfs f0, 0x10b4(r29)
/* 807687AC  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 807687B0  D0 1D 10 F4 */	stfs f0, 0x10f4(r29)
/* 807687B4  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807687B8  38 00 00 01 */	li r0, 1
/* 807687BC  90 03 06 14 */	stw r0, 0x614(r3)
/* 807687C0  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807687C4  38 00 00 00 */	li r0, 0
/* 807687C8  90 03 06 10 */	stw r0, 0x610(r3)
/* 807687CC  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_807687D0:
/* 807687D0  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807687D4  2C 00 00 28 */	cmpwi r0, 0x28
/* 807687D8  41 80 00 54 */	blt lbl_8076882C
/* 807687DC  38 00 01 D4 */	li r0, 0x1d4
/* 807687E0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 807687E4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 807687E8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 807687EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807687F0  4B 8B 10 08 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807687F4  28 03 00 00 */	cmplwi r3, 0
/* 807687F8  41 82 00 34 */	beq lbl_8076882C
/* 807687FC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80768800  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80768804  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80768808  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8076880C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80768810  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80768814  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80768818  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 8076881C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 80768820  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80768824  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 80768828  D0 1D 05 40 */	stfs f0, 0x540(r29)
lbl_8076882C:
/* 8076882C  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768830  2C 00 00 32 */	cmpwi r0, 0x32
/* 80768834  40 82 00 14 */	bne lbl_80768848
/* 80768838  C0 3B 01 64 */	lfs f1, 0x164(r27)
/* 8076883C  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80768840  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80768844  4B 89 F7 94 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_80768848:
/* 80768848  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 8076884C  2C 00 00 DC */	cmpwi r0, 0xdc
/* 80768850  41 80 01 9C */	blt lbl_807689EC
/* 80768854  40 82 00 1C */	bne lbl_80768870
/* 80768858  38 7D 11 08 */	addi r3, r29, 0x1108
/* 8076885C  7F A4 EB 78 */	mr r4, r29
/* 80768860  38 A0 03 88 */	li r5, 0x388
/* 80768864  38 C0 00 00 */	li r6, 0
/* 80768868  38 E0 00 00 */	li r7, 0
/* 8076886C  4B AE 17 24 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80768870:
/* 80768870  38 7D 11 08 */	addi r3, r29, 0x1108
/* 80768874  7F A4 EB 78 */	mr r4, r29
/* 80768878  38 A0 00 00 */	li r5, 0
/* 8076887C  38 C0 00 00 */	li r6, 0
/* 80768880  4B AE 1A 58 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80768884  2C 03 00 00 */	cmpwi r3, 0
/* 80768888  41 82 01 64 */	beq lbl_807689EC
/* 8076888C  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768890  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80768894  41 80 01 58 */	blt lbl_807689EC
/* 80768898  38 00 00 0E */	li r0, 0xe
/* 8076889C  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 807688A0  38 00 00 00 */	li r0, 0
/* 807688A4  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 807688A8  48 00 01 44 */	b lbl_807689EC
lbl_807688AC:
/* 807688AC  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 807688B0  2C 00 00 41 */	cmpwi r0, 0x41
/* 807688B4  41 80 01 38 */	blt lbl_807689EC
/* 807688B8  C0 1B 01 68 */	lfs f0, 0x168(r27)
/* 807688BC  D0 1D 10 D0 */	stfs f0, 0x10d0(r29)
/* 807688C0  C0 3B 01 5C */	lfs f1, 0x15c(r27)
/* 807688C4  D0 3D 10 D4 */	stfs f1, 0x10d4(r29)
/* 807688C8  C0 1B 01 6C */	lfs f0, 0x16c(r27)
/* 807688CC  D0 1D 10 D8 */	stfs f0, 0x10d8(r29)
/* 807688D0  C0 1B 01 58 */	lfs f0, 0x158(r27)
/* 807688D4  D0 1D 10 C4 */	stfs f0, 0x10c4(r29)
/* 807688D8  D0 3D 10 C8 */	stfs f1, 0x10c8(r29)
/* 807688DC  C0 1B 01 60 */	lfs f0, 0x160(r27)
/* 807688E0  D0 1D 10 CC */	stfs f0, 0x10cc(r29)
/* 807688E4  4B FF F4 D1 */	bl cam_spd_set__FP11e_rdb_class
/* 807688E8  38 00 00 0F */	li r0, 0xf
/* 807688EC  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
/* 807688F0  38 00 00 00 */	li r0, 0
/* 807688F4  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 807688F8  48 00 00 F4 */	b lbl_807689EC
lbl_807688FC:
/* 807688FC  C0 3B 00 68 */	lfs f1, 0x68(r27)
/* 80768900  4B FF F3 D1 */	bl cam_3d_morf__FP11e_rdb_classf
/* 80768904  38 7D 10 F8 */	addi r3, r29, 0x10f8
/* 80768908  C0 3B 01 2C */	lfs f1, 0x12c(r27)
/* 8076890C  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80768910  C0 7B 01 70 */	lfs f3, 0x170(r27)
/* 80768914  4B B0 71 28 */	b cLib_addCalc2__FPffff
/* 80768918  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 8076891C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80768920  41 80 00 18 */	blt lbl_80768938
/* 80768924  38 7D 10 F4 */	addi r3, r29, 0x10f4
/* 80768928  C0 3B 00 78 */	lfs f1, 0x78(r27)
/* 8076892C  C0 5B 01 2C */	lfs f2, 0x12c(r27)
/* 80768930  C0 7B 00 6C */	lfs f3, 0x6c(r27)
/* 80768934  4B B0 71 08 */	b cLib_addCalc2__FPffff
lbl_80768938:
/* 80768938  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 8076893C  2C 00 00 B3 */	cmpwi r0, 0xb3
/* 80768940  40 82 00 24 */	bne lbl_80768964
/* 80768944  7F 43 D3 78 */	mr r3, r26
/* 80768948  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8076894C  38 A0 D9 52 */	li r5, -9902
/* 80768950  38 C0 00 00 */	li r6, 0
/* 80768954  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80768958  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8076895C  7D 89 03 A6 */	mtctr r12
/* 80768960  4E 80 04 21 */	bctrl 
lbl_80768964:
/* 80768964  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768968  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 8076896C  40 82 00 80 */	bne lbl_807689EC
/* 80768970  3B C0 00 01 */	li r30, 1
/* 80768974  7F A3 EB 78 */	mr r3, r29
/* 80768978  4B 8B 13 04 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8076897C  38 00 01 D4 */	li r0, 0x1d4
/* 80768980  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80768984  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80768988  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8076898C  38 81 00 0A */	addi r4, r1, 0xa
/* 80768990  4B 8B 0E 68 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80768994  4B 8B 12 E8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80768998  38 00 00 EF */	li r0, 0xef
/* 8076899C  B0 01 00 08 */	sth r0, 8(r1)
/* 807689A0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 807689A4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 807689A8  38 81 00 08 */	addi r4, r1, 8
/* 807689AC  4B 8B 0E 4C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807689B0  4B 8B 12 CC */	b fopAcM_delete__FP10fopAc_ac_c
/* 807689B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807689B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807689BC  38 63 09 58 */	addi r3, r3, 0x958
/* 807689C0  38 80 00 07 */	li r4, 7
/* 807689C4  4B 8C BF 54 */	b onDungeonItem__12dSv_memBit_cFi
/* 807689C8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807689CC  54 04 46 3E */	srwi r4, r0, 0x18
/* 807689D0  2C 04 00 FF */	cmpwi r4, 0xff
/* 807689D4  41 82 00 18 */	beq lbl_807689EC
/* 807689D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807689DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807689E0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807689E4  7C 05 07 74 */	extsb r5, r0
/* 807689E8  4B 8C C8 18 */	b onSwitch__10dSv_info_cFii
lbl_807689EC:
/* 807689EC  A8 7D 10 A8 */	lha r3, 0x10a8(r29)
/* 807689F0  7C 60 07 35 */	extsh. r0, r3
/* 807689F4  40 81 00 50 */	ble lbl_80768A44
/* 807689F8  2C 03 00 0A */	cmpwi r3, 0xa
/* 807689FC  40 80 00 48 */	bge lbl_80768A44
/* 80768A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80768A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80768A08  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 80768A0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80768A10  41 82 00 34 */	beq lbl_80768A44
/* 80768A14  3B C0 00 01 */	li r30, 1
/* 80768A18  38 00 00 01 */	li r0, 1
/* 80768A1C  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 80768A20  38 00 00 0A */	li r0, 0xa
/* 80768A24  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80768A28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80768A2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80768A30  80 63 00 00 */	lwz r3, 0(r3)
/* 80768A34  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80768A38  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000097@ha */
/* 80768A3C  38 84 00 97 */	addi r4, r4, 0x0097 /* 0x01000097@l */
/* 80768A40  4B B4 6A 5C */	b subBgmStart__8Z2SeqMgrFUl
lbl_80768A44:
/* 80768A44  7F C0 07 75 */	extsb. r0, r30
/* 80768A48  41 82 00 A4 */	beq lbl_80768AEC
/* 80768A4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80768A50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80768A54  80 63 00 00 */	lwz r3, 0(r3)
/* 80768A58  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80768A5C  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80768A60  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80768A64  38 84 00 19 */	addi r4, r4, 0x19
/* 80768A68  4B B4 D7 80 */	b setDemoName__11Z2StatusMgrFPc
/* 80768A6C  C0 1D 10 B8 */	lfs f0, 0x10b8(r29)
/* 80768A70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80768A74  C0 1D 10 BC */	lfs f0, 0x10bc(r29)
/* 80768A78  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80768A7C  C0 1D 10 C0 */	lfs f0, 0x10c0(r29)
/* 80768A80  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80768A84  C0 1D 10 AC */	lfs f0, 0x10ac(r29)
/* 80768A88  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80768A8C  C0 1D 10 B0 */	lfs f0, 0x10b0(r29)
/* 80768A90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80768A94  C0 1D 10 B4 */	lfs f0, 0x10b4(r29)
/* 80768A98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80768A9C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80768AA0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80768AA4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80768AA8  4B A1 81 70 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80768AAC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80768AB0  4B 9F 89 FC */	b Start__9dCamera_cFv
/* 80768AB4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80768AB8  38 80 00 00 */	li r4, 0
/* 80768ABC  4B 9F A5 50 */	b SetTrimSize__9dCamera_cFl
/* 80768AC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80768AC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80768AC8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80768ACC  4B 8D 99 9C */	b reset__14dEvt_control_cFv
/* 80768AD0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80768AD4  38 00 00 02 */	li r0, 2
/* 80768AD8  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80768ADC  38 00 00 01 */	li r0, 1
/* 80768AE0  90 03 06 14 */	stw r0, 0x614(r3)
/* 80768AE4  38 00 00 00 */	li r0, 0
/* 80768AE8  B0 1D 10 A8 */	sth r0, 0x10a8(r29)
lbl_80768AEC:
/* 80768AEC  A8 1D 10 A8 */	lha r0, 0x10a8(r29)
/* 80768AF0  2C 00 00 00 */	cmpwi r0, 0
/* 80768AF4  40 81 00 84 */	ble lbl_80768B78
/* 80768AF8  C0 BD 10 B8 */	lfs f5, 0x10b8(r29)
/* 80768AFC  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 80768B00  C0 9D 10 BC */	lfs f4, 0x10bc(r29)
/* 80768B04  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 80768B08  C0 7D 10 C0 */	lfs f3, 0x10c0(r29)
/* 80768B0C  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80768B10  C0 5D 10 AC */	lfs f2, 0x10ac(r29)
/* 80768B14  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80768B18  C0 3D 10 B0 */	lfs f1, 0x10b0(r29)
/* 80768B1C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80768B20  C0 1D 10 B4 */	lfs f0, 0x10b4(r29)
/* 80768B24  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80768B28  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80768B2C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80768B30  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80768B34  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80768B38  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80768B3C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80768B40  38 7F 02 48 */	addi r3, r31, 0x248
/* 80768B44  38 81 00 24 */	addi r4, r1, 0x24
/* 80768B48  38 A1 00 18 */	addi r5, r1, 0x18
/* 80768B4C  C0 3D 10 F4 */	lfs f1, 0x10f4(r29)
/* 80768B50  38 C0 00 00 */	li r6, 0
/* 80768B54  4B A1 7F 8C */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80768B58  A8 7D 10 AA */	lha r3, 0x10aa(r29)
/* 80768B5C  38 03 00 01 */	addi r0, r3, 1
/* 80768B60  B0 1D 10 AA */	sth r0, 0x10aa(r29)
/* 80768B64  A8 1D 10 AA */	lha r0, 0x10aa(r29)
/* 80768B68  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80768B6C  40 81 00 0C */	ble lbl_80768B78
/* 80768B70  38 00 27 10 */	li r0, 0x2710
/* 80768B74  B0 1D 10 AA */	sth r0, 0x10aa(r29)
lbl_80768B78:
/* 80768B78  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80768B7C  4B BF 96 A0 */	b _restgpr_26
/* 80768B80  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80768B84  7C 08 03 A6 */	mtlr r0
/* 80768B88  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80768B8C  4E 80 00 20 */	blr 
