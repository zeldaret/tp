lbl_8064CD0C:
/* 8064CD0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8064CD10  7C 08 02 A6 */	mflr r0
/* 8064CD14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064CD18  39 61 00 30 */	addi r11, r1, 0x30
/* 8064CD1C  4B D1 54 BC */	b _savegpr_28
/* 8064CD20  7C 7C 1B 78 */	mr r28, r3
/* 8064CD24  3C 60 80 65 */	lis r3, lit_3757@ha
/* 8064CD28  3B C3 EB 1C */	addi r30, r3, lit_3757@l
/* 8064CD2C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064CD30  80 63 00 04 */	lwz r3, 4(r3)
/* 8064CD34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064CD38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CD3C  38 63 00 60 */	addi r3, r3, 0x60
/* 8064CD40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8064CD44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8064CD48  4B CF 97 68 */	b PSMTXCopy
/* 8064CD4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8064CD50  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 8064CD54  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064CD58  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 8064CD5C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064CD60  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 8064CD64  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8064CD68  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 8064CD6C  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8064CD70  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 8064CD74  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8064CD78  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8064CD7C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8064CD80  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 8064CD84  C0 5C 05 54 */	lfs f2, 0x554(r28)
/* 8064CD88  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8064CD8C  C0 1C 06 C4 */	lfs f0, 0x6c4(r28)
/* 8064CD90  EC 01 00 32 */	fmuls f0, f1, f0
/* 8064CD94  EC 02 00 2A */	fadds f0, f2, f0
/* 8064CD98  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8064CD9C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064CDA0  80 63 00 04 */	lwz r3, 4(r3)
/* 8064CDA4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064CDA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CDAC  38 63 00 30 */	addi r3, r3, 0x30
/* 8064CDB0  7F E4 FB 78 */	mr r4, r31
/* 8064CDB4  4B CF 96 FC */	b PSMTXCopy
/* 8064CDB8  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8064CDBC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064CDC0  FC 60 10 90 */	fmr f3, f2
/* 8064CDC4  4B 9B FF D8 */	b transM__14mDoMtx_stack_cFfff
/* 8064CDC8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064CDCC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8064CDD0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064CDD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064CDD8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8064CDDC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064CDE0  38 7C 0B 04 */	addi r3, r28, 0xb04
/* 8064CDE4  38 81 00 08 */	addi r4, r1, 8
/* 8064CDE8  4B C2 28 60 */	b SetC__8cM3dGSphFRC4cXyz
/* 8064CDEC  38 7C 0B 04 */	addi r3, r28, 0xb04
/* 8064CDF0  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8064CDF4  4B C2 29 14 */	b SetR__8cM3dGSphFf
/* 8064CDF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8064CDFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8064CE00  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8064CE04  7F A3 EB 78 */	mr r3, r29
/* 8064CE08  38 9C 09 E0 */	addi r4, r28, 0x9e0
/* 8064CE0C  4B C1 7D 9C */	b Set__4cCcSFP8cCcD_Obj
/* 8064CE10  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064CE14  80 63 00 04 */	lwz r3, 4(r3)
/* 8064CE18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064CE1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CE20  38 63 06 00 */	addi r3, r3, 0x600
/* 8064CE24  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8064CE28  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8064CE2C  4B CF 96 84 */	b PSMTXCopy
/* 8064CE30  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 8064CE34  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064CE38  FC 60 10 90 */	fmr f3, f2
/* 8064CE3C  4B 9B FF 60 */	b transM__14mDoMtx_stack_cFfff
/* 8064CE40  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064CE44  D0 01 00 08 */	stfs f0, 8(r1)
/* 8064CE48  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064CE4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064CE50  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8064CE54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064CE58  38 7C 0C 3C */	addi r3, r28, 0xc3c
/* 8064CE5C  38 81 00 08 */	addi r4, r1, 8
/* 8064CE60  4B C2 27 E8 */	b SetC__8cM3dGSphFRC4cXyz
/* 8064CE64  38 7C 0C 3C */	addi r3, r28, 0xc3c
/* 8064CE68  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8064CE6C  4B C2 28 9C */	b SetR__8cM3dGSphFf
/* 8064CE70  7F A3 EB 78 */	mr r3, r29
/* 8064CE74  38 9C 0B 18 */	addi r4, r28, 0xb18
/* 8064CE78  4B C1 7D 30 */	b Set__4cCcSFP8cCcD_Obj
/* 8064CE7C  88 1C 06 FB */	lbz r0, 0x6fb(r28)
/* 8064CE80  28 00 00 06 */	cmplwi r0, 6
/* 8064CE84  40 82 01 0C */	bne lbl_8064CF90
/* 8064CE88  38 7C 36 0C */	addi r3, r28, 0x360c
/* 8064CE8C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8064CE90  4B C2 23 4C */	b SetC__8cM3dGCylFRC4cXyz
/* 8064CE94  38 7C 36 0C */	addi r3, r28, 0x360c
/* 8064CE98  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8064CE9C  4B C2 23 64 */	b SetR__8cM3dGCylFf
/* 8064CEA0  38 7C 36 0C */	addi r3, r28, 0x360c
/* 8064CEA4  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 8064CEA8  4B C2 23 50 */	b SetH__8cM3dGCylFf
/* 8064CEAC  7F A3 EB 78 */	mr r3, r29
/* 8064CEB0  38 9C 34 E8 */	addi r4, r28, 0x34e8
/* 8064CEB4  4B C1 7C F4 */	b Set__4cCcSFP8cCcD_Obj
/* 8064CEB8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064CEBC  80 63 00 04 */	lwz r3, 4(r3)
/* 8064CEC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064CEC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CEC8  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8064CECC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8064CED0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8064CED4  4B CF 95 DC */	b PSMTXCopy
/* 8064CED8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8064CEDC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064CEE0  FC 60 10 90 */	fmr f3, f2
/* 8064CEE4  4B 9B FE B8 */	b transM__14mDoMtx_stack_cFfff
/* 8064CEE8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064CEEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8064CEF0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064CEF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064CEF8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8064CEFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064CF00  38 7C 37 48 */	addi r3, r28, 0x3748
/* 8064CF04  38 81 00 08 */	addi r4, r1, 8
/* 8064CF08  4B C2 27 40 */	b SetC__8cM3dGSphFRC4cXyz
/* 8064CF0C  38 7C 37 48 */	addi r3, r28, 0x3748
/* 8064CF10  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 8064CF14  4B C2 27 F4 */	b SetR__8cM3dGSphFf
/* 8064CF18  7F A3 EB 78 */	mr r3, r29
/* 8064CF1C  38 9C 36 24 */	addi r4, r28, 0x3624
/* 8064CF20  4B C1 7C 88 */	b Set__4cCcSFP8cCcD_Obj
/* 8064CF24  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064CF28  80 63 00 04 */	lwz r3, 4(r3)
/* 8064CF2C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064CF30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CF34  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 8064CF38  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8064CF3C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8064CF40  4B CF 95 70 */	b PSMTXCopy
/* 8064CF44  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8064CF48  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064CF4C  FC 60 10 90 */	fmr f3, f2
/* 8064CF50  4B 9B FE 4C */	b transM__14mDoMtx_stack_cFfff
/* 8064CF54  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064CF58  D0 01 00 08 */	stfs f0, 8(r1)
/* 8064CF5C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064CF60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064CF64  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8064CF68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064CF6C  38 7C 38 80 */	addi r3, r28, 0x3880
/* 8064CF70  38 81 00 08 */	addi r4, r1, 8
/* 8064CF74  4B C2 26 D4 */	b SetC__8cM3dGSphFRC4cXyz
/* 8064CF78  38 7C 38 80 */	addi r3, r28, 0x3880
/* 8064CF7C  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 8064CF80  4B C2 27 88 */	b SetR__8cM3dGSphFf
/* 8064CF84  7F A3 EB 78 */	mr r3, r29
/* 8064CF88  38 9C 37 5C */	addi r4, r28, 0x375c
/* 8064CF8C  4B C1 7C 1C */	b Set__4cCcSFP8cCcD_Obj
lbl_8064CF90:
/* 8064CF90  39 61 00 30 */	addi r11, r1, 0x30
/* 8064CF94  4B D1 52 90 */	b _restgpr_28
/* 8064CF98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8064CF9C  7C 08 03 A6 */	mtlr r0
/* 8064CFA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8064CFA4  4E 80 00 20 */	blr 
