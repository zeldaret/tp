lbl_80125628:
/* 80125628  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012562C  7C 08 02 A6 */	mflr r0
/* 80125630  90 01 00 34 */	stw r0, 0x34(r1)
/* 80125634  39 61 00 30 */	addi r11, r1, 0x30
/* 80125638  48 23 CB A1 */	bl _savegpr_28
/* 8012563C  7C 7C 1B 78 */	mr r28, r3
/* 80125640  3B A0 00 00 */	li r29, 0
/* 80125644  3B E0 00 00 */	li r31, 0
/* 80125648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012564C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80125650:
/* 80125650  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80125654  38 80 00 00 */	li r4, 0
/* 80125658  90 81 00 08 */	stw r4, 8(r1)
/* 8012565C  38 00 FF FF */	li r0, -1
/* 80125660  90 01 00 0C */	stw r0, 0xc(r1)
/* 80125664  90 81 00 10 */	stw r4, 0x10(r1)
/* 80125668  90 81 00 14 */	stw r4, 0x14(r1)
/* 8012566C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80125670  38 80 00 00 */	li r4, 0
/* 80125674  38 A2 97 14 */	la r5, effName_42340(r2) /* 80453114-_SDA2_BASE_ */
/* 80125678  7C A5 FA 2E */	lhzx r5, r5, r31
/* 8012567C  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 80125680  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80125684  39 00 00 00 */	li r8, 0
/* 80125688  39 20 00 00 */	li r9, 0
/* 8012568C  39 40 00 FF */	li r10, 0xff
/* 80125690  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80125694  4B F2 73 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80125698  7C 65 1B 79 */	or. r5, r3, r3
/* 8012569C  41 82 00 18 */	beq lbl_801256B4
/* 801256A0  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 801256A4  38 63 00 24 */	addi r3, r3, 0x24
/* 801256A8  38 85 00 68 */	addi r4, r5, 0x68
/* 801256AC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 801256B0  48 15 B1 31 */	bl func_802807E0
lbl_801256B4:
/* 801256B4  3B BD 00 01 */	addi r29, r29, 1
/* 801256B8  2C 1D 00 02 */	cmpwi r29, 2
/* 801256BC  3B FF 00 02 */	addi r31, r31, 2
/* 801256C0  41 80 FF 90 */	blt lbl_80125650
/* 801256C4  38 00 00 01 */	li r0, 1
/* 801256C8  98 1C 2F CB */	stb r0, 0x2fcb(r28)
/* 801256CC  7F 83 E3 78 */	mr r3, r28
/* 801256D0  4B FF FE ED */	bl clearWoodShieldBurnEffect__9daAlink_cFv
/* 801256D4  39 61 00 30 */	addi r11, r1, 0x30
/* 801256D8  48 23 CB 4D */	bl _restgpr_28
/* 801256DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801256E0  7C 08 03 A6 */	mtlr r0
/* 801256E4  38 21 00 30 */	addi r1, r1, 0x30
/* 801256E8  4E 80 00 20 */	blr 
