lbl_80C66EAC:
/* 80C66EAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C66EB0  7C 08 02 A6 */	mflr r0
/* 80C66EB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C66EB8  39 61 00 80 */	addi r11, r1, 0x80
/* 80C66EBC  4B 6F B3 18 */	b _savegpr_27
/* 80C66EC0  7C 7C 1B 78 */	mr r28, r3
/* 80C66EC4  3B 61 00 08 */	addi r27, r1, 8
/* 80C66EC8  7F 63 DB 78 */	mr r3, r27
/* 80C66ECC  4B 41 06 B0 */	b __ct__11dBgS_GndChkFv
/* 80C66ED0  3C 60 80 C6 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80C66ED4  38 63 77 08 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80C66ED8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C66EDC  3B E3 00 0C */	addi r31, r3, 0xc
/* 80C66EE0  93 E1 00 28 */	stw r31, 0x28(r1)
/* 80C66EE4  3B C3 00 18 */	addi r30, r3, 0x18
/* 80C66EE8  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80C66EEC  3B A3 00 24 */	addi r29, r3, 0x24
/* 80C66EF0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80C66EF4  38 7B 00 3C */	addi r3, r27, 0x3c
/* 80C66EF8  4B 41 1F 70 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C66EFC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80C66F00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C66F04  7F 63 DB 78 */	mr r3, r27
/* 80C66F08  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C66F0C  4B 60 0E 1C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80C66F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C66F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C66F18  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C66F1C  7F 64 DB 78 */	mr r4, r27
/* 80C66F20  4B 40 D5 80 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80C66F24  3C 60 80 C6 */	lis r3, lit_3746@ha
/* 80C66F28  C0 03 75 D4 */	lfs f0, lit_3746@l(r3)
/* 80C66F2C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C66F30  41 82 00 08 */	beq lbl_80C66F38
/* 80C66F34  D0 3C 09 3C */	stfs f1, 0x93c(r28)
lbl_80C66F38:
/* 80C66F38  38 00 00 14 */	li r0, 0x14
/* 80C66F3C  98 1C 09 42 */	stb r0, 0x942(r28)
/* 80C66F40  38 00 00 01 */	li r0, 1
/* 80C66F44  98 1C 09 40 */	stb r0, 0x940(r28)
/* 80C66F48  3C 60 80 C6 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80C66F4C  38 03 77 08 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 80C66F50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C66F54  93 E1 00 28 */	stw r31, 0x28(r1)
/* 80C66F58  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80C66F5C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80C66F60  38 61 00 08 */	addi r3, r1, 8
/* 80C66F64  38 80 00 00 */	li r4, 0
/* 80C66F68  4B 41 06 88 */	b __dt__11dBgS_GndChkFv
/* 80C66F6C  39 61 00 80 */	addi r11, r1, 0x80
/* 80C66F70  4B 6F B2 B0 */	b _restgpr_27
/* 80C66F74  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C66F78  7C 08 03 A6 */	mtlr r0
/* 80C66F7C  38 21 00 80 */	addi r1, r1, 0x80
/* 80C66F80  4E 80 00 20 */	blr 
