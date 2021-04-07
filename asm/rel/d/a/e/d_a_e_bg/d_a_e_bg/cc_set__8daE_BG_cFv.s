lbl_8068966C:
/* 8068966C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80689670  7C 08 02 A6 */	mflr r0
/* 80689674  90 01 00 34 */	stw r0, 0x34(r1)
/* 80689678  39 61 00 30 */	addi r11, r1, 0x30
/* 8068967C  4B CD 8B 5D */	bl _savegpr_28
/* 80689680  7C 7D 1B 78 */	mr r29, r3
/* 80689684  3C 60 80 69 */	lis r3, lit_3768@ha /* 0x8068A244@ha */
/* 80689688  3B E3 A2 44 */	addi r31, r3, lit_3768@l /* 0x8068A244@l */
/* 8068968C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80689690  83 C3 00 04 */	lwz r30, 4(r3)
/* 80689694  88 1D 06 AF */	lbz r0, 0x6af(r29)
/* 80689698  28 00 00 00 */	cmplwi r0, 0
/* 8068969C  40 82 01 38 */	bne lbl_806897D4
/* 806896A0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806896A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806896A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806896AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806896B0  4B CB CE 01 */	bl PSMTXCopy
/* 806896B4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806896B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806896BC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806896C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806896C4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806896C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806896CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806896D0  38 81 00 14 */	addi r4, r1, 0x14
/* 806896D4  38 BD 05 38 */	addi r5, r29, 0x538
/* 806896D8  4B CB D6 95 */	bl PSMTXMultVec
/* 806896DC  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806896E0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 806896E4  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806896E8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806896EC  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806896F0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 806896F4  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 806896F8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806896FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80689700  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80689704  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80689708  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068970C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80689710  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80689714  4B CB CD 9D */	bl PSMTXCopy
/* 80689718  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8068971C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80689720  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80689724  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80689728  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8068972C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80689730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80689734  38 81 00 14 */	addi r4, r1, 0x14
/* 80689738  38 A1 00 08 */	addi r5, r1, 8
/* 8068973C  4B CB D6 31 */	bl PSMTXMultVec
/* 80689740  38 7D 0A 2C */	addi r3, r29, 0xa2c
/* 80689744  38 81 00 08 */	addi r4, r1, 8
/* 80689748  4B BE 5F 01 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8068974C  38 7D 0A 2C */	addi r3, r29, 0xa2c
/* 80689750  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80689754  4B BE 5F B5 */	bl SetR__8cM3dGSphFf
/* 80689758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068975C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80689760  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80689764  7F 83 E3 78 */	mr r3, r28
/* 80689768  38 9D 09 08 */	addi r4, r29, 0x908
/* 8068976C  4B BD B4 3D */	bl Set__4cCcSFP8cCcD_Obj
/* 80689770  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80689774  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80689778  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068977C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80689780  4B CB CD 31 */	bl PSMTXCopy
/* 80689784  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80689788  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8068978C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80689790  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80689794  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80689798  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068979C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806897A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806897A4  38 81 00 14 */	addi r4, r1, 0x14
/* 806897A8  38 A1 00 08 */	addi r5, r1, 8
/* 806897AC  4B CB D5 C1 */	bl PSMTXMultVec
/* 806897B0  38 7D 0B 64 */	addi r3, r29, 0xb64
/* 806897B4  38 81 00 08 */	addi r4, r1, 8
/* 806897B8  4B BE 5E 91 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806897BC  38 7D 0B 64 */	addi r3, r29, 0xb64
/* 806897C0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806897C4  4B BE 5F 45 */	bl SetR__8cM3dGSphFf
/* 806897C8  7F 83 E3 78 */	mr r3, r28
/* 806897CC  38 9D 0A 40 */	addi r4, r29, 0xa40
/* 806897D0  4B BD B3 D9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_806897D4:
/* 806897D4  39 61 00 30 */	addi r11, r1, 0x30
/* 806897D8  4B CD 8A 4D */	bl _restgpr_28
/* 806897DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806897E0  7C 08 03 A6 */	mtlr r0
/* 806897E4  38 21 00 30 */	addi r1, r1, 0x30
/* 806897E8  4E 80 00 20 */	blr 
