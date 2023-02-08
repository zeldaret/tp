lbl_806EF2C8:
/* 806EF2C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806EF2CC  7C 08 02 A6 */	mflr r0
/* 806EF2D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806EF2D4  39 61 00 30 */	addi r11, r1, 0x30
/* 806EF2D8  4B C7 2F 01 */	bl _savegpr_28
/* 806EF2DC  7C 7C 1B 78 */	mr r28, r3
/* 806EF2E0  88 03 06 E8 */	lbz r0, 0x6e8(r3)
/* 806EF2E4  28 00 00 00 */	cmplwi r0, 0
/* 806EF2E8  40 82 01 6C */	bne lbl_806EF454
/* 806EF2EC  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 806EF2F0  83 C3 00 04 */	lwz r30, 4(r3)
/* 806EF2F4  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806EF2F8  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 806EF2FC  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 806EF300  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 806EF304  C0 1C 06 8C */	lfs f0, 0x68c(r28)
/* 806EF308  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 806EF30C  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806EF310  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 806EF314  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806EF318  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806EF31C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806EF320  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 806EF324  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 806EF328  3C 60 80 6F */	lis r3, lit_4505@ha /* 0x806F08D4@ha */
/* 806EF32C  C0 03 08 D4 */	lfs f0, lit_4505@l(r3)  /* 0x806F08D4@l */
/* 806EF330  EC 01 00 2A */	fadds f0, f1, f0
/* 806EF334  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806EF338  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806EF33C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EF340  38 63 01 50 */	addi r3, r3, 0x150
/* 806EF344  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF348  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF34C  4B C5 71 65 */	bl PSMTXCopy
/* 806EF350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF354  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF358  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806EF35C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EF360  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806EF364  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EF368  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806EF36C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EF370  38 7C 0E 30 */	addi r3, r28, 0xe30
/* 806EF374  38 81 00 08 */	addi r4, r1, 8
/* 806EF378  4B B8 02 D1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806EF37C  38 7C 0E 30 */	addi r3, r28, 0xe30
/* 806EF380  3C 80 80 6F */	lis r4, lit_6030@ha /* 0x806F094C@ha */
/* 806EF384  C0 24 09 4C */	lfs f1, lit_6030@l(r4)  /* 0x806F094C@l */
/* 806EF388  4B B8 03 81 */	bl SetR__8cM3dGSphFf
/* 806EF38C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EF390  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EF394  3B A3 23 3C */	addi r29, r3, 0x233c
/* 806EF398  7F A3 EB 78 */	mr r3, r29
/* 806EF39C  38 9C 0D 0C */	addi r4, r28, 0xd0c
/* 806EF3A0  4B B7 58 09 */	bl Set__4cCcSFP8cCcD_Obj
/* 806EF3A4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806EF3A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EF3AC  38 63 00 30 */	addi r3, r3, 0x30
/* 806EF3B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF3B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF3B8  4B C5 70 F9 */	bl PSMTXCopy
/* 806EF3BC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806EF3C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EF3C4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806EF3C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EF3CC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806EF3D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EF3D4  38 7C 0F 68 */	addi r3, r28, 0xf68
/* 806EF3D8  38 81 00 08 */	addi r4, r1, 8
/* 806EF3DC  4B B8 02 6D */	bl SetC__8cM3dGSphFRC4cXyz
/* 806EF3E0  38 7C 0F 68 */	addi r3, r28, 0xf68
/* 806EF3E4  3C 80 80 6F */	lis r4, lit_6030@ha /* 0x806F094C@ha */
/* 806EF3E8  C0 24 09 4C */	lfs f1, lit_6030@l(r4)  /* 0x806F094C@l */
/* 806EF3EC  4B B8 03 1D */	bl SetR__8cM3dGSphFf
/* 806EF3F0  7F A3 EB 78 */	mr r3, r29
/* 806EF3F4  38 9C 0E 44 */	addi r4, r28, 0xe44
/* 806EF3F8  4B B7 57 B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806EF3FC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806EF400  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EF404  38 63 03 60 */	addi r3, r3, 0x360
/* 806EF408  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806EF40C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806EF410  4B C5 70 A1 */	bl PSMTXCopy
/* 806EF414  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806EF418  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EF41C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806EF420  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EF424  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806EF428  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EF42C  38 7C 10 A0 */	addi r3, r28, 0x10a0
/* 806EF430  38 81 00 08 */	addi r4, r1, 8
/* 806EF434  4B B8 02 15 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806EF438  38 7C 10 A0 */	addi r3, r28, 0x10a0
/* 806EF43C  3C 80 80 6F */	lis r4, lit_6030@ha /* 0x806F094C@ha */
/* 806EF440  C0 24 09 4C */	lfs f1, lit_6030@l(r4)  /* 0x806F094C@l */
/* 806EF444  4B B8 02 C5 */	bl SetR__8cM3dGSphFf
/* 806EF448  7F A3 EB 78 */	mr r3, r29
/* 806EF44C  38 9C 0F 7C */	addi r4, r28, 0xf7c
/* 806EF450  4B B7 57 59 */	bl Set__4cCcSFP8cCcD_Obj
lbl_806EF454:
/* 806EF454  39 61 00 30 */	addi r11, r1, 0x30
/* 806EF458  4B C7 2D CD */	bl _restgpr_28
/* 806EF45C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806EF460  7C 08 03 A6 */	mtlr r0
/* 806EF464  38 21 00 30 */	addi r1, r1, 0x30
/* 806EF468  4E 80 00 20 */	blr 
