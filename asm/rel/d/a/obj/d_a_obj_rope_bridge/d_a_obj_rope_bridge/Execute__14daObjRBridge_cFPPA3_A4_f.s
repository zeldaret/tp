lbl_80596EBC:
/* 80596EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80596EC0  7C 08 02 A6 */	mflr r0
/* 80596EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80596EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80596ECC  4B DC B3 11 */	bl _savegpr_29
/* 80596ED0  7C 7D 1B 78 */	mr r29, r3
/* 80596ED4  7C 9E 23 78 */	mr r30, r4
/* 80596ED8  3C 80 80 59 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80597E64@ha */
/* 80596EDC  3B E4 7E 64 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80597E64@l */
/* 80596EE0  48 00 00 C9 */	bl action__14daObjRBridge_cFv
/* 80596EE4  7F A3 EB 78 */	mr r3, r29
/* 80596EE8  4B FF F4 DD */	bl setLinePos__14daObjRBridge_cFv
/* 80596EEC  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80596EF0  90 1E 00 00 */	stw r0, 0(r30)
/* 80596EF4  7F A3 EB 78 */	mr r3, r29
/* 80596EF8  4B FF EF E1 */	bl setBaseMtx__14daObjRBridge_cFv
/* 80596EFC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80596F00  7C 03 07 74 */	extsb r3, r0
/* 80596F04  4B A9 61 69 */	bl dComIfGp_getReverb__Fi
/* 80596F08  7C 65 1B 78 */	mr r5, r3
/* 80596F0C  38 7D 0B 4C */	addi r3, r29, 0xb4c
/* 80596F10  38 80 00 00 */	li r4, 0
/* 80596F14  81 9D 0B 5C */	lwz r12, 0xb5c(r29)
/* 80596F18  81 8C 00 08 */	lwz r12, 8(r12)
/* 80596F1C  7D 89 03 A6 */	mtctr r12
/* 80596F20  4E 80 04 21 */	bctrl 
/* 80596F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80596F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80596F2C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80596F30  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80596F34  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80596F38  7C 05 07 74 */	extsb r5, r0
/* 80596F3C  4B A9 E4 25 */	bl isSwitch__10dSv_info_cCFii
/* 80596F40  2C 03 00 00 */	cmpwi r3, 0
/* 80596F44  40 82 00 48 */	bne lbl_80596F8C
/* 80596F48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80596F4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80596F50  88 1D 0A F0 */	lbz r0, 0xaf0(r29)
/* 80596F54  54 06 10 3A */	slwi r6, r0, 2
/* 80596F58  38 63 5B 6C */	addi r3, r3, 0x5b6c
/* 80596F5C  7F A4 EB 78 */	mr r4, r29
/* 80596F60  38 BF 00 98 */	addi r5, r31, 0x98
/* 80596F64  7C 25 34 2E */	lfsx f1, r5, r6
/* 80596F68  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 80596F6C  7C 45 34 2E */	lfsx f2, r5, r6
/* 80596F70  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80596F74  7C 65 34 2E */	lfsx f3, r5, r6
/* 80596F78  54 00 08 3C */	slwi r0, r0, 1
/* 80596F7C  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 80596F80  7C A5 02 AE */	lhax r5, r5, r0
/* 80596F84  38 C0 00 01 */	li r6, 1
/* 80596F88  4B AD CD 81 */	bl request__10dAttLook_cFP10fopAc_ac_cfffsi
lbl_80596F8C:
/* 80596F8C  38 60 00 01 */	li r3, 1
/* 80596F90  39 61 00 20 */	addi r11, r1, 0x20
/* 80596F94  4B DC B2 95 */	bl _restgpr_29
/* 80596F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80596F9C  7C 08 03 A6 */	mtlr r0
/* 80596FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80596FA4  4E 80 00 20 */	blr 
