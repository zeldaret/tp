lbl_801ADBBC:
/* 801ADBBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADBC0  7C 08 02 A6 */	mflr r0
/* 801ADBC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADBC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ADBCC  93 C1 00 08 */	stw r30, 8(r1)
/* 801ADBD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801ADBD4  7C 9F 23 78 */	mr r31, r4
/* 801ADBD8  41 82 00 B0 */	beq lbl_801ADC88
/* 801ADBDC  3C 60 80 3C */	lis r3, __vt__18dScnKy_env_light_c@ha
/* 801ADBE0  38 03 C1 3C */	addi r0, r3, __vt__18dScnKy_env_light_c@l
/* 801ADBE4  90 1E 00 00 */	stw r0, 0(r30)
/* 801ADBE8  38 7E 0D 58 */	addi r3, r30, 0xd58
/* 801ADBEC  3C 80 80 1A */	lis r4, __dt__10BOSS_LIGHTFv@ha
/* 801ADBF0  38 84 F4 38 */	addi r4, r4, __dt__10BOSS_LIGHTFv@l
/* 801ADBF4  38 A0 00 28 */	li r5, 0x28
/* 801ADBF8  38 C0 00 06 */	li r6, 6
/* 801ADBFC  48 1B 40 ED */	bl __destroy_arr
/* 801ADC00  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 801ADC04  3C 80 80 1A */	lis r4, __dt__10BOSS_LIGHTFv@ha
/* 801ADC08  38 84 F4 38 */	addi r4, r4, __dt__10BOSS_LIGHTFv@l
/* 801ADC0C  38 A0 00 28 */	li r5, 0x28
/* 801ADC10  38 C0 00 08 */	li r6, 8
/* 801ADC14  48 1B 40 D5 */	bl __destroy_arr
/* 801ADC18  38 7E 09 B8 */	addi r3, r30, 0x9b8
/* 801ADC1C  3C 80 80 1A */	lis r4, __dt__13DUNGEON_LIGHTFv@ha
/* 801ADC20  38 84 F4 78 */	addi r4, r4, __dt__13DUNGEON_LIGHTFv@l
/* 801ADC24  38 A0 00 4C */	li r5, 0x4c
/* 801ADC28  38 C0 00 08 */	li r6, 8
/* 801ADC2C  48 1B 40 BD */	bl __destroy_arr
/* 801ADC30  38 7E 08 48 */	addi r3, r30, 0x848
/* 801ADC34  3C 80 80 1A */	lis r4, __dt__15WIND_INF_ENTITYFv@ha
/* 801ADC38  38 84 F4 B8 */	addi r4, r4, __dt__15WIND_INF_ENTITYFv@l
/* 801ADC3C  38 A0 00 3C */	li r5, 0x3c
/* 801ADC40  38 C0 00 05 */	li r6, 5
/* 801ADC44  48 1B 40 A5 */	bl __destroy_arr
/* 801ADC48  38 7E 07 64 */	addi r3, r30, 0x764
/* 801ADC4C  3C 80 80 0D */	lis r4, __dt__15LIGHT_INFLUENCEFv@ha
/* 801ADC50  38 84 FC 7C */	addi r4, r4, __dt__15LIGHT_INFLUENCEFv@l
/* 801ADC54  38 A0 00 20 */	li r5, 0x20
/* 801ADC58  38 C0 00 02 */	li r6, 2
/* 801ADC5C  48 1B 40 8D */	bl __destroy_arr
/* 801ADC60  38 7E 00 38 */	addi r3, r30, 0x38
/* 801ADC64  3C 80 80 0D */	lis r4, __dt__15LIGHT_INFLUENCEFv@ha
/* 801ADC68  38 84 FC 7C */	addi r4, r4, __dt__15LIGHT_INFLUENCEFv@l
/* 801ADC6C  38 A0 00 20 */	li r5, 0x20
/* 801ADC70  38 C0 00 1E */	li r6, 0x1e
/* 801ADC74  48 1B 40 75 */	bl __destroy_arr
/* 801ADC78  7F E0 07 35 */	extsh. r0, r31
/* 801ADC7C  40 81 00 0C */	ble lbl_801ADC88
/* 801ADC80  7F C3 F3 78 */	mr r3, r30
/* 801ADC84  48 12 10 B9 */	bl __dl__FPv
lbl_801ADC88:
/* 801ADC88  7F C3 F3 78 */	mr r3, r30
/* 801ADC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ADC90  83 C1 00 08 */	lwz r30, 8(r1)
/* 801ADC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADC98  7C 08 03 A6 */	mtlr r0
/* 801ADC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADCA0  4E 80 00 20 */	blr 
