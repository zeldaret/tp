lbl_804C4FDC:
/* 804C4FDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804C4FE0  7C 08 02 A6 */	mflr r0
/* 804C4FE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804C4FE8  39 61 00 70 */	addi r11, r1, 0x70
/* 804C4FEC  4B E9 D1 D9 */	bl _savegpr_23
/* 804C4FF0  7C 78 1B 78 */	mr r24, r3
/* 804C4FF4  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804C4FF8  3B 83 64 C8 */	addi r28, r3, lit_3777@l /* 0x804C64C8@l */
/* 804C4FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5000  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5004  83 7D 5D B4 */	lwz r27, 0x5db4(r29)
/* 804C5008  7F 63 DB 78 */	mr r3, r27
/* 804C500C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 804C5010  81 8C 02 78 */	lwz r12, 0x278(r12)
/* 804C5014  7D 89 03 A6 */	mtctr r12
/* 804C5018  4E 80 04 21 */	bctrl 
/* 804C501C  2C 03 00 00 */	cmpwi r3, 0
/* 804C5020  40 82 00 30 */	bne lbl_804C5050
/* 804C5024  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804C5028  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804C502C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804C5030  41 82 00 14 */	beq lbl_804C5044
/* 804C5034  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5038  64 00 40 00 */	oris r0, r0, 0x4000
/* 804C503C  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C5040  48 00 00 10 */	b lbl_804C5050
lbl_804C5044:
/* 804C5044  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5048  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 804C504C  90 18 08 90 */	stw r0, 0x890(r24)
lbl_804C5050:
/* 804C5050  7F 03 C3 78 */	mr r3, r24
/* 804C5054  4B FF F4 79 */	bl initMidnaModel__9daMidna_cFv
/* 804C5058  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 804C505C  B0 18 08 5A */	sth r0, 0x85a(r24)
/* 804C5060  7F 03 C3 78 */	mr r3, r24
/* 804C5064  4B FF EE A1 */	bl setDemoData__9daMidna_cFv
/* 804C5068  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C506C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 804C5070  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C5074  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5078  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C507C  41 82 00 48 */	beq lbl_804C50C4
/* 804C5080  7F 63 DB 78 */	mr r3, r27
/* 804C5084  4B C6 48 D5 */	bl checkMidnaUseAbility__9daAlink_cCFv
/* 804C5088  2C 03 00 00 */	cmpwi r3, 0
/* 804C508C  40 82 00 24 */	bne lbl_804C50B0
/* 804C5090  38 7C 01 1C */	addi r3, r28, 0x11c
/* 804C5094  A0 63 00 6C */	lhz r3, 0x6c(r3)
/* 804C5098  A0 18 05 E4 */	lhz r0, 0x5e4(r24)
/* 804C509C  7C 03 00 40 */	cmplw r3, r0
/* 804C50A0  41 82 00 10 */	beq lbl_804C50B0
/* 804C50A4  A0 18 00 F8 */	lhz r0, 0xf8(r24)
/* 804C50A8  28 00 00 01 */	cmplwi r0, 1
/* 804C50AC  40 82 00 18 */	bne lbl_804C50C4
lbl_804C50B0:
/* 804C50B0  80 98 08 90 */	lwz r4, 0x890(r24)
/* 804C50B4  3C 60 F8 00 */	lis r3, 0xF800 /* 0xF7FFF9FF@ha */
/* 804C50B8  38 03 F9 FF */	addi r0, r3, 0xF9FF /* 0xF7FFF9FF@l */
/* 804C50BC  7C 80 00 38 */	and r0, r4, r0
/* 804C50C0  90 18 08 90 */	stw r0, 0x890(r24)
lbl_804C50C4:
/* 804C50C4  3C 60 80 4C */	lis r3, struct_804C6CD8+0x1@ha /* 0x804C6CD9@ha */
/* 804C50C8  38 63 6C D9 */	addi r3, r3, struct_804C6CD8+0x1@l /* 0x804C6CD9@l */
/* 804C50CC  48 00 12 B1 */	bl func_804C637C
/* 804C50D0  7F 03 C3 78 */	mr r3, r24
/* 804C50D4  4B FF 9F 9D */	bl checkMidnaPosState__9daMidna_cFv
/* 804C50D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C50DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C50E0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804C50E4  38 80 0C 10 */	li r4, 0xc10
/* 804C50E8  4B B6 F8 D5 */	bl isEventBit__11dSv_event_cCFUs
/* 804C50EC  2C 03 00 00 */	cmpwi r3, 0
/* 804C50F0  41 82 00 20 */	beq lbl_804C5110
/* 804C50F4  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C50F8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C50FC  40 82 00 14 */	bne lbl_804C5110
/* 804C5100  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 804C5104  60 00 00 04 */	ori r0, r0, 4
/* 804C5108  90 1B 05 70 */	stw r0, 0x570(r27)
/* 804C510C  48 00 00 10 */	b lbl_804C511C
lbl_804C5110:
/* 804C5110  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 804C5114  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804C5118  90 1B 05 70 */	stw r0, 0x570(r27)
lbl_804C511C:
/* 804C511C  7F 03 C3 78 */	mr r3, r24
/* 804C5120  4B FF F8 99 */	bl setMidnaNoDrawFlg__9daMidna_cFv
/* 804C5124  7F 63 DB 78 */	mr r3, r27
/* 804C5128  4B B5 69 ED */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 804C512C  80 B8 08 90 */	lwz r5, 0x890(r24)
/* 804C5130  54 A0 04 A5 */	rlwinm. r0, r5, 0, 0x12, 0x12
/* 804C5134  41 82 02 04 */	beq lbl_804C5338
/* 804C5138  A0 18 00 F8 */	lhz r0, 0xf8(r24)
/* 804C513C  28 00 00 01 */	cmplwi r0, 1
/* 804C5140  41 82 00 58 */	beq lbl_804C5198
/* 804C5144  54 A0 05 29 */	rlwinm. r0, r5, 0, 0x14, 0x14
/* 804C5148  40 82 00 50 */	bne lbl_804C5198
/* 804C514C  80 18 08 C0 */	lwz r0, 0x8c0(r24)
/* 804C5150  28 00 00 02 */	cmplwi r0, 2
/* 804C5154  41 82 00 44 */	beq lbl_804C5198
/* 804C5158  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C515C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5160  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 804C5164  28 00 00 00 */	cmplwi r0, 0
/* 804C5168  41 82 01 D0 */	beq lbl_804C5338
/* 804C516C  28 03 00 00 */	cmplwi r3, 0
/* 804C5170  41 82 01 C8 */	beq lbl_804C5338
/* 804C5174  54 A0 01 8D */	rlwinm. r0, r5, 0, 6, 6
/* 804C5178  40 82 00 20 */	bne lbl_804C5198
/* 804C517C  A8 03 00 08 */	lha r0, 8(r3)
/* 804C5180  2C 00 02 C1 */	cmpwi r0, 0x2c1
/* 804C5184  41 82 00 14 */	beq lbl_804C5198
/* 804C5188  2C 00 02 C4 */	cmpwi r0, 0x2c4
/* 804C518C  41 82 00 0C */	beq lbl_804C5198
/* 804C5190  2C 00 02 C3 */	cmpwi r0, 0x2c3
/* 804C5194  40 82 01 A4 */	bne lbl_804C5338
lbl_804C5198:
/* 804C5198  80 18 08 C0 */	lwz r0, 0x8c0(r24)
/* 804C519C  28 00 00 03 */	cmplwi r0, 3
/* 804C51A0  41 82 00 3C */	beq lbl_804C51DC
/* 804C51A4  28 00 00 10 */	cmplwi r0, 0x10
/* 804C51A8  41 82 00 34 */	beq lbl_804C51DC
/* 804C51AC  28 00 00 04 */	cmplwi r0, 4
/* 804C51B0  41 82 00 2C */	beq lbl_804C51DC
/* 804C51B4  28 00 00 06 */	cmplwi r0, 6
/* 804C51B8  41 82 00 24 */	beq lbl_804C51DC
/* 804C51BC  28 00 00 07 */	cmplwi r0, 7
/* 804C51C0  41 82 00 1C */	beq lbl_804C51DC
/* 804C51C4  28 00 00 0E */	cmplwi r0, 0xe
/* 804C51C8  41 82 00 14 */	beq lbl_804C51DC
/* 804C51CC  28 00 00 13 */	cmplwi r0, 0x13
/* 804C51D0  41 82 00 0C */	beq lbl_804C51DC
/* 804C51D4  28 00 00 08 */	cmplwi r0, 8
/* 804C51D8  40 82 00 10 */	bne lbl_804C51E8
lbl_804C51DC:
/* 804C51DC  38 00 00 03 */	li r0, 3
/* 804C51E0  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C51E4  48 00 01 5C */	b lbl_804C5340
lbl_804C51E8:
/* 804C51E8  88 78 08 4E */	lbz r3, 0x84e(r24)
/* 804C51EC  28 03 00 00 */	cmplwi r3, 0
/* 804C51F0  40 82 00 50 */	bne lbl_804C5240
/* 804C51F4  54 A0 05 29 */	rlwinm. r0, r5, 0, 0x14, 0x14
/* 804C51F8  41 82 00 10 */	beq lbl_804C5208
/* 804C51FC  38 00 00 03 */	li r0, 3
/* 804C5200  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C5204  48 00 01 3C */	b lbl_804C5340
lbl_804C5208:
/* 804C5208  38 00 00 01 */	li r0, 1
/* 804C520C  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C5210  7F 63 DB 78 */	mr r3, r27
/* 804C5214  4B C0 64 81 */	bl initShadowScaleLight__9daAlink_cFv
/* 804C5218  2C 03 00 00 */	cmpwi r3, 0
/* 804C521C  41 82 00 14 */	beq lbl_804C5230
/* 804C5220  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5224  64 00 00 08 */	oris r0, r0, 8
/* 804C5228  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C522C  48 00 01 14 */	b lbl_804C5340
lbl_804C5230:
/* 804C5230  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5234  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 804C5238  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C523C  48 00 01 04 */	b lbl_804C5340
lbl_804C5240:
/* 804C5240  28 03 00 01 */	cmplwi r3, 1
/* 804C5244  40 82 00 20 */	bne lbl_804C5264
/* 804C5248  7F 63 DB 78 */	mr r3, r27
/* 804C524C  4B C0 67 ED */	bl moveShadowScaleLight__9daAlink_cFv
/* 804C5250  2C 03 00 00 */	cmpwi r3, 0
/* 804C5254  41 82 00 EC */	beq lbl_804C5340
/* 804C5258  38 00 00 02 */	li r0, 2
/* 804C525C  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C5260  48 00 00 E0 */	b lbl_804C5340
lbl_804C5264:
/* 804C5264  28 03 00 02 */	cmplwi r3, 2
/* 804C5268  40 82 00 48 */	bne lbl_804C52B0
/* 804C526C  7F 63 DB 78 */	mr r3, r27
/* 804C5270  4B C0 67 C9 */	bl moveShadowScaleLight__9daAlink_cFv
/* 804C5274  80 78 05 78 */	lwz r3, 0x578(r24)
/* 804C5278  38 80 00 01 */	li r4, 1
/* 804C527C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C5280  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C5284  40 82 00 18 */	bne lbl_804C529C
/* 804C5288  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 804C528C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C5290  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C5294  41 82 00 08 */	beq lbl_804C529C
/* 804C5298  38 80 00 00 */	li r4, 0
lbl_804C529C:
/* 804C529C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C52A0  41 82 00 A0 */	beq lbl_804C5340
/* 804C52A4  38 00 00 03 */	li r0, 3
/* 804C52A8  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C52AC  48 00 00 94 */	b lbl_804C5340
lbl_804C52B0:
/* 804C52B0  28 03 00 03 */	cmplwi r3, 3
/* 804C52B4  40 82 00 24 */	bne lbl_804C52D8
/* 804C52B8  54 A0 01 CF */	rlwinm. r0, r5, 0, 7, 7
/* 804C52BC  41 82 00 1C */	beq lbl_804C52D8
/* 804C52C0  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C52C4  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 804C52C8  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C52CC  38 00 00 04 */	li r0, 4
/* 804C52D0  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C52D4  48 00 00 6C */	b lbl_804C5340
lbl_804C52D8:
/* 804C52D8  28 03 00 04 */	cmplwi r3, 4
/* 804C52DC  40 82 00 40 */	bne lbl_804C531C
/* 804C52E0  80 78 05 78 */	lwz r3, 0x578(r24)
/* 804C52E4  38 80 00 01 */	li r4, 1
/* 804C52E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C52EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C52F0  40 82 00 18 */	bne lbl_804C5308
/* 804C52F4  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 804C52F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C52FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C5300  41 82 00 08 */	beq lbl_804C5308
/* 804C5304  38 80 00 00 */	li r4, 0
lbl_804C5308:
/* 804C5308  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C530C  41 82 00 34 */	beq lbl_804C5340
/* 804C5310  38 00 00 05 */	li r0, 5
/* 804C5314  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C5318  48 00 00 28 */	b lbl_804C5340
lbl_804C531C:
/* 804C531C  28 03 00 05 */	cmplwi r3, 5
/* 804C5320  40 82 00 20 */	bne lbl_804C5340
/* 804C5324  54 A0 05 29 */	rlwinm. r0, r5, 0, 0x14, 0x14
/* 804C5328  41 82 00 18 */	beq lbl_804C5340
/* 804C532C  38 00 00 03 */	li r0, 3
/* 804C5330  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C5334  48 00 00 0C */	b lbl_804C5340
lbl_804C5338:
/* 804C5338  38 00 00 00 */	li r0, 0
/* 804C533C  98 18 08 4E */	stb r0, 0x84e(r24)
lbl_804C5340:
/* 804C5340  38 7C 01 1C */	addi r3, r28, 0x11c
/* 804C5344  A0 63 00 6C */	lhz r3, 0x6c(r3)
/* 804C5348  A0 18 05 E4 */	lhz r0, 0x5e4(r24)
/* 804C534C  7C 03 00 40 */	cmplw r3, r0
/* 804C5350  40 82 00 68 */	bne lbl_804C53B8
/* 804C5354  80 78 05 78 */	lwz r3, 0x578(r24)
/* 804C5358  38 63 00 0C */	addi r3, r3, 0xc
/* 804C535C  C0 3C 03 A4 */	lfs f1, 0x3a4(r28)
/* 804C5360  4B E6 30 CD */	bl checkPass__12J3DFrameCtrlFf
/* 804C5364  2C 03 00 00 */	cmpwi r3, 0
/* 804C5368  41 82 00 50 */	beq lbl_804C53B8
/* 804C536C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804C5370  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804C5374  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804C5378  41 82 00 40 */	beq lbl_804C53B8
/* 804C537C  80 18 09 D0 */	lwz r0, 0x9d0(r24)
/* 804C5380  28 00 00 00 */	cmplwi r0, 0
/* 804C5384  40 82 00 34 */	bne lbl_804C53B8
/* 804C5388  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 804C538C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C5390  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 804C5394  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C5398  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804C539C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C53A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C53A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804C53A8  38 80 00 02 */	li r4, 2
/* 804C53AC  38 A0 00 1F */	li r5, 0x1f
/* 804C53B0  38 C1 00 28 */	addi r6, r1, 0x28
/* 804C53B4  4B BA A6 71 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804C53B8:
/* 804C53B8  7F 03 C3 78 */	mr r3, r24
/* 804C53BC  4B FF 85 81 */	bl allAnimePlay__9daMidna_cFv
/* 804C53C0  7F 03 C3 78 */	mr r3, r24
/* 804C53C4  4B FF BC 79 */	bl setAnm__9daMidna_cFv
/* 804C53C8  7F 03 C3 78 */	mr r3, r24
/* 804C53CC  4B FF DE CD */	bl setHairAngle__9daMidna_cFv
/* 804C53D0  7F 03 C3 78 */	mr r3, r24
/* 804C53D4  4B FF 8A 31 */	bl setMatrix__9daMidna_cFv
/* 804C53D8  80 78 05 78 */	lwz r3, 0x578(r24)
/* 804C53DC  4B B4 BE 11 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 804C53E0  7F 03 C3 78 */	mr r3, r24
/* 804C53E4  4B FF 99 39 */	bl setRoomInfo__9daMidna_cFv
/* 804C53E8  7F 03 C3 78 */	mr r3, r24
/* 804C53EC  4B FF DA D1 */	bl setNeckAngle__9daMidna_cFv
/* 804C53F0  80 18 08 98 */	lwz r0, 0x898(r24)
/* 804C53F4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C53F8  41 82 00 0C */	beq lbl_804C5404
/* 804C53FC  7F 03 C3 78 */	mr r3, r24
/* 804C5400  4B FF DE 99 */	bl setHairAngle__9daMidna_cFv
lbl_804C5404:
/* 804C5404  7F 03 C3 78 */	mr r3, r24
/* 804C5408  4B FF 90 69 */	bl setBodyPartMatrix__9daMidna_cFv
/* 804C540C  7F 03 C3 78 */	mr r3, r24
/* 804C5410  4B FF 99 A9 */	bl setBodyPartPos__9daMidna_cFv
/* 804C5414  38 78 06 FC */	addi r3, r24, 0x6fc
/* 804C5418  38 80 00 00 */	li r4, 0
/* 804C541C  88 B8 08 4D */	lbz r5, 0x84d(r24)
/* 804C5420  81 98 06 FC */	lwz r12, 0x6fc(r24)
/* 804C5424  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804C5428  7D 89 03 A6 */	mtctr r12
/* 804C542C  4E 80 04 21 */	bctrl 
/* 804C5430  A0 18 00 F8 */	lhz r0, 0xf8(r24)
/* 804C5434  28 00 00 01 */	cmplwi r0, 1
/* 804C5438  40 82 02 9C */	bne lbl_804C56D4
/* 804C543C  38 00 00 00 */	li r0, 0
/* 804C5440  88 78 08 4E */	lbz r3, 0x84e(r24)
/* 804C5444  28 03 00 02 */	cmplwi r3, 2
/* 804C5448  41 82 00 0C */	beq lbl_804C5454
/* 804C544C  28 03 00 01 */	cmplwi r3, 1
/* 804C5450  40 82 00 08 */	bne lbl_804C5458
lbl_804C5454:
/* 804C5454  38 00 00 01 */	li r0, 1
lbl_804C5458:
/* 804C5458  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804C545C  41 82 00 14 */	beq lbl_804C5470
/* 804C5460  7F 63 DB 78 */	mr r3, r27
/* 804C5464  4B B5 66 B1 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 804C5468  7C 03 C0 40 */	cmplw r3, r24
/* 804C546C  40 82 02 A0 */	bne lbl_804C570C
lbl_804C5470:
/* 804C5470  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5474  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 804C5478  40 82 00 80 */	bne lbl_804C54F8
/* 804C547C  80 98 08 90 */	lwz r4, 0x890(r24)
/* 804C5480  3C 60 FF EC */	lis r3, 0xFFEC /* 0xFFEBFFFF@ha */
/* 804C5484  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0xFFEBFFFF@l */
/* 804C5488  7C 80 00 38 */	and r0, r4, r0
/* 804C548C  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C5490  3C 60 80 4C */	lis r3, daMidna_searchNpc__FP10fopAc_ac_cPv@ha /* 0x804C4750@ha */
/* 804C5494  38 63 47 50 */	addi r3, r3, daMidna_searchNpc__FP10fopAc_ac_cPv@l /* 0x804C4750@l */
/* 804C5498  38 81 00 24 */	addi r4, r1, 0x24
/* 804C549C  4B B5 43 5D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804C54A0  28 03 00 00 */	cmplwi r3, 0
/* 804C54A4  41 82 00 2C */	beq lbl_804C54D0
/* 804C54A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C54AC  2C 00 00 00 */	cmpwi r0, 0
/* 804C54B0  40 82 00 14 */	bne lbl_804C54C4
/* 804C54B4  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C54B8  64 00 00 10 */	oris r0, r0, 0x10
/* 804C54BC  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C54C0  48 00 00 10 */	b lbl_804C54D0
lbl_804C54C4:
/* 804C54C4  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C54C8  64 00 00 04 */	oris r0, r0, 4
/* 804C54CC  90 18 08 90 */	stw r0, 0x890(r24)
lbl_804C54D0:
/* 804C54D0  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C54D4  60 00 80 00 */	ori r0, r0, 0x8000
/* 804C54D8  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C54DC  38 78 07 8C */	addi r3, r24, 0x78c
/* 804C54E0  7F 04 C3 78 */	mr r4, r24
/* 804C54E4  38 A0 0B B9 */	li r5, 0xbb9
/* 804C54E8  38 C0 00 00 */	li r6, 0
/* 804C54EC  38 E0 00 00 */	li r7, 0
/* 804C54F0  4B D8 4A A1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804C54F4  48 00 02 18 */	b lbl_804C570C
lbl_804C54F8:
/* 804C54F8  38 78 07 8C */	addi r3, r24, 0x78c
/* 804C54FC  7F 04 C3 78 */	mr r4, r24
/* 804C5500  38 A0 00 00 */	li r5, 0
/* 804C5504  38 C0 00 00 */	li r6, 0
/* 804C5508  4B D8 4D D1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804C550C  2C 03 00 00 */	cmpwi r3, 0
/* 804C5510  41 82 01 FC */	beq lbl_804C570C
/* 804C5514  38 78 07 8C */	addi r3, r24, 0x78c
/* 804C5518  38 81 00 20 */	addi r4, r1, 0x20
/* 804C551C  4B D8 50 0D */	bl getEventId__10dMsgFlow_cFPi
/* 804C5520  7C 7D 1B 78 */	mr r29, r3
/* 804C5524  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5528  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C552C  41 82 00 28 */	beq lbl_804C5554
/* 804C5530  88 18 08 4E */	lbz r0, 0x84e(r24)
/* 804C5534  28 00 00 03 */	cmplwi r0, 3
/* 804C5538  40 82 00 10 */	bne lbl_804C5548
/* 804C553C  38 00 00 04 */	li r0, 4
/* 804C5540  98 18 08 4E */	stb r0, 0x84e(r24)
/* 804C5544  48 00 00 10 */	b lbl_804C5554
lbl_804C5548:
/* 804C5548  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C554C  64 00 01 00 */	oris r0, r0, 0x100
/* 804C5550  90 18 08 90 */	stw r0, 0x890(r24)
lbl_804C5554:
/* 804C5554  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804C5558  28 00 00 04 */	cmplwi r0, 4
/* 804C555C  41 82 00 0C */	beq lbl_804C5568
/* 804C5560  28 00 00 05 */	cmplwi r0, 5
/* 804C5564  40 82 00 C4 */	bne lbl_804C5628
lbl_804C5568:
/* 804C5568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C556C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5570  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804C5574  7F 04 C3 78 */	mr r4, r24
/* 804C5578  4B B7 CF A1 */	bl reset__14dEvt_control_cFPv
/* 804C557C  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5580  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 804C5584  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C5588  7F 03 C3 78 */	mr r3, r24
/* 804C558C  38 80 04 00 */	li r4, 0x400
/* 804C5590  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C5594  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C5598  38 C0 00 01 */	li r6, 1
/* 804C559C  4B B5 63 6D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804C55A0  38 80 00 03 */	li r4, 3
/* 804C55A4  B0 9B 06 04 */	sth r4, 0x604(r27)
/* 804C55A8  38 60 00 00 */	li r3, 0
/* 804C55AC  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 804C55B0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804C55B4  28 00 00 04 */	cmplwi r0, 4
/* 804C55B8  40 82 00 40 */	bne lbl_804C55F8
/* 804C55BC  38 00 00 3A */	li r0, 0x3a
/* 804C55C0  90 1B 06 14 */	stw r0, 0x614(r27)
/* 804C55C4  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 804C55C8  90 7B 06 10 */	stw r3, 0x610(r27)
/* 804C55CC  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 804C55D0  80 18 05 70 */	lwz r0, 0x570(r24)
/* 804C55D4  28 00 00 00 */	cmplwi r0, 0
/* 804C55D8  41 82 00 34 */	beq lbl_804C560C
/* 804C55DC  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C55E0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C55E4  40 82 00 28 */	bne lbl_804C560C
/* 804C55E8  98 98 08 4F */	stb r4, 0x84f(r24)
/* 804C55EC  38 00 00 0F */	li r0, 0xf
/* 804C55F0  90 18 08 C0 */	stw r0, 0x8c0(r24)
/* 804C55F4  48 00 00 18 */	b lbl_804C560C
lbl_804C55F8:
/* 804C55F8  38 00 00 39 */	li r0, 0x39
/* 804C55FC  90 1B 06 14 */	stw r0, 0x614(r27)
/* 804C5600  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 804C5604  90 7B 06 10 */	stw r3, 0x610(r27)
/* 804C5608  B0 7B 06 0A */	sth r3, 0x60a(r27)
lbl_804C560C:
/* 804C560C  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5610  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C5614  41 82 00 F8 */	beq lbl_804C570C
/* 804C5618  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C561C  64 00 02 00 */	oris r0, r0, 0x200
/* 804C5620  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C5624  48 00 00 E8 */	b lbl_804C570C
lbl_804C5628:
/* 804C5628  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C562C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C5630  41 82 00 48 */	beq lbl_804C5678
/* 804C5634  38 7C 01 1C */	addi r3, r28, 0x11c
/* 804C5638  A0 63 00 D8 */	lhz r3, 0xd8(r3)
/* 804C563C  A0 18 05 E4 */	lhz r0, 0x5e4(r24)
/* 804C5640  7C 03 00 40 */	cmplw r3, r0
/* 804C5644  40 82 00 C8 */	bne lbl_804C570C
/* 804C5648  80 78 05 78 */	lwz r3, 0x578(r24)
/* 804C564C  38 80 00 01 */	li r4, 1
/* 804C5650  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C5654  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C5658  40 82 00 18 */	bne lbl_804C5670
/* 804C565C  C0 3C 00 B8 */	lfs f1, 0xb8(r28)
/* 804C5660  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C5664  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C5668  41 82 00 08 */	beq lbl_804C5670
/* 804C566C  38 80 00 00 */	li r4, 0
lbl_804C5670:
/* 804C5670  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C5674  41 82 00 98 */	beq lbl_804C570C
lbl_804C5678:
/* 804C5678  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804C567C  28 00 00 0B */	cmplwi r0, 0xb
/* 804C5680  40 82 00 24 */	bne lbl_804C56A4
/* 804C5684  38 00 00 06 */	li r0, 6
/* 804C5688  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804C568C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804C5690  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 804C5694  80 1B 05 90 */	lwz r0, 0x590(r27)
/* 804C5698  60 00 00 80 */	ori r0, r0, 0x80
/* 804C569C  90 1B 05 90 */	stw r0, 0x590(r27)
/* 804C56A0  48 00 00 10 */	b lbl_804C56B0
lbl_804C56A4:
/* 804C56A4  80 1B 05 7C */	lwz r0, 0x57c(r27)
/* 804C56A8  64 00 00 01 */	oris r0, r0, 1
/* 804C56AC  90 1B 05 7C */	stw r0, 0x57c(r27)
lbl_804C56B0:
/* 804C56B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C56B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C56B8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804C56BC  7F 04 C3 78 */	mr r4, r24
/* 804C56C0  4B B7 CE 59 */	bl reset__14dEvt_control_cFPv
/* 804C56C4  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C56C8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 804C56CC  90 18 08 90 */	stw r0, 0x890(r24)
/* 804C56D0  48 00 00 3C */	b lbl_804C570C
lbl_804C56D4:
/* 804C56D4  28 00 00 02 */	cmplwi r0, 2
/* 804C56D8  40 82 00 34 */	bne lbl_804C570C
/* 804C56DC  7F 63 DB 78 */	mr r3, r27
/* 804C56E0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 804C56E4  81 8C 02 78 */	lwz r12, 0x278(r12)
/* 804C56E8  7D 89 03 A6 */	mtctr r12
/* 804C56EC  4E 80 04 21 */	bctrl 
/* 804C56F0  2C 03 00 00 */	cmpwi r3, 0
/* 804C56F4  40 82 00 18 */	bne lbl_804C570C
/* 804C56F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C56FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5700  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804C5704  7F 04 C3 78 */	mr r4, r24
/* 804C5708  4B B7 CE 11 */	bl reset__14dEvt_control_cFPv
lbl_804C570C:
/* 804C570C  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 804C5710  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C5714  41 82 00 10 */	beq lbl_804C5724
/* 804C5718  A0 18 00 FA */	lhz r0, 0xfa(r24)
/* 804C571C  60 00 00 01 */	ori r0, r0, 1
/* 804C5720  B0 18 00 FA */	sth r0, 0xfa(r24)
lbl_804C5724:
/* 804C5724  80 98 05 70 */	lwz r4, 0x570(r24)
/* 804C5728  28 04 00 00 */	cmplwi r4, 0
/* 804C572C  41 82 02 74 */	beq lbl_804C59A0
/* 804C5730  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5734  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C5738  40 82 02 68 */	bne lbl_804C59A0
/* 804C573C  38 7C 01 1C */	addi r3, r28, 0x11c
/* 804C5740  A0 63 00 48 */	lhz r3, 0x48(r3)
/* 804C5744  A0 18 05 E4 */	lhz r0, 0x5e4(r24)
/* 804C5748  7C 03 00 40 */	cmplw r3, r0
/* 804C574C  40 82 00 F8 */	bne lbl_804C5844
/* 804C5750  80 64 00 84 */	lwz r3, 0x84(r4)
/* 804C5754  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C5758  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 804C575C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C5760  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 804C5764  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804C5768  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804C576C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C5770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5774  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5778  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 804C577C  38 00 00 FF */	li r0, 0xff
/* 804C5780  90 01 00 08 */	stw r0, 8(r1)
/* 804C5784  38 80 00 00 */	li r4, 0
/* 804C5788  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C578C  38 00 FF FF */	li r0, -1
/* 804C5790  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C5794  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C5798  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C579C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C57A0  80 98 08 A0 */	lwz r4, 0x8a0(r24)
/* 804C57A4  38 A0 00 00 */	li r5, 0
/* 804C57A8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008397@ha */
/* 804C57AC  38 C6 83 97 */	addi r6, r6, 0x8397 /* 0x00008397@l */
/* 804C57B0  38 E1 00 34 */	addi r7, r1, 0x34
/* 804C57B4  39 18 01 0C */	addi r8, r24, 0x10c
/* 804C57B8  39 38 04 E4 */	addi r9, r24, 0x4e4
/* 804C57BC  39 40 00 00 */	li r10, 0
/* 804C57C0  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 804C57C4  4B B8 7D 09 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C57C8  90 78 08 A0 */	stw r3, 0x8a0(r24)
/* 804C57CC  80 78 05 70 */	lwz r3, 0x570(r24)
/* 804C57D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C57D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C57D8  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 804C57DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C57E0  C0 03 01 3C */	lfs f0, 0x13c(r3)
/* 804C57E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804C57E8  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 804C57EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C57F0  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 804C57F4  38 00 00 FF */	li r0, 0xff
/* 804C57F8  90 01 00 08 */	stw r0, 8(r1)
/* 804C57FC  38 80 00 00 */	li r4, 0
/* 804C5800  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C5804  38 00 FF FF */	li r0, -1
/* 804C5808  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C580C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C5810  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C5814  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C5818  80 98 08 A4 */	lwz r4, 0x8a4(r24)
/* 804C581C  38 A0 00 00 */	li r5, 0
/* 804C5820  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008398@ha */
/* 804C5824  38 C6 83 98 */	addi r6, r6, 0x8398 /* 0x00008398@l */
/* 804C5828  38 E1 00 34 */	addi r7, r1, 0x34
/* 804C582C  39 18 01 0C */	addi r8, r24, 0x10c
/* 804C5830  39 38 04 E4 */	addi r9, r24, 0x4e4
/* 804C5834  39 40 00 00 */	li r10, 0
/* 804C5838  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 804C583C  4B B8 7C 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C5840  90 78 08 A4 */	stw r3, 0x8a4(r24)
lbl_804C5844:
/* 804C5844  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5848  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 804C584C  41 82 01 08 */	beq lbl_804C5954
/* 804C5850  3B 38 08 A8 */	addi r25, r24, 0x8a8
/* 804C5854  3B 40 00 00 */	li r26, 0
/* 804C5858  3A E0 00 00 */	li r23, 0
/* 804C585C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5860  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C5864  3B DC 05 70 */	addi r30, r28, 0x570
/* 804C5868  3B FC 05 7C */	addi r31, r28, 0x57c
lbl_804C586C:
/* 804C586C  80 78 05 70 */	lwz r3, 0x570(r24)
/* 804C5870  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C5874  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C5878  7C 1E BA AE */	lhax r0, r30, r23
/* 804C587C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804C5880  7C 63 02 14 */	add r3, r3, r0
/* 804C5884  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804C5888  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C588C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804C5890  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804C5894  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804C5898  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C589C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804C58A0  38 00 00 FF */	li r0, 0xff
/* 804C58A4  90 01 00 08 */	stw r0, 8(r1)
/* 804C58A8  38 80 00 00 */	li r4, 0
/* 804C58AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C58B0  38 00 FF FF */	li r0, -1
/* 804C58B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C58B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C58BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C58C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C58C4  80 99 00 00 */	lwz r4, 0(r25)
/* 804C58C8  38 A0 00 00 */	li r5, 0
/* 804C58CC  7C DF BA 2E */	lhzx r6, r31, r23
/* 804C58D0  38 E1 00 34 */	addi r7, r1, 0x34
/* 804C58D4  39 18 01 0C */	addi r8, r24, 0x10c
/* 804C58D8  39 38 04 E4 */	addi r9, r24, 0x4e4
/* 804C58DC  39 40 00 00 */	li r10, 0
/* 804C58E0  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 804C58E4  4B B8 7B E9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C58E8  90 79 00 00 */	stw r3, 0(r25)
/* 804C58EC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804C58F0  38 63 02 10 */	addi r3, r3, 0x210
/* 804C58F4  80 99 00 00 */	lwz r4, 0(r25)
/* 804C58F8  4B B8 60 21 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804C58FC  28 03 00 00 */	cmplwi r3, 0
/* 804C5900  41 82 00 3C */	beq lbl_804C593C
/* 804C5904  38 A0 00 00 */	li r5, 0
/* 804C5908  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804C590C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804C5910  41 82 00 18 */	beq lbl_804C5928
/* 804C5914  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 804C5918  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 804C591C  7C 04 02 15 */	add. r0, r4, r0
/* 804C5920  40 82 00 08 */	bne lbl_804C5928
/* 804C5924  38 A0 00 01 */	li r5, 1
lbl_804C5928:
/* 804C5928  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804C592C  41 82 00 10 */	beq lbl_804C593C
/* 804C5930  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C5934  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 804C5938  90 18 08 90 */	stw r0, 0x890(r24)
lbl_804C593C:
/* 804C593C  3B 5A 00 01 */	addi r26, r26, 1
/* 804C5940  2C 1A 00 06 */	cmpwi r26, 6
/* 804C5944  3A F7 00 02 */	addi r23, r23, 2
/* 804C5948  3B 39 00 04 */	addi r25, r25, 4
/* 804C594C  41 80 FF 20 */	blt lbl_804C586C
/* 804C5950  48 00 00 5C */	b lbl_804C59AC
lbl_804C5954:
/* 804C5954  3B 40 00 00 */	li r26, 0
/* 804C5958  3B 20 00 00 */	li r25, 0
/* 804C595C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C5960  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_804C5964:
/* 804C5964  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 804C5968  38 63 02 10 */	addi r3, r3, 0x210
/* 804C596C  38 19 08 A8 */	addi r0, r25, 0x8a8
/* 804C5970  7C 98 00 2E */	lwzx r4, r24, r0
/* 804C5974  4B B8 5F A5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804C5978  28 03 00 00 */	cmplwi r3, 0
/* 804C597C  41 82 00 10 */	beq lbl_804C598C
/* 804C5980  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804C5984  60 00 00 04 */	ori r0, r0, 4
/* 804C5988  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_804C598C:
/* 804C598C  3B 5A 00 01 */	addi r26, r26, 1
/* 804C5990  2C 1A 00 06 */	cmpwi r26, 6
/* 804C5994  3B 39 00 04 */	addi r25, r25, 4
/* 804C5998  41 80 FF CC */	blt lbl_804C5964
/* 804C599C  48 00 00 10 */	b lbl_804C59AC
lbl_804C59A0:
/* 804C59A0  80 18 08 90 */	lwz r0, 0x890(r24)
/* 804C59A4  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 804C59A8  90 18 08 90 */	stw r0, 0x890(r24)
lbl_804C59AC:
/* 804C59AC  38 80 00 00 */	li r4, 0
/* 804C59B0  90 98 08 98 */	stw r4, 0x898(r24)
/* 804C59B4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C59B8  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C59BC  B0 1B 31 20 */	sth r0, 0x3120(r27)
/* 804C59C0  90 9B 28 00 */	stw r4, 0x2800(r27)
/* 804C59C4  7F 03 C3 78 */	mr r3, r24
/* 804C59C8  4B FF F1 F9 */	bl setSound__9daMidna_cFv
/* 804C59CC  38 60 00 01 */	li r3, 1
/* 804C59D0  39 61 00 70 */	addi r11, r1, 0x70
/* 804C59D4  4B E9 C8 3D */	bl _restgpr_23
/* 804C59D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804C59DC  7C 08 03 A6 */	mtlr r0
/* 804C59E0  38 21 00 70 */	addi r1, r1, 0x70
/* 804C59E4  4E 80 00 20 */	blr 
