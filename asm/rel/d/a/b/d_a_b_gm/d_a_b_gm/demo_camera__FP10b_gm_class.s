lbl_805F06C0:
/* 805F06C0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805F06C4  7C 08 02 A6 */	mflr r0
/* 805F06C8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805F06CC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805F06D0  4B D7 1A F9 */	bl _savegpr_24
/* 805F06D4  7C 7F 1B 78 */	mr r31, r3
/* 805F06D8  3C 80 80 5F */	lis r4, lit_3774@ha /* 0x805F4188@ha */
/* 805F06DC  3B C4 41 88 */	addi r30, r4, lit_3774@l /* 0x805F4188@l */
/* 805F06E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F06E4  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F06E8  80 BB 5D AC */	lwz r5, 0x5dac(r27)
/* 805F06EC  7C BD 2B 78 */	mr r29, r5
/* 805F06F0  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 805F06F4  7C 00 07 74 */	extsb r0, r0
/* 805F06F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805F06FC  7C 9B 02 14 */	add r4, r27, r0
/* 805F0700  83 84 5D 74 */	lwz r28, 0x5d74(r4)
/* 805F0704  3B 40 00 00 */	li r26, 0
/* 805F0708  A8 03 1C 8C */	lha r0, 0x1c8c(r3)
/* 805F070C  28 00 00 33 */	cmplwi r0, 0x33
/* 805F0710  41 81 16 10 */	bgt lbl_805F1D20
/* 805F0714  3C 80 80 5F */	lis r4, lit_5519@ha /* 0x805F449C@ha */
/* 805F0718  38 84 44 9C */	addi r4, r4, lit_5519@l /* 0x805F449C@l */
/* 805F071C  54 00 10 3A */	slwi r0, r0, 2
/* 805F0720  7C 04 00 2E */	lwzx r0, r4, r0
/* 805F0724  7C 09 03 A6 */	mtctr r0
/* 805F0728  4E 80 04 20 */	bctr 
lbl_805F072C:
/* 805F072C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805F0730  28 00 00 02 */	cmplwi r0, 2
/* 805F0734  41 82 00 28 */	beq lbl_805F075C
/* 805F0738  38 80 00 02 */	li r4, 2
/* 805F073C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805F0740  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805F0744  38 C0 00 00 */	li r6, 0
/* 805F0748  4B A2 B1 C1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805F074C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805F0750  60 00 00 02 */	ori r0, r0, 2
/* 805F0754  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805F0758  48 00 17 E8 */	b lbl_805F1F40
lbl_805F075C:
/* 805F075C  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0760  4B B7 0D 71 */	bl Stop__9dCamera_cFv
/* 805F0764  38 00 00 02 */	li r0, 2
/* 805F0768  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F076C  38 60 00 00 */	li r3, 0
/* 805F0770  B0 7F 1C 8E */	sth r3, 0x1c8e(r31)
/* 805F0774  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F0778  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F077C  38 00 00 03 */	li r0, 3
/* 805F0780  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805F0784  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 805F0788  7F A3 EB 78 */	mr r3, r29
/* 805F078C  38 80 00 14 */	li r4, 0x14
/* 805F0790  38 A0 00 00 */	li r5, 0
/* 805F0794  38 C0 00 00 */	li r6, 0
/* 805F0798  38 E0 00 00 */	li r7, 0
/* 805F079C  48 00 39 C5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805F07A0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F07A4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805F07A8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805F07AC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 805F07B0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F07B4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F07B8  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F07BC  38 A0 80 00 */	li r5, -32768
/* 805F07C0  38 C0 00 00 */	li r6, 0
/* 805F07C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805F07C8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805F07CC  7D 89 03 A6 */	mtctr r12
/* 805F07D0  4E 80 04 21 */	bctrl 
/* 805F07D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F07D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F07DC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805F07E0  7F E4 FB 78 */	mr r4, r31
/* 805F07E4  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 805F07E8  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 805F07EC  38 C0 00 00 */	li r6, 0
/* 805F07F0  4B A5 21 25 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 805F07F4  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F07F8  38 80 00 03 */	li r4, 3
/* 805F07FC  4B B7 28 11 */	bl SetTrimSize__9dCamera_cFl
/* 805F0800  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070478@ha */
/* 805F0804  38 03 04 78 */	addi r0, r3, 0x0478 /* 0x00070478@l */
/* 805F0808  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F080C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F0810  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F0814  80 63 00 00 */	lwz r3, 0(r3)
/* 805F0818  38 81 00 14 */	addi r4, r1, 0x14
/* 805F081C  38 A0 00 00 */	li r5, 0
/* 805F0820  38 C0 00 00 */	li r6, 0
/* 805F0824  38 E0 00 00 */	li r7, 0
/* 805F0828  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F082C  FC 40 08 90 */	fmr f2, f1
/* 805F0830  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 805F0834  FC 80 18 90 */	fmr f4, f3
/* 805F0838  39 00 00 00 */	li r8, 0
/* 805F083C  4B CB B1 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805F0840  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F0844  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F0848  80 63 00 00 */	lwz r3, 0(r3)
/* 805F084C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F0850  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000093@ha */
/* 805F0854  38 84 00 93 */	addi r4, r4, 0x0093 /* 0x01000093@l */
/* 805F0858  4B CB EC 45 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_805F085C:
/* 805F085C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0860  2C 00 00 01 */	cmpwi r0, 1
/* 805F0864  41 80 00 78 */	blt lbl_805F08DC
/* 805F0868  40 82 00 34 */	bne lbl_805F089C
/* 805F086C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805F0870  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F0874  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 805F0878  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F087C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805F0880  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F0884  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0888  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F088C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 805F0890  D0 1F 1C 94 */	stfs f0, 0x1c94(r31)
/* 805F0894  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805F0898  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
lbl_805F089C:
/* 805F089C  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 805F08A0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805F08A4  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F08A8  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 805F08AC  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F08B0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F08B4  4B C7 F1 89 */	bl cLib_addCalc2__FPffff
/* 805F08B8  38 7F 1C DC */	addi r3, r31, 0x1cdc
/* 805F08BC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F08C0  FC 40 08 90 */	fmr f2, f1
/* 805F08C4  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 805F08C8  4B C7 F1 75 */	bl cLib_addCalc2__FPffff
/* 805F08CC  C0 3F 1C 98 */	lfs f1, 0x1c98(r31)
/* 805F08D0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F08D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F08D8  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
lbl_805F08DC:
/* 805F08DC  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F08E0  2C 00 00 8C */	cmpwi r0, 0x8c
/* 805F08E4  40 82 14 3C */	bne lbl_805F1D20
/* 805F08E8  38 00 00 03 */	li r0, 3
/* 805F08EC  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F08F0  38 00 00 00 */	li r0, 0
/* 805F08F4  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F08F8  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 805F08FC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805F0900  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0904  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805F0908  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 805F090C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F0910  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F0914  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F0918  38 A0 9D B7 */	li r5, -25161
/* 805F091C  38 C0 00 00 */	li r6, 0
/* 805F0920  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805F0924  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805F0928  7D 89 03 A6 */	mtctr r12
/* 805F092C  4E 80 04 21 */	bctrl 
/* 805F0930  7F A3 EB 78 */	mr r3, r29
/* 805F0934  38 80 00 02 */	li r4, 2
/* 805F0938  38 A0 00 00 */	li r5, 0
/* 805F093C  38 C0 00 00 */	li r6, 0
/* 805F0940  38 E0 00 00 */	li r7, 0
/* 805F0944  48 00 38 1D */	bl changeDemoMode__9daPy_py_cFUliis
/* 805F0948  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 805F094C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 805F0950  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0954  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805F0958  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 805F095C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805F0960  D0 3D 06 1C */	stfs f1, 0x61c(r29)
/* 805F0964  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805F0968  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 805F096C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805F0970  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 805F0974  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 805F0978  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F097C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 805F0980  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F0984  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805F0988  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F098C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805F0990  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F0994  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 805F0998  D0 1F 1C 94 */	stfs f0, 0x1c94(r31)
/* 805F099C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805F09A0  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
/* 805F09A4  48 00 13 7C */	b lbl_805F1D20
lbl_805F09A8:
/* 805F09A8  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F09AC  2C 00 00 28 */	cmpwi r0, 0x28
/* 805F09B0  41 80 00 18 */	blt lbl_805F09C8
/* 805F09B4  38 7F 1C A0 */	addi r3, r31, 0x1ca0
/* 805F09B8  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 805F09BC  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F09C0  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 805F09C4  4B C7 F0 79 */	bl cLib_addCalc2__FPffff
lbl_805F09C8:
/* 805F09C8  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F09CC  2C 00 00 AA */	cmpwi r0, 0xaa
/* 805F09D0  40 82 00 1C */	bne lbl_805F09EC
/* 805F09D4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F09D8  38 80 00 14 */	li r4, 0x14
/* 805F09DC  38 A0 00 00 */	li r5, 0
/* 805F09E0  38 C0 00 00 */	li r6, 0
/* 805F09E4  38 E0 00 00 */	li r7, 0
/* 805F09E8  48 00 37 79 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F09EC:
/* 805F09EC  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F09F0  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 805F09F4  40 82 00 10 */	bne lbl_805F0A04
/* 805F09F8  38 00 00 01 */	li r0, 1
/* 805F09FC  98 1F 06 F5 */	stb r0, 0x6f5(r31)
/* 805F0A00  90 1F 1C FC */	stw r0, 0x1cfc(r31)
lbl_805F0A04:
/* 805F0A04  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0A08  2C 00 00 FA */	cmpwi r0, 0xfa
/* 805F0A0C  40 82 00 1C */	bne lbl_805F0A28
/* 805F0A10  7F A3 EB 78 */	mr r3, r29
/* 805F0A14  38 80 00 19 */	li r4, 0x19
/* 805F0A18  38 A0 00 00 */	li r5, 0
/* 805F0A1C  38 C0 00 00 */	li r6, 0
/* 805F0A20  38 E0 00 00 */	li r7, 0
/* 805F0A24  48 00 37 3D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F0A28:
/* 805F0A28  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0A2C  2C 00 01 15 */	cmpwi r0, 0x115
/* 805F0A30  40 82 12 F0 */	bne lbl_805F1D20
/* 805F0A34  38 00 00 04 */	li r0, 4
/* 805F0A38  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F0A3C  38 60 00 00 */	li r3, 0
/* 805F0A40  B0 7F 1C 8E */	sth r3, 0x1c8e(r31)
/* 805F0A44  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805F0A48  B0 1F 1C E4 */	sth r0, 0x1ce4(r31)
/* 805F0A4C  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 805F0A50  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F0A54  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 805F0A58  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F0A5C  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 805F0A60  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F0A64  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 805F0A68  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F0A6C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 805F0A70  D0 1F 1C 94 */	stfs f0, 0x1c94(r31)
/* 805F0A74  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805F0A78  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
/* 805F0A7C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0A80  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
/* 805F0A84  98 7F 06 F5 */	stb r3, 0x6f5(r31)
/* 805F0A88  38 00 00 02 */	li r0, 2
/* 805F0A8C  90 1F 1C FC */	stw r0, 0x1cfc(r31)
/* 805F0A90  48 00 12 90 */	b lbl_805F1D20
lbl_805F0A94:
/* 805F0A94  38 7F 1C E4 */	addi r3, r31, 0x1ce4
/* 805F0A98  A8 9F 05 C4 */	lha r4, 0x5c4(r31)
/* 805F0A9C  3C 84 00 01 */	addis r4, r4, 1
/* 805F0AA0  38 04 80 00 */	addi r0, r4, -32768
/* 805F0AA4  7C 04 07 34 */	extsh r4, r0
/* 805F0AA8  38 A0 00 01 */	li r5, 1
/* 805F0AAC  38 C0 10 00 */	li r6, 0x1000
/* 805F0AB0  4B C7 FB 59 */	bl cLib_addCalcAngleS2__FPssss
/* 805F0AB4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F0AB8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805F0ABC  A8 BF 1C E4 */	lha r5, 0x1ce4(r31)
/* 805F0AC0  38 C0 00 00 */	li r6, 0
/* 805F0AC4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805F0AC8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805F0ACC  7D 89 03 A6 */	mtctr r12
/* 805F0AD0  4E 80 04 21 */	bctrl 
/* 805F0AD4  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0AD8  2C 00 00 19 */	cmpwi r0, 0x19
/* 805F0ADC  40 82 00 1C */	bne lbl_805F0AF8
/* 805F0AE0  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F0AE4  38 80 00 17 */	li r4, 0x17
/* 805F0AE8  38 A0 00 01 */	li r5, 1
/* 805F0AEC  38 C0 00 02 */	li r6, 2
/* 805F0AF0  38 E0 00 00 */	li r7, 0
/* 805F0AF4  48 00 36 6D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F0AF8:
/* 805F0AF8  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0AFC  2C 00 00 37 */	cmpwi r0, 0x37
/* 805F0B00  41 80 12 20 */	blt lbl_805F1D20
/* 805F0B04  38 7F 1C A0 */	addi r3, r31, 0x1ca0
/* 805F0B08  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 805F0B0C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 805F0B10  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 805F0B14  4B C7 EF 29 */	bl cLib_addCalc2__FPffff
/* 805F0B18  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0B1C  2C 00 01 04 */	cmpwi r0, 0x104
/* 805F0B20  41 80 00 C0 */	blt lbl_805F0BE0
/* 805F0B24  40 82 00 0C */	bne lbl_805F0B30
/* 805F0B28  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0B2C  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
lbl_805F0B30:
/* 805F0B30  38 7F 1C D8 */	addi r3, r31, 0x1cd8
/* 805F0B34  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 805F0B38  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 805F0B3C  C0 7F 1C DC */	lfs f3, 0x1cdc(r31)
/* 805F0B40  4B C7 EE FD */	bl cLib_addCalc2__FPffff
/* 805F0B44  38 7F 1C DC */	addi r3, r31, 0x1cdc
/* 805F0B48  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F0B4C  FC 40 08 90 */	fmr f2, f1
/* 805F0B50  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 805F0B54  4B C7 EE E9 */	bl cLib_addCalc2__FPffff
/* 805F0B58  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0B5C  2C 00 01 18 */	cmpwi r0, 0x118
/* 805F0B60  40 82 00 0C */	bne lbl_805F0B6C
/* 805F0B64  38 60 04 84 */	li r3, 0x484
/* 805F0B68  4B A2 F4 5D */	bl fopMsgM_messageSetDemo__FUl
lbl_805F0B6C:
/* 805F0B6C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0B70  2C 00 01 86 */	cmpwi r0, 0x186
/* 805F0B74  40 82 00 2C */	bne lbl_805F0BA0
/* 805F0B78  38 00 00 04 */	li r0, 4
/* 805F0B7C  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 805F0B80  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 805F0B84  4B C7 6D D1 */	bl cM_rndF__Ff
/* 805F0B88  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805F0B8C  EC 00 08 2A */	fadds f0, f0, f1
/* 805F0B90  FC 00 00 1E */	fctiwz f0, f0
/* 805F0B94  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 805F0B98  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805F0B9C  B0 1F 07 26 */	sth r0, 0x726(r31)
lbl_805F0BA0:
/* 805F0BA0  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0BA4  2C 00 01 A4 */	cmpwi r0, 0x1a4
/* 805F0BA8  40 82 00 90 */	bne lbl_805F0C38
/* 805F0BAC  3B 40 00 01 */	li r26, 1
/* 805F0BB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F0BB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F0BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 805F0BBC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F0BC0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000094@ha */
/* 805F0BC4  38 84 00 94 */	addi r4, r4, 0x0094 /* 0x01000094@l */
/* 805F0BC8  38 A0 00 00 */	li r5, 0
/* 805F0BCC  38 C0 00 00 */	li r6, 0
/* 805F0BD0  4B CB E4 41 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805F0BD4  38 00 00 01 */	li r0, 1
/* 805F0BD8  98 1F 05 66 */	stb r0, 0x566(r31)
/* 805F0BDC  48 00 00 5C */	b lbl_805F0C38
lbl_805F0BE0:
/* 805F0BE0  2C 00 00 CD */	cmpwi r0, 0xcd
/* 805F0BE4  41 80 00 1C */	blt lbl_805F0C00
/* 805F0BE8  38 7F 1C D8 */	addi r3, r31, 0x1cd8
/* 805F0BEC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805F0BF0  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 805F0BF4  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 805F0BF8  4B C7 EE 45 */	bl cLib_addCalc2__FPffff
/* 805F0BFC  48 00 00 3C */	b lbl_805F0C38
lbl_805F0C00:
/* 805F0C00  2C 00 00 55 */	cmpwi r0, 0x55
/* 805F0C04  41 80 00 34 */	blt lbl_805F0C38
/* 805F0C08  38 7F 1C D8 */	addi r3, r31, 0x1cd8
/* 805F0C0C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805F0C10  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F0C14  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F0C18  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F0C1C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F0C20  4B C7 EE 1D */	bl cLib_addCalc2__FPffff
/* 805F0C24  38 7F 1C DC */	addi r3, r31, 0x1cdc
/* 805F0C28  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F0C2C  FC 40 08 90 */	fmr f2, f1
/* 805F0C30  C0 7E 01 50 */	lfs f3, 0x150(r30)
/* 805F0C34  4B C7 EE 09 */	bl cLib_addCalc2__FPffff
lbl_805F0C38:
/* 805F0C38  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0C3C  2C 00 00 7D */	cmpwi r0, 0x7d
/* 805F0C40  41 80 10 E0 */	blt lbl_805F1D20
/* 805F0C44  38 00 00 01 */	li r0, 1
/* 805F0C48  98 1F 1A D6 */	stb r0, 0x1ad6(r31)
/* 805F0C4C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0C50  2C 00 00 7D */	cmpwi r0, 0x7d
/* 805F0C54  40 82 00 0C */	bne lbl_805F0C60
/* 805F0C58  38 00 00 3C */	li r0, 0x3c
/* 805F0C5C  B0 1F 1A DE */	sth r0, 0x1ade(r31)
lbl_805F0C60:
/* 805F0C60  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0C64  2C 00 00 CD */	cmpwi r0, 0xcd
/* 805F0C68  40 82 10 B8 */	bne lbl_805F1D20
/* 805F0C6C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0C70  D0 1F 1A E0 */	stfs f0, 0x1ae0(r31)
/* 805F0C74  48 00 10 AC */	b lbl_805F1D20
lbl_805F0C78:
/* 805F0C78  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805F0C7C  28 00 00 02 */	cmplwi r0, 2
/* 805F0C80  41 82 00 28 */	beq lbl_805F0CA8
/* 805F0C84  38 80 00 02 */	li r4, 2
/* 805F0C88  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805F0C8C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805F0C90  38 C0 00 00 */	li r6, 0
/* 805F0C94  4B A2 AC 75 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805F0C98  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805F0C9C  60 00 00 02 */	ori r0, r0, 2
/* 805F0CA0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805F0CA4  48 00 12 9C */	b lbl_805F1F40
lbl_805F0CA8:
/* 805F0CA8  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0CAC  4B B7 08 25 */	bl Stop__9dCamera_cFv
/* 805F0CB0  38 00 00 0B */	li r0, 0xb
/* 805F0CB4  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F0CB8  38 00 00 00 */	li r0, 0
/* 805F0CBC  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F0CC0  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F0CC4  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F0CC8  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0CCC  38 80 00 03 */	li r4, 3
/* 805F0CD0  4B B7 23 3D */	bl SetTrimSize__9dCamera_cFl
/* 805F0CD4  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 805F0CD8  D0 1F 1C E0 */	stfs f0, 0x1ce0(r31)
/* 805F0CDC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0CE0  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
lbl_805F0CE4:
/* 805F0CE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F0CE8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F0CEC  80 63 00 00 */	lwz r3, 0(r3)
/* 805F0CF0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805F0CF4  4B A1 B6 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F0CF8  C0 1F 1C E0 */	lfs f0, 0x1ce0(r31)
/* 805F0CFC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F0D00  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 805F0D04  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F0D08  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805F0D0C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F0D10  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F0D14  38 81 00 9C */	addi r4, r1, 0x9c
/* 805F0D18  4B C8 01 D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F0D1C  38 61 00 9C */	addi r3, r1, 0x9c
/* 805F0D20  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805F0D24  7C 65 1B 78 */	mr r5, r3
/* 805F0D28  4B D5 63 69 */	bl PSVECAdd
/* 805F0D2C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805F0D30  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805F0D34  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805F0D38  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 805F0D3C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805F0D40  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805F0D44  38 7F 1C E0 */	addi r3, r31, 0x1ce0
/* 805F0D48  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 805F0D4C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0D50  C0 7E 01 60 */	lfs f3, 0x160(r30)
/* 805F0D54  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F0D58  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F0D5C  4B C7 EC E1 */	bl cLib_addCalc2__FPffff
/* 805F0D60  38 7F 1C DC */	addi r3, r31, 0x1cdc
/* 805F0D64  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F0D68  FC 40 08 90 */	fmr f2, f1
/* 805F0D6C  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 805F0D70  4B C7 EC CD */	bl cLib_addCalc2__FPffff
/* 805F0D74  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0D78  2C 00 00 00 */	cmpwi r0, 0
/* 805F0D7C  40 82 00 38 */	bne lbl_805F0DB4
/* 805F0D80  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 805F0D84  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F0D88  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805F0D8C  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F0D90  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805F0D94  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F0D98  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805F0D9C  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F0DA0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805F0DA4  D0 1F 1C 94 */	stfs f0, 0x1c94(r31)
/* 805F0DA8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805F0DAC  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
/* 805F0DB0  48 00 00 54 */	b lbl_805F0E04
lbl_805F0DB4:
/* 805F0DB4  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 805F0DB8  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 805F0DBC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0DC0  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F0DC4  4B C7 EC 79 */	bl cLib_addCalc2__FPffff
/* 805F0DC8  38 7F 1C A4 */	addi r3, r31, 0x1ca4
/* 805F0DCC  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 805F0DD0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0DD4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F0DD8  4B C7 EC 65 */	bl cLib_addCalc2__FPffff
/* 805F0DDC  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F0DE0  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 805F0DE4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0DE8  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805F0DEC  4B C7 EC 51 */	bl cLib_addCalc2__FPffff
/* 805F0DF0  38 7F 1C 98 */	addi r3, r31, 0x1c98
/* 805F0DF4  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 805F0DF8  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0DFC  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805F0E00  4B C7 EC 3D */	bl cLib_addCalc2__FPffff
lbl_805F0E04:
/* 805F0E04  A8 1F 07 1E */	lha r0, 0x71e(r31)
/* 805F0E08  2C 00 00 06 */	cmpwi r0, 6
/* 805F0E0C  41 82 0F 14 */	beq lbl_805F1D20
/* 805F0E10  3B 40 00 01 */	li r26, 1
/* 805F0E14  48 00 0F 0C */	b lbl_805F1D20
lbl_805F0E18:
/* 805F0E18  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805F0E1C  28 00 00 02 */	cmplwi r0, 2
/* 805F0E20  41 82 00 28 */	beq lbl_805F0E48
/* 805F0E24  38 80 00 02 */	li r4, 2
/* 805F0E28  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805F0E2C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805F0E30  38 C0 00 00 */	li r6, 0
/* 805F0E34  4B A2 AA D5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805F0E38  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805F0E3C  60 00 00 02 */	ori r0, r0, 2
/* 805F0E40  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805F0E44  48 00 10 FC */	b lbl_805F1F40
lbl_805F0E48:
/* 805F0E48  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0E4C  4B B7 06 85 */	bl Stop__9dCamera_cFv
/* 805F0E50  38 00 00 15 */	li r0, 0x15
/* 805F0E54  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F0E58  38 00 00 00 */	li r0, 0
/* 805F0E5C  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F0E60  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F0E64  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F0E68  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0E6C  38 80 00 03 */	li r4, 3
/* 805F0E70  4B B7 21 9D */	bl SetTrimSize__9dCamera_cFl
/* 805F0E74  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F0E78  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
lbl_805F0E7C:
/* 805F0E7C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805F0E80  FC 20 00 50 */	fneg f1, f0
/* 805F0E84  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805F0E88  FC 40 00 50 */	fneg f2, f0
/* 805F0E8C  4B C7 67 E9 */	bl cM_atan2s__Fff
/* 805F0E90  7C 64 1B 78 */	mr r4, r3
/* 805F0E94  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F0E98  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F0E9C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F0EA0  4B A1 B5 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 805F0EA4  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805F0EA8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F0EAC  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 805F0EB0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F0EB4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805F0EB8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F0EBC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F0EC0  38 81 00 9C */	addi r4, r1, 0x9c
/* 805F0EC4  4B C8 00 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F0EC8  38 61 00 9C */	addi r3, r1, 0x9c
/* 805F0ECC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805F0ED0  7C 65 1B 78 */	mr r5, r3
/* 805F0ED4  4B D5 61 BD */	bl PSVECAdd
/* 805F0ED8  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 805F0EDC  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 805F0EE0  C0 7F 05 3C */	lfs f3, 0x53c(r31)
/* 805F0EE4  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 805F0EE8  C0 5F 05 40 */	lfs f2, 0x540(r31)
/* 805F0EEC  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 805F0EF0  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 805F0EF4  EC 03 00 2A */	fadds f0, f3, f0
/* 805F0EF8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 805F0EFC  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0F00  2C 00 00 00 */	cmpwi r0, 0
/* 805F0F04  40 82 00 2C */	bne lbl_805F0F30
/* 805F0F08  D0 3F 1C 9C */	stfs f1, 0x1c9c(r31)
/* 805F0F0C  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F0F10  D0 5F 1C A4 */	stfs f2, 0x1ca4(r31)
/* 805F0F14  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805F0F18  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F0F1C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805F0F20  D0 1F 1C 94 */	stfs f0, 0x1c94(r31)
/* 805F0F24  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805F0F28  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
/* 805F0F2C  48 00 00 50 */	b lbl_805F0F7C
lbl_805F0F30:
/* 805F0F30  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 805F0F34  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0F38  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F0F3C  4B C7 EB 01 */	bl cLib_addCalc2__FPffff
/* 805F0F40  38 7F 1C A4 */	addi r3, r31, 0x1ca4
/* 805F0F44  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 805F0F48  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0F4C  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F0F50  4B C7 EA ED */	bl cLib_addCalc2__FPffff
/* 805F0F54  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F0F58  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 805F0F5C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0F60  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805F0F64  4B C7 EA D9 */	bl cLib_addCalc2__FPffff
/* 805F0F68  38 7F 1C 98 */	addi r3, r31, 0x1c98
/* 805F0F6C  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 805F0F70  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F0F74  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805F0F78  4B C7 EA C5 */	bl cLib_addCalc2__FPffff
lbl_805F0F7C:
/* 805F0F7C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F0F80  2C 00 00 28 */	cmpwi r0, 0x28
/* 805F0F84  40 82 0D 9C */	bne lbl_805F1D20
/* 805F0F88  3B 40 00 01 */	li r26, 1
/* 805F0F8C  48 00 0D 94 */	b lbl_805F1D20
lbl_805F0F90:
/* 805F0F90  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805F0F94  28 00 00 02 */	cmplwi r0, 2
/* 805F0F98  41 82 00 28 */	beq lbl_805F0FC0
/* 805F0F9C  38 80 00 02 */	li r4, 2
/* 805F0FA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805F0FA4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805F0FA8  38 C0 00 00 */	li r6, 0
/* 805F0FAC  4B A2 A9 5D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805F0FB0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805F0FB4  60 00 00 02 */	ori r0, r0, 2
/* 805F0FB8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805F0FBC  48 00 0F 84 */	b lbl_805F1F40
lbl_805F0FC0:
/* 805F0FC0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0FC4  4B B7 05 0D */	bl Stop__9dCamera_cFv
/* 805F0FC8  38 00 00 1F */	li r0, 0x1f
/* 805F0FCC  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F0FD0  38 00 00 00 */	li r0, 0
/* 805F0FD4  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F0FD8  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F0FDC  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F0FE0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F0FE4  38 80 00 03 */	li r4, 3
/* 805F0FE8  4B B7 20 25 */	bl SetTrimSize__9dCamera_cFl
/* 805F0FEC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805F0FF0  D0 3F 1C DC */	stfs f1, 0x1cdc(r31)
/* 805F0FF4  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 805F0FF8  D0 1F 1C E0 */	stfs f0, 0x1ce0(r31)
/* 805F0FFC  38 60 00 00 */	li r3, 0
/* 805F1000  B0 7F 1C E4 */	sth r3, 0x1ce4(r31)
/* 805F1004  38 00 D8 F0 */	li r0, -10000
/* 805F1008  B0 1F 1C E8 */	sth r0, 0x1ce8(r31)
/* 805F100C  D0 3F 1C DC */	stfs f1, 0x1cdc(r31)
/* 805F1010  38 00 00 03 */	li r0, 3
/* 805F1014  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805F1018  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 805F101C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F1020  38 80 00 17 */	li r4, 0x17
/* 805F1024  38 A0 00 01 */	li r5, 1
/* 805F1028  38 C0 00 02 */	li r6, 2
/* 805F102C  38 E0 00 00 */	li r7, 0
/* 805F1030  48 00 31 31 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805F1034  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F1038  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F103C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1040  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F1044  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200004E@ha */
/* 805F1048  38 84 00 4E */	addi r4, r4, 0x004E /* 0x0200004E@l */
/* 805F104C  4B CB EB 49 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 805F1050  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F1054  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F1058  80 63 00 00 */	lwz r3, 0(r3)
/* 805F105C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F1060  4B CB ED B9 */	bl bgmStreamPlay__8Z2SeqMgrFv
lbl_805F1064:
/* 805F1064  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1068  2C 00 00 0A */	cmpwi r0, 0xa
/* 805F106C  40 80 00 94 */	bge lbl_805F1100
/* 805F1070  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805F1074  FC 20 00 50 */	fneg f1, f0
/* 805F1078  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805F107C  FC 40 00 50 */	fneg f2, f0
/* 805F1080  4B C7 65 F5 */	bl cM_atan2s__Fff
/* 805F1084  7C 64 1B 78 */	mr r4, r3
/* 805F1088  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F108C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1090  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1094  4B A1 B3 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1098  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 805F109C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F10A0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F10A4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F10A8  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 805F10AC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F10B0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F10B4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F10B8  4B C7 FE 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F10BC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 805F10C0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805F10C4  7C 65 1B 78 */	mr r5, r3
/* 805F10C8  4B D5 5F C9 */	bl PSVECAdd
/* 805F10CC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F10D0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805F10D4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F10D8  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F10DC  A8 BF 05 C4 */	lha r5, 0x5c4(r31)
/* 805F10E0  3C A5 00 01 */	addis r5, r5, 1
/* 805F10E4  38 05 80 00 */	addi r0, r5, -32768
/* 805F10E8  7C 05 07 34 */	extsh r5, r0
/* 805F10EC  38 C0 00 00 */	li r6, 0
/* 805F10F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805F10F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805F10F8  7D 89 03 A6 */	mtctr r12
/* 805F10FC  4E 80 04 21 */	bctrl 
lbl_805F1100:
/* 805F1100  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805F1104  FC 20 00 50 */	fneg f1, f0
/* 805F1108  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805F110C  FC 40 00 50 */	fneg f2, f0
/* 805F1110  4B C7 65 65 */	bl cM_atan2s__Fff
/* 805F1114  A8 1F 1C E4 */	lha r0, 0x1ce4(r31)
/* 805F1118  7C 00 1A 14 */	add r0, r0, r3
/* 805F111C  7C 04 07 34 */	extsh r4, r0
/* 805F1120  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1124  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1128  80 63 00 00 */	lwz r3, 0(r3)
/* 805F112C  4B A1 B2 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1130  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1134  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1138  80 63 00 00 */	lwz r3, 0(r3)
/* 805F113C  A8 9F 1C E8 */	lha r4, 0x1ce8(r31)
/* 805F1140  4B A1 B2 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 805F1144  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1148  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F114C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F1150  C0 1F 1C E0 */	lfs f0, 0x1ce0(r31)
/* 805F1154  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1158  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F115C  38 9F 1C 90 */	addi r4, r31, 0x1c90
/* 805F1160  4B C7 FD 8D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1164  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F1168  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805F116C  7C 65 1B 78 */	mr r5, r3
/* 805F1170  4B D5 5F 21 */	bl PSVECAdd
/* 805F1174  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805F1178  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F117C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805F1180  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F1184  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805F1188  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F118C  C0 3F 1C A0 */	lfs f1, 0x1ca0(r31)
/* 805F1190  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 805F1194  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1198  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F119C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F11A0  2C 00 00 78 */	cmpwi r0, 0x78
/* 805F11A4  40 81 00 68 */	ble lbl_805F120C
/* 805F11A8  38 7F 1C E4 */	addi r3, r31, 0x1ce4
/* 805F11AC  38 80 59 D8 */	li r4, 0x59d8
/* 805F11B0  38 A0 00 10 */	li r5, 0x10
/* 805F11B4  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 805F11B8  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F11BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F11C0  FC 00 00 1E */	fctiwz f0, f0
/* 805F11C4  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 805F11C8  80 C1 00 C4 */	lwz r6, 0xc4(r1)
/* 805F11CC  4B C7 F4 3D */	bl cLib_addCalcAngleS2__FPssss
/* 805F11D0  38 7F 1C E8 */	addi r3, r31, 0x1ce8
/* 805F11D4  38 80 FD 44 */	li r4, -700
/* 805F11D8  38 A0 00 10 */	li r5, 0x10
/* 805F11DC  C0 3E 01 80 */	lfs f1, 0x180(r30)
/* 805F11E0  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F11E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F11E8  FC 00 00 1E */	fctiwz f0, f0
/* 805F11EC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 805F11F0  80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 805F11F4  4B C7 F4 15 */	bl cLib_addCalcAngleS2__FPssss
/* 805F11F8  38 7F 1C DC */	addi r3, r31, 0x1cdc
/* 805F11FC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F1200  FC 40 08 90 */	fmr f2, f1
/* 805F1204  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 805F1208  4B C7 E8 35 */	bl cLib_addCalc2__FPffff
lbl_805F120C:
/* 805F120C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1210  2C 00 01 18 */	cmpwi r0, 0x118
/* 805F1214  40 82 00 88 */	bne lbl_805F129C
/* 805F1218  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805F121C  80 63 00 04 */	lwz r3, 4(r3)
/* 805F1220  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805F1224  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F1228  38 63 00 60 */	addi r3, r3, 0x60
/* 805F122C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805F1230  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805F1234  4B D5 52 7D */	bl PSMTXCopy
/* 805F1238  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805F123C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805F1240  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805F1244  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F1248  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F124C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F1250  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805F1254  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1258  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008B42@ha */
/* 805F125C  38 63 8B 42 */	addi r3, r3, 0x8B42 /* 0x00008B42@l */
/* 805F1260  38 81 00 B4 */	addi r4, r1, 0xb4
/* 805F1264  38 A0 00 00 */	li r5, 0
/* 805F1268  38 C0 00 00 */	li r6, 0
/* 805F126C  48 00 2E 81 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 805F1270  7F E3 FB 78 */	mr r3, r31
/* 805F1274  38 81 00 B4 */	addi r4, r1, 0xb4
/* 805F1278  38 A0 00 31 */	li r5, 0x31
/* 805F127C  38 C0 00 00 */	li r6, 0
/* 805F1280  38 E0 00 FF */	li r7, 0xff
/* 805F1284  4B A2 B8 55 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805F1288  38 00 00 01 */	li r0, 1
/* 805F128C  98 1F 06 B4 */	stb r0, 0x6b4(r31)
/* 805F1290  38 60 00 05 */	li r3, 5
/* 805F1294  38 80 FF FF */	li r4, -1
/* 805F1298  4B A3 C8 05 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_805F129C:
/* 805F129C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F12A0  2C 00 01 40 */	cmpwi r0, 0x140
/* 805F12A4  40 82 00 1C */	bne lbl_805F12C0
/* 805F12A8  7F A3 EB 78 */	mr r3, r29
/* 805F12AC  38 80 00 1E */	li r4, 0x1e
/* 805F12B0  38 A0 00 01 */	li r5, 1
/* 805F12B4  38 C0 00 00 */	li r6, 0
/* 805F12B8  38 E0 00 00 */	li r7, 0
/* 805F12BC  48 00 2E A5 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F12C0:
/* 805F12C0  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F12C4  2C 00 01 54 */	cmpwi r0, 0x154
/* 805F12C8  40 82 0A 58 */	bne lbl_805F1D20
/* 805F12CC  38 00 00 20 */	li r0, 0x20
/* 805F12D0  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F12D4  38 00 00 00 */	li r0, 0
/* 805F12D8  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F12DC  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 805F12E0  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
lbl_805F12E4:
/* 805F12E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F12E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F12EC  80 63 00 00 */	lwz r3, 0(r3)
/* 805F12F0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805F12F4  38 04 1F 40 */	addi r0, r4, 0x1f40
/* 805F12F8  7C 04 07 34 */	extsh r4, r0
/* 805F12FC  4B A1 B0 E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1300  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1304  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F1308  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 805F130C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F1310  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 805F1314  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1318  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F131C  38 9F 1C 90 */	addi r4, r31, 0x1c90
/* 805F1320  4B C7 FB CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1324  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F1328  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805F132C  7C 65 1B 78 */	mr r5, r3
/* 805F1330  4B D5 5D 61 */	bl PSVECAdd
/* 805F1334  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805F1338  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F133C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805F1340  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F1344  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805F1348  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F134C  C0 3F 1C A0 */	lfs f1, 0x1ca0(r31)
/* 805F1350  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 805F1354  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1358  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F135C  A8 7F 1C 8E */	lha r3, 0x1c8e(r31)
/* 805F1360  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 805F1364  41 82 00 FC */	beq lbl_805F1460
/* 805F1368  7C 78 0E 71 */	srawi. r24, r3, 1
/* 805F136C  38 00 00 01 */	li r0, 1
/* 805F1370  40 82 00 08 */	bne lbl_805F1378
/* 805F1374  38 00 00 03 */	li r0, 3
lbl_805F1378:
/* 805F1378  7C 19 03 78 */	mr r25, r0
/* 805F137C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1380  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1384  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1388  1C 18 13 00 */	mulli r0, r24, 0x1300
/* 805F138C  7C 04 07 34 */	extsh r4, r0
/* 805F1390  4B A1 B0 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1394  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1398  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F139C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F13A0  2C 18 00 00 */	cmpwi r24, 0
/* 805F13A4  40 82 00 0C */	bne lbl_805F13B0
/* 805F13A8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F13AC  48 00 00 34 */	b lbl_805F13E0
lbl_805F13B0:
/* 805F13B0  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 805F13B4  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805F13B8  C8 3E 01 B0 */	lfd f1, 0x1b0(r30)
/* 805F13BC  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 805F13C0  90 01 00 CC */	stw r0, 0xcc(r1)
/* 805F13C4  3C 00 43 30 */	lis r0, 0x4330
/* 805F13C8  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 805F13CC  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 805F13D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F13D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805F13D8  EC 03 00 2A */	fadds f0, f3, f0
/* 805F13DC  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_805F13E0:
/* 805F13E0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F13E4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F13E8  4B C7 FB 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F13EC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 805F13F0  38 9F 05 38 */	addi r4, r31, 0x538
/* 805F13F4  7C 65 1B 78 */	mr r5, r3
/* 805F13F8  4B D5 5C 99 */	bl PSVECAdd
/* 805F13FC  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 805F1400  4B C7 65 55 */	bl cM_rndF__Ff
/* 805F1404  FC 00 08 1E */	fctiwz f0, f1
/* 805F1408  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 805F140C  80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 805F1410  38 61 00 28 */	addi r3, r1, 0x28
/* 805F1414  38 80 00 00 */	li r4, 0
/* 805F1418  38 C0 00 00 */	li r6, 0
/* 805F141C  4B C7 5F D9 */	bl __ct__5csXyzFsss
/* 805F1420  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805F1424  7C 07 07 74 */	extsb r7, r0
/* 805F1428  38 00 00 00 */	li r0, 0
/* 805F142C  90 01 00 08 */	stw r0, 8(r1)
/* 805F1430  38 60 01 BB */	li r3, 0x1bb
/* 805F1434  28 1F 00 00 */	cmplwi r31, 0
/* 805F1438  41 82 00 0C */	beq lbl_805F1444
/* 805F143C  80 9F 00 04 */	lwz r4, 4(r31)
/* 805F1440  48 00 00 08 */	b lbl_805F1448
lbl_805F1444:
/* 805F1444  38 80 FF FF */	li r4, -1
lbl_805F1448:
/* 805F1448  7F 25 CB 78 */	mr r5, r25
/* 805F144C  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 805F1450  39 01 00 28 */	addi r8, r1, 0x28
/* 805F1454  39 20 00 00 */	li r9, 0
/* 805F1458  39 40 FF FF */	li r10, -1
/* 805F145C  4B A2 8A 95 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_805F1460:
/* 805F1460  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1464  2C 00 00 5A */	cmpwi r0, 0x5a
/* 805F1468  40 82 00 0C */	bne lbl_805F1474
/* 805F146C  38 00 00 01 */	li r0, 1
/* 805F1470  90 1D 06 10 */	stw r0, 0x610(r29)
lbl_805F1474:
/* 805F1474  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1478  2C 00 00 5A */	cmpwi r0, 0x5a
/* 805F147C  40 80 00 1C */	bge lbl_805F1498
/* 805F1480  38 7F 1C D8 */	addi r3, r31, 0x1cd8
/* 805F1484  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 805F1488  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F148C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805F1490  4B C7 E5 AD */	bl cLib_addCalc2__FPffff
/* 805F1494  48 00 00 18 */	b lbl_805F14AC
lbl_805F1498:
/* 805F1498  38 7F 1C D8 */	addi r3, r31, 0x1cd8
/* 805F149C  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 805F14A0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F14A4  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 805F14A8  4B C7 E5 95 */	bl cLib_addCalc2__FPffff
lbl_805F14AC:
/* 805F14AC  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F14B0  2C 00 00 82 */	cmpwi r0, 0x82
/* 805F14B4  40 82 08 6C */	bne lbl_805F1D20
/* 805F14B8  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 805F14BC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805F14C0  D0 1F 1C B4 */	stfs f0, 0x1cb4(r31)
/* 805F14C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F14C8  D0 1F 1C B8 */	stfs f0, 0x1cb8(r31)
/* 805F14CC  D0 3F 1C BC */	stfs f1, 0x1cbc(r31)
/* 805F14D0  C0 1F 1C 90 */	lfs f0, 0x1c90(r31)
/* 805F14D4  D0 1F 1C A8 */	stfs f0, 0x1ca8(r31)
/* 805F14D8  C0 1F 1C 94 */	lfs f0, 0x1c94(r31)
/* 805F14DC  D0 1F 1C AC */	stfs f0, 0x1cac(r31)
/* 805F14E0  C0 1F 1C 98 */	lfs f0, 0x1c98(r31)
/* 805F14E4  D0 1F 1C B0 */	stfs f0, 0x1cb0(r31)
/* 805F14E8  C0 3F 1C AC */	lfs f1, 0x1cac(r31)
/* 805F14EC  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 805F14F0  EC 01 00 2A */	fadds f0, f1, f0
/* 805F14F4  D0 1F 1C AC */	stfs f0, 0x1cac(r31)
/* 805F14F8  7F E3 FB 78 */	mr r3, r31
/* 805F14FC  4B FF F1 25 */	bl cam_spd_set__FP10b_gm_class
/* 805F1500  38 00 00 21 */	li r0, 0x21
/* 805F1504  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F1508  38 00 00 00 */	li r0, 0
/* 805F150C  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F1510  48 00 08 10 */	b lbl_805F1D20
lbl_805F1514:
/* 805F1514  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1518  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805F151C  41 80 00 18 */	blt lbl_805F1534
/* 805F1520  38 7F 1C D8 */	addi r3, r31, 0x1cd8
/* 805F1524  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 805F1528  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 805F152C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805F1530  4B C7 E5 0D */	bl cLib_addCalc2__FPffff
lbl_805F1534:
/* 805F1534  7F E3 FB 78 */	mr r3, r31
/* 805F1538  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805F153C  4B FF F0 01 */	bl cam_3d_morf__FP10b_gm_classf
/* 805F1540  38 7F 1C 94 */	addi r3, r31, 0x1c94
/* 805F1544  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805F1548  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F154C  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 805F1550  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F1554  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F1558  4B C7 E4 E5 */	bl cLib_addCalc2__FPffff
/* 805F155C  38 7F 1C DC */	addi r3, r31, 0x1cdc
/* 805F1560  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 805F1564  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F1568  C0 7E 01 9C */	lfs f3, 0x19c(r30)
/* 805F156C  4B C7 E4 D1 */	bl cLib_addCalc2__FPffff
/* 805F1570  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1574  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805F1578  40 82 00 14 */	bne lbl_805F158C
/* 805F157C  3C 60 80 5F */	lis r3, s_ko2_move__FPvPv@ha /* 0x805EE678@ha */
/* 805F1580  38 63 E6 78 */	addi r3, r3, s_ko2_move__FPvPv@l /* 0x805EE678@l */
/* 805F1584  7F E4 FB 78 */	mr r4, r31
/* 805F1588  4B A2 FD B1 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_805F158C:
/* 805F158C  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1590  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 805F1594  40 82 00 14 */	bne lbl_805F15A8
/* 805F1598  3C 60 80 5F */	lis r3, s_ko_move__FPvPv@ha /* 0x805EE738@ha */
/* 805F159C  38 63 E7 38 */	addi r3, r3, s_ko_move__FPvPv@l /* 0x805EE738@l */
/* 805F15A0  7F E4 FB 78 */	mr r4, r31
/* 805F15A4  4B A2 FD 95 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_805F15A8:
/* 805F15A8  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F15AC  2C 00 01 22 */	cmpwi r0, 0x122
/* 805F15B0  40 82 07 70 */	bne lbl_805F1D20
/* 805F15B4  3B 40 00 01 */	li r26, 1
/* 805F15B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F15BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F15C0  80 63 00 00 */	lwz r3, 0(r3)
/* 805F15C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F15C8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000095@ha */
/* 805F15CC  38 84 00 95 */	addi r4, r4, 0x0095 /* 0x01000095@l */
/* 805F15D0  38 A0 00 00 */	li r5, 0
/* 805F15D4  38 C0 00 00 */	li r6, 0
/* 805F15D8  4B CB DA 39 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805F15DC  48 00 07 44 */	b lbl_805F1D20
lbl_805F15E0:
/* 805F15E0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805F15E4  28 00 00 02 */	cmplwi r0, 2
/* 805F15E8  41 82 00 28 */	beq lbl_805F1610
/* 805F15EC  38 80 00 02 */	li r4, 2
/* 805F15F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805F15F4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805F15F8  38 C0 00 00 */	li r6, 0
/* 805F15FC  4B A2 A3 0D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805F1600  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805F1604  60 00 00 02 */	ori r0, r0, 2
/* 805F1608  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805F160C  48 00 09 34 */	b lbl_805F1F40
lbl_805F1610:
/* 805F1610  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1614  4B B6 FE BD */	bl Stop__9dCamera_cFv
/* 805F1618  38 00 00 29 */	li r0, 0x29
/* 805F161C  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F1620  38 00 00 00 */	li r0, 0
/* 805F1624  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F1628  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F162C  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F1630  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1634  38 80 00 03 */	li r4, 3
/* 805F1638  4B B7 19 D5 */	bl SetTrimSize__9dCamera_cFl
/* 805F163C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1640  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
/* 805F1644  38 00 00 03 */	li r0, 3
/* 805F1648  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805F164C  38 00 00 00 */	li r0, 0
/* 805F1650  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 805F1654  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1658  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805F165C  C0 1F 1C F0 */	lfs f0, 0x1cf0(r31)
/* 805F1660  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805F1664  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1668  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805F166C  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1670  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805F1674  C0 1F 1C F0 */	lfs f0, 0x1cf0(r31)
/* 805F1678  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805F167C  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1680  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805F1684  38 00 9E 58 */	li r0, -25000
/* 805F1688  B0 1F 1C E4 */	sth r0, 0x1ce4(r31)
/* 805F168C  38 00 F6 3C */	li r0, -2500
/* 805F1690  B0 1F 1C E8 */	sth r0, 0x1ce8(r31)
/* 805F1694  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805F1698  D0 1F 1C E0 */	stfs f0, 0x1ce0(r31)
/* 805F169C  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F16A0  FC 20 00 50 */	fneg f1, f0
/* 805F16A4  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F16A8  FC 40 00 50 */	fneg f2, f0
/* 805F16AC  4B C7 5F C9 */	bl cM_atan2s__Fff
/* 805F16B0  B0 7F 1C E6 */	sth r3, 0x1ce6(r31)
/* 805F16B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F16B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F16BC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805F16C0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805F16C4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805F16C8  41 82 00 28 */	beq lbl_805F16F0
/* 805F16CC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F16D0  38 80 00 3A */	li r4, 0x3a
/* 805F16D4  38 A0 00 00 */	li r5, 0
/* 805F16D8  38 C0 00 00 */	li r6, 0
/* 805F16DC  38 E0 00 00 */	li r7, 0
/* 805F16E0  48 00 2A 81 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805F16E4  38 00 00 01 */	li r0, 1
/* 805F16E8  98 1F 05 67 */	stb r0, 0x567(r31)
/* 805F16EC  48 00 00 1C */	b lbl_805F1708
lbl_805F16F0:
/* 805F16F0  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F16F4  38 80 00 17 */	li r4, 0x17
/* 805F16F8  38 A0 00 01 */	li r5, 1
/* 805F16FC  38 C0 00 02 */	li r6, 2
/* 805F1700  38 E0 00 00 */	li r7, 0
/* 805F1704  48 00 2A 5D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F1708:
/* 805F1708  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F170C  2C 00 00 37 */	cmpwi r0, 0x37
/* 805F1710  40 82 00 28 */	bne lbl_805F1738
/* 805F1714  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 805F1718  7C 00 07 75 */	extsb. r0, r0
/* 805F171C  41 82 00 1C */	beq lbl_805F1738
/* 805F1720  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F1724  38 80 00 17 */	li r4, 0x17
/* 805F1728  38 A0 00 01 */	li r5, 1
/* 805F172C  38 C0 00 02 */	li r6, 2
/* 805F1730  38 E0 00 00 */	li r7, 0
/* 805F1734  48 00 2A 2D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F1738:
/* 805F1738  38 7F 1C E4 */	addi r3, r31, 0x1ce4
/* 805F173C  38 80 F0 60 */	li r4, -4000
/* 805F1740  38 A0 00 10 */	li r5, 0x10
/* 805F1744  38 C0 00 C8 */	li r6, 0xc8
/* 805F1748  4B C7 EE C1 */	bl cLib_addCalcAngleS2__FPssss
/* 805F174C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1750  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1754  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1758  A8 9F 1C E6 */	lha r4, 0x1ce6(r31)
/* 805F175C  4B A1 AC 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1760  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1764  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F1768  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F176C  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 805F1770  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1774  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F1778  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F177C  4B C7 F7 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1780  38 61 00 A8 */	addi r3, r1, 0xa8
/* 805F1784  38 9F 1C EC */	addi r4, r31, 0x1cec
/* 805F1788  7C 65 1B 78 */	mr r5, r3
/* 805F178C  4B D5 59 05 */	bl PSVECAdd
/* 805F1790  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F1794  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805F1798  A8 BF 1C E6 */	lha r5, 0x1ce6(r31)
/* 805F179C  3C A5 00 01 */	addis r5, r5, 1
/* 805F17A0  38 05 80 00 */	addi r0, r5, -32768
/* 805F17A4  7C 05 07 34 */	extsh r5, r0
/* 805F17A8  38 C0 00 00 */	li r6, 0
/* 805F17AC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805F17B0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805F17B4  7D 89 03 A6 */	mtctr r12
/* 805F17B8  4E 80 04 21 */	bctrl 
/* 805F17BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F17C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F17C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805F17C8  A8 9F 1C E6 */	lha r4, 0x1ce6(r31)
/* 805F17CC  A8 1F 1C E4 */	lha r0, 0x1ce4(r31)
/* 805F17D0  7C 04 02 14 */	add r0, r4, r0
/* 805F17D4  7C 04 07 34 */	extsh r4, r0
/* 805F17D8  4B A1 AC 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F17DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F17E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F17E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805F17E8  A8 9F 1C E8 */	lha r4, 0x1ce8(r31)
/* 805F17EC  4B A1 AB B1 */	bl mDoMtx_XrotM__FPA4_fs
/* 805F17F0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F17F4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F17F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F17FC  C0 1F 1C E0 */	lfs f0, 0x1ce0(r31)
/* 805F1800  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1804  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F1808  38 9F 1C 90 */	addi r4, r31, 0x1c90
/* 805F180C  4B C7 F6 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1810  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F1814  38 9F 1C EC */	addi r4, r31, 0x1cec
/* 805F1818  7C 65 1B 78 */	mr r5, r3
/* 805F181C  4B D5 58 75 */	bl PSVECAdd
/* 805F1820  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1824  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F1828  C0 1F 1C F0 */	lfs f0, 0x1cf0(r31)
/* 805F182C  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F1830  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1834  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F1838  C0 3F 1C A0 */	lfs f1, 0x1ca0(r31)
/* 805F183C  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 805F1840  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1844  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F1848  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F184C  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 805F1850  40 82 00 48 */	bne lbl_805F1898
/* 805F1854  38 61 00 20 */	addi r3, r1, 0x20
/* 805F1858  38 80 00 00 */	li r4, 0
/* 805F185C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805F1860  38 05 C0 00 */	addi r0, r5, -16384
/* 805F1864  7C 05 07 34 */	extsh r5, r0
/* 805F1868  38 C0 00 00 */	li r6, 0
/* 805F186C  4B C7 5B 89 */	bl __ct__5csXyzFsss
/* 805F1870  38 7F 1C EC */	addi r3, r31, 0x1cec
/* 805F1874  38 80 00 22 */	li r4, 0x22
/* 805F1878  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805F187C  7C 05 07 74 */	extsb r5, r0
/* 805F1880  38 C1 00 20 */	addi r6, r1, 0x20
/* 805F1884  38 E0 00 00 */	li r7, 0
/* 805F1888  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805F188C  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 805F1890  39 00 FF FF */	li r8, -1
/* 805F1894  4B A2 A8 41 */	bl fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_805F1898:
/* 805F1898  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F189C  2C 00 00 BE */	cmpwi r0, 0xbe
/* 805F18A0  40 82 04 80 */	bne lbl_805F1D20
/* 805F18A4  C0 3F 1C F0 */	lfs f1, 0x1cf0(r31)
/* 805F18A8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805F18AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805F18B0  D0 1F 1C F0 */	stfs f0, 0x1cf0(r31)
/* 805F18B4  38 60 02 F2 */	li r3, 0x2f2
/* 805F18B8  38 80 00 00 */	li r4, 0
/* 805F18BC  38 BF 1C EC */	addi r5, r31, 0x1cec
/* 805F18C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805F18C4  7C 06 07 74 */	extsb r6, r0
/* 805F18C8  38 E0 00 00 */	li r7, 0
/* 805F18CC  39 00 00 00 */	li r8, 0
/* 805F18D0  39 20 FF FF */	li r9, -1
/* 805F18D4  4B A2 84 C5 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805F18D8  38 00 00 2A */	li r0, 0x2a
/* 805F18DC  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F18E0  38 00 00 00 */	li r0, 0
/* 805F18E4  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F18E8  48 00 04 38 */	b lbl_805F1D20
lbl_805F18EC:
/* 805F18EC  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F18F0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805F18F4  40 82 00 1C */	bne lbl_805F1910
/* 805F18F8  7C A3 2B 78 */	mr r3, r5
/* 805F18FC  38 80 00 0C */	li r4, 0xc
/* 805F1900  38 A0 00 00 */	li r5, 0
/* 805F1904  38 C0 00 00 */	li r6, 0
/* 805F1908  38 E0 00 00 */	li r7, 0
/* 805F190C  48 00 28 55 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F1910:
/* 805F1910  38 7F 1C E4 */	addi r3, r31, 0x1ce4
/* 805F1914  38 80 00 00 */	li r4, 0
/* 805F1918  38 A0 00 10 */	li r5, 0x10
/* 805F191C  38 C0 00 28 */	li r6, 0x28
/* 805F1920  4B C7 EC E9 */	bl cLib_addCalcAngleS2__FPssss
/* 805F1924  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1928  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F192C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1930  A8 9F 1C E6 */	lha r4, 0x1ce6(r31)
/* 805F1934  A8 1F 1C E4 */	lha r0, 0x1ce4(r31)
/* 805F1938  7C 04 02 14 */	add r0, r4, r0
/* 805F193C  7C 04 07 34 */	extsh r4, r0
/* 805F1940  4B A1 AA 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1944  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1948  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F194C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1950  A8 9F 1C E8 */	lha r4, 0x1ce8(r31)
/* 805F1954  4B A1 AA 49 */	bl mDoMtx_XrotM__FPA4_fs
/* 805F1958  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F195C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F1960  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F1964  C0 1F 1C E0 */	lfs f0, 0x1ce0(r31)
/* 805F1968  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F196C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F1970  38 9F 1C 90 */	addi r4, r31, 0x1c90
/* 805F1974  4B C7 F5 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1978  C0 3F 1C 90 */	lfs f1, 0x1c90(r31)
/* 805F197C  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1980  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1984  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F1988  C0 3F 1C 98 */	lfs f1, 0x1c98(r31)
/* 805F198C  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1990  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1994  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
/* 805F1998  38 7F 1C A0 */	addi r3, r31, 0x1ca0
/* 805F199C  C0 3F 1C F0 */	lfs f1, 0x1cf0(r31)
/* 805F19A0  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 805F19A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805F19A8  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F19AC  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F19B0  4B C7 E0 8D */	bl cLib_addCalc2__FPffff
/* 805F19B4  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F19B8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805F19BC  40 81 00 18 */	ble lbl_805F19D4
/* 805F19C0  38 7F 1C F0 */	addi r3, r31, 0x1cf0
/* 805F19C4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 805F19C8  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F19CC  C0 7E 01 A4 */	lfs f3, 0x1a4(r30)
/* 805F19D0  4B C7 E0 6D */	bl cLib_addCalc2__FPffff
lbl_805F19D4:
/* 805F19D4  38 00 02 F2 */	li r0, 0x2f2
/* 805F19D8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 805F19DC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 805F19E0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 805F19E4  38 81 00 10 */	addi r4, r1, 0x10
/* 805F19E8  4B A2 7E 11 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F19EC  7C 78 1B 79 */	or. r24, r3, r3
/* 805F19F0  41 82 00 48 */	beq lbl_805F1A38
/* 805F19F4  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F19F8  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805F19FC  40 81 00 18 */	ble lbl_805F1A14
/* 805F1A00  38 7F 1C F0 */	addi r3, r31, 0x1cf0
/* 805F1A04  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 805F1A08  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805F1A0C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805F1A10  4B C7 E0 2D */	bl cLib_addCalc2__FPffff
lbl_805F1A14:
/* 805F1A14  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1A18  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805F1A1C  C0 1F 1C F0 */	lfs f0, 0x1cf0(r31)
/* 805F1A20  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805F1A24  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1A28  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805F1A2C  7F 03 C3 78 */	mr r3, r24
/* 805F1A30  38 81 00 60 */	addi r4, r1, 0x60
/* 805F1A34  48 00 26 9D */	bl setCurrentPos__16obj_ystone_classF4cXyz
lbl_805F1A38:
/* 805F1A38  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1A3C  2C 00 01 4F */	cmpwi r0, 0x14f
/* 805F1A40  40 82 00 6C */	bne lbl_805F1AAC
/* 805F1A44  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1A48  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805F1A4C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805F1A50  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805F1A54  38 61 00 18 */	addi r3, r1, 0x18
/* 805F1A58  38 80 00 00 */	li r4, 0
/* 805F1A5C  38 A0 00 00 */	li r5, 0
/* 805F1A60  38 C0 00 00 */	li r6, 0
/* 805F1A64  4B C7 59 91 */	bl __ct__5csXyzFsss
/* 805F1A68  38 61 00 84 */	addi r3, r1, 0x84
/* 805F1A6C  38 81 00 18 */	addi r4, r1, 0x18
/* 805F1A70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805F1A74  7C 05 07 74 */	extsb r5, r0
/* 805F1A78  38 C0 00 01 */	li r6, 1
/* 805F1A7C  38 E0 00 01 */	li r7, 1
/* 805F1A80  39 00 00 FF */	li r8, 0xff
/* 805F1A84  4B A2 AE D9 */	bl fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 805F1A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F1A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F1A90  3B 23 09 58 */	addi r25, r3, 0x958
/* 805F1A94  7F 23 CB 78 */	mr r3, r25
/* 805F1A98  38 80 00 03 */	li r4, 3
/* 805F1A9C  4B A4 2E 7D */	bl onDungeonItem__12dSv_memBit_cFi
/* 805F1AA0  7F 23 CB 78 */	mr r3, r25
/* 805F1AA4  38 80 00 06 */	li r4, 6
/* 805F1AA8  4B A4 2E 71 */	bl onDungeonItem__12dSv_memBit_cFi
lbl_805F1AAC:
/* 805F1AAC  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1AB0  2C 00 01 55 */	cmpwi r0, 0x155
/* 805F1AB4  40 82 02 6C */	bne lbl_805F1D20
/* 805F1AB8  3B 40 00 02 */	li r26, 2
/* 805F1ABC  48 00 02 64 */	b lbl_805F1D20
lbl_805F1AC0:
/* 805F1AC0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805F1AC4  28 00 00 02 */	cmplwi r0, 2
/* 805F1AC8  41 82 00 28 */	beq lbl_805F1AF0
/* 805F1ACC  38 80 00 02 */	li r4, 2
/* 805F1AD0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805F1AD4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805F1AD8  38 C0 00 00 */	li r6, 0
/* 805F1ADC  4B A2 9E 2D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805F1AE0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805F1AE4  60 00 00 02 */	ori r0, r0, 2
/* 805F1AE8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805F1AEC  48 00 04 54 */	b lbl_805F1F40
lbl_805F1AF0:
/* 805F1AF0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1AF4  4B B6 F9 DD */	bl Stop__9dCamera_cFv
/* 805F1AF8  38 00 00 33 */	li r0, 0x33
/* 805F1AFC  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F1B00  38 00 00 00 */	li r0, 0
/* 805F1B04  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F1B08  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F1B0C  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F1B10  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1B14  38 80 00 03 */	li r4, 3
/* 805F1B18  4B B7 14 F5 */	bl SetTrimSize__9dCamera_cFl
/* 805F1B1C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1B20  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
lbl_805F1B24:
/* 805F1B24  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805F1B28  FC 20 00 50 */	fneg f1, f0
/* 805F1B2C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805F1B30  FC 40 00 50 */	fneg f2, f0
/* 805F1B34  4B C7 5B 41 */	bl cM_atan2s__Fff
/* 805F1B38  7C 64 1B 78 */	mr r4, r3
/* 805F1B3C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1B40  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1B44  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1B48  4B A1 A8 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1B4C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805F1B50  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F1B54  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 805F1B58  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F1B5C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805F1B60  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1B64  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F1B68  38 81 00 9C */	addi r4, r1, 0x9c
/* 805F1B6C  4B C7 F3 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1B70  38 61 00 9C */	addi r3, r1, 0x9c
/* 805F1B74  38 9F 1C EC */	addi r4, r31, 0x1cec
/* 805F1B78  7C 65 1B 78 */	mr r5, r3
/* 805F1B7C  4B D5 55 15 */	bl PSVECAdd
/* 805F1B80  C0 3F 1C EC */	lfs f1, 0x1cec(r31)
/* 805F1B84  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 805F1B88  C0 7F 1C F0 */	lfs f3, 0x1cf0(r31)
/* 805F1B8C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 805F1B90  C0 5F 1C F4 */	lfs f2, 0x1cf4(r31)
/* 805F1B94  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 805F1B98  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 805F1B9C  EC 03 00 2A */	fadds f0, f3, f0
/* 805F1BA0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 805F1BA4  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1BA8  2C 00 00 00 */	cmpwi r0, 0
/* 805F1BAC  40 82 00 2C */	bne lbl_805F1BD8
/* 805F1BB0  D0 3F 1C 9C */	stfs f1, 0x1c9c(r31)
/* 805F1BB4  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F1BB8  D0 5F 1C A4 */	stfs f2, 0x1ca4(r31)
/* 805F1BBC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805F1BC0  D0 1F 1C 90 */	stfs f0, 0x1c90(r31)
/* 805F1BC4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805F1BC8  D0 1F 1C 94 */	stfs f0, 0x1c94(r31)
/* 805F1BCC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805F1BD0  D0 1F 1C 98 */	stfs f0, 0x1c98(r31)
/* 805F1BD4  48 00 00 50 */	b lbl_805F1C24
lbl_805F1BD8:
/* 805F1BD8  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 805F1BDC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F1BE0  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F1BE4  4B C7 DE 59 */	bl cLib_addCalc2__FPffff
/* 805F1BE8  38 7F 1C A4 */	addi r3, r31, 0x1ca4
/* 805F1BEC  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 805F1BF0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F1BF4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 805F1BF8  4B C7 DE 45 */	bl cLib_addCalc2__FPffff
/* 805F1BFC  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F1C00  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 805F1C04  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F1C08  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805F1C0C  4B C7 DE 31 */	bl cLib_addCalc2__FPffff
/* 805F1C10  38 7F 1C 98 */	addi r3, r31, 0x1c98
/* 805F1C14  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 805F1C18  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F1C1C  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 805F1C20  4B C7 DE 1D */	bl cLib_addCalc2__FPffff
lbl_805F1C24:
/* 805F1C24  A8 1F 1C 8E */	lha r0, 0x1c8e(r31)
/* 805F1C28  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805F1C2C  40 82 00 F4 */	bne lbl_805F1D20
/* 805F1C30  38 00 00 29 */	li r0, 0x29
/* 805F1C34  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805F1C38  38 00 00 28 */	li r0, 0x28
/* 805F1C3C  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
/* 805F1C40  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805F1C44  D0 1F 1C D8 */	stfs f0, 0x1cd8(r31)
/* 805F1C48  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1C4C  38 80 00 03 */	li r4, 3
/* 805F1C50  4B B7 13 BD */	bl SetTrimSize__9dCamera_cFl
/* 805F1C54  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1C58  D0 1F 1C DC */	stfs f0, 0x1cdc(r31)
/* 805F1C5C  38 00 00 03 */	li r0, 3
/* 805F1C60  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805F1C64  38 00 00 00 */	li r0, 0
/* 805F1C68  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 805F1C6C  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1C70  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805F1C74  C0 1F 1C F0 */	lfs f0, 0x1cf0(r31)
/* 805F1C78  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805F1C7C  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1C80  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805F1C84  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1C88  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805F1C8C  C0 1F 1C F0 */	lfs f0, 0x1cf0(r31)
/* 805F1C90  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805F1C94  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1C98  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805F1C9C  38 00 E0 C0 */	li r0, -8000
/* 805F1CA0  B0 1F 1C E4 */	sth r0, 0x1ce4(r31)
/* 805F1CA4  38 00 F6 3C */	li r0, -2500
/* 805F1CA8  B0 1F 1C E8 */	sth r0, 0x1ce8(r31)
/* 805F1CAC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805F1CB0  D0 1F 1C E0 */	stfs f0, 0x1ce0(r31)
/* 805F1CB4  C0 1F 1C EC */	lfs f0, 0x1cec(r31)
/* 805F1CB8  FC 20 00 50 */	fneg f1, f0
/* 805F1CBC  C0 1F 1C F4 */	lfs f0, 0x1cf4(r31)
/* 805F1CC0  FC 40 00 50 */	fneg f2, f0
/* 805F1CC4  4B C7 59 B1 */	bl cM_atan2s__Fff
/* 805F1CC8  B0 7F 1C E6 */	sth r3, 0x1ce6(r31)
/* 805F1CCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F1CD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F1CD4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805F1CD8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805F1CDC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805F1CE0  41 82 00 28 */	beq lbl_805F1D08
/* 805F1CE4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F1CE8  38 80 00 3A */	li r4, 0x3a
/* 805F1CEC  38 A0 00 00 */	li r5, 0
/* 805F1CF0  38 C0 00 00 */	li r6, 0
/* 805F1CF4  38 E0 00 00 */	li r7, 0
/* 805F1CF8  48 00 24 69 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805F1CFC  38 00 00 01 */	li r0, 1
/* 805F1D00  98 1F 05 67 */	stb r0, 0x567(r31)
/* 805F1D04  48 00 00 1C */	b lbl_805F1D20
lbl_805F1D08:
/* 805F1D08  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F1D0C  38 80 00 17 */	li r4, 0x17
/* 805F1D10  38 A0 00 01 */	li r5, 1
/* 805F1D14  38 C0 00 02 */	li r6, 2
/* 805F1D18  38 E0 00 00 */	li r7, 0
/* 805F1D1C  48 00 24 45 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805F1D20:
/* 805F1D20  A8 7F 1C 8C */	lha r3, 0x1c8c(r31)
/* 805F1D24  7C 60 07 35 */	extsh. r0, r3
/* 805F1D28  41 82 00 9C */	beq lbl_805F1DC4
/* 805F1D2C  2C 03 00 0A */	cmpwi r3, 0xa
/* 805F1D30  40 80 00 94 */	bge lbl_805F1DC4
/* 805F1D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F1D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F1D3C  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 805F1D40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805F1D44  41 82 00 80 */	beq lbl_805F1DC4
/* 805F1D48  38 00 00 04 */	li r0, 4
/* 805F1D4C  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 805F1D50  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 805F1D54  4B C7 5C 01 */	bl cM_rndF__Ff
/* 805F1D58  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805F1D5C  EC 00 08 2A */	fadds f0, f0, f1
/* 805F1D60  FC 00 00 1E */	fctiwz f0, f0
/* 805F1D64  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 805F1D68  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 805F1D6C  B0 1F 07 26 */	sth r0, 0x726(r31)
/* 805F1D70  3B 40 00 01 */	li r26, 1
/* 805F1D74  38 00 00 02 */	li r0, 2
/* 805F1D78  90 1F 1C FC */	stw r0, 0x1cfc(r31)
/* 805F1D7C  38 00 00 00 */	li r0, 0
/* 805F1D80  98 1F 06 F5 */	stb r0, 0x6f5(r31)
/* 805F1D84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F1D88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F1D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1D90  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F1D94  4B CB DA F1 */	bl subBgmStop__8Z2SeqMgrFv
/* 805F1D98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F1D9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F1DA0  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1DA4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F1DA8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000094@ha */
/* 805F1DAC  38 84 00 94 */	addi r4, r4, 0x0094 /* 0x01000094@l */
/* 805F1DB0  38 A0 00 00 */	li r5, 0
/* 805F1DB4  38 C0 00 00 */	li r6, 0
/* 805F1DB8  4B CB D2 59 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805F1DBC  38 00 00 01 */	li r0, 1
/* 805F1DC0  98 1F 05 66 */	stb r0, 0x566(r31)
lbl_805F1DC4:
/* 805F1DC4  7F 40 07 75 */	extsb. r0, r26
/* 805F1DC8  41 82 01 00 */	beq lbl_805F1EC8
/* 805F1DCC  7F 40 07 74 */	extsb r0, r26
/* 805F1DD0  2C 00 00 01 */	cmpwi r0, 1
/* 805F1DD4  40 82 00 74 */	bne lbl_805F1E48
/* 805F1DD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F1DDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F1DE0  80 63 00 00 */	lwz r3, 0(r3)
/* 805F1DE4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805F1DE8  4B A1 A5 F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805F1DEC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F1DF0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805F1DF4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805F1DF8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805F1DFC  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 805F1E00  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805F1E04  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805F1E08  38 9F 1C 90 */	addi r4, r31, 0x1c90
/* 805F1E0C  4B C7 F0 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F1E10  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F1E14  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805F1E18  7C 65 1B 78 */	mr r5, r3
/* 805F1E1C  4B D5 52 75 */	bl PSVECAdd
/* 805F1E20  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805F1E24  D0 1F 1C 9C */	stfs f0, 0x1c9c(r31)
/* 805F1E28  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805F1E2C  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
/* 805F1E30  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805F1E34  D0 1F 1C A4 */	stfs f0, 0x1ca4(r31)
/* 805F1E38  C0 3F 1C A0 */	lfs f1, 0x1ca0(r31)
/* 805F1E3C  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 805F1E40  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1E44  D0 1F 1C A0 */	stfs f0, 0x1ca0(r31)
lbl_805F1E48:
/* 805F1E48  C0 1F 1C 9C */	lfs f0, 0x1c9c(r31)
/* 805F1E4C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805F1E50  C0 1F 1C A0 */	lfs f0, 0x1ca0(r31)
/* 805F1E54  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805F1E58  C0 1F 1C A4 */	lfs f0, 0x1ca4(r31)
/* 805F1E5C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805F1E60  C0 1F 1C 90 */	lfs f0, 0x1c90(r31)
/* 805F1E64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805F1E68  C0 1F 1C 94 */	lfs f0, 0x1c94(r31)
/* 805F1E6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805F1E70  C0 1F 1C 98 */	lfs f0, 0x1c98(r31)
/* 805F1E74  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805F1E78  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1E7C  38 81 00 54 */	addi r4, r1, 0x54
/* 805F1E80  38 A1 00 48 */	addi r5, r1, 0x48
/* 805F1E84  4B B8 ED 95 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 805F1E88  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1E8C  4B B6 F6 21 */	bl Start__9dCamera_cFv
/* 805F1E90  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1E94  38 80 00 00 */	li r4, 0
/* 805F1E98  4B B7 11 75 */	bl SetTrimSize__9dCamera_cFl
/* 805F1E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F1EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F1EA4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805F1EA8  4B A5 05 C1 */	bl reset__14dEvt_control_cFv
/* 805F1EAC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 805F1EB0  38 00 00 02 */	li r0, 2
/* 805F1EB4  B0 03 06 04 */	sth r0, 0x604(r3)
/* 805F1EB8  38 00 00 01 */	li r0, 1
/* 805F1EBC  90 03 06 14 */	stw r0, 0x614(r3)
/* 805F1EC0  38 00 00 00 */	li r0, 0
/* 805F1EC4  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
lbl_805F1EC8:
/* 805F1EC8  A8 1F 1C 8C */	lha r0, 0x1c8c(r31)
/* 805F1ECC  2C 00 00 00 */	cmpwi r0, 0
/* 805F1ED0  40 81 00 70 */	ble lbl_805F1F40
/* 805F1ED4  C0 BF 1C 9C */	lfs f5, 0x1c9c(r31)
/* 805F1ED8  D0 A1 00 78 */	stfs f5, 0x78(r1)
/* 805F1EDC  C0 9F 1C A0 */	lfs f4, 0x1ca0(r31)
/* 805F1EE0  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 805F1EE4  C0 7F 1C A4 */	lfs f3, 0x1ca4(r31)
/* 805F1EE8  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 805F1EEC  C0 5F 1C 90 */	lfs f2, 0x1c90(r31)
/* 805F1EF0  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 805F1EF4  C0 3F 1C 94 */	lfs f1, 0x1c94(r31)
/* 805F1EF8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 805F1EFC  C0 1F 1C 98 */	lfs f0, 0x1c98(r31)
/* 805F1F00  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805F1F04  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 805F1F08  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 805F1F0C  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 805F1F10  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805F1F14  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805F1F18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F1F1C  38 7C 02 48 */	addi r3, r28, 0x248
/* 805F1F20  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F1F24  38 A1 00 30 */	addi r5, r1, 0x30
/* 805F1F28  C0 3F 1C D8 */	lfs f1, 0x1cd8(r31)
/* 805F1F2C  38 C0 00 00 */	li r6, 0
/* 805F1F30  4B B8 EB B1 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805F1F34  A8 7F 1C 8E */	lha r3, 0x1c8e(r31)
/* 805F1F38  38 03 00 01 */	addi r0, r3, 1
/* 805F1F3C  B0 1F 1C 8E */	sth r0, 0x1c8e(r31)
lbl_805F1F40:
/* 805F1F40  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805F1F44  4B D7 02 D1 */	bl _restgpr_24
/* 805F1F48  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805F1F4C  7C 08 03 A6 */	mtlr r0
/* 805F1F50  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805F1F54  4E 80 00 20 */	blr 
