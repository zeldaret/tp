lbl_80A26FDC:
/* 80A26FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A26FE0  7C 08 02 A6 */	mflr r0
/* 80A26FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A26FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A26FEC  4B 93 B1 F0 */	b _savegpr_29
/* 80A26FF0  7C 7E 1B 78 */	mr r30, r3
/* 80A26FF4  3C 60 80 A3 */	lis r3, m__21daNpcKasiMich_Param_c@ha
/* 80A26FF8  3B E3 A0 4C */	addi r31, r3, m__21daNpcKasiMich_Param_c@l
/* 80A26FFC  A8 1E 14 3C */	lha r0, 0x143c(r30)
/* 80A27000  2C 00 00 01 */	cmpwi r0, 1
/* 80A27004  40 82 00 34 */	bne lbl_80A27038
/* 80A27008  38 60 00 00 */	li r3, 0
/* 80A2700C  7C 66 1B 78 */	mr r6, r3
/* 80A27010  7C 65 1B 78 */	mr r5, r3
/* 80A27014  7C 64 1B 78 */	mr r4, r3
/* 80A27018  38 00 00 03 */	li r0, 3
/* 80A2701C  7C 09 03 A6 */	mtctr r0
lbl_80A27020:
/* 80A27020  7C FE 1A 14 */	add r7, r30, r3
/* 80A27024  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80A27028  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80A2702C  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80A27030  38 63 00 06 */	addi r3, r3, 6
/* 80A27034  42 00 FF EC */	bdnz lbl_80A27020
lbl_80A27038:
/* 80A27038  7F C3 F3 78 */	mr r3, r30
/* 80A2703C  4B 72 B7 30 */	b setMtx__8daNpcF_cFv
/* 80A27040  7F C3 F3 78 */	mr r3, r30
/* 80A27044  48 00 0B 0D */	bl lookat__15daNpcKasiMich_cFv
/* 80A27048  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A2704C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A27050  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A27054  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A27058  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A2705C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A27060  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A27064  80 63 00 04 */	lwz r3, 4(r3)
/* 80A27068  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2706C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A27070  38 63 00 90 */	addi r3, r3, 0x90
/* 80A27074  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A27078  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A2707C  4B 91 F4 34 */	b PSMTXCopy
/* 80A27080  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A27084  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80A27088  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A2708C  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80A27090  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80A27094  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80A27098  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80A2709C  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80A270A0  7F A3 EB 78 */	mr r3, r29
/* 80A270A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A270A8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A270AC  4B 91 FC C0 */	b PSMTXMultVec
/* 80A270B0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A270B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A270B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A270BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A270C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A270C4  7C 85 23 78 */	mr r5, r4
/* 80A270C8  4B 91 FC A4 */	b PSMTXMultVec
/* 80A270CC  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A270D0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A270D4  4B 84 9B A0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A270D8  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80A270DC  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A270E0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A270E4  4B 84 9B 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A270E8  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80A270EC  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 80A270F0  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 80A270F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A270F8  EC 21 00 2A */	fadds f1, f1, f0
/* 80A270FC  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 80A27100  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A27104  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80A27108  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80A2710C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A27110  80 63 00 04 */	lwz r3, 4(r3)
/* 80A27114  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A27118  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2711C  38 63 00 30 */	addi r3, r3, 0x30
/* 80A27120  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A27124  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A27128  4B 91 F3 88 */	b PSMTXCopy
/* 80A2712C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A27130  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A27134  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80A27138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2713C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80A27140  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A27144  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A27148  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2714C  38 7E 13 EC */	addi r3, r30, 0x13ec
/* 80A27150  38 81 00 08 */	addi r4, r1, 8
/* 80A27154  4B 84 80 88 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A27158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2715C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A27160  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A27164  38 9E 12 C8 */	addi r4, r30, 0x12c8
/* 80A27168  4B 83 DA 40 */	b Set__4cCcSFP8cCcD_Obj
/* 80A2716C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A27170  4B 93 B0 B8 */	b _restgpr_29
/* 80A27174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A27178  7C 08 03 A6 */	mtlr r0
/* 80A2717C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A27180  4E 80 00 20 */	blr 
