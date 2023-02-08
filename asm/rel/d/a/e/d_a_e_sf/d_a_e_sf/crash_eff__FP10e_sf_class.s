lbl_80787018:
/* 80787018  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8078701C  7C 08 02 A6 */	mflr r0
/* 80787020  90 01 00 54 */	stw r0, 0x54(r1)
/* 80787024  39 61 00 50 */	addi r11, r1, 0x50
/* 80787028  4B BD B1 A9 */	bl _savegpr_26
/* 8078702C  7C 7A 1B 78 */	mr r26, r3
/* 80787030  3C 60 80 79 */	lis r3, lit_4790@ha /* 0x80789CD8@ha */
/* 80787034  C0 03 9C D8 */	lfs f0, lit_4790@l(r3)  /* 0x80789CD8@l */
/* 80787038  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078703C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80787040  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80787044  3B 60 00 00 */	li r27, 0
/* 80787048  3B E0 00 00 */	li r31, 0
/* 8078704C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80787050  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80787054  3C 60 80 79 */	lis r3, ap_name@ha /* 0x80789E00@ha */
/* 80787058  3B A3 9E 00 */	addi r29, r3, ap_name@l /* 0x80789E00@l */
/* 8078705C  3C 60 80 79 */	lis r3, lit_3910@ha /* 0x80789C40@ha */
/* 80787060  3B C3 9C 40 */	addi r30, r3, lit_3910@l /* 0x80789C40@l */
lbl_80787064:
/* 80787064  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80787068  38 80 00 00 */	li r4, 0
/* 8078706C  90 81 00 08 */	stw r4, 8(r1)
/* 80787070  38 00 FF FF */	li r0, -1
/* 80787074  90 01 00 0C */	stw r0, 0xc(r1)
/* 80787078  90 81 00 10 */	stw r4, 0x10(r1)
/* 8078707C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80787080  90 81 00 18 */	stw r4, 0x18(r1)
/* 80787084  38 80 00 00 */	li r4, 0
/* 80787088  7C BD FA 2E */	lhzx r5, r29, r31
/* 8078708C  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80787090  38 E0 00 00 */	li r7, 0
/* 80787094  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 80787098  39 21 00 20 */	addi r9, r1, 0x20
/* 8078709C  39 40 00 FF */	li r10, 0xff
/* 807870A0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807870A4  4B 8C 59 ED */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807870A8  3B 7B 00 01 */	addi r27, r27, 1
/* 807870AC  2C 1B 00 02 */	cmpwi r27, 2
/* 807870B0  3B FF 00 02 */	addi r31, r31, 2
/* 807870B4  40 81 FF B0 */	ble lbl_80787064
/* 807870B8  39 61 00 50 */	addi r11, r1, 0x50
/* 807870BC  4B BD B1 61 */	bl _restgpr_26
/* 807870C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807870C4  7C 08 03 A6 */	mtlr r0
/* 807870C8  38 21 00 50 */	addi r1, r1, 0x50
/* 807870CC  4E 80 00 20 */	blr 
