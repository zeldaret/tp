lbl_80A9EEBC:
/* 80A9EEBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9EEC0  7C 08 02 A6 */	mflr r0
/* 80A9EEC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9EEC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9EECC  4B 8C 33 0C */	b _savegpr_28
/* 80A9EED0  7C 7C 1B 78 */	mr r28, r3
/* 80A9EED4  7C 9D 23 78 */	mr r29, r4
/* 80A9EED8  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Taro_Param_c@ha
/* 80A9EEDC  3B E3 16 04 */	addi r31, r3, m__24daNpc_Pachi_Taro_Param_c@l
/* 80A9EEE0  80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 80A9EEE4  80 1F 01 40 */	lwz r0, 0x140(r31)
/* 80A9EEE8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A9EEEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A9EEF0  80 1F 01 44 */	lwz r0, 0x144(r31)
/* 80A9EEF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A9EEF8  93 81 00 14 */	stw r28, 0x14(r1)
/* 80A9EEFC  38 7C 0F 8C */	addi r3, r28, 0xf8c
/* 80A9EF00  4B 6A 68 08 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EF04  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A9EF08  38 7C 0F 94 */	addi r3, r28, 0xf94
/* 80A9EF0C  4B 6A 67 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EF10  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A9EF14  3B C0 00 00 */	li r30, 0
/* 80A9EF18  80 1D 00 00 */	lwz r0, 0(r29)
/* 80A9EF1C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9EF20  41 82 00 28 */	beq lbl_80A9EF48
/* 80A9EF24  40 80 00 10 */	bge lbl_80A9EF34
/* 80A9EF28  2C 00 00 05 */	cmpwi r0, 5
/* 80A9EF2C  41 82 00 14 */	beq lbl_80A9EF40
/* 80A9EF30  48 00 00 74 */	b lbl_80A9EFA4
lbl_80A9EF34:
/* 80A9EF34  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9EF38  41 82 00 48 */	beq lbl_80A9EF80
/* 80A9EF3C  48 00 00 68 */	b lbl_80A9EFA4
lbl_80A9EF40:
/* 80A9EF40  3B C0 00 01 */	li r30, 1
/* 80A9EF44  48 00 00 60 */	b lbl_80A9EFA4
lbl_80A9EF48:
/* 80A9EF48  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80A9EF4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A9EF50  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80A9EF54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A9EF58  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80A9EF5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A9EF60  7F 83 E3 78 */	mr r3, r28
/* 80A9EF64  38 81 00 08 */	addi r4, r1, 8
/* 80A9EF68  38 A0 10 00 */	li r5, 0x1000
/* 80A9EF6C  4B FF F3 05 */	bl _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyzs
/* 80A9EF70  2C 03 00 00 */	cmpwi r3, 0
/* 80A9EF74  41 82 00 30 */	beq lbl_80A9EFA4
/* 80A9EF78  3B C0 00 01 */	li r30, 1
/* 80A9EF7C  48 00 00 28 */	b lbl_80A9EFA4
lbl_80A9EF80:
/* 80A9EF80  7F 83 E3 78 */	mr r3, r28
/* 80A9EF84  38 80 00 00 */	li r4, 0
/* 80A9EF88  38 A0 00 00 */	li r5, 0
/* 80A9EF8C  38 C1 00 14 */	addi r6, r1, 0x14
/* 80A9EF90  38 E0 00 00 */	li r7, 0
/* 80A9EF94  4B 6A CC E4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9EF98  2C 03 00 00 */	cmpwi r3, 0
/* 80A9EF9C  41 82 00 08 */	beq lbl_80A9EFA4
/* 80A9EFA0  3B C0 00 01 */	li r30, 1
lbl_80A9EFA4:
/* 80A9EFA4  7F C3 F3 78 */	mr r3, r30
/* 80A9EFA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9EFAC  4B 8C 32 78 */	b _restgpr_28
/* 80A9EFB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9EFB4  7C 08 03 A6 */	mtlr r0
/* 80A9EFB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9EFBC  4E 80 00 20 */	blr 
