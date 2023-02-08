lbl_8073A838:
/* 8073A838  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8073A83C  7C 08 02 A6 */	mflr r0
/* 8073A840  90 01 00 64 */	stw r0, 0x64(r1)
/* 8073A844  39 61 00 60 */	addi r11, r1, 0x60
/* 8073A848  4B C2 79 7D */	bl _savegpr_23
/* 8073A84C  7C 7D 1B 78 */	mr r29, r3
/* 8073A850  3C 60 80 74 */	lis r3, lit_1109@ha /* 0x8073D270@ha */
/* 8073A854  3B E3 D2 70 */	addi r31, r3, lit_1109@l /* 0x8073D270@l */
/* 8073A858  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8073A85C  C0 3D 06 88 */	lfs f1, 0x688(r29)
/* 8073A860  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8073A864  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8073A868  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8073A86C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8073A870  88 1F 00 7C */	lbz r0, 0x7c(r31)
/* 8073A874  7C 00 07 75 */	extsb. r0, r0
/* 8073A878  40 82 00 34 */	bne lbl_8073A8AC
/* 8073A87C  3C 60 80 74 */	lis r3, lit_4125@ha /* 0x8073CEEC@ha */
/* 8073A880  C0 03 CE EC */	lfs f0, lit_4125@l(r3)  /* 0x8073CEEC@l */
/* 8073A884  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8073A888  38 7F 00 80 */	addi r3, r31, 0x80
/* 8073A88C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8073A890  D0 03 00 08 */	stfs f0, 8(r3)
/* 8073A894  3C 80 80 74 */	lis r4, __dt__4cXyzFv@ha /* 0x8073CE58@ha */
/* 8073A898  38 84 CE 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8073CE58@l */
/* 8073A89C  38 BF 00 70 */	addi r5, r31, 0x70
/* 8073A8A0  4B FF F9 B9 */	bl __register_global_object
/* 8073A8A4  38 00 00 01 */	li r0, 1
/* 8073A8A8  98 1F 00 7C */	stb r0, 0x7c(r31)
lbl_8073A8AC:
/* 8073A8AC  3B C0 00 00 */	li r30, 0
/* 8073A8B0  3B 80 00 00 */	li r28, 0
/* 8073A8B4  3B 60 00 00 */	li r27, 0
/* 8073A8B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073A8BC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073A8C0  3C 60 80 74 */	lis r3, w_eff_id_4089@ha /* 0x8073D13C@ha */
/* 8073A8C4  3B 23 D1 3C */	addi r25, r3, w_eff_id_4089@l /* 0x8073D13C@l */
/* 8073A8C8  3C 60 80 74 */	lis r3, lit_3912@ha /* 0x8073CEB0@ha */
/* 8073A8CC  3B 43 CE B0 */	addi r26, r3, lit_3912@l /* 0x8073CEB0@l */
lbl_8073A8D0:
/* 8073A8D0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8073A8D4  38 00 00 FF */	li r0, 0xff
/* 8073A8D8  90 01 00 08 */	stw r0, 8(r1)
/* 8073A8DC  38 80 00 00 */	li r4, 0
/* 8073A8E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073A8E4  38 00 FF FF */	li r0, -1
/* 8073A8E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073A8EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073A8F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073A8F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8073A8F8  3A FB 0B 80 */	addi r23, r27, 0xb80
/* 8073A8FC  7C 9D B8 2E */	lwzx r4, r29, r23
/* 8073A900  38 A0 00 00 */	li r5, 0
/* 8073A904  7C D9 E2 2E */	lhzx r6, r25, r28
/* 8073A908  38 E1 00 24 */	addi r7, r1, 0x24
/* 8073A90C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8073A910  39 20 00 00 */	li r9, 0
/* 8073A914  39 5F 00 80 */	addi r10, r31, 0x80
/* 8073A918  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8073A91C  4B 91 2B B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073A920  7C 7D B9 2E */	stwx r3, r29, r23
/* 8073A924  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8073A928  38 63 02 10 */	addi r3, r3, 0x210
/* 8073A92C  7C 9D B8 2E */	lwzx r4, r29, r23
/* 8073A930  4B 91 0F E9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8073A934  28 03 00 00 */	cmplwi r3, 0
/* 8073A938  41 82 00 0C */	beq lbl_8073A944
/* 8073A93C  38 00 00 02 */	li r0, 2
/* 8073A940  98 03 00 56 */	stb r0, 0x56(r3)
lbl_8073A944:
/* 8073A944  3B DE 00 01 */	addi r30, r30, 1
/* 8073A948  2C 1E 00 04 */	cmpwi r30, 4
/* 8073A94C  3B 9C 00 02 */	addi r28, r28, 2
/* 8073A950  3B 7B 00 04 */	addi r27, r27, 4
/* 8073A954  41 80 FF 7C */	blt lbl_8073A8D0
/* 8073A958  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002E@ha */
/* 8073A95C  38 03 00 2E */	addi r0, r3, 0x002E /* 0x0006002E@l */
/* 8073A960  90 01 00 20 */	stw r0, 0x20(r1)
/* 8073A964  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8073A968  38 81 00 20 */	addi r4, r1, 0x20
/* 8073A96C  38 A0 00 00 */	li r5, 0
/* 8073A970  38 C0 FF FF */	li r6, -1
/* 8073A974  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8073A978  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8073A97C  7D 89 03 A6 */	mtctr r12
/* 8073A980  4E 80 04 21 */	bctrl 
/* 8073A984  39 61 00 60 */	addi r11, r1, 0x60
/* 8073A988  4B C2 78 89 */	bl _restgpr_23
/* 8073A98C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8073A990  7C 08 03 A6 */	mtlr r0
/* 8073A994  38 21 00 60 */	addi r1, r1, 0x60
/* 8073A998  4E 80 00 20 */	blr 
