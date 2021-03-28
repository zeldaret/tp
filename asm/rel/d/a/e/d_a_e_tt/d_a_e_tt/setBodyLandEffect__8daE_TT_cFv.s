lbl_807BE2A8:
/* 807BE2A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807BE2AC  7C 08 02 A6 */	mflr r0
/* 807BE2B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 807BE2B4  39 61 00 50 */	addi r11, r1, 0x50
/* 807BE2B8  4B BA 3F 08 */	b _savegpr_22
/* 807BE2BC  7C 7E 1B 78 */	mr r30, r3
/* 807BE2C0  3C 60 80 7C */	lis r3, lit_1109@ha
/* 807BE2C4  3B E3 23 A0 */	addi r31, r3, lit_1109@l
/* 807BE2C8  88 1F 00 90 */	lbz r0, 0x90(r31)
/* 807BE2CC  7C 00 07 75 */	extsb. r0, r0
/* 807BE2D0  40 82 00 34 */	bne lbl_807BE304
/* 807BE2D4  3C 60 80 7C */	lis r3, lit_4297@ha
/* 807BE2D8  C0 03 20 28 */	lfs f0, lit_4297@l(r3)
/* 807BE2DC  D0 1F 00 94 */	stfs f0, 0x94(r31)
/* 807BE2E0  38 7F 00 94 */	addi r3, r31, 0x94
/* 807BE2E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 807BE2E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BE2EC  3C 80 80 7C */	lis r4, __dt__4cXyzFv@ha
/* 807BE2F0  38 84 1F 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 807BE2F4  38 BF 00 84 */	addi r5, r31, 0x84
/* 807BE2F8  4B FF F4 41 */	bl __register_global_object
/* 807BE2FC  38 00 00 01 */	li r0, 1
/* 807BE300  98 1F 00 90 */	stb r0, 0x90(r31)
lbl_807BE304:
/* 807BE304  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 807BE308  28 00 00 00 */	cmplwi r0, 0
/* 807BE30C  41 82 00 A8 */	beq lbl_807BE3B4
/* 807BE310  3A C0 00 00 */	li r22, 0
/* 807BE314  3B A0 00 00 */	li r29, 0
/* 807BE318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BE31C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 807BE320  3C 60 80 7C */	lis r3, w_eff_id_4272@ha
/* 807BE324  3B 63 21 C8 */	addi r27, r3, w_eff_id_4272@l
/* 807BE328  3B 80 00 01 */	li r28, 1
/* 807BE32C  7F B8 EB 78 */	mr r24, r29
/* 807BE330  3B 20 FF FF */	li r25, -1
/* 807BE334  7F BA EB 78 */	mr r26, r29
lbl_807BE338:
/* 807BE338  93 01 00 08 */	stw r24, 8(r1)
/* 807BE33C  93 21 00 0C */	stw r25, 0xc(r1)
/* 807BE340  93 41 00 10 */	stw r26, 0x10(r1)
/* 807BE344  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 807BE348  7C 9B EA 2E */	lhzx r4, r27, r29
/* 807BE34C  38 BE 06 78 */	addi r5, r30, 0x678
/* 807BE350  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 807BE354  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807BE358  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807BE35C  39 3F 00 94 */	addi r9, r31, 0x94
/* 807BE360  39 40 00 00 */	li r10, 0
/* 807BE364  4B 88 ED 04 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807BE368  28 03 00 00 */	cmplwi r3, 0
/* 807BE36C  41 82 00 08 */	beq lbl_807BE374
/* 807BE370  93 83 00 24 */	stw r28, 0x24(r3)
lbl_807BE374:
/* 807BE374  3A D6 00 01 */	addi r22, r22, 1
/* 807BE378  2C 16 00 04 */	cmpwi r22, 4
/* 807BE37C  3B BD 00 02 */	addi r29, r29, 2
/* 807BE380  41 80 FF B8 */	blt lbl_807BE338
/* 807BE384  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070251@ha */
/* 807BE388  38 03 02 51 */	addi r0, r3, 0x0251 /* 0x00070251@l */
/* 807BE38C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807BE390  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BE394  38 81 00 1C */	addi r4, r1, 0x1c
/* 807BE398  38 A0 00 00 */	li r5, 0
/* 807BE39C  38 C0 FF FF */	li r6, -1
/* 807BE3A0  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BE3A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BE3A8  7D 89 03 A6 */	mtctr r12
/* 807BE3AC  4E 80 04 21 */	bctrl 
/* 807BE3B0  48 00 00 70 */	b lbl_807BE420
lbl_807BE3B4:
/* 807BE3B4  38 60 00 00 */	li r3, 0
/* 807BE3B8  90 61 00 08 */	stw r3, 8(r1)
/* 807BE3BC  38 00 FF FF */	li r0, -1
/* 807BE3C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BE3C4  90 61 00 10 */	stw r3, 0x10(r1)
/* 807BE3C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BE3CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807BE3D0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807BE3D4  38 80 00 E7 */	li r4, 0xe7
/* 807BE3D8  38 BE 08 2C */	addi r5, r30, 0x82c
/* 807BE3DC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 807BE3E0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807BE3E4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807BE3E8  39 3F 00 94 */	addi r9, r31, 0x94
/* 807BE3EC  39 40 00 00 */	li r10, 0
/* 807BE3F0  4B 88 EC 78 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807BE3F4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807BE3F8  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807BE3FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 807BE400  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BE404  38 81 00 18 */	addi r4, r1, 0x18
/* 807BE408  38 A0 00 00 */	li r5, 0
/* 807BE40C  38 C0 FF FF */	li r6, -1
/* 807BE410  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BE414  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BE418  7D 89 03 A6 */	mtctr r12
/* 807BE41C  4E 80 04 21 */	bctrl 
lbl_807BE420:
/* 807BE420  39 61 00 50 */	addi r11, r1, 0x50
/* 807BE424  4B BA 3D E8 */	b _restgpr_22
/* 807BE428  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807BE42C  7C 08 03 A6 */	mtlr r0
/* 807BE430  38 21 00 50 */	addi r1, r1, 0x50
/* 807BE434  4E 80 00 20 */	blr 
