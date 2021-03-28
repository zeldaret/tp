lbl_8064FD6C:
/* 8064FD6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8064FD70  7C 08 02 A6 */	mflr r0
/* 8064FD74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8064FD78  39 61 00 20 */	addi r11, r1, 0x20
/* 8064FD7C  4B D1 24 60 */	b _savegpr_29
/* 8064FD80  7C 7D 1B 78 */	mr r29, r3
/* 8064FD84  3C 60 80 65 */	lis r3, lit_3721@ha
/* 8064FD88  3B E3 04 9C */	addi r31, r3, lit_3721@l
/* 8064FD8C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8064FD90  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 8064FD94  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8064FD98  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8064FD9C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8064FDA0  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 8064FDA4  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8064FDA8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8064FDAC  EC 00 08 2A */	fadds f0, f0, f1
/* 8064FDB0  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8064FDB4  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8064FDB8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8064FDBC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8064FDC0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8064FDC4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8064FDC8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8064FDCC  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 8064FDD0  EC 00 08 2A */	fadds f0, f0, f1
/* 8064FDD4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8064FDD8  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 8064FDDC  38 9D 04 BC */	addi r4, r29, 0x4bc
/* 8064FDE0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8064FDE4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8064FDE8  4B C1 F2 18 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8064FDEC  38 7D 0A B8 */	addi r3, r29, 0xab8
/* 8064FDF0  4B A3 4A 34 */	b CalcAtVec__8dCcD_CpsFv
/* 8064FDF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8064FDF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8064FDFC  3B C3 23 3C */	addi r30, r3, 0x233c
/* 8064FE00  7F C3 F3 78 */	mr r3, r30
/* 8064FE04  38 9D 0A B8 */	addi r4, r29, 0xab8
/* 8064FE08  4B C1 4D A0 */	b Set__4cCcSFP8cCcD_Obj
/* 8064FE0C  38 7D 09 6C */	addi r3, r29, 0x96c
/* 8064FE10  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8064FE14  4B C1 F8 34 */	b SetC__8cM3dGSphFRC4cXyz
/* 8064FE18  38 7D 09 6C */	addi r3, r29, 0x96c
/* 8064FE1C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8064FE20  4B C1 F8 E8 */	b SetR__8cM3dGSphFf
/* 8064FE24  7F C3 F3 78 */	mr r3, r30
/* 8064FE28  38 9D 08 48 */	addi r4, r29, 0x848
/* 8064FE2C  4B C1 4D 7C */	b Set__4cCcSFP8cCcD_Obj
/* 8064FE30  38 7D 0A A4 */	addi r3, r29, 0xaa4
/* 8064FE34  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8064FE38  4B C1 F8 10 */	b SetC__8cM3dGSphFRC4cXyz
/* 8064FE3C  38 7D 0A A4 */	addi r3, r29, 0xaa4
/* 8064FE40  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8064FE44  4B C1 F8 C4 */	b SetR__8cM3dGSphFf
/* 8064FE48  7F C3 F3 78 */	mr r3, r30
/* 8064FE4C  38 9D 09 80 */	addi r4, r29, 0x980
/* 8064FE50  4B C1 4D 58 */	b Set__4cCcSFP8cCcD_Obj
/* 8064FE54  39 61 00 20 */	addi r11, r1, 0x20
/* 8064FE58  4B D1 23 D0 */	b _restgpr_29
/* 8064FE5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8064FE60  7C 08 03 A6 */	mtlr r0
/* 8064FE64  38 21 00 20 */	addi r1, r1, 0x20
/* 8064FE68  4E 80 00 20 */	blr 
