lbl_80708EE8:
/* 80708EE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80708EEC  7C 08 02 A6 */	mflr r0
/* 80708EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80708EF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80708EF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80708EFC  7C 7F 1B 78 */	mr r31, r3
/* 80708F00  80 03 05 B0 */	lwz r0, 0x5b0(r3)
/* 80708F04  2C 00 00 02 */	cmpwi r0, 2
/* 80708F08  41 82 00 30 */	beq lbl_80708F38
/* 80708F0C  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 80708F10  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80708F14  38 80 00 0B */	li r4, 0xb
/* 80708F18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80708F1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80708F20  3C A5 00 02 */	addis r5, r5, 2
/* 80708F24  38 C0 00 80 */	li r6, 0x80
/* 80708F28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80708F2C  4B 93 33 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708F30  7C 7E 1B 78 */	mr r30, r3
/* 80708F34  48 00 00 5C */	b lbl_80708F90
lbl_80708F38:
/* 80708F38  40 82 00 30 */	bne lbl_80708F68
/* 80708F3C  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 80708F40  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80708F44  38 80 00 09 */	li r4, 9
/* 80708F48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80708F4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80708F50  3C A5 00 02 */	addis r5, r5, 2
/* 80708F54  38 C0 00 80 */	li r6, 0x80
/* 80708F58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80708F5C  4B 93 33 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708F60  7C 7E 1B 78 */	mr r30, r3
/* 80708F64  48 00 00 2C */	b lbl_80708F90
lbl_80708F68:
/* 80708F68  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 80708F6C  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80708F70  38 80 00 09 */	li r4, 9
/* 80708F74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80708F78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80708F7C  3C A5 00 02 */	addis r5, r5, 2
/* 80708F80  38 C0 00 80 */	li r6, 0x80
/* 80708F84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80708F88  4B 93 33 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80708F8C  7C 7E 1B 78 */	mr r30, r3
lbl_80708F90:
/* 80708F90  38 60 00 58 */	li r3, 0x58
/* 80708F94  4B BC 5C B9 */	bl __nw__FUl
/* 80708F98  7C 60 1B 79 */	or. r0, r3, r3
/* 80708F9C  41 82 00 4C */	beq lbl_80708FE8
/* 80708FA0  38 1F 05 E4 */	addi r0, r31, 0x5e4
/* 80708FA4  90 01 00 08 */	stw r0, 8(r1)
/* 80708FA8  3C 00 00 08 */	lis r0, 8
/* 80708FAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80708FB0  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80708FB4  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80708FB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80708FBC  7F C4 F3 78 */	mr r4, r30
/* 80708FC0  38 A0 00 00 */	li r5, 0
/* 80708FC4  38 C0 00 00 */	li r6, 0
/* 80708FC8  38 E0 00 00 */	li r7, 0
/* 80708FCC  39 00 00 02 */	li r8, 2
/* 80708FD0  3D 20 80 71 */	lis r9, lit_3858@ha /* 0x8070A534@ha */
/* 80708FD4  C0 29 A5 34 */	lfs f1, lit_3858@l(r9)  /* 0x8070A534@l */
/* 80708FD8  39 20 00 00 */	li r9, 0
/* 80708FDC  39 40 FF FF */	li r10, -1
/* 80708FE0  4B 90 77 F1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80708FE4  7C 60 1B 78 */	mr r0, r3
lbl_80708FE8:
/* 80708FE8  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 80708FEC  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80708FF0  28 03 00 00 */	cmplwi r3, 0
/* 80708FF4  41 82 00 10 */	beq lbl_80709004
/* 80708FF8  80 03 00 04 */	lwz r0, 4(r3)
/* 80708FFC  28 00 00 00 */	cmplwi r0, 0
/* 80709000  40 82 00 0C */	bne lbl_8070900C
lbl_80709004:
/* 80709004  38 60 00 00 */	li r3, 0
/* 80709008  48 00 01 B0 */	b lbl_807091B8
lbl_8070900C:
/* 8070900C  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80709010  2C 00 00 00 */	cmpwi r0, 0
/* 80709014  40 82 00 A8 */	bne lbl_807090BC
/* 80709018  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 8070901C  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80709020  38 80 00 0D */	li r4, 0xd
/* 80709024  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80709028  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070902C  3C A5 00 02 */	addis r5, r5, 2
/* 80709030  38 C0 00 80 */	li r6, 0x80
/* 80709034  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80709038  4B 93 32 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8070903C  7C 7E 1B 78 */	mr r30, r3
/* 80709040  38 60 00 58 */	li r3, 0x58
/* 80709044  4B BC 5C 09 */	bl __nw__FUl
/* 80709048  7C 60 1B 79 */	or. r0, r3, r3
/* 8070904C  41 82 00 4C */	beq lbl_80709098
/* 80709050  38 00 00 00 */	li r0, 0
/* 80709054  90 01 00 08 */	stw r0, 8(r1)
/* 80709058  3C 00 00 08 */	lis r0, 8
/* 8070905C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80709060  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80709064  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80709068  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070906C  7F C4 F3 78 */	mr r4, r30
/* 80709070  38 A0 00 00 */	li r5, 0
/* 80709074  38 C0 00 00 */	li r6, 0
/* 80709078  38 E0 00 00 */	li r7, 0
/* 8070907C  39 00 00 02 */	li r8, 2
/* 80709080  3D 20 80 71 */	lis r9, lit_3858@ha /* 0x8070A534@ha */
/* 80709084  C0 29 A5 34 */	lfs f1, lit_3858@l(r9)  /* 0x8070A534@l */
/* 80709088  39 20 00 00 */	li r9, 0
/* 8070908C  39 40 FF FF */	li r10, -1
/* 80709090  4B 90 77 41 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80709094  7C 60 1B 78 */	mr r0, r3
lbl_80709098:
/* 80709098  90 1F 06 90 */	stw r0, 0x690(r31)
/* 8070909C  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 807090A0  28 03 00 00 */	cmplwi r3, 0
/* 807090A4  41 82 00 10 */	beq lbl_807090B4
/* 807090A8  80 03 00 04 */	lwz r0, 4(r3)
/* 807090AC  28 00 00 00 */	cmplwi r0, 0
/* 807090B0  40 82 01 04 */	bne lbl_807091B4
lbl_807090B4:
/* 807090B4  38 60 00 00 */	li r3, 0
/* 807090B8  48 00 01 00 */	b lbl_807091B8
lbl_807090BC:
/* 807090BC  2C 00 00 02 */	cmpwi r0, 2
/* 807090C0  40 82 00 A8 */	bne lbl_80709168
/* 807090C4  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 807090C8  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 807090CC  38 80 00 0A */	li r4, 0xa
/* 807090D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807090D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807090D8  3C A5 00 02 */	addis r5, r5, 2
/* 807090DC  38 C0 00 80 */	li r6, 0x80
/* 807090E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807090E4  4B 93 32 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807090E8  7C 7E 1B 78 */	mr r30, r3
/* 807090EC  38 60 00 58 */	li r3, 0x58
/* 807090F0  4B BC 5B 5D */	bl __nw__FUl
/* 807090F4  7C 60 1B 79 */	or. r0, r3, r3
/* 807090F8  41 82 00 4C */	beq lbl_80709144
/* 807090FC  38 00 00 00 */	li r0, 0
/* 80709100  90 01 00 08 */	stw r0, 8(r1)
/* 80709104  3C 00 00 08 */	lis r0, 8
/* 80709108  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070910C  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80709110  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80709114  90 01 00 10 */	stw r0, 0x10(r1)
/* 80709118  7F C4 F3 78 */	mr r4, r30
/* 8070911C  38 A0 00 00 */	li r5, 0
/* 80709120  38 C0 00 00 */	li r6, 0
/* 80709124  38 E0 00 00 */	li r7, 0
/* 80709128  39 00 00 02 */	li r8, 2
/* 8070912C  3D 20 80 71 */	lis r9, lit_3858@ha /* 0x8070A534@ha */
/* 80709130  C0 29 A5 34 */	lfs f1, lit_3858@l(r9)  /* 0x8070A534@l */
/* 80709134  39 20 00 00 */	li r9, 0
/* 80709138  39 40 FF FF */	li r10, -1
/* 8070913C  4B 90 76 95 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80709140  7C 60 1B 78 */	mr r0, r3
lbl_80709144:
/* 80709144  90 1F 06 90 */	stw r0, 0x690(r31)
/* 80709148  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 8070914C  28 03 00 00 */	cmplwi r3, 0
/* 80709150  41 82 00 10 */	beq lbl_80709160
/* 80709154  80 03 00 04 */	lwz r0, 4(r3)
/* 80709158  28 00 00 00 */	cmplwi r0, 0
/* 8070915C  40 82 00 58 */	bne lbl_807091B4
lbl_80709160:
/* 80709160  38 60 00 00 */	li r3, 0
/* 80709164  48 00 00 54 */	b lbl_807091B8
lbl_80709168:
/* 80709168  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 8070916C  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80709170  38 80 00 0C */	li r4, 0xc
/* 80709174  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80709178  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070917C  3C A5 00 02 */	addis r5, r5, 2
/* 80709180  38 C0 00 80 */	li r6, 0x80
/* 80709184  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80709188  4B 93 31 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8070918C  3C 80 00 08 */	lis r4, 8
/* 80709190  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80709194  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80709198  4B 90 BA BD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8070919C  90 7F 06 94 */	stw r3, 0x694(r31)
/* 807091A0  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 807091A4  28 00 00 00 */	cmplwi r0, 0
/* 807091A8  40 82 00 0C */	bne lbl_807091B4
/* 807091AC  38 60 00 00 */	li r3, 0
/* 807091B0  48 00 00 08 */	b lbl_807091B8
lbl_807091B4:
/* 807091B4  38 60 00 01 */	li r3, 1
lbl_807091B8:
/* 807091B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807091BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807091C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807091C4  7C 08 03 A6 */	mtlr r0
/* 807091C8  38 21 00 20 */	addi r1, r1, 0x20
/* 807091CC  4E 80 00 20 */	blr 
