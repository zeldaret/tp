lbl_8001FE84:
/* 8001FE84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001FE88  7C 08 02 A6 */	mflr r0
/* 8001FE8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001FE90  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FE94  48 34 23 49 */	bl _savegpr_29
/* 8001FE98  7C 7D 1B 78 */	mr r29, r3
/* 8001FE9C  7C 9E 23 78 */	mr r30, r4
/* 8001FEA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001FEA4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001FEA8  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8001FEAC  28 00 00 08 */	cmplwi r0, 8
/* 8001FEB0  40 82 00 14 */	bne lbl_8001FEC4
/* 8001FEB4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8001FEB8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8001FEBC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8001FEC0  48 1F F8 2D */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_8001FEC4:
/* 8001FEC4  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8001FEC8  28 00 00 00 */	cmplwi r0, 0
/* 8001FECC  41 82 00 2C */	beq lbl_8001FEF8
/* 8001FED0  28 00 00 05 */	cmplwi r0, 5
/* 8001FED4  41 82 00 24 */	beq lbl_8001FEF8
/* 8001FED8  28 00 00 02 */	cmplwi r0, 2
/* 8001FEDC  41 82 00 1C */	beq lbl_8001FEF8
/* 8001FEE0  28 00 00 03 */	cmplwi r0, 3
/* 8001FEE4  41 82 00 14 */	beq lbl_8001FEF8
/* 8001FEE8  28 00 00 01 */	cmplwi r0, 1
/* 8001FEEC  41 82 00 0C */	beq lbl_8001FEF8
/* 8001FEF0  38 60 FF FF */	li r3, -1
/* 8001FEF4  48 00 00 B8 */	b lbl_8001FFAC
lbl_8001FEF8:
/* 8001FEF8  C0 02 82 70 */	lfs f0, lit_3902(r2)
/* 8001FEFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001FF00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001FF04  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001FF08  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 8001FF0C  4B FF FB 19 */	bl fopMsgM_SearchByID__FUi
/* 8001FF10  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001FF14  41 82 00 94 */	beq lbl_8001FFA8
/* 8001FF18  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8001FF1C  28 00 00 01 */	cmplwi r0, 1
/* 8001FF20  40 82 00 50 */	bne lbl_8001FF70
/* 8001FF24  C0 01 00 08 */	lfs f0, 8(r1)
/* 8001FF28  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 8001FF2C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001FF30  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 8001FF34  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8001FF38  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 8001FF3C  93 BF 00 EC */	stw r29, 0xec(r31)
/* 8001FF40  93 DF 00 F0 */	stw r30, 0xf0(r31)
/* 8001FF44  38 00 00 00 */	li r0, 0
/* 8001FF48  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8001FF4C  38 60 00 00 */	li r3, 0
/* 8001FF50  48 21 7B 25 */	bl setTalkPartner__12dMsgObject_cFP10fopAc_ac_c
/* 8001FF54  7F E3 FB 78 */	mr r3, r31
/* 8001FF58  7F A4 EB 78 */	mr r4, r29
/* 8001FF5C  7F C5 F3 78 */	mr r5, r30
/* 8001FF60  38 C0 00 00 */	li r6, 0
/* 8001FF64  48 21 3D A1 */	bl setMessageIndex__12dMsgObject_cFUlUlb
/* 8001FF68  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 8001FF6C  48 00 00 40 */	b lbl_8001FFAC
lbl_8001FF70:
/* 8001FF70  28 00 00 0F */	cmplwi r0, 0xf
/* 8001FF74  40 82 00 34 */	bne lbl_8001FFA8
/* 8001FF78  C0 01 00 08 */	lfs f0, 8(r1)
/* 8001FF7C  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 8001FF80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001FF84  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 8001FF88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8001FF8C  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 8001FF90  93 BF 00 EC */	stw r29, 0xec(r31)
/* 8001FF94  93 DF 00 F0 */	stw r30, 0xf0(r31)
/* 8001FF98  38 00 00 00 */	li r0, 0
/* 8001FF9C  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8001FFA0  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 8001FFA4  48 00 00 08 */	b lbl_8001FFAC
lbl_8001FFA8:
/* 8001FFA8  38 60 00 00 */	li r3, 0
lbl_8001FFAC:
/* 8001FFAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FFB0  48 34 22 79 */	bl _restgpr_29
/* 8001FFB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001FFB8  7C 08 03 A6 */	mtlr r0
/* 8001FFBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8001FFC0  4E 80 00 20 */	blr 
