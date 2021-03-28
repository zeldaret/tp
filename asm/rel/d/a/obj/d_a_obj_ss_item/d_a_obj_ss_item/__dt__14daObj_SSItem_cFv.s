lbl_80CE6C18:
/* 80CE6C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6C1C  7C 08 02 A6 */	mflr r0
/* 80CE6C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE6C28  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE6C2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE6C30  7C 9F 23 78 */	mr r31, r4
/* 80CE6C34  41 82 02 18 */	beq lbl_80CE6E4C
/* 80CE6C38  3C 80 80 CF */	lis r4, __vt__14daObj_SSItem_c@ha
/* 80CE6C3C  38 04 80 64 */	addi r0, r4, __vt__14daObj_SSItem_c@l
/* 80CE6C40  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CE6C44  48 00 0B F5 */	bl getResName__14daObj_SSItem_cFv
/* 80CE6C48  7C 64 1B 78 */	mr r4, r3
/* 80CE6C4C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CE6C50  4B 34 63 B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CE6C54  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80CE6C58  38 80 FF FF */	li r4, -1
/* 80CE6C5C  4B 56 32 EC */	b __dt__10dMsgFlow_cFv
/* 80CE6C60  38 7E 0A 50 */	addi r3, r30, 0xa50
/* 80CE6C64  38 80 FF FF */	li r4, -1
/* 80CE6C68  4B 58 10 2C */	b __dt__11cBgS_GndChkFv
/* 80CE6C6C  34 1E 09 14 */	addic. r0, r30, 0x914
/* 80CE6C70  41 82 00 84 */	beq lbl_80CE6CF4
/* 80CE6C74  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE6C78  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CE6C7C  90 7E 09 50 */	stw r3, 0x950(r30)
/* 80CE6C80  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE6C84  90 1E 0A 34 */	stw r0, 0xa34(r30)
/* 80CE6C88  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE6C8C  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80CE6C90  34 1E 0A 18 */	addic. r0, r30, 0xa18
/* 80CE6C94  41 82 00 54 */	beq lbl_80CE6CE8
/* 80CE6C98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE6C9C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CE6CA0  90 7E 0A 34 */	stw r3, 0xa34(r30)
/* 80CE6CA4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE6CA8  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80CE6CAC  34 1E 0A 38 */	addic. r0, r30, 0xa38
/* 80CE6CB0  41 82 00 10 */	beq lbl_80CE6CC0
/* 80CE6CB4  3C 60 80 CF */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE6CB8  38 03 80 58 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE6CBC  90 1E 0A 4C */	stw r0, 0xa4c(r30)
lbl_80CE6CC0:
/* 80CE6CC0  34 1E 0A 18 */	addic. r0, r30, 0xa18
/* 80CE6CC4  41 82 00 24 */	beq lbl_80CE6CE8
/* 80CE6CC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE6CCC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE6CD0  90 1E 0A 34 */	stw r0, 0xa34(r30)
/* 80CE6CD4  34 1E 0A 18 */	addic. r0, r30, 0xa18
/* 80CE6CD8  41 82 00 10 */	beq lbl_80CE6CE8
/* 80CE6CDC  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha
/* 80CE6CE0  38 03 80 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE6CE4  90 1E 0A 30 */	stw r0, 0xa30(r30)
lbl_80CE6CE8:
/* 80CE6CE8  38 7E 09 14 */	addi r3, r30, 0x914
/* 80CE6CEC  38 80 00 00 */	li r4, 0
/* 80CE6CF0  4B 39 D3 F4 */	b __dt__12dCcD_GObjInfFv
lbl_80CE6CF4:
/* 80CE6CF4  34 1E 07 D8 */	addic. r0, r30, 0x7d8
/* 80CE6CF8  41 82 00 84 */	beq lbl_80CE6D7C
/* 80CE6CFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE6D00  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CE6D04  90 7E 08 14 */	stw r3, 0x814(r30)
/* 80CE6D08  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE6D0C  90 1E 08 F8 */	stw r0, 0x8f8(r30)
/* 80CE6D10  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE6D14  90 1E 09 10 */	stw r0, 0x910(r30)
/* 80CE6D18  34 1E 08 DC */	addic. r0, r30, 0x8dc
/* 80CE6D1C  41 82 00 54 */	beq lbl_80CE6D70
/* 80CE6D20  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE6D24  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CE6D28  90 7E 08 F8 */	stw r3, 0x8f8(r30)
/* 80CE6D2C  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE6D30  90 1E 09 10 */	stw r0, 0x910(r30)
/* 80CE6D34  34 1E 08 FC */	addic. r0, r30, 0x8fc
/* 80CE6D38  41 82 00 10 */	beq lbl_80CE6D48
/* 80CE6D3C  3C 60 80 CF */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE6D40  38 03 80 58 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE6D44  90 1E 09 10 */	stw r0, 0x910(r30)
lbl_80CE6D48:
/* 80CE6D48  34 1E 08 DC */	addic. r0, r30, 0x8dc
/* 80CE6D4C  41 82 00 24 */	beq lbl_80CE6D70
/* 80CE6D50  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE6D54  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE6D58  90 1E 08 F8 */	stw r0, 0x8f8(r30)
/* 80CE6D5C  34 1E 08 DC */	addic. r0, r30, 0x8dc
/* 80CE6D60  41 82 00 10 */	beq lbl_80CE6D70
/* 80CE6D64  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha
/* 80CE6D68  38 03 80 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE6D6C  90 1E 08 F4 */	stw r0, 0x8f4(r30)
lbl_80CE6D70:
/* 80CE6D70  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 80CE6D74  38 80 00 00 */	li r4, 0
/* 80CE6D78  4B 39 D3 6C */	b __dt__12dCcD_GObjInfFv
lbl_80CE6D7C:
/* 80CE6D7C  34 1E 07 98 */	addic. r0, r30, 0x798
/* 80CE6D80  41 82 00 28 */	beq lbl_80CE6DA8
/* 80CE6D84  3C 60 80 CF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CE6D88  38 03 80 40 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CE6D8C  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80CE6D90  38 7E 07 AC */	addi r3, r30, 0x7ac
/* 80CE6D94  38 80 FF FF */	li r4, -1
/* 80CE6D98  4B 58 81 80 */	b __dt__8cM3dGCirFv
/* 80CE6D9C  38 7E 07 98 */	addi r3, r30, 0x798
/* 80CE6DA0  38 80 00 00 */	li r4, 0
/* 80CE6DA4  4B 58 13 0C */	b __dt__13cBgS_PolyInfoFv
lbl_80CE6DA8:
/* 80CE6DA8  34 1E 07 5C */	addic. r0, r30, 0x75c
/* 80CE6DAC  41 82 00 54 */	beq lbl_80CE6E00
/* 80CE6DB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CE6DB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CE6DB8  90 7E 07 74 */	stw r3, 0x774(r30)
/* 80CE6DBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE6DC0  90 1E 07 78 */	stw r0, 0x778(r30)
/* 80CE6DC4  34 1E 07 78 */	addic. r0, r30, 0x778
/* 80CE6DC8  41 82 00 24 */	beq lbl_80CE6DEC
/* 80CE6DCC  3C 60 80 CF */	lis r3, __vt__10dCcD_GStts@ha
/* 80CE6DD0  38 03 80 34 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CE6DD4  90 1E 07 78 */	stw r0, 0x778(r30)
/* 80CE6DD8  34 1E 07 78 */	addic. r0, r30, 0x778
/* 80CE6DDC  41 82 00 10 */	beq lbl_80CE6DEC
/* 80CE6DE0  3C 60 80 CF */	lis r3, __vt__10cCcD_GStts@ha
/* 80CE6DE4  38 03 80 28 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CE6DE8  90 1E 07 78 */	stw r0, 0x778(r30)
lbl_80CE6DEC:
/* 80CE6DEC  34 1E 07 5C */	addic. r0, r30, 0x75c
/* 80CE6DF0  41 82 00 10 */	beq lbl_80CE6E00
/* 80CE6DF4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CE6DF8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CE6DFC  90 1E 07 74 */	stw r0, 0x774(r30)
lbl_80CE6E00:
/* 80CE6E00  34 1E 05 84 */	addic. r0, r30, 0x584
/* 80CE6E04  41 82 00 2C */	beq lbl_80CE6E30
/* 80CE6E08  3C 60 80 CF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CE6E0C  38 63 80 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CE6E10  90 7E 05 94 */	stw r3, 0x594(r30)
/* 80CE6E14  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE6E18  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80CE6E1C  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE6E20  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80CE6E24  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CE6E28  38 80 00 00 */	li r4, 0
/* 80CE6E2C  4B 38 F1 68 */	b __dt__9dBgS_AcchFv
lbl_80CE6E30:
/* 80CE6E30  7F C3 F3 78 */	mr r3, r30
/* 80CE6E34  38 80 00 00 */	li r4, 0
/* 80CE6E38  4B 47 76 18 */	b __dt__14daObj_SSBase_cFv
/* 80CE6E3C  7F E0 07 35 */	extsh. r0, r31
/* 80CE6E40  40 81 00 0C */	ble lbl_80CE6E4C
/* 80CE6E44  7F C3 F3 78 */	mr r3, r30
/* 80CE6E48  4B 5E 7E F4 */	b __dl__FPv
lbl_80CE6E4C:
/* 80CE6E4C  7F C3 F3 78 */	mr r3, r30
/* 80CE6E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE6E54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE6E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6E5C  7C 08 03 A6 */	mtlr r0
/* 80CE6E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6E64  4E 80 00 20 */	blr 
