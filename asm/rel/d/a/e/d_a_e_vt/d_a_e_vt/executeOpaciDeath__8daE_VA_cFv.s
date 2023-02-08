lbl_807CB1C4:
/* 807CB1C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807CB1C8  7C 08 02 A6 */	mflr r0
/* 807CB1CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 807CB1D0  39 61 00 70 */	addi r11, r1, 0x70
/* 807CB1D4  4B B9 70 05 */	bl _savegpr_28
/* 807CB1D8  7C 7C 1B 78 */	mr r28, r3
/* 807CB1DC  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807CB1E0  3B E4 EC A8 */	addi r31, r4, lit_3907@l /* 0x807CECA8@l */
/* 807CB1E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CB1E8  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CB1EC  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 807CB1F0  7C 00 07 74 */	extsb r0, r0
/* 807CB1F4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807CB1F8  7C 85 02 14 */	add r4, r5, r0
/* 807CB1FC  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 807CB200  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 807CB204  80 03 1C C8 */	lwz r0, 0x1cc8(r3)
/* 807CB208  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CB20C  90 03 1C C8 */	stw r0, 0x1cc8(r3)
/* 807CB210  80 03 1E 04 */	lwz r0, 0x1e04(r3)
/* 807CB214  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CB218  90 03 1E 04 */	stw r0, 0x1e04(r3)
/* 807CB21C  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807CB220  28 00 00 0A */	cmplwi r0, 0xa
/* 807CB224  41 81 06 48 */	bgt lbl_807CB86C
/* 807CB228  3C 80 80 7D */	lis r4, lit_7924@ha /* 0x807CF304@ha */
/* 807CB22C  38 84 F3 04 */	addi r4, r4, lit_7924@l /* 0x807CF304@l */
/* 807CB230  54 00 10 3A */	slwi r0, r0, 2
/* 807CB234  7C 04 00 2E */	lwzx r0, r4, r0
/* 807CB238  7C 09 03 A6 */	mtctr r0
/* 807CB23C  4E 80 04 20 */	bctr 
lbl_807CB240:
/* 807CB240  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 807CB244  28 00 00 02 */	cmplwi r0, 2
/* 807CB248  41 82 00 28 */	beq lbl_807CB270
/* 807CB24C  38 80 00 02 */	li r4, 2
/* 807CB250  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807CB254  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807CB258  38 C0 00 00 */	li r6, 0
/* 807CB25C  4B 85 06 AD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807CB260  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 807CB264  60 00 00 02 */	ori r0, r0, 2
/* 807CB268  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 807CB26C  48 00 06 48 */	b lbl_807CB8B4
lbl_807CB270:
/* 807CB270  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CB274  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CB278  80 63 00 00 */	lwz r3, 0(r3)
/* 807CB27C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807CB280  4B AE 46 05 */	bl subBgmStop__8Z2SeqMgrFv
/* 807CB284  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CB288  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CB28C  80 63 00 00 */	lwz r3, 0(r3)
/* 807CB290  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB294  D0 03 04 14 */	stfs f0, 0x414(r3)
/* 807CB298  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 807CB29C  38 00 00 00 */	li r0, 0
/* 807CB2A0  90 03 04 20 */	stw r0, 0x420(r3)
/* 807CB2A4  D0 03 04 1C */	stfs f0, 0x41c(r3)
/* 807CB2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CB2AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CB2B0  38 63 09 58 */	addi r3, r3, 0x958
/* 807CB2B4  38 80 00 07 */	li r4, 7
/* 807CB2B8  4B 86 96 61 */	bl onDungeonItem__12dSv_memBit_cFi
/* 807CB2BC  38 00 00 00 */	li r0, 0
/* 807CB2C0  90 1C 13 64 */	stw r0, 0x1364(r28)
/* 807CB2C4  7F 83 E3 78 */	mr r3, r28
/* 807CB2C8  38 80 00 19 */	li r4, 0x19
/* 807CB2CC  38 A0 00 00 */	li r5, 0
/* 807CB2D0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CB2D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CB2D8  4B FF 85 41 */	bl setBck__8daE_VA_cFiUcff
/* 807CB2DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070333@ha */
/* 807CB2E0  38 03 03 33 */	addi r0, r3, 0x0333 /* 0x00070333@l */
/* 807CB2E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CB2E8  38 7C 12 54 */	addi r3, r28, 0x1254
/* 807CB2EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807CB2F0  38 A0 FF FF */	li r5, -1
/* 807CB2F4  81 9C 12 54 */	lwz r12, 0x1254(r28)
/* 807CB2F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CB2FC  7D 89 03 A6 */	mtctr r12
/* 807CB300  4E 80 04 21 */	bctrl 
/* 807CB304  38 00 00 0A */	li r0, 0xa
/* 807CB308  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807CB30C  38 00 00 03 */	li r0, 3
/* 807CB310  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 807CB314  38 00 00 00 */	li r0, 0
/* 807CB318  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807CB31C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB320  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807CB324  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807CB328  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 807CB32C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807CB330  7F A3 EB 78 */	mr r3, r29
/* 807CB334  38 81 00 40 */	addi r4, r1, 0x40
/* 807CB338  38 A0 80 00 */	li r5, -32768
/* 807CB33C  38 C0 00 00 */	li r6, 0
/* 807CB340  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807CB344  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807CB348  7D 89 03 A6 */	mtctr r12
/* 807CB34C  4E 80 04 21 */	bctrl 
/* 807CB350  38 00 00 04 */	li r0, 4
/* 807CB354  90 1D 06 14 */	stw r0, 0x614(r29)
/* 807CB358  38 00 00 01 */	li r0, 1
/* 807CB35C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807CB360  38 00 00 00 */	li r0, 0
/* 807CB364  90 1D 06 10 */	stw r0, 0x610(r29)
/* 807CB368  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 807CB36C  38 7E 02 48 */	addi r3, r30, 0x248
/* 807CB370  4B 99 61 61 */	bl Stop__9dCamera_cFv
/* 807CB374  38 7E 02 48 */	addi r3, r30, 0x248
/* 807CB378  38 80 00 03 */	li r4, 3
/* 807CB37C  4B 99 7C 91 */	bl SetTrimSize__9dCamera_cFl
/* 807CB380  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 807CB384  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807CB388  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 807CB38C  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB390  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 807CB394  D0 1C 14 90 */	stfs f0, 0x1490(r28)
/* 807CB398  38 00 E8 00 */	li r0, -6144
/* 807CB39C  B0 1C 14 AC */	sth r0, 0x14ac(r28)
/* 807CB3A0  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 807CB3A4  D0 1C 14 A4 */	stfs f0, 0x14a4(r28)
/* 807CB3A8  C0 3C 14 A4 */	lfs f1, 0x14a4(r28)
/* 807CB3AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB3B0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807CB3B4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807CB3B8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807CB3BC  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807CB3C0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807CB3C4  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 807CB3C8  A8 1C 14 AC */	lha r0, 0x14ac(r28)
/* 807CB3CC  7C 05 02 14 */	add r0, r5, r0
/* 807CB3D0  7C 05 07 34 */	extsh r5, r0
/* 807CB3D4  38 C1 00 4C */	addi r6, r1, 0x4c
/* 807CB3D8  4B AA 59 E9 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807CB3DC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807CB3E0  D0 1C 14 98 */	stfs f0, 0x1498(r28)
/* 807CB3E4  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 807CB3E8  D0 1C 14 A0 */	stfs f0, 0x14a0(r28)
/* 807CB3EC  48 00 04 C8 */	b lbl_807CB8B4
lbl_807CB3F0:
/* 807CB3F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB3F4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 807CB3F8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807CB3FC  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 807CB400  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 807CB404  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 807CB408  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 807CB40C  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 807CB410  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 807CB414  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 807CB418  38 00 00 00 */	li r0, 0
/* 807CB41C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 807CB420  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807CB424  38 00 00 01 */	li r0, 1
/* 807CB428  90 1C 13 20 */	stw r0, 0x1320(r28)
lbl_807CB42C:
/* 807CB42C  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807CB430  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807CB434  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807CB438  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB43C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807CB440  D0 1C 14 90 */	stfs f0, 0x1490(r28)
/* 807CB444  C0 3C 14 8C */	lfs f1, 0x148c(r28)
/* 807CB448  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807CB44C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807CB450  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB454  A8 7C 14 AC */	lha r3, 0x14ac(r28)
/* 807CB458  38 03 00 40 */	addi r0, r3, 0x40
/* 807CB45C  B0 1C 14 AC */	sth r0, 0x14ac(r28)
/* 807CB460  C0 3C 14 A4 */	lfs f1, 0x14a4(r28)
/* 807CB464  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB468  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807CB46C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807CB470  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807CB474  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807CB478  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807CB47C  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 807CB480  A8 1C 14 AC */	lha r0, 0x14ac(r28)
/* 807CB484  7C 05 02 14 */	add r0, r5, r0
/* 807CB488  7C 05 07 34 */	extsh r5, r0
/* 807CB48C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 807CB490  4B AA 59 31 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807CB494  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807CB498  D0 1C 14 98 */	stfs f0, 0x1498(r28)
/* 807CB49C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807CB4A0  38 63 00 0C */	addi r3, r3, 0xc
/* 807CB4A4  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 807CB4A8  4B B5 CF 85 */	bl checkPass__12J3DFrameCtrlFf
/* 807CB4AC  2C 03 00 00 */	cmpwi r3, 0
/* 807CB4B0  41 82 03 BC */	beq lbl_807CB86C
/* 807CB4B4  38 00 00 02 */	li r0, 2
/* 807CB4B8  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807CB4BC  38 00 00 3C */	li r0, 0x3c
/* 807CB4C0  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807CB4C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB4C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807CB4CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807CB4D0  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 807CB4D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807CB4D8  7F A3 EB 78 */	mr r3, r29
/* 807CB4DC  38 81 00 40 */	addi r4, r1, 0x40
/* 807CB4E0  38 A0 80 00 */	li r5, -32768
/* 807CB4E4  38 C0 00 00 */	li r6, 0
/* 807CB4E8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807CB4EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807CB4F0  7D 89 03 A6 */	mtctr r12
/* 807CB4F4  4E 80 04 21 */	bctrl 
/* 807CB4F8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807CB4FC  D0 1C 14 A4 */	stfs f0, 0x14a4(r28)
/* 807CB500  C0 3C 14 A4 */	lfs f1, 0x14a4(r28)
/* 807CB504  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB508  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807CB50C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807CB510  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807CB514  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807CB518  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807CB51C  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 807CB520  A8 1C 14 AC */	lha r0, 0x14ac(r28)
/* 807CB524  7C 05 02 14 */	add r0, r5, r0
/* 807CB528  7C 05 07 34 */	extsh r5, r0
/* 807CB52C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 807CB530  4B AA 58 91 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807CB534  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807CB538  D0 1C 14 98 */	stfs f0, 0x1498(r28)
/* 807CB53C  48 00 03 30 */	b lbl_807CB86C
lbl_807CB540:
/* 807CB540  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807CB544  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807CB548  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807CB54C  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB550  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807CB554  D0 1C 14 90 */	stfs f0, 0x1490(r28)
/* 807CB558  C0 3C 14 8C */	lfs f1, 0x148c(r28)
/* 807CB55C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807CB560  EC 01 00 28 */	fsubs f0, f1, f0
/* 807CB564  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB568  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807CB56C  38 80 00 01 */	li r4, 1
/* 807CB570  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CB574  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CB578  40 82 00 18 */	bne lbl_807CB590
/* 807CB57C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CB580  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CB584  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CB588  41 82 00 08 */	beq lbl_807CB590
/* 807CB58C  38 80 00 00 */	li r4, 0
lbl_807CB590:
/* 807CB590  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CB594  41 82 02 D8 */	beq lbl_807CB86C
/* 807CB598  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 807CB59C  38 63 00 24 */	addi r3, r3, 0x24
/* 807CB5A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CB5A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CB5A8  4B B7 AF 09 */	bl PSMTXCopy
/* 807CB5AC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 807CB5B0  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 807CB5B4  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 807CB5B8  4B 84 17 E5 */	bl transM__14mDoMtx_stack_cFfff
/* 807CB5BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CB5C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CB5C4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807CB5C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807CB5CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807CB5D0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807CB5D4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807CB5D8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807CB5DC  7F 83 E3 78 */	mr r3, r28
/* 807CB5E0  38 81 00 40 */	addi r4, r1, 0x40
/* 807CB5E4  38 A0 00 14 */	li r5, 0x14
/* 807CB5E8  38 C0 00 00 */	li r6, 0
/* 807CB5EC  38 E0 00 FF */	li r7, 0xff
/* 807CB5F0  4B 85 14 E9 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807CB5F4  38 00 00 78 */	li r0, 0x78
/* 807CB5F8  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807CB5FC  38 00 00 03 */	li r0, 3
/* 807CB600  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807CB604  38 00 00 01 */	li r0, 1
/* 807CB608  98 1C 13 8A */	stb r0, 0x138a(r28)
/* 807CB60C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB610  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807CB614  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807CB618  80 7C 12 50 */	lwz r3, 0x1250(r28)
/* 807CB61C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807CB620  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807CB624  80 7C 12 50 */	lwz r3, 0x1250(r28)
/* 807CB628  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807CB62C  38 00 00 64 */	li r0, 0x64
/* 807CB630  90 1C 13 44 */	stw r0, 0x1344(r28)
/* 807CB634  7F 83 E3 78 */	mr r3, r28
/* 807CB638  4B FF 97 C5 */	bl setBugsEffect__8daE_VA_cFv
/* 807CB63C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070345@ha */
/* 807CB640  38 03 03 45 */	addi r0, r3, 0x0345 /* 0x00070345@l */
/* 807CB644  90 01 00 08 */	stw r0, 8(r1)
/* 807CB648  38 7C 12 54 */	addi r3, r28, 0x1254
/* 807CB64C  38 81 00 08 */	addi r4, r1, 8
/* 807CB650  38 A0 00 00 */	li r5, 0
/* 807CB654  38 C0 FF FF */	li r6, -1
/* 807CB658  81 9C 12 54 */	lwz r12, 0x1254(r28)
/* 807CB65C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CB660  7D 89 03 A6 */	mtctr r12
/* 807CB664  4E 80 04 21 */	bctrl 
/* 807CB668  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB66C  D0 1C 13 14 */	stfs f0, 0x1314(r28)
/* 807CB670  38 00 00 03 */	li r0, 3
/* 807CB674  90 1C 13 74 */	stw r0, 0x1374(r28)
/* 807CB678  48 00 01 F4 */	b lbl_807CB86C
lbl_807CB67C:
/* 807CB67C  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807CB680  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807CB684  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807CB688  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB68C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807CB690  D0 1C 14 90 */	stfs f0, 0x1490(r28)
/* 807CB694  C0 3C 14 8C */	lfs f1, 0x148c(r28)
/* 807CB698  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807CB69C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807CB6A0  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB6A4  80 1C 13 44 */	lwz r0, 0x1344(r28)
/* 807CB6A8  2C 00 00 00 */	cmpwi r0, 0
/* 807CB6AC  40 82 00 0C */	bne lbl_807CB6B8
/* 807CB6B0  38 00 00 01 */	li r0, 1
/* 807CB6B4  98 1C 13 88 */	stb r0, 0x1388(r28)
lbl_807CB6B8:
/* 807CB6B8  80 1C 13 44 */	lwz r0, 0x1344(r28)
/* 807CB6BC  2C 00 00 50 */	cmpwi r0, 0x50
/* 807CB6C0  40 82 00 14 */	bne lbl_807CB6D4
/* 807CB6C4  38 00 00 02 */	li r0, 2
/* 807CB6C8  98 1C 12 40 */	stb r0, 0x1240(r28)
/* 807CB6CC  38 00 00 00 */	li r0, 0
/* 807CB6D0  98 1C 13 89 */	stb r0, 0x1389(r28)
lbl_807CB6D4:
/* 807CB6D4  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807CB6D8  2C 00 00 00 */	cmpwi r0, 0
/* 807CB6DC  40 82 01 90 */	bne lbl_807CB86C
/* 807CB6E0  C0 1C 14 88 */	lfs f0, 0x1488(r28)
/* 807CB6E4  D0 1C 12 2C */	stfs f0, 0x122c(r28)
/* 807CB6E8  C0 1C 14 8C */	lfs f0, 0x148c(r28)
/* 807CB6EC  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807CB6F0  C0 1C 14 90 */	lfs f0, 0x1490(r28)
/* 807CB6F4  D0 1C 12 34 */	stfs f0, 0x1234(r28)
/* 807CB6F8  38 00 00 04 */	li r0, 4
/* 807CB6FC  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807CB700  38 00 00 96 */	li r0, 0x96
/* 807CB704  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807CB708  48 00 01 64 */	b lbl_807CB86C
lbl_807CB70C:
/* 807CB70C  80 1C 13 44 */	lwz r0, 0x1344(r28)
/* 807CB710  2C 00 00 00 */	cmpwi r0, 0
/* 807CB714  40 82 00 0C */	bne lbl_807CB720
/* 807CB718  38 00 00 01 */	li r0, 1
/* 807CB71C  98 1C 13 88 */	stb r0, 0x1388(r28)
lbl_807CB720:
/* 807CB720  C0 1C 12 2C */	lfs f0, 0x122c(r28)
/* 807CB724  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807CB728  C0 1C 12 30 */	lfs f0, 0x1230(r28)
/* 807CB72C  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807CB730  C0 1C 12 34 */	lfs f0, 0x1234(r28)
/* 807CB734  D0 1C 14 90 */	stfs f0, 0x1490(r28)
/* 807CB738  C0 3C 12 30 */	lfs f1, 0x1230(r28)
/* 807CB73C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807CB740  EC 01 00 2A */	fadds f0, f1, f0
/* 807CB744  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807CB748  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807CB74C  2C 00 00 00 */	cmpwi r0, 0
/* 807CB750  40 82 01 1C */	bne lbl_807CB86C
/* 807CB754  C0 1C 14 88 */	lfs f0, 0x1488(r28)
/* 807CB758  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807CB75C  C0 1C 14 8C */	lfs f0, 0x148c(r28)
/* 807CB760  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807CB764  C0 1C 14 90 */	lfs f0, 0x1490(r28)
/* 807CB768  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807CB76C  C0 1C 14 94 */	lfs f0, 0x1494(r28)
/* 807CB770  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CB774  C0 1C 14 98 */	lfs f0, 0x1498(r28)
/* 807CB778  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807CB77C  C0 1C 14 9C */	lfs f0, 0x149c(r28)
/* 807CB780  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807CB784  38 7E 02 48 */	addi r3, r30, 0x248
/* 807CB788  38 81 00 34 */	addi r4, r1, 0x34
/* 807CB78C  38 A1 00 28 */	addi r5, r1, 0x28
/* 807CB790  C0 3C 14 A0 */	lfs f1, 0x14a0(r28)
/* 807CB794  38 C0 00 00 */	li r6, 0
/* 807CB798  4B 9B 54 09 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 807CB79C  38 7E 02 48 */	addi r3, r30, 0x248
/* 807CB7A0  4B 99 5D 0D */	bl Start__9dCamera_cFv
/* 807CB7A4  38 7E 02 48 */	addi r3, r30, 0x248
/* 807CB7A8  38 80 00 00 */	li r4, 0
/* 807CB7AC  4B 99 78 61 */	bl SetTrimSize__9dCamera_cFl
/* 807CB7B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CB7B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CB7B8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807CB7BC  4B 87 6C AD */	bl reset__14dEvt_control_cFv
/* 807CB7C0  88 9C 13 8C */	lbz r4, 0x138c(r28)
/* 807CB7C4  28 04 00 FF */	cmplwi r4, 0xff
/* 807CB7C8  41 82 00 38 */	beq lbl_807CB800
/* 807CB7CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CB7D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CB7D4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807CB7D8  7C 05 07 74 */	extsb r5, r0
/* 807CB7DC  4B 86 9B 85 */	bl isSwitch__10dSv_info_cCFii
/* 807CB7E0  2C 03 00 00 */	cmpwi r3, 0
/* 807CB7E4  40 82 00 1C */	bne lbl_807CB800
/* 807CB7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CB7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CB7F0  88 9C 13 8C */	lbz r4, 0x138c(r28)
/* 807CB7F4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807CB7F8  7C 05 07 74 */	extsb r5, r0
/* 807CB7FC  4B 86 9A 05 */	bl onSwitch__10dSv_info_cFii
lbl_807CB800:
/* 807CB800  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CB804  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CB808  80 63 00 00 */	lwz r3, 0(r3)
/* 807CB80C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 807CB810  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 807CB814  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CB818  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 807CB81C  38 00 00 00 */	li r0, 0
/* 807CB820  90 03 04 10 */	stw r0, 0x410(r3)
/* 807CB824  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 807CB828  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 807CB82C  38 00 00 2D */	li r0, 0x2d
/* 807CB830  90 03 04 20 */	stw r0, 0x420(r3)
/* 807CB834  EC 43 00 28 */	fsubs f2, f3, f0
/* 807CB838  80 03 04 20 */	lwz r0, 0x420(r3)
/* 807CB83C  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 807CB840  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807CB844  3C 00 43 30 */	lis r0, 0x4330
/* 807CB848  90 01 00 58 */	stw r0, 0x58(r1)
/* 807CB84C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 807CB850  EC 00 08 28 */	fsubs f0, f0, f1
/* 807CB854  EC 02 00 24 */	fdivs f0, f2, f0
/* 807CB858  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 807CB85C  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 807CB860  7F 83 E3 78 */	mr r3, r28
/* 807CB864  4B 84 E4 19 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807CB868  48 00 00 4C */	b lbl_807CB8B4
lbl_807CB86C:
/* 807CB86C  C0 1C 14 88 */	lfs f0, 0x1488(r28)
/* 807CB870  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807CB874  C0 1C 14 8C */	lfs f0, 0x148c(r28)
/* 807CB878  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CB87C  C0 1C 14 90 */	lfs f0, 0x1490(r28)
/* 807CB880  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807CB884  C0 1C 14 94 */	lfs f0, 0x1494(r28)
/* 807CB888  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807CB88C  C0 1C 14 98 */	lfs f0, 0x1498(r28)
/* 807CB890  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807CB894  C0 1C 14 9C */	lfs f0, 0x149c(r28)
/* 807CB898  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807CB89C  38 7E 02 48 */	addi r3, r30, 0x248
/* 807CB8A0  38 81 00 1C */	addi r4, r1, 0x1c
/* 807CB8A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 807CB8A8  C0 3C 14 A0 */	lfs f1, 0x14a0(r28)
/* 807CB8AC  38 C0 00 00 */	li r6, 0
/* 807CB8B0  4B 9B 52 31 */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_807CB8B4:
/* 807CB8B4  39 61 00 70 */	addi r11, r1, 0x70
/* 807CB8B8  4B B9 69 6D */	bl _restgpr_28
/* 807CB8BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807CB8C0  7C 08 03 A6 */	mtlr r0
/* 807CB8C4  38 21 00 70 */	addi r1, r1, 0x70
/* 807CB8C8  4E 80 00 20 */	blr 
