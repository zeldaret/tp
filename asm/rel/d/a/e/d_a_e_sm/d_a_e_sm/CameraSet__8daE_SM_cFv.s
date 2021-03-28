lbl_807960E4:
/* 807960E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807960E8  7C 08 02 A6 */	mflr r0
/* 807960EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807960F0  39 61 00 30 */	addi r11, r1, 0x30
/* 807960F4  4B BC C0 E8 */	b _savegpr_29
/* 807960F8  7C 7D 1B 78 */	mr r29, r3
/* 807960FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80796100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80796104  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80796108  7C 00 07 74 */	extsb r0, r0
/* 8079610C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80796110  7C 63 02 14 */	add r3, r3, r0
/* 80796114  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80796118  4B 9E B5 28 */	b dCam_getBody__Fv
/* 8079611C  7C 7E 1B 78 */	mr r30, r3
/* 80796120  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80796124  28 00 00 02 */	cmplwi r0, 2
/* 80796128  41 82 00 24 */	beq lbl_8079614C
/* 8079612C  7F A3 EB 78 */	mr r3, r29
/* 80796130  38 80 00 02 */	li r4, 2
/* 80796134  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80796138  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8079613C  38 C0 00 00 */	li r6, 0
/* 80796140  4B 88 57 C8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80796144  38 60 00 00 */	li r3, 0
/* 80796148  48 00 00 A4 */	b lbl_807961EC
lbl_8079614C:
/* 8079614C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80796150  4B 9C B3 80 */	b Stop__9dCamera_cFv
/* 80796154  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80796158  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 8079615C  EC 01 00 2A */	fadds f0, f1, f0
/* 80796160  D0 1D 0A 04 */	stfs f0, 0xa04(r29)
/* 80796164  38 61 00 14 */	addi r3, r1, 0x14
/* 80796168  7F C4 F3 78 */	mr r4, r30
/* 8079616C  4B 9E BD 2C */	b Center__9dCamera_cFv
/* 80796170  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80796174  D0 1D 09 D4 */	stfs f0, 0x9d4(r29)
/* 80796178  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8079617C  D0 1D 09 D8 */	stfs f0, 0x9d8(r29)
/* 80796180  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80796184  D0 1D 09 DC */	stfs f0, 0x9dc(r29)
/* 80796188  C0 1D 09 D4 */	lfs f0, 0x9d4(r29)
/* 8079618C  D0 1D 09 E0 */	stfs f0, 0x9e0(r29)
/* 80796190  C0 1D 09 D8 */	lfs f0, 0x9d8(r29)
/* 80796194  D0 1D 09 E4 */	stfs f0, 0x9e4(r29)
/* 80796198  C0 1D 09 DC */	lfs f0, 0x9dc(r29)
/* 8079619C  D0 1D 09 E8 */	stfs f0, 0x9e8(r29)
/* 807961A0  38 61 00 08 */	addi r3, r1, 8
/* 807961A4  7F C4 F3 78 */	mr r4, r30
/* 807961A8  4B 9E BC BC */	b Eye__9dCamera_cFv
/* 807961AC  C0 01 00 08 */	lfs f0, 8(r1)
/* 807961B0  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 807961B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807961B8  D0 1D 09 F0 */	stfs f0, 0x9f0(r29)
/* 807961BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807961C0  D0 1D 09 F4 */	stfs f0, 0x9f4(r29)
/* 807961C4  C0 1D 09 EC */	lfs f0, 0x9ec(r29)
/* 807961C8  D0 1D 09 F8 */	stfs f0, 0x9f8(r29)
/* 807961CC  C0 1D 09 F0 */	lfs f0, 0x9f0(r29)
/* 807961D0  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 807961D4  C0 1D 09 F4 */	lfs f0, 0x9f4(r29)
/* 807961D8  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 807961DC  38 7F 02 48 */	addi r3, r31, 0x248
/* 807961E0  38 80 00 03 */	li r4, 3
/* 807961E4  4B 9C CE 28 */	b SetTrimSize__9dCamera_cFl
/* 807961E8  38 60 00 01 */	li r3, 1
lbl_807961EC:
/* 807961EC  39 61 00 30 */	addi r11, r1, 0x30
/* 807961F0  4B BC C0 38 */	b _restgpr_29
/* 807961F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807961F8  7C 08 03 A6 */	mtlr r0
/* 807961FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80796200  4E 80 00 20 */	blr 
