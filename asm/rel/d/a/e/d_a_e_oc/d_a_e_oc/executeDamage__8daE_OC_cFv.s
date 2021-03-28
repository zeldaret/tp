lbl_80730DC0:
/* 80730DC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80730DC4  7C 08 02 A6 */	mflr r0
/* 80730DC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80730DCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80730DD0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80730DD4  7C 7E 1B 78 */	mr r30, r3
/* 80730DD8  3C 80 80 73 */	lis r4, lit_3911@ha
/* 80730DDC  3B E4 5B 28 */	addi r31, r4, lit_3911@l
/* 80730DE0  38 00 00 01 */	li r0, 1
/* 80730DE4  98 03 06 EA */	stb r0, 0x6ea(r3)
/* 80730DE8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80730DEC  B0 03 06 D4 */	sth r0, 0x6d4(r3)
/* 80730DF0  80 03 06 B0 */	lwz r0, 0x6b0(r3)
/* 80730DF4  28 00 00 06 */	cmplwi r0, 6
/* 80730DF8  41 81 03 14 */	bgt lbl_8073110C
/* 80730DFC  3C 80 80 73 */	lis r4, lit_5924@ha
/* 80730E00  38 84 5E 80 */	addi r4, r4, lit_5924@l
/* 80730E04  54 00 10 3A */	slwi r0, r0, 2
/* 80730E08  7C 04 00 2E */	lwzx r0, r4, r0
/* 80730E0C  7C 09 03 A6 */	mtctr r0
/* 80730E10  4E 80 04 20 */	bctr 
lbl_80730E14:
/* 80730E14  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730E18  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80730E1C  38 80 00 09 */	li r4, 9
/* 80730E20  38 A0 00 00 */	li r5, 0
/* 80730E24  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730E28  4B FF D4 4D */	bl setBck__8daE_OC_cFiUcff
/* 80730E2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070182@ha */
/* 80730E30  38 03 01 82 */	addi r0, r3, 0x0182 /* 0x00070182@l */
/* 80730E34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80730E38  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730E3C  38 81 00 18 */	addi r4, r1, 0x18
/* 80730E40  38 A0 FF FF */	li r5, -1
/* 80730E44  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730E48  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730E4C  7D 89 03 A6 */	mtctr r12
/* 80730E50  4E 80 04 21 */	bctrl 
/* 80730E54  38 00 00 05 */	li r0, 5
/* 80730E58  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730E5C  48 00 02 B0 */	b lbl_8073110C
lbl_80730E60:
/* 80730E60  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730E64  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80730E68  38 80 00 0A */	li r4, 0xa
/* 80730E6C  38 A0 00 00 */	li r5, 0
/* 80730E70  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730E74  4B FF D4 01 */	bl setBck__8daE_OC_cFiUcff
/* 80730E78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070182@ha */
/* 80730E7C  38 03 01 82 */	addi r0, r3, 0x0182 /* 0x00070182@l */
/* 80730E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80730E84  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730E88  38 81 00 14 */	addi r4, r1, 0x14
/* 80730E8C  38 A0 FF FF */	li r5, -1
/* 80730E90  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730E94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730E98  7D 89 03 A6 */	mtctr r12
/* 80730E9C  4E 80 04 21 */	bctrl 
/* 80730EA0  38 00 00 05 */	li r0, 5
/* 80730EA4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730EA8  48 00 02 64 */	b lbl_8073110C
lbl_80730EAC:
/* 80730EAC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730EB0  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80730EB4  38 80 00 08 */	li r4, 8
/* 80730EB8  38 A0 00 00 */	li r5, 0
/* 80730EBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730EC0  4B FF D3 B5 */	bl setBck__8daE_OC_cFiUcff
/* 80730EC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070182@ha */
/* 80730EC8  38 03 01 82 */	addi r0, r3, 0x0182 /* 0x00070182@l */
/* 80730ECC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80730ED0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730ED4  38 81 00 10 */	addi r4, r1, 0x10
/* 80730ED8  38 A0 FF FF */	li r5, -1
/* 80730EDC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730EE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730EE4  7D 89 03 A6 */	mtctr r12
/* 80730EE8  4E 80 04 21 */	bctrl 
/* 80730EEC  38 00 00 05 */	li r0, 5
/* 80730EF0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730EF4  48 00 02 18 */	b lbl_8073110C
lbl_80730EF8:
/* 80730EF8  38 80 00 08 */	li r4, 8
/* 80730EFC  38 A0 00 00 */	li r5, 0
/* 80730F00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730F04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730F08  4B FF D3 6D */	bl setBck__8daE_OC_cFiUcff
/* 80730F0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070181@ha */
/* 80730F10  38 03 01 81 */	addi r0, r3, 0x0181 /* 0x00070181@l */
/* 80730F14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80730F18  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730F1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80730F20  38 A0 FF FF */	li r5, -1
/* 80730F24  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730F28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730F2C  7D 89 03 A6 */	mtctr r12
/* 80730F30  4E 80 04 21 */	bctrl 
/* 80730F34  38 00 00 05 */	li r0, 5
/* 80730F38  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730F3C  7F C3 F3 78 */	mr r3, r30
/* 80730F40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80730F44  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80730F48  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80730F4C  4B 8E 97 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80730F50  7C 64 1B 78 */	mr r4, r3
/* 80730F54  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80730F58  4B B3 FE CC */	b cLib_distanceAngleS__Fss
/* 80730F5C  7C 60 07 34 */	extsh r0, r3
/* 80730F60  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80730F64  40 80 00 10 */	bge lbl_80730F74
/* 80730F68  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80730F6C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80730F70  48 00 00 0C */	b lbl_80730F7C
lbl_80730F74:
/* 80730F74  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80730F78  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80730F7C:
/* 80730F7C  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80730F80  60 00 00 80 */	ori r0, r0, 0x80
/* 80730F84  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80730F88  48 00 01 84 */	b lbl_8073110C
lbl_80730F8C:
/* 80730F8C  38 80 00 0F */	li r4, 0xf
/* 80730F90  38 A0 00 00 */	li r5, 0
/* 80730F94  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730F98  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730F9C  4B FF D2 D9 */	bl setBck__8daE_OC_cFiUcff
/* 80730FA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701A2@ha */
/* 80730FA4  38 03 01 A2 */	addi r0, r3, 0x01A2 /* 0x000701A2@l */
/* 80730FA8  90 01 00 08 */	stw r0, 8(r1)
/* 80730FAC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730FB0  38 81 00 08 */	addi r4, r1, 8
/* 80730FB4  38 A0 FF FF */	li r5, -1
/* 80730FB8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730FBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730FC0  7D 89 03 A6 */	mtctr r12
/* 80730FC4  4E 80 04 21 */	bctrl 
/* 80730FC8  38 00 00 06 */	li r0, 6
/* 80730FCC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730FD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80730FD4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80730FD8  48 00 01 34 */	b lbl_8073110C
lbl_80730FDC:
/* 80730FDC  4B FF D3 A1 */	bl setSpitEffect__8daE_OC_cFv
/* 80730FE0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80730FE4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730FE8  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 80730FEC  4B B3 F7 54 */	b cLib_chaseF__FPfff
/* 80730FF0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80730FF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80730FF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80730FFC  41 82 00 24 */	beq lbl_80731020
/* 80731000  38 7E 0E 60 */	addi r3, r30, 0xe60
/* 80731004  38 9E 0E 64 */	addi r4, r30, 0xe64
/* 80731008  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8073100C  38 C0 00 00 */	li r6, 0
/* 80731010  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80731014  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80731018  39 00 00 00 */	li r8, 0
/* 8073101C  4B 8E C0 04 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80731020:
/* 80731020  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80731024  38 80 00 01 */	li r4, 1
/* 80731028  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073102C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80731030  40 82 00 18 */	bne lbl_80731048
/* 80731034  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80731038  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073103C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80731040  41 82 00 08 */	beq lbl_80731048
/* 80731044  38 80 00 00 */	li r4, 0
lbl_80731048:
/* 80731048  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073104C  41 82 00 C0 */	beq lbl_8073110C
/* 80731050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80731054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80731058  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8073105C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80731060  28 00 00 05 */	cmplwi r0, 5
/* 80731064  41 82 00 A8 */	beq lbl_8073110C
/* 80731068  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8073106C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80731070  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80731074  88 1E 06 E3 */	lbz r0, 0x6e3(r30)
/* 80731078  28 00 00 00 */	cmplwi r0, 0
/* 8073107C  41 82 00 18 */	beq lbl_80731094
/* 80731080  7F C3 F3 78 */	mr r3, r30
/* 80731084  38 80 00 10 */	li r4, 0x10
/* 80731088  38 A0 00 00 */	li r5, 0
/* 8073108C  4B FF CC 31 */	bl setActionMode__8daE_OC_cFii
/* 80731090  48 00 00 7C */	b lbl_8073110C
lbl_80731094:
/* 80731094  7F C3 F3 78 */	mr r3, r30
/* 80731098  38 80 00 03 */	li r4, 3
/* 8073109C  38 A0 00 00 */	li r5, 0
/* 807310A0  4B FF CC 1D */	bl setActionMode__8daE_OC_cFii
/* 807310A4  48 00 00 68 */	b lbl_8073110C
lbl_807310A8:
/* 807310A8  4B FF D2 D5 */	bl setSpitEffect__8daE_OC_cFv
/* 807310AC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807310B0  38 80 00 01 */	li r4, 1
/* 807310B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807310B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807310BC  40 82 00 18 */	bne lbl_807310D4
/* 807310C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807310C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807310C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807310CC  41 82 00 08 */	beq lbl_807310D4
/* 807310D0  38 80 00 00 */	li r4, 0
lbl_807310D4:
/* 807310D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807310D8  41 82 00 34 */	beq lbl_8073110C
/* 807310DC  88 1E 06 E3 */	lbz r0, 0x6e3(r30)
/* 807310E0  28 00 00 00 */	cmplwi r0, 0
/* 807310E4  41 82 00 18 */	beq lbl_807310FC
/* 807310E8  7F C3 F3 78 */	mr r3, r30
/* 807310EC  38 80 00 10 */	li r4, 0x10
/* 807310F0  38 A0 00 00 */	li r5, 0
/* 807310F4  4B FF CB C9 */	bl setActionMode__8daE_OC_cFii
/* 807310F8  48 00 00 14 */	b lbl_8073110C
lbl_807310FC:
/* 807310FC  7F C3 F3 78 */	mr r3, r30
/* 80731100  38 80 00 03 */	li r4, 3
/* 80731104  38 A0 00 00 */	li r5, 0
/* 80731108  4B FF CB B5 */	bl setActionMode__8daE_OC_cFii
lbl_8073110C:
/* 8073110C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80731110  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80731114  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80731118  7C 08 03 A6 */	mtlr r0
/* 8073111C  38 21 00 30 */	addi r1, r1, 0x30
/* 80731120  4E 80 00 20 */	blr 
