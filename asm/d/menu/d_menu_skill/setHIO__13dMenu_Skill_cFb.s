lbl_801F9500:
/* 801F9500  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801F9504  7C 08 02 A6 */	mflr r0
/* 801F9508  90 01 00 74 */	stw r0, 0x74(r1)
/* 801F950C  39 61 00 70 */	addi r11, r1, 0x70
/* 801F9510  48 16 8C C1 */	bl _savegpr_26
/* 801F9514  7C 7D 1B 78 */	mr r29, r3
/* 801F9518  7C 9E 23 78 */	mr r30, r4
/* 801F951C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801F9520  40 82 00 18 */	bne lbl_801F9538
/* 801F9524  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F9528  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F952C  88 03 0A 8F */	lbz r0, 0xa8f(r3)
/* 801F9530  28 00 00 00 */	cmplwi r0, 0
/* 801F9534  41 82 03 70 */	beq lbl_801F98A4
lbl_801F9538:
/* 801F9538  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F953C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F9540  80 03 0A 7C */	lwz r0, 0xa7c(r3)
/* 801F9544  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801F9548  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 801F954C  98 1D 01 A0 */	stb r0, 0x1a0(r29)
/* 801F9550  88 01 00 4D */	lbz r0, 0x4d(r1)
/* 801F9554  98 1D 01 A1 */	stb r0, 0x1a1(r29)
/* 801F9558  88 01 00 4E */	lbz r0, 0x4e(r1)
/* 801F955C  98 1D 01 A2 */	stb r0, 0x1a2(r29)
/* 801F9560  88 01 00 4F */	lbz r0, 0x4f(r1)
/* 801F9564  98 1D 01 A3 */	stb r0, 0x1a3(r29)
/* 801F9568  80 03 0A 80 */	lwz r0, 0xa80(r3)
/* 801F956C  90 01 00 48 */	stw r0, 0x48(r1)
/* 801F9570  88 01 00 48 */	lbz r0, 0x48(r1)
/* 801F9574  98 1D 01 C8 */	stb r0, 0x1c8(r29)
/* 801F9578  88 01 00 49 */	lbz r0, 0x49(r1)
/* 801F957C  98 1D 01 C9 */	stb r0, 0x1c9(r29)
/* 801F9580  88 01 00 4A */	lbz r0, 0x4a(r1)
/* 801F9584  98 1D 01 CA */	stb r0, 0x1ca(r29)
/* 801F9588  88 01 00 4B */	lbz r0, 0x4b(r1)
/* 801F958C  98 1D 01 CB */	stb r0, 0x1cb(r29)
/* 801F9590  80 03 0A 84 */	lwz r0, 0xa84(r3)
/* 801F9594  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F9598  88 01 00 44 */	lbz r0, 0x44(r1)
/* 801F959C  98 1D 01 AC */	stb r0, 0x1ac(r29)
/* 801F95A0  88 01 00 45 */	lbz r0, 0x45(r1)
/* 801F95A4  98 1D 01 AD */	stb r0, 0x1ad(r29)
/* 801F95A8  88 01 00 46 */	lbz r0, 0x46(r1)
/* 801F95AC  98 1D 01 AE */	stb r0, 0x1ae(r29)
/* 801F95B0  88 01 00 47 */	lbz r0, 0x47(r1)
/* 801F95B4  98 1D 01 AF */	stb r0, 0x1af(r29)
/* 801F95B8  80 03 0A 88 */	lwz r0, 0xa88(r3)
/* 801F95BC  90 01 00 40 */	stw r0, 0x40(r1)
/* 801F95C0  88 01 00 40 */	lbz r0, 0x40(r1)
/* 801F95C4  98 1D 01 D4 */	stb r0, 0x1d4(r29)
/* 801F95C8  88 01 00 41 */	lbz r0, 0x41(r1)
/* 801F95CC  98 1D 01 D5 */	stb r0, 0x1d5(r29)
/* 801F95D0  88 01 00 42 */	lbz r0, 0x42(r1)
/* 801F95D4  98 1D 01 D6 */	stb r0, 0x1d6(r29)
/* 801F95D8  88 01 00 43 */	lbz r0, 0x43(r1)
/* 801F95DC  98 1D 01 D7 */	stb r0, 0x1d7(r29)
/* 801F95E0  C0 03 0A 3C */	lfs f0, 0xa3c(r3)
/* 801F95E4  D0 1D 01 F4 */	stfs f0, 0x1f4(r29)
/* 801F95E8  C0 03 0A 40 */	lfs f0, 0xa40(r3)
/* 801F95EC  D0 1D 01 F8 */	stfs f0, 0x1f8(r29)
/* 801F95F0  80 03 0A 6C */	lwz r0, 0xa6c(r3)
/* 801F95F4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801F95F8  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 801F95FC  98 1D 01 B0 */	stb r0, 0x1b0(r29)
/* 801F9600  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 801F9604  98 1D 01 B1 */	stb r0, 0x1b1(r29)
/* 801F9608  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 801F960C  98 1D 01 B2 */	stb r0, 0x1b2(r29)
/* 801F9610  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 801F9614  98 1D 01 B3 */	stb r0, 0x1b3(r29)
/* 801F9618  80 03 0A 70 */	lwz r0, 0xa70(r3)
/* 801F961C  90 01 00 38 */	stw r0, 0x38(r1)
/* 801F9620  88 01 00 38 */	lbz r0, 0x38(r1)
/* 801F9624  98 1D 01 D8 */	stb r0, 0x1d8(r29)
/* 801F9628  88 01 00 39 */	lbz r0, 0x39(r1)
/* 801F962C  98 1D 01 D9 */	stb r0, 0x1d9(r29)
/* 801F9630  88 01 00 3A */	lbz r0, 0x3a(r1)
/* 801F9634  98 1D 01 DA */	stb r0, 0x1da(r29)
/* 801F9638  88 01 00 3B */	lbz r0, 0x3b(r1)
/* 801F963C  98 1D 01 DB */	stb r0, 0x1db(r29)
/* 801F9640  80 03 0A 74 */	lwz r0, 0xa74(r3)
/* 801F9644  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F9648  88 01 00 34 */	lbz r0, 0x34(r1)
/* 801F964C  98 1D 01 C4 */	stb r0, 0x1c4(r29)
/* 801F9650  88 01 00 35 */	lbz r0, 0x35(r1)
/* 801F9654  98 1D 01 C5 */	stb r0, 0x1c5(r29)
/* 801F9658  88 01 00 36 */	lbz r0, 0x36(r1)
/* 801F965C  98 1D 01 C6 */	stb r0, 0x1c6(r29)
/* 801F9660  88 01 00 37 */	lbz r0, 0x37(r1)
/* 801F9664  98 1D 01 C7 */	stb r0, 0x1c7(r29)
/* 801F9668  80 03 0A 78 */	lwz r0, 0xa78(r3)
/* 801F966C  90 01 00 30 */	stw r0, 0x30(r1)
/* 801F9670  88 01 00 30 */	lbz r0, 0x30(r1)
/* 801F9674  98 1D 01 EC */	stb r0, 0x1ec(r29)
/* 801F9678  88 01 00 31 */	lbz r0, 0x31(r1)
/* 801F967C  98 1D 01 ED */	stb r0, 0x1ed(r29)
/* 801F9680  88 01 00 32 */	lbz r0, 0x32(r1)
/* 801F9684  98 1D 01 EE */	stb r0, 0x1ee(r29)
/* 801F9688  88 01 00 33 */	lbz r0, 0x33(r1)
/* 801F968C  98 1D 01 EF */	stb r0, 0x1ef(r29)
/* 801F9690  3B E0 00 00 */	li r31, 0
/* 801F9694  3B 80 00 00 */	li r28, 0
/* 801F9698  3B 60 00 00 */	li r27, 0
lbl_801F969C:
/* 801F969C  88 1D 02 06 */	lbz r0, 0x206(r29)
/* 801F96A0  7C 1F 00 00 */	cmpw r31, r0
/* 801F96A4  40 82 00 E4 */	bne lbl_801F9788
/* 801F96A8  80 1D 01 C8 */	lwz r0, 0x1c8(r29)
/* 801F96AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 801F96B0  80 1D 01 A0 */	lwz r0, 0x1a0(r29)
/* 801F96B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801F96B8  7F 5D DA 14 */	add r26, r29, r27
/* 801F96BC  80 7A 00 24 */	lwz r3, 0x24(r26)
/* 801F96C0  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F96C4  38 A1 00 28 */	addi r5, r1, 0x28
/* 801F96C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F96CC  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F96D0  7D 89 03 A6 */	mtctr r12
/* 801F96D4  4E 80 04 21 */	bctrl 
/* 801F96D8  80 1D 01 D4 */	lwz r0, 0x1d4(r29)
/* 801F96DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F96E0  80 1D 01 AC */	lwz r0, 0x1ac(r29)
/* 801F96E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F96E8  80 7A 00 B4 */	lwz r3, 0xb4(r26)
/* 801F96EC  38 81 00 24 */	addi r4, r1, 0x24
/* 801F96F0  38 A1 00 20 */	addi r5, r1, 0x20
/* 801F96F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F96F8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801F96FC  7D 89 03 A6 */	mtctr r12
/* 801F9700  4E 80 04 21 */	bctrl 
/* 801F9704  80 1D 01 D4 */	lwz r0, 0x1d4(r29)
/* 801F9708  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F970C  80 1D 01 AC */	lwz r0, 0x1ac(r29)
/* 801F9710  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F9714  80 7A 00 BC */	lwz r3, 0xbc(r26)
/* 801F9718  38 81 00 1C */	addi r4, r1, 0x1c
/* 801F971C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801F9720  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9724  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801F9728  7D 89 03 A6 */	mtctr r12
/* 801F972C  4E 80 04 21 */	bctrl 
/* 801F9730  C0 1D 01 F4 */	lfs f0, 0x1f4(r29)
/* 801F9734  7F 5D E2 14 */	add r26, r29, r28
/* 801F9738  80 7A 01 60 */	lwz r3, 0x160(r26)
/* 801F973C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F9740  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F9744  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F9748  81 83 00 00 */	lwz r12, 0(r3)
/* 801F974C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F9750  7D 89 03 A6 */	mtctr r12
/* 801F9754  4E 80 04 21 */	bctrl 
/* 801F9758  80 1D 01 D8 */	lwz r0, 0x1d8(r29)
/* 801F975C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F9760  80 1D 01 B0 */	lwz r0, 0x1b0(r29)
/* 801F9764  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9768  80 7A 00 94 */	lwz r3, 0x94(r26)
/* 801F976C  38 81 00 14 */	addi r4, r1, 0x14
/* 801F9770  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F9774  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9778  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F977C  7D 89 03 A6 */	mtctr r12
/* 801F9780  4E 80 04 21 */	bctrl 
/* 801F9784  48 00 00 58 */	b lbl_801F97DC
lbl_801F9788:
/* 801F9788  C0 1D 01 F8 */	lfs f0, 0x1f8(r29)
/* 801F978C  7F 5D E2 14 */	add r26, r29, r28
/* 801F9790  80 7A 01 60 */	lwz r3, 0x160(r26)
/* 801F9794  80 63 00 04 */	lwz r3, 4(r3)
/* 801F9798  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F979C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F97A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F97A4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F97A8  7D 89 03 A6 */	mtctr r12
/* 801F97AC  4E 80 04 21 */	bctrl 
/* 801F97B0  80 1D 01 EC */	lwz r0, 0x1ec(r29)
/* 801F97B4  90 01 00 08 */	stw r0, 8(r1)
/* 801F97B8  80 1D 01 C4 */	lwz r0, 0x1c4(r29)
/* 801F97BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F97C0  80 7A 00 94 */	lwz r3, 0x94(r26)
/* 801F97C4  38 81 00 0C */	addi r4, r1, 0xc
/* 801F97C8  38 A1 00 08 */	addi r5, r1, 8
/* 801F97CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F97D0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F97D4  7D 89 03 A6 */	mtctr r12
/* 801F97D8  4E 80 04 21 */	bctrl 
lbl_801F97DC:
/* 801F97DC  3B FF 00 01 */	addi r31, r31, 1
/* 801F97E0  2C 1F 00 07 */	cmpwi r31, 7
/* 801F97E4  3B 9C 00 04 */	addi r28, r28, 4
/* 801F97E8  3B 7B 00 10 */	addi r27, r27, 0x10
/* 801F97EC  41 80 FE B0 */	blt lbl_801F969C
/* 801F97F0  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 801F97F4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F97F8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F97FC  C0 24 0A 44 */	lfs f1, 0xa44(r4)
/* 801F9800  C0 44 0A 48 */	lfs f2, 0xa48(r4)
/* 801F9804  48 05 AD AD */	bl paneTrans__8CPaneMgrFff
/* 801F9808  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F980C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F9810  C0 03 0A 4C */	lfs f0, 0xa4c(r3)
/* 801F9814  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 801F9818  80 63 00 04 */	lwz r3, 4(r3)
/* 801F981C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F9820  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F9824  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9828  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F982C  7D 89 03 A6 */	mtctr r12
/* 801F9830  4E 80 04 21 */	bctrl 
/* 801F9834  88 1D 02 05 */	lbz r0, 0x205(r29)
/* 801F9838  28 00 00 02 */	cmplwi r0, 2
/* 801F983C  40 82 00 24 */	bne lbl_801F9860
/* 801F9840  80 7D 01 58 */	lwz r3, 0x158(r29)
/* 801F9844  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F9848  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F984C  88 84 0A 8D */	lbz r4, 0xa8d(r4)
/* 801F9850  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9854  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F9858  7D 89 03 A6 */	mtctr r12
/* 801F985C  4E 80 04 21 */	bctrl 
lbl_801F9860:
/* 801F9860  80 7D 01 84 */	lwz r3, 0x184(r29)
/* 801F9864  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F9868  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F986C  C0 24 0A 50 */	lfs f1, 0xa50(r4)
/* 801F9870  C0 44 0A 54 */	lfs f2, 0xa54(r4)
/* 801F9874  48 05 AD 3D */	bl paneTrans__8CPaneMgrFff
/* 801F9878  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F987C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F9880  C0 03 0A 58 */	lfs f0, 0xa58(r3)
/* 801F9884  80 7D 01 84 */	lwz r3, 0x184(r29)
/* 801F9888  80 63 00 04 */	lwz r3, 4(r3)
/* 801F988C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F9890  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F9894  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9898  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F989C  7D 89 03 A6 */	mtctr r12
/* 801F98A0  4E 80 04 21 */	bctrl 
lbl_801F98A4:
/* 801F98A4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F98A8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F98AC  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801F98B0  28 00 00 00 */	cmplwi r0, 0
/* 801F98B4  40 82 00 0C */	bne lbl_801F98C0
/* 801F98B8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801F98BC  41 82 01 34 */	beq lbl_801F99F0
lbl_801F98C0:
/* 801F98C0  80 7D 01 88 */	lwz r3, 0x188(r29)
/* 801F98C4  28 03 00 00 */	cmplwi r3, 0
/* 801F98C8  41 82 00 44 */	beq lbl_801F990C
/* 801F98CC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F98D0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F98D4  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801F98D8  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801F98DC  48 05 AC D5 */	bl paneTrans__8CPaneMgrFff
/* 801F98E0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F98E4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F98E8  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801F98EC  80 7D 01 88 */	lwz r3, 0x188(r29)
/* 801F98F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F98F4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F98F8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F98FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9900  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F9904  7D 89 03 A6 */	mtctr r12
/* 801F9908  4E 80 04 21 */	bctrl 
lbl_801F990C:
/* 801F990C  80 7D 01 8C */	lwz r3, 0x18c(r29)
/* 801F9910  28 03 00 00 */	cmplwi r3, 0
/* 801F9914  41 82 00 44 */	beq lbl_801F9958
/* 801F9918  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F991C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F9920  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801F9924  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801F9928  48 05 AC 89 */	bl paneTrans__8CPaneMgrFff
/* 801F992C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F9930  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F9934  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801F9938  80 7D 01 8C */	lwz r3, 0x18c(r29)
/* 801F993C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F9940  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F9944  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F9948  81 83 00 00 */	lwz r12, 0(r3)
/* 801F994C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F9950  7D 89 03 A6 */	mtctr r12
/* 801F9954  4E 80 04 21 */	bctrl 
lbl_801F9958:
/* 801F9958  80 7D 01 90 */	lwz r3, 0x190(r29)
/* 801F995C  28 03 00 00 */	cmplwi r3, 0
/* 801F9960  41 82 00 44 */	beq lbl_801F99A4
/* 801F9964  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F9968  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F996C  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801F9970  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801F9974  48 05 AC 3D */	bl paneTrans__8CPaneMgrFff
/* 801F9978  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F997C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F9980  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801F9984  80 7D 01 90 */	lwz r3, 0x190(r29)
/* 801F9988  80 63 00 04 */	lwz r3, 4(r3)
/* 801F998C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F9990  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F9994  81 83 00 00 */	lwz r12, 0(r3)
/* 801F9998  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F999C  7D 89 03 A6 */	mtctr r12
/* 801F99A0  4E 80 04 21 */	bctrl 
lbl_801F99A4:
/* 801F99A4  80 7D 01 94 */	lwz r3, 0x194(r29)
/* 801F99A8  28 03 00 00 */	cmplwi r3, 0
/* 801F99AC  41 82 00 44 */	beq lbl_801F99F0
/* 801F99B0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F99B4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F99B8  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801F99BC  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801F99C0  48 05 AB F1 */	bl paneTrans__8CPaneMgrFff
/* 801F99C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F99C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F99CC  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801F99D0  80 7D 01 94 */	lwz r3, 0x194(r29)
/* 801F99D4  80 63 00 04 */	lwz r3, 4(r3)
/* 801F99D8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F99DC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F99E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F99E4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F99E8  7D 89 03 A6 */	mtctr r12
/* 801F99EC  4E 80 04 21 */	bctrl 
lbl_801F99F0:
/* 801F99F0  39 61 00 70 */	addi r11, r1, 0x70
/* 801F99F4  48 16 88 29 */	bl _restgpr_26
/* 801F99F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801F99FC  7C 08 03 A6 */	mtlr r0
/* 801F9A00  38 21 00 70 */	addi r1, r1, 0x70
/* 801F9A04  4E 80 00 20 */	blr 
