lbl_806C08C4:
/* 806C08C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806C08C8  7C 08 02 A6 */	mflr r0
/* 806C08CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 806C08D0  39 61 00 60 */	addi r11, r1, 0x60
/* 806C08D4  4B CA 18 F0 */	b _savegpr_23
/* 806C08D8  7C 7A 1B 78 */	mr r26, r3
/* 806C08DC  3C 60 80 6C */	lis r3, lit_3803@ha
/* 806C08E0  3B A3 19 38 */	addi r29, r3, lit_3803@l
/* 806C08E4  88 1A 07 14 */	lbz r0, 0x714(r26)
/* 806C08E8  28 00 00 02 */	cmplwi r0, 2
/* 806C08EC  40 82 00 48 */	bne lbl_806C0934
/* 806C08F0  38 60 00 42 */	li r3, 0x42
/* 806C08F4  38 80 00 01 */	li r4, 1
/* 806C08F8  4B 9D 75 E8 */	b checkItemGet__FUci
/* 806C08FC  2C 03 00 00 */	cmpwi r3, 0
/* 806C0900  40 82 00 0C */	bne lbl_806C090C
/* 806C0904  38 60 00 01 */	li r3, 1
/* 806C0908  48 00 01 E0 */	b lbl_806C0AE8
lbl_806C090C:
/* 806C090C  88 1A 05 46 */	lbz r0, 0x546(r26)
/* 806C0910  28 00 00 00 */	cmplwi r0, 0
/* 806C0914  40 82 00 20 */	bne lbl_806C0934
/* 806C0918  38 00 00 45 */	li r0, 0x45
/* 806C091C  98 1A 05 46 */	stb r0, 0x546(r26)
/* 806C0920  38 00 00 02 */	li r0, 2
/* 806C0924  98 1A 04 96 */	stb r0, 0x496(r26)
/* 806C0928  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 806C092C  60 00 00 04 */	ori r0, r0, 4
/* 806C0930  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_806C0934:
/* 806C0934  88 7A 07 10 */	lbz r3, 0x710(r26)
/* 806C0938  28 03 00 00 */	cmplwi r3, 0
/* 806C093C  41 82 00 0C */	beq lbl_806C0948
/* 806C0940  38 03 FF FF */	addi r0, r3, -1
/* 806C0944  98 1A 07 10 */	stb r0, 0x710(r26)
lbl_806C0948:
/* 806C0948  88 7A 07 11 */	lbz r3, 0x711(r26)
/* 806C094C  28 03 00 00 */	cmplwi r3, 0
/* 806C0950  41 82 00 0C */	beq lbl_806C095C
/* 806C0954  38 03 FF FF */	addi r0, r3, -1
/* 806C0958  98 1A 07 11 */	stb r0, 0x711(r26)
lbl_806C095C:
/* 806C095C  88 7A 07 12 */	lbz r3, 0x712(r26)
/* 806C0960  28 03 00 00 */	cmplwi r3, 0
/* 806C0964  41 82 00 0C */	beq lbl_806C0970
/* 806C0968  38 03 FF FF */	addi r0, r3, -1
/* 806C096C  98 1A 07 12 */	stb r0, 0x712(r26)
lbl_806C0970:
/* 806C0970  7F 43 D3 78 */	mr r3, r26
/* 806C0974  4B FF F8 B1 */	bl action__8daE_FZ_cFv
/* 806C0978  7F 43 D3 78 */	mr r3, r26
/* 806C097C  4B FF FD 61 */	bl mtx_set__8daE_FZ_cFv
/* 806C0980  7F 43 D3 78 */	mr r3, r26
/* 806C0984  4B FF FD DD */	bl cc_set__8daE_FZ_cFv
/* 806C0988  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 806C098C  7C 03 07 74 */	extsb r3, r0
/* 806C0990  4B 96 C6 DC */	b dComIfGp_getReverb__Fi
/* 806C0994  7C 65 1B 78 */	mr r5, r3
/* 806C0998  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 806C099C  38 80 00 00 */	li r4, 0
/* 806C09A0  81 9A 05 C0 */	lwz r12, 0x5c0(r26)
/* 806C09A4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 806C09A8  7D 89 03 A6 */	mtctr r12
/* 806C09AC  4E 80 04 21 */	bctrl 
/* 806C09B0  38 61 00 20 */	addi r3, r1, 0x20
/* 806C09B4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 806C09B8  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 806C09BC  4B BA 61 78 */	b __mi__4cXyzCFRC3Vec
/* 806C09C0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806C09C4  D0 1A 06 64 */	stfs f0, 0x664(r26)
/* 806C09C8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806C09CC  D0 1A 06 68 */	stfs f0, 0x668(r26)
/* 806C09D0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806C09D4  D0 1A 06 6C */	stfs f0, 0x66c(r26)
/* 806C09D8  38 7A 06 64 */	addi r3, r26, 0x664
/* 806C09DC  7C 64 1B 78 */	mr r4, r3
/* 806C09E0  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 806C09E4  4B C8 66 F4 */	b PSVECScale
/* 806C09E8  3B 60 00 00 */	li r27, 0
/* 806C09EC  3B 20 00 00 */	li r25, 0
/* 806C09F0  3B 00 00 00 */	li r24, 0
/* 806C09F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C09F8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 806C09FC  3B 9A 06 64 */	addi r28, r26, 0x664
/* 806C0A00  3C 60 80 6C */	lis r3, ice_name@ha
/* 806C0A04  3B E3 1A D4 */	addi r31, r3, ice_name@l
lbl_806C0A08:
/* 806C0A08  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806C0A0C  38 00 00 FF */	li r0, 0xff
/* 806C0A10  90 01 00 08 */	stw r0, 8(r1)
/* 806C0A14  38 80 00 00 */	li r4, 0
/* 806C0A18  90 81 00 0C */	stw r4, 0xc(r1)
/* 806C0A1C  38 00 FF FF */	li r0, -1
/* 806C0A20  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C0A24  90 81 00 14 */	stw r4, 0x14(r1)
/* 806C0A28  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C0A2C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806C0A30  3A F8 07 1C */	addi r23, r24, 0x71c
/* 806C0A34  7C 9A B8 2E */	lwzx r4, r26, r23
/* 806C0A38  38 A0 00 00 */	li r5, 0
/* 806C0A3C  7C DF CA 2E */	lhzx r6, r31, r25
/* 806C0A40  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 806C0A44  39 00 00 00 */	li r8, 0
/* 806C0A48  39 20 00 00 */	li r9, 0
/* 806C0A4C  39 40 00 00 */	li r10, 0
/* 806C0A50  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806C0A54  4B 98 CA 78 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C0A58  7C 7A B9 2E */	stwx r3, r26, r23
/* 806C0A5C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806C0A60  38 63 02 10 */	addi r3, r3, 0x210
/* 806C0A64  7C 9A B8 2E */	lwzx r4, r26, r23
/* 806C0A68  4B 98 AE B0 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806C0A6C  7C 77 1B 79 */	or. r23, r3, r3
/* 806C0A70  41 82 00 60 */	beq lbl_806C0AD0
/* 806C0A74  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806C0A78  38 63 00 24 */	addi r3, r3, 0x24
/* 806C0A7C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806C0A80  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806C0A84  4B C8 5A 2C */	b PSMTXCopy
/* 806C0A88  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806C0A8C  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 806C0A90  FC 60 08 90 */	fmr f3, f1
/* 806C0A94  4B 94 C3 08 */	b transM__14mDoMtx_stack_cFfff
/* 806C0A98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806C0A9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806C0AA0  38 97 00 68 */	addi r4, r23, 0x68
/* 806C0AA4  38 B7 00 98 */	addi r5, r23, 0x98
/* 806C0AA8  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806C0AAC  4B BB FD 5C */	b func_80280808
/* 806C0AB0  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 806C0AB4  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 806C0AB8  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 806C0ABC  D0 37 00 B4 */	stfs f1, 0xb4(r23)
/* 806C0AC0  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha
/* 806C0AC4  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l
/* 806C0AC8  90 17 00 F0 */	stw r0, 0xf0(r23)
/* 806C0ACC  93 97 00 C0 */	stw r28, 0xc0(r23)
lbl_806C0AD0:
/* 806C0AD0  3B 7B 00 01 */	addi r27, r27, 1
/* 806C0AD4  2C 1B 00 03 */	cmpwi r27, 3
/* 806C0AD8  3B 39 00 02 */	addi r25, r25, 2
/* 806C0ADC  3B 18 00 04 */	addi r24, r24, 4
/* 806C0AE0  41 80 FF 28 */	blt lbl_806C0A08
/* 806C0AE4  38 60 00 01 */	li r3, 1
lbl_806C0AE8:
/* 806C0AE8  39 61 00 60 */	addi r11, r1, 0x60
/* 806C0AEC  4B CA 17 24 */	b _restgpr_23
/* 806C0AF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806C0AF4  7C 08 03 A6 */	mtlr r0
/* 806C0AF8  38 21 00 60 */	addi r1, r1, 0x60
/* 806C0AFC  4E 80 00 20 */	blr 
