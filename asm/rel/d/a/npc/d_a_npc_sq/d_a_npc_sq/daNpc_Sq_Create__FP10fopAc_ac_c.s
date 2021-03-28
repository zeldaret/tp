lbl_80AF6F98:
/* 80AF6F98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF6F9C  7C 08 02 A6 */	mflr r0
/* 80AF6FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF6FA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF6FA8  4B 86 B2 30 */	b _savegpr_28
/* 80AF6FAC  7C 7E 1B 78 */	mr r30, r3
/* 80AF6FB0  3C 80 80 AF */	lis r4, lit_3768@ha
/* 80AF6FB4  3B E4 74 08 */	addi r31, r4, lit_3768@l
/* 80AF6FB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AF6FBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AF6FC0  40 82 00 E8 */	bne lbl_80AF70A8
/* 80AF6FC4  7F C0 F3 79 */	or. r0, r30, r30
/* 80AF6FC8  41 82 00 D4 */	beq lbl_80AF709C
/* 80AF6FCC  7C 1D 03 78 */	mr r29, r0
/* 80AF6FD0  4B 52 1B 94 */	b __ct__10fopAc_ac_cFv
/* 80AF6FD4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF6FD8  4B 75 2F 28 */	b __ct__10dMsgFlow_cFv
/* 80AF6FDC  38 7D 06 3C */	addi r3, r29, 0x63c
/* 80AF6FE0  4B 57 EE CC */	b __ct__12dBgS_AcchCirFv
/* 80AF6FE4  3B 9D 06 7C */	addi r28, r29, 0x67c
/* 80AF6FE8  7F 83 E3 78 */	mr r3, r28
/* 80AF6FEC  4B 57 F0 B4 */	b __ct__9dBgS_AcchFv
/* 80AF6FF0  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AF6FF4  38 63 75 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AF6FF8  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80AF6FFC  38 03 00 0C */	addi r0, r3, 0xc
/* 80AF7000  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80AF7004  38 03 00 18 */	addi r0, r3, 0x18
/* 80AF7008  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80AF700C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80AF7010  4B 58 1E 58 */	b SetObj__16dBgS_PolyPassChkFv
/* 80AF7014  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AF7018  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AF701C  90 1D 08 6C */	stw r0, 0x86c(r29)
/* 80AF7020  38 7D 08 70 */	addi r3, r29, 0x870
/* 80AF7024  4B 58 C7 3C */	b __ct__10dCcD_GSttsFv
/* 80AF7028  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AF702C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AF7030  90 7D 08 6C */	stw r3, 0x86c(r29)
/* 80AF7034  38 03 00 20 */	addi r0, r3, 0x20
/* 80AF7038  90 1D 08 70 */	stw r0, 0x870(r29)
/* 80AF703C  3B 9D 08 90 */	addi r28, r29, 0x890
/* 80AF7040  7F 83 E3 78 */	mr r3, r28
/* 80AF7044  4B 58 C9 E4 */	b __ct__12dCcD_GObjInfFv
/* 80AF7048  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AF704C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AF7050  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80AF7054  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha
/* 80AF7058  38 03 75 6C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AF705C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80AF7060  3C 60 80 AF */	lis r3, __vt__8cM3dGSph@ha
/* 80AF7064  38 03 75 60 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80AF7068  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80AF706C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80AF7070  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80AF7074  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80AF7078  38 03 00 58 */	addi r0, r3, 0x58
/* 80AF707C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80AF7080  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80AF7084  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80AF7088  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80AF708C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AF7090  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80AF7094  38 03 00 84 */	addi r0, r3, 0x84
/* 80AF7098  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80AF709C:
/* 80AF709C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AF70A0  60 00 00 08 */	ori r0, r0, 8
/* 80AF70A4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AF70A8:
/* 80AF70A8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80AF70AC  3C 80 80 AF */	lis r4, stringBase0@ha
/* 80AF70B0  38 84 74 A4 */	addi r4, r4, stringBase0@l
/* 80AF70B4  4B 53 5E 08 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AF70B8  7C 7D 1B 78 */	mr r29, r3
/* 80AF70BC  2C 1D 00 04 */	cmpwi r29, 4
/* 80AF70C0  40 82 01 84 */	bne lbl_80AF7244
/* 80AF70C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF70C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF70CC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80AF70D0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80AF70D4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80AF70D8  A0 84 00 32 */	lhz r4, 0x32(r4)
/* 80AF70DC  4B 53 D8 E0 */	b isEventBit__11dSv_event_cCFUs
/* 80AF70E0  2C 03 00 00 */	cmpwi r3, 0
/* 80AF70E4  41 82 00 0C */	beq lbl_80AF70F0
/* 80AF70E8  38 60 00 05 */	li r3, 5
/* 80AF70EC  48 00 01 5C */	b lbl_80AF7248
lbl_80AF70F0:
/* 80AF70F0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AF70F4  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80AF70F8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AF70FC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80AF7100  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80AF7104  38 00 00 DB */	li r0, 0xdb
/* 80AF7108  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80AF710C  38 00 00 00 */	li r0, 0
/* 80AF7110  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80AF7114  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80AF7118  7F C3 F3 78 */	mr r3, r30
/* 80AF711C  3C 80 80 AF */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80AF7120  38 84 6D B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80AF7124  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80AF7128  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80AF712C  4B 52 33 84 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AF7130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AF7134  40 82 00 0C */	bne lbl_80AF7140
/* 80AF7138  38 60 00 05 */	li r3, 5
/* 80AF713C  48 00 01 0C */	b lbl_80AF7248
lbl_80AF7140:
/* 80AF7140  3C 60 80 AF */	lis r3, data_80AF75C0@ha
/* 80AF7144  8C 03 75 C0 */	lbzu r0, data_80AF75C0@l(r3)
/* 80AF7148  28 00 00 00 */	cmplwi r0, 0
/* 80AF714C  40 82 00 20 */	bne lbl_80AF716C
/* 80AF7150  38 00 00 01 */	li r0, 1
/* 80AF7154  98 1E 0A 40 */	stb r0, 0xa40(r30)
/* 80AF7158  98 03 00 00 */	stb r0, 0(r3)
/* 80AF715C  38 00 FF FF */	li r0, -1
/* 80AF7160  3C 60 80 AF */	lis r3, l_HIO@ha
/* 80AF7164  38 63 75 D0 */	addi r3, r3, l_HIO@l
/* 80AF7168  98 03 00 04 */	stb r0, 4(r3)
lbl_80AF716C:
/* 80AF716C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80AF7170  60 00 01 00 */	ori r0, r0, 0x100
/* 80AF7174  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80AF7178  38 00 00 00 */	li r0, 0
/* 80AF717C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80AF7180  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80AF7184  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80AF7188  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF718C  38 63 00 24 */	addi r3, r3, 0x24
/* 80AF7190  90 7E 05 04 */	stw r3, 0x504(r30)
/* 80AF7194  90 01 00 08 */	stw r0, 8(r1)
/* 80AF7198  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80AF719C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AF71A0  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AF71A4  7F C6 F3 78 */	mr r6, r30
/* 80AF71A8  38 E0 00 01 */	li r7, 1
/* 80AF71AC  39 1E 06 3C */	addi r8, r30, 0x63c
/* 80AF71B0  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AF71B4  39 40 00 00 */	li r10, 0
/* 80AF71B8  4B 57 F0 90 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AF71BC  38 7E 06 3C */	addi r3, r30, 0x63c
/* 80AF71C0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80AF71C4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80AF71C8  4B 57 ED 90 */	b SetWall__12dBgS_AcchCirFff
/* 80AF71CC  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AF71D0  38 80 00 64 */	li r4, 0x64
/* 80AF71D4  38 A0 00 00 */	li r5, 0
/* 80AF71D8  7F C6 F3 78 */	mr r6, r30
/* 80AF71DC  4B 58 C6 84 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AF71E0  38 7E 08 90 */	addi r3, r30, 0x890
/* 80AF71E4  3C 80 80 AF */	lis r4, cc_sph_src@ha
/* 80AF71E8  38 84 74 D0 */	addi r4, r4, cc_sph_src@l
/* 80AF71EC  4B 58 D8 48 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80AF71F0  38 1E 08 54 */	addi r0, r30, 0x854
/* 80AF71F4  90 1E 08 D4 */	stw r0, 0x8d4(r30)
/* 80AF71F8  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80AF71FC  28 00 00 FF */	cmplwi r0, 0xff
/* 80AF7200  40 82 00 20 */	bne lbl_80AF7220
/* 80AF7204  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80AF7208  4B 77 07 4C */	b cM_rndF__Ff
/* 80AF720C  FC 00 08 1E */	fctiwz f0, f1
/* 80AF7210  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AF7214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF7218  98 1E 06 24 */	stb r0, 0x624(r30)
/* 80AF721C  48 00 00 20 */	b lbl_80AF723C
lbl_80AF7220:
/* 80AF7220  98 1E 06 24 */	stb r0, 0x624(r30)
/* 80AF7224  88 1E 06 24 */	lbz r0, 0x624(r30)
/* 80AF7228  7C 00 07 74 */	extsb r0, r0
/* 80AF722C  2C 00 00 03 */	cmpwi r0, 3
/* 80AF7230  40 81 00 0C */	ble lbl_80AF723C
/* 80AF7234  38 00 00 03 */	li r0, 3
/* 80AF7238  98 1E 06 24 */	stb r0, 0x624(r30)
lbl_80AF723C:
/* 80AF723C  7F C3 F3 78 */	mr r3, r30
/* 80AF7240  4B FF F9 35 */	bl daNpc_Sq_Execute__FP12npc_sq_class
lbl_80AF7244:
/* 80AF7244  7F A3 EB 78 */	mr r3, r29
lbl_80AF7248:
/* 80AF7248  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF724C  4B 86 AF D8 */	b _restgpr_28
/* 80AF7250  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF7254  7C 08 03 A6 */	mtlr r0
/* 80AF7258  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF725C  4E 80 00 20 */	blr 
