lbl_80315B04:
/* 80315B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315B08  7C 08 02 A6 */	mflr r0
/* 80315B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80315B14  38 00 00 00 */	li r0, 0
/* 80315B18  2C 03 00 01 */	cmpwi r3, 1
/* 80315B1C  41 81 00 90 */	bgt lbl_80315BAC
/* 80315B20  38 60 00 1C */	li r3, 0x1c
/* 80315B24  4B FB 91 29 */	bl __nw__FUl
/* 80315B28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315B2C  41 82 00 78 */	beq lbl_80315BA4
/* 80315B30  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha
/* 80315B34  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l
/* 80315B38  90 1F 00 00 */	stw r0, 0(r31)
/* 80315B3C  3C 60 80 3D */	lis r3, __vt__12J3DTevBlock1@ha
/* 80315B40  38 03 E3 7C */	addi r0, r3, __vt__12J3DTevBlock1@l
/* 80315B44  90 1F 00 00 */	stw r0, 0(r31)
/* 80315B48  38 7F 00 0A */	addi r3, r31, 0xa
/* 80315B4C  3C 80 80 01 */	lis r4, __ct__11J3DTevOrderFv@ha
/* 80315B50  38 84 E1 40 */	addi r4, r4, __ct__11J3DTevOrderFv@l
/* 80315B54  38 A0 00 00 */	li r5, 0
/* 80315B58  38 C0 00 04 */	li r6, 4
/* 80315B5C  38 E0 00 01 */	li r7, 1
/* 80315B60  48 04 C2 01 */	bl __construct_array
/* 80315B64  38 7F 00 0E */	addi r3, r31, 0xe
/* 80315B68  3C 80 80 01 */	lis r4, __ct__11J3DTevStageFv@ha
/* 80315B6C  38 84 E2 30 */	addi r4, r4, __ct__11J3DTevStageFv@l
/* 80315B70  38 A0 00 00 */	li r5, 0
/* 80315B74  38 C0 00 08 */	li r6, 8
/* 80315B78  38 E0 00 01 */	li r7, 1
/* 80315B7C  48 04 C1 E5 */	bl __construct_array
/* 80315B80  38 7F 00 18 */	addi r3, r31, 0x18
/* 80315B84  3C 80 80 01 */	lis r4, __ct__14J3DIndTevStageFv@ha
/* 80315B88  38 84 E1 4C */	addi r4, r4, __ct__14J3DIndTevStageFv@l
/* 80315B8C  38 A0 00 00 */	li r5, 0
/* 80315B90  38 C0 00 04 */	li r6, 4
/* 80315B94  38 E0 00 01 */	li r7, 1
/* 80315B98  48 04 C1 C9 */	bl __construct_array
/* 80315B9C  7F E3 FB 78 */	mr r3, r31
/* 80315BA0  48 00 1C 49 */	bl initialize__12J3DTevBlock1Fv
lbl_80315BA4:
/* 80315BA4  7F E0 FB 78 */	mr r0, r31
/* 80315BA8  48 00 02 B8 */	b lbl_80315E60
lbl_80315BAC:
/* 80315BAC  2C 03 00 02 */	cmpwi r3, 2
/* 80315BB0  40 82 00 E4 */	bne lbl_80315C94
/* 80315BB4  38 60 00 6C */	li r3, 0x6c
/* 80315BB8  4B FB 90 95 */	bl __nw__FUl
/* 80315BBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315BC0  41 82 00 CC */	beq lbl_80315C8C
/* 80315BC4  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha
/* 80315BC8  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l
/* 80315BCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80315BD0  3C 60 80 3D */	lis r3, __vt__12J3DTevBlock2@ha
/* 80315BD4  38 03 E2 A0 */	addi r0, r3, __vt__12J3DTevBlock2@l
/* 80315BD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80315BDC  38 7F 00 0C */	addi r3, r31, 0xc
/* 80315BE0  3C 80 80 01 */	lis r4, __ct__11J3DTevOrderFv@ha
/* 80315BE4  38 84 E1 40 */	addi r4, r4, __ct__11J3DTevOrderFv@l
/* 80315BE8  38 A0 00 00 */	li r5, 0
/* 80315BEC  38 C0 00 04 */	li r6, 4
/* 80315BF0  38 E0 00 02 */	li r7, 2
/* 80315BF4  48 04 C1 6D */	bl __construct_array
/* 80315BF8  38 7F 00 14 */	addi r3, r31, 0x14
/* 80315BFC  3C 80 80 01 */	lis r4, __ct__13J3DGXColorS10Fv@ha
/* 80315C00  38 84 E4 60 */	addi r4, r4, __ct__13J3DGXColorS10Fv@l
/* 80315C04  38 A0 00 00 */	li r5, 0
/* 80315C08  38 C0 00 08 */	li r6, 8
/* 80315C0C  38 E0 00 04 */	li r7, 4
/* 80315C10  48 04 C1 51 */	bl __construct_array
/* 80315C14  38 7F 00 35 */	addi r3, r31, 0x35
/* 80315C18  3C 80 80 01 */	lis r4, __ct__11J3DTevStageFv@ha
/* 80315C1C  38 84 E2 30 */	addi r4, r4, __ct__11J3DTevStageFv@l
/* 80315C20  38 A0 00 00 */	li r5, 0
/* 80315C24  38 C0 00 08 */	li r6, 8
/* 80315C28  38 E0 00 02 */	li r7, 2
/* 80315C2C  48 04 C1 35 */	bl __construct_array
/* 80315C30  38 7F 00 45 */	addi r3, r31, 0x45
/* 80315C34  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315C38  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 80315C3C  38 A0 00 00 */	li r5, 0
/* 80315C40  38 C0 00 04 */	li r6, 4
/* 80315C44  38 E0 00 04 */	li r7, 4
/* 80315C48  48 04 C1 19 */	bl __construct_array
/* 80315C4C  38 7F 00 59 */	addi r3, r31, 0x59
/* 80315C50  3C 80 80 01 */	lis r4, __ct__19J3DTevSwapModeTableFv@ha
/* 80315C54  38 84 E1 34 */	addi r4, r4, __ct__19J3DTevSwapModeTableFv@l
/* 80315C58  38 A0 00 00 */	li r5, 0
/* 80315C5C  38 C0 00 01 */	li r6, 1
/* 80315C60  38 E0 00 04 */	li r7, 4
/* 80315C64  48 04 C0 FD */	bl __construct_array
/* 80315C68  38 7F 00 60 */	addi r3, r31, 0x60
/* 80315C6C  3C 80 80 01 */	lis r4, __ct__14J3DIndTevStageFv@ha
/* 80315C70  38 84 E1 4C */	addi r4, r4, __ct__14J3DIndTevStageFv@l
/* 80315C74  38 A0 00 00 */	li r5, 0
/* 80315C78  38 C0 00 04 */	li r6, 4
/* 80315C7C  38 E0 00 02 */	li r7, 2
/* 80315C80  48 04 C0 E1 */	bl __construct_array
/* 80315C84  7F E3 FB 78 */	mr r3, r31
/* 80315C88  48 00 1B 89 */	bl initialize__12J3DTevBlock2Fv
lbl_80315C8C:
/* 80315C8C  7F E0 FB 78 */	mr r0, r31
/* 80315C90  48 00 01 D0 */	b lbl_80315E60
lbl_80315C94:
/* 80315C94  2C 03 00 04 */	cmpwi r3, 4
/* 80315C98  41 81 00 E4 */	bgt lbl_80315D7C
/* 80315C9C  38 60 00 94 */	li r3, 0x94
/* 80315CA0  4B FB 8F AD */	bl __nw__FUl
/* 80315CA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315CA8  41 82 00 CC */	beq lbl_80315D74
/* 80315CAC  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha
/* 80315CB0  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l
/* 80315CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80315CB8  3C 60 80 3D */	lis r3, __vt__12J3DTevBlock4@ha
/* 80315CBC  38 03 E1 C4 */	addi r0, r3, __vt__12J3DTevBlock4@l
/* 80315CC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80315CC4  38 7F 00 10 */	addi r3, r31, 0x10
/* 80315CC8  3C 80 80 01 */	lis r4, __ct__11J3DTevOrderFv@ha
/* 80315CCC  38 84 E1 40 */	addi r4, r4, __ct__11J3DTevOrderFv@l
/* 80315CD0  38 A0 00 00 */	li r5, 0
/* 80315CD4  38 C0 00 04 */	li r6, 4
/* 80315CD8  38 E0 00 04 */	li r7, 4
/* 80315CDC  48 04 C0 85 */	bl __construct_array
/* 80315CE0  38 7F 00 21 */	addi r3, r31, 0x21
/* 80315CE4  3C 80 80 01 */	lis r4, __ct__11J3DTevStageFv@ha
/* 80315CE8  38 84 E2 30 */	addi r4, r4, __ct__11J3DTevStageFv@l
/* 80315CEC  38 A0 00 00 */	li r5, 0
/* 80315CF0  38 C0 00 08 */	li r6, 8
/* 80315CF4  38 E0 00 04 */	li r7, 4
/* 80315CF8  48 04 C0 69 */	bl __construct_array
/* 80315CFC  38 7F 00 42 */	addi r3, r31, 0x42
/* 80315D00  3C 80 80 01 */	lis r4, __ct__13J3DGXColorS10Fv@ha
/* 80315D04  38 84 E4 60 */	addi r4, r4, __ct__13J3DGXColorS10Fv@l
/* 80315D08  38 A0 00 00 */	li r5, 0
/* 80315D0C  38 C0 00 08 */	li r6, 8
/* 80315D10  38 E0 00 04 */	li r7, 4
/* 80315D14  48 04 C0 4D */	bl __construct_array
/* 80315D18  38 7F 00 62 */	addi r3, r31, 0x62
/* 80315D1C  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315D20  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 80315D24  38 A0 00 00 */	li r5, 0
/* 80315D28  38 C0 00 04 */	li r6, 4
/* 80315D2C  38 E0 00 04 */	li r7, 4
/* 80315D30  48 04 C0 31 */	bl __construct_array
/* 80315D34  38 7F 00 7A */	addi r3, r31, 0x7a
/* 80315D38  3C 80 80 01 */	lis r4, __ct__19J3DTevSwapModeTableFv@ha
/* 80315D3C  38 84 E1 34 */	addi r4, r4, __ct__19J3DTevSwapModeTableFv@l
/* 80315D40  38 A0 00 00 */	li r5, 0
/* 80315D44  38 C0 00 01 */	li r6, 1
/* 80315D48  38 E0 00 04 */	li r7, 4
/* 80315D4C  48 04 C0 15 */	bl __construct_array
/* 80315D50  38 7F 00 80 */	addi r3, r31, 0x80
/* 80315D54  3C 80 80 01 */	lis r4, __ct__14J3DIndTevStageFv@ha
/* 80315D58  38 84 E1 4C */	addi r4, r4, __ct__14J3DIndTevStageFv@l
/* 80315D5C  38 A0 00 00 */	li r5, 0
/* 80315D60  38 C0 00 04 */	li r6, 4
/* 80315D64  38 E0 00 04 */	li r7, 4
/* 80315D68  48 04 BF F9 */	bl __construct_array
/* 80315D6C  7F E3 FB 78 */	mr r3, r31
/* 80315D70  48 00 1B 7D */	bl initialize__12J3DTevBlock4Fv
lbl_80315D74:
/* 80315D74  7F E0 FB 78 */	mr r0, r31
/* 80315D78  48 00 00 E8 */	b lbl_80315E60
lbl_80315D7C:
/* 80315D7C  2C 03 00 10 */	cmpwi r3, 0x10
/* 80315D80  41 81 00 E0 */	bgt lbl_80315E60
/* 80315D84  38 60 01 74 */	li r3, 0x174
/* 80315D88  4B FB 8E C5 */	bl __nw__FUl
/* 80315D8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315D90  41 82 00 CC */	beq lbl_80315E5C
/* 80315D94  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha
/* 80315D98  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l
/* 80315D9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80315DA0  3C 60 80 3D */	lis r3, __vt__13J3DTevBlock16@ha
/* 80315DA4  38 03 E0 E8 */	addi r0, r3, __vt__13J3DTevBlock16@l
/* 80315DA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80315DAC  38 7F 00 18 */	addi r3, r31, 0x18
/* 80315DB0  3C 80 80 01 */	lis r4, __ct__11J3DTevOrderFv@ha
/* 80315DB4  38 84 E1 40 */	addi r4, r4, __ct__11J3DTevOrderFv@l
/* 80315DB8  38 A0 00 00 */	li r5, 0
/* 80315DBC  38 C0 00 04 */	li r6, 4
/* 80315DC0  38 E0 00 10 */	li r7, 0x10
/* 80315DC4  48 04 BF 9D */	bl __construct_array
/* 80315DC8  38 7F 00 59 */	addi r3, r31, 0x59
/* 80315DCC  3C 80 80 01 */	lis r4, __ct__11J3DTevStageFv@ha
/* 80315DD0  38 84 E2 30 */	addi r4, r4, __ct__11J3DTevStageFv@l
/* 80315DD4  38 A0 00 00 */	li r5, 0
/* 80315DD8  38 C0 00 08 */	li r6, 8
/* 80315DDC  38 E0 00 10 */	li r7, 0x10
/* 80315DE0  48 04 BF 81 */	bl __construct_array
/* 80315DE4  38 7F 00 DA */	addi r3, r31, 0xda
/* 80315DE8  3C 80 80 01 */	lis r4, __ct__13J3DGXColorS10Fv@ha
/* 80315DEC  38 84 E4 60 */	addi r4, r4, __ct__13J3DGXColorS10Fv@l
/* 80315DF0  38 A0 00 00 */	li r5, 0
/* 80315DF4  38 C0 00 08 */	li r6, 8
/* 80315DF8  38 E0 00 04 */	li r7, 4
/* 80315DFC  48 04 BF 65 */	bl __construct_array
/* 80315E00  38 7F 00 FA */	addi r3, r31, 0xfa
/* 80315E04  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315E08  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 80315E0C  38 A0 00 00 */	li r5, 0
/* 80315E10  38 C0 00 04 */	li r6, 4
/* 80315E14  38 E0 00 04 */	li r7, 4
/* 80315E18  48 04 BF 49 */	bl __construct_array
/* 80315E1C  38 7F 01 2A */	addi r3, r31, 0x12a
/* 80315E20  3C 80 80 01 */	lis r4, __ct__19J3DTevSwapModeTableFv@ha
/* 80315E24  38 84 E1 34 */	addi r4, r4, __ct__19J3DTevSwapModeTableFv@l
/* 80315E28  38 A0 00 00 */	li r5, 0
/* 80315E2C  38 C0 00 01 */	li r6, 1
/* 80315E30  38 E0 00 04 */	li r7, 4
/* 80315E34  48 04 BF 2D */	bl __construct_array
/* 80315E38  38 7F 01 30 */	addi r3, r31, 0x130
/* 80315E3C  3C 80 80 01 */	lis r4, __ct__14J3DIndTevStageFv@ha
/* 80315E40  38 84 E1 4C */	addi r4, r4, __ct__14J3DIndTevStageFv@l
/* 80315E44  38 A0 00 00 */	li r5, 0
/* 80315E48  38 C0 00 04 */	li r6, 4
/* 80315E4C  38 E0 00 10 */	li r7, 0x10
/* 80315E50  48 04 BF 11 */	bl __construct_array
/* 80315E54  7F E3 FB 78 */	mr r3, r31
/* 80315E58  48 00 1B A9 */	bl initialize__13J3DTevBlock16Fv
lbl_80315E5C:
/* 80315E5C  7F E0 FB 78 */	mr r0, r31
lbl_80315E60:
/* 80315E60  7C 03 03 78 */	mr r3, r0
/* 80315E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80315E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315E6C  7C 08 03 A6 */	mtlr r0
/* 80315E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80315E74  4E 80 00 20 */	blr 
