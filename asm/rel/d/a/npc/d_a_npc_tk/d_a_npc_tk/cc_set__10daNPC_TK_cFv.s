lbl_80B0B6DC:
/* 80B0B6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0B6E0  7C 08 02 A6 */	mflr r0
/* 80B0B6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0B6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0B6EC  7C 7F 1B 78 */	mr r31, r3
/* 80B0B6F0  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80B0B6F4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B0B6F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B0B6FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B0B700  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B0B704  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B0B708  4B 83 AD A8 */	b PSMTXCopy
/* 80B0B70C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0B710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0B714  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0B718  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80B0B71C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B0B720  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80B0B724  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B0B728  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80B0B72C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80B0B730  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80B0B734  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80B0B738  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80B0B73C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80B0B740  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80B0B744  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80B0B748  3C 60 80 B1 */	lis r3, lit_4004@ha
/* 80B0B74C  C0 03 C1 D8 */	lfs f0, lit_4004@l(r3)
/* 80B0B750  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0B754  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80B0B758  88 1F 06 AE */	lbz r0, 0x6ae(r31)
/* 80B0B75C  28 00 00 00 */	cmplwi r0, 0
/* 80B0B760  41 82 00 38 */	beq lbl_80B0B798
/* 80B0B764  38 7F 0A E8 */	addi r3, r31, 0xae8
/* 80B0B768  38 9F 05 38 */	addi r4, r31, 0x538
/* 80B0B76C  4B 76 3E DC */	b SetC__8cM3dGSphFRC4cXyz
/* 80B0B770  38 7F 0A E8 */	addi r3, r31, 0xae8
/* 80B0B774  3C 80 80 B1 */	lis r4, lit_7266@ha
/* 80B0B778  C0 24 C3 48 */	lfs f1, lit_7266@l(r4)
/* 80B0B77C  4B 76 3F 8C */	b SetR__8cM3dGSphFf
/* 80B0B780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0B784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0B788  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B0B78C  38 9F 09 C4 */	addi r4, r31, 0x9c4
/* 80B0B790  4B 75 94 18 */	b Set__4cCcSFP8cCcD_Obj
/* 80B0B794  48 00 00 1C */	b lbl_80B0B7B0
lbl_80B0B798:
/* 80B0B798  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80B0B79C  4B 57 8B 7C */	b ResetAtHit__12dCcD_GObjInfFv
/* 80B0B7A0  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80B0B7A4  4B 57 8D 14 */	b ResetTgHit__12dCcD_GObjInfFv
/* 80B0B7A8  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80B0B7AC  4B 57 8F 04 */	b ResetCoHit__12dCcD_GObjInfFv
lbl_80B0B7B0:
/* 80B0B7B0  38 00 00 00 */	li r0, 0
/* 80B0B7B4  98 1F 06 AE */	stb r0, 0x6ae(r31)
/* 80B0B7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0B7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0B7C0  7C 08 03 A6 */	mtlr r0
/* 80B0B7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0B7C8  4E 80 00 20 */	blr 
