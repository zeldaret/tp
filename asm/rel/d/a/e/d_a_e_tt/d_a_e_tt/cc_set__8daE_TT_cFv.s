lbl_807C0EE8:
/* 807C0EE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C0EEC  7C 08 02 A6 */	mflr r0
/* 807C0EF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C0EF4  39 61 00 30 */	addi r11, r1, 0x30
/* 807C0EF8  4B BA 12 E0 */	b _savegpr_28
/* 807C0EFC  7C 7F 1B 78 */	mr r31, r3
/* 807C0F00  3C 60 80 7C */	lis r3, lit_3908@ha
/* 807C0F04  3B A3 1F B8 */	addi r29, r3, lit_3908@l
/* 807C0F08  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807C0F0C  83 83 00 04 */	lwz r28, 4(r3)
/* 807C0F10  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807C0F14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807C0F18  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 807C0F1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807C0F20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807C0F24  4B B8 55 8C */	b PSMTXCopy
/* 807C0F28  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 807C0F2C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807C0F30  C0 7D 00 04 */	lfs f3, 4(r29)
/* 807C0F34  4B 84 BE 68 */	b transM__14mDoMtx_stack_cFfff
/* 807C0F38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C0F3C  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 807C0F40  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807C0F44  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807C0F48  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807C0F4C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807C0F50  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807C0F54  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807C0F58  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807C0F5C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807C0F60  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807C0F64  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807C0F68  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807C0F6C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807C0F70  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807C0F74  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 807C0F78  EC 01 00 2A */	fadds f0, f1, f0
/* 807C0F7C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807C0F80  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807C0F84  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C0F88  40 82 00 84 */	bne lbl_807C100C
/* 807C0F8C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807C0F90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807C0F94  7F C4 F3 78 */	mr r4, r30
/* 807C0F98  4B B8 55 18 */	b PSMTXCopy
/* 807C0F9C  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 807C0FA0  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 807C0FA4  C0 7D 00 04 */	lfs f3, 4(r29)
/* 807C0FA8  4B 84 BD F4 */	b transM__14mDoMtx_stack_cFfff
/* 807C0FAC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807C0FB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807C0FB4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807C0FB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807C0FBC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807C0FC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807C0FC4  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 807C0FC8  38 81 00 08 */	addi r4, r1, 8
/* 807C0FCC  4B AA E6 7C */	b SetC__8cM3dGSphFRC4cXyz
/* 807C0FD0  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 807C0FD4  2C 00 00 06 */	cmpwi r0, 6
/* 807C0FD8  40 82 00 14 */	bne lbl_807C0FEC
/* 807C0FDC  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 807C0FE0  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 807C0FE4  4B AA E7 24 */	b SetR__8cM3dGSphFf
/* 807C0FE8  48 00 00 10 */	b lbl_807C0FF8
lbl_807C0FEC:
/* 807C0FEC  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 807C0FF0  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 807C0FF4  4B AA E7 14 */	b SetR__8cM3dGSphFf
lbl_807C0FF8:
/* 807C0FF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C0FFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C1000  38 63 23 3C */	addi r3, r3, 0x233c
/* 807C1004  38 9F 09 50 */	addi r4, r31, 0x950
/* 807C1008  4B AA 3B A0 */	b Set__4cCcSFP8cCcD_Obj
lbl_807C100C:
/* 807C100C  39 61 00 30 */	addi r11, r1, 0x30
/* 807C1010  4B BA 12 14 */	b _restgpr_28
/* 807C1014  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C1018  7C 08 03 A6 */	mtlr r0
/* 807C101C  38 21 00 30 */	addi r1, r1, 0x30
/* 807C1020  4E 80 00 20 */	blr 
