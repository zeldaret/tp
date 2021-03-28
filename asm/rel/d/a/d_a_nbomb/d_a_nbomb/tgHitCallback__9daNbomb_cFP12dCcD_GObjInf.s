lbl_804C6E34:
/* 804C6E34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C6E38  7C 08 02 A6 */	mflr r0
/* 804C6E3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C6E40  39 61 00 30 */	addi r11, r1, 0x30
/* 804C6E44  4B E9 B3 98 */	b _savegpr_29
/* 804C6E48  7C 7E 1B 78 */	mr r30, r3
/* 804C6E4C  7C 9F 23 78 */	mr r31, r4
/* 804C6E50  3C A0 80 4D */	lis r5, lit_3767@ha
/* 804C6E54  3B A5 C3 40 */	addi r29, r5, lit_3767@l
/* 804C6E58  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 804C6E5C  54 A0 03 DF */	rlwinm. r0, r5, 0, 0xf, 0xf
/* 804C6E60  41 82 00 2C */	beq lbl_804C6E8C
/* 804C6E64  80 BE 04 9C */	lwz r5, 0x49c(r30)
/* 804C6E68  54 A0 04 A5 */	rlwinm. r0, r5, 0, 0x12, 0x12
/* 804C6E6C  40 82 00 E0 */	bne lbl_804C6F4C
/* 804C6E70  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 804C6E74  40 82 00 D8 */	bne lbl_804C6F4C
/* 804C6E78  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C6E7C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C6E80  40 82 00 CC */	bne lbl_804C6F4C
/* 804C6E84  48 00 35 35 */	bl procBoomerangMoveInit__9daNbomb_cFP12dCcD_GObjInf
/* 804C6E88  48 00 00 C4 */	b lbl_804C6F4C
lbl_804C6E8C:
/* 804C6E8C  54 A0 04 63 */	rlwinm. r0, r5, 0, 0x11, 0x11
/* 804C6E90  41 82 00 40 */	beq lbl_804C6ED0
/* 804C6E94  80 9E 04 9C */	lwz r4, 0x49c(r30)
/* 804C6E98  54 80 03 19 */	rlwinm. r0, r4, 0, 0xc, 0xc
/* 804C6E9C  41 82 00 34 */	beq lbl_804C6ED0
/* 804C6EA0  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 804C6EA4  41 82 00 08 */	beq lbl_804C6EAC
/* 804C6EA8  4B B5 5C F8 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
lbl_804C6EAC:
/* 804C6EAC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 804C6EB0  64 00 00 10 */	oris r0, r0, 0x10
/* 804C6EB4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 804C6EB8  7F C3 F3 78 */	mr r3, r30
/* 804C6EBC  48 00 25 25 */	bl procCarryInit__9daNbomb_cFv
/* 804C6EC0  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C6EC4  60 00 40 00 */	ori r0, r0, 0x4000
/* 804C6EC8  90 1E 0B 4C */	stw r0, 0xb4c(r30)
/* 804C6ECC  48 00 00 80 */	b lbl_804C6F4C
lbl_804C6ED0:
/* 804C6ED0  54 A0 05 AD */	rlwinm. r0, r5, 0, 0x16, 0x16
/* 804C6ED4  41 82 00 6C */	beq lbl_804C6F40
/* 804C6ED8  88 1F 00 75 */	lbz r0, 0x75(r31)
/* 804C6EDC  28 00 00 03 */	cmplwi r0, 3
/* 804C6EE0  40 82 00 6C */	bne lbl_804C6F4C
/* 804C6EE4  7F C3 F3 78 */	mr r3, r30
/* 804C6EE8  4B B6 B0 AC */	b checkStateCarry__7dBomb_cFv
/* 804C6EEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C6EF0  40 82 00 5C */	bne lbl_804C6F4C
/* 804C6EF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804C6EF8  28 00 00 00 */	cmplwi r0, 0
/* 804C6EFC  41 82 00 50 */	beq lbl_804C6F4C
/* 804C6F00  28 00 00 04 */	cmplwi r0, 4
/* 804C6F04  41 82 00 48 */	beq lbl_804C6F4C
/* 804C6F08  38 61 00 08 */	addi r3, r1, 8
/* 804C6F0C  38 9F 00 84 */	addi r4, r31, 0x84
/* 804C6F10  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 804C6F14  4B D9 FC 70 */	b __ml__4cXyzCFf
/* 804C6F18  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 804C6F1C  38 81 00 08 */	addi r4, r1, 8
/* 804C6F20  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 804C6F24  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 804C6F28  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 804C6F2C  4B DA 8B 8C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 804C6F30  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C6F34  60 00 80 00 */	ori r0, r0, 0x8000
/* 804C6F38  90 1E 0B 4C */	stw r0, 0xb4c(r30)
/* 804C6F3C  48 00 00 10 */	b lbl_804C6F4C
lbl_804C6F40:
/* 804C6F40  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C6F44  60 00 00 04 */	ori r0, r0, 4
/* 804C6F48  90 1E 0B 4C */	stw r0, 0xb4c(r30)
lbl_804C6F4C:
/* 804C6F4C  88 1F 00 75 */	lbz r0, 0x75(r31)
/* 804C6F50  28 00 00 02 */	cmplwi r0, 2
/* 804C6F54  40 82 00 0C */	bne lbl_804C6F60
/* 804C6F58  7F C3 F3 78 */	mr r3, r30
/* 804C6F5C  48 00 19 71 */	bl setFreeze__9daNbomb_cFv
lbl_804C6F60:
/* 804C6F60  39 61 00 30 */	addi r11, r1, 0x30
/* 804C6F64  4B E9 B2 C4 */	b _restgpr_29
/* 804C6F68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C6F6C  7C 08 03 A6 */	mtlr r0
/* 804C6F70  38 21 00 30 */	addi r1, r1, 0x30
/* 804C6F74  4E 80 00 20 */	blr 
