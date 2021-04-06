lbl_80C9243C:
/* 80C9243C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C92440  7C 08 02 A6 */	mflr r0
/* 80C92444  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C92448  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C9244C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C92450  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80C92454  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80C92458  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80C9245C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80C92460  39 61 00 40 */	addi r11, r1, 0x40
/* 80C92464  4B 6C FD 69 */	bl _savegpr_25
/* 80C92468  7C 79 1B 78 */	mr r25, r3
/* 80C9246C  3C 60 80 C9 */	lis r3, l_B_ling_bmd_table@ha /* 0x80C92C50@ha */
/* 80C92470  38 83 2C 50 */	addi r4, r3, l_B_ling_bmd_table@l /* 0x80C92C50@l */
/* 80C92474  3B 40 00 00 */	li r26, 0
/* 80C92478  3B E0 00 00 */	li r31, 0
/* 80C9247C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C92480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C92484  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80C92488  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9248C  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C92490  C3 A4 00 78 */	lfs f29, 0x78(r4)
/* 80C92494  C3 C4 00 7C */	lfs f30, 0x7c(r4)
/* 80C92498  C3 E4 00 80 */	lfs f31, 0x80(r4)
/* 80C9249C  48 00 00 A8 */	b lbl_80C92544
lbl_80C924A0:
/* 80C924A0  7F 99 FA 14 */	add r28, r25, r31
/* 80C924A4  38 7C 06 F0 */	addi r3, r28, 0x6f0
/* 80C924A8  4B 37 A8 BD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C924AC  38 7C 07 08 */	addi r3, r28, 0x708
/* 80C924B0  4B 37 AA 95 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C924B4  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C924B8  C0 1C 06 FC */	lfs f0, 0x6fc(r28)
/* 80C924BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C924C0  C0 1C 07 00 */	lfs f0, 0x700(r28)
/* 80C924C4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C924C8  C0 1C 07 04 */	lfs f0, 0x704(r28)
/* 80C924CC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C924D0  7F C3 F3 78 */	mr r3, r30
/* 80C924D4  80 9C 05 74 */	lwz r4, 0x574(r28)
/* 80C924D8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C924DC  4B 6B 3F D5 */	bl PSMTXCopy
/* 80C924E0  C0 1C 06 F0 */	lfs f0, 0x6f0(r28)
/* 80C924E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C924E8  C0 3C 06 F4 */	lfs f1, 0x6f4(r28)
/* 80C924EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C924F0  C0 1C 06 F8 */	lfs f0, 0x6f8(r28)
/* 80C924F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C924F8  EC 01 E8 28 */	fsubs f0, f1, f29
/* 80C924FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C92500  3B 7C 06 D8 */	addi r27, r28, 0x6d8
/* 80C92504  7F 63 DB 78 */	mr r3, r27
/* 80C92508  38 81 00 08 */	addi r4, r1, 8
/* 80C9250C  4B 5D CC D1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C92510  7F 63 DB 78 */	mr r3, r27
/* 80C92514  C0 1C 06 FC */	lfs f0, 0x6fc(r28)
/* 80C92518  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80C9251C  4B 5D CC E5 */	bl SetR__8cM3dGCylFf
/* 80C92520  7F 63 DB 78 */	mr r3, r27
/* 80C92524  C0 1C 07 00 */	lfs f0, 0x700(r28)
/* 80C92528  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C9252C  4B 5D CC CD */	bl SetH__8cM3dGCylFf
/* 80C92530  7F A3 EB 78 */	mr r3, r29
/* 80C92534  38 9C 05 B4 */	addi r4, r28, 0x5b4
/* 80C92538  4B 5D 26 71 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C9253C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C92540  3B FF 01 C0 */	addi r31, r31, 0x1c0
lbl_80C92544:
/* 80C92544  80 79 05 70 */	lwz r3, 0x570(r25)
/* 80C92548  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C9254C  7C 1A 00 00 */	cmpw r26, r0
/* 80C92550  41 80 FF 50 */	blt lbl_80C924A0
/* 80C92554  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C92558  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C9255C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80C92560  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80C92564  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80C92568  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80C9256C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C92570  4B 6C FC A9 */	bl _restgpr_25
/* 80C92574  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C92578  7C 08 03 A6 */	mtlr r0
/* 80C9257C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C92580  4E 80 00 20 */	blr 
