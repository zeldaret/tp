lbl_80764174:
/* 80764174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80764178  7C 08 02 A6 */	mflr r0
/* 8076417C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80764180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80764184  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80764188  7C 7E 1B 78 */	mr r30, r3
/* 8076418C  38 60 00 58 */	li r3, 0x58
/* 80764190  4B B6 AA BC */	b __nw__FUl
/* 80764194  7C 7F 1B 79 */	or. r31, r3, r3
/* 80764198  41 82 00 74 */	beq lbl_8076420C
/* 8076419C  3C 60 80 76 */	lis r3, stringBase0@ha
/* 807641A0  38 63 4D D4 */	addi r3, r3, stringBase0@l
/* 807641A4  38 80 00 0B */	li r4, 0xb
/* 807641A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807641AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807641B0  3C A5 00 02 */	addis r5, r5, 2
/* 807641B4  38 C0 00 80 */	li r6, 0x80
/* 807641B8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807641BC  4B 8D 81 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807641C0  7C 64 1B 78 */	mr r4, r3
/* 807641C4  38 1E 09 6C */	addi r0, r30, 0x96c
/* 807641C8  90 01 00 08 */	stw r0, 8(r1)
/* 807641CC  3C 00 00 08 */	lis r0, 8
/* 807641D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807641D4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807641D8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807641DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807641E0  7F E3 FB 78 */	mr r3, r31
/* 807641E4  38 A0 00 00 */	li r5, 0
/* 807641E8  38 C0 00 00 */	li r6, 0
/* 807641EC  38 E0 00 00 */	li r7, 0
/* 807641F0  39 00 00 00 */	li r8, 0
/* 807641F4  3D 20 80 76 */	lis r9, lit_3790@ha
/* 807641F8  C0 29 4D 14 */	lfs f1, lit_3790@l(r9)
/* 807641FC  39 20 00 00 */	li r9, 0
/* 80764200  39 40 FF FF */	li r10, -1
/* 80764204  4B 8A C5 CC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80764208  7C 7F 1B 78 */	mr r31, r3
lbl_8076420C:
/* 8076420C  93 FE 09 68 */	stw r31, 0x968(r30)
/* 80764210  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 80764214  28 03 00 00 */	cmplwi r3, 0
/* 80764218  41 82 00 10 */	beq lbl_80764228
/* 8076421C  80 03 00 04 */	lwz r0, 4(r3)
/* 80764220  28 00 00 00 */	cmplwi r0, 0
/* 80764224  40 82 00 0C */	bne lbl_80764230
lbl_80764228:
/* 80764228  38 60 00 00 */	li r3, 0
/* 8076422C  48 00 00 08 */	b lbl_80764234
lbl_80764230:
/* 80764230  38 60 00 01 */	li r3, 1
lbl_80764234:
/* 80764234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80764238  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8076423C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80764240  7C 08 03 A6 */	mtlr r0
/* 80764244  38 21 00 20 */	addi r1, r1, 0x20
/* 80764248  4E 80 00 20 */	blr 
