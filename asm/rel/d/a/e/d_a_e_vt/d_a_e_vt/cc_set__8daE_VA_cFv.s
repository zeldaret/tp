lbl_807CC864:
/* 807CC864  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807CC868  7C 08 02 A6 */	mflr r0
/* 807CC86C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807CC870  39 61 00 50 */	addi r11, r1, 0x50
/* 807CC874  4B B9 59 55 */	bl _savegpr_24
/* 807CC878  7C 7F 1B 78 */	mr r31, r3
/* 807CC87C  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CC880  3B C3 EC A8 */	addi r30, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CC884  88 1F 13 78 */	lbz r0, 0x1378(r31)
/* 807CC888  28 00 00 00 */	cmplwi r0, 0
/* 807CC88C  41 82 00 70 */	beq lbl_807CC8FC
/* 807CC890  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CC894  80 63 00 04 */	lwz r3, 4(r3)
/* 807CC898  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CC89C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CC8A0  38 63 06 60 */	addi r3, r3, 0x660
/* 807CC8A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC8A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC8AC  4B B7 9C 05 */	bl PSMTXCopy
/* 807CC8B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC8B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC8B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807CC8BC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807CC8C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807CC8C4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807CC8C8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807CC8CC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807CC8D0  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807CC8D4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807CC8D8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807CC8DC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807CC8E0  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807CC8E4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807CC8E8  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807CC8EC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807CC8F0  EC 01 00 2A */	fadds f0, f1, f0
/* 807CC8F4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807CC8F8  48 00 00 7C */	b lbl_807CC974
lbl_807CC8FC:
/* 807CC8FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CC900  80 63 00 04 */	lwz r3, 4(r3)
/* 807CC904  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CC908  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CC90C  38 63 04 50 */	addi r3, r3, 0x450
/* 807CC910  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC914  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC918  4B B7 9B 99 */	bl PSMTXCopy
/* 807CC91C  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 807CC920  C0 5E 01 C8 */	lfs f2, 0x1c8(r30)
/* 807CC924  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807CC928  4B 84 04 75 */	bl transM__14mDoMtx_stack_cFfff
/* 807CC92C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC930  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC934  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807CC938  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807CC93C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807CC940  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807CC944  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807CC948  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807CC94C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807CC950  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807CC954  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807CC958  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807CC95C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807CC960  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807CC964  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807CC968  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807CC96C  EC 01 00 2A */	fadds f0, f1, f0
/* 807CC970  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_807CC974:
/* 807CC974  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CC978  80 63 00 04 */	lwz r3, 4(r3)
/* 807CC97C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CC980  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CC984  38 63 06 30 */	addi r3, r3, 0x630
/* 807CC988  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC98C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC990  4B B7 9B 21 */	bl PSMTXCopy
/* 807CC994  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807CC998  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807CC99C  FC 60 08 90 */	fmr f3, f1
/* 807CC9A0  4B 84 03 FD */	bl transM__14mDoMtx_stack_cFfff
/* 807CC9A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CC9A8  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CC9AC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807CC9B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CC9B4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807CC9B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807CC9BC  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807CC9C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CC9C4  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 807CC9C8  38 81 00 20 */	addi r4, r1, 0x20
/* 807CC9CC  4B AA 2C 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 807CC9D0  88 1F 13 7F */	lbz r0, 0x137f(r31)
/* 807CC9D4  28 00 00 00 */	cmplwi r0, 0
/* 807CC9D8  41 82 00 14 */	beq lbl_807CC9EC
/* 807CC9DC  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 807CC9E0  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 807CC9E4  4B AA 2D 25 */	bl SetR__8cM3dGSphFf
/* 807CC9E8  48 00 00 10 */	b lbl_807CC9F8
lbl_807CC9EC:
/* 807CC9EC  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 807CC9F0  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807CC9F4  4B AA 2D 15 */	bl SetR__8cM3dGSphFf
lbl_807CC9F8:
/* 807CC9F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CC9FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CCA00  3B 83 23 3C */	addi r28, r3, 0x233c
/* 807CCA04  7F 83 E3 78 */	mr r3, r28
/* 807CCA08  38 9F 1B 78 */	addi r4, r31, 0x1b78
/* 807CCA0C  4B A9 81 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 807CCA10  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CCA14  80 63 00 04 */	lwz r3, 4(r3)
/* 807CCA18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CCA1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CCA20  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CCA24  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CCA28  4B B7 9A 89 */	bl PSMTXCopy
/* 807CCA2C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807CCA30  FC 40 08 90 */	fmr f2, f1
/* 807CCA34  FC 60 08 90 */	fmr f3, f1
/* 807CCA38  4B 84 03 65 */	bl transM__14mDoMtx_stack_cFfff
/* 807CCA3C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807CCA40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CCA44  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807CCA48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807CCA4C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807CCA50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CCA54  38 7F 1D D4 */	addi r3, r31, 0x1dd4
/* 807CCA58  38 81 00 20 */	addi r4, r1, 0x20
/* 807CCA5C  4B AA 27 81 */	bl SetC__8cM3dGCylFRC4cXyz
/* 807CCA60  38 7F 1D D4 */	addi r3, r31, 0x1dd4
/* 807CCA64  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807CCA68  4B AA 27 91 */	bl SetH__8cM3dGCylFf
/* 807CCA6C  88 1F 13 7F */	lbz r0, 0x137f(r31)
/* 807CCA70  28 00 00 00 */	cmplwi r0, 0
/* 807CCA74  41 82 00 14 */	beq lbl_807CCA88
/* 807CCA78  38 7F 1D D4 */	addi r3, r31, 0x1dd4
/* 807CCA7C  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 807CCA80  4B AA 27 81 */	bl SetR__8cM3dGCylFf
/* 807CCA84  48 00 00 10 */	b lbl_807CCA94
lbl_807CCA88:
/* 807CCA88  38 7F 1D D4 */	addi r3, r31, 0x1dd4
/* 807CCA8C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807CCA90  4B AA 27 71 */	bl SetR__8cM3dGCylFf
lbl_807CCA94:
/* 807CCA94  7F 83 E3 78 */	mr r3, r28
/* 807CCA98  38 9F 1C B0 */	addi r4, r31, 0x1cb0
/* 807CCA9C  4B A9 81 0D */	bl Set__4cCcSFP8cCcD_Obj
/* 807CCAA0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CCAA4  80 63 00 04 */	lwz r3, 4(r3)
/* 807CCAA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CCAAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CCAB0  38 63 06 30 */	addi r3, r3, 0x630
/* 807CCAB4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CCAB8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CCABC  4B B7 99 F5 */	bl PSMTXCopy
/* 807CCAC0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807CCAC4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CCAC8  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 807CCACC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807CCAD0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807CCAD4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CCAD8  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807CCADC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807CCAE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807CCAE4  38 7F 1F 10 */	addi r3, r31, 0x1f10
/* 807CCAE8  38 81 00 20 */	addi r4, r1, 0x20
/* 807CCAEC  4B AA 26 F1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 807CCAF0  38 7F 1F 10 */	addi r3, r31, 0x1f10
/* 807CCAF4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807CCAF8  4B AA 27 01 */	bl SetH__8cM3dGCylFf
/* 807CCAFC  38 7F 1F 10 */	addi r3, r31, 0x1f10
/* 807CCB00  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807CCB04  4B AA 26 FD */	bl SetR__8cM3dGCylFf
/* 807CCB08  7F 83 E3 78 */	mr r3, r28
/* 807CCB0C  38 9F 1D EC */	addi r4, r31, 0x1dec
/* 807CCB10  4B A9 80 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 807CCB14  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CCB18  80 63 00 04 */	lwz r3, 4(r3)
/* 807CCB1C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CCB20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CCB24  38 63 06 30 */	addi r3, r3, 0x630
/* 807CCB28  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CCB2C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CCB30  4B B7 99 81 */	bl PSMTXCopy
/* 807CCB34  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807CCB38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CCB3C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 807CCB40  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807CCB44  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807CCB48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CCB4C  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 807CCB50  EC 01 00 28 */	fsubs f0, f1, f0
/* 807CCB54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807CCB58  38 7F 20 4C */	addi r3, r31, 0x204c
/* 807CCB5C  38 81 00 20 */	addi r4, r1, 0x20
/* 807CCB60  4B AA 26 7D */	bl SetC__8cM3dGCylFRC4cXyz
/* 807CCB64  38 7F 20 4C */	addi r3, r31, 0x204c
/* 807CCB68  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807CCB6C  4B AA 26 8D */	bl SetH__8cM3dGCylFf
/* 807CCB70  38 7F 20 4C */	addi r3, r31, 0x204c
/* 807CCB74  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807CCB78  4B AA 26 89 */	bl SetR__8cM3dGCylFf
/* 807CCB7C  7F 83 E3 78 */	mr r3, r28
/* 807CCB80  38 9F 1F 28 */	addi r4, r31, 0x1f28
/* 807CCB84  4B A9 80 25 */	bl Set__4cCcSFP8cCcD_Obj
/* 807CCB88  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807CCB8C  38 63 00 24 */	addi r3, r3, 0x24
/* 807CCB90  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CCB94  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CCB98  4B B7 99 19 */	bl PSMTXCopy
/* 807CCB9C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 807CCBA0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807CCBA4  C0 7E 01 F0 */	lfs f3, 0x1f0(r30)
/* 807CCBA8  4B 84 01 F5 */	bl transM__14mDoMtx_stack_cFfff
/* 807CCBAC  3B 00 00 00 */	li r24, 0
/* 807CCBB0  3B 20 00 00 */	li r25, 0
lbl_807CCBB4:
/* 807CCBB4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807CCBB8  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807CCBBC  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 807CCBC0  4B 84 01 DD */	bl transM__14mDoMtx_stack_cFfff
/* 807CCBC4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807CCBC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CCBCC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807CCBD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807CCBD4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807CCBD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807CCBDC  7F 5F CA 14 */	add r26, r31, r25
/* 807CCBE0  3B 7A 21 88 */	addi r27, r26, 0x2188
/* 807CCBE4  7F 63 DB 78 */	mr r3, r27
/* 807CCBE8  38 81 00 20 */	addi r4, r1, 0x20
/* 807CCBEC  4B AA 2A 5D */	bl SetC__8cM3dGSphFRC4cXyz
/* 807CCBF0  80 1A 20 64 */	lwz r0, 0x2064(r26)
/* 807CCBF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CCBF8  41 82 00 14 */	beq lbl_807CCC0C
/* 807CCBFC  7F 63 DB 78 */	mr r3, r27
/* 807CCC00  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 807CCC04  4B AA 2B 05 */	bl SetR__8cM3dGSphFf
/* 807CCC08  48 00 00 10 */	b lbl_807CCC18
lbl_807CCC0C:
/* 807CCC0C  7F 63 DB 78 */	mr r3, r27
/* 807CCC10  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807CCC14  4B AA 2A F5 */	bl SetR__8cM3dGSphFf
lbl_807CCC18:
/* 807CCC18  7F 83 E3 78 */	mr r3, r28
/* 807CCC1C  38 9A 20 64 */	addi r4, r26, 0x2064
/* 807CCC20  4B A9 7F 89 */	bl Set__4cCcSFP8cCcD_Obj
/* 807CCC24  3B 18 00 01 */	addi r24, r24, 1
/* 807CCC28  2C 18 00 04 */	cmpwi r24, 4
/* 807CCC2C  3B 39 01 38 */	addi r25, r25, 0x138
/* 807CCC30  41 80 FF 84 */	blt lbl_807CCBB4
/* 807CCC34  88 1F 13 87 */	lbz r0, 0x1387(r31)
/* 807CCC38  28 00 00 00 */	cmplwi r0, 0
/* 807CCC3C  41 82 00 D0 */	beq lbl_807CCD0C
/* 807CCC40  3B A0 00 00 */	li r29, 0
/* 807CCC44  3B 40 00 00 */	li r26, 0
/* 807CCC48  3B 20 00 00 */	li r25, 0
lbl_807CCC4C:
/* 807CCC4C  3B 60 00 00 */	li r27, 0
lbl_807CCC50:
/* 807CCC50  7F 19 DA 14 */	add r24, r25, r27
/* 807CCC54  7F 60 0E 70 */	srawi r0, r27, 1
/* 807CCC58  7C BA 02 14 */	add r5, r26, r0
/* 807CCC5C  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 807CCC60  40 82 00 24 */	bne lbl_807CCC84
/* 807CCC64  1C 78 01 38 */	mulli r3, r24, 0x138
/* 807CCC68  38 63 26 68 */	addi r3, r3, 0x2668
/* 807CCC6C  7C 7F 1A 14 */	add r3, r31, r3
/* 807CCC70  1C 85 00 0C */	mulli r4, r5, 0xc
/* 807CCC74  38 84 09 94 */	addi r4, r4, 0x994
/* 807CCC78  7C 9F 22 14 */	add r4, r31, r4
/* 807CCC7C  4B AA 29 CD */	bl SetC__8cM3dGSphFRC4cXyz
/* 807CCC80  48 00 00 4C */	b lbl_807CCCCC
lbl_807CCC84:
/* 807CCC84  38 61 00 14 */	addi r3, r1, 0x14
/* 807CCC88  1C 85 00 0C */	mulli r4, r5, 0xc
/* 807CCC8C  38 84 09 94 */	addi r4, r4, 0x994
/* 807CCC90  7C 9F 22 14 */	add r4, r31, r4
/* 807CCC94  38 05 00 01 */	addi r0, r5, 1
/* 807CCC98  1C A0 00 0C */	mulli r5, r0, 0xc
/* 807CCC9C  38 A5 09 94 */	addi r5, r5, 0x994
/* 807CCCA0  7C BF 2A 14 */	add r5, r31, r5
/* 807CCCA4  4B A9 9E 41 */	bl __pl__4cXyzCFRC3Vec
/* 807CCCA8  38 61 00 08 */	addi r3, r1, 8
/* 807CCCAC  38 81 00 14 */	addi r4, r1, 0x14
/* 807CCCB0  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 807CCCB4  4B A9 9F 65 */	bl __dv__4cXyzCFf
/* 807CCCB8  1C 78 01 38 */	mulli r3, r24, 0x138
/* 807CCCBC  38 63 26 68 */	addi r3, r3, 0x2668
/* 807CCCC0  7C 7F 1A 14 */	add r3, r31, r3
/* 807CCCC4  38 81 00 08 */	addi r4, r1, 8
/* 807CCCC8  4B AA 29 81 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_807CCCCC:
/* 807CCCCC  1C 18 01 38 */	mulli r0, r24, 0x138
/* 807CCCD0  7F 1F 02 14 */	add r24, r31, r0
/* 807CCCD4  38 78 26 68 */	addi r3, r24, 0x2668
/* 807CCCD8  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 807CCCDC  4B AA 2A 2D */	bl SetR__8cM3dGSphFf
/* 807CCCE0  7F 83 E3 78 */	mr r3, r28
/* 807CCCE4  38 98 25 44 */	addi r4, r24, 0x2544
/* 807CCCE8  4B A9 7E C1 */	bl Set__4cCcSFP8cCcD_Obj
/* 807CCCEC  3B 7B 00 01 */	addi r27, r27, 1
/* 807CCCF0  2C 1B 00 13 */	cmpwi r27, 0x13
/* 807CCCF4  41 80 FF 5C */	blt lbl_807CCC50
/* 807CCCF8  3B BD 00 01 */	addi r29, r29, 1
/* 807CCCFC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 807CCD00  3B 5A 00 0A */	addi r26, r26, 0xa
/* 807CCD04  3B 39 00 13 */	addi r25, r25, 0x13
/* 807CCD08  41 80 FF 44 */	blt lbl_807CCC4C
lbl_807CCD0C:
/* 807CCD0C  39 61 00 50 */	addi r11, r1, 0x50
/* 807CCD10  4B B9 55 05 */	bl _restgpr_24
/* 807CCD14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807CCD18  7C 08 03 A6 */	mtlr r0
/* 807CCD1C  38 21 00 50 */	addi r1, r1, 0x50
/* 807CCD20  4E 80 00 20 */	blr 
