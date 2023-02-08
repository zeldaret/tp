lbl_80D49A40:
/* 80D49A40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D49A44  7C 08 02 A6 */	mflr r0
/* 80D49A48  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D49A4C  39 61 00 70 */	addi r11, r1, 0x70
/* 80D49A50  4B 61 87 89 */	bl _savegpr_28
/* 80D49A54  7C 7C 1B 78 */	mr r28, r3
/* 80D49A58  3C A0 80 D5 */	lis r5, lit_1109@ha /* 0x80D4C7F0@ha */
/* 80D49A5C  3B A5 C7 F0 */	addi r29, r5, lit_1109@l /* 0x80D4C7F0@l */
/* 80D49A60  3C A0 80 D5 */	lis r5, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D49A64  3B C5 C0 60 */	addi r30, r5, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D49A68  3C A0 80 D5 */	lis r5, cNullVec__6Z2Calc@ha /* 0x80D4C1DC@ha */
/* 80D49A6C  3B E5 C1 DC */	addi r31, r5, cNullVec__6Z2Calc@l /* 0x80D4C1DC@l */
/* 80D49A70  80 04 00 00 */	lwz r0, 0(r4)
/* 80D49A74  2C 00 00 64 */	cmpwi r0, 0x64
/* 80D49A78  41 82 03 94 */	beq lbl_80D49E0C
/* 80D49A7C  40 80 00 64 */	bge lbl_80D49AE0
/* 80D49A80  2C 00 00 32 */	cmpwi r0, 0x32
/* 80D49A84  41 82 01 F4 */	beq lbl_80D49C78
/* 80D49A88  40 80 00 34 */	bge lbl_80D49ABC
/* 80D49A8C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80D49A90  41 82 01 74 */	beq lbl_80D49C04
/* 80D49A94  40 80 00 1C */	bge lbl_80D49AB0
/* 80D49A98  2C 00 00 14 */	cmpwi r0, 0x14
/* 80D49A9C  41 82 01 60 */	beq lbl_80D49BFC
/* 80D49AA0  40 80 08 78 */	bge lbl_80D4A318
/* 80D49AA4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D49AA8  41 82 00 98 */	beq lbl_80D49B40
/* 80D49AAC  48 00 08 6C */	b lbl_80D4A318
lbl_80D49AB0:
/* 80D49AB0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80D49AB4  41 82 01 80 */	beq lbl_80D49C34
/* 80D49AB8  48 00 08 60 */	b lbl_80D4A318
lbl_80D49ABC:
/* 80D49ABC  2C 00 00 50 */	cmpwi r0, 0x50
/* 80D49AC0  41 82 02 48 */	beq lbl_80D49D08
/* 80D49AC4  40 80 00 10 */	bge lbl_80D49AD4
/* 80D49AC8  2C 00 00 46 */	cmpwi r0, 0x46
/* 80D49ACC  41 82 01 DC */	beq lbl_80D49CA8
/* 80D49AD0  48 00 08 48 */	b lbl_80D4A318
lbl_80D49AD4:
/* 80D49AD4  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80D49AD8  41 82 02 D4 */	beq lbl_80D49DAC
/* 80D49ADC  48 00 08 3C */	b lbl_80D4A318
lbl_80D49AE0:
/* 80D49AE0  2C 00 00 96 */	cmpwi r0, 0x96
/* 80D49AE4  41 82 06 28 */	beq lbl_80D4A10C
/* 80D49AE8  40 80 00 34 */	bge lbl_80D49B1C
/* 80D49AEC  2C 00 00 82 */	cmpwi r0, 0x82
/* 80D49AF0  41 82 04 F0 */	beq lbl_80D49FE0
/* 80D49AF4  40 80 00 1C */	bge lbl_80D49B10
/* 80D49AF8  2C 00 00 78 */	cmpwi r0, 0x78
/* 80D49AFC  41 82 04 A4 */	beq lbl_80D49FA0
/* 80D49B00  40 80 08 18 */	bge lbl_80D4A318
/* 80D49B04  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80D49B08  41 82 03 AC */	beq lbl_80D49EB4
/* 80D49B0C  48 00 08 0C */	b lbl_80D4A318
lbl_80D49B10:
/* 80D49B10  2C 00 00 8C */	cmpwi r0, 0x8c
/* 80D49B14  41 82 05 0C */	beq lbl_80D4A020
/* 80D49B18  48 00 08 00 */	b lbl_80D4A318
lbl_80D49B1C:
/* 80D49B1C  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80D49B20  41 82 06 F8 */	beq lbl_80D4A218
/* 80D49B24  40 80 00 10 */	bge lbl_80D49B34
/* 80D49B28  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80D49B2C  41 82 06 48 */	beq lbl_80D4A174
/* 80D49B30  48 00 07 E8 */	b lbl_80D4A318
lbl_80D49B34:
/* 80D49B34  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80D49B38  41 82 07 84 */	beq lbl_80D4A2BC
/* 80D49B3C  48 00 07 DC */	b lbl_80D4A318
lbl_80D49B40:
/* 80D49B40  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49B44  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80D49B48  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80D49B4C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80D49B50  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80D49B54  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D49B58  2C 00 00 00 */	cmpwi r0, 0
/* 80D49B5C  41 82 00 24 */	beq lbl_80D49B80
/* 80D49B60  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D49B64  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D49B68  4B 3F BD 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49B6C  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D49B70  38 00 00 00 */	li r0, 0
/* 80D49B74  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D49B78  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49B7C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D49B80:
/* 80D49B80  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80D49B84  2C 00 00 00 */	cmpwi r0, 0
/* 80D49B88  41 82 00 24 */	beq lbl_80D49BAC
/* 80D49B8C  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80D49B90  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80D49B94  4B 3F BD 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49B98  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80D49B9C  38 00 00 00 */	li r0, 0
/* 80D49BA0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80D49BA4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49BA8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80D49BAC:
/* 80D49BAC  38 00 00 01 */	li r0, 1
/* 80D49BB0  90 1C 0E 80 */	stw r0, 0xe80(r28)
/* 80D49BB4  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80D49BBC  41 82 00 24 */	beq lbl_80D49BE0
/* 80D49BC0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49BC4  4B 3F BB 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49BC8  38 00 00 00 */	li r0, 0
/* 80D49BCC  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49BD0  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49BD4  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49BD8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49BDC  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D49BE0:
/* 80D49BE0  38 00 00 00 */	li r0, 0
/* 80D49BE4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49BE8  7F 83 E3 78 */	mr r3, r28
/* 80D49BEC  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D49BF0  38 A0 00 00 */	li r5, 0
/* 80D49BF4  4B 40 1F FD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D49BF8  48 00 07 20 */	b lbl_80D4A318
lbl_80D49BFC:
/* 80D49BFC  48 00 0C 45 */	bl _catdoor_open__8daPeru_cFv
/* 80D49C00  48 00 07 18 */	b lbl_80D4A318
lbl_80D49C04:
/* 80D49C04  38 00 00 03 */	li r0, 3
/* 80D49C08  B0 1C 0E 6A */	sth r0, 0xe6a(r28)
/* 80D49C0C  80 9F 03 E0 */	lwz r4, 0x3e0(r31)
/* 80D49C10  80 1F 03 E4 */	lwz r0, 0x3e4(r31)
/* 80D49C14  90 81 00 48 */	stw r4, 0x48(r1)
/* 80D49C18  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80D49C1C  80 1F 03 E8 */	lwz r0, 0x3e8(r31)
/* 80D49C20  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D49C24  38 81 00 48 */	addi r4, r1, 0x48
/* 80D49C28  38 A0 00 00 */	li r5, 0
/* 80D49C2C  4B FF E7 39 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D49C30  48 00 06 E8 */	b lbl_80D4A318
lbl_80D49C34:
/* 80D49C34  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49C38  2C 00 00 04 */	cmpwi r0, 4
/* 80D49C3C  41 82 00 28 */	beq lbl_80D49C64
/* 80D49C40  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49C44  4B 3F BA B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49C48  38 00 00 00 */	li r0, 0
/* 80D49C4C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49C50  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49C54  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49C58  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49C5C  38 00 00 04 */	li r0, 4
/* 80D49C60  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D49C64:
/* 80D49C64  38 00 00 00 */	li r0, 0
/* 80D49C68  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49C6C  38 00 00 28 */	li r0, 0x28
/* 80D49C70  B0 1C 0E 6A */	sth r0, 0xe6a(r28)
/* 80D49C74  48 00 06 A4 */	b lbl_80D4A318
lbl_80D49C78:
/* 80D49C78  38 00 00 0A */	li r0, 0xa
/* 80D49C7C  B0 1C 0E 6A */	sth r0, 0xe6a(r28)
/* 80D49C80  80 9F 03 EC */	lwz r4, 0x3ec(r31)
/* 80D49C84  80 1F 03 F0 */	lwz r0, 0x3f0(r31)
/* 80D49C88  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80D49C8C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80D49C90  80 1F 03 F4 */	lwz r0, 0x3f4(r31)
/* 80D49C94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D49C98  38 81 00 3C */	addi r4, r1, 0x3c
/* 80D49C9C  38 A0 00 00 */	li r5, 0
/* 80D49CA0  4B FF E6 C5 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D49CA4  48 00 06 74 */	b lbl_80D4A318
lbl_80D49CA8:
/* 80D49CA8  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49CAC  2C 00 00 00 */	cmpwi r0, 0
/* 80D49CB0  41 82 00 24 */	beq lbl_80D49CD4
/* 80D49CB4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49CB8  4B 3F BA 45 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49CBC  38 00 00 00 */	li r0, 0
/* 80D49CC0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49CC4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49CC8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49CCC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49CD0  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D49CD4:
/* 80D49CD4  38 00 00 00 */	li r0, 0
/* 80D49CD8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49CDC  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 80D49CE0  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 80D49CE4  90 61 00 30 */	stw r3, 0x30(r1)
/* 80D49CE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D49CEC  80 1F 04 00 */	lwz r0, 0x400(r31)
/* 80D49CF0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80D49CF4  7F 83 E3 78 */	mr r3, r28
/* 80D49CF8  38 81 00 30 */	addi r4, r1, 0x30
/* 80D49CFC  38 A0 00 00 */	li r5, 0
/* 80D49D00  4B FF E6 65 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D49D04  48 00 06 14 */	b lbl_80D4A318
lbl_80D49D08:
/* 80D49D08  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D49D0C  2C 00 00 00 */	cmpwi r0, 0
/* 80D49D10  41 82 00 24 */	beq lbl_80D49D34
/* 80D49D14  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D49D18  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D49D1C  4B 3F BB 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49D20  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D49D24  38 00 00 00 */	li r0, 0
/* 80D49D28  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D49D2C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49D30  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D49D34:
/* 80D49D34  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80D49D38  2C 00 00 00 */	cmpwi r0, 0
/* 80D49D3C  41 82 00 24 */	beq lbl_80D49D60
/* 80D49D40  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80D49D44  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80D49D48  4B 3F BB 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49D4C  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80D49D50  38 00 00 00 */	li r0, 0
/* 80D49D54  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80D49D58  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49D5C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80D49D60:
/* 80D49D60  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49D64  2C 00 00 01 */	cmpwi r0, 1
/* 80D49D68  41 82 00 28 */	beq lbl_80D49D90
/* 80D49D6C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49D70  4B 3F B9 8D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49D74  38 00 00 00 */	li r0, 0
/* 80D49D78  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49D7C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49D80  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49D84  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49D88  38 00 00 01 */	li r0, 1
/* 80D49D8C  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D49D90:
/* 80D49D90  38 00 00 00 */	li r0, 0
/* 80D49D94  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49D98  7F 83 E3 78 */	mr r3, r28
/* 80D49D9C  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D49DA0  38 A0 00 00 */	li r5, 0
/* 80D49DA4  4B 40 1E 4D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D49DA8  48 00 05 70 */	b lbl_80D4A318
lbl_80D49DAC:
/* 80D49DAC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80D49DB4  41 82 00 24 */	beq lbl_80D49DD8
/* 80D49DB8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49DBC  4B 3F B9 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49DC0  38 00 00 00 */	li r0, 0
/* 80D49DC4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49DC8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49DCC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49DD0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49DD4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D49DD8:
/* 80D49DD8  38 00 00 00 */	li r0, 0
/* 80D49DDC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49DE0  80 7F 04 04 */	lwz r3, 0x404(r31)
/* 80D49DE4  80 1F 04 08 */	lwz r0, 0x408(r31)
/* 80D49DE8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D49DEC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D49DF0  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 80D49DF4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D49DF8  7F 83 E3 78 */	mr r3, r28
/* 80D49DFC  38 81 00 24 */	addi r4, r1, 0x24
/* 80D49E00  38 A0 00 00 */	li r5, 0
/* 80D49E04  4B FF E5 61 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D49E08  48 00 05 10 */	b lbl_80D4A318
lbl_80D49E0C:
/* 80D49E0C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D49E10  2C 00 00 00 */	cmpwi r0, 0
/* 80D49E14  41 82 00 24 */	beq lbl_80D49E38
/* 80D49E18  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D49E1C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D49E20  4B 3F BA 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49E24  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D49E28  38 00 00 00 */	li r0, 0
/* 80D49E2C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D49E30  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49E34  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D49E38:
/* 80D49E38  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80D49E3C  2C 00 00 01 */	cmpwi r0, 1
/* 80D49E40  41 82 00 24 */	beq lbl_80D49E64
/* 80D49E44  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80D49E48  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80D49E4C  4B 3F BA 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49E50  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80D49E54  38 00 00 01 */	li r0, 1
/* 80D49E58  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80D49E5C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49E60  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80D49E64:
/* 80D49E64  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49E68  2C 00 00 01 */	cmpwi r0, 1
/* 80D49E6C  41 82 00 28 */	beq lbl_80D49E94
/* 80D49E70  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49E74  4B 3F B8 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49E78  38 00 00 00 */	li r0, 0
/* 80D49E7C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49E80  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49E84  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49E88  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49E8C  38 00 00 01 */	li r0, 1
/* 80D49E90  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D49E94:
/* 80D49E94  38 00 00 00 */	li r0, 0
/* 80D49E98  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49E9C  98 1C 0E 26 */	stb r0, 0xe26(r28)
/* 80D49EA0  7F 83 E3 78 */	mr r3, r28
/* 80D49EA4  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D49EA8  38 A0 00 00 */	li r5, 0
/* 80D49EAC  4B 40 1D 45 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D49EB0  48 00 04 68 */	b lbl_80D4A318
lbl_80D49EB4:
/* 80D49EB4  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D49EB8  2C 00 00 02 */	cmpwi r0, 2
/* 80D49EBC  41 82 00 24 */	beq lbl_80D49EE0
/* 80D49EC0  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D49EC4  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D49EC8  4B 3F B9 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49ECC  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D49ED0  38 00 00 02 */	li r0, 2
/* 80D49ED4  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D49ED8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49EDC  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D49EE0:
/* 80D49EE0  38 00 00 00 */	li r0, 0
/* 80D49EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80D49EE8  38 60 00 FF */	li r3, 0xff
/* 80D49EEC  38 81 00 08 */	addi r4, r1, 8
/* 80D49EF0  4B 2C FB 3D */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80D49EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80D49EF8  41 82 00 9C */	beq lbl_80D49F94
/* 80D49EFC  83 A1 00 08 */	lwz r29, 8(r1)
/* 80D49F00  28 1D 00 00 */	cmplwi r29, 0
/* 80D49F04  41 82 00 90 */	beq lbl_80D49F94
/* 80D49F08  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49F0C  4B 3F B7 FD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D49F10  7C 63 E8 50 */	subf r3, r3, r29
/* 80D49F14  30 03 FF FF */	addic r0, r3, -1
/* 80D49F18  7C 00 19 10 */	subfe r0, r0, r3
/* 80D49F1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D49F20  40 82 00 10 */	bne lbl_80D49F30
/* 80D49F24  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D49F28  2C 00 00 02 */	cmpwi r0, 2
/* 80D49F2C  41 82 00 30 */	beq lbl_80D49F5C
lbl_80D49F30:
/* 80D49F30  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49F34  4B 3F B7 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D49F38  38 00 00 00 */	li r0, 0
/* 80D49F3C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D49F40  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49F44  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D49F48  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D49F4C  38 00 00 02 */	li r0, 2
/* 80D49F50  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80D49F54  38 00 00 01 */	li r0, 1
/* 80D49F58  48 00 00 08 */	b lbl_80D49F60
lbl_80D49F5C:
/* 80D49F5C  38 00 00 00 */	li r0, 0
lbl_80D49F60:
/* 80D49F60  2C 00 00 00 */	cmpwi r0, 0
/* 80D49F64  41 82 00 28 */	beq lbl_80D49F8C
/* 80D49F68  7F A3 EB 78 */	mr r3, r29
/* 80D49F6C  4B 2C ED 75 */	bl fopAc_IsActor__FPv
/* 80D49F70  2C 03 00 00 */	cmpwi r3, 0
/* 80D49F74  41 82 00 18 */	beq lbl_80D49F8C
/* 80D49F78  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D49F7C  7F A4 EB 78 */	mr r4, r29
/* 80D49F80  4B 3F B7 61 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80D49F84  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D49F88  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80D49F8C:
/* 80D49F8C  38 00 00 00 */	li r0, 0
/* 80D49F90  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80D49F94:
/* 80D49F94  38 00 00 28 */	li r0, 0x28
/* 80D49F98  B0 1C 0E 6A */	sth r0, 0xe6a(r28)
/* 80D49F9C  48 00 03 7C */	b lbl_80D4A318
lbl_80D49FA0:
/* 80D49FA0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D49FA4  2C 00 00 00 */	cmpwi r0, 0
/* 80D49FA8  41 82 00 24 */	beq lbl_80D49FCC
/* 80D49FAC  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D49FB0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D49FB4  4B 3F B8 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49FB8  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D49FBC  38 00 00 00 */	li r0, 0
/* 80D49FC0  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D49FC4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49FC8  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D49FCC:
/* 80D49FCC  7F 83 E3 78 */	mr r3, r28
/* 80D49FD0  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D49FD4  38 A0 00 00 */	li r5, 0
/* 80D49FD8  4B 40 1C 19 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D49FDC  48 00 03 3C */	b lbl_80D4A318
lbl_80D49FE0:
/* 80D49FE0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D49FE4  2C 00 00 02 */	cmpwi r0, 2
/* 80D49FE8  41 82 00 24 */	beq lbl_80D4A00C
/* 80D49FEC  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D49FF0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D49FF4  4B 3F B8 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49FF8  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D49FFC  38 00 00 02 */	li r0, 2
/* 80D4A000  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D4A004  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4A008  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D4A00C:
/* 80D4A00C  7F 83 E3 78 */	mr r3, r28
/* 80D4A010  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D4A014  38 A0 00 00 */	li r5, 0
/* 80D4A018  4B 40 1B D9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D4A01C  48 00 02 FC */	b lbl_80D4A318
lbl_80D4A020:
/* 80D4A020  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 80D4A024  7C 00 07 75 */	extsb. r0, r0
/* 80D4A028  40 82 00 20 */	bne lbl_80D4A048
/* 80D4A02C  38 7D 00 60 */	addi r3, r29, 0x60
/* 80D4A030  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4A034  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4A038  38 BD 00 50 */	addi r5, r29, 0x50
/* 80D4A03C  4B FF CE 3D */	bl __register_global_object
/* 80D4A040  38 00 00 01 */	li r0, 1
/* 80D4A044  98 1D 00 5C */	stb r0, 0x5c(r29)
lbl_80D4A048:
/* 80D4A048  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4A04C  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 80D4A050  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80D4A054  38 7D 00 60 */	addi r3, r29, 0x60
/* 80D4A058  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D4A05C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80D4A060  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D4A064  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80D4A068  4B 2C 2E A5 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80D4A06C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D4A070  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4A074  38 9D 00 60 */	addi r4, r29, 0x60
/* 80D4A078  7C 85 23 78 */	mr r5, r4
/* 80D4A07C  4B 5F CC F1 */	bl PSMTXMultVec
/* 80D4A080  38 7D 00 60 */	addi r3, r29, 0x60
/* 80D4A084  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D4A088  7C 65 1B 78 */	mr r5, r3
/* 80D4A08C  4B 5F D0 05 */	bl PSVECAdd
/* 80D4A090  80 7C 0B C8 */	lwz r3, 0xbc8(r28)
/* 80D4A094  38 1D 00 60 */	addi r0, r29, 0x60
/* 80D4A098  7C 63 00 50 */	subf r3, r3, r0
/* 80D4A09C  30 03 FF FF */	addic r0, r3, -1
/* 80D4A0A0  7C 00 19 10 */	subfe r0, r0, r3
/* 80D4A0A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D4A0A8  40 82 00 10 */	bne lbl_80D4A0B8
/* 80D4A0AC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D4A0B0  2C 00 00 03 */	cmpwi r0, 3
/* 80D4A0B4  41 82 00 30 */	beq lbl_80D4A0E4
lbl_80D4A0B8:
/* 80D4A0B8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D4A0BC  4B 3F B6 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D4A0C0  38 00 00 00 */	li r0, 0
/* 80D4A0C4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D4A0C8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4A0CC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D4A0D0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A0D4  38 00 00 03 */	li r0, 3
/* 80D4A0D8  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80D4A0DC  38 00 00 01 */	li r0, 1
/* 80D4A0E0  48 00 00 08 */	b lbl_80D4A0E8
lbl_80D4A0E4:
/* 80D4A0E4  38 00 00 00 */	li r0, 0
lbl_80D4A0E8:
/* 80D4A0E8  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A0EC  41 82 00 0C */	beq lbl_80D4A0F8
/* 80D4A0F0  38 1D 00 60 */	addi r0, r29, 0x60
/* 80D4A0F4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
lbl_80D4A0F8:
/* 80D4A0F8  38 00 00 00 */	li r0, 0
/* 80D4A0FC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A100  38 00 00 50 */	li r0, 0x50
/* 80D4A104  B0 1C 0E 6A */	sth r0, 0xe6a(r28)
/* 80D4A108  48 00 02 10 */	b lbl_80D4A318
lbl_80D4A10C:
/* 80D4A10C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D4A110  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A114  41 82 00 24 */	beq lbl_80D4A138
/* 80D4A118  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D4A11C  4B 3F B5 E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D4A120  38 00 00 00 */	li r0, 0
/* 80D4A124  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D4A128  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4A12C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D4A130  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A134  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D4A138:
/* 80D4A138  38 00 00 00 */	li r0, 0
/* 80D4A13C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A140  80 7F 04 10 */	lwz r3, 0x410(r31)
/* 80D4A144  80 1F 04 14 */	lwz r0, 0x414(r31)
/* 80D4A148  90 61 00 18 */	stw r3, 0x18(r1)
/* 80D4A14C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D4A150  80 1F 04 18 */	lwz r0, 0x418(r31)
/* 80D4A154  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D4A158  7F 83 E3 78 */	mr r3, r28
/* 80D4A15C  38 81 00 18 */	addi r4, r1, 0x18
/* 80D4A160  38 A0 00 00 */	li r5, 0
/* 80D4A164  4B FF E2 01 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D4A168  38 00 00 28 */	li r0, 0x28
/* 80D4A16C  B0 1C 0E 6A */	sth r0, 0xe6a(r28)
/* 80D4A170  48 00 01 A8 */	b lbl_80D4A318
lbl_80D4A174:
/* 80D4A174  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D4A178  2C 00 00 01 */	cmpwi r0, 1
/* 80D4A17C  41 82 00 28 */	beq lbl_80D4A1A4
/* 80D4A180  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D4A184  4B 3F B5 79 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D4A188  38 00 00 00 */	li r0, 0
/* 80D4A18C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D4A190  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4A194  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D4A198  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A19C  38 00 00 01 */	li r0, 1
/* 80D4A1A0  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D4A1A4:
/* 80D4A1A4  38 00 00 00 */	li r0, 0
/* 80D4A1A8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A1AC  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D4A1B0  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A1B4  41 82 00 24 */	beq lbl_80D4A1D8
/* 80D4A1B8  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D4A1BC  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D4A1C0  4B 3F B6 D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4A1C4  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D4A1C8  38 00 00 00 */	li r0, 0
/* 80D4A1CC  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D4A1D0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4A1D4  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D4A1D8:
/* 80D4A1D8  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80D4A1DC  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A1E0  41 82 00 24 */	beq lbl_80D4A204
/* 80D4A1E4  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80D4A1E8  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80D4A1EC  4B 3F B6 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4A1F0  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80D4A1F4  38 00 00 00 */	li r0, 0
/* 80D4A1F8  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80D4A1FC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4A200  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80D4A204:
/* 80D4A204  7F 83 E3 78 */	mr r3, r28
/* 80D4A208  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D4A20C  38 A0 00 00 */	li r5, 0
/* 80D4A210  4B 40 19 E1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D4A214  48 00 01 04 */	b lbl_80D4A318
lbl_80D4A218:
/* 80D4A218  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D4A21C  2C 00 00 01 */	cmpwi r0, 1
/* 80D4A220  41 82 00 28 */	beq lbl_80D4A248
/* 80D4A224  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D4A228  4B 3F B4 D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D4A22C  38 00 00 00 */	li r0, 0
/* 80D4A230  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D4A234  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4A238  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D4A23C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A240  38 00 00 01 */	li r0, 1
/* 80D4A244  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D4A248:
/* 80D4A248  38 00 00 00 */	li r0, 0
/* 80D4A24C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A250  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80D4A254  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A258  41 82 00 24 */	beq lbl_80D4A27C
/* 80D4A25C  83 BC 0B 5C */	lwz r29, 0xb5c(r28)
/* 80D4A260  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80D4A264  4B 3F B6 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4A268  93 BC 0B 5C */	stw r29, 0xb5c(r28)
/* 80D4A26C  38 00 00 00 */	li r0, 0
/* 80D4A270  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80D4A274  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4A278  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80D4A27C:
/* 80D4A27C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80D4A280  2C 00 00 01 */	cmpwi r0, 1
/* 80D4A284  41 82 00 24 */	beq lbl_80D4A2A8
/* 80D4A288  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80D4A28C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80D4A290  4B 3F B6 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4A294  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80D4A298  38 00 00 01 */	li r0, 1
/* 80D4A29C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80D4A2A0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4A2A4  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80D4A2A8:
/* 80D4A2A8  7F 83 E3 78 */	mr r3, r28
/* 80D4A2AC  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80D4A2B0  38 A0 00 00 */	li r5, 0
/* 80D4A2B4  4B 40 19 3D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80D4A2B8  48 00 00 60 */	b lbl_80D4A318
lbl_80D4A2BC:
/* 80D4A2BC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80D4A2C0  2C 00 00 00 */	cmpwi r0, 0
/* 80D4A2C4  41 82 00 24 */	beq lbl_80D4A2E8
/* 80D4A2C8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80D4A2CC  4B 3F B4 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80D4A2D0  38 00 00 00 */	li r0, 0
/* 80D4A2D4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80D4A2D8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4A2DC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80D4A2E0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A2E4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80D4A2E8:
/* 80D4A2E8  38 00 00 00 */	li r0, 0
/* 80D4A2EC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80D4A2F0  80 7F 04 1C */	lwz r3, 0x41c(r31)
/* 80D4A2F4  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 80D4A2F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80D4A2FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D4A300  80 1F 04 24 */	lwz r0, 0x424(r31)
/* 80D4A304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4A308  7F 83 E3 78 */	mr r3, r28
/* 80D4A30C  38 81 00 0C */	addi r4, r1, 0xc
/* 80D4A310  38 A0 00 00 */	li r5, 0
/* 80D4A314  4B FF E0 51 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
lbl_80D4A318:
/* 80D4A318  38 60 00 01 */	li r3, 1
/* 80D4A31C  39 61 00 70 */	addi r11, r1, 0x70
/* 80D4A320  4B 61 7F 05 */	bl _restgpr_28
/* 80D4A324  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D4A328  7C 08 03 A6 */	mtlr r0
/* 80D4A32C  38 21 00 70 */	addi r1, r1, 0x70
/* 80D4A330  4E 80 00 20 */	blr 
