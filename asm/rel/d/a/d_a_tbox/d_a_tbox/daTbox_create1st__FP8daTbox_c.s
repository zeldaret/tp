lbl_80495CFC:
/* 80495CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80495D00  7C 08 02 A6 */	mflr r0
/* 80495D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80495D08  39 61 00 20 */	addi r11, r1, 0x20
/* 80495D0C  4B EC C4 D1 */	bl _savegpr_29
/* 80495D10  7C 7F 1B 78 */	mr r31, r3
/* 80495D14  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80495D18  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80495D1C  40 82 00 FC */	bne lbl_80495E18
/* 80495D20  7F E0 FB 79 */	or. r0, r31, r31
/* 80495D24  41 82 00 E8 */	beq lbl_80495E0C
/* 80495D28  7C 1E 03 78 */	mr r30, r0
/* 80495D2C  7C 1D 03 78 */	mr r29, r0
/* 80495D30  4B BE 28 F5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80495D34  3C 60 80 49 */	lis r3, __vt__12daTboxBase_c@ha /* 0x804967E0@ha */
/* 80495D38  38 03 67 E0 */	addi r0, r3, __vt__12daTboxBase_c@l /* 0x804967E0@l */
/* 80495D3C  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80495D40  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80495D44  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80495D48  90 1D 05 B8 */	stw r0, 0x5b8(r29)
/* 80495D4C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80495D50  4B BE DA 11 */	bl __ct__10dCcD_GSttsFv
/* 80495D54  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80495D58  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80495D5C  90 7D 05 B8 */	stw r3, 0x5b8(r29)
/* 80495D60  38 03 00 20 */	addi r0, r3, 0x20
/* 80495D64  90 1D 05 BC */	stw r0, 0x5bc(r29)
/* 80495D68  3B BD 05 DC */	addi r29, r29, 0x5dc
/* 80495D6C  7F A3 EB 78 */	mr r3, r29
/* 80495D70  4B BE DC B9 */	bl __ct__12dCcD_GObjInfFv
/* 80495D74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80495D78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80495D7C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80495D80  3C 60 80 49 */	lis r3, __vt__8cM3dGAab@ha /* 0x804967D4@ha */
/* 80495D84  38 03 67 D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804967D4@l */
/* 80495D88  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80495D8C  3C 60 80 49 */	lis r3, __vt__8cM3dGCyl@ha /* 0x804967C8@ha */
/* 80495D90  38 03 67 C8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x804967C8@l */
/* 80495D94  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80495D98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80495D9C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80495DA0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80495DA4  38 03 00 58 */	addi r0, r3, 0x58
/* 80495DA8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80495DAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80495DB0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80495DB4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80495DB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80495DBC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80495DC0  38 03 00 84 */	addi r0, r3, 0x84
/* 80495DC4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80495DC8  3C 60 80 49 */	lis r3, __vt__8daTbox_c@ha /* 0x8049683C@ha */
/* 80495DCC  38 03 68 3C */	addi r0, r3, __vt__8daTbox_c@l /* 0x8049683C@l */
/* 80495DD0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80495DD4  3B BE 07 60 */	addi r29, r30, 0x760
/* 80495DD8  7F A3 EB 78 */	mr r3, r29
/* 80495DDC  4B BE 02 C5 */	bl __ct__9dBgS_AcchFv
/* 80495DE0  3C 60 80 49 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x804967A4@ha */
/* 80495DE4  38 63 67 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x804967A4@l */
/* 80495DE8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80495DEC  38 03 00 0C */	addi r0, r3, 0xc
/* 80495DF0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80495DF4  38 03 00 18 */	addi r0, r3, 0x18
/* 80495DF8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80495DFC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80495E00  4B BE 30 69 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80495E04  38 7E 09 38 */	addi r3, r30, 0x938
/* 80495E08  4B BE 00 A5 */	bl __ct__12dBgS_AcchCirFv
lbl_80495E0C:
/* 80495E0C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80495E10  60 00 00 08 */	ori r0, r0, 8
/* 80495E14  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80495E18:
/* 80495E18  7F E3 FB 78 */	mr r3, r31
/* 80495E1C  4B FF FA F5 */	bl create1st__8daTbox_cFv
/* 80495E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80495E24  4B EC C4 05 */	bl _restgpr_29
/* 80495E28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495E2C  7C 08 03 A6 */	mtlr r0
/* 80495E30  38 21 00 20 */	addi r1, r1, 0x20
/* 80495E34  4E 80 00 20 */	blr 
