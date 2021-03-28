lbl_8059BA1C:
/* 8059BA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BA20  7C 08 02 A6 */	mflr r0
/* 8059BA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BA2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8059BA30  7C 7F 1B 78 */	mr r31, r3
/* 8059BA34  3C 60 80 5A */	lis r3, l_arcName@ha
/* 8059BA38  38 63 C6 FC */	addi r3, r3, l_arcName@l
/* 8059BA3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8059BA40  38 80 00 04 */	li r4, 4
/* 8059BA44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8059BA48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8059BA4C  3F C5 00 02 */	addis r30, r5, 2
/* 8059BA50  3B DE C2 F8 */	addi r30, r30, -15624
/* 8059BA54  7F C5 F3 78 */	mr r5, r30
/* 8059BA58  38 C0 00 80 */	li r6, 0x80
/* 8059BA5C  4B AA 08 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059BA60  3C 80 00 08 */	lis r4, 8
/* 8059BA64  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8059BA68  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8059BA6C  4B A7 91 E8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8059BA70  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 8059BA74  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 8059BA78  28 00 00 00 */	cmplwi r0, 0
/* 8059BA7C  40 82 00 0C */	bne lbl_8059BA88
/* 8059BA80  38 60 00 00 */	li r3, 0
/* 8059BA84  48 00 00 80 */	b lbl_8059BB04
lbl_8059BA88:
/* 8059BA88  38 60 00 C0 */	li r3, 0xc0
/* 8059BA8C  4B D3 31 C0 */	b __nw__FUl
/* 8059BA90  7C 60 1B 79 */	or. r0, r3, r3
/* 8059BA94  41 82 00 0C */	beq lbl_8059BAA0
/* 8059BA98  4B AD FE D8 */	b __ct__4dBgWFv
/* 8059BA9C  7C 60 1B 78 */	mr r0, r3
lbl_8059BAA0:
/* 8059BAA0  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8059BAA4  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8059BAA8  28 00 00 00 */	cmplwi r0, 0
/* 8059BAAC  41 82 00 44 */	beq lbl_8059BAF0
/* 8059BAB0  3C 60 80 5A */	lis r3, l_arcName@ha
/* 8059BAB4  38 63 C6 FC */	addi r3, r3, l_arcName@l
/* 8059BAB8  80 63 00 00 */	lwz r3, 0(r3)
/* 8059BABC  3C 80 80 5A */	lis r4, l_dzbIdx@ha
/* 8059BAC0  38 84 C6 A4 */	addi r4, r4, l_dzbIdx@l
/* 8059BAC4  80 84 00 00 */	lwz r4, 0(r4)
/* 8059BAC8  7F C5 F3 78 */	mr r5, r30
/* 8059BACC  38 C0 00 80 */	li r6, 0x80
/* 8059BAD0  4B AA 08 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059BAD4  7C 64 1B 78 */	mr r4, r3
/* 8059BAD8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8059BADC  38 A0 00 01 */	li r5, 1
/* 8059BAE0  38 DF 05 BC */	addi r6, r31, 0x5bc
/* 8059BAE4  4B AD E4 54 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8059BAE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059BAEC  41 82 00 14 */	beq lbl_8059BB00
lbl_8059BAF0:
/* 8059BAF0  38 00 00 00 */	li r0, 0
/* 8059BAF4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8059BAF8  38 60 00 00 */	li r3, 0
/* 8059BAFC  48 00 00 08 */	b lbl_8059BB04
lbl_8059BB00:
/* 8059BB00  38 60 00 01 */	li r3, 1
lbl_8059BB04:
/* 8059BB04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BB08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059BB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BB10  7C 08 03 A6 */	mtlr r0
/* 8059BB14  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BB18  4E 80 00 20 */	blr 
