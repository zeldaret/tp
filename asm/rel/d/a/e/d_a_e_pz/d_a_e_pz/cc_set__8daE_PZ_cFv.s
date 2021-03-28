lbl_8075F7E8:
/* 8075F7E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8075F7EC  7C 08 02 A6 */	mflr r0
/* 8075F7F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8075F7F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8075F7F8  4B C0 29 E4 */	b _savegpr_29
/* 8075F7FC  7C 7E 1B 78 */	mr r30, r3
/* 8075F800  3C 60 80 76 */	lis r3, lit_3906@ha
/* 8075F804  3B E3 14 FC */	addi r31, r3, lit_3906@l
/* 8075F808  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8075F80C  83 A3 00 04 */	lwz r29, 4(r3)
/* 8075F810  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8075F814  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8075F818  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8075F81C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8075F820  4B BE 6C 90 */	b PSMTXCopy
/* 8075F824  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8075F828  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8075F82C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8075F830  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8075F834  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8075F838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075F83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8075F840  38 81 00 14 */	addi r4, r1, 0x14
/* 8075F844  38 BE 07 A8 */	addi r5, r30, 0x7a8
/* 8075F848  4B BE 75 24 */	b PSMTXMultVec
/* 8075F84C  88 1E 08 41 */	lbz r0, 0x841(r30)
/* 8075F850  28 00 00 00 */	cmplwi r0, 0
/* 8075F854  40 82 00 4C */	bne lbl_8075F8A0
/* 8075F858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075F85C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8075F860  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8075F864  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8075F868  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8075F86C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8075F870  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8075F874  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8075F878  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8075F87C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8075F880  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8075F884  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8075F888  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8075F88C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8075F890  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8075F894  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 8075F898  EC 01 00 2A */	fadds f0, f1, f0
/* 8075F89C  D0 1E 05 54 */	stfs f0, 0x554(r30)
lbl_8075F8A0:
/* 8075F8A0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8075F8A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8075F8A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8075F8AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8075F8B0  4B BE 6C 00 */	b PSMTXCopy
/* 8075F8B4  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 8075F8B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8075F8BC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8075F8C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8075F8C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8075F8C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8075F8CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8075F8D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8075F8D4  38 81 00 14 */	addi r4, r1, 0x14
/* 8075F8D8  38 A1 00 08 */	addi r5, r1, 8
/* 8075F8DC  4B BE 74 90 */	b PSMTXMultVec
/* 8075F8E0  38 7E 0C 34 */	addi r3, r30, 0xc34
/* 8075F8E4  38 81 00 08 */	addi r4, r1, 8
/* 8075F8E8  4B B0 F8 F4 */	b SetC__8cM3dGCylFRC4cXyz
/* 8075F8EC  38 7E 0C 34 */	addi r3, r30, 0xc34
/* 8075F8F0  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 8075F8F4  4B B0 F9 04 */	b SetH__8cM3dGCylFf
/* 8075F8F8  38 7E 0C 34 */	addi r3, r30, 0xc34
/* 8075F8FC  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 8075F900  4B B0 F9 00 */	b SetR__8cM3dGCylFf
/* 8075F904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075F908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8075F90C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8075F910  7F A3 EB 78 */	mr r3, r29
/* 8075F914  38 9E 0B 10 */	addi r4, r30, 0xb10
/* 8075F918  4B B0 52 90 */	b Set__4cCcSFP8cCcD_Obj
/* 8075F91C  38 7E 0D 70 */	addi r3, r30, 0xd70
/* 8075F920  38 81 00 08 */	addi r4, r1, 8
/* 8075F924  4B B0 F8 B8 */	b SetC__8cM3dGCylFRC4cXyz
/* 8075F928  38 7E 0D 70 */	addi r3, r30, 0xd70
/* 8075F92C  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 8075F930  4B B0 F8 C8 */	b SetH__8cM3dGCylFf
/* 8075F934  38 7E 0D 70 */	addi r3, r30, 0xd70
/* 8075F938  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 8075F93C  4B B0 F8 C4 */	b SetR__8cM3dGCylFf
/* 8075F940  7F A3 EB 78 */	mr r3, r29
/* 8075F944  38 9E 0C 4C */	addi r4, r30, 0xc4c
/* 8075F948  4B B0 52 60 */	b Set__4cCcSFP8cCcD_Obj
/* 8075F94C  39 61 00 30 */	addi r11, r1, 0x30
/* 8075F950  4B C0 28 D8 */	b _restgpr_29
/* 8075F954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8075F958  7C 08 03 A6 */	mtlr r0
/* 8075F95C  38 21 00 30 */	addi r1, r1, 0x30
/* 8075F960  4E 80 00 20 */	blr 
