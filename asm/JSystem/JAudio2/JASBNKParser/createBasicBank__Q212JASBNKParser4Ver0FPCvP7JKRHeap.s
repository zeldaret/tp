lbl_80299A3C:
/* 80299A3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80299A40  7C 08 02 A6 */	mflr r0
/* 80299A44  90 01 00 54 */	stw r0, 0x54(r1)
/* 80299A48  39 61 00 50 */	addi r11, r1, 0x50
/* 80299A4C  48 0C 87 61 */	bl _savegpr_17
/* 80299A50  7C 9E 23 79 */	or. r30, r4, r4
/* 80299A54  40 82 00 08 */	bne lbl_80299A5C
/* 80299A58  83 CD 8C 90 */	lwz r30, JASDram(r13)
lbl_80299A5C:
/* 80299A5C  7C 7F 1B 78 */	mr r31, r3
/* 80299A60  38 60 00 10 */	li r3, 0x10
/* 80299A64  7F C4 F3 78 */	mr r4, r30
/* 80299A68  38 A0 00 00 */	li r5, 0
/* 80299A6C  48 03 52 2D */	bl __nw__FUlP7JKRHeapi
/* 80299A70  7C 7D 1B 79 */	or. r29, r3, r3
/* 80299A74  41 82 00 0C */	beq lbl_80299A80
/* 80299A78  4B FF E3 01 */	bl __ct__12JASBasicBankFv
/* 80299A7C  7C 7D 1B 78 */	mr r29, r3
lbl_80299A80:
/* 80299A80  28 1D 00 00 */	cmplwi r29, 0
/* 80299A84  40 82 00 0C */	bne lbl_80299A90
/* 80299A88  38 60 00 00 */	li r3, 0
/* 80299A8C  48 00 03 C4 */	b lbl_80299E50
lbl_80299A90:
/* 80299A90  7F A3 EB 78 */	mr r3, r29
/* 80299A94  38 80 00 80 */	li r4, 0x80
/* 80299A98  7F C5 F3 78 */	mr r5, r30
/* 80299A9C  4B FF E3 09 */	bl newInstTable__12JASBasicBankFUcP7JKRHeap
/* 80299AA0  3B 60 00 00 */	li r27, 0
/* 80299AA4  3A A0 00 00 */	li r21, 0
lbl_80299AA8:
/* 80299AA8  7F E3 FB 78 */	mr r3, r31
/* 80299AAC  38 15 00 24 */	addi r0, r21, 0x24
/* 80299AB0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80299AB4  48 00 05 7D */	bl func_8029A030
/* 80299AB8  7C 7C 1B 79 */	or. r28, r3, r3
/* 80299ABC  41 82 02 20 */	beq lbl_80299CDC
/* 80299AC0  38 60 00 1C */	li r3, 0x1c
/* 80299AC4  7F C4 F3 78 */	mr r4, r30
/* 80299AC8  38 A0 00 00 */	li r5, 0
/* 80299ACC  48 03 51 CD */	bl __nw__FUlP7JKRHeapi
/* 80299AD0  7C 77 1B 79 */	or. r23, r3, r3
/* 80299AD4  41 82 00 0C */	beq lbl_80299AE0
/* 80299AD8  4B FF E5 3D */	bl __ct__12JASBasicInstFv
/* 80299ADC  7C 77 1B 78 */	mr r23, r3
lbl_80299AE0:
/* 80299AE0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80299AE4  D0 17 00 04 */	stfs f0, 4(r23)
/* 80299AE8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80299AEC  D0 17 00 08 */	stfs f0, 8(r23)
/* 80299AF0  3B 40 00 00 */	li r26, 0
/* 80299AF4  3B 20 00 00 */	li r25, 0
/* 80299AF8  3B 00 00 00 */	li r24, 0
lbl_80299AFC:
/* 80299AFC  7F E3 FB 78 */	mr r3, r31
/* 80299B00  38 18 00 10 */	addi r0, r24, 0x10
/* 80299B04  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80299B08  48 00 05 11 */	bl func_8029A018
/* 80299B0C  7C 76 1B 79 */	or. r22, r3, r3
/* 80299B10  41 82 01 2C */	beq lbl_80299C3C
/* 80299B14  7F A3 EB 78 */	mr r3, r29
/* 80299B18  7F E4 FB 78 */	mr r4, r31
/* 80299B1C  7E C5 B3 78 */	mr r5, r22
/* 80299B20  48 00 03 49 */	bl findOscPtr__Q212JASBNKParser4Ver0FP12JASBasicBankPCQ312JASBNKParser4Ver07THeaderPCQ312JASBNKParser4Ver04TOsc
/* 80299B24  7C 65 1B 79 */	or. r5, r3, r3
/* 80299B28  41 82 00 14 */	beq lbl_80299B3C
/* 80299B2C  7E E3 BB 78 */	mr r3, r23
/* 80299B30  7F 44 D3 78 */	mr r4, r26
/* 80299B34  4B FF E6 E9 */	bl setOsc__12JASBasicInstFiPCQ213JASOscillator4Data
/* 80299B38  48 00 01 00 */	b lbl_80299C38
lbl_80299B3C:
/* 80299B3C  38 60 00 18 */	li r3, 0x18
/* 80299B40  7F C4 F3 78 */	mr r4, r30
/* 80299B44  38 A0 00 00 */	li r5, 0
/* 80299B48  48 03 51 51 */	bl __nw__FUlP7JKRHeapi
/* 80299B4C  7C 74 1B 78 */	mr r20, r3
/* 80299B50  88 16 00 00 */	lbz r0, 0(r22)
/* 80299B54  90 03 00 00 */	stw r0, 0(r3)
/* 80299B58  C0 16 00 04 */	lfs f0, 4(r22)
/* 80299B5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80299B60  7F E3 FB 78 */	mr r3, r31
/* 80299B64  80 96 00 08 */	lwz r4, 8(r22)
/* 80299B68  48 00 04 99 */	bl func_8029A000
/* 80299B6C  7C 73 1B 79 */	or. r19, r3, r3
/* 80299B70  41 82 00 44 */	beq lbl_80299BB4
/* 80299B74  48 00 04 19 */	bl getOscTableEndPtr__Q212JASBNKParser4Ver0FPCQ213JASOscillator5Point
/* 80299B78  7C 73 18 50 */	subf r3, r19, r3
/* 80299B7C  38 00 00 06 */	li r0, 6
/* 80299B80  7C 03 03 D6 */	divw r0, r3, r0
/* 80299B84  1E 40 00 06 */	mulli r18, r0, 6
/* 80299B88  7E 43 93 78 */	mr r3, r18
/* 80299B8C  7F C4 F3 78 */	mr r4, r30
/* 80299B90  38 A0 00 00 */	li r5, 0
/* 80299B94  48 03 51 7D */	bl __nwa__FUlP7JKRHeapi
/* 80299B98  7C 71 1B 78 */	mr r17, r3
/* 80299B9C  7E 63 9B 78 */	mr r3, r19
/* 80299BA0  7E 24 8B 78 */	mr r4, r17
/* 80299BA4  7E 45 93 78 */	mr r5, r18
/* 80299BA8  4B FF 57 AD */	bl bcopy__7JASCalcFPCvPvUl
/* 80299BAC  92 34 00 08 */	stw r17, 8(r20)
/* 80299BB0  48 00 00 0C */	b lbl_80299BBC
lbl_80299BB4:
/* 80299BB4  38 00 00 00 */	li r0, 0
/* 80299BB8  90 14 00 08 */	stw r0, 8(r20)
lbl_80299BBC:
/* 80299BBC  7F E3 FB 78 */	mr r3, r31
/* 80299BC0  80 96 00 0C */	lwz r4, 0xc(r22)
/* 80299BC4  48 00 04 3D */	bl func_8029A000
/* 80299BC8  7C 73 1B 79 */	or. r19, r3, r3
/* 80299BCC  41 82 00 44 */	beq lbl_80299C10
/* 80299BD0  48 00 03 BD */	bl getOscTableEndPtr__Q212JASBNKParser4Ver0FPCQ213JASOscillator5Point
/* 80299BD4  7C 73 18 50 */	subf r3, r19, r3
/* 80299BD8  38 00 00 06 */	li r0, 6
/* 80299BDC  7C 03 03 D6 */	divw r0, r3, r0
/* 80299BE0  1E 40 00 06 */	mulli r18, r0, 6
/* 80299BE4  7E 43 93 78 */	mr r3, r18
/* 80299BE8  7F C4 F3 78 */	mr r4, r30
/* 80299BEC  38 A0 00 00 */	li r5, 0
/* 80299BF0  48 03 51 21 */	bl __nwa__FUlP7JKRHeapi
/* 80299BF4  7C 71 1B 78 */	mr r17, r3
/* 80299BF8  7E 63 9B 78 */	mr r3, r19
/* 80299BFC  7E 24 8B 78 */	mr r4, r17
/* 80299C00  7E 45 93 78 */	mr r5, r18
/* 80299C04  4B FF 57 51 */	bl bcopy__7JASCalcFPCvPvUl
/* 80299C08  92 34 00 0C */	stw r17, 0xc(r20)
/* 80299C0C  48 00 00 0C */	b lbl_80299C18
lbl_80299C10:
/* 80299C10  38 00 00 00 */	li r0, 0
/* 80299C14  90 14 00 0C */	stw r0, 0xc(r20)
lbl_80299C18:
/* 80299C18  C0 16 00 10 */	lfs f0, 0x10(r22)
/* 80299C1C  D0 14 00 10 */	stfs f0, 0x10(r20)
/* 80299C20  C0 16 00 14 */	lfs f0, 0x14(r22)
/* 80299C24  D0 14 00 14 */	stfs f0, 0x14(r20)
/* 80299C28  7E E3 BB 78 */	mr r3, r23
/* 80299C2C  7F 44 D3 78 */	mr r4, r26
/* 80299C30  7E 85 A3 78 */	mr r5, r20
/* 80299C34  4B FF E5 E9 */	bl setOsc__12JASBasicInstFiPCQ213JASOscillator4Data
lbl_80299C38:
/* 80299C38  3B 5A 00 01 */	addi r26, r26, 1
lbl_80299C3C:
/* 80299C3C  3B 39 00 01 */	addi r25, r25, 1
/* 80299C40  2C 19 00 02 */	cmpwi r25, 2
/* 80299C44  3B 18 00 04 */	addi r24, r24, 4
/* 80299C48  41 80 FE B4 */	blt lbl_80299AFC
/* 80299C4C  7E E3 BB 78 */	mr r3, r23
/* 80299C50  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 80299C54  7F C5 F3 78 */	mr r5, r30
/* 80299C58  4B FF E5 45 */	bl setKeyRegionCount__12JASBasicInstFUlP7JKRHeap
/* 80299C5C  3A 20 00 00 */	li r17, 0
/* 80299C60  3A 80 00 00 */	li r20, 0
/* 80299C64  48 00 00 5C */	b lbl_80299CC0
lbl_80299C68:
/* 80299C68  7E E3 BB 78 */	mr r3, r23
/* 80299C6C  7E 24 8B 78 */	mr r4, r17
/* 80299C70  4B FF E5 BD */	bl getKeyRegion__12JASBasicInstFi
/* 80299C74  7C 76 1B 78 */	mr r22, r3
/* 80299C78  7F E3 FB 78 */	mr r3, r31
/* 80299C7C  38 14 00 2C */	addi r0, r20, 0x2c
/* 80299C80  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80299C84  48 00 03 65 */	bl func_80299FE8
/* 80299C88  7C 64 1B 78 */	mr r4, r3
/* 80299C8C  88 03 00 00 */	lbz r0, 0(r3)
/* 80299C90  90 16 00 00 */	stw r0, 0(r22)
/* 80299C94  7F E3 FB 78 */	mr r3, r31
/* 80299C98  80 84 00 08 */	lwz r4, 8(r4)
/* 80299C9C  48 00 03 35 */	bl func_80299FD0
/* 80299CA0  80 03 00 04 */	lwz r0, 4(r3)
/* 80299CA4  B0 16 00 04 */	sth r0, 4(r22)
/* 80299CA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80299CAC  D0 16 00 08 */	stfs f0, 8(r22)
/* 80299CB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80299CB4  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 80299CB8  3A 31 00 01 */	addi r17, r17, 1
/* 80299CBC  3A 94 00 04 */	addi r20, r20, 4
lbl_80299CC0:
/* 80299CC0  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80299CC4  7C 11 00 40 */	cmplw r17, r0
/* 80299CC8  41 80 FF A0 */	blt lbl_80299C68
/* 80299CCC  7F A3 EB 78 */	mr r3, r29
/* 80299CD0  7F 64 DB 78 */	mr r4, r27
/* 80299CD4  7E E5 BB 78 */	mr r5, r23
/* 80299CD8  4B FF E1 91 */	bl setInst__12JASBasicBankFiP7JASInst
lbl_80299CDC:
/* 80299CDC  3B 7B 00 01 */	addi r27, r27, 1
/* 80299CE0  2C 1B 00 80 */	cmpwi r27, 0x80
/* 80299CE4  3A B5 00 04 */	addi r21, r21, 4
/* 80299CE8  41 80 FD C0 */	blt lbl_80299AA8
/* 80299CEC  3A 80 00 00 */	li r20, 0
/* 80299CF0  3B 40 00 00 */	li r26, 0
lbl_80299CF4:
/* 80299CF4  7F E3 FB 78 */	mr r3, r31
/* 80299CF8  38 1A 03 B4 */	addi r0, r26, 0x3b4
/* 80299CFC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80299D00  48 00 02 B9 */	bl func_80299FB8
/* 80299D04  7C 76 1B 79 */	or. r22, r3, r3
/* 80299D08  41 82 01 34 */	beq lbl_80299E3C
/* 80299D0C  38 60 00 0C */	li r3, 0xc
/* 80299D10  7F C4 F3 78 */	mr r4, r30
/* 80299D14  38 A0 00 00 */	li r5, 0
/* 80299D18  48 03 4F 81 */	bl __nw__FUlP7JKRHeapi
/* 80299D1C  7C 77 1B 79 */	or. r23, r3, r3
/* 80299D20  41 82 00 0C */	beq lbl_80299D2C
/* 80299D24  4B FF E5 C9 */	bl __ct__10JASDrumSetFv
/* 80299D28  7C 77 1B 78 */	mr r23, r3
lbl_80299D2C:
/* 80299D2C  7E E3 BB 78 */	mr r3, r23
/* 80299D30  38 80 00 80 */	li r4, 0x80
/* 80299D34  7F C5 F3 78 */	mr r5, r30
/* 80299D38  4B FF E6 39 */	bl newPercArray__10JASDrumSetFUcP7JKRHeap
/* 80299D3C  3B 20 00 00 */	li r25, 0
/* 80299D40  3B 60 00 00 */	li r27, 0
/* 80299D44  3B 80 00 00 */	li r28, 0
lbl_80299D48:
/* 80299D48  7F E3 FB 78 */	mr r3, r31
/* 80299D4C  38 1C 00 88 */	addi r0, r28, 0x88
/* 80299D50  7C 96 00 2E */	lwzx r4, r22, r0
/* 80299D54  48 00 02 4D */	bl func_80299FA0
/* 80299D58  7C 75 1B 79 */	or. r21, r3, r3
/* 80299D5C  41 82 00 BC */	beq lbl_80299E18
/* 80299D60  38 60 00 18 */	li r3, 0x18
/* 80299D64  7F C4 F3 78 */	mr r4, r30
/* 80299D68  38 A0 00 00 */	li r5, 0
/* 80299D6C  48 03 4F 2D */	bl __nw__FUlP7JKRHeapi
/* 80299D70  7C 78 1B 79 */	or. r24, r3, r3
/* 80299D74  41 82 00 0C */	beq lbl_80299D80
/* 80299D78  4B FF E7 4D */	bl __ct__Q210JASDrumSet5TPercFv
/* 80299D7C  7C 78 1B 78 */	mr r24, r3
lbl_80299D80:
/* 80299D80  C0 15 00 00 */	lfs f0, 0(r21)
/* 80299D84  D0 18 00 00 */	stfs f0, 0(r24)
/* 80299D88  C0 15 00 04 */	lfs f0, 4(r21)
/* 80299D8C  D0 18 00 04 */	stfs f0, 4(r24)
/* 80299D90  80 76 00 00 */	lwz r3, 0(r22)
/* 80299D94  3C 03 AF BB */	addis r0, r3, 0xafbb
/* 80299D98  28 00 52 32 */	cmplwi r0, 0x5232
/* 80299D9C  40 82 00 48 */	bne lbl_80299DE4
/* 80299DA0  38 19 02 88 */	addi r0, r25, 0x288
/* 80299DA4  7C 16 00 AE */	lbzx r0, r22, r0
/* 80299DA8  7C 00 07 74 */	extsb r0, r0
/* 80299DAC  C8 22 BC 68 */	lfd f1, lit_990(r2)
/* 80299DB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80299DB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80299DB8  3C 00 43 30 */	lis r0, 0x4330
/* 80299DBC  90 01 00 08 */	stw r0, 8(r1)
/* 80299DC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80299DC4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80299DC8  C0 02 BC 58 */	lfs f0, lit_835(r2)
/* 80299DCC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80299DD0  D0 18 00 08 */	stfs f0, 8(r24)
/* 80299DD4  7F 03 C3 78 */	mr r3, r24
/* 80299DD8  38 1B 03 08 */	addi r0, r27, 0x308
/* 80299DDC  7C 96 02 2E */	lhzx r4, r22, r0
/* 80299DE0  4B FF E7 05 */	bl setRelease__Q210JASDrumSet5TPercFUl
lbl_80299DE4:
/* 80299DE4  7F E3 FB 78 */	mr r3, r31
/* 80299DE8  80 95 00 14 */	lwz r4, 0x14(r21)
/* 80299DEC  48 00 01 E5 */	bl func_80299FD0
/* 80299DF0  80 03 00 04 */	lwz r0, 4(r3)
/* 80299DF4  B0 18 00 0E */	sth r0, 0xe(r24)
/* 80299DF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80299DFC  D0 18 00 10 */	stfs f0, 0x10(r24)
/* 80299E00  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80299E04  D0 18 00 14 */	stfs f0, 0x14(r24)
/* 80299E08  7E E3 BB 78 */	mr r3, r23
/* 80299E0C  7F 24 CB 78 */	mr r4, r25
/* 80299E10  7F 05 C3 78 */	mr r5, r24
/* 80299E14  4B FF E6 A1 */	bl setPerc__10JASDrumSetFiPQ210JASDrumSet5TPerc
lbl_80299E18:
/* 80299E18  3B 39 00 01 */	addi r25, r25, 1
/* 80299E1C  2C 19 00 80 */	cmpwi r25, 0x80
/* 80299E20  3B 7B 00 02 */	addi r27, r27, 2
/* 80299E24  3B 9C 00 04 */	addi r28, r28, 4
/* 80299E28  41 80 FF 20 */	blt lbl_80299D48
/* 80299E2C  7F A3 EB 78 */	mr r3, r29
/* 80299E30  38 94 00 E4 */	addi r4, r20, 0xe4
/* 80299E34  7E E5 BB 78 */	mr r5, r23
/* 80299E38  4B FF E0 31 */	bl setInst__12JASBasicBankFiP7JASInst
lbl_80299E3C:
/* 80299E3C  3A 94 00 01 */	addi r20, r20, 1
/* 80299E40  2C 14 00 0C */	cmpwi r20, 0xc
/* 80299E44  3B 5A 00 04 */	addi r26, r26, 4
/* 80299E48  41 80 FE AC */	blt lbl_80299CF4
/* 80299E4C  7F A3 EB 78 */	mr r3, r29
lbl_80299E50:
/* 80299E50  39 61 00 50 */	addi r11, r1, 0x50
/* 80299E54  48 0C 83 A5 */	bl _restgpr_17
/* 80299E58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80299E5C  7C 08 03 A6 */	mtlr r0
/* 80299E60  38 21 00 50 */	addi r1, r1, 0x50
/* 80299E64  4E 80 00 20 */	blr 
