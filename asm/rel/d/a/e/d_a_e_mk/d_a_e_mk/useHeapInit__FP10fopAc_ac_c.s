lbl_8071BA34:
/* 8071BA34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071BA38  7C 08 02 A6 */	mflr r0
/* 8071BA3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071BA40  39 61 00 30 */	addi r11, r1, 0x30
/* 8071BA44  4B C4 67 94 */	b _savegpr_28
/* 8071BA48  7C 7F 1B 78 */	mr r31, r3
/* 8071BA4C  38 60 00 58 */	li r3, 0x58
/* 8071BA50  4B BB 31 FC */	b __nw__FUl
/* 8071BA54  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071BA58  41 82 00 94 */	beq lbl_8071BAEC
/* 8071BA5C  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071BA60  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071BA64  38 80 00 28 */	li r4, 0x28
/* 8071BA68  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8071BA6C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8071BA70  3F 85 00 02 */	addis r28, r5, 2
/* 8071BA74  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8071BA78  7F 85 E3 78 */	mr r5, r28
/* 8071BA7C  38 C0 00 80 */	li r6, 0x80
/* 8071BA80  4B 92 08 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071BA84  7C 7D 1B 78 */	mr r29, r3
/* 8071BA88  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071BA8C  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071BA90  38 80 00 30 */	li r4, 0x30
/* 8071BA94  7F 85 E3 78 */	mr r5, r28
/* 8071BA98  38 C0 00 80 */	li r6, 0x80
/* 8071BA9C  4B 92 08 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071BAA0  7C 64 1B 78 */	mr r4, r3
/* 8071BAA4  38 1F 06 10 */	addi r0, r31, 0x610
/* 8071BAA8  90 01 00 08 */	stw r0, 8(r1)
/* 8071BAAC  3C 00 00 08 */	lis r0, 8
/* 8071BAB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071BAB4  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 8071BAB8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 8071BABC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071BAC0  7F C3 F3 78 */	mr r3, r30
/* 8071BAC4  38 A0 00 00 */	li r5, 0
/* 8071BAC8  38 C0 00 00 */	li r6, 0
/* 8071BACC  7F A7 EB 78 */	mr r7, r29
/* 8071BAD0  39 00 00 00 */	li r8, 0
/* 8071BAD4  3D 20 80 72 */	lis r9, lit_3778@ha
/* 8071BAD8  C0 29 C5 48 */	lfs f1, lit_3778@l(r9)
/* 8071BADC  39 20 00 00 */	li r9, 0
/* 8071BAE0  39 40 FF FF */	li r10, -1
/* 8071BAE4  4B 8F 4C EC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8071BAE8  7C 7E 1B 78 */	mr r30, r3
lbl_8071BAEC:
/* 8071BAEC  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 8071BAF0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071BAF4  28 03 00 00 */	cmplwi r3, 0
/* 8071BAF8  41 82 00 10 */	beq lbl_8071BB08
/* 8071BAFC  80 03 00 04 */	lwz r0, 4(r3)
/* 8071BB00  28 00 00 00 */	cmplwi r0, 0
/* 8071BB04  40 82 00 0C */	bne lbl_8071BB10
lbl_8071BB08:
/* 8071BB08  38 60 00 00 */	li r3, 0
/* 8071BB0C  48 00 01 A8 */	b lbl_8071BCB4
lbl_8071BB10:
/* 8071BB10  38 60 00 18 */	li r3, 0x18
/* 8071BB14  4B BB 31 38 */	b __nw__FUl
/* 8071BB18  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071BB1C  41 82 00 20 */	beq lbl_8071BB3C
/* 8071BB20  3C 80 80 72 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8071BB24  38 04 CA 44 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8071BB28  90 1E 00 00 */	stw r0, 0(r30)
/* 8071BB2C  38 80 00 00 */	li r4, 0
/* 8071BB30  4B C0 C8 CC */	b init__12J3DFrameCtrlFs
/* 8071BB34  38 00 00 00 */	li r0, 0
/* 8071BB38  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8071BB3C:
/* 8071BB3C  93 DF 05 D0 */	stw r30, 0x5d0(r31)
/* 8071BB40  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 8071BB44  28 00 00 00 */	cmplwi r0, 0
/* 8071BB48  40 82 00 0C */	bne lbl_8071BB54
/* 8071BB4C  38 60 00 00 */	li r3, 0
/* 8071BB50  48 00 01 64 */	b lbl_8071BCB4
lbl_8071BB54:
/* 8071BB54  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071BB58  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071BB5C  38 80 00 37 */	li r4, 0x37
/* 8071BB60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8071BB64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8071BB68  3F C5 00 02 */	addis r30, r5, 2
/* 8071BB6C  3B DE C2 F8 */	addi r30, r30, -15624
/* 8071BB70  7F C5 F3 78 */	mr r5, r30
/* 8071BB74  38 C0 00 80 */	li r6, 0x80
/* 8071BB78  4B 92 07 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071BB7C  7C 65 1B 78 */	mr r5, r3
/* 8071BB80  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071BB84  80 63 00 04 */	lwz r3, 4(r3)
/* 8071BB88  80 83 00 04 */	lwz r4, 4(r3)
/* 8071BB8C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8071BB90  38 84 00 58 */	addi r4, r4, 0x58
/* 8071BB94  38 C0 00 01 */	li r6, 1
/* 8071BB98  38 E0 00 00 */	li r7, 0
/* 8071BB9C  3D 00 80 72 */	lis r8, lit_3778@ha
/* 8071BBA0  C0 28 C5 48 */	lfs f1, lit_3778@l(r8)
/* 8071BBA4  39 00 00 00 */	li r8, 0
/* 8071BBA8  39 20 FF FF */	li r9, -1
/* 8071BBAC  4B 8F 19 A0 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 8071BBB0  2C 03 00 00 */	cmpwi r3, 0
/* 8071BBB4  40 82 00 0C */	bne lbl_8071BBC0
/* 8071BBB8  38 60 00 00 */	li r3, 0
/* 8071BBBC  48 00 00 F8 */	b lbl_8071BCB4
lbl_8071BBC0:
/* 8071BBC0  38 60 00 54 */	li r3, 0x54
/* 8071BBC4  4B BB 30 88 */	b __nw__FUl
/* 8071BBC8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8071BBCC  41 82 00 8C */	beq lbl_8071BC58
/* 8071BBD0  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071BBD4  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071BBD8  38 80 00 29 */	li r4, 0x29
/* 8071BBDC  7F C5 F3 78 */	mr r5, r30
/* 8071BBE0  38 C0 00 80 */	li r6, 0x80
/* 8071BBE4  4B 92 07 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071BBE8  7C 7C 1B 78 */	mr r28, r3
/* 8071BBEC  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071BBF0  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071BBF4  38 80 00 31 */	li r4, 0x31
/* 8071BBF8  7F C5 F3 78 */	mr r5, r30
/* 8071BBFC  38 C0 00 80 */	li r6, 0x80
/* 8071BC00  4B 92 06 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071BC04  7C 64 1B 78 */	mr r4, r3
/* 8071BC08  38 00 00 01 */	li r0, 1
/* 8071BC0C  90 01 00 08 */	stw r0, 8(r1)
/* 8071BC10  38 00 00 00 */	li r0, 0
/* 8071BC14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071BC18  3C 00 00 08 */	lis r0, 8
/* 8071BC1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071BC20  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8071BC24  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8071BC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071BC2C  7F A3 EB 78 */	mr r3, r29
/* 8071BC30  38 A0 00 00 */	li r5, 0
/* 8071BC34  38 C0 00 00 */	li r6, 0
/* 8071BC38  7F 87 E3 78 */	mr r7, r28
/* 8071BC3C  39 00 00 00 */	li r8, 0
/* 8071BC40  3D 20 80 72 */	lis r9, lit_3778@ha
/* 8071BC44  C0 29 C5 48 */	lfs f1, lit_3778@l(r9)
/* 8071BC48  39 20 00 00 */	li r9, 0
/* 8071BC4C  39 40 FF FF */	li r10, -1
/* 8071BC50  4B 8F 3F FC */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8071BC54  7C 7D 1B 78 */	mr r29, r3
lbl_8071BC58:
/* 8071BC58  93 BF 05 DC */	stw r29, 0x5dc(r31)
/* 8071BC5C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071BC60  28 03 00 00 */	cmplwi r3, 0
/* 8071BC64  41 82 00 10 */	beq lbl_8071BC74
/* 8071BC68  80 03 00 04 */	lwz r0, 4(r3)
/* 8071BC6C  28 00 00 00 */	cmplwi r0, 0
/* 8071BC70  40 82 00 0C */	bne lbl_8071BC7C
lbl_8071BC74:
/* 8071BC74  38 60 00 00 */	li r3, 0
/* 8071BC78  48 00 00 3C */	b lbl_8071BCB4
lbl_8071BC7C:
/* 8071BC7C  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071BC80  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071BC84  38 80 00 2E */	li r4, 0x2e
/* 8071BC88  7F C5 F3 78 */	mr r5, r30
/* 8071BC8C  38 C0 00 80 */	li r6, 0x80
/* 8071BC90  4B 92 06 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071BC94  3C 80 00 08 */	lis r4, 8
/* 8071BC98  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8071BC9C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8071BCA0  4B 8F 8F B4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8071BCA4  90 7F 06 08 */	stw r3, 0x608(r31)
/* 8071BCA8  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 8071BCAC  30 03 FF FF */	addic r0, r3, -1
/* 8071BCB0  7C 60 19 10 */	subfe r3, r0, r3
lbl_8071BCB4:
/* 8071BCB4  39 61 00 30 */	addi r11, r1, 0x30
/* 8071BCB8  4B C4 65 6C */	b _restgpr_28
/* 8071BCBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071BCC0  7C 08 03 A6 */	mtlr r0
/* 8071BCC4  38 21 00 30 */	addi r1, r1, 0x30
/* 8071BCC8  4E 80 00 20 */	blr 
