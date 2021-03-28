lbl_80722080:
/* 80722080  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80722084  7C 08 02 A6 */	mflr r0
/* 80722088  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072208C  39 61 00 30 */	addi r11, r1, 0x30
/* 80722090  4B C4 01 44 */	b _savegpr_27
/* 80722094  7C 7F 1B 78 */	mr r31, r3
/* 80722098  3B 60 00 13 */	li r27, 0x13
/* 8072209C  88 03 04 99 */	lbz r0, 0x499(r3)
/* 807220A0  2C 00 00 01 */	cmpwi r0, 1
/* 807220A4  40 82 00 08 */	bne lbl_807220AC
/* 807220A8  3B 60 00 12 */	li r27, 0x12
lbl_807220AC:
/* 807220AC  38 60 00 58 */	li r3, 0x58
/* 807220B0  4B BA CB 9C */	b __nw__FUl
/* 807220B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807220B8  41 82 00 94 */	beq lbl_8072214C
/* 807220BC  3C 60 80 72 */	lis r3, stringBase0@ha
/* 807220C0  38 63 2C E8 */	addi r3, r3, stringBase0@l
/* 807220C4  38 80 00 0D */	li r4, 0xd
/* 807220C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807220CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807220D0  3F 85 00 02 */	addis r28, r5, 2
/* 807220D4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807220D8  7F 85 E3 78 */	mr r5, r28
/* 807220DC  38 C0 00 80 */	li r6, 0x80
/* 807220E0  4B 91 A2 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807220E4  7C 7D 1B 78 */	mr r29, r3
/* 807220E8  3C 60 80 72 */	lis r3, stringBase0@ha
/* 807220EC  38 63 2C E8 */	addi r3, r3, stringBase0@l
/* 807220F0  7F 64 DB 78 */	mr r4, r27
/* 807220F4  7F 85 E3 78 */	mr r5, r28
/* 807220F8  38 C0 00 80 */	li r6, 0x80
/* 807220FC  4B 91 A1 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80722100  7C 64 1B 78 */	mr r4, r3
/* 80722104  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80722108  90 01 00 08 */	stw r0, 8(r1)
/* 8072210C  3C 00 00 08 */	lis r0, 8
/* 80722110  90 01 00 0C */	stw r0, 0xc(r1)
/* 80722114  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80722118  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8072211C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80722120  7F C3 F3 78 */	mr r3, r30
/* 80722124  38 A0 00 00 */	li r5, 0
/* 80722128  38 C0 00 00 */	li r6, 0
/* 8072212C  7F A7 EB 78 */	mr r7, r29
/* 80722130  39 00 00 02 */	li r8, 2
/* 80722134  3D 20 80 72 */	lis r9, lit_3791@ha
/* 80722138  C0 29 2C 44 */	lfs f1, lit_3791@l(r9)
/* 8072213C  39 20 00 00 */	li r9, 0
/* 80722140  39 40 FF FF */	li r10, -1
/* 80722144  4B 8E E6 8C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80722148  7C 7E 1B 78 */	mr r30, r3
lbl_8072214C:
/* 8072214C  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 80722150  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80722154  28 03 00 00 */	cmplwi r3, 0
/* 80722158  41 82 00 10 */	beq lbl_80722168
/* 8072215C  80 03 00 04 */	lwz r0, 4(r3)
/* 80722160  28 00 00 00 */	cmplwi r0, 0
/* 80722164  40 82 00 0C */	bne lbl_80722170
lbl_80722168:
/* 80722168  38 60 00 00 */	li r3, 0
/* 8072216C  48 00 00 08 */	b lbl_80722174
lbl_80722170:
/* 80722170  38 60 00 01 */	li r3, 1
lbl_80722174:
/* 80722174  39 61 00 30 */	addi r11, r1, 0x30
/* 80722178  4B C4 00 A8 */	b _restgpr_27
/* 8072217C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80722180  7C 08 03 A6 */	mtlr r0
/* 80722184  38 21 00 30 */	addi r1, r1, 0x30
/* 80722188  4E 80 00 20 */	blr 
