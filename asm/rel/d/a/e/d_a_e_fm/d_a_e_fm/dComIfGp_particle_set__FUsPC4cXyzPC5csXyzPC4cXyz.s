lbl_804FA4C0:
/* 804FA4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FA4C4  7C 08 02 A6 */	mflr r0
/* 804FA4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FA4CC  7C 6A 1B 78 */	mr r10, r3
/* 804FA4D0  7C 87 23 78 */	mr r7, r4
/* 804FA4D4  7C A8 2B 78 */	mr r8, r5
/* 804FA4D8  7C C9 33 78 */	mr r9, r6
/* 804FA4DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FA4E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FA4E4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804FA4E8  38 80 00 00 */	li r4, 0
/* 804FA4EC  90 81 00 08 */	stw r4, 8(r1)
/* 804FA4F0  38 00 FF FF */	li r0, -1
/* 804FA4F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FA4F8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804FA4FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FA500  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FA504  38 80 00 00 */	li r4, 0
/* 804FA508  7D 45 53 78 */	mr r5, r10
/* 804FA50C  7C E6 3B 78 */	mr r6, r7
/* 804FA510  38 E0 00 00 */	li r7, 0
/* 804FA514  39 40 00 FF */	li r10, 0xff
/* 804FA518  3D 60 80 50 */	lis r11, lit_3777@ha /* 0x804FA6BC@ha */
/* 804FA51C  C0 2B A6 BC */	lfs f1, lit_3777@l(r11)  /* 0x804FA6BC@l */
/* 804FA520  4B B5 25 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FA524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FA528  7C 08 03 A6 */	mtlr r0
/* 804FA52C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FA530  4E 80 00 20 */	blr 
