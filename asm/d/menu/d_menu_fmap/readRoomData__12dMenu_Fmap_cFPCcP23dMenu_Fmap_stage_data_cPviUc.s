lbl_801CBF04:
/* 801CBF04  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801CBF08  7C 08 02 A6 */	mflr r0
/* 801CBF0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801CBF10  39 61 00 60 */	addi r11, r1, 0x60
/* 801CBF14  48 19 62 B5 */	bl _savegpr_24
/* 801CBF18  7C 7A 1B 78 */	mr r26, r3
/* 801CBF1C  7C 9B 23 78 */	mr r27, r4
/* 801CBF20  7C BC 2B 78 */	mr r28, r5
/* 801CBF24  7C D8 33 78 */	mr r24, r6
/* 801CBF28  3B C0 00 00 */	li r30, 0
/* 801CBF2C  38 00 00 00 */	li r0, 0
/* 801CBF30  90 05 00 0C */	stw r0, 0xc(r5)
/* 801CBF34  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CBF38  38 61 00 24 */	addi r3, r1, 0x24
/* 801CBF3C  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap__stringBase0@ha /* 0x803960E8@ha */
/* 801CBF40  38 84 60 E8 */	addi r4, r4, d_menu_d_menu_fmap__stringBase0@l /* 0x803960E8@l */
/* 801CBF44  38 84 00 4B */	addi r4, r4, 0x4b
/* 801CBF48  7F 65 DB 78 */	mr r5, r27
/* 801CBF4C  4C C6 31 82 */	crclr 6
/* 801CBF50  48 19 A5 8D */	bl sprintf
/* 801CBF54  7F 43 D3 78 */	mr r3, r26
/* 801CBF58  38 81 00 0C */	addi r4, r1, 0xc
/* 801CBF5C  38 A1 00 24 */	addi r5, r1, 0x24
/* 801CBF60  38 C0 00 00 */	li r6, 0
/* 801CBF64  38 E0 00 00 */	li r7, 0
/* 801CBF68  48 00 01 2D */	bl readFieldMapData__12dMenu_Fmap_cFPPvPCcbb
/* 801CBF6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CBF70  41 82 00 0C */	beq lbl_801CBF7C
/* 801CBF74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801CBF78  90 18 00 00 */	stw r0, 0(r24)
lbl_801CBF7C:
/* 801CBF7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CBF80  93 FC 00 08 */	stw r31, 8(r28)
/* 801CBF84  3B A0 00 00 */	li r29, 0
/* 801CBF88  3B 3F 00 04 */	addi r25, r31, 4
/* 801CBF8C  48 00 00 E0 */	b lbl_801CC06C
lbl_801CBF90:
/* 801CBF90  7F 43 D3 78 */	mr r3, r26
/* 801CBF94  88 99 00 00 */	lbz r4, 0(r25)
/* 801CBF98  48 00 0B 01 */	bl isRoomDataBit__12dMenu_Fmap_cFi
/* 801CBF9C  2C 03 00 00 */	cmpwi r3, 0
/* 801CBFA0  41 82 00 C4 */	beq lbl_801CC064
/* 801CBFA4  38 00 00 00 */	li r0, 0
/* 801CBFA8  90 01 00 08 */	stw r0, 8(r1)
/* 801CBFAC  38 61 00 10 */	addi r3, r1, 0x10
/* 801CBFB0  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap__stringBase0@ha /* 0x803960E8@ha */
/* 801CBFB4  38 84 60 E8 */	addi r4, r4, d_menu_d_menu_fmap__stringBase0@l /* 0x803960E8@l */
/* 801CBFB8  38 84 00 58 */	addi r4, r4, 0x58
/* 801CBFBC  7F 65 DB 78 */	mr r5, r27
/* 801CBFC0  88 D9 00 00 */	lbz r6, 0(r25)
/* 801CBFC4  4C C6 31 82 */	crclr 6
/* 801CBFC8  48 19 A5 15 */	bl sprintf
/* 801CBFCC  7F 43 D3 78 */	mr r3, r26
/* 801CBFD0  38 81 00 08 */	addi r4, r1, 8
/* 801CBFD4  38 A0 15 00 */	li r5, 0x1500
/* 801CBFD8  38 C1 00 10 */	addi r6, r1, 0x10
/* 801CBFDC  48 00 05 41 */	bl readRoomDzsData__12dMenu_Fmap_cFPPvUlPCc
/* 801CBFE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CBFE4  41 82 00 80 */	beq lbl_801CC064
/* 801CBFE8  38 60 00 10 */	li r3, 0x10
/* 801CBFEC  48 10 2C 61 */	bl __nw__FUl
/* 801CBFF0  7C 78 1B 79 */	or. r24, r3, r3
/* 801CBFF4  41 82 00 18 */	beq lbl_801CC00C
/* 801CBFF8  38 00 00 00 */	li r0, 0
/* 801CBFFC  90 18 00 00 */	stw r0, 0(r24)
/* 801CC000  90 18 00 04 */	stw r0, 4(r24)
/* 801CC004  90 18 00 08 */	stw r0, 8(r24)
/* 801CC008  90 18 00 0C */	stw r0, 0xc(r24)
lbl_801CC00C:
/* 801CC00C  38 60 00 14 */	li r3, 0x14
/* 801CC010  48 10 2C 3D */	bl __nw__FUl
/* 801CC014  28 03 00 00 */	cmplwi r3, 0
/* 801CC018  41 82 00 20 */	beq lbl_801CC038
/* 801CC01C  88 99 00 00 */	lbz r4, 0(r25)
/* 801CC020  93 03 00 00 */	stw r24, 0(r3)
/* 801CC024  38 00 00 00 */	li r0, 0
/* 801CC028  90 03 00 04 */	stw r0, 4(r3)
/* 801CC02C  90 03 00 08 */	stw r0, 8(r3)
/* 801CC030  93 83 00 0C */	stw r28, 0xc(r3)
/* 801CC034  98 83 00 10 */	stb r4, 0x10(r3)
lbl_801CC038:
/* 801CC038  28 1E 00 00 */	cmplwi r30, 0
/* 801CC03C  40 82 00 0C */	bne lbl_801CC048
/* 801CC040  90 7C 00 0C */	stw r3, 0xc(r28)
/* 801CC044  48 00 00 08 */	b lbl_801CC04C
lbl_801CC048:
/* 801CC048  90 7E 00 08 */	stw r3, 8(r30)
lbl_801CC04C:
/* 801CC04C  7C 7E 1B 78 */	mr r30, r3
/* 801CC050  80 01 00 08 */	lwz r0, 8(r1)
/* 801CC054  90 18 00 0C */	stw r0, 0xc(r24)
/* 801CC058  80 61 00 08 */	lwz r3, 8(r1)
/* 801CC05C  7F 04 C3 78 */	mr r4, r24
/* 801CC060  4B E5 AC 2D */	bl dStage_dt_c_fieldMapLoader__FPvP11dStage_dt_c
lbl_801CC064:
/* 801CC064  3B BD 00 01 */	addi r29, r29, 1
/* 801CC068  3B 39 00 01 */	addi r25, r25, 1
lbl_801CC06C:
/* 801CC06C  88 1F 00 00 */	lbz r0, 0(r31)
/* 801CC070  7C 1D 00 00 */	cmpw r29, r0
/* 801CC074  41 80 FF 1C */	blt lbl_801CBF90
/* 801CC078  38 60 00 01 */	li r3, 1
/* 801CC07C  39 61 00 60 */	addi r11, r1, 0x60
/* 801CC080  48 19 61 95 */	bl _restgpr_24
/* 801CC084  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801CC088  7C 08 03 A6 */	mtlr r0
/* 801CC08C  38 21 00 60 */	addi r1, r1, 0x60
/* 801CC090  4E 80 00 20 */	blr 
