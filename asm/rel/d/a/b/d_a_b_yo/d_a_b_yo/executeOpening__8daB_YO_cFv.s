lbl_80630F28:
/* 80630F28  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80630F2C  7C 08 02 A6 */	mflr r0
/* 80630F30  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80630F34  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80630F38  4B D3 12 A0 */	b _savegpr_28
/* 80630F3C  7C 7C 1B 78 */	mr r28, r3
/* 80630F40  3C 80 80 64 */	lis r4, lit_3788@ha
/* 80630F44  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 80630F48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80630F4C  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 80630F50  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 80630F54  7C 00 07 74 */	extsb r0, r0
/* 80630F58  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80630F5C  7C 85 02 14 */	add r4, r5, r0
/* 80630F60  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 80630F64  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 80630F68  80 03 0F 74 */	lwz r0, 0xf74(r3)
/* 80630F6C  28 00 00 1B */	cmplwi r0, 0x1b
/* 80630F70  41 81 15 9C */	bgt lbl_8063250C
/* 80630F74  3C 80 80 64 */	lis r4, lit_5357@ha
/* 80630F78  38 84 9C 9C */	addi r4, r4, lit_5357@l
/* 80630F7C  54 00 10 3A */	slwi r0, r0, 2
/* 80630F80  7C 04 00 2E */	lwzx r0, r4, r0
/* 80630F84  7C 09 03 A6 */	mtctr r0
/* 80630F88  4E 80 04 20 */	bctr 
lbl_80630F8C:
/* 80630F8C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80630F90  28 00 00 02 */	cmplwi r0, 2
/* 80630F94  41 82 00 28 */	beq lbl_80630FBC
/* 80630F98  38 80 00 02 */	li r4, 2
/* 80630F9C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80630FA0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80630FA4  38 C0 00 00 */	li r6, 0
/* 80630FA8  4B 9E A9 60 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80630FAC  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80630FB0  60 00 00 02 */	ori r0, r0, 2
/* 80630FB4  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80630FB8  48 00 15 C8 */	b lbl_80632580
lbl_80630FBC:
/* 80630FBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703FE@ha */
/* 80630FC0  38 03 03 FE */	addi r0, r3, 0x03FE /* 0x000703FE@l */
/* 80630FC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80630FC8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80630FCC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80630FD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80630FD4  38 81 00 10 */	addi r4, r1, 0x10
/* 80630FD8  38 A0 00 00 */	li r5, 0
/* 80630FDC  38 C0 00 00 */	li r6, 0
/* 80630FE0  38 E0 00 00 */	li r7, 0
/* 80630FE4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80630FE8  FC 40 08 90 */	fmr f2, f1
/* 80630FEC  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80630FF0  FC 80 18 90 */	fmr f4, f3
/* 80630FF4  39 00 00 00 */	li r8, 0
/* 80630FF8  4B C7 A9 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80630FFC  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80631000  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80631004  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80631008  38 00 00 03 */	li r0, 3
/* 8063100C  98 1C 0F B5 */	stb r0, 0xfb5(r28)
/* 80631010  7F 83 E3 78 */	mr r3, r28
/* 80631014  38 80 00 06 */	li r4, 6
/* 80631018  38 A0 00 02 */	li r5, 2
/* 8063101C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80631020  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631024  4B FF EB E5 */	bl setBck__8daB_YO_cFiUcff
/* 80631028  38 00 00 01 */	li r0, 1
/* 8063102C  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631030  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80631034  D0 3C 05 30 */	stfs f1, 0x530(r28)
/* 80631038  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8063103C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80631040  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80631044  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80631048  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8063104C  D0 3C 04 FC */	stfs f1, 0x4fc(r28)
/* 80631050  38 7E 02 48 */	addi r3, r30, 0x248
/* 80631054  4B B3 04 7C */	b Stop__9dCamera_cFv
/* 80631058  38 7E 02 48 */	addi r3, r30, 0x248
/* 8063105C  38 80 00 03 */	li r4, 3
/* 80631060  4B B3 1F AC */	b SetTrimSize__9dCamera_cFl
/* 80631064  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80631068  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 8063106C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80631070  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 80631074  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80631078  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 8063107C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80631080  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 80631084  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80631088  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 8063108C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80631090  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80631094  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80631098  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 8063109C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806310A0  D0 1C 07 30 */	stfs f0, 0x730(r28)
/* 806310A4  38 00 F0 00 */	li r0, -4096
/* 806310A8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 806310AC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 806310B0  7F 83 E3 78 */	mr r3, r28
/* 806310B4  38 80 23 4E */	li r4, 0x234e
/* 806310B8  4B FF FD B9 */	bl setYoMessage__8daB_YO_cFi
/* 806310BC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806310C0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 806310C4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 806310C8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 806310CC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 806310D0  38 60 02 F2 */	li r3, 0x2f2
/* 806310D4  38 80 00 05 */	li r4, 5
/* 806310D8  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 806310DC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806310E0  7C 06 07 74 */	extsb r6, r0
/* 806310E4  38 E0 00 00 */	li r7, 0
/* 806310E8  39 00 00 00 */	li r8, 0
/* 806310EC  39 20 FF FF */	li r9, -1
/* 806310F0  4B 9E 8C A8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 806310F4  90 7C 06 30 */	stw r3, 0x630(r28)
/* 806310F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806310FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80631100  80 63 00 00 */	lwz r3, 0(r3)
/* 80631104  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80631108  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005D@ha */
/* 8063110C  38 84 00 5D */	addi r4, r4, 0x005D /* 0x0100005D@l */
/* 80631110  4B C7 E3 8C */	b subBgmStart__8Z2SeqMgrFUl
/* 80631114  38 7C 10 5C */	addi r3, r28, 0x105c
/* 80631118  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8063111C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80631120  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80631124  4B A4 59 88 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80631128  48 00 13 E4 */	b lbl_8063250C
lbl_8063112C:
/* 8063112C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80631130  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 80631134  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80631138  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 8063113C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80631140  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80631144  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80631148  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 8063114C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80631150  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80631154  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80631158  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 8063115C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80631160  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80631164  4B FF FD 49 */	bl doYoMessage__8daB_YO_cFv
/* 80631168  2C 03 00 01 */	cmpwi r3, 1
/* 8063116C  40 82 13 A0 */	bne lbl_8063250C
/* 80631170  7F 83 E3 78 */	mr r3, r28
/* 80631174  38 80 00 08 */	li r4, 8
/* 80631178  38 A0 00 02 */	li r5, 2
/* 8063117C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80631180  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631184  4B FF EA 85 */	bl setBck__8daB_YO_cFiUcff
/* 80631188  38 00 00 02 */	li r0, 2
/* 8063118C  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631190  38 00 00 5A */	li r0, 0x5a
/* 80631194  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631198  38 00 01 2C */	li r0, 0x12c
/* 8063119C  90 1C 0F 90 */	stw r0, 0xf90(r28)
/* 806311A0  48 00 13 6C */	b lbl_8063250C
lbl_806311A4:
/* 806311A4  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806311A8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806311AC  40 82 00 5C */	bne lbl_80631208
/* 806311B0  38 00 00 03 */	li r0, 3
/* 806311B4  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 806311B8  38 60 00 00 */	li r3, 0
/* 806311BC  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 806311C0  38 00 80 00 */	li r0, -32768
/* 806311C4  B0 1D 06 06 */	sth r0, 0x606(r29)
/* 806311C8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806311CC  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 806311D0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806311D4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 806311D8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806311DC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806311E0  D0 3D 06 1C */	stfs f1, 0x61c(r29)
/* 806311E4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 806311E8  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 806311EC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 806311F0  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 806311F4  38 00 00 02 */	li r0, 2
/* 806311F8  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806311FC  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80631200  90 7D 06 10 */	stw r3, 0x610(r29)
/* 80631204  B0 7D 06 0A */	sth r3, 0x60a(r29)
lbl_80631208:
/* 80631208  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 8063120C  2C 00 00 01 */	cmpwi r0, 1
/* 80631210  40 82 00 3C */	bne lbl_8063124C
/* 80631214  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80631218  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8063121C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80631220  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80631224  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80631228  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8063122C  7F A3 EB 78 */	mr r3, r29
/* 80631230  38 81 00 BC */	addi r4, r1, 0xbc
/* 80631234  38 A0 80 00 */	li r5, -32768
/* 80631238  38 C0 00 00 */	li r6, 0
/* 8063123C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80631240  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80631244  7D 89 03 A6 */	mtctr r12
/* 80631248  4E 80 04 21 */	bctrl 
lbl_8063124C:
/* 8063124C  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631250  2C 00 00 00 */	cmpwi r0, 0
/* 80631254  40 82 00 70 */	bne lbl_806312C4
/* 80631258  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8063125C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80631260  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80631264  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80631268  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8063126C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80631270  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80631274  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80631278  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8063127C  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80631280  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80631284  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80631288  38 00 00 03 */	li r0, 3
/* 8063128C  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631290  38 00 00 B7 */	li r0, 0xb7
/* 80631294  90 1C 0F 90 */	stw r0, 0xf90(r28)
/* 80631298  38 00 00 4B */	li r0, 0x4b
/* 8063129C  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806312A0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806312A4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806312A8  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 806312AC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806312B0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806312B4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806312B8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806312BC  4B C3 F9 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806312C0  B0 7C 0F 80 */	sth r3, 0xf80(r28)
lbl_806312C4:
/* 806312C4  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806312C8  2C 00 00 00 */	cmpwi r0, 0
/* 806312CC  41 82 00 28 */	beq lbl_806312F4
/* 806312D0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806312D4  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 806312D8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806312DC  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 806312E0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806312E4  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 806312E8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806312EC  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 806312F0  48 00 00 28 */	b lbl_80631318
lbl_806312F4:
/* 806312F4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806312F8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806312FC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631300  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80631304  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631308  38 7C 07 24 */	addi r3, r28, 0x724
/* 8063130C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631310  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80631314  4B C3 F4 98 */	b cLib_chasePos__FP4cXyzRC4cXyzf
lbl_80631318:
/* 80631318  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8063131C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80631320  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80631324  4B C3 F4 1C */	b cLib_chaseF__FPfff
/* 80631328  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8063132C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631330  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80631334  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631338  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8063133C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631340  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80631344  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631348  4B C3 F8 BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8063134C  7C 64 1B 78 */	mr r4, r3
/* 80631350  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80631354  38 A0 00 20 */	li r5, 0x20
/* 80631358  38 C0 02 00 */	li r6, 0x200
/* 8063135C  38 E0 00 40 */	li r7, 0x40
/* 80631360  4B C3 F1 E0 */	b cLib_addCalcAngleS__FPsssss
/* 80631364  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80631368  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8063136C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80631370  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80631374  48 00 83 59 */	bl abs__4cXyzCFRC3Vec
/* 80631378  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8063137C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80631380  40 80 11 8C */	bge lbl_8063250C
/* 80631384  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80631388  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8063138C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80631390  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80631394  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80631398  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8063139C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806313A0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806313A4  A8 1C 0F 80 */	lha r0, 0xf80(r28)
/* 806313A8  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 806313AC  38 00 00 14 */	li r0, 0x14
/* 806313B0  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806313B4  38 00 00 00 */	li r0, 0
/* 806313B8  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806313BC  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806313C0  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 806313C4  7F 83 E3 78 */	mr r3, r28
/* 806313C8  38 80 00 06 */	li r4, 6
/* 806313CC  38 A0 00 02 */	li r5, 2
/* 806313D0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806313D4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806313D8  4B FF E8 31 */	bl setBck__8daB_YO_cFiUcff
/* 806313DC  38 00 00 04 */	li r0, 4
/* 806313E0  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806313E4  48 00 11 28 */	b lbl_8063250C
lbl_806313E8:
/* 806313E8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806313EC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806313F0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806313F4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806313F8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806313FC  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631400  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631404  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80631408  4B C3 F3 A4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 8063140C  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 80631410  2C 00 00 00 */	cmpwi r0, 0
/* 80631414  40 82 10 F8 */	bne lbl_8063250C
/* 80631418  38 00 00 05 */	li r0, 5
/* 8063141C  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631420  38 00 00 1E */	li r0, 0x1e
/* 80631424  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631428  38 00 00 96 */	li r0, 0x96
/* 8063142C  90 1C 0F 90 */	stw r0, 0xf90(r28)
/* 80631430  48 00 10 DC */	b lbl_8063250C
lbl_80631434:
/* 80631434  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80631438  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8063143C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631440  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80631444  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631448  38 7C 07 24 */	addi r3, r28, 0x724
/* 8063144C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631450  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80631454  4B C3 F3 58 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80631458  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 8063145C  2C 00 00 00 */	cmpwi r0, 0
/* 80631460  40 82 10 AC */	bne lbl_8063250C
/* 80631464  38 00 00 06 */	li r0, 6
/* 80631468  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 8063146C  7F 83 E3 78 */	mr r3, r28
/* 80631470  38 80 23 4F */	li r4, 0x234f
/* 80631474  4B FF F9 FD */	bl setYoMessage__8daB_YO_cFi
/* 80631478  38 00 00 1E */	li r0, 0x1e
/* 8063147C  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631480  48 00 10 8C */	b lbl_8063250C
lbl_80631484:
/* 80631484  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631488  2C 00 00 00 */	cmpwi r0, 0
/* 8063148C  40 82 00 14 */	bne lbl_806314A0
/* 80631490  38 7C 07 30 */	addi r3, r28, 0x730
/* 80631494  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80631498  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8063149C  4B C3 F2 A4 */	b cLib_chaseF__FPfff
lbl_806314A0:
/* 806314A0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806314A4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806314A8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806314AC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806314B0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806314B4  38 7C 07 24 */	addi r3, r28, 0x724
/* 806314B8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806314BC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 806314C0  4B C3 F2 EC */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806314C4  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 806314C8  2C 00 00 00 */	cmpwi r0, 0
/* 806314CC  40 82 00 1C */	bne lbl_806314E8
/* 806314D0  38 00 00 01 */	li r0, 1
/* 806314D4  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806314D8  38 00 00 00 */	li r0, 0
/* 806314DC  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806314E0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806314E4  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_806314E8:
/* 806314E8  7F 83 E3 78 */	mr r3, r28
/* 806314EC  4B FF F9 C1 */	bl doYoMessage__8daB_YO_cFv
/* 806314F0  2C 03 00 01 */	cmpwi r3, 1
/* 806314F4  40 82 10 18 */	bne lbl_8063250C
/* 806314F8  38 00 00 07 */	li r0, 7
/* 806314FC  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631500  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 80631504  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80631508  40 81 00 0C */	ble lbl_80631514
/* 8063150C  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631510  48 00 0F FC */	b lbl_8063250C
lbl_80631514:
/* 80631514  38 00 00 1E */	li r0, 0x1e
/* 80631518  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 8063151C  48 00 0F F0 */	b lbl_8063250C
lbl_80631520:
/* 80631520  38 7C 07 30 */	addi r3, r28, 0x730
/* 80631524  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80631528  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8063152C  4B C3 F2 14 */	b cLib_chaseF__FPfff
/* 80631530  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80631534  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631538  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8063153C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80631540  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631544  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631548  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8063154C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80631550  4B C3 F2 5C */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80631554  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 80631558  2C 00 00 00 */	cmpwi r0, 0
/* 8063155C  40 82 00 1C */	bne lbl_80631578
/* 80631560  38 00 00 01 */	li r0, 1
/* 80631564  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80631568  38 00 00 00 */	li r0, 0
/* 8063156C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80631570  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80631574  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_80631578:
/* 80631578  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 8063157C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80631580  40 82 00 1C */	bne lbl_8063159C
/* 80631584  7F 83 E3 78 */	mr r3, r28
/* 80631588  38 80 00 03 */	li r4, 3
/* 8063158C  38 A0 00 02 */	li r5, 2
/* 80631590  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80631594  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631598  4B FF E6 71 */	bl setBck__8daB_YO_cFiUcff
lbl_8063159C:
/* 8063159C  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806315A0  2C 00 00 00 */	cmpwi r0, 0
/* 806315A4  40 82 0F 68 */	bne lbl_8063250C
/* 806315A8  7F 83 E3 78 */	mr r3, r28
/* 806315AC  38 80 23 50 */	li r4, 0x2350
/* 806315B0  4B FF F8 C1 */	bl setYoMessage__8daB_YO_cFi
/* 806315B4  38 00 00 08 */	li r0, 8
/* 806315B8  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806315BC  38 00 00 3C */	li r0, 0x3c
/* 806315C0  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806315C4  48 00 0F 48 */	b lbl_8063250C
lbl_806315C8:
/* 806315C8  38 7C 07 30 */	addi r3, r28, 0x730
/* 806315CC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806315D0  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806315D4  4B C3 F1 6C */	b cLib_chaseF__FPfff
/* 806315D8  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806315DC  2C 00 00 00 */	cmpwi r0, 0
/* 806315E0  40 82 00 1C */	bne lbl_806315FC
/* 806315E4  38 00 00 3C */	li r0, 0x3c
/* 806315E8  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806315EC  38 00 00 00 */	li r0, 0
/* 806315F0  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806315F4  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806315F8  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_806315FC:
/* 806315FC  38 7C 07 30 */	addi r3, r28, 0x730
/* 80631600  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80631604  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80631608  4B C3 F1 38 */	b cLib_chaseF__FPfff
/* 8063160C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80631610  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631614  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631618  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8063161C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631620  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631624  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631628  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8063162C  4B C3 F1 80 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80631630  7F 83 E3 78 */	mr r3, r28
/* 80631634  4B FF F8 79 */	bl doYoMessage__8daB_YO_cFv
/* 80631638  2C 03 00 01 */	cmpwi r3, 1
/* 8063163C  40 82 0E D0 */	bne lbl_8063250C
/* 80631640  38 00 00 09 */	li r0, 9
/* 80631644  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631648  38 00 00 1E */	li r0, 0x1e
/* 8063164C  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631650  38 00 00 01 */	li r0, 1
/* 80631654  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80631658  38 00 00 00 */	li r0, 0
/* 8063165C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80631660  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80631664  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80631668  48 00 0E A4 */	b lbl_8063250C
lbl_8063166C:
/* 8063166C  38 7C 07 30 */	addi r3, r28, 0x730
/* 80631670  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80631674  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80631678  4B C3 F0 C8 */	b cLib_chaseF__FPfff
/* 8063167C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80631680  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631684  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631688  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8063168C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631690  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631694  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631698  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8063169C  4B C3 F1 10 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806316A0  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806316A4  2C 00 00 00 */	cmpwi r0, 0
/* 806316A8  40 82 0E 64 */	bne lbl_8063250C
/* 806316AC  7F 83 E3 78 */	mr r3, r28
/* 806316B0  38 80 23 51 */	li r4, 0x2351
/* 806316B4  4B FF F7 BD */	bl setYoMessage__8daB_YO_cFi
/* 806316B8  38 00 00 0A */	li r0, 0xa
/* 806316BC  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806316C0  48 00 0E 4C */	b lbl_8063250C
lbl_806316C4:
/* 806316C4  4B FF F7 E9 */	bl doYoMessage__8daB_YO_cFv
/* 806316C8  2C 03 00 01 */	cmpwi r3, 1
/* 806316CC  40 82 0E 40 */	bne lbl_8063250C
/* 806316D0  38 00 00 96 */	li r0, 0x96
/* 806316D4  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806316D8  7F 83 E3 78 */	mr r3, r28
/* 806316DC  38 80 00 05 */	li r4, 5
/* 806316E0  38 A0 00 00 */	li r5, 0
/* 806316E4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806316E8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806316EC  4B FF E5 1D */	bl setBck__8daB_YO_cFiUcff
/* 806316F0  38 00 00 0B */	li r0, 0xb
/* 806316F4  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806316F8  38 00 00 0A */	li r0, 0xa
/* 806316FC  90 1C 0F 90 */	stw r0, 0xf90(r28)
/* 80631700  38 00 00 01 */	li r0, 1
/* 80631704  98 1C 0F C0 */	stb r0, 0xfc0(r28)
/* 80631708  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8063170C  D0 1C 0F C4 */	stfs f0, 0xfc4(r28)
/* 80631710  48 00 0D FC */	b lbl_8063250C
lbl_80631714:
/* 80631714  80 7C 05 F4 */	lwz r3, 0x5f4(r28)
/* 80631718  38 80 00 01 */	li r4, 1
/* 8063171C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80631720  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80631724  40 82 00 18 */	bne lbl_8063173C
/* 80631728  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8063172C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80631730  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80631734  41 82 00 08 */	beq lbl_8063173C
/* 80631738  38 80 00 00 */	li r4, 0
lbl_8063173C:
/* 8063173C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80631740  41 82 00 30 */	beq lbl_80631770
/* 80631744  7F 83 E3 78 */	mr r3, r28
/* 80631748  38 80 00 04 */	li r4, 4
/* 8063174C  38 A0 00 02 */	li r5, 2
/* 80631750  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80631754  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631758  4B FF E4 B1 */	bl setBck__8daB_YO_cFiUcff
/* 8063175C  38 00 00 0C */	li r0, 0xc
/* 80631760  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631764  7F 83 E3 78 */	mr r3, r28
/* 80631768  38 80 23 5F */	li r4, 0x235f
/* 8063176C  4B FF F7 05 */	bl setYoMessage__8daB_YO_cFi
lbl_80631770:
/* 80631770  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 80631774  2C 00 00 01 */	cmpwi r0, 1
/* 80631778  40 82 0D 94 */	bne lbl_8063250C
/* 8063177C  38 00 00 01 */	li r0, 1
/* 80631780  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80631784  38 00 00 00 */	li r0, 0
/* 80631788  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8063178C  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80631790  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80631794  48 00 0D 78 */	b lbl_8063250C
lbl_80631798:
/* 80631798  4B FF F7 15 */	bl doYoMessage__8daB_YO_cFv
/* 8063179C  2C 03 00 01 */	cmpwi r3, 1
/* 806317A0  40 82 0D 6C */	bne lbl_8063250C
/* 806317A4  38 00 00 96 */	li r0, 0x96
/* 806317A8  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806317AC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806317B0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806317B4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806317B8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806317BC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806317C0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806317C4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 806317C8  38 9C 07 24 */	addi r4, r28, 0x724
/* 806317CC  48 00 7F 01 */	bl abs__4cXyzCFRC3Vec
/* 806317D0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806317D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 806317D8  D0 1C 07 3C */	stfs f0, 0x73c(r28)
/* 806317DC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806317E0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806317E4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806317E8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806317EC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806317F0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806317F4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 806317F8  38 9C 07 18 */	addi r4, r28, 0x718
/* 806317FC  48 00 7E D1 */	bl abs__4cXyzCFRC3Vec
/* 80631800  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80631804  EC 01 00 24 */	fdivs f0, f1, f0
/* 80631808  D0 1C 07 38 */	stfs f0, 0x738(r28)
/* 8063180C  38 00 00 0D */	li r0, 0xd
/* 80631810  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631814  48 00 0C F8 */	b lbl_8063250C
lbl_80631818:
/* 80631818  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8063181C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631820  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80631824  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631828  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8063182C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631830  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631834  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631838  C0 3C 07 3C */	lfs f1, 0x73c(r28)
/* 8063183C  4B C3 EF 70 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80631840  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80631844  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631848  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8063184C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631850  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80631854  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631858  38 7C 07 18 */	addi r3, r28, 0x718
/* 8063185C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631860  C0 3C 07 38 */	lfs f1, 0x738(r28)
/* 80631864  4B C3 EF 48 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80631868  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 8063186C  2C 00 00 00 */	cmpwi r0, 0
/* 80631870  40 82 0C 9C */	bne lbl_8063250C
/* 80631874  7F 83 E3 78 */	mr r3, r28
/* 80631878  38 80 00 00 */	li r4, 0
/* 8063187C  38 A0 00 00 */	li r5, 0
/* 80631880  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80631884  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631888  4B FF E3 81 */	bl setBck__8daB_YO_cFiUcff
/* 8063188C  38 00 00 0F */	li r0, 0xf
/* 80631890  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631894  38 00 00 01 */	li r0, 1
/* 80631898  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8063189C  38 00 00 00 */	li r0, 0
/* 806318A0  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806318A4  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806318A8  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 806318AC  48 00 0C 60 */	b lbl_8063250C
lbl_806318B0:
/* 806318B0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806318B4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806318B8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806318BC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806318C0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806318C4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806318C8  38 7C 07 24 */	addi r3, r28, 0x724
/* 806318CC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806318D0  C0 3C 07 3C */	lfs f1, 0x73c(r28)
/* 806318D4  4B C3 EE D8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806318D8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806318DC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806318E0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806318E4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806318E8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806318EC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806318F0  38 7C 07 18 */	addi r3, r28, 0x718
/* 806318F4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806318F8  C0 3C 07 38 */	lfs f1, 0x738(r28)
/* 806318FC  4B C3 EE B0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80631900  80 7C 05 F4 */	lwz r3, 0x5f4(r28)
/* 80631904  38 63 00 0C */	addi r3, r3, 0xc
/* 80631908  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8063190C  4B CF 6B 20 */	b checkPass__12J3DFrameCtrlFf
/* 80631910  2C 03 00 00 */	cmpwi r3, 0
/* 80631914  41 82 00 3C */	beq lbl_80631950
/* 80631918  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8063191C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80631920  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80631924  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80631928  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8063192C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80631930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80631934  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80631938  38 80 00 04 */	li r4, 4
/* 8063193C  38 A0 00 1F */	li r5, 0x1f
/* 80631940  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 80631944  4B A3 E1 CC */	b StartQuake__12dVibration_cFii4cXyz
/* 80631948  38 00 00 1E */	li r0, 0x1e
/* 8063194C  90 1C 0F 9C */	stw r0, 0xf9c(r28)
lbl_80631950:
/* 80631950  80 7C 05 F4 */	lwz r3, 0x5f4(r28)
/* 80631954  38 63 00 0C */	addi r3, r3, 0xc
/* 80631958  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8063195C  4B CF 6A D0 */	b checkPass__12J3DFrameCtrlFf
/* 80631960  2C 03 00 00 */	cmpwi r3, 0
/* 80631964  41 82 00 14 */	beq lbl_80631978
/* 80631968  38 00 00 02 */	li r0, 2
/* 8063196C  98 1C 0F C0 */	stb r0, 0xfc0(r28)
/* 80631970  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80631974  D0 1C 0F C4 */	stfs f0, 0xfc4(r28)
lbl_80631978:
/* 80631978  80 7C 05 F4 */	lwz r3, 0x5f4(r28)
/* 8063197C  38 80 00 01 */	li r4, 1
/* 80631980  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80631984  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80631988  40 82 00 18 */	bne lbl_806319A0
/* 8063198C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80631990  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80631994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80631998  41 82 00 08 */	beq lbl_806319A0
/* 8063199C  38 80 00 00 */	li r4, 0
lbl_806319A0:
/* 806319A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806319A4  41 82 0B 68 */	beq lbl_8063250C
/* 806319A8  38 00 00 10 */	li r0, 0x10
/* 806319AC  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806319B0  7F 83 E3 78 */	mr r3, r28
/* 806319B4  38 80 23 52 */	li r4, 0x2352
/* 806319B8  4B FF F4 B9 */	bl setYoMessage__8daB_YO_cFi
/* 806319BC  7F 83 E3 78 */	mr r3, r28
/* 806319C0  38 80 00 01 */	li r4, 1
/* 806319C4  38 A0 00 02 */	li r5, 2
/* 806319C8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 806319CC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806319D0  4B FF E2 39 */	bl setBck__8daB_YO_cFiUcff
/* 806319D4  48 00 0B 38 */	b lbl_8063250C
lbl_806319D8:
/* 806319D8  4B FF F4 D5 */	bl doYoMessage__8daB_YO_cFv
/* 806319DC  2C 03 00 01 */	cmpwi r3, 1
/* 806319E0  40 82 0B 2C */	bne lbl_8063250C
/* 806319E4  38 60 00 1E */	li r3, 0x1e
/* 806319E8  90 7C 0F 8C */	stw r3, 0xf8c(r28)
/* 806319EC  38 00 00 11 */	li r0, 0x11
/* 806319F0  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806319F4  90 7C 0F 8C */	stw r3, 0xf8c(r28)
/* 806319F8  48 00 0B 14 */	b lbl_8063250C
lbl_806319FC:
/* 806319FC  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631A00  2C 00 00 00 */	cmpwi r0, 0
/* 80631A04  40 82 0B 08 */	bne lbl_8063250C
/* 80631A08  38 00 00 03 */	li r0, 3
/* 80631A0C  98 1C 0F C0 */	stb r0, 0xfc0(r28)
/* 80631A10  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631A14  D0 5C 0F C4 */	stfs f2, 0xfc4(r28)
/* 80631A18  38 80 00 07 */	li r4, 7
/* 80631A1C  38 A0 00 02 */	li r5, 2
/* 80631A20  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80631A24  4B FF E1 E5 */	bl setBck__8daB_YO_cFiUcff
/* 80631A28  38 00 00 00 */	li r0, 0
/* 80631A2C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80631A30  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80631A34  38 00 00 14 */	li r0, 0x14
/* 80631A38  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631A3C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80631A40  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 80631A44  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80631A48  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 80631A4C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80631A50  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80631A54  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80631A58  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80631A5C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80631A60  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80631A64  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80631A68  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80631A6C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80631A70  D0 1C 07 30 */	stfs f0, 0x730(r28)
/* 80631A74  38 00 00 3C */	li r0, 0x3c
/* 80631A78  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631A7C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80631A80  D0 3C 07 14 */	stfs f1, 0x714(r28)
/* 80631A84  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703FF@ha */
/* 80631A88  38 03 03 FF */	addi r0, r3, 0x03FF /* 0x000703FF@l */
/* 80631A8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80631A90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80631A94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80631A98  80 63 00 00 */	lwz r3, 0(r3)
/* 80631A9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80631AA0  38 A0 00 00 */	li r5, 0
/* 80631AA4  38 C0 00 00 */	li r6, 0
/* 80631AA8  38 E0 00 00 */	li r7, 0
/* 80631AAC  FC 40 08 90 */	fmr f2, f1
/* 80631AB0  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80631AB4  FC 80 18 90 */	fmr f4, f3
/* 80631AB8  39 00 00 00 */	li r8, 0
/* 80631ABC  4B C7 9E C8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80631AC0  48 00 0A 4C */	b lbl_8063250C
lbl_80631AC4:
/* 80631AC4  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631AC8  2C 00 00 32 */	cmpwi r0, 0x32
/* 80631ACC  40 82 00 0C */	bne lbl_80631AD8
/* 80631AD0  38 80 00 00 */	li r4, 0
/* 80631AD4  4B FF E8 5D */	bl setWindowBreakEffect__8daB_YO_cFi
lbl_80631AD8:
/* 80631AD8  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631ADC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80631AE0  40 82 00 10 */	bne lbl_80631AF0
/* 80631AE4  7F 83 E3 78 */	mr r3, r28
/* 80631AE8  38 80 00 01 */	li r4, 1
/* 80631AEC  4B FF E8 45 */	bl setWindowBreakEffect__8daB_YO_cFi
lbl_80631AF0:
/* 80631AF0  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631AF4  2C 00 00 00 */	cmpwi r0, 0
/* 80631AF8  40 82 0A 14 */	bne lbl_8063250C
/* 80631AFC  4B 9F FE 94 */	b remove__10daMirror_cFv
/* 80631B00  38 00 00 15 */	li r0, 0x15
/* 80631B04  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631B08  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80631B0C  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 80631B10  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80631B14  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 80631B18  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80631B1C  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80631B20  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80631B24  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80631B28  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80631B2C  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80631B30  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80631B34  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80631B38  38 00 00 3C */	li r0, 0x3c
/* 80631B3C  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631B40  7F 83 E3 78 */	mr r3, r28
/* 80631B44  38 80 00 05 */	li r4, 5
/* 80631B48  4B FF E7 E9 */	bl setWindowBreakEffect__8daB_YO_cFi
/* 80631B4C  48 00 09 C0 */	b lbl_8063250C
lbl_80631B50:
/* 80631B50  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631B54  2C 00 00 37 */	cmpwi r0, 0x37
/* 80631B58  40 82 00 0C */	bne lbl_80631B64
/* 80631B5C  38 80 00 04 */	li r4, 4
/* 80631B60  4B FF E7 D1 */	bl setWindowBreakEffect__8daB_YO_cFi
lbl_80631B64:
/* 80631B64  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631B68  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80631B6C  40 82 00 10 */	bne lbl_80631B7C
/* 80631B70  7F 83 E3 78 */	mr r3, r28
/* 80631B74  38 80 00 02 */	li r4, 2
/* 80631B78  4B FF E7 B9 */	bl setWindowBreakEffect__8daB_YO_cFi
lbl_80631B7C:
/* 80631B7C  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631B80  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80631B84  40 82 00 10 */	bne lbl_80631B94
/* 80631B88  7F 83 E3 78 */	mr r3, r28
/* 80631B8C  38 80 00 03 */	li r4, 3
/* 80631B90  4B FF E7 A1 */	bl setWindowBreakEffect__8daB_YO_cFi
lbl_80631B94:
/* 80631B94  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631B98  2C 00 00 00 */	cmpwi r0, 0
/* 80631B9C  40 82 09 70 */	bne lbl_8063250C
/* 80631BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80631BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80631BA8  88 9C 0F A9 */	lbz r4, 0xfa9(r28)
/* 80631BAC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80631BB0  7C 05 07 74 */	extsb r5, r0
/* 80631BB4  4B A0 36 4C */	b onSwitch__10dSv_info_cFii
/* 80631BB8  38 00 00 16 */	li r0, 0x16
/* 80631BBC  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631BC0  7F 83 E3 78 */	mr r3, r28
/* 80631BC4  38 80 00 02 */	li r4, 2
/* 80631BC8  38 A0 00 02 */	li r5, 2
/* 80631BCC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80631BD0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80631BD4  4B FF E0 35 */	bl setBck__8daB_YO_cFiUcff
/* 80631BD8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80631BDC  D0 3C 04 D0 */	stfs f1, 0x4d0(r28)
/* 80631BE0  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80631BE4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80631BE8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80631BEC  D0 3C 07 18 */	stfs f1, 0x718(r28)
/* 80631BF0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80631BF4  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80631BF8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80631BFC  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80631C00  D0 3C 07 24 */	stfs f1, 0x724(r28)
/* 80631C04  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 80631C08  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80631C0C  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80631C10  38 00 00 E6 */	li r0, 0xe6
/* 80631C14  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631C18  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80631C1C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80631C20  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80631C24  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80631C28  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80631C2C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80631C30  7F A3 EB 78 */	mr r3, r29
/* 80631C34  38 81 00 BC */	addi r4, r1, 0xbc
/* 80631C38  38 A0 80 00 */	li r5, -32768
/* 80631C3C  38 C0 00 00 */	li r6, 0
/* 80631C40  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80631C44  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80631C48  7D 89 03 A6 */	mtctr r12
/* 80631C4C  4E 80 04 21 */	bctrl 
/* 80631C50  80 7C 06 30 */	lwz r3, 0x630(r28)
/* 80631C54  38 81 00 14 */	addi r4, r1, 0x14
/* 80631C58  4B 9E 7D 64 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80631C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631C60  28 00 00 00 */	cmplwi r0, 0
/* 80631C64  41 82 08 A8 */	beq lbl_8063250C
/* 80631C68  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80631C6C  D0 1C 0F 28 */	stfs f0, 0xf28(r28)
/* 80631C70  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80631C74  D0 1C 0F 2C */	stfs f0, 0xf2c(r28)
/* 80631C78  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80631C7C  D0 1C 0F 30 */	stfs f0, 0xf30(r28)
/* 80631C80  C0 1C 0F 28 */	lfs f0, 0xf28(r28)
/* 80631C84  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80631C88  C0 1C 0F 2C */	lfs f0, 0xf2c(r28)
/* 80631C8C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80631C90  C0 1C 0F 30 */	lfs f0, 0xf30(r28)
/* 80631C94  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80631C98  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631C9C  38 81 00 98 */	addi r4, r1, 0x98
/* 80631CA0  48 00 7A 11 */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 80631CA4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80631CA8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631CAC  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 80631CB0  38 61 00 30 */	addi r3, r1, 0x30
/* 80631CB4  38 80 00 00 */	li r4, 0
/* 80631CB8  38 A0 80 00 */	li r5, -32768
/* 80631CBC  38 C0 00 00 */	li r6, 0
/* 80631CC0  4B C3 57 34 */	b __ct__5csXyzFsss
/* 80631CC4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631CC8  38 81 00 30 */	addi r4, r1, 0x30
/* 80631CCC  48 00 79 C9 */	bl setShapeAngle__16obj_ystone_classF5csXyz
/* 80631CD0  48 00 08 3C */	b lbl_8063250C
lbl_80631CD4:
/* 80631CD4  80 7C 06 30 */	lwz r3, 0x630(r28)
/* 80631CD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80631CDC  4B 9E 7C E0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80631CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631CE4  28 00 00 00 */	cmplwi r0, 0
/* 80631CE8  41 82 00 CC */	beq lbl_80631DB4
/* 80631CEC  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631CF0  2C 00 00 D2 */	cmpwi r0, 0xd2
/* 80631CF4  40 80 00 94 */	bge lbl_80631D88
/* 80631CF8  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80631CFC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80631D00  EC 41 00 28 */	fsubs f2, f1, f0
/* 80631D04  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80631D08  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80631D0C  EC 21 00 2A */	fadds f1, f1, f0
/* 80631D10  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80631D14  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80631D18  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80631D1C  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80631D20  38 7C 0F 28 */	addi r3, r28, 0xf28
/* 80631D24  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80631D28  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80631D2C  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80631D30  4B C3 E4 48 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80631D34  C0 1C 0F 28 */	lfs f0, 0xf28(r28)
/* 80631D38  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80631D3C  C0 1C 0F 2C */	lfs f0, 0xf2c(r28)
/* 80631D40  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80631D44  C0 1C 0F 30 */	lfs f0, 0xf30(r28)
/* 80631D48  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80631D4C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631D50  38 81 00 8C */	addi r4, r1, 0x8c
/* 80631D54  48 00 79 5D */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 80631D58  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80631D5C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631D60  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 80631D64  38 61 00 28 */	addi r3, r1, 0x28
/* 80631D68  38 80 00 00 */	li r4, 0
/* 80631D6C  38 A0 80 00 */	li r5, -32768
/* 80631D70  38 C0 00 00 */	li r6, 0
/* 80631D74  4B C3 56 80 */	b __ct__5csXyzFsss
/* 80631D78  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631D7C  38 81 00 28 */	addi r4, r1, 0x28
/* 80631D80  48 00 79 15 */	bl setShapeAngle__16obj_ystone_classF5csXyz
/* 80631D84  48 00 00 30 */	b lbl_80631DB4
lbl_80631D88:
/* 80631D88  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80631D8C  41 82 00 18 */	beq lbl_80631DA4
/* 80631D90  C0 3C 0F 2C */	lfs f1, 0xf2c(r28)
/* 80631D94  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80631D98  EC 01 00 2A */	fadds f0, f1, f0
/* 80631D9C  D0 1C 0F 2C */	stfs f0, 0xf2c(r28)
/* 80631DA0  48 00 00 14 */	b lbl_80631DB4
lbl_80631DA4:
/* 80631DA4  C0 3C 0F 2C */	lfs f1, 0xf2c(r28)
/* 80631DA8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80631DAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80631DB0  D0 1C 0F 2C */	stfs f0, 0xf2c(r28)
lbl_80631DB4:
/* 80631DB4  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631DB8  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80631DBC  40 80 00 0C */	bge lbl_80631DC8
/* 80631DC0  7F 83 E3 78 */	mr r3, r28
/* 80631DC4  4B FF E6 49 */	bl setHensinEffect__8daB_YO_cFv
lbl_80631DC8:
/* 80631DC8  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631DCC  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80631DD0  40 82 00 1C */	bne lbl_80631DEC
/* 80631DD4  38 00 00 17 */	li r0, 0x17
/* 80631DD8  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80631DDC  38 00 00 00 */	li r0, 0
/* 80631DE0  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80631DE4  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80631DE8  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_80631DEC:
/* 80631DEC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80631DF0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631DF4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80631DF8  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80631DFC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80631E00  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80631E04  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80631E08  EC 01 00 2A */	fadds f0, f1, f0
/* 80631E0C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80631E10  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631E14  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631E18  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80631E1C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80631E20  4B C3 E3 58 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80631E24  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631E28  2C 00 00 0F */	cmpwi r0, 0xf
/* 80631E2C  40 82 00 4C */	bne lbl_80631E78
/* 80631E30  7F 83 E3 78 */	mr r3, r28
/* 80631E34  38 80 00 00 */	li r4, 0
/* 80631E38  4B FF E4 F9 */	bl setWindowBreakEffect__8daB_YO_cFi
/* 80631E3C  7F 83 E3 78 */	mr r3, r28
/* 80631E40  38 80 00 01 */	li r4, 1
/* 80631E44  4B FF E4 ED */	bl setWindowBreakEffect__8daB_YO_cFi
/* 80631E48  7F 83 E3 78 */	mr r3, r28
/* 80631E4C  38 80 00 02 */	li r4, 2
/* 80631E50  4B FF E4 E1 */	bl setWindowBreakEffect__8daB_YO_cFi
/* 80631E54  7F 83 E3 78 */	mr r3, r28
/* 80631E58  38 80 00 03 */	li r4, 3
/* 80631E5C  4B FF E4 D5 */	bl setWindowBreakEffect__8daB_YO_cFi
/* 80631E60  7F 83 E3 78 */	mr r3, r28
/* 80631E64  38 80 00 04 */	li r4, 4
/* 80631E68  4B FF E4 C9 */	bl setWindowBreakEffect__8daB_YO_cFi
/* 80631E6C  7F 83 E3 78 */	mr r3, r28
/* 80631E70  38 80 00 05 */	li r4, 5
/* 80631E74  4B FF E4 BD */	bl setWindowBreakEffect__8daB_YO_cFi
lbl_80631E78:
/* 80631E78  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80631E80  40 82 06 8C */	bne lbl_8063250C
/* 80631E84  38 00 00 17 */	li r0, 0x17
/* 80631E88  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80631E8C  38 00 01 36 */	li r0, 0x136
/* 80631E90  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80631E94  38 00 40 00 */	li r0, 0x4000
/* 80631E98  B0 1C 0F 80 */	sth r0, 0xf80(r28)
/* 80631E9C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80631EA0  D0 1C 0F 64 */	stfs f0, 0xf64(r28)
/* 80631EA4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80631EA8  D0 1C 0F 60 */	stfs f0, 0xf60(r28)
/* 80631EAC  48 00 06 60 */	b lbl_8063250C
lbl_80631EB0:
/* 80631EB0  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80631EB4  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80631EB8  40 81 00 30 */	ble lbl_80631EE8
/* 80631EBC  38 7C 07 14 */	addi r3, r28, 0x714
/* 80631EC0  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 80631EC4  C0 5F 01 0C */	lfs f2, 0x10c(r31)
/* 80631EC8  4B C3 E8 78 */	b cLib_chaseF__FPfff
/* 80631ECC  38 7C 07 20 */	addi r3, r28, 0x720
/* 80631ED0  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 80631ED4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80631ED8  4B C3 E8 68 */	b cLib_chaseF__FPfff
/* 80631EDC  7F 83 E3 78 */	mr r3, r28
/* 80631EE0  4B FF E5 2D */	bl setHensinEffect__8daB_YO_cFv
/* 80631EE4  48 00 00 58 */	b lbl_80631F3C
lbl_80631EE8:
/* 80631EE8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80631EEC  40 80 00 50 */	bge lbl_80631F3C
/* 80631EF0  A8 7C 0F 80 */	lha r3, 0xf80(r28)
/* 80631EF4  38 03 30 00 */	addi r0, r3, 0x3000
/* 80631EF8  B0 1C 0F 80 */	sth r0, 0xf80(r28)
/* 80631EFC  38 7C 0F 64 */	addi r3, r28, 0xf64
/* 80631F00  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80631F04  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80631F08  4B C3 E8 38 */	b cLib_chaseF__FPfff
/* 80631F0C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80631F10  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80631F14  EC 01 00 2A */	fadds f0, f1, f0
/* 80631F18  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80631F1C  A8 1C 0F 80 */	lha r0, 0xf80(r28)
/* 80631F20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80631F24  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80631F28  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80631F2C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80631F30  C0 1C 0F 64 */	lfs f0, 0xf64(r28)
/* 80631F34  EC 00 00 72 */	fmuls f0, f0, f1
/* 80631F38  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
lbl_80631F3C:
/* 80631F3C  80 7C 06 30 */	lwz r3, 0x630(r28)
/* 80631F40  38 81 00 14 */	addi r4, r1, 0x14
/* 80631F44  4B 9E 7A 78 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80631F48  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631F4C  28 03 00 00 */	cmplwi r3, 0
/* 80631F50  41 82 00 6C */	beq lbl_80631FBC
/* 80631F54  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80631F58  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80631F5C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80631F60  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80631F64  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80631F68  EC 21 00 2A */	fadds f1, f1, f0
/* 80631F6C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80631F70  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80631F74  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80631F78  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80631F7C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80631F80  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80631F84  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80631F88  38 81 00 80 */	addi r4, r1, 0x80
/* 80631F8C  48 00 77 25 */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 80631F90  C0 1C 0F 60 */	lfs f0, 0xf60(r28)
/* 80631F94  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631F98  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 80631F9C  38 61 00 20 */	addi r3, r1, 0x20
/* 80631FA0  38 80 00 00 */	li r4, 0
/* 80631FA4  38 A0 80 00 */	li r5, -32768
/* 80631FA8  38 C0 00 00 */	li r6, 0
/* 80631FAC  4B C3 54 48 */	b __ct__5csXyzFsss
/* 80631FB0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80631FB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80631FB8  48 00 76 DD */	bl setShapeAngle__16obj_ystone_classF5csXyz
lbl_80631FBC:
/* 80631FBC  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80631FC0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80631FC4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80631FC8  EC 21 00 2A */	fadds f1, f1, f0
/* 80631FCC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80631FD0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80631FD4  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80631FD8  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80631FDC  38 7C 07 24 */	addi r3, r28, 0x724
/* 80631FE0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80631FE4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80631FE8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80631FEC  4B C3 E1 8C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80631FF0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80631FF4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80631FF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80631FFC  40 80 00 18 */	bge lbl_80632014
/* 80632000  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80632004  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80632008  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 8063200C  4B C3 E7 34 */	b cLib_chaseF__FPfff
/* 80632010  48 00 00 14 */	b lbl_80632024
lbl_80632014:
/* 80632014  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80632018  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8063201C  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 80632020  4B C3 E7 20 */	b cLib_chaseF__FPfff
lbl_80632024:
/* 80632024  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80632028  2C 00 00 D2 */	cmpwi r0, 0xd2
/* 8063202C  41 81 00 2C */	bgt lbl_80632058
/* 80632030  40 82 00 18 */	bne lbl_80632048
/* 80632034  38 00 00 01 */	li r0, 1
/* 80632038  98 1C 0F D1 */	stb r0, 0xfd1(r28)
/* 8063203C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80632040  80 7C 05 E4 */	lwz r3, 0x5e4(r28)
/* 80632044  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80632048:
/* 80632048  38 7C 0F 60 */	addi r3, r28, 0xf60
/* 8063204C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80632050  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 80632054  4B C3 E6 EC */	b cLib_chaseF__FPfff
lbl_80632058:
/* 80632058  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 8063205C  2C 00 00 82 */	cmpwi r0, 0x82
/* 80632060  41 81 00 48 */	bgt lbl_806320A8
/* 80632064  40 82 00 34 */	bne lbl_80632098
/* 80632068  38 00 00 00 */	li r0, 0
/* 8063206C  98 1C 0F B5 */	stb r0, 0xfb5(r28)
/* 80632070  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80632074  D0 1C 07 44 */	stfs f0, 0x744(r28)
/* 80632078  98 1C 0F D1 */	stb r0, 0xfd1(r28)
/* 8063207C  80 7C 05 F4 */	lwz r3, 0x5f4(r28)
/* 80632080  80 63 00 04 */	lwz r3, 4(r3)
/* 80632084  80 63 00 04 */	lwz r3, 4(r3)
/* 80632088  38 63 00 58 */	addi r3, r3, 0x58
/* 8063208C  80 9C 05 E4 */	lwz r4, 0x5e4(r28)
/* 80632090  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80632094  4B CF D7 EC */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80632098:
/* 80632098  38 7C 07 44 */	addi r3, r28, 0x744
/* 8063209C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806320A0  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 806320A4  4B C3 E6 9C */	b cLib_chaseF__FPfff
lbl_806320A8:
/* 806320A8  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806320AC  2C 00 00 00 */	cmpwi r0, 0
/* 806320B0  40 82 04 5C */	bne lbl_8063250C
/* 806320B4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806320B8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 806320BC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 806320C0  D0 1C 05 34 */	stfs f0, 0x534(r28)
/* 806320C4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 806320C8  38 00 00 18 */	li r0, 0x18
/* 806320CC  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806320D0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 806320D4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806320D8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 806320DC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 806320E0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806320E4  7F A3 EB 78 */	mr r3, r29
/* 806320E8  38 81 00 BC */	addi r4, r1, 0xbc
/* 806320EC  38 A0 00 00 */	li r5, 0
/* 806320F0  38 C0 00 00 */	li r6, 0
/* 806320F4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806320F8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806320FC  7D 89 03 A6 */	mtctr r12
/* 80632100  4E 80 04 21 */	bctrl 
/* 80632104  38 00 00 00 */	li r0, 0
/* 80632108  90 1C 0F 90 */	stw r0, 0xf90(r28)
/* 8063210C  80 7C 06 30 */	lwz r3, 0x630(r28)
/* 80632110  38 81 00 14 */	addi r4, r1, 0x14
/* 80632114  4B 9E 78 A8 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80632118  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8063211C  28 03 00 00 */	cmplwi r3, 0
/* 80632120  41 82 03 EC */	beq lbl_8063250C
/* 80632124  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80632128  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8063212C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80632130  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80632134  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80632138  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8063213C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80632140  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80632144  38 81 00 74 */	addi r4, r1, 0x74
/* 80632148  48 00 75 69 */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 8063214C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80632150  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80632154  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 80632158  38 61 00 18 */	addi r3, r1, 0x18
/* 8063215C  38 80 00 00 */	li r4, 0
/* 80632160  38 A0 80 00 */	li r5, -32768
/* 80632164  38 C0 00 00 */	li r6, 0
/* 80632168  4B C3 52 8C */	b __ct__5csXyzFsss
/* 8063216C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80632170  38 81 00 18 */	addi r4, r1, 0x18
/* 80632174  48 00 75 21 */	bl setShapeAngle__16obj_ystone_classF5csXyz
/* 80632178  48 00 03 94 */	b lbl_8063250C
lbl_8063217C:
/* 8063217C  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80632180  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80632184  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80632188  4B C3 E5 B8 */	b cLib_chaseF__FPfff
/* 8063218C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80632190  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80632194  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80632198  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8063219C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806321A0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806321A4  38 7C 07 24 */	addi r3, r28, 0x724
/* 806321A8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806321AC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806321B0  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 806321B4  4B C3 DF C4 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806321B8  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 806321BC  2C 00 00 00 */	cmpwi r0, 0
/* 806321C0  40 82 00 34 */	bne lbl_806321F4
/* 806321C4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806321C8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 806321CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806321D0  40 80 00 24 */	bge lbl_806321F4
/* 806321D4  38 00 00 1F */	li r0, 0x1f
/* 806321D8  90 1C 0F 90 */	stw r0, 0xf90(r28)
/* 806321DC  38 00 00 28 */	li r0, 0x28
/* 806321E0  90 1D 06 14 */	stw r0, 0x614(r29)
/* 806321E4  38 00 00 00 */	li r0, 0
/* 806321E8  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 806321EC  90 1D 06 10 */	stw r0, 0x610(r29)
/* 806321F0  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_806321F4:
/* 806321F4  80 1C 10 88 */	lwz r0, 0x1088(r28)
/* 806321F8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806321FC  41 82 03 10 */	beq lbl_8063250C
/* 80632200  38 00 00 01 */	li r0, 1
/* 80632204  98 1C 0F B7 */	stb r0, 0xfb7(r28)
/* 80632208  38 00 00 04 */	li r0, 4
/* 8063220C  98 1C 0F C0 */	stb r0, 0xfc0(r28)
/* 80632210  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80632214  D0 1C 0F C4 */	stfs f0, 0xfc4(r28)
/* 80632218  80 9C 10 14 */	lwz r4, 0x1014(r28)
/* 8063221C  28 04 00 00 */	cmplwi r4, 0
/* 80632220  41 82 00 14 */	beq lbl_80632234
/* 80632224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80632228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063222C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80632230  4B A4 20 20 */	b Release__4cBgSFP9dBgW_Base
lbl_80632234:
/* 80632234  80 9C 10 18 */	lwz r4, 0x1018(r28)
/* 80632238  28 04 00 00 */	cmplwi r4, 0
/* 8063223C  41 82 00 18 */	beq lbl_80632254
/* 80632240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80632244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80632248  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8063224C  7F 85 E3 78 */	mr r5, r28
/* 80632250  4B A4 27 B8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80632254:
/* 80632254  38 00 00 19 */	li r0, 0x19
/* 80632258  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 8063225C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80632260  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80632264  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80632268  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8063226C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80632270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80632274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80632278  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8063227C  38 80 00 08 */	li r4, 8
/* 80632280  38 A0 00 1F */	li r5, 0x1f
/* 80632284  38 C1 00 68 */	addi r6, r1, 0x68
/* 80632288  4B A3 D8 88 */	b StartQuake__12dVibration_cFii4cXyz
/* 8063228C  38 00 00 1E */	li r0, 0x1e
/* 80632290  90 1C 0F 9C */	stw r0, 0xf9c(r28)
/* 80632294  7F 83 E3 78 */	mr r3, r28
/* 80632298  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8063229C  4B FF E3 1D */	bl setLandingEffect__8daB_YO_cFf
/* 806322A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030C@ha */
/* 806322A4  38 03 03 0C */	addi r0, r3, 0x030C /* 0x0007030C@l */
/* 806322A8  90 01 00 08 */	stw r0, 8(r1)
/* 806322AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806322B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806322B4  80 63 00 00 */	lwz r3, 0(r3)
/* 806322B8  38 81 00 08 */	addi r4, r1, 8
/* 806322BC  38 A0 00 00 */	li r5, 0
/* 806322C0  38 C0 00 00 */	li r6, 0
/* 806322C4  38 E0 00 00 */	li r7, 0
/* 806322C8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806322CC  FC 40 08 90 */	fmr f2, f1
/* 806322D0  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806322D4  FC 80 18 90 */	fmr f4, f3
/* 806322D8  39 00 00 00 */	li r8, 0
/* 806322DC  4B C7 96 A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806322E0  38 00 00 3C */	li r0, 0x3c
/* 806322E4  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806322E8  38 00 00 00 */	li r0, 0
/* 806322EC  90 1C 06 04 */	stw r0, 0x604(r28)
/* 806322F0  48 00 02 1C */	b lbl_8063250C
lbl_806322F4:
/* 806322F4  38 7C 07 1C */	addi r3, r28, 0x71c
/* 806322F8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806322FC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80632300  4B C3 E4 40 */	b cLib_chaseF__FPfff
/* 80632304  80 1C 0F 90 */	lwz r0, 0xf90(r28)
/* 80632308  2C 00 00 00 */	cmpwi r0, 0
/* 8063230C  41 82 00 50 */	beq lbl_8063235C
/* 80632310  2C 00 00 0B */	cmpwi r0, 0xb
/* 80632314  40 82 00 28 */	bne lbl_8063233C
/* 80632318  38 00 80 00 */	li r0, -32768
/* 8063231C  B0 1D 06 06 */	sth r0, 0x606(r29)
/* 80632320  38 00 00 05 */	li r0, 5
/* 80632324  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80632328  38 00 00 00 */	li r0, 0
/* 8063232C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80632330  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80632334  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80632338  48 00 00 24 */	b lbl_8063235C
lbl_8063233C:
/* 8063233C  2C 00 00 01 */	cmpwi r0, 1
/* 80632340  40 82 00 1C */	bne lbl_8063235C
/* 80632344  38 00 00 22 */	li r0, 0x22
/* 80632348  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8063234C  38 00 00 00 */	li r0, 0
/* 80632350  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80632354  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80632358  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_8063235C:
/* 8063235C  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80632360  2C 00 00 39 */	cmpwi r0, 0x39
/* 80632364  40 81 00 34 */	ble lbl_80632398
/* 80632368  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8063236C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80632370  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80632374  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80632378  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8063237C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80632380  38 7C 07 24 */	addi r3, r28, 0x724
/* 80632384  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80632388  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8063238C  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 80632390  4B C3 DD E8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80632394  48 00 00 3C */	b lbl_806323D0
lbl_80632398:
/* 80632398  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8063239C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806323A0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806323A4  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 806323A8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806323AC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806323B0  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 806323B4  EC 01 00 2A */	fadds f0, f1, f0
/* 806323B8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806323BC  38 7C 07 24 */	addi r3, r28, 0x724
/* 806323C0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806323C4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 806323C8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 806323CC  4B C3 DD AC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_806323D0:
/* 806323D0  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806323D4  2C 00 00 00 */	cmpwi r0, 0
/* 806323D8  40 82 01 34 */	bne lbl_8063250C
/* 806323DC  38 60 04 83 */	li r3, 0x483
/* 806323E0  4B 9E DB E4 */	b fopMsgM_messageSetDemo__FUl
/* 806323E4  38 00 00 96 */	li r0, 0x96
/* 806323E8  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806323EC  38 00 00 1B */	li r0, 0x1b
/* 806323F0  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806323F4  48 00 01 18 */	b lbl_8063250C
lbl_806323F8:
/* 806323F8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806323FC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80632400  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80632404  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80632408  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8063240C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80632410  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80632414  EC 01 00 2A */	fadds f0, f1, f0
/* 80632418  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8063241C  38 7C 07 24 */	addi r3, r28, 0x724
/* 80632420  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80632424  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80632428  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063242C  4B C3 DD 4C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80632430  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80632434  2C 00 00 00 */	cmpwi r0, 0
/* 80632438  40 82 00 D4 */	bne lbl_8063250C
/* 8063243C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80632440  D0 3C 07 24 */	stfs f1, 0x724(r28)
/* 80632444  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80632448  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 8063244C  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80632450  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80632454  D0 3C 07 18 */	stfs f1, 0x718(r28)
/* 80632458  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8063245C  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80632460  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80632464  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80632468  C0 1C 07 24 */	lfs f0, 0x724(r28)
/* 8063246C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80632470  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 80632474  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80632478  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 8063247C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80632480  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 80632484  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80632488  C0 1C 07 1C */	lfs f0, 0x71c(r28)
/* 8063248C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80632490  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 80632494  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80632498  38 7E 02 48 */	addi r3, r30, 0x248
/* 8063249C  38 81 00 5C */	addi r4, r1, 0x5c
/* 806324A0  38 A1 00 50 */	addi r5, r1, 0x50
/* 806324A4  4B B4 E7 74 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 806324A8  38 7E 02 48 */	addi r3, r30, 0x248
/* 806324AC  4B B2 F0 00 */	b Start__9dCamera_cFv
/* 806324B0  38 7E 02 48 */	addi r3, r30, 0x248
/* 806324B4  38 80 00 00 */	li r4, 0
/* 806324B8  4B B3 0B 54 */	b SetTrimSize__9dCamera_cFl
/* 806324BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806324C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806324C4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806324C8  4B A0 FF A0 */	b reset__14dEvt_control_cFv
/* 806324CC  38 00 00 00 */	li r0, 0
/* 806324D0  98 1C 0F B5 */	stb r0, 0xfb5(r28)
/* 806324D4  7F 83 E3 78 */	mr r3, r28
/* 806324D8  38 80 00 01 */	li r4, 1
/* 806324DC  38 A0 00 00 */	li r5, 0
/* 806324E0  4B FF D9 2D */	bl setActionMode__8daB_YO_cFii
/* 806324E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806324E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806324EC  80 63 00 00 */	lwz r3, 0(r3)
/* 806324F0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806324F4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004C@ha */
/* 806324F8  38 84 00 4C */	addi r4, r4, 0x004C /* 0x0100004C@l */
/* 806324FC  38 A0 00 00 */	li r5, 0
/* 80632500  38 C0 00 00 */	li r6, 0
/* 80632504  4B C7 CB 0C */	b bgmStart__8Z2SeqMgrFUlUll
/* 80632508  48 00 00 78 */	b lbl_80632580
lbl_8063250C:
/* 8063250C  C0 1C 07 24 */	lfs f0, 0x724(r28)
/* 80632510  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80632514  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 80632518  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8063251C  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 80632520  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80632524  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 80632528  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8063252C  C0 1C 07 1C */	lfs f0, 0x71c(r28)
/* 80632530  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80632534  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 80632538  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8063253C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80632540  38 81 00 44 */	addi r4, r1, 0x44
/* 80632544  38 A1 00 38 */	addi r5, r1, 0x38
/* 80632548  C0 3C 07 30 */	lfs f1, 0x730(r28)
/* 8063254C  38 C0 00 00 */	li r6, 0
/* 80632550  4B B4 E5 90 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80632554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80632558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063255C  3B A3 4E C8 */	addi r29, r3, 0x4ec8
/* 80632560  7F A3 EB 78 */	mr r3, r29
/* 80632564  4B A1 04 44 */	b onSkipFade__14dEvt_control_cFv
/* 80632568  7F A3 EB 78 */	mr r3, r29
/* 8063256C  7F 84 E3 78 */	mr r4, r28
/* 80632570  3C A0 80 63 */	lis r5, DemoSkipCallBack__8daB_YO_cFPvi@ha
/* 80632574  38 A5 0E 3C */	addi r5, r5, DemoSkipCallBack__8daB_YO_cFPvi@l
/* 80632578  38 C0 00 00 */	li r6, 0
/* 8063257C  4B A1 03 98 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80632580:
/* 80632580  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80632584  4B D2 FC A0 */	b _restgpr_28
/* 80632588  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8063258C  7C 08 03 A6 */	mtlr r0
/* 80632590  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80632594  4E 80 00 20 */	blr 
