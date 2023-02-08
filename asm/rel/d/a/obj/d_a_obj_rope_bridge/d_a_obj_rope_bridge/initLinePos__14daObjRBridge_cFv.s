lbl_8059616C:
/* 8059616C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80596170  7C 08 02 A6 */	mflr r0
/* 80596174  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80596178  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8059617C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80596180  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80596184  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80596188  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8059618C  4B DC C0 35 */	bl _savegpr_22
/* 80596190  7C 7D 1B 78 */	mr r29, r3
/* 80596194  3C 80 80 59 */	lis r4, l_brgBmdIdx@ha /* 0x80597D7C@ha */
/* 80596198  3B E4 7D 7C */	addi r31, r4, l_brgBmdIdx@l /* 0x80597D7C@l */
/* 8059619C  38 81 00 5C */	addi r4, r1, 0x5c
/* 805961A0  48 00 05 C9 */	bl getLinePosSt__14daObjRBridge_cFP4cXyz
/* 805961A4  7F A3 EB 78 */	mr r3, r29
/* 805961A8  38 80 00 00 */	li r4, 0
/* 805961AC  38 A1 00 68 */	addi r5, r1, 0x68
/* 805961B0  48 00 06 35 */	bl getLinePosBrg__14daObjRBridge_cFiP4cXyz
/* 805961B4  7F A3 EB 78 */	mr r3, r29
/* 805961B8  38 80 00 01 */	li r4, 1
/* 805961BC  38 A1 00 74 */	addi r5, r1, 0x74
/* 805961C0  48 00 06 25 */	bl getLinePosBrg__14daObjRBridge_cFiP4cXyz
/* 805961C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805961C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805961CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805961D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805961D4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805961D8  7C 05 07 74 */	extsb r5, r0
/* 805961DC  4B A9 F1 85 */	bl isSwitch__10dSv_info_cCFii
/* 805961E0  2C 03 00 00 */	cmpwi r3, 0
/* 805961E4  40 82 01 B8 */	bne lbl_8059639C
/* 805961E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805961EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805961F0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805961F4  54 04 46 3E */	srwi r4, r0, 0x18
/* 805961F8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805961FC  7C 05 07 74 */	extsb r5, r0
/* 80596200  4B A9 F1 61 */	bl isSwitch__10dSv_info_cCFii
/* 80596204  2C 03 00 00 */	cmpwi r3, 0
/* 80596208  40 82 01 94 */	bne lbl_8059639C
/* 8059620C  3B C0 00 00 */	li r30, 0
/* 80596210  3B 80 00 00 */	li r28, 0
/* 80596214  3B 60 00 00 */	li r27, 0
/* 80596218  C3 DF 00 68 */	lfs f30, 0x68(r31)
/* 8059621C  C3 FF 00 74 */	lfs f31, 0x74(r31)
/* 80596220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80596224  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80596228:
/* 80596228  38 61 00 2C */	addi r3, r1, 0x2c
/* 8059622C  3B 01 00 68 */	addi r24, r1, 0x68
/* 80596230  7F 18 DA 14 */	add r24, r24, r27
/* 80596234  7F 04 C3 78 */	mr r4, r24
/* 80596238  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8059623C  4B CD 08 F9 */	bl __mi__4cXyzCFRC3Vec
/* 80596240  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80596244  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80596248  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8059624C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80596250  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80596254  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80596258  38 61 00 20 */	addi r3, r1, 0x20
/* 8059625C  38 81 00 50 */	addi r4, r1, 0x50
/* 80596260  4B CD 0C E9 */	bl normalizeZP__4cXyzFv
/* 80596264  38 1C 0A FC */	addi r0, r28, 0xafc
/* 80596268  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8059626C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80596270  83 23 00 00 */	lwz r25, 0(r3)
/* 80596274  82 FD 0B 04 */	lwz r23, 0xb04(r29)
/* 80596278  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 8059627C  D3 C1 00 3C */	stfs f30, 0x3c(r1)
/* 80596280  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 80596284  7F 43 D3 78 */	mr r3, r26
/* 80596288  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8059628C  4B A7 61 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 80596290  7F 43 D3 78 */	mr r3, r26
/* 80596294  38 81 00 38 */	addi r4, r1, 0x38
/* 80596298  7C 85 23 78 */	mr r5, r4
/* 8059629C  4B DB 0A D1 */	bl PSMTXMultVec
/* 805962A0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805962A4  D0 19 00 00 */	stfs f0, 0(r25)
/* 805962A8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805962AC  D0 19 00 04 */	stfs f0, 4(r25)
/* 805962B0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805962B4  D0 19 00 08 */	stfs f0, 8(r25)
/* 805962B8  C0 19 00 00 */	lfs f0, 0(r25)
/* 805962BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805962C0  C0 19 00 04 */	lfs f0, 4(r25)
/* 805962C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805962C8  C0 19 00 08 */	lfs f0, 8(r25)
/* 805962CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805962D0  3A C0 00 00 */	li r22, 0
/* 805962D4  3B 39 00 0C */	addi r25, r25, 0xc
/* 805962D8  48 00 00 78 */	b lbl_80596350
lbl_805962DC:
/* 805962DC  38 61 00 14 */	addi r3, r1, 0x14
/* 805962E0  38 81 00 50 */	addi r4, r1, 0x50
/* 805962E4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 805962E8  4B CD 08 9D */	bl __ml__4cXyzCFf
/* 805962EC  38 61 00 08 */	addi r3, r1, 8
/* 805962F0  38 81 00 44 */	addi r4, r1, 0x44
/* 805962F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 805962F8  4B CD 07 ED */	bl __pl__4cXyzCFRC3Vec
/* 805962FC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80596300  D0 19 00 00 */	stfs f0, 0(r25)
/* 80596304  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80596308  D0 19 00 04 */	stfs f0, 4(r25)
/* 8059630C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80596310  D0 19 00 08 */	stfs f0, 8(r25)
/* 80596314  C0 19 00 00 */	lfs f0, 0(r25)
/* 80596318  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8059631C  C0 19 00 04 */	lfs f0, 4(r25)
/* 80596320  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80596324  C0 19 00 08 */	lfs f0, 8(r25)
/* 80596328  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8059632C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80596330  D0 17 00 00 */	stfs f0, 0(r23)
/* 80596334  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80596338  D0 17 00 04 */	stfs f0, 4(r23)
/* 8059633C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80596340  D0 17 00 08 */	stfs f0, 8(r23)
/* 80596344  3A D6 00 01 */	addi r22, r22, 1
/* 80596348  3B 39 00 0C */	addi r25, r25, 0xc
/* 8059634C  3A F7 00 0C */	addi r23, r23, 0xc
lbl_80596350:
/* 80596350  88 7D 0A F1 */	lbz r3, 0xaf1(r29)
/* 80596354  38 03 FF FF */	addi r0, r3, -1
/* 80596358  7C 16 00 00 */	cmpw r22, r0
/* 8059635C  41 80 FF 80 */	blt lbl_805962DC
/* 80596360  C0 18 00 00 */	lfs f0, 0(r24)
/* 80596364  D0 19 FF F4 */	stfs f0, -0xc(r25)
/* 80596368  C0 18 00 04 */	lfs f0, 4(r24)
/* 8059636C  D0 19 FF F8 */	stfs f0, -8(r25)
/* 80596370  C0 18 00 08 */	lfs f0, 8(r24)
/* 80596374  D0 19 FF FC */	stfs f0, -4(r25)
/* 80596378  88 7D 0A F1 */	lbz r3, 0xaf1(r29)
/* 8059637C  38 63 FF FF */	addi r3, r3, -1
/* 80596380  38 1E 0B 08 */	addi r0, r30, 0xb08
/* 80596384  7C 7D 01 AE */	stbx r3, r29, r0
/* 80596388  3B DE 00 01 */	addi r30, r30, 1
/* 8059638C  2C 1E 00 02 */	cmpwi r30, 2
/* 80596390  3B 9C 00 04 */	addi r28, r28, 4
/* 80596394  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80596398  41 80 FE 90 */	blt lbl_80596228
lbl_8059639C:
/* 8059639C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 805963A0  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805963A4  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 805963A8  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 805963AC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805963B0  4B DC BE 5D */	bl _restgpr_22
/* 805963B4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805963B8  7C 08 03 A6 */	mtlr r0
/* 805963BC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805963C0  4E 80 00 20 */	blr 
