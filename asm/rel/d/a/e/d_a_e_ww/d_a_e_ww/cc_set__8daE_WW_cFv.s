lbl_807EDB00:
/* 807EDB00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807EDB04  7C 08 02 A6 */	mflr r0
/* 807EDB08  90 01 00 34 */	stw r0, 0x34(r1)
/* 807EDB0C  39 61 00 30 */	addi r11, r1, 0x30
/* 807EDB10  4B B7 46 C4 */	b _savegpr_27
/* 807EDB14  7C 7E 1B 78 */	mr r30, r3
/* 807EDB18  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807EDB1C  3B E3 F7 70 */	addi r31, r3, lit_3905@l
/* 807EDB20  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 807EDB24  2C 00 00 00 */	cmpwi r0, 0
/* 807EDB28  41 82 01 84 */	beq lbl_807EDCAC
/* 807EDB2C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EDB30  83 83 00 04 */	lwz r28, 4(r3)
/* 807EDB34  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807EDB38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807EDB3C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807EDB40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807EDB44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807EDB48  4B B5 89 68 */	b PSMTXCopy
/* 807EDB4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807EDB50  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 807EDB54  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807EDB58  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 807EDB5C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807EDB60  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 807EDB64  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807EDB68  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 807EDB6C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 807EDB70  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 807EDB74  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 807EDB78  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 807EDB7C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 807EDB80  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 807EDB84  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 807EDB88  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807EDB8C  EC 01 00 2A */	fadds f0, f1, f0
/* 807EDB90  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 807EDB94  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807EDB98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807EDB9C  38 63 00 30 */	addi r3, r3, 0x30
/* 807EDBA0  7F A4 EB 78 */	mr r4, r29
/* 807EDBA4  4B B5 89 0C */	b PSMTXCopy
/* 807EDBA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EDBAC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807EDBB0  FC 60 08 90 */	fmr f3, f1
/* 807EDBB4  4B 81 F1 E8 */	b transM__14mDoMtx_stack_cFfff
/* 807EDBB8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807EDBBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 807EDBC0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807EDBC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807EDBC8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807EDBCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807EDBD0  38 7E 0A D8 */	addi r3, r30, 0xad8
/* 807EDBD4  38 81 00 08 */	addi r4, r1, 8
/* 807EDBD8  4B A8 1A 70 */	b SetC__8cM3dGSphFRC4cXyz
/* 807EDBDC  38 7E 0A D8 */	addi r3, r30, 0xad8
/* 807EDBE0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807EDBE4  4B A8 1B 24 */	b SetR__8cM3dGSphFf
/* 807EDBE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807EDBEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807EDBF0  3B 63 23 3C */	addi r27, r3, 0x233c
/* 807EDBF4  7F 63 DB 78 */	mr r3, r27
/* 807EDBF8  38 9E 09 B4 */	addi r4, r30, 0x9b4
/* 807EDBFC  4B A7 6F AC */	b Set__4cCcSFP8cCcD_Obj
/* 807EDC00  38 7E 0D 48 */	addi r3, r30, 0xd48
/* 807EDC04  38 81 00 08 */	addi r4, r1, 8
/* 807EDC08  4B A8 1A 40 */	b SetC__8cM3dGSphFRC4cXyz
/* 807EDC0C  38 7E 0D 48 */	addi r3, r30, 0xd48
/* 807EDC10  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 807EDC14  4B A8 1A F4 */	b SetR__8cM3dGSphFf
/* 807EDC18  7F 63 DB 78 */	mr r3, r27
/* 807EDC1C  38 9E 0C 24 */	addi r4, r30, 0xc24
/* 807EDC20  4B A7 6F 88 */	b Set__4cCcSFP8cCcD_Obj
/* 807EDC24  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807EDC28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807EDC2C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807EDC30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807EDC34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807EDC38  4B B5 88 78 */	b PSMTXCopy
/* 807EDC3C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807EDC40  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807EDC44  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807EDC48  4B 81 F1 54 */	b transM__14mDoMtx_stack_cFfff
/* 807EDC4C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807EDC50  D0 01 00 08 */	stfs f0, 8(r1)
/* 807EDC54  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807EDC58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807EDC5C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807EDC60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807EDC64  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 807EDC68  38 81 00 08 */	addi r4, r1, 8
/* 807EDC6C  4B A8 19 DC */	b SetC__8cM3dGSphFRC4cXyz
/* 807EDC70  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 807EDC74  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807EDC78  4B A8 1A 90 */	b SetR__8cM3dGSphFf
/* 807EDC7C  7F 63 DB 78 */	mr r3, r27
/* 807EDC80  38 9E 0A EC */	addi r4, r30, 0xaec
/* 807EDC84  4B A7 6F 24 */	b Set__4cCcSFP8cCcD_Obj
/* 807EDC88  38 7E 0E 80 */	addi r3, r30, 0xe80
/* 807EDC8C  38 81 00 08 */	addi r4, r1, 8
/* 807EDC90  4B A8 19 B8 */	b SetC__8cM3dGSphFRC4cXyz
/* 807EDC94  38 7E 0E 80 */	addi r3, r30, 0xe80
/* 807EDC98  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 807EDC9C  4B A8 1A 6C */	b SetR__8cM3dGSphFf
/* 807EDCA0  7F 63 DB 78 */	mr r3, r27
/* 807EDCA4  38 9E 0D 5C */	addi r4, r30, 0xd5c
/* 807EDCA8  4B A7 6F 00 */	b Set__4cCcSFP8cCcD_Obj
lbl_807EDCAC:
/* 807EDCAC  39 61 00 30 */	addi r11, r1, 0x30
/* 807EDCB0  4B B7 45 70 */	b _restgpr_27
/* 807EDCB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807EDCB8  7C 08 03 A6 */	mtlr r0
/* 807EDCBC  38 21 00 30 */	addi r1, r1, 0x30
/* 807EDCC0  4E 80 00 20 */	blr 
