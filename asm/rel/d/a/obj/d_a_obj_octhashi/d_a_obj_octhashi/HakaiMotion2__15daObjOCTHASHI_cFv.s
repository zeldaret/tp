lbl_80CA52F0:
/* 80CA52F0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CA52F4  7C 08 02 A6 */	mflr r0
/* 80CA52F8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CA52FC  39 61 00 70 */	addi r11, r1, 0x70
/* 80CA5300  4B 6B CE BC */	b _savegpr_21
/* 80CA5304  7C 7B 1B 78 */	mr r27, r3
/* 80CA5308  3C 60 80 CA */	lis r3, ccSphSrc@ha
/* 80CA530C  3B C3 64 80 */	addi r30, r3, ccSphSrc@l
/* 80CA5310  3B A0 00 00 */	li r29, 0
/* 80CA5314  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80CA5318  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA531C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA5320  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CA5324  38 61 00 20 */	addi r3, r1, 0x20
/* 80CA5328  38 80 00 00 */	li r4, 0
/* 80CA532C  38 A0 00 00 */	li r5, 0
/* 80CA5330  38 C0 00 00 */	li r6, 0
/* 80CA5334  4B 5C 20 C0 */	b __ct__5csXyzFsss
/* 80CA5338  3B 80 00 00 */	li r28, 0
/* 80CA533C  3B 40 00 00 */	li r26, 0
/* 80CA5340  3B 20 00 00 */	li r25, 0
/* 80CA5344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA5348  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CA534C  48 00 00 FC */	b lbl_80CA5448
lbl_80CA5350:
/* 80CA5350  7F 1B CA 14 */	add r24, r27, r25
/* 80CA5354  38 78 06 60 */	addi r3, r24, 0x660
/* 80CA5358  38 98 06 90 */	addi r4, r24, 0x690
/* 80CA535C  4B 5C 21 00 */	b __apl__5csXyzFR5csXyz
/* 80CA5360  7E FB D2 14 */	add r23, r27, r26
/* 80CA5364  C0 37 06 04 */	lfs f1, 0x604(r23)
/* 80CA5368  C0 1B 05 30 */	lfs f0, 0x530(r27)
/* 80CA536C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA5370  D0 17 06 04 */	stfs f0, 0x604(r23)
/* 80CA5374  3A D7 05 A0 */	addi r22, r23, 0x5a0
/* 80CA5378  7E C3 B3 78 */	mr r3, r22
/* 80CA537C  38 97 06 00 */	addi r4, r23, 0x600
/* 80CA5380  7E C5 B3 78 */	mr r5, r22
/* 80CA5384  4B 6A 1D 0C */	b PSVECAdd
/* 80CA5388  C0 37 05 A4 */	lfs f1, 0x5a4(r23)
/* 80CA538C  C0 1B 06 D0 */	lfs f0, 0x6d0(r27)
/* 80CA5390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA5394  40 80 00 A8 */	bge lbl_80CA543C
/* 80CA5398  3A BC 06 C0 */	addi r21, r28, 0x6c0
/* 80CA539C  7C 1B A8 AE */	lbzx r0, r27, r21
/* 80CA53A0  28 00 00 00 */	cmplwi r0, 0
/* 80CA53A4  40 82 00 4C */	bne lbl_80CA53F0
/* 80CA53A8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA53AC  38 80 00 00 */	li r4, 0
/* 80CA53B0  90 81 00 08 */	stw r4, 8(r1)
/* 80CA53B4  38 00 FF FF */	li r0, -1
/* 80CA53B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA53BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA53C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA53C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA53C8  38 80 00 00 */	li r4, 0
/* 80CA53CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C6E@ha */
/* 80CA53D0  38 A5 8C 6E */	addi r5, r5, 0x8C6E /* 0x00008C6E@l */
/* 80CA53D4  7E C6 B3 78 */	mr r6, r22
/* 80CA53D8  38 FB 01 0C */	addi r7, r27, 0x10c
/* 80CA53DC  39 01 00 20 */	addi r8, r1, 0x20
/* 80CA53E0  39 21 00 28 */	addi r9, r1, 0x28
/* 80CA53E4  39 40 00 FF */	li r10, 0xff
/* 80CA53E8  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80CA53EC  4B 3A 76 A4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CA53F0:
/* 80CA53F0  38 00 00 01 */	li r0, 1
/* 80CA53F4  7C 1B A9 AE */	stbx r0, r27, r21
/* 80CA53F8  C0 1B 06 D0 */	lfs f0, 0x6d0(r27)
/* 80CA53FC  D0 17 05 A4 */	stfs f0, 0x5a4(r23)
/* 80CA5400  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80CA5404  D0 17 06 00 */	stfs f0, 0x600(r23)
/* 80CA5408  D0 17 06 04 */	stfs f0, 0x604(r23)
/* 80CA540C  D0 17 06 08 */	stfs f0, 0x608(r23)
/* 80CA5410  38 00 00 00 */	li r0, 0
/* 80CA5414  B0 18 06 90 */	sth r0, 0x690(r24)
/* 80CA5418  B0 18 06 92 */	sth r0, 0x692(r24)
/* 80CA541C  B0 18 06 94 */	sth r0, 0x694(r24)
/* 80CA5420  80 1B 06 E0 */	lwz r0, 0x6e0(r27)
/* 80CA5424  3B BD 00 01 */	addi r29, r29, 1
/* 80CA5428  7C 1D 00 00 */	cmpw r29, r0
/* 80CA542C  40 82 00 10 */	bne lbl_80CA543C
/* 80CA5430  88 7B 06 CB */	lbz r3, 0x6cb(r27)
/* 80CA5434  38 03 00 01 */	addi r0, r3, 1
/* 80CA5438  98 1B 06 CB */	stb r0, 0x6cb(r27)
lbl_80CA543C:
/* 80CA543C  3B 9C 00 01 */	addi r28, r28, 1
/* 80CA5440  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80CA5444  3B 39 00 06 */	addi r25, r25, 6
lbl_80CA5448:
/* 80CA5448  80 1B 06 E0 */	lwz r0, 0x6e0(r27)
/* 80CA544C  7C 1C 00 00 */	cmpw r28, r0
/* 80CA5450  41 80 FF 00 */	blt lbl_80CA5350
/* 80CA5454  39 61 00 70 */	addi r11, r1, 0x70
/* 80CA5458  4B 6B CD B0 */	b _restgpr_21
/* 80CA545C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CA5460  7C 08 03 A6 */	mtlr r0
/* 80CA5464  38 21 00 70 */	addi r1, r1, 0x70
/* 80CA5468  4E 80 00 20 */	blr 
