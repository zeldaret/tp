lbl_80AB36A8:
/* 80AB36A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB36AC  7C 08 02 A6 */	mflr r0
/* 80AB36B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB36B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB36B8  4B 8A EB 20 */	b _savegpr_28
/* 80AB36BC  7C 7D 1B 78 */	mr r29, r3
/* 80AB36C0  7C BE 2B 78 */	mr r30, r5
/* 80AB36C4  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80AB36C8  7C BF 2B 78 */	mr r31, r5
/* 80AB36CC  3C 60 80 AB */	lis r3, lit_4241@ha
/* 80AB36D0  38 83 58 90 */	addi r4, r3, lit_4241@l
/* 80AB36D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB36D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB36DC  90 61 00 08 */	stw r3, 8(r1)
/* 80AB36E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB36E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB36E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB36EC  2C 05 00 00 */	cmpwi r5, 0
/* 80AB36F0  40 82 00 B0 */	bne lbl_80AB37A0
/* 80AB36F4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB36F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB36FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AB3700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AB3704  38 63 00 30 */	addi r3, r3, 0x30
/* 80AB3708  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AB370C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AB3710  4B 89 2D A0 */	b PSMTXCopy
/* 80AB3714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AB3718  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80AB371C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AB3720  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80AB3724  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AB3728  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80AB372C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AB3730  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80AB3734  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB3738  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB373C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AB3740  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AB3744  38 63 00 60 */	addi r3, r3, 0x60
/* 80AB3748  7F 84 E3 78 */	mr r4, r28
/* 80AB374C  4B 89 2D 64 */	b PSMTXCopy
/* 80AB3750  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AB3754  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80AB3758  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AB375C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80AB3760  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AB3764  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80AB3768  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB376C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB3770  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AB3774  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AB3778  38 63 00 90 */	addi r3, r3, 0x90
/* 80AB377C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AB3780  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AB3784  4B 89 2D 2C */	b PSMTXCopy
/* 80AB3788  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AB378C  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80AB3790  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AB3794  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80AB3798  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AB379C  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80AB37A0:
/* 80AB37A0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80AB37A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AB37A8  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80AB37AC  7C 60 E2 14 */	add r3, r0, r28
/* 80AB37B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AB37B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AB37B8  4B 89 2C F8 */	b PSMTXCopy
/* 80AB37BC  2C 1F 00 04 */	cmpwi r31, 4
/* 80AB37C0  40 80 00 2C */	bge lbl_80AB37EC
/* 80AB37C4  2C 1F 00 01 */	cmpwi r31, 1
/* 80AB37C8  40 80 00 08 */	bge lbl_80AB37D0
/* 80AB37CC  48 00 00 20 */	b lbl_80AB37EC
lbl_80AB37D0:
/* 80AB37D0  7F A3 EB 78 */	mr r3, r29
/* 80AB37D4  7F E4 FB 78 */	mr r4, r31
/* 80AB37D8  38 A1 00 08 */	addi r5, r1, 8
/* 80AB37DC  3C C0 80 AB */	lis r6, m__17daNpcPray_Param_c@ha
/* 80AB37E0  38 C6 58 08 */	addi r6, r6, m__17daNpcPray_Param_c@l
/* 80AB37E4  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80AB37E8  4B 69 FB 94 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80AB37EC:
/* 80AB37EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AB37F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AB37F4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80AB37F8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AB37FC  7C 80 E2 14 */	add r4, r0, r28
/* 80AB3800  4B 89 2C B0 */	b PSMTXCopy
/* 80AB3804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AB3808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AB380C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80AB3810  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80AB3814  4B 89 2C 9C */	b PSMTXCopy
/* 80AB3818  38 60 00 01 */	li r3, 1
/* 80AB381C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB3820  4B 8A EA 04 */	b _restgpr_28
/* 80AB3824  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB3828  7C 08 03 A6 */	mtlr r0
/* 80AB382C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB3830  4E 80 00 20 */	blr 
