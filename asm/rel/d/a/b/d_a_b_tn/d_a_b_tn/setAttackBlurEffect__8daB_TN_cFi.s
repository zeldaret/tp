lbl_80622BE0:
/* 80622BE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80622BE4  7C 08 02 A6 */	mflr r0
/* 80622BE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80622BEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80622BF0  4B D3 F5 D8 */	b _savegpr_24
/* 80622BF4  7C 7E 1B 78 */	mr r30, r3
/* 80622BF8  2C 04 00 00 */	cmpwi r4, 0
/* 80622BFC  41 82 00 D0 */	beq lbl_80622CCC
/* 80622C00  3B E0 00 00 */	li r31, 0
/* 80622C04  3B A0 00 00 */	li r29, 0
/* 80622C08  3B 80 00 00 */	li r28, 0
/* 80622C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80622C10  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80622C14  3C 60 80 63 */	lis r3, blur_effect_id_5997@ha
/* 80622C18  3B 23 ED 8C */	addi r25, r3, blur_effect_id_5997@l
/* 80622C1C  3C 60 80 63 */	lis r3, lit_3922@ha
/* 80622C20  3B 43 E6 3C */	addi r26, r3, lit_3922@l
lbl_80622C24:
/* 80622C24  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80622C28  38 00 00 FF */	li r0, 0xff
/* 80622C2C  90 01 00 08 */	stw r0, 8(r1)
/* 80622C30  38 80 00 00 */	li r4, 0
/* 80622C34  90 81 00 0C */	stw r4, 0xc(r1)
/* 80622C38  38 00 FF FF */	li r0, -1
/* 80622C3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80622C40  90 81 00 14 */	stw r4, 0x14(r1)
/* 80622C44  90 81 00 18 */	stw r4, 0x18(r1)
/* 80622C48  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80622C4C  3B 7C 56 1C */	addi r27, r28, 0x561c
/* 80622C50  7C 9E D8 2E */	lwzx r4, r30, r27
/* 80622C54  38 A0 00 00 */	li r5, 0
/* 80622C58  7C D9 EA 2E */	lhzx r6, r25, r29
/* 80622C5C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80622C60  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80622C64  39 20 00 00 */	li r9, 0
/* 80622C68  39 40 00 00 */	li r10, 0
/* 80622C6C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80622C70  4B A2 A8 5C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80622C74  7C 7E D9 2E */	stwx r3, r30, r27
/* 80622C78  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80622C7C  38 63 02 10 */	addi r3, r3, 0x210
/* 80622C80  7C 9E D8 2E */	lwzx r4, r30, r27
/* 80622C84  4B A2 8C 94 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80622C88  7C 7B 1B 79 */	or. r27, r3, r3
/* 80622C8C  41 82 00 2C */	beq lbl_80622CB8
/* 80622C90  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80622C94  38 63 00 24 */	addi r3, r3, 0x24
/* 80622C98  38 9B 00 68 */	addi r4, r27, 0x68
/* 80622C9C  38 BB 00 98 */	addi r5, r27, 0x98
/* 80622CA0  38 DB 00 A4 */	addi r6, r27, 0xa4
/* 80622CA4  4B C5 DB 64 */	b func_80280808
/* 80622CA8  C0 3B 00 9C */	lfs f1, 0x9c(r27)
/* 80622CAC  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 80622CB0  D0 1B 00 B0 */	stfs f0, 0xb0(r27)
/* 80622CB4  D0 3B 00 B4 */	stfs f1, 0xb4(r27)
lbl_80622CB8:
/* 80622CB8  3B FF 00 01 */	addi r31, r31, 1
/* 80622CBC  2C 1F 00 04 */	cmpwi r31, 4
/* 80622CC0  3B BD 00 02 */	addi r29, r29, 2
/* 80622CC4  3B 9C 00 04 */	addi r28, r28, 4
/* 80622CC8  41 80 FF 5C */	blt lbl_80622C24
lbl_80622CCC:
/* 80622CCC  39 61 00 40 */	addi r11, r1, 0x40
/* 80622CD0  4B D3 F5 44 */	b _restgpr_24
/* 80622CD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80622CD8  7C 08 03 A6 */	mtlr r0
/* 80622CDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80622CE0  4E 80 00 20 */	blr 
