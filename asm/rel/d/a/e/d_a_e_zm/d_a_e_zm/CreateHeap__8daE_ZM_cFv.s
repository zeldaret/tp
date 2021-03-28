lbl_80831F4C:
/* 80831F4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80831F50  7C 08 02 A6 */	mflr r0
/* 80831F54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80831F58  39 61 00 30 */	addi r11, r1, 0x30
/* 80831F5C  4B B3 02 7C */	b _savegpr_28
/* 80831F60  7C 7F 1B 78 */	mr r31, r3
/* 80831F64  3C 60 80 83 */	lis r3, stringBase0@ha
/* 80831F68  38 63 2D B8 */	addi r3, r3, stringBase0@l
/* 80831F6C  38 80 00 09 */	li r4, 9
/* 80831F70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80831F74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80831F78  3F A5 00 02 */	addis r29, r5, 2
/* 80831F7C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80831F80  7F A5 EB 78 */	mr r5, r29
/* 80831F84  38 C0 00 80 */	li r6, 0x80
/* 80831F88  4B 80 A3 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80831F8C  7C 7C 1B 78 */	mr r28, r3
/* 80831F90  38 60 00 58 */	li r3, 0x58
/* 80831F94  4B A9 CC B8 */	b __nw__FUl
/* 80831F98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80831F9C  41 82 00 68 */	beq lbl_80832004
/* 80831FA0  3C 60 80 83 */	lis r3, stringBase0@ha
/* 80831FA4  38 63 2D B8 */	addi r3, r3, stringBase0@l
/* 80831FA8  38 80 00 06 */	li r4, 6
/* 80831FAC  7F A5 EB 78 */	mr r5, r29
/* 80831FB0  38 C0 00 80 */	li r6, 0x80
/* 80831FB4  4B 80 A3 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80831FB8  7C 67 1B 78 */	mr r7, r3
/* 80831FBC  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 80831FC0  90 01 00 08 */	stw r0, 8(r1)
/* 80831FC4  38 00 00 00 */	li r0, 0
/* 80831FC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80831FCC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80831FD0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80831FD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80831FD8  7F C3 F3 78 */	mr r3, r30
/* 80831FDC  7F 84 E3 78 */	mr r4, r28
/* 80831FE0  38 A0 00 00 */	li r5, 0
/* 80831FE4  38 C0 00 00 */	li r6, 0
/* 80831FE8  39 00 00 02 */	li r8, 2
/* 80831FEC  3D 20 80 83 */	lis r9, lit_3791@ha
/* 80831FF0  C0 29 2D 00 */	lfs f1, lit_3791@l(r9)
/* 80831FF4  39 20 00 00 */	li r9, 0
/* 80831FF8  39 40 FF FF */	li r10, -1
/* 80831FFC  4B 7D E7 D4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80832000  7C 7E 1B 78 */	mr r30, r3
lbl_80832004:
/* 80832004  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 80832008  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8083200C  28 03 00 00 */	cmplwi r3, 0
/* 80832010  41 82 00 10 */	beq lbl_80832020
/* 80832014  80 03 00 04 */	lwz r0, 4(r3)
/* 80832018  28 00 00 00 */	cmplwi r0, 0
/* 8083201C  40 82 00 0C */	bne lbl_80832028
lbl_80832020:
/* 80832020  38 60 00 00 */	li r3, 0
/* 80832024  48 00 00 08 */	b lbl_8083202C
lbl_80832028:
/* 80832028  38 60 00 01 */	li r3, 1
lbl_8083202C:
/* 8083202C  39 61 00 30 */	addi r11, r1, 0x30
/* 80832030  4B B3 01 F4 */	b _restgpr_28
/* 80832034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80832038  7C 08 03 A6 */	mtlr r0
/* 8083203C  38 21 00 30 */	addi r1, r1, 0x30
/* 80832040  4E 80 00 20 */	blr 
