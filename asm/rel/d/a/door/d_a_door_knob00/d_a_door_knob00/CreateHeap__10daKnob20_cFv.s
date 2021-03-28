lbl_8045E960:
/* 8045E960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045E964  7C 08 02 A6 */	mflr r0
/* 8045E968  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045E96C  39 61 00 20 */	addi r11, r1, 0x20
/* 8045E970  4B F0 38 6C */	b _savegpr_29
/* 8045E974  7C 7E 1B 78 */	mr r30, r3
/* 8045E978  4B FF FF 41 */	bl getDummyBmd__10daKnob20_cFv
/* 8045E97C  7C 7D 1B 78 */	mr r29, r3
/* 8045E980  7F C3 F3 78 */	mr r3, r30
/* 8045E984  4B FF FF 05 */	bl getAlwaysArcName__10daKnob20_cFv
/* 8045E988  7F A4 EB 78 */	mr r4, r29
/* 8045E98C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8045E990  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8045E994  3F E5 00 02 */	addis r31, r5, 2
/* 8045E998  3B FF C2 F8 */	addi r31, r31, -15624
/* 8045E99C  7F E5 FB 78 */	mr r5, r31
/* 8045E9A0  38 C0 00 80 */	li r6, 0x80
/* 8045E9A4  4B BD D9 D8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045E9A8  7C 7D 1B 78 */	mr r29, r3
/* 8045E9AC  38 80 00 00 */	li r4, 0
/* 8045E9B0  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020203@ha */
/* 8045E9B4  38 A5 02 03 */	addi r5, r5, 0x0203 /* 0x11020203@l */
/* 8045E9B8  4B BB 62 9C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8045E9BC  90 7E 05 78 */	stw r3, 0x578(r30)
/* 8045E9C0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8045E9C4  28 03 00 00 */	cmplwi r3, 0
/* 8045E9C8  40 82 00 0C */	bne lbl_8045E9D4
/* 8045E9CC  38 60 00 00 */	li r3, 0
/* 8045E9D0  48 00 01 B8 */	b lbl_8045EB88
lbl_8045E9D4:
/* 8045E9D4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8045E9D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8045E9DC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8045E9E0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045E9E4  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8045E9E8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8045E9EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045E9F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045E9F4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8045E9F8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8045E9FC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8045EA00  4B EE 7E E8 */	b PSMTXTrans
/* 8045EA04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045EA08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045EA0C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8045EA10  4B BA DA 24 */	b mDoMtx_YrotM__FPA4_fs
/* 8045EA14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045EA18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045EA1C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8045EA20  38 84 00 24 */	addi r4, r4, 0x24
/* 8045EA24  4B EE 7A 8C */	b PSMTXCopy
/* 8045EA28  7F C3 F3 78 */	mr r3, r30
/* 8045EA2C  4B FF FE 5D */	bl getAlwaysArcName__10daKnob20_cFv
/* 8045EA30  3C 80 80 46 */	lis r4, struct_804606C4+0x0@ha
/* 8045EA34  38 84 06 C4 */	addi r4, r4, struct_804606C4+0x0@l
/* 8045EA38  38 84 00 46 */	addi r4, r4, 0x46
/* 8045EA3C  7F E5 FB 78 */	mr r5, r31
/* 8045EA40  38 C0 00 80 */	li r6, 0x80
/* 8045EA44  4B BD D9 38 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045EA48  7C 64 1B 78 */	mr r4, r3
/* 8045EA4C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8045EA50  38 A0 00 01 */	li r5, 1
/* 8045EA54  38 C0 00 00 */	li r6, 0
/* 8045EA58  3C E0 80 46 */	lis r7, lit_3876@ha
/* 8045EA5C  C0 27 06 68 */	lfs f1, lit_3876@l(r7)
/* 8045EA60  38 E0 00 00 */	li r7, 0
/* 8045EA64  39 00 FF FF */	li r8, -1
/* 8045EA68  39 20 00 00 */	li r9, 0
/* 8045EA6C  4B BA ED 70 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8045EA70  2C 03 00 00 */	cmpwi r3, 0
/* 8045EA74  40 82 00 0C */	bne lbl_8045EA80
/* 8045EA78  38 60 00 00 */	li r3, 0
/* 8045EA7C  48 00 01 0C */	b lbl_8045EB88
lbl_8045EA80:
/* 8045EA80  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8045EA84  3C 80 80 46 */	lis r4, struct_804606C4+0x0@ha
/* 8045EA88  38 84 06 C4 */	addi r4, r4, struct_804606C4+0x0@l
/* 8045EA8C  38 84 00 51 */	addi r4, r4, 0x51
/* 8045EA90  4B E7 FF C8 */	b getIndex__10JUTNameTabCFPCc
/* 8045EA94  98 7E 05 9C */	stb r3, 0x59c(r30)
/* 8045EA98  7F C3 F3 78 */	mr r3, r30
/* 8045EA9C  4B FF FE 81 */	bl getDoorModelData__10daKnob20_cFv
/* 8045EAA0  3C 80 00 08 */	lis r4, 8
/* 8045EAA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8045EAA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8045EAAC  4B BB 61 A8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8045EAB0  90 7E 05 98 */	stw r3, 0x598(r30)
/* 8045EAB4  80 1E 05 98 */	lwz r0, 0x598(r30)
/* 8045EAB8  28 00 00 00 */	cmplwi r0, 0
/* 8045EABC  40 82 00 0C */	bne lbl_8045EAC8
/* 8045EAC0  38 60 00 00 */	li r3, 0
/* 8045EAC4  48 00 00 C4 */	b lbl_8045EB88
lbl_8045EAC8:
/* 8045EAC8  38 60 00 C0 */	li r3, 0xc0
/* 8045EACC  4B E7 01 80 */	b __nw__FUl
/* 8045EAD0  7C 60 1B 79 */	or. r0, r3, r3
/* 8045EAD4  41 82 00 0C */	beq lbl_8045EAE0
/* 8045EAD8  4B C1 CE 98 */	b __ct__4dBgWFv
/* 8045EADC  7C 60 1B 78 */	mr r0, r3
lbl_8045EAE0:
/* 8045EAE0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 8045EAE4  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 8045EAE8  28 00 00 00 */	cmplwi r0, 0
/* 8045EAEC  40 82 00 0C */	bne lbl_8045EAF8
/* 8045EAF0  38 60 00 00 */	li r3, 0
/* 8045EAF4  48 00 00 94 */	b lbl_8045EB88
lbl_8045EAF8:
/* 8045EAF8  7F C3 F3 78 */	mr r3, r30
/* 8045EAFC  48 00 00 A5 */	bl calcMtx__10daKnob20_cFv
/* 8045EB00  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8045EB04  80 83 00 04 */	lwz r4, 4(r3)
/* 8045EB08  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8045EB0C  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 8045EB10  4B BA EE BC */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 8045EB14  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8045EB18  81 83 00 00 */	lwz r12, 0(r3)
/* 8045EB1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8045EB20  7D 89 03 A6 */	mtctr r12
/* 8045EB24  4E 80 04 21 */	bctrl 
/* 8045EB28  7F C3 F3 78 */	mr r3, r30
/* 8045EB2C  4B FF FD 7D */	bl getDzb__10daKnob20_cFv
/* 8045EB30  7C 7D 1B 78 */	mr r29, r3
/* 8045EB34  7F C3 F3 78 */	mr r3, r30
/* 8045EB38  4B FF FD 51 */	bl getAlwaysArcName__10daKnob20_cFv
/* 8045EB3C  7F A4 EB 78 */	mr r4, r29
/* 8045EB40  7F E5 FB 78 */	mr r5, r31
/* 8045EB44  38 C0 00 80 */	li r6, 0x80
/* 8045EB48  4B BD D8 34 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045EB4C  7C 64 1B 78 */	mr r4, r3
/* 8045EB50  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8045EB54  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8045EB58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8045EB5C  88 1E 05 9C */	lbz r0, 0x59c(r30)
/* 8045EB60  7C 00 07 74 */	extsb r0, r0
/* 8045EB64  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8045EB68  7C C3 02 14 */	add r6, r3, r0
/* 8045EB6C  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 8045EB70  38 A0 00 01 */	li r5, 1
/* 8045EB74  4B C1 B3 C4 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8045EB78  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8045EB7C  20 60 00 01 */	subfic r3, r0, 1
/* 8045EB80  30 03 FF FF */	addic r0, r3, -1
/* 8045EB84  7C 60 19 10 */	subfe r3, r0, r3
lbl_8045EB88:
/* 8045EB88  39 61 00 20 */	addi r11, r1, 0x20
/* 8045EB8C  4B F0 36 9C */	b _restgpr_29
/* 8045EB90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045EB94  7C 08 03 A6 */	mtlr r0
/* 8045EB98  38 21 00 20 */	addi r1, r1, 0x20
/* 8045EB9C  4E 80 00 20 */	blr 
