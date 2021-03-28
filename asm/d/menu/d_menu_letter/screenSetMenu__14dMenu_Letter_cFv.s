lbl_801DF010:
/* 801DF010  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801DF014  7C 08 02 A6 */	mflr r0
/* 801DF018  90 01 00 84 */	stw r0, 0x84(r1)
/* 801DF01C  39 61 00 80 */	addi r11, r1, 0x80
/* 801DF020  48 18 31 81 */	bl __save_gpr
/* 801DF024  7C 7E 1B 78 */	mr r30, r3
/* 801DF028  3C 60 80 39 */	lis r3, tag_sub0@ha
/* 801DF02C  3B E3 69 C8 */	addi r31, r3, tag_sub0@l
/* 801DF030  38 60 01 18 */	li r3, 0x118
/* 801DF034  48 0E FC 19 */	bl __nw__FUl
/* 801DF038  7C 60 1B 79 */	or. r0, r3, r3
/* 801DF03C  41 82 00 0C */	beq lbl_801DF048
/* 801DF040  48 11 94 59 */	bl __ct__9J2DScreenFv
/* 801DF044  7C 60 1B 78 */	mr r0, r3
lbl_801DF048:
/* 801DF048  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801DF04C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF050  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha
/* 801DF054  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l
/* 801DF058  38 84 00 1D */	addi r4, r4, 0x1d
/* 801DF05C  3C A0 00 02 */	lis r5, 2
/* 801DF060  80 DE 00 08 */	lwz r6, 8(r30)
/* 801DF064  48 11 95 E5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801DF068  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF06C  48 07 60 7D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801DF070  38 60 00 6C */	li r3, 0x6c
/* 801DF074  48 0E FB D9 */	bl __nw__FUl
/* 801DF078  7C 60 1B 79 */	or. r0, r3, r3
/* 801DF07C  41 82 00 24 */	beq lbl_801DF0A0
/* 801DF080  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 801DF084  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801DF088  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801DF08C  38 A0 00 6E */	li r5, 0x6e
/* 801DF090  38 E0 00 02 */	li r7, 2
/* 801DF094  39 00 00 00 */	li r8, 0
/* 801DF098  48 07 48 ED */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DF09C  7C 60 1B 78 */	mr r0, r3
lbl_801DF0A0:
/* 801DF0A0  90 1E 02 B8 */	stw r0, 0x2b8(r30)
/* 801DF0A4  80 7E 02 B8 */	lwz r3, 0x2b8(r30)
/* 801DF0A8  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DF0AC  48 07 67 25 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DF0B0  3A E0 00 00 */	li r23, 0
/* 801DF0B4  3B 20 00 00 */	li r25, 0
/* 801DF0B8  3B 40 00 00 */	li r26, 0
/* 801DF0BC  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha
/* 801DF0C0  3B A3 6D C0 */	addi r29, r3, d_menu_d_menu_letter__stringBase0@l
/* 801DF0C4  3A 9F 00 C0 */	addi r20, r31, 0xc0
/* 801DF0C8  3A 7F 00 F0 */	addi r19, r31, 0xf0
/* 801DF0CC  3A 5F 01 20 */	addi r18, r31, 0x120
/* 801DF0D0  3A 3F 01 50 */	addi r17, r31, 0x150
/* 801DF0D4  3A 1F 00 00 */	addi r16, r31, 0
/* 801DF0D8  39 FF 00 30 */	addi r15, r31, 0x30
/* 801DF0DC  39 DF 00 60 */	addi r14, r31, 0x60
/* 801DF0E0  3B 9F 00 90 */	addi r28, r31, 0x90
lbl_801DF0E4:
/* 801DF0E4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF0E8  7C D4 D2 14 */	add r6, r20, r26
/* 801DF0EC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF0F0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF0F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF0F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF0FC  7D 89 03 A6 */	mtctr r12
/* 801DF100  4E 80 04 21 */	bctrl 
/* 801DF104  7E BE CA 14 */	add r21, r30, r25
/* 801DF108  90 75 01 24 */	stw r3, 0x124(r21)
/* 801DF10C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF110  7C D3 D2 14 */	add r6, r19, r26
/* 801DF114  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF118  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF11C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF120  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF124  7D 89 03 A6 */	mtctr r12
/* 801DF128  4E 80 04 21 */	bctrl 
/* 801DF12C  90 75 01 28 */	stw r3, 0x128(r21)
/* 801DF130  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF134  7C D2 D2 14 */	add r6, r18, r26
/* 801DF138  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF13C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF140  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF144  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF148  7D 89 03 A6 */	mtctr r12
/* 801DF14C  4E 80 04 21 */	bctrl 
/* 801DF150  90 75 01 2C */	stw r3, 0x12c(r21)
/* 801DF154  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF158  7C D1 D2 14 */	add r6, r17, r26
/* 801DF15C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF160  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF164  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF168  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF16C  7D 89 03 A6 */	mtctr r12
/* 801DF170  4E 80 04 21 */	bctrl 
/* 801DF174  90 75 01 30 */	stw r3, 0x130(r21)
/* 801DF178  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF17C  7C D0 D2 14 */	add r6, r16, r26
/* 801DF180  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF184  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF188  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF18C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF190  7D 89 03 A6 */	mtctr r12
/* 801DF194  4E 80 04 21 */	bctrl 
/* 801DF198  38 00 00 00 */	li r0, 0
/* 801DF19C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF1A0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF1A4  7C CF D2 14 */	add r6, r15, r26
/* 801DF1A8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF1AC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF1B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF1B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF1B8  7D 89 03 A6 */	mtctr r12
/* 801DF1BC  4E 80 04 21 */	bctrl 
/* 801DF1C0  38 00 00 00 */	li r0, 0
/* 801DF1C4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF1C8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF1CC  7C CE D2 14 */	add r6, r14, r26
/* 801DF1D0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF1D4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF1D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF1DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF1E0  7D 89 03 A6 */	mtctr r12
/* 801DF1E4  4E 80 04 21 */	bctrl 
/* 801DF1E8  38 00 00 00 */	li r0, 0
/* 801DF1EC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF1F0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF1F4  7C DC D2 14 */	add r6, r28, r26
/* 801DF1F8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF1FC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF200  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF204  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF208  7D 89 03 A6 */	mtctr r12
/* 801DF20C  4E 80 04 21 */	bctrl 
/* 801DF210  3B 60 00 00 */	li r27, 0
/* 801DF214  9B 63 00 B0 */	stb r27, 0xb0(r3)
/* 801DF218  3B 00 00 00 */	li r24, 0
lbl_801DF21C:
/* 801DF21C  4B E3 57 D5 */	bl mDoExt_getMesgFont__Fv
/* 801DF220  7C 64 1B 78 */	mr r4, r3
/* 801DF224  3A DB 01 24 */	addi r22, r27, 0x124
/* 801DF228  7C 75 B0 2E */	lwzx r3, r21, r22
/* 801DF22C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF230  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DF234  7D 89 03 A6 */	mtctr r12
/* 801DF238  4E 80 04 21 */	bctrl 
/* 801DF23C  7C 75 B0 2E */	lwzx r3, r21, r22
/* 801DF240  38 80 00 40 */	li r4, 0x40
/* 801DF244  38 BD 00 3B */	addi r5, r29, 0x3b
/* 801DF248  4C C6 31 82 */	crclr 6
/* 801DF24C  48 12 15 01 */	bl setString__10J2DTextBoxFsPCce
/* 801DF250  3B 18 00 01 */	addi r24, r24, 1
/* 801DF254  2C 18 00 04 */	cmpwi r24, 4
/* 801DF258  3B 7B 00 04 */	addi r27, r27, 4
/* 801DF25C  41 80 FF C0 */	blt lbl_801DF21C
/* 801DF260  3A F7 00 01 */	addi r23, r23, 1
/* 801DF264  2C 17 00 06 */	cmpwi r23, 6
/* 801DF268  3B 39 00 10 */	addi r25, r25, 0x10
/* 801DF26C  3B 5A 00 08 */	addi r26, r26, 8
/* 801DF270  41 80 FE 74 */	blt lbl_801DF0E4
/* 801DF274  3A 20 00 00 */	li r17, 0
/* 801DF278  39 C0 00 00 */	li r14, 0
/* 801DF27C  39 E0 00 00 */	li r15, 0
/* 801DF280  3A 1F 01 80 */	addi r16, r31, 0x180
lbl_801DF284:
/* 801DF284  38 60 00 6C */	li r3, 0x6c
/* 801DF288  48 0E F9 C5 */	bl __nw__FUl
/* 801DF28C  7C 64 1B 79 */	or. r4, r3, r3
/* 801DF290  41 82 00 24 */	beq lbl_801DF2B4
/* 801DF294  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 801DF298  7C D0 7A 14 */	add r6, r16, r15
/* 801DF29C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF2A0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF2A4  38 E0 00 00 */	li r7, 0
/* 801DF2A8  39 00 00 00 */	li r8, 0
/* 801DF2AC  48 07 46 D9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DF2B0  7C 64 1B 78 */	mr r4, r3
lbl_801DF2B4:
/* 801DF2B4  38 0E 02 C8 */	addi r0, r14, 0x2c8
/* 801DF2B8  7C 9E 01 2E */	stwx r4, r30, r0
/* 801DF2BC  3A 31 00 01 */	addi r17, r17, 1
/* 801DF2C0  2C 11 00 06 */	cmpwi r17, 6
/* 801DF2C4  39 CE 00 04 */	addi r14, r14, 4
/* 801DF2C8  39 EF 00 08 */	addi r15, r15, 8
/* 801DF2CC  41 80 FF B8 */	blt lbl_801DF284
/* 801DF2D0  39 C0 00 00 */	li r14, 0
/* 801DF2D4  39 E0 00 00 */	li r15, 0
/* 801DF2D8  3A 00 00 00 */	li r16, 0
/* 801DF2DC  3A BF 01 B0 */	addi r21, r31, 0x1b0
/* 801DF2E0  3A 9F 01 E0 */	addi r20, r31, 0x1e0
/* 801DF2E4  3A 7F 02 10 */	addi r19, r31, 0x210
/* 801DF2E8  3A 5F 01 80 */	addi r18, r31, 0x180
/* 801DF2EC  3A 3F 02 40 */	addi r17, r31, 0x240
lbl_801DF2F0:
/* 801DF2F0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF2F4  7C D5 82 14 */	add r6, r21, r16
/* 801DF2F8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF2FC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF300  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF304  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF308  7D 89 03 A6 */	mtctr r12
/* 801DF30C  4E 80 04 21 */	bctrl 
/* 801DF310  7E DE 7A 14 */	add r22, r30, r15
/* 801DF314  90 76 00 34 */	stw r3, 0x34(r22)
/* 801DF318  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF31C  7C D4 82 14 */	add r6, r20, r16
/* 801DF320  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF324  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF328  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF32C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF330  7D 89 03 A6 */	mtctr r12
/* 801DF334  4E 80 04 21 */	bctrl 
/* 801DF338  90 76 00 38 */	stw r3, 0x38(r22)
/* 801DF33C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF340  7C D3 82 14 */	add r6, r19, r16
/* 801DF344  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF348  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF34C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF350  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF354  7D 89 03 A6 */	mtctr r12
/* 801DF358  4E 80 04 21 */	bctrl 
/* 801DF35C  90 76 00 3C */	stw r3, 0x3c(r22)
/* 801DF360  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF364  7C D2 82 14 */	add r6, r18, r16
/* 801DF368  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF36C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF370  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF374  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF378  7D 89 03 A6 */	mtctr r12
/* 801DF37C  4E 80 04 21 */	bctrl 
/* 801DF380  90 76 00 40 */	stw r3, 0x40(r22)
/* 801DF384  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DF388  7C D1 82 14 */	add r6, r17, r16
/* 801DF38C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF390  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF394  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF398  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF39C  7D 89 03 A6 */	mtctr r12
/* 801DF3A0  4E 80 04 21 */	bctrl 
/* 801DF3A4  90 76 00 44 */	stw r3, 0x44(r22)
/* 801DF3A8  88 1E 03 73 */	lbz r0, 0x373(r30)
/* 801DF3AC  7C 0E 00 00 */	cmpw r14, r0
/* 801DF3B0  40 80 00 1C */	bge lbl_801DF3CC
/* 801DF3B4  38 00 00 01 */	li r0, 1
/* 801DF3B8  80 76 00 40 */	lwz r3, 0x40(r22)
/* 801DF3BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF3C0  80 76 00 44 */	lwz r3, 0x44(r22)
/* 801DF3C4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF3C8  48 00 00 18 */	b lbl_801DF3E0
lbl_801DF3CC:
/* 801DF3CC  38 00 00 00 */	li r0, 0
/* 801DF3D0  80 76 00 40 */	lwz r3, 0x40(r22)
/* 801DF3D4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF3D8  80 76 00 44 */	lwz r3, 0x44(r22)
/* 801DF3DC  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801DF3E0:
/* 801DF3E0  39 CE 00 01 */	addi r14, r14, 1
/* 801DF3E4  2C 0E 00 06 */	cmpwi r14, 6
/* 801DF3E8  39 EF 00 14 */	addi r15, r15, 0x14
/* 801DF3EC  3A 10 00 08 */	addi r16, r16, 8
/* 801DF3F0  41 80 FF 00 */	blt lbl_801DF2F0
/* 801DF3F4  3A 00 00 00 */	li r16, 0
/* 801DF3F8  3A 20 00 00 */	li r17, 0
/* 801DF3FC  3A 40 00 00 */	li r18, 0
lbl_801DF400:
/* 801DF400  2C 10 00 00 */	cmpwi r16, 0
/* 801DF404  40 82 00 F8 */	bne lbl_801DF4FC
/* 801DF408  38 61 00 34 */	addi r3, r1, 0x34
/* 801DF40C  7D DE 92 14 */	add r14, r30, r18
/* 801DF410  80 8E 00 34 */	lwz r4, 0x34(r14)
/* 801DF414  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF418  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 801DF41C  7D 89 03 A6 */	mtctr r12
/* 801DF420  4E 80 04 21 */	bctrl 
/* 801DF424  88 01 00 34 */	lbz r0, 0x34(r1)
/* 801DF428  98 0E 03 28 */	stb r0, 0x328(r14)
/* 801DF42C  88 01 00 35 */	lbz r0, 0x35(r1)
/* 801DF430  98 0E 03 29 */	stb r0, 0x329(r14)
/* 801DF434  88 01 00 36 */	lbz r0, 0x36(r1)
/* 801DF438  98 0E 03 2A */	stb r0, 0x32a(r14)
/* 801DF43C  88 01 00 37 */	lbz r0, 0x37(r1)
/* 801DF440  98 0E 03 2B */	stb r0, 0x32b(r14)
/* 801DF444  38 61 00 30 */	addi r3, r1, 0x30
/* 801DF448  80 8E 00 34 */	lwz r4, 0x34(r14)
/* 801DF44C  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF450  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 801DF454  7D 89 03 A6 */	mtctr r12
/* 801DF458  4E 80 04 21 */	bctrl 
/* 801DF45C  88 01 00 30 */	lbz r0, 0x30(r1)
/* 801DF460  98 0E 03 48 */	stb r0, 0x348(r14)
/* 801DF464  88 01 00 31 */	lbz r0, 0x31(r1)
/* 801DF468  98 0E 03 49 */	stb r0, 0x349(r14)
/* 801DF46C  88 01 00 32 */	lbz r0, 0x32(r1)
/* 801DF470  98 0E 03 4A */	stb r0, 0x34a(r14)
/* 801DF474  88 01 00 33 */	lbz r0, 0x33(r1)
/* 801DF478  98 0E 03 4B */	stb r0, 0x34b(r14)
/* 801DF47C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DF480  80 8E 00 48 */	lwz r4, 0x48(r14)
/* 801DF484  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF488  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 801DF48C  7D 89 03 A6 */	mtctr r12
/* 801DF490  4E 80 04 21 */	bctrl 
/* 801DF494  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 801DF498  98 0E 03 18 */	stb r0, 0x318(r14)
/* 801DF49C  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 801DF4A0  98 0E 03 19 */	stb r0, 0x319(r14)
/* 801DF4A4  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 801DF4A8  98 0E 03 1A */	stb r0, 0x31a(r14)
/* 801DF4AC  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 801DF4B0  98 0E 03 1B */	stb r0, 0x31b(r14)
/* 801DF4B4  38 61 00 28 */	addi r3, r1, 0x28
/* 801DF4B8  80 8E 00 48 */	lwz r4, 0x48(r14)
/* 801DF4BC  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF4C0  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 801DF4C4  7D 89 03 A6 */	mtctr r12
/* 801DF4C8  4E 80 04 21 */	bctrl 
/* 801DF4CC  88 01 00 28 */	lbz r0, 0x28(r1)
/* 801DF4D0  98 0E 03 38 */	stb r0, 0x338(r14)
/* 801DF4D4  88 01 00 29 */	lbz r0, 0x29(r1)
/* 801DF4D8  98 0E 03 39 */	stb r0, 0x339(r14)
/* 801DF4DC  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 801DF4E0  98 0E 03 3A */	stb r0, 0x33a(r14)
/* 801DF4E4  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 801DF4E8  98 0E 03 3B */	stb r0, 0x33b(r14)
/* 801DF4EC  38 00 00 FF */	li r0, 0xff
/* 801DF4F0  98 0E 03 2B */	stb r0, 0x32b(r14)
/* 801DF4F4  98 0E 03 1B */	stb r0, 0x31b(r14)
/* 801DF4F8  48 00 01 DC */	b lbl_801DF6D4
lbl_801DF4FC:
/* 801DF4FC  2C 10 00 03 */	cmpwi r16, 3
/* 801DF500  40 82 00 F0 */	bne lbl_801DF5F0
/* 801DF504  38 61 00 24 */	addi r3, r1, 0x24
/* 801DF508  39 F1 01 28 */	addi r15, r17, 0x128
/* 801DF50C  7C 9E 78 2E */	lwzx r4, r30, r15
/* 801DF510  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF514  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801DF518  7D 89 03 A6 */	mtctr r12
/* 801DF51C  4E 80 04 21 */	bctrl 
/* 801DF520  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801DF524  7D DE 92 14 */	add r14, r30, r18
/* 801DF528  98 0E 03 28 */	stb r0, 0x328(r14)
/* 801DF52C  88 01 00 25 */	lbz r0, 0x25(r1)
/* 801DF530  98 0E 03 29 */	stb r0, 0x329(r14)
/* 801DF534  88 01 00 26 */	lbz r0, 0x26(r1)
/* 801DF538  98 0E 03 2A */	stb r0, 0x32a(r14)
/* 801DF53C  88 01 00 27 */	lbz r0, 0x27(r1)
/* 801DF540  98 0E 03 2B */	stb r0, 0x32b(r14)
/* 801DF544  38 61 00 20 */	addi r3, r1, 0x20
/* 801DF548  7C 9E 78 2E */	lwzx r4, r30, r15
/* 801DF54C  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF550  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801DF554  7D 89 03 A6 */	mtctr r12
/* 801DF558  4E 80 04 21 */	bctrl 
/* 801DF55C  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801DF560  98 0E 03 48 */	stb r0, 0x348(r14)
/* 801DF564  88 01 00 21 */	lbz r0, 0x21(r1)
/* 801DF568  98 0E 03 49 */	stb r0, 0x349(r14)
/* 801DF56C  88 01 00 22 */	lbz r0, 0x22(r1)
/* 801DF570  98 0E 03 4A */	stb r0, 0x34a(r14)
/* 801DF574  88 01 00 23 */	lbz r0, 0x23(r1)
/* 801DF578  98 0E 03 4B */	stb r0, 0x34b(r14)
/* 801DF57C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DF580  7C 9E 78 2E */	lwzx r4, r30, r15
/* 801DF584  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF588  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801DF58C  7D 89 03 A6 */	mtctr r12
/* 801DF590  4E 80 04 21 */	bctrl 
/* 801DF594  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 801DF598  98 0E 03 18 */	stb r0, 0x318(r14)
/* 801DF59C  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 801DF5A0  98 0E 03 19 */	stb r0, 0x319(r14)
/* 801DF5A4  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 801DF5A8  98 0E 03 1A */	stb r0, 0x31a(r14)
/* 801DF5AC  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 801DF5B0  98 0E 03 1B */	stb r0, 0x31b(r14)
/* 801DF5B4  38 61 00 18 */	addi r3, r1, 0x18
/* 801DF5B8  7C 9E 78 2E */	lwzx r4, r30, r15
/* 801DF5BC  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF5C0  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801DF5C4  7D 89 03 A6 */	mtctr r12
/* 801DF5C8  4E 80 04 21 */	bctrl 
/* 801DF5CC  88 01 00 18 */	lbz r0, 0x18(r1)
/* 801DF5D0  98 0E 03 38 */	stb r0, 0x338(r14)
/* 801DF5D4  88 01 00 19 */	lbz r0, 0x19(r1)
/* 801DF5D8  98 0E 03 39 */	stb r0, 0x339(r14)
/* 801DF5DC  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 801DF5E0  98 0E 03 3A */	stb r0, 0x33a(r14)
/* 801DF5E4  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 801DF5E8  98 0E 03 3B */	stb r0, 0x33b(r14)
/* 801DF5EC  48 00 00 E8 */	b lbl_801DF6D4
lbl_801DF5F0:
/* 801DF5F0  38 61 00 14 */	addi r3, r1, 0x14
/* 801DF5F4  7D DE 92 14 */	add r14, r30, r18
/* 801DF5F8  80 8E 00 34 */	lwz r4, 0x34(r14)
/* 801DF5FC  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF600  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801DF604  7D 89 03 A6 */	mtctr r12
/* 801DF608  4E 80 04 21 */	bctrl 
/* 801DF60C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 801DF610  98 0E 03 28 */	stb r0, 0x328(r14)
/* 801DF614  88 01 00 15 */	lbz r0, 0x15(r1)
/* 801DF618  98 0E 03 29 */	stb r0, 0x329(r14)
/* 801DF61C  88 01 00 16 */	lbz r0, 0x16(r1)
/* 801DF620  98 0E 03 2A */	stb r0, 0x32a(r14)
/* 801DF624  88 01 00 17 */	lbz r0, 0x17(r1)
/* 801DF628  98 0E 03 2B */	stb r0, 0x32b(r14)
/* 801DF62C  38 61 00 10 */	addi r3, r1, 0x10
/* 801DF630  80 8E 00 34 */	lwz r4, 0x34(r14)
/* 801DF634  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF638  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801DF63C  7D 89 03 A6 */	mtctr r12
/* 801DF640  4E 80 04 21 */	bctrl 
/* 801DF644  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801DF648  98 0E 03 48 */	stb r0, 0x348(r14)
/* 801DF64C  88 01 00 11 */	lbz r0, 0x11(r1)
/* 801DF650  98 0E 03 49 */	stb r0, 0x349(r14)
/* 801DF654  88 01 00 12 */	lbz r0, 0x12(r1)
/* 801DF658  98 0E 03 4A */	stb r0, 0x34a(r14)
/* 801DF65C  88 01 00 13 */	lbz r0, 0x13(r1)
/* 801DF660  98 0E 03 4B */	stb r0, 0x34b(r14)
/* 801DF664  38 61 00 0C */	addi r3, r1, 0xc
/* 801DF668  80 8E 00 48 */	lwz r4, 0x48(r14)
/* 801DF66C  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF670  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 801DF674  7D 89 03 A6 */	mtctr r12
/* 801DF678  4E 80 04 21 */	bctrl 
/* 801DF67C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801DF680  98 0E 03 18 */	stb r0, 0x318(r14)
/* 801DF684  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801DF688  98 0E 03 19 */	stb r0, 0x319(r14)
/* 801DF68C  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801DF690  98 0E 03 1A */	stb r0, 0x31a(r14)
/* 801DF694  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801DF698  98 0E 03 1B */	stb r0, 0x31b(r14)
/* 801DF69C  38 61 00 08 */	addi r3, r1, 8
/* 801DF6A0  80 8E 00 48 */	lwz r4, 0x48(r14)
/* 801DF6A4  81 84 00 00 */	lwz r12, 0(r4)
/* 801DF6A8  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801DF6AC  7D 89 03 A6 */	mtctr r12
/* 801DF6B0  4E 80 04 21 */	bctrl 
/* 801DF6B4  88 01 00 08 */	lbz r0, 8(r1)
/* 801DF6B8  98 0E 03 38 */	stb r0, 0x338(r14)
/* 801DF6BC  88 01 00 09 */	lbz r0, 9(r1)
/* 801DF6C0  98 0E 03 39 */	stb r0, 0x339(r14)
/* 801DF6C4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801DF6C8  98 0E 03 3A */	stb r0, 0x33a(r14)
/* 801DF6CC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801DF6D0  98 0E 03 3B */	stb r0, 0x33b(r14)
lbl_801DF6D4:
/* 801DF6D4  3A 10 00 01 */	addi r16, r16, 1
/* 801DF6D8  2C 10 00 04 */	cmpwi r16, 4
/* 801DF6DC  3A 31 00 10 */	addi r17, r17, 0x10
/* 801DF6E0  3A 52 00 04 */	addi r18, r18, 4
/* 801DF6E4  41 80 FD 1C */	blt lbl_801DF400
/* 801DF6E8  38 60 01 18 */	li r3, 0x118
/* 801DF6EC  48 0E F5 61 */	bl __nw__FUl
/* 801DF6F0  7C 60 1B 79 */	or. r0, r3, r3
/* 801DF6F4  41 82 00 0C */	beq lbl_801DF700
/* 801DF6F8  48 11 8D A1 */	bl __ct__9J2DScreenFv
/* 801DF6FC  7C 60 1B 78 */	mr r0, r3
lbl_801DF700:
/* 801DF700  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801DF704  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF708  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha
/* 801DF70C  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l
/* 801DF710  38 84 00 1D */	addi r4, r4, 0x1d
/* 801DF714  3C A0 00 02 */	lis r5, 2
/* 801DF718  80 DE 00 08 */	lwz r6, 8(r30)
/* 801DF71C  48 11 8F 2D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801DF720  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF724  48 07 59 C5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801DF728  38 60 00 6C */	li r3, 0x6c
/* 801DF72C  48 0E F5 21 */	bl __nw__FUl
/* 801DF730  7C 60 1B 79 */	or. r0, r3, r3
/* 801DF734  41 82 00 24 */	beq lbl_801DF758
/* 801DF738  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 801DF73C  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801DF740  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801DF744  38 A0 00 6E */	li r5, 0x6e
/* 801DF748  38 E0 00 02 */	li r7, 2
/* 801DF74C  39 00 00 00 */	li r8, 0
/* 801DF750  48 07 42 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DF754  7C 60 1B 78 */	mr r0, r3
lbl_801DF758:
/* 801DF758  90 1E 02 C4 */	stw r0, 0x2c4(r30)
/* 801DF75C  3A 00 00 00 */	li r16, 0
/* 801DF760  3B A0 00 00 */	li r29, 0
/* 801DF764  3B 80 00 00 */	li r28, 0
/* 801DF768  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha
/* 801DF76C  39 C3 6D C0 */	addi r14, r3, d_menu_d_menu_letter__stringBase0@l
/* 801DF770  3A 7F 00 C0 */	addi r19, r31, 0xc0
/* 801DF774  3A 9F 00 F0 */	addi r20, r31, 0xf0
/* 801DF778  3A BF 01 20 */	addi r21, r31, 0x120
/* 801DF77C  3A DF 01 50 */	addi r22, r31, 0x150
/* 801DF780  3A FF 00 00 */	addi r23, r31, 0
/* 801DF784  3B 1F 00 30 */	addi r24, r31, 0x30
/* 801DF788  3B 3F 00 60 */	addi r25, r31, 0x60
/* 801DF78C  3B 5F 00 90 */	addi r26, r31, 0x90
lbl_801DF790:
/* 801DF790  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF794  7C D3 E2 14 */	add r6, r19, r28
/* 801DF798  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF79C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF7A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF7A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF7A8  7D 89 03 A6 */	mtctr r12
/* 801DF7AC  4E 80 04 21 */	bctrl 
/* 801DF7B0  7E 5E EA 14 */	add r18, r30, r29
/* 801DF7B4  90 72 01 84 */	stw r3, 0x184(r18)
/* 801DF7B8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF7BC  7C D4 E2 14 */	add r6, r20, r28
/* 801DF7C0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF7C4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF7C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF7CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF7D0  7D 89 03 A6 */	mtctr r12
/* 801DF7D4  4E 80 04 21 */	bctrl 
/* 801DF7D8  90 72 01 88 */	stw r3, 0x188(r18)
/* 801DF7DC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF7E0  7C D5 E2 14 */	add r6, r21, r28
/* 801DF7E4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF7E8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF7EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF7F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF7F4  7D 89 03 A6 */	mtctr r12
/* 801DF7F8  4E 80 04 21 */	bctrl 
/* 801DF7FC  90 72 01 8C */	stw r3, 0x18c(r18)
/* 801DF800  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF804  7C D6 E2 14 */	add r6, r22, r28
/* 801DF808  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF80C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF810  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF814  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF818  7D 89 03 A6 */	mtctr r12
/* 801DF81C  4E 80 04 21 */	bctrl 
/* 801DF820  90 72 01 90 */	stw r3, 0x190(r18)
/* 801DF824  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF828  7C D7 E2 14 */	add r6, r23, r28
/* 801DF82C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF830  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF834  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF838  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF83C  7D 89 03 A6 */	mtctr r12
/* 801DF840  4E 80 04 21 */	bctrl 
/* 801DF844  38 00 00 00 */	li r0, 0
/* 801DF848  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF84C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF850  7C D8 E2 14 */	add r6, r24, r28
/* 801DF854  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF858  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF85C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF860  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF864  7D 89 03 A6 */	mtctr r12
/* 801DF868  4E 80 04 21 */	bctrl 
/* 801DF86C  38 00 00 00 */	li r0, 0
/* 801DF870  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF874  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF878  7C D9 E2 14 */	add r6, r25, r28
/* 801DF87C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF880  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF884  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF888  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF88C  7D 89 03 A6 */	mtctr r12
/* 801DF890  4E 80 04 21 */	bctrl 
/* 801DF894  38 00 00 00 */	li r0, 0
/* 801DF898  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF89C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF8A0  7C DA E2 14 */	add r6, r26, r28
/* 801DF8A4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF8A8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF8AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF8B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF8B4  7D 89 03 A6 */	mtctr r12
/* 801DF8B8  4E 80 04 21 */	bctrl 
/* 801DF8BC  38 00 00 00 */	li r0, 0
/* 801DF8C0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DF8C4  39 E0 00 00 */	li r15, 0
/* 801DF8C8  3B 60 00 00 */	li r27, 0
lbl_801DF8CC:
/* 801DF8CC  4B E3 51 25 */	bl mDoExt_getMesgFont__Fv
/* 801DF8D0  7C 64 1B 78 */	mr r4, r3
/* 801DF8D4  3A 3B 01 84 */	addi r17, r27, 0x184
/* 801DF8D8  7C 72 88 2E */	lwzx r3, r18, r17
/* 801DF8DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF8E0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DF8E4  7D 89 03 A6 */	mtctr r12
/* 801DF8E8  4E 80 04 21 */	bctrl 
/* 801DF8EC  7C 72 88 2E */	lwzx r3, r18, r17
/* 801DF8F0  38 80 00 40 */	li r4, 0x40
/* 801DF8F4  38 AE 00 3B */	addi r5, r14, 0x3b
/* 801DF8F8  4C C6 31 82 */	crclr 6
/* 801DF8FC  48 12 0E 51 */	bl setString__10J2DTextBoxFsPCce
/* 801DF900  39 EF 00 01 */	addi r15, r15, 1
/* 801DF904  2C 0F 00 04 */	cmpwi r15, 4
/* 801DF908  3B 7B 00 04 */	addi r27, r27, 4
/* 801DF90C  41 80 FF C0 */	blt lbl_801DF8CC
/* 801DF910  3A 10 00 01 */	addi r16, r16, 1
/* 801DF914  2C 10 00 06 */	cmpwi r16, 6
/* 801DF918  3B BD 00 10 */	addi r29, r29, 0x10
/* 801DF91C  3B 9C 00 08 */	addi r28, r28, 8
/* 801DF920  41 80 FE 70 */	blt lbl_801DF790
/* 801DF924  3A C0 00 00 */	li r22, 0
/* 801DF928  39 C0 00 00 */	li r14, 0
/* 801DF92C  39 E0 00 00 */	li r15, 0
/* 801DF930  3A 9F 01 B0 */	addi r20, r31, 0x1b0
/* 801DF934  3A 7F 01 E0 */	addi r19, r31, 0x1e0
/* 801DF938  3A 5F 02 10 */	addi r18, r31, 0x210
/* 801DF93C  3A 3F 01 80 */	addi r17, r31, 0x180
/* 801DF940  3A 1F 02 40 */	addi r16, r31, 0x240
lbl_801DF944:
/* 801DF944  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF948  7C D4 7A 14 */	add r6, r20, r15
/* 801DF94C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF950  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF954  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF958  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF95C  7D 89 03 A6 */	mtctr r12
/* 801DF960  4E 80 04 21 */	bctrl 
/* 801DF964  7E BE 72 14 */	add r21, r30, r14
/* 801DF968  90 75 00 AC */	stw r3, 0xac(r21)
/* 801DF96C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF970  7C D3 7A 14 */	add r6, r19, r15
/* 801DF974  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF978  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF97C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF980  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF984  7D 89 03 A6 */	mtctr r12
/* 801DF988  4E 80 04 21 */	bctrl 
/* 801DF98C  90 75 00 B0 */	stw r3, 0xb0(r21)
/* 801DF990  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF994  7C D2 7A 14 */	add r6, r18, r15
/* 801DF998  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF99C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF9A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF9A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF9A8  7D 89 03 A6 */	mtctr r12
/* 801DF9AC  4E 80 04 21 */	bctrl 
/* 801DF9B0  90 75 00 B4 */	stw r3, 0xb4(r21)
/* 801DF9B4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF9B8  7C D1 7A 14 */	add r6, r17, r15
/* 801DF9BC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF9C0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF9C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF9C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF9CC  7D 89 03 A6 */	mtctr r12
/* 801DF9D0  4E 80 04 21 */	bctrl 
/* 801DF9D4  90 75 00 B8 */	stw r3, 0xb8(r21)
/* 801DF9D8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801DF9DC  7C D0 7A 14 */	add r6, r16, r15
/* 801DF9E0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DF9E4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DF9E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DF9EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DF9F0  7D 89 03 A6 */	mtctr r12
/* 801DF9F4  4E 80 04 21 */	bctrl 
/* 801DF9F8  90 75 00 BC */	stw r3, 0xbc(r21)
/* 801DF9FC  3A D6 00 01 */	addi r22, r22, 1
/* 801DFA00  2C 16 00 06 */	cmpwi r22, 6
/* 801DFA04  39 CE 00 14 */	addi r14, r14, 0x14
/* 801DFA08  39 EF 00 08 */	addi r15, r15, 8
/* 801DFA0C  41 80 FF 38 */	blt lbl_801DF944
/* 801DFA10  39 61 00 80 */	addi r11, r1, 0x80
/* 801DFA14  48 18 27 D9 */	bl __restore_gpr
/* 801DFA18  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801DFA1C  7C 08 03 A6 */	mtlr r0
/* 801DFA20  38 21 00 80 */	addi r1, r1, 0x80
/* 801DFA24  4E 80 00 20 */	blr 
