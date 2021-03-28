lbl_80834518:
/* 80834518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083451C  7C 08 02 A6 */	mflr r0
/* 80834520  90 01 00 34 */	stw r0, 0x34(r1)
/* 80834524  39 61 00 30 */	addi r11, r1, 0x30
/* 80834528  4B B2 DC B4 */	b _savegpr_29
/* 8083452C  7C 7F 1B 78 */	mr r31, r3
/* 80834530  3C 60 80 83 */	lis r3, lit_3909@ha
/* 80834534  3B C3 52 D0 */	addi r30, r3, lit_3909@l
/* 80834538  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 8083453C  28 00 00 00 */	cmplwi r0, 0
/* 80834540  41 82 00 F8 */	beq lbl_80834638
/* 80834544  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80834548  83 A3 00 04 */	lwz r29, 4(r3)
/* 8083454C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80834550  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80834554  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80834558  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8083455C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80834560  4B B1 1F 50 */	b PSMTXCopy
/* 80834564  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80834568  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8083456C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80834570  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80834574  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80834578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083457C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80834580  38 81 00 14 */	addi r4, r1, 0x14
/* 80834584  38 A1 00 08 */	addi r5, r1, 8
/* 80834588  4B B1 27 E4 */	b PSMTXMultVec
/* 8083458C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80834590  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80834594  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80834598  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8083459C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 808345A0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 808345A4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 808345A8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 808345AC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 808345B0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 808345B4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 808345B8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 808345BC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 808345C0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 808345C4  EC 01 00 2A */	fadds f0, f1, f0
/* 808345C8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 808345CC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 808345D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808345D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 808345D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 808345DC  4B B1 1E D4 */	b PSMTXCopy
/* 808345E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808345E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808345E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808345EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 808345F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808345F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808345F8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 808345FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80834600  38 7F 09 EC */	addi r3, r31, 0x9ec
/* 80834604  38 81 00 08 */	addi r4, r1, 8
/* 80834608  4B A3 AB D4 */	b SetC__8cM3dGCylFRC4cXyz
/* 8083460C  38 7F 09 EC */	addi r3, r31, 0x9ec
/* 80834610  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80834614  4B A3 AB E4 */	b SetH__8cM3dGCylFf
/* 80834618  38 7F 09 EC */	addi r3, r31, 0x9ec
/* 8083461C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80834620  4B A3 AB E0 */	b SetR__8cM3dGCylFf
/* 80834624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80834628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083462C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80834630  38 9F 08 C8 */	addi r4, r31, 0x8c8
/* 80834634  4B A3 05 74 */	b Set__4cCcSFP8cCcD_Obj
lbl_80834638:
/* 80834638  39 61 00 30 */	addi r11, r1, 0x30
/* 8083463C  4B B2 DB EC */	b _restgpr_29
/* 80834640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80834644  7C 08 03 A6 */	mtlr r0
/* 80834648  38 21 00 30 */	addi r1, r1, 0x30
/* 8083464C  4E 80 00 20 */	blr 
