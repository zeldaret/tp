lbl_80BC4454:
/* 80BC4454  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BC4458  7C 08 02 A6 */	mflr r0
/* 80BC445C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BC4460  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BC4464  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BC4468  39 61 00 30 */	addi r11, r1, 0x30
/* 80BC446C  4B 79 DD 61 */	bl _savegpr_25
/* 80BC4470  7C 79 1B 78 */	mr r25, r3
/* 80BC4474  3C 60 80 BC */	lis r3, M_attr__14daObjCatDoor_c@ha /* 0x80BC49B4@ha */
/* 80BC4478  3B A3 49 B4 */	addi r29, r3, M_attr__14daObjCatDoor_c@l /* 0x80BC49B4@l */
/* 80BC447C  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80BC4480  4B 44 88 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC4484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC4488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC448C  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 80BC4490  4B 44 7F A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC4494  3B 40 00 00 */	li r26, 0
/* 80BC4498  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC449C  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC44A0  7F DF F3 78 */	mr r31, r30
lbl_80BC44A4:
/* 80BC44A4  2C 1A 00 00 */	cmpwi r26, 0
/* 80BC44A8  40 82 00 0C */	bne lbl_80BC44B4
/* 80BC44AC  3B 99 05 70 */	addi r28, r25, 0x570
/* 80BC44B0  48 00 00 08 */	b lbl_80BC44B8
lbl_80BC44B4:
/* 80BC44B4  3B 99 06 68 */	addi r28, r25, 0x668
lbl_80BC44B8:
/* 80BC44B8  2C 1A 00 00 */	cmpwi r26, 0
/* 80BC44BC  40 82 00 0C */	bne lbl_80BC44C8
/* 80BC44C0  C3 FD 00 04 */	lfs f31, 4(r29)
/* 80BC44C4  48 00 00 08 */	b lbl_80BC44CC
lbl_80BC44C8:
/* 80BC44C8  C3 FD 00 08 */	lfs f31, 8(r29)
lbl_80BC44CC:
/* 80BC44CC  2C 1A 00 00 */	cmpwi r26, 0
/* 80BC44D0  40 82 00 0C */	bne lbl_80BC44DC
/* 80BC44D4  AB 7C 00 F4 */	lha r27, 0xf4(r28)
/* 80BC44D8  48 00 00 14 */	b lbl_80BC44EC
lbl_80BC44DC:
/* 80BC44DC  A8 7C 00 F4 */	lha r3, 0xf4(r28)
/* 80BC44E0  3C 63 00 01 */	addis r3, r3, 1
/* 80BC44E4  38 03 80 00 */	addi r0, r3, -32768
/* 80BC44E8  7C 1B 07 34 */	extsh r27, r0
lbl_80BC44EC:
/* 80BC44EC  4B 44 87 DD */	bl push__14mDoMtx_stack_cFv
/* 80BC44F0  FC 20 F8 90 */	fmr f1, f31
/* 80BC44F4  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80BC44F8  FC 60 10 90 */	fmr f3, f2
/* 80BC44FC  4B 44 88 A1 */	bl transM__14mDoMtx_stack_cFfff
/* 80BC4500  7F C3 F3 78 */	mr r3, r30
/* 80BC4504  7F 64 07 34 */	extsh r4, r27
/* 80BC4508  4B 44 7F 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC450C  7F C3 F3 78 */	mr r3, r30
/* 80BC4510  80 9C 00 00 */	lwz r4, 0(r28)
/* 80BC4514  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC4518  4B 78 1F 99 */	bl PSMTXCopy
/* 80BC451C  7F E3 FB 78 */	mr r3, r31
/* 80BC4520  38 9C 00 C4 */	addi r4, r28, 0xc4
/* 80BC4524  4B 78 1F 8D */	bl PSMTXCopy
/* 80BC4528  38 7C 00 04 */	addi r3, r28, 4
/* 80BC452C  4B 4B 74 95 */	bl Move__4dBgWFv
/* 80BC4530  4B 44 87 E5 */	bl pop__14mDoMtx_stack_cFv
/* 80BC4534  3B 5A 00 01 */	addi r26, r26, 1
/* 80BC4538  2C 1A 00 02 */	cmpwi r26, 2
/* 80BC453C  41 80 FF 68 */	blt lbl_80BC44A4
/* 80BC4540  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BC4544  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BC4548  39 61 00 30 */	addi r11, r1, 0x30
/* 80BC454C  4B 79 DC CD */	bl _restgpr_25
/* 80BC4550  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BC4554  7C 08 03 A6 */	mtlr r0
/* 80BC4558  38 21 00 40 */	addi r1, r1, 0x40
/* 80BC455C  4E 80 00 20 */	blr 
