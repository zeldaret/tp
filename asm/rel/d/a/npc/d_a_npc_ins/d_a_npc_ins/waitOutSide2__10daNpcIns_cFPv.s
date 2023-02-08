lbl_80A10950:
/* 80A10950  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A10954  7C 08 02 A6 */	mflr r0
/* 80A10958  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1095C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A10960  4B 95 18 7D */	bl _savegpr_29
/* 80A10964  7C 7E 1B 78 */	mr r30, r3
/* 80A10968  3C 80 80 A1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A1419C@ha */
/* 80A1096C  3B E4 41 9C */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80A1419C@l */
/* 80A10970  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A10974  2C 00 00 02 */	cmpwi r0, 2
/* 80A10978  41 82 00 8C */	beq lbl_80A10A04
/* 80A1097C  40 80 03 40 */	bge lbl_80A10CBC
/* 80A10980  2C 00 00 00 */	cmpwi r0, 0
/* 80A10984  41 82 00 0C */	beq lbl_80A10990
/* 80A10988  48 00 03 34 */	b lbl_80A10CBC
/* 80A1098C  48 00 03 30 */	b lbl_80A10CBC
lbl_80A10990:
/* 80A10990  38 80 00 09 */	li r4, 9
/* 80A10994  3C A0 80 A1 */	lis r5, lit_4994@ha /* 0x80A14118@ha */
/* 80A10998  C0 25 41 18 */	lfs f1, lit_4994@l(r5)  /* 0x80A14118@l */
/* 80A1099C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A109A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A109A4  7D 89 03 A6 */	mtctr r12
/* 80A109A8  4E 80 04 21 */	bctrl 
/* 80A109AC  7F C3 F3 78 */	mr r3, r30
/* 80A109B0  38 80 00 0A */	li r4, 0xa
/* 80A109B4  3C A0 80 A1 */	lis r5, lit_4994@ha /* 0x80A14118@ha */
/* 80A109B8  C0 25 41 18 */	lfs f1, lit_4994@l(r5)  /* 0x80A14118@l */
/* 80A109BC  38 A0 00 00 */	li r5, 0
/* 80A109C0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A109C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A109C8  7D 89 03 A6 */	mtctr r12
/* 80A109CC  4E 80 04 21 */	bctrl 
/* 80A109D0  A8 1E 0E 1A */	lha r0, 0xe1a(r30)
/* 80A109D4  2C 00 00 00 */	cmpwi r0, 0
/* 80A109D8  41 82 00 0C */	beq lbl_80A109E4
/* 80A109DC  38 00 00 00 */	li r0, 0
/* 80A109E0  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
lbl_80A109E4:
/* 80A109E4  38 00 00 00 */	li r0, 0
/* 80A109E8  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A109EC  3C 60 80 A1 */	lis r3, lit_4415@ha /* 0x80A13EF0@ha */
/* 80A109F0  C0 03 3E F0 */	lfs f0, lit_4415@l(r3)  /* 0x80A13EF0@l */
/* 80A109F4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A109F8  38 00 00 02 */	li r0, 2
/* 80A109FC  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10A00  48 00 02 BC */	b lbl_80A10CBC
lbl_80A10A04:
/* 80A10A04  4B 78 F0 0D */	bl dKy_getdaytime_hour__Fv
/* 80A10A08  7C 7D 1B 78 */	mr r29, r3
/* 80A10A0C  4B 78 F0 31 */	bl dKy_getdaytime_minute__Fv
/* 80A10A10  1C 1D 00 3C */	mulli r0, r29, 0x3c
/* 80A10A14  7C 63 02 14 */	add r3, r3, r0
/* 80A10A18  A0 1E 0E 1C */	lhz r0, 0xe1c(r30)
/* 80A10A1C  7C 03 00 00 */	cmpw r3, r0
/* 80A10A20  41 80 00 A4 */	blt lbl_80A10AC4
/* 80A10A24  80 7F 02 6C */	lwz r3, 0x26c(r31)
/* 80A10A28  80 1F 02 70 */	lwz r0, 0x270(r31)
/* 80A10A2C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80A10A30  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A10A34  80 1F 02 74 */	lwz r0, 0x274(r31)
/* 80A10A38  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A10A3C  38 00 00 03 */	li r0, 3
/* 80A10A40  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10A44  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A10A48  4B 95 15 D1 */	bl __ptmf_test
/* 80A10A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80A10A50  41 82 00 18 */	beq lbl_80A10A68
/* 80A10A54  7F C3 F3 78 */	mr r3, r30
/* 80A10A58  38 80 00 00 */	li r4, 0
/* 80A10A5C  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A10A60  4B 95 16 25 */	bl __ptmf_scall
/* 80A10A64  60 00 00 00 */	nop 
lbl_80A10A68:
/* 80A10A68  80 7E 0D C8 */	lwz r3, 0xdc8(r30)
/* 80A10A6C  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80A10A70  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 80A10A74  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80A10A78  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 80A10A7C  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80A10A80  38 00 00 00 */	li r0, 0
/* 80A10A84  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10A88  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80A10A8C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A10A90  90 7E 0D C8 */	stw r3, 0xdc8(r30)
/* 80A10A94  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80A10A98  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A10A9C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A10AA0  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A10AA4  4B 95 15 75 */	bl __ptmf_test
/* 80A10AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A10AAC  41 82 00 18 */	beq lbl_80A10AC4
/* 80A10AB0  7F C3 F3 78 */	mr r3, r30
/* 80A10AB4  38 80 00 00 */	li r4, 0
/* 80A10AB8  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A10ABC  4B 95 15 C9 */	bl __ptmf_scall
/* 80A10AC0  60 00 00 00 */	nop 
lbl_80A10AC4:
/* 80A10AC4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005010F@ha */
/* 80A10AC8  38 03 01 0F */	addi r0, r3, 0x010F /* 0x0005010F@l */
/* 80A10ACC  90 01 00 08 */	stw r0, 8(r1)
/* 80A10AD0  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A10AD4  38 81 00 08 */	addi r4, r1, 8
/* 80A10AD8  38 A0 FF FF */	li r5, -1
/* 80A10ADC  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 80A10AE0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A10AE4  7D 89 03 A6 */	mtctr r12
/* 80A10AE8  4E 80 04 21 */	bctrl 
/* 80A10AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A10AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A10AF4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A10AF8  28 00 00 00 */	cmplwi r0, 0
/* 80A10AFC  41 82 01 74 */	beq lbl_80A10C70
/* 80A10B00  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A10B04  28 00 00 01 */	cmplwi r0, 1
/* 80A10B08  40 82 00 A8 */	bne lbl_80A10BB0
/* 80A10B0C  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 80A10B10  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 80A10B14  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A10B18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A10B1C  80 1F 02 44 */	lwz r0, 0x244(r31)
/* 80A10B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A10B24  38 00 00 03 */	li r0, 3
/* 80A10B28  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10B2C  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A10B30  4B 95 14 E9 */	bl __ptmf_test
/* 80A10B34  2C 03 00 00 */	cmpwi r3, 0
/* 80A10B38  41 82 00 18 */	beq lbl_80A10B50
/* 80A10B3C  7F C3 F3 78 */	mr r3, r30
/* 80A10B40  38 80 00 00 */	li r4, 0
/* 80A10B44  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A10B48  4B 95 15 3D */	bl __ptmf_scall
/* 80A10B4C  60 00 00 00 */	nop 
lbl_80A10B50:
/* 80A10B50  80 7E 0D C8 */	lwz r3, 0xdc8(r30)
/* 80A10B54  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80A10B58  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 80A10B5C  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80A10B60  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 80A10B64  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80A10B68  38 00 00 00 */	li r0, 0
/* 80A10B6C  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10B70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80A10B74  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A10B78  90 7E 0D C8 */	stw r3, 0xdc8(r30)
/* 80A10B7C  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80A10B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A10B84  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A10B88  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A10B8C  4B 95 14 8D */	bl __ptmf_test
/* 80A10B90  2C 03 00 00 */	cmpwi r3, 0
/* 80A10B94  41 82 01 28 */	beq lbl_80A10CBC
/* 80A10B98  7F C3 F3 78 */	mr r3, r30
/* 80A10B9C  38 80 00 00 */	li r4, 0
/* 80A10BA0  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A10BA4  4B 95 14 E1 */	bl __ptmf_scall
/* 80A10BA8  60 00 00 00 */	nop 
/* 80A10BAC  48 00 01 10 */	b lbl_80A10CBC
lbl_80A10BB0:
/* 80A10BB0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A10BB4  80 9F 01 F8 */	lwz r4, 0x1f8(r31)
/* 80A10BB8  38 A0 00 00 */	li r5, 0
/* 80A10BBC  38 C0 00 00 */	li r6, 0
/* 80A10BC0  4B 63 6F 5D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A10BC4  2C 03 FF FF */	cmpwi r3, -1
/* 80A10BC8  41 82 00 F4 */	beq lbl_80A10CBC
/* 80A10BCC  80 7F 02 48 */	lwz r3, 0x248(r31)
/* 80A10BD0  80 1F 02 4C */	lwz r0, 0x24c(r31)
/* 80A10BD4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A10BD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A10BDC  80 1F 02 50 */	lwz r0, 0x250(r31)
/* 80A10BE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A10BE4  38 00 00 03 */	li r0, 3
/* 80A10BE8  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10BEC  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A10BF0  4B 95 14 29 */	bl __ptmf_test
/* 80A10BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A10BF8  41 82 00 18 */	beq lbl_80A10C10
/* 80A10BFC  7F C3 F3 78 */	mr r3, r30
/* 80A10C00  38 80 00 00 */	li r4, 0
/* 80A10C04  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A10C08  4B 95 14 7D */	bl __ptmf_scall
/* 80A10C0C  60 00 00 00 */	nop 
lbl_80A10C10:
/* 80A10C10  80 7E 0D C8 */	lwz r3, 0xdc8(r30)
/* 80A10C14  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80A10C18  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 80A10C1C  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80A10C20  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 80A10C24  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80A10C28  38 00 00 00 */	li r0, 0
/* 80A10C2C  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80A10C30  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80A10C34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A10C38  90 7E 0D C8 */	stw r3, 0xdc8(r30)
/* 80A10C3C  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80A10C40  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80A10C44  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A10C48  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A10C4C  4B 95 13 CD */	bl __ptmf_test
/* 80A10C50  2C 03 00 00 */	cmpwi r3, 0
/* 80A10C54  41 82 00 68 */	beq lbl_80A10CBC
/* 80A10C58  7F C3 F3 78 */	mr r3, r30
/* 80A10C5C  38 80 00 00 */	li r4, 0
/* 80A10C60  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A10C64  4B 95 14 21 */	bl __ptmf_scall
/* 80A10C68  60 00 00 00 */	nop 
/* 80A10C6C  48 00 00 50 */	b lbl_80A10CBC
lbl_80A10C70:
/* 80A10C70  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A10C74  28 00 00 00 */	cmplwi r0, 0
/* 80A10C78  41 82 00 14 */	beq lbl_80A10C8C
/* 80A10C7C  3C 60 80 A1 */	lis r3, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A10C80  38 63 41 68 */	addi r3, r3, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A10C84  38 03 00 0E */	addi r0, r3, 0xe
/* 80A10C88  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80A10C8C:
/* 80A10C8C  7F C3 F3 78 */	mr r3, r30
/* 80A10C90  88 9E 0E 20 */	lbz r4, 0xe20(r30)
/* 80A10C94  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A10C98  54 00 10 3A */	slwi r0, r0, 2
/* 80A10C9C  38 BF 01 F4 */	addi r5, r31, 0x1f4
/* 80A10CA0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A10CA4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A10CA8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A10CAC  38 E0 00 28 */	li r7, 0x28
/* 80A10CB0  39 00 00 FF */	li r8, 0xff
/* 80A10CB4  39 20 00 01 */	li r9, 1
/* 80A10CB8  4B 74 2B C5 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A10CBC:
/* 80A10CBC  38 60 00 01 */	li r3, 1
/* 80A10CC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A10CC4  4B 95 15 65 */	bl _restgpr_29
/* 80A10CC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A10CCC  7C 08 03 A6 */	mtlr r0
/* 80A10CD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A10CD4  4E 80 00 20 */	blr 
