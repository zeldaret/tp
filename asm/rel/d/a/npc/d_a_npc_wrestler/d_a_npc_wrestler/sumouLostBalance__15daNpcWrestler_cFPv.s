lbl_80B378F4:
/* 80B378F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B378F8  7C 08 02 A6 */	mflr r0
/* 80B378FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B37900  39 61 00 50 */	addi r11, r1, 0x50
/* 80B37904  4B 82 A8 D5 */	bl _savegpr_28
/* 80B37908  7C 7E 1B 78 */	mr r30, r3
/* 80B3790C  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B37910  3B E4 1D F8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B37914  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B37918  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3791C  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 80B37920  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B37924  2C 00 00 02 */	cmpwi r0, 2
/* 80B37928  41 82 00 58 */	beq lbl_80B37980
/* 80B3792C  40 80 02 E8 */	bge lbl_80B37C14
/* 80B37930  2C 00 00 00 */	cmpwi r0, 0
/* 80B37934  41 82 00 0C */	beq lbl_80B37940
/* 80B37938  48 00 02 DC */	b lbl_80B37C14
/* 80B3793C  48 00 02 D8 */	b lbl_80B37C14
lbl_80B37940:
/* 80B37940  80 9E 0B DC */	lwz r4, 0xbdc(r30)
/* 80B37944  A8 04 00 24 */	lha r0, 0x24(r4)
/* 80B37948  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80B3794C  38 80 00 08 */	li r4, 8
/* 80B37950  80 BE 0B D8 */	lwz r5, 0xbd8(r30)
/* 80B37954  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B37958  38 A0 00 00 */	li r5, 0
/* 80B3795C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B37960  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B37964  7D 89 03 A6 */	mtctr r12
/* 80B37968  4E 80 04 21 */	bctrl 
/* 80B3796C  38 00 00 05 */	li r0, 5
/* 80B37970  90 1E 0E 74 */	stw r0, 0xe74(r30)
/* 80B37974  38 00 00 02 */	li r0, 2
/* 80B37978  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3797C  48 00 02 98 */	b lbl_80B37C14
lbl_80B37980:
/* 80B37980  7F 84 E3 78 */	mr r4, r28
/* 80B37984  4B 4E 2D 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B37988  7C 64 1B 78 */	mr r4, r3
/* 80B3798C  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 80B37990  80 BE 0B D8 */	lwz r5, 0xbd8(r30)
/* 80B37994  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B37998  38 C0 40 00 */	li r6, 0x4000
/* 80B3799C  38 E0 00 40 */	li r7, 0x40
/* 80B379A0  4B 73 8B A1 */	bl cLib_addCalcAngleS__FPsssss
/* 80B379A4  7C 7D 1B 78 */	mr r29, r3
/* 80B379A8  7F C3 F3 78 */	mr r3, r30
/* 80B379AC  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80B379B0  4B 61 C8 A1 */	bl setAngle__8daNpcF_cFs
/* 80B379B4  7F A3 07 34 */	extsh r3, r29
/* 80B379B8  4B 82 D7 19 */	bl abs
/* 80B379BC  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80B379C0  40 80 00 90 */	bge lbl_80B37A50
/* 80B379C4  80 7F 0C C8 */	lwz r3, 0xcc8(r31)
/* 80B379C8  80 1F 0C CC */	lwz r0, 0xccc(r31)
/* 80B379CC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B379D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B379D4  80 1F 0C D0 */	lwz r0, 0xcd0(r31)
/* 80B379D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B379DC  38 00 00 03 */	li r0, 3
/* 80B379E0  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B379E4  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B379E8  4B 82 A6 31 */	bl __ptmf_test
/* 80B379EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B379F0  41 82 00 18 */	beq lbl_80B37A08
/* 80B379F4  7F C3 F3 78 */	mr r3, r30
/* 80B379F8  38 80 00 00 */	li r4, 0
/* 80B379FC  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37A00  4B 82 A6 85 */	bl __ptmf_scall
/* 80B37A04  60 00 00 00 */	nop 
lbl_80B37A08:
/* 80B37A08  38 00 00 00 */	li r0, 0
/* 80B37A0C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37A10  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B37A14  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B37A18  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37A1C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37A20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B37A24  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37A28  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37A2C  4B 82 A5 ED */	bl __ptmf_test
/* 80B37A30  2C 03 00 00 */	cmpwi r3, 0
/* 80B37A34  41 82 01 E0 */	beq lbl_80B37C14
/* 80B37A38  7F C3 F3 78 */	mr r3, r30
/* 80B37A3C  38 80 00 00 */	li r4, 0
/* 80B37A40  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37A44  4B 82 A6 41 */	bl __ptmf_scall
/* 80B37A48  60 00 00 00 */	nop 
/* 80B37A4C  48 00 01 C8 */	b lbl_80B37C14
lbl_80B37A50:
/* 80B37A50  7F C3 F3 78 */	mr r3, r30
/* 80B37A54  4B FF BF 99 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B37A58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B37A5C  41 82 00 90 */	beq lbl_80B37AEC
/* 80B37A60  80 7F 0C D4 */	lwz r3, 0xcd4(r31)
/* 80B37A64  80 1F 0C D8 */	lwz r0, 0xcd8(r31)
/* 80B37A68  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B37A6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B37A70  80 1F 0C DC */	lwz r0, 0xcdc(r31)
/* 80B37A74  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B37A78  38 00 00 03 */	li r0, 3
/* 80B37A7C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37A80  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37A84  4B 82 A5 95 */	bl __ptmf_test
/* 80B37A88  2C 03 00 00 */	cmpwi r3, 0
/* 80B37A8C  41 82 00 18 */	beq lbl_80B37AA4
/* 80B37A90  7F C3 F3 78 */	mr r3, r30
/* 80B37A94  38 80 00 00 */	li r4, 0
/* 80B37A98  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37A9C  4B 82 A5 E9 */	bl __ptmf_scall
/* 80B37AA0  60 00 00 00 */	nop 
lbl_80B37AA4:
/* 80B37AA4  38 00 00 00 */	li r0, 0
/* 80B37AA8  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37AAC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B37AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B37AB4  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37AB8  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37ABC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B37AC0  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37AC4  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37AC8  4B 82 A5 51 */	bl __ptmf_test
/* 80B37ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80B37AD0  41 82 01 44 */	beq lbl_80B37C14
/* 80B37AD4  7F C3 F3 78 */	mr r3, r30
/* 80B37AD8  38 80 00 00 */	li r4, 0
/* 80B37ADC  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37AE0  4B 82 A5 A5 */	bl __ptmf_scall
/* 80B37AE4  60 00 00 00 */	nop 
/* 80B37AE8  48 00 01 2C */	b lbl_80B37C14
lbl_80B37AEC:
/* 80B37AEC  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80B37AF0  28 00 00 0F */	cmplwi r0, 0xf
/* 80B37AF4  40 82 00 90 */	bne lbl_80B37B84
/* 80B37AF8  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 80B37AFC  80 1F 0C E4 */	lwz r0, 0xce4(r31)
/* 80B37B00  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B37B04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B37B08  80 1F 0C E8 */	lwz r0, 0xce8(r31)
/* 80B37B0C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B37B10  38 00 00 03 */	li r0, 3
/* 80B37B14  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37B18  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37B1C  4B 82 A4 FD */	bl __ptmf_test
/* 80B37B20  2C 03 00 00 */	cmpwi r3, 0
/* 80B37B24  41 82 00 18 */	beq lbl_80B37B3C
/* 80B37B28  7F C3 F3 78 */	mr r3, r30
/* 80B37B2C  38 80 00 00 */	li r4, 0
/* 80B37B30  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37B34  4B 82 A5 51 */	bl __ptmf_scall
/* 80B37B38  60 00 00 00 */	nop 
lbl_80B37B3C:
/* 80B37B3C  38 00 00 00 */	li r0, 0
/* 80B37B40  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37B44  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B37B48  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B37B4C  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37B50  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37B54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B37B58  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37B5C  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37B60  4B 82 A4 B9 */	bl __ptmf_test
/* 80B37B64  2C 03 00 00 */	cmpwi r3, 0
/* 80B37B68  41 82 00 AC */	beq lbl_80B37C14
/* 80B37B6C  7F C3 F3 78 */	mr r3, r30
/* 80B37B70  38 80 00 00 */	li r4, 0
/* 80B37B74  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37B78  4B 82 A5 0D */	bl __ptmf_scall
/* 80B37B7C  60 00 00 00 */	nop 
/* 80B37B80  48 00 00 94 */	b lbl_80B37C14
lbl_80B37B84:
/* 80B37B84  28 00 00 13 */	cmplwi r0, 0x13
/* 80B37B88  40 82 00 8C */	bne lbl_80B37C14
/* 80B37B8C  80 7F 0C EC */	lwz r3, 0xcec(r31)
/* 80B37B90  80 1F 0C F0 */	lwz r0, 0xcf0(r31)
/* 80B37B94  90 61 00 08 */	stw r3, 8(r1)
/* 80B37B98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B37B9C  80 1F 0C F4 */	lwz r0, 0xcf4(r31)
/* 80B37BA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B37BA4  38 00 00 03 */	li r0, 3
/* 80B37BA8  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37BAC  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37BB0  4B 82 A4 69 */	bl __ptmf_test
/* 80B37BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B37BB8  41 82 00 18 */	beq lbl_80B37BD0
/* 80B37BBC  7F C3 F3 78 */	mr r3, r30
/* 80B37BC0  38 80 00 00 */	li r4, 0
/* 80B37BC4  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37BC8  4B 82 A4 BD */	bl __ptmf_scall
/* 80B37BCC  60 00 00 00 */	nop 
lbl_80B37BD0:
/* 80B37BD0  38 00 00 00 */	li r0, 0
/* 80B37BD4  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B37BD8  80 61 00 08 */	lwz r3, 8(r1)
/* 80B37BDC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B37BE0  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B37BE4  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B37BE8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B37BEC  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B37BF0  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B37BF4  4B 82 A4 25 */	bl __ptmf_test
/* 80B37BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80B37BFC  41 82 00 18 */	beq lbl_80B37C14
/* 80B37C00  7F C3 F3 78 */	mr r3, r30
/* 80B37C04  38 80 00 00 */	li r4, 0
/* 80B37C08  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B37C0C  4B 82 A4 79 */	bl __ptmf_scall
/* 80B37C10  60 00 00 00 */	nop 
lbl_80B37C14:
/* 80B37C14  38 60 00 01 */	li r3, 1
/* 80B37C18  39 61 00 50 */	addi r11, r1, 0x50
/* 80B37C1C  4B 82 A6 09 */	bl _restgpr_28
/* 80B37C20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B37C24  7C 08 03 A6 */	mtlr r0
/* 80B37C28  38 21 00 50 */	addi r1, r1, 0x50
/* 80B37C2C  4E 80 00 20 */	blr 
