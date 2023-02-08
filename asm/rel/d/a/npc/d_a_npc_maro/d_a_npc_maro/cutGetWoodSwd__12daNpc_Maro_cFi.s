lbl_8055ECF4:
/* 8055ECF4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8055ECF8  7C 08 02 A6 */	mflr r0
/* 8055ECFC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8055ED00  39 61 00 70 */	addi r11, r1, 0x70
/* 8055ED04  4B E0 34 C9 */	bl _savegpr_25
/* 8055ED08  7C 7B 1B 78 */	mr r27, r3
/* 8055ED0C  7C 99 23 78 */	mr r25, r4
/* 8055ED10  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 8055ED14  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 8055ED18  3B C0 00 00 */	li r30, 0
/* 8055ED1C  3B A0 FF FF */	li r29, -1
/* 8055ED20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055ED24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055ED28  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 8055ED2C  7F 43 D3 78 */	mr r3, r26
/* 8055ED30  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055ED34  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055ED38  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055ED3C  38 C0 00 03 */	li r6, 3
/* 8055ED40  4B AE 93 AD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055ED44  28 03 00 00 */	cmplwi r3, 0
/* 8055ED48  41 82 00 08 */	beq lbl_8055ED50
/* 8055ED4C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8055ED50:
/* 8055ED50  7F 43 D3 78 */	mr r3, r26
/* 8055ED54  7F 24 CB 78 */	mr r4, r25
/* 8055ED58  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055ED5C  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055ED60  38 A5 02 1F */	addi r5, r5, 0x21f
/* 8055ED64  38 C0 00 03 */	li r6, 3
/* 8055ED68  4B AE 93 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055ED6C  28 03 00 00 */	cmplwi r3, 0
/* 8055ED70  41 82 00 08 */	beq lbl_8055ED78
/* 8055ED74  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055ED78:
/* 8055ED78  7F 43 D3 78 */	mr r3, r26
/* 8055ED7C  7F 24 CB 78 */	mr r4, r25
/* 8055ED80  4B AE 8F CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 8055ED84  2C 03 00 00 */	cmpwi r3, 0
/* 8055ED88  41 82 02 B4 */	beq lbl_8055F03C
/* 8055ED8C  28 1D 00 0B */	cmplwi r29, 0xb
/* 8055ED90  41 81 02 AC */	bgt lbl_8055F03C
/* 8055ED94  3C 60 80 56 */	lis r3, lit_6227@ha /* 0x80565798@ha */
/* 8055ED98  38 63 57 98 */	addi r3, r3, lit_6227@l /* 0x80565798@l */
/* 8055ED9C  57 A0 10 3A */	slwi r0, r29, 2
/* 8055EDA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055EDA4  7C 09 03 A6 */	mtctr r0
/* 8055EDA8  4E 80 04 20 */	bctr 
lbl_8055EDAC:
/* 8055EDAC  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8055EDB0  2C 00 00 09 */	cmpwi r0, 9
/* 8055EDB4  41 82 00 24 */	beq lbl_8055EDD8
/* 8055EDB8  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8055EDBC  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8055EDC0  4B BE 6A D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EDC4  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8055EDC8  38 00 00 09 */	li r0, 9
/* 8055EDCC  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8055EDD0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055EDD4  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8055EDD8:
/* 8055EDD8  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055EDDC  2C 00 00 00 */	cmpwi r0, 0
/* 8055EDE0  41 82 02 5C */	beq lbl_8055F03C
/* 8055EDE4  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8055EDE8  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055EDEC  4B BE 6A AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EDF0  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8055EDF4  38 00 00 00 */	li r0, 0
/* 8055EDF8  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055EDFC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055EE00  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8055EE04  48 00 02 38 */	b lbl_8055F03C
lbl_8055EE08:
/* 8055EE08  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8055EE0C  2C 00 00 09 */	cmpwi r0, 9
/* 8055EE10  41 82 00 24 */	beq lbl_8055EE34
/* 8055EE14  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8055EE18  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8055EE1C  4B BE 6A 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EE20  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8055EE24  38 00 00 09 */	li r0, 9
/* 8055EE28  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8055EE2C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EE30  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8055EE34:
/* 8055EE34  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055EE38  2C 00 00 00 */	cmpwi r0, 0
/* 8055EE3C  41 82 00 24 */	beq lbl_8055EE60
/* 8055EE40  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8055EE44  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055EE48  4B BE 6A 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EE4C  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8055EE50  38 00 00 00 */	li r0, 0
/* 8055EE54  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055EE58  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EE5C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8055EE60:
/* 8055EE60  C0 5F 01 60 */	lfs f2, 0x160(r31)
/* 8055EE64  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8055EE68  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8055EE6C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8055EE70  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8055EE74  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8055EE78  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8055EE7C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8055EE80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8055EE84  7F 63 DB 78 */	mr r3, r27
/* 8055EE88  38 81 00 30 */	addi r4, r1, 0x30
/* 8055EE8C  4B BE BA 7D */	bl setPos__8daNpcT_cF4cXyz
/* 8055EE90  7F 63 DB 78 */	mr r3, r27
/* 8055EE94  38 80 23 8E */	li r4, 0x238e
/* 8055EE98  4B BE BB 81 */	bl setAngle__8daNpcT_cFs
/* 8055EE9C  38 00 00 00 */	li r0, 0
/* 8055EEA0  B0 1B 0D D8 */	sth r0, 0xdd8(r27)
/* 8055EEA4  38 00 00 01 */	li r0, 1
/* 8055EEA8  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 8055EEAC  48 00 01 90 */	b lbl_8055F03C
lbl_8055EEB0:
/* 8055EEB0  38 00 00 00 */	li r0, 0
/* 8055EEB4  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 8055EEB8  48 00 01 84 */	b lbl_8055F03C
lbl_8055EEBC:
/* 8055EEBC  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8055EEC0  2C 00 00 09 */	cmpwi r0, 9
/* 8055EEC4  41 82 00 24 */	beq lbl_8055EEE8
/* 8055EEC8  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8055EECC  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8055EED0  4B BE 69 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EED4  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8055EED8  38 00 00 09 */	li r0, 9
/* 8055EEDC  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8055EEE0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EEE4  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8055EEE8:
/* 8055EEE8  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055EEEC  2C 00 00 00 */	cmpwi r0, 0
/* 8055EEF0  41 82 00 24 */	beq lbl_8055EF14
/* 8055EEF4  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8055EEF8  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055EEFC  4B BE 69 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EF00  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8055EF04  38 00 00 00 */	li r0, 0
/* 8055EF08  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055EF0C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EF10  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8055EF14:
/* 8055EF14  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 8055EF18  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8055EF1C  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 8055EF20  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8055EF24  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8055EF28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8055EF2C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8055EF30  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8055EF34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8055EF38  7F 63 DB 78 */	mr r3, r27
/* 8055EF3C  38 81 00 24 */	addi r4, r1, 0x24
/* 8055EF40  4B BE B9 C9 */	bl setPos__8daNpcT_cF4cXyz
/* 8055EF44  7F 63 DB 78 */	mr r3, r27
/* 8055EF48  38 80 15 55 */	li r4, 0x1555
/* 8055EF4C  4B BE BA CD */	bl setAngle__8daNpcT_cFs
/* 8055EF50  38 00 00 00 */	li r0, 0
/* 8055EF54  B0 1B 0D D8 */	sth r0, 0xdd8(r27)
/* 8055EF58  48 00 00 E4 */	b lbl_8055F03C
lbl_8055EF5C:
/* 8055EF5C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8055EF60  D0 1B 04 A8 */	stfs f0, 0x4a8(r27)
/* 8055EF64  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8055EF68  D0 1B 04 AC */	stfs f0, 0x4ac(r27)
/* 8055EF6C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8055EF70  D0 1B 04 B0 */	stfs f0, 0x4b0(r27)
/* 8055EF74  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 8055EF78  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
/* 8055EF7C  93 9B 0D C4 */	stw r28, 0xdc4(r27)
/* 8055EF80  80 1B 0D C4 */	lwz r0, 0xdc4(r27)
/* 8055EF84  2C 00 00 00 */	cmpwi r0, 0
/* 8055EF88  40 82 00 B4 */	bne lbl_8055F03C
/* 8055EF8C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055EF90  2C 00 00 08 */	cmpwi r0, 8
/* 8055EF94  41 82 00 A8 */	beq lbl_8055F03C
/* 8055EF98  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8055EF9C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055EFA0  4B BE 68 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EFA4  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8055EFA8  38 00 00 08 */	li r0, 8
/* 8055EFAC  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055EFB0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055EFB4  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8055EFB8  48 00 00 84 */	b lbl_8055F03C
lbl_8055EFBC:
/* 8055EFBC  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8055EFC0  2C 00 00 09 */	cmpwi r0, 9
/* 8055EFC4  41 82 00 24 */	beq lbl_8055EFE8
/* 8055EFC8  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8055EFCC  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8055EFD0  4B BE 68 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EFD4  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8055EFD8  38 00 00 09 */	li r0, 9
/* 8055EFDC  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8055EFE0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EFE4  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8055EFE8:
/* 8055EFE8  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055EFEC  2C 00 00 00 */	cmpwi r0, 0
/* 8055EFF0  41 82 00 24 */	beq lbl_8055F014
/* 8055EFF4  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8055EFF8  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055EFFC  4B BE 68 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055F000  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8055F004  38 00 00 00 */	li r0, 0
/* 8055F008  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055F00C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F010  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8055F014:
/* 8055F014  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F018  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8055F01C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 8055F020  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8055F024  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 8055F028  38 00 00 01 */	li r0, 1
/* 8055F02C  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 8055F030  48 00 00 0C */	b lbl_8055F03C
lbl_8055F034:
/* 8055F034  38 00 00 00 */	li r0, 0
/* 8055F038  98 1B 0E 25 */	stb r0, 0xe25(r27)
lbl_8055F03C:
/* 8055F03C  28 1D 00 0B */	cmplwi r29, 0xb
/* 8055F040  41 81 04 AC */	bgt lbl_8055F4EC
/* 8055F044  3C 60 80 56 */	lis r3, lit_6228@ha /* 0x80565768@ha */
/* 8055F048  38 63 57 68 */	addi r3, r3, lit_6228@l /* 0x80565768@l */
/* 8055F04C  57 A0 10 3A */	slwi r0, r29, 2
/* 8055F050  7C 03 00 2E */	lwzx r0, r3, r0
/* 8055F054  7C 09 03 A6 */	mtctr r0
/* 8055F058  4E 80 04 20 */	bctr 
lbl_8055F05C:
/* 8055F05C  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055F060  2C 00 00 01 */	cmpwi r0, 1
/* 8055F064  41 82 00 28 */	beq lbl_8055F08C
/* 8055F068  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F06C  4B BE 66 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055F070  38 00 00 00 */	li r0, 0
/* 8055F074  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055F078  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F07C  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055F080  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F084  38 00 00 01 */	li r0, 1
/* 8055F088  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8055F08C:
/* 8055F08C  38 00 00 00 */	li r0, 0
/* 8055F090  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F094  3B C0 00 01 */	li r30, 1
/* 8055F098  48 00 04 54 */	b lbl_8055F4EC
lbl_8055F09C:
/* 8055F09C  38 7B 10 DC */	addi r3, r27, 0x10dc
/* 8055F0A0  4B BE 66 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F0A4  7C 7A 1B 78 */	mr r26, r3
/* 8055F0A8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F0AC  4B BE 66 5D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F0B0  7C 63 D0 50 */	subf r3, r3, r26
/* 8055F0B4  30 03 FF FF */	addic r0, r3, -1
/* 8055F0B8  7C 00 19 10 */	subfe r0, r0, r3
/* 8055F0BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055F0C0  40 82 00 10 */	bne lbl_8055F0D0
/* 8055F0C4  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055F0C8  2C 00 00 02 */	cmpwi r0, 2
/* 8055F0CC  41 82 00 30 */	beq lbl_8055F0FC
lbl_8055F0D0:
/* 8055F0D0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F0D4  4B BE 66 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055F0D8  38 00 00 00 */	li r0, 0
/* 8055F0DC  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055F0E0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F0E4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055F0E8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F0EC  38 00 00 02 */	li r0, 2
/* 8055F0F0  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 8055F0F4  38 00 00 01 */	li r0, 1
/* 8055F0F8  48 00 00 08 */	b lbl_8055F100
lbl_8055F0FC:
/* 8055F0FC  38 00 00 00 */	li r0, 0
lbl_8055F100:
/* 8055F100  2C 00 00 00 */	cmpwi r0, 0
/* 8055F104  41 82 00 28 */	beq lbl_8055F12C
/* 8055F108  7F 43 D3 78 */	mr r3, r26
/* 8055F10C  4B AB 9B D5 */	bl fopAc_IsActor__FPv
/* 8055F110  2C 03 00 00 */	cmpwi r3, 0
/* 8055F114  41 82 00 18 */	beq lbl_8055F12C
/* 8055F118  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F11C  7F 44 D3 78 */	mr r4, r26
/* 8055F120  4B BE 65 C1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055F124  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8055F128  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_8055F12C:
/* 8055F12C  38 00 00 00 */	li r0, 0
/* 8055F130  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F134  3B C0 00 01 */	li r30, 1
/* 8055F138  48 00 03 B4 */	b lbl_8055F4EC
lbl_8055F13C:
/* 8055F13C  38 7B 10 CC */	addi r3, r27, 0x10cc
/* 8055F140  4B BE 65 C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F144  7C 7A 1B 78 */	mr r26, r3
/* 8055F148  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F14C  4B BE 65 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F150  7C 63 D0 50 */	subf r3, r3, r26
/* 8055F154  30 03 FF FF */	addic r0, r3, -1
/* 8055F158  7C 00 19 10 */	subfe r0, r0, r3
/* 8055F15C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055F160  40 82 00 10 */	bne lbl_8055F170
/* 8055F164  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055F168  2C 00 00 02 */	cmpwi r0, 2
/* 8055F16C  41 82 00 30 */	beq lbl_8055F19C
lbl_8055F170:
/* 8055F170  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F174  4B BE 65 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055F178  38 00 00 00 */	li r0, 0
/* 8055F17C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055F180  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F184  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055F188  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F18C  38 00 00 02 */	li r0, 2
/* 8055F190  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 8055F194  38 00 00 01 */	li r0, 1
/* 8055F198  48 00 00 08 */	b lbl_8055F1A0
lbl_8055F19C:
/* 8055F19C  38 00 00 00 */	li r0, 0
lbl_8055F1A0:
/* 8055F1A0  2C 00 00 00 */	cmpwi r0, 0
/* 8055F1A4  41 82 00 28 */	beq lbl_8055F1CC
/* 8055F1A8  7F 43 D3 78 */	mr r3, r26
/* 8055F1AC  4B AB 9B 35 */	bl fopAc_IsActor__FPv
/* 8055F1B0  2C 03 00 00 */	cmpwi r3, 0
/* 8055F1B4  41 82 00 18 */	beq lbl_8055F1CC
/* 8055F1B8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F1BC  7F 44 D3 78 */	mr r4, r26
/* 8055F1C0  4B BE 65 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055F1C4  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8055F1C8  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_8055F1CC:
/* 8055F1CC  38 00 00 00 */	li r0, 0
/* 8055F1D0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F1D4  3B C0 00 01 */	li r30, 1
/* 8055F1D8  48 00 03 14 */	b lbl_8055F4EC
lbl_8055F1DC:
/* 8055F1DC  38 7B 10 CC */	addi r3, r27, 0x10cc
/* 8055F1E0  4B BE 65 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F1E4  7C 7A 1B 78 */	mr r26, r3
/* 8055F1E8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F1EC  4B BE 65 1D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F1F0  7C 63 D0 50 */	subf r3, r3, r26
/* 8055F1F4  30 03 FF FF */	addic r0, r3, -1
/* 8055F1F8  7C 00 19 10 */	subfe r0, r0, r3
/* 8055F1FC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055F200  40 82 00 10 */	bne lbl_8055F210
/* 8055F204  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055F208  2C 00 00 02 */	cmpwi r0, 2
/* 8055F20C  41 82 00 30 */	beq lbl_8055F23C
lbl_8055F210:
/* 8055F210  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F214  4B BE 64 E9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055F218  38 00 00 00 */	li r0, 0
/* 8055F21C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055F220  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F224  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055F228  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F22C  38 00 00 02 */	li r0, 2
/* 8055F230  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 8055F234  38 00 00 01 */	li r0, 1
/* 8055F238  48 00 00 08 */	b lbl_8055F240
lbl_8055F23C:
/* 8055F23C  38 00 00 00 */	li r0, 0
lbl_8055F240:
/* 8055F240  2C 00 00 00 */	cmpwi r0, 0
/* 8055F244  41 82 00 28 */	beq lbl_8055F26C
/* 8055F248  7F 43 D3 78 */	mr r3, r26
/* 8055F24C  4B AB 9A 95 */	bl fopAc_IsActor__FPv
/* 8055F250  2C 03 00 00 */	cmpwi r3, 0
/* 8055F254  41 82 00 18 */	beq lbl_8055F26C
/* 8055F258  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F25C  7F 44 D3 78 */	mr r4, r26
/* 8055F260  4B BE 64 81 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055F264  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8055F268  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_8055F26C:
/* 8055F26C  38 00 00 00 */	li r0, 0
/* 8055F270  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F274  80 1B 0D C4 */	lwz r0, 0xdc4(r27)
/* 8055F278  2C 00 00 00 */	cmpwi r0, 0
/* 8055F27C  40 82 01 D8 */	bne lbl_8055F454
/* 8055F280  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F284  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8055F288  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8055F28C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 8055F290  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8055F294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8055F298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8055F29C  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 8055F2A0  38 04 2A AA */	addi r0, r4, 0x2aaa
/* 8055F2A4  7C 04 07 34 */	extsh r4, r0
/* 8055F2A8  4B AA D1 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 8055F2AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8055F2B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8055F2B4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8055F2B8  7C 85 23 78 */	mr r5, r4
/* 8055F2BC  4B DE 7A B1 */	bl PSMTXMultVec
/* 8055F2C0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8055F2C4  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 8055F2C8  7C 65 1B 78 */	mr r5, r3
/* 8055F2CC  4B DE 7D C5 */	bl PSVECAdd
/* 8055F2D0  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8055F2D4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8055F2D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8055F2DC  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 8055F2E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8055F2E4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8055F2E8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8055F2EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8055F2F0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8055F2F4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8055F2F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8055F2FC  38 61 00 0C */	addi r3, r1, 0xc
/* 8055F300  38 81 00 18 */	addi r4, r1, 0x18
/* 8055F304  4B DE 80 99 */	bl PSVECSquareDistance
/* 8055F308  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F30C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055F310  40 81 00 58 */	ble lbl_8055F368
/* 8055F314  FC 00 08 34 */	frsqrte f0, f1
/* 8055F318  C8 9F 01 38 */	lfd f4, 0x138(r31)
/* 8055F31C  FC 44 00 32 */	fmul f2, f4, f0
/* 8055F320  C8 7F 01 40 */	lfd f3, 0x140(r31)
/* 8055F324  FC 00 00 32 */	fmul f0, f0, f0
/* 8055F328  FC 01 00 32 */	fmul f0, f1, f0
/* 8055F32C  FC 03 00 28 */	fsub f0, f3, f0
/* 8055F330  FC 02 00 32 */	fmul f0, f2, f0
/* 8055F334  FC 44 00 32 */	fmul f2, f4, f0
/* 8055F338  FC 00 00 32 */	fmul f0, f0, f0
/* 8055F33C  FC 01 00 32 */	fmul f0, f1, f0
/* 8055F340  FC 03 00 28 */	fsub f0, f3, f0
/* 8055F344  FC 02 00 32 */	fmul f0, f2, f0
/* 8055F348  FC 44 00 32 */	fmul f2, f4, f0
/* 8055F34C  FC 00 00 32 */	fmul f0, f0, f0
/* 8055F350  FC 01 00 32 */	fmul f0, f1, f0
/* 8055F354  FC 03 00 28 */	fsub f0, f3, f0
/* 8055F358  FC 02 00 32 */	fmul f0, f2, f0
/* 8055F35C  FC 21 00 32 */	fmul f1, f1, f0
/* 8055F360  FC 20 08 18 */	frsp f1, f1
/* 8055F364  48 00 00 88 */	b lbl_8055F3EC
lbl_8055F368:
/* 8055F368  C8 1F 01 48 */	lfd f0, 0x148(r31)
/* 8055F36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055F370  40 80 00 10 */	bge lbl_8055F380
/* 8055F374  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8055F378  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8055F37C  48 00 00 70 */	b lbl_8055F3EC
lbl_8055F380:
/* 8055F380  D0 21 00 08 */	stfs f1, 8(r1)
/* 8055F384  80 81 00 08 */	lwz r4, 8(r1)
/* 8055F388  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8055F38C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8055F390  7C 03 00 00 */	cmpw r3, r0
/* 8055F394  41 82 00 14 */	beq lbl_8055F3A8
/* 8055F398  40 80 00 40 */	bge lbl_8055F3D8
/* 8055F39C  2C 03 00 00 */	cmpwi r3, 0
/* 8055F3A0  41 82 00 20 */	beq lbl_8055F3C0
/* 8055F3A4  48 00 00 34 */	b lbl_8055F3D8
lbl_8055F3A8:
/* 8055F3A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8055F3AC  41 82 00 0C */	beq lbl_8055F3B8
/* 8055F3B0  38 00 00 01 */	li r0, 1
/* 8055F3B4  48 00 00 28 */	b lbl_8055F3DC
lbl_8055F3B8:
/* 8055F3B8  38 00 00 02 */	li r0, 2
/* 8055F3BC  48 00 00 20 */	b lbl_8055F3DC
lbl_8055F3C0:
/* 8055F3C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8055F3C4  41 82 00 0C */	beq lbl_8055F3D0
/* 8055F3C8  38 00 00 05 */	li r0, 5
/* 8055F3CC  48 00 00 10 */	b lbl_8055F3DC
lbl_8055F3D0:
/* 8055F3D0  38 00 00 03 */	li r0, 3
/* 8055F3D4  48 00 00 08 */	b lbl_8055F3DC
lbl_8055F3D8:
/* 8055F3D8  38 00 00 04 */	li r0, 4
lbl_8055F3DC:
/* 8055F3DC  2C 00 00 01 */	cmpwi r0, 1
/* 8055F3E0  40 82 00 0C */	bne lbl_8055F3EC
/* 8055F3E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8055F3E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8055F3EC:
/* 8055F3EC  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 8055F3F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8055F3F4  40 80 00 48 */	bge lbl_8055F43C
/* 8055F3F8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8055F3FC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8055F400  4B D1 18 05 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8055F404  7C 64 1B 78 */	mr r4, r3
/* 8055F408  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8055F40C  38 A0 00 04 */	li r5, 4
/* 8055F410  38 C0 08 00 */	li r6, 0x800
/* 8055F414  4B D1 11 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 8055F418  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8055F41C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8055F420  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8055F424  B0 1B 0D 7A */	sth r0, 0xd7a(r27)
/* 8055F428  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8055F42C  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 8055F430  C0 5F 01 5C */	lfs f2, 0x15c(r31)
/* 8055F434  4B D1 13 0D */	bl cLib_chaseF__FPfff
/* 8055F438  48 00 00 58 */	b lbl_8055F490
lbl_8055F43C:
/* 8055F43C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F440  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8055F444  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 8055F448  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8055F44C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 8055F450  48 00 00 40 */	b lbl_8055F490
lbl_8055F454:
/* 8055F454  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 8055F458  48 00 52 45 */	bl func_8056469C
/* 8055F45C  2C 03 00 00 */	cmpwi r3, 0
/* 8055F460  40 82 00 30 */	bne lbl_8055F490
/* 8055F464  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055F468  2C 00 00 08 */	cmpwi r0, 8
/* 8055F46C  41 82 00 24 */	beq lbl_8055F490
/* 8055F470  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8055F474  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055F478  4B BE 64 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055F47C  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8055F480  38 00 00 08 */	li r0, 8
/* 8055F484  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055F488  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055F48C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8055F490:
/* 8055F490  3B C0 00 01 */	li r30, 1
/* 8055F494  48 00 00 58 */	b lbl_8055F4EC
lbl_8055F498:
/* 8055F498  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055F49C  2C 00 00 00 */	cmpwi r0, 0
/* 8055F4A0  41 82 00 24 */	beq lbl_8055F4C4
/* 8055F4A4  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F4A8  4B BE 62 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055F4AC  38 00 00 00 */	li r0, 0
/* 8055F4B0  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055F4B4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055F4B8  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055F4BC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F4C0  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8055F4C4:
/* 8055F4C4  38 00 00 00 */	li r0, 0
/* 8055F4C8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F4CC  3B C0 00 01 */	li r30, 1
/* 8055F4D0  48 00 00 1C */	b lbl_8055F4EC
lbl_8055F4D4:
/* 8055F4D4  7F 63 DB 78 */	mr r3, r27
/* 8055F4D8  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8055F4DC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8055F4E0  7D 89 03 A6 */	mtctr r12
/* 8055F4E4  4E 80 04 21 */	bctrl 
/* 8055F4E8  3B C0 00 01 */	li r30, 1
lbl_8055F4EC:
/* 8055F4EC  7F C3 F3 78 */	mr r3, r30
/* 8055F4F0  39 61 00 70 */	addi r11, r1, 0x70
/* 8055F4F4  4B E0 2D 25 */	bl _restgpr_25
/* 8055F4F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8055F4FC  7C 08 03 A6 */	mtlr r0
/* 8055F500  38 21 00 70 */	addi r1, r1, 0x70
/* 8055F504  4E 80 00 20 */	blr 
