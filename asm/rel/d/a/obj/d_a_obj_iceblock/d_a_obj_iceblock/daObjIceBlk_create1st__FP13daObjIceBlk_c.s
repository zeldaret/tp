lbl_80C23E68:
/* 80C23E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C23E6C  7C 08 02 A6 */	mflr r0
/* 80C23E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C23E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80C23E78  4B 73 E3 64 */	b _savegpr_29
/* 80C23E7C  7C 7F 1B 78 */	mr r31, r3
/* 80C23E80  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C23E84  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C23E88  40 82 01 24 */	bne lbl_80C23FAC
/* 80C23E8C  7F E0 FB 79 */	or. r0, r31, r31
/* 80C23E90  41 82 01 10 */	beq lbl_80C23FA0
/* 80C23E94  7C 1E 03 78 */	mr r30, r0
/* 80C23E98  4B 45 47 8C */	b __ct__16dBgS_MoveBgActorFv
/* 80C23E9C  3C 60 80 C2 */	lis r3, __vt__13daObjIceBlk_c@ha
/* 80C23EA0  38 03 46 70 */	addi r0, r3, __vt__13daObjIceBlk_c@l
/* 80C23EA4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C23EA8  3B BE 05 B0 */	addi r29, r30, 0x5b0
/* 80C23EAC  7F A3 EB 78 */	mr r3, r29
/* 80C23EB0  4B 45 21 F0 */	b __ct__9dBgS_AcchFv
/* 80C23EB4  3C 60 80 C2 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C23EB8  38 63 46 40 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C23EBC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C23EC0  38 03 00 0C */	addi r0, r3, 0xc
/* 80C23EC4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C23EC8  38 03 00 18 */	addi r0, r3, 0x18
/* 80C23ECC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C23ED0  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C23ED4  4B 45 4F 94 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C23ED8  38 7E 07 88 */	addi r3, r30, 0x788
/* 80C23EDC  4B 45 1F D0 */	b __ct__12dBgS_AcchCirFv
/* 80C23EE0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C23EE4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C23EE8  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80C23EEC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80C23EF0  4B 45 F8 70 */	b __ct__10dCcD_GSttsFv
/* 80C23EF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C23EF8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C23EFC  90 7E 07 E0 */	stw r3, 0x7e0(r30)
/* 80C23F00  38 03 00 20 */	addi r0, r3, 0x20
/* 80C23F04  90 1E 07 E4 */	stw r0, 0x7e4(r30)
/* 80C23F08  3B BE 08 04 */	addi r29, r30, 0x804
/* 80C23F0C  7F A3 EB 78 */	mr r3, r29
/* 80C23F10  4B 45 FB 18 */	b __ct__12dCcD_GObjInfFv
/* 80C23F14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C23F18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C23F1C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C23F20  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha
/* 80C23F24  38 03 46 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C23F28  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C23F2C  3C 60 80 C2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C23F30  38 03 46 28 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C23F34  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C23F38  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C23F3C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C23F40  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C23F44  38 03 00 58 */	addi r0, r3, 0x58
/* 80C23F48  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C23F4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C23F50  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C23F54  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C23F58  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C23F5C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C23F60  38 03 00 84 */	addi r0, r3, 0x84
/* 80C23F64  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C23F68  3B BE 09 68 */	addi r29, r30, 0x968
/* 80C23F6C  7F A3 EB 78 */	mr r3, r29
/* 80C23F70  4B 45 36 0C */	b __ct__11dBgS_GndChkFv
/* 80C23F74  3C 60 80 C2 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80C23F78  38 63 45 F8 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80C23F7C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C23F80  38 03 00 0C */	addi r0, r3, 0xc
/* 80C23F84  90 1D 00 20 */	stw r0, 0x20(r29)
/* 80C23F88  38 03 00 18 */	addi r0, r3, 0x18
/* 80C23F8C  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 80C23F90  38 03 00 24 */	addi r0, r3, 0x24
/* 80C23F94  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C23F98  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80C23F9C  4B 45 4E CC */	b SetObj__16dBgS_PolyPassChkFv
lbl_80C23FA0:
/* 80C23FA0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C23FA4  60 00 00 08 */	ori r0, r0, 8
/* 80C23FA8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C23FAC:
/* 80C23FAC  7F E3 FB 78 */	mr r3, r31
/* 80C23FB0  4B FF E8 45 */	bl create1st__13daObjIceBlk_cFv
/* 80C23FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C23FB8  4B 73 E2 70 */	b _restgpr_29
/* 80C23FBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C23FC0  7C 08 03 A6 */	mtlr r0
/* 80C23FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C23FC8  4E 80 00 20 */	blr 
