lbl_80A9F4EC:
/* 80A9F4EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A9F4F0  7C 08 02 A6 */	mflr r0
/* 80A9F4F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A9F4F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9F4FC  4B 8C 2C D8 */	b _savegpr_27
/* 80A9F500  7C 7E 1B 78 */	mr r30, r3
/* 80A9F504  7C 9B 23 78 */	mr r27, r4
/* 80A9F508  7C BF 2B 78 */	mr r31, r5
/* 80A9F50C  3C 60 80 AA */	lis r3, lit_5713@ha
/* 80A9F510  38 83 17 AC */	addi r4, r3, lit_5713@l
/* 80A9F514  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9F518  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F51C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9F520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9F524  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9F528  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A9F52C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80A9F530  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9F534  4B 6A 61 D4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F538  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A9F53C  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9F540  4B 6A 61 C8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F544  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A9F548  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9F54C  4B 6A 61 BC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F550  7C 7D 1B 78 */	mr r29, r3
/* 80A9F554  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9F558  4B 6A 61 B0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F55C  3C 60 80 AA */	lis r3, lit_5714@ha
/* 80A9F560  38 83 17 B8 */	addi r4, r3, lit_5714@l
/* 80A9F564  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9F568  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F56C  90 61 00 08 */	stw r3, 8(r1)
/* 80A9F570  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9F574  3B 80 00 00 */	li r28, 0
/* 80A9F578  80 7B 00 00 */	lwz r3, 0(r27)
/* 80A9F57C  38 03 FF FB */	addi r0, r3, -5
/* 80A9F580  28 00 00 19 */	cmplwi r0, 0x19
/* 80A9F584  41 81 00 E4 */	bgt lbl_80A9F668
/* 80A9F588  3C 60 80 AA */	lis r3, lit_5741@ha
/* 80A9F58C  38 63 29 5C */	addi r3, r3, lit_5741@l
/* 80A9F590  54 00 10 3A */	slwi r0, r0, 2
/* 80A9F594  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A9F598  7C 09 03 A6 */	mtctr r0
/* 80A9F59C  4E 80 04 20 */	bctr 
lbl_80A9F5A0:
/* 80A9F5A0  7F C3 F3 78 */	mr r3, r30
/* 80A9F5A4  38 80 08 00 */	li r4, 0x800
/* 80A9F5A8  4B FF EC 7D */	bl _turn_to_link__18daNpc_Pachi_Taro_cFs
/* 80A9F5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F5B0  41 82 00 BC */	beq lbl_80A9F66C
/* 80A9F5B4  3B 80 00 01 */	li r28, 1
/* 80A9F5B8  48 00 00 B4 */	b lbl_80A9F66C
lbl_80A9F5BC:
/* 80A9F5BC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9F5C0  90 01 00 08 */	stw r0, 8(r1)
/* 80A9F5C4  7F C3 F3 78 */	mr r3, r30
/* 80A9F5C8  38 81 00 08 */	addi r4, r1, 8
/* 80A9F5CC  38 A0 00 00 */	li r5, 0
/* 80A9F5D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A9F5D4  38 E0 00 00 */	li r7, 0
/* 80A9F5D8  4B 6A C6 A0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F5DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F5E0  41 82 00 8C */	beq lbl_80A9F66C
/* 80A9F5E4  3B 80 00 01 */	li r28, 1
/* 80A9F5E8  48 00 00 84 */	b lbl_80A9F66C
lbl_80A9F5EC:
/* 80A9F5EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9F5F0  90 01 00 08 */	stw r0, 8(r1)
/* 80A9F5F4  7F C3 F3 78 */	mr r3, r30
/* 80A9F5F8  38 81 00 08 */	addi r4, r1, 8
/* 80A9F5FC  38 A0 00 00 */	li r5, 0
/* 80A9F600  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A9F604  38 E0 00 00 */	li r7, 0
/* 80A9F608  4B 6A C6 70 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F60C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F610  41 82 00 5C */	beq lbl_80A9F66C
/* 80A9F614  3B 80 00 01 */	li r28, 1
/* 80A9F618  48 00 00 54 */	b lbl_80A9F66C
lbl_80A9F61C:
/* 80A9F61C  7F C3 F3 78 */	mr r3, r30
/* 80A9F620  38 80 00 00 */	li r4, 0
/* 80A9F624  38 A0 00 00 */	li r5, 0
/* 80A9F628  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A9F62C  38 E0 00 00 */	li r7, 0
/* 80A9F630  4B 6A C6 48 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F634  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F638  41 82 00 0C */	beq lbl_80A9F644
/* 80A9F63C  3B 80 00 01 */	li r28, 1
/* 80A9F640  48 00 00 2C */	b lbl_80A9F66C
lbl_80A9F644:
/* 80A9F644  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A9F648  4B 7A AE F8 */	b getNowMsgNo__10dMsgFlow_cFv
/* 80A9F64C  28 03 16 98 */	cmplwi r3, 0x1698
/* 80A9F650  41 82 00 0C */	beq lbl_80A9F65C
/* 80A9F654  28 03 16 7C */	cmplwi r3, 0x167c
/* 80A9F658  40 82 00 14 */	bne lbl_80A9F66C
lbl_80A9F65C:
/* 80A9F65C  38 00 00 01 */	li r0, 1
/* 80A9F660  98 1D 0F 86 */	stb r0, 0xf86(r29)
/* 80A9F664  48 00 00 08 */	b lbl_80A9F66C
lbl_80A9F668:
/* 80A9F668  3B 80 00 01 */	li r28, 1
lbl_80A9F66C:
/* 80A9F66C  7F 83 E3 78 */	mr r3, r28
/* 80A9F670  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9F674  4B 8C 2B AC */	b _restgpr_27
/* 80A9F678  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A9F67C  7C 08 03 A6 */	mtlr r0
/* 80A9F680  38 21 00 40 */	addi r1, r1, 0x40
/* 80A9F684  4E 80 00 20 */	blr 
