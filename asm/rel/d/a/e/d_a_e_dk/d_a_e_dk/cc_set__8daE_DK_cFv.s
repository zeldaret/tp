lbl_806AC754:
/* 806AC754  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AC758  7C 08 02 A6 */	mflr r0
/* 806AC75C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AC760  39 61 00 30 */	addi r11, r1, 0x30
/* 806AC764  4B CB 5A 75 */	bl _savegpr_28
/* 806AC768  7C 7D 1B 78 */	mr r29, r3
/* 806AC76C  3C 60 80 6B */	lis r3, lit_3764@ha /* 0x806AD538@ha */
/* 806AC770  3B C3 D5 38 */	addi r30, r3, lit_3764@l /* 0x806AD538@l */
/* 806AC774  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806AC778  80 63 00 04 */	lwz r3, 4(r3)
/* 806AC77C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AC780  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AC784  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 806AC788  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC78C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC790  4B C9 9D 21 */	bl PSMTXCopy
/* 806AC794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC798  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC79C  7F E3 FB 78 */	mr r3, r31
/* 806AC7A0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 806AC7A4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806AC7A8  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 806AC7AC  4B C9 A1 3D */	bl PSMTXTrans
/* 806AC7B0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806AC7B4  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 806AC7B8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AC7BC  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 806AC7C0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806AC7C4  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 806AC7C8  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 806AC7CC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806AC7D0  EC 01 00 2A */	fadds f0, f1, f0
/* 806AC7D4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 806AC7D8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806AC7DC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 806AC7E0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806AC7E4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806AC7E8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806AC7EC  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 806AC7F0  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 806AC7F4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806AC7F8  EC 01 00 2A */	fadds f0, f1, f0
/* 806AC7FC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806AC800  88 1D 06 A2 */	lbz r0, 0x6a2(r29)
/* 806AC804  28 00 00 00 */	cmplwi r0, 0
/* 806AC808  40 82 01 48 */	bne lbl_806AC950
/* 806AC80C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806AC810  80 63 00 04 */	lwz r3, 4(r3)
/* 806AC814  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AC818  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AC81C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC820  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC824  4B C9 9C 8D */	bl PSMTXCopy
/* 806AC828  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AC82C  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 806AC830  FC 60 08 90 */	fmr f3, f1
/* 806AC834  4B 96 05 69 */	bl transM__14mDoMtx_stack_cFfff
/* 806AC838  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806AC83C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AC840  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AC844  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AC848  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806AC84C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AC850  38 7D 0A 88 */	addi r3, r29, 0xa88
/* 806AC854  38 81 00 08 */	addi r4, r1, 8
/* 806AC858  4B BC 2D F1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806AC85C  38 7D 0A 88 */	addi r3, r29, 0xa88
/* 806AC860  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 806AC864  4B BC 2E A5 */	bl SetR__8cM3dGSphFf
/* 806AC868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AC86C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AC870  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806AC874  7F 83 E3 78 */	mr r3, r28
/* 806AC878  38 9D 09 64 */	addi r4, r29, 0x964
/* 806AC87C  4B BB 83 2D */	bl Set__4cCcSFP8cCcD_Obj
/* 806AC880  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806AC884  80 63 00 04 */	lwz r3, 4(r3)
/* 806AC888  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AC88C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AC890  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC894  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC898  4B C9 9C 19 */	bl PSMTXCopy
/* 806AC89C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AC8A0  C0 5E 00 D4 */	lfs f2, 0xd4(r30)
/* 806AC8A4  FC 60 08 90 */	fmr f3, f1
/* 806AC8A8  4B 96 04 F5 */	bl transM__14mDoMtx_stack_cFfff
/* 806AC8AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806AC8B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AC8B4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AC8B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AC8BC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806AC8C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AC8C4  38 7D 0B C0 */	addi r3, r29, 0xbc0
/* 806AC8C8  38 81 00 08 */	addi r4, r1, 8
/* 806AC8CC  4B BC 2D 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 806AC8D0  38 7D 0B C0 */	addi r3, r29, 0xbc0
/* 806AC8D4  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 806AC8D8  4B BC 2E 31 */	bl SetR__8cM3dGSphFf
/* 806AC8DC  7F 83 E3 78 */	mr r3, r28
/* 806AC8E0  38 9D 0A 9C */	addi r4, r29, 0xa9c
/* 806AC8E4  4B BB 82 C5 */	bl Set__4cCcSFP8cCcD_Obj
/* 806AC8E8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806AC8EC  80 63 00 04 */	lwz r3, 4(r3)
/* 806AC8F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AC8F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AC8F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC8FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC900  4B C9 9B B1 */	bl PSMTXCopy
/* 806AC904  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806AC908  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 806AC90C  FC 60 08 90 */	fmr f3, f1
/* 806AC910  4B 96 04 8D */	bl transM__14mDoMtx_stack_cFfff
/* 806AC914  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806AC918  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AC91C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AC920  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AC924  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806AC928  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AC92C  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 806AC930  38 81 00 08 */	addi r4, r1, 8
/* 806AC934  4B BC 2D 15 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806AC938  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 806AC93C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806AC940  4B BC 2D C9 */	bl SetR__8cM3dGSphFf
/* 806AC944  7F 83 E3 78 */	mr r3, r28
/* 806AC948  38 9D 0B D4 */	addi r4, r29, 0xbd4
/* 806AC94C  4B BB 82 5D */	bl Set__4cCcSFP8cCcD_Obj
lbl_806AC950:
/* 806AC950  39 61 00 30 */	addi r11, r1, 0x30
/* 806AC954  4B CB 58 D1 */	bl _restgpr_28
/* 806AC958  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AC95C  7C 08 03 A6 */	mtlr r0
/* 806AC960  38 21 00 30 */	addi r1, r1, 0x30
/* 806AC964  4E 80 00 20 */	blr 
