lbl_80687FC4:
/* 80687FC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80687FC8  7C 08 02 A6 */	mflr r0
/* 80687FCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80687FD0  39 61 00 40 */	addi r11, r1, 0x40
/* 80687FD4  4B CD A2 09 */	bl _savegpr_29
/* 80687FD8  7C 7E 1B 78 */	mr r30, r3
/* 80687FDC  3C 80 80 69 */	lis r4, lit_3768@ha /* 0x8068A244@ha */
/* 80687FE0  3B E4 A2 44 */	addi r31, r4, lit_3768@l /* 0x8068A244@l */
/* 80687FE4  38 00 00 00 */	li r0, 0
/* 80687FE8  B0 03 06 AC */	sth r0, 0x6ac(r3)
/* 80687FEC  38 00 0C 00 */	li r0, 0xc00
/* 80687FF0  B0 03 06 A2 */	sth r0, 0x6a2(r3)
/* 80687FF4  A8 83 06 9C */	lha r4, 0x69c(r3)
/* 80687FF8  A8 03 06 A0 */	lha r0, 0x6a0(r3)
/* 80687FFC  7C 04 02 14 */	add r0, r4, r0
/* 80688000  B0 03 06 9C */	sth r0, 0x69c(r3)
/* 80688004  80 03 06 74 */	lwz r0, 0x674(r3)
/* 80688008  2C 00 00 02 */	cmpwi r0, 2
/* 8068800C  41 82 00 F0 */	beq lbl_806880FC
/* 80688010  40 80 00 14 */	bge lbl_80688024
/* 80688014  2C 00 00 00 */	cmpwi r0, 0
/* 80688018  41 82 00 1C */	beq lbl_80688034
/* 8068801C  40 80 00 98 */	bge lbl_806880B4
/* 80688020  48 00 02 90 */	b lbl_806882B0
lbl_80688024:
/* 80688024  2C 00 00 04 */	cmpwi r0, 4
/* 80688028  41 82 02 20 */	beq lbl_80688248
/* 8068802C  40 80 02 84 */	bge lbl_806882B0
/* 80688030  48 00 01 34 */	b lbl_80688164
lbl_80688034:
/* 80688034  80 1E 0A 40 */	lwz r0, 0xa40(r30)
/* 80688038  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8068803C  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80688040  38 00 00 01 */	li r0, 1
/* 80688044  90 1E 06 74 */	stw r0, 0x674(r30)
/* 80688048  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8068804C  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80688050  38 00 00 1E */	li r0, 0x1e
/* 80688054  98 1E 06 8F */	stb r0, 0x68f(r30)
/* 80688058  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8068805C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80688060  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80688064  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80688068  38 00 30 00 */	li r0, 0x3000
/* 8068806C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 80688070  38 00 20 00 */	li r0, 0x2000
/* 80688074  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80688078  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8068807C  60 00 00 10 */	ori r0, r0, 0x10
/* 80688080  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80688084  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A9@ha */
/* 80688088  38 03 02 A9 */	addi r0, r3, 0x02A9 /* 0x000702A9@l */
/* 8068808C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80688090  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80688094  38 81 00 20 */	addi r4, r1, 0x20
/* 80688098  38 A0 00 00 */	li r5, 0
/* 8068809C  38 C0 FF FF */	li r6, -1
/* 806880A0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806880A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806880A8  7D 89 03 A6 */	mtctr r12
/* 806880AC  4E 80 04 21 */	bctrl 
/* 806880B0  48 00 02 00 */	b lbl_806882B0
lbl_806880B4:
/* 806880B4  38 00 00 01 */	li r0, 1
/* 806880B8  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 806880BC  38 80 00 00 */	li r4, 0
/* 806880C0  4B FF FC 19 */	bl setBombCarry__8daE_BG_cFi
/* 806880C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806880C8  40 82 02 AC */	bne lbl_80688374
/* 806880CC  38 7E 06 88 */	addi r3, r30, 0x688
/* 806880D0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806880D4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 806880D8  4B BE 86 69 */	bl cLib_chaseF__FPfff
/* 806880DC  88 1E 06 8F */	lbz r0, 0x68f(r30)
/* 806880E0  28 00 00 00 */	cmplwi r0, 0
/* 806880E4  40 82 01 CC */	bne lbl_806882B0
/* 806880E8  38 00 00 02 */	li r0, 2
/* 806880EC  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806880F0  38 00 00 1E */	li r0, 0x1e
/* 806880F4  98 1E 06 8F */	stb r0, 0x68f(r30)
/* 806880F8  48 00 01 B8 */	b lbl_806882B0
lbl_806880FC:
/* 806880FC  38 00 00 01 */	li r0, 1
/* 80688100  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 80688104  38 80 00 00 */	li r4, 0
/* 80688108  4B FF FB D1 */	bl setBombCarry__8daE_BG_cFi
/* 8068810C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80688110  40 82 02 64 */	bne lbl_80688374
/* 80688114  38 7E 06 88 */	addi r3, r30, 0x688
/* 80688118  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8068811C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80688120  4B BE 86 21 */	bl cLib_chaseF__FPfff
/* 80688124  88 1E 06 8F */	lbz r0, 0x68f(r30)
/* 80688128  28 00 00 00 */	cmplwi r0, 0
/* 8068812C  40 82 01 84 */	bne lbl_806882B0
/* 80688130  38 00 00 03 */	li r0, 3
/* 80688134  90 1E 06 74 */	stw r0, 0x674(r30)
/* 80688138  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8068813C  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80688140  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80688144  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80688148  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8068814C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80688150  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80688154  80 1E 0A 40 */	lwz r0, 0xa40(r30)
/* 80688158  60 00 00 01 */	ori r0, r0, 1
/* 8068815C  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80688160  48 00 01 50 */	b lbl_806882B0
lbl_80688164:
/* 80688164  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80688168  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8068816C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80688170  4B BE 85 D1 */	bl cLib_chaseF__FPfff
/* 80688174  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80688178  38 80 10 00 */	li r4, 0x1000
/* 8068817C  38 A0 00 10 */	li r5, 0x10
/* 80688180  38 C0 02 00 */	li r6, 0x200
/* 80688184  38 E0 01 00 */	li r7, 0x100
/* 80688188  4B BE 83 B9 */	bl cLib_addCalcAngleS__FPsssss
/* 8068818C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80688190  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 80688194  7C 03 02 14 */	add r0, r3, r0
/* 80688198  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8068819C  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 806881A0  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 806881A4  7C 03 02 14 */	add r0, r3, r0
/* 806881A8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806881AC  38 7E 06 9A */	addi r3, r30, 0x69a
/* 806881B0  38 80 00 00 */	li r4, 0
/* 806881B4  38 A0 01 00 */	li r5, 0x100
/* 806881B8  4B BE 89 D9 */	bl cLib_chaseAngleS__FPsss
/* 806881BC  2C 03 00 00 */	cmpwi r3, 0
/* 806881C0  41 82 00 F0 */	beq lbl_806882B0
/* 806881C4  7F C3 F3 78 */	mr r3, r30
/* 806881C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806881CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806881D0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806881D4  4B 99 25 3D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806881D8  7C 64 1B 78 */	mr r4, r3
/* 806881DC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806881E0  38 A0 01 00 */	li r5, 0x100
/* 806881E4  4B BE 89 AD */	bl cLib_chaseAngleS__FPsss
/* 806881E8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806881EC  38 80 00 00 */	li r4, 0
/* 806881F0  38 A0 01 80 */	li r5, 0x180
/* 806881F4  4B BE 89 9D */	bl cLib_chaseAngleS__FPsss
/* 806881F8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 806881FC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80688200  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80688204  4C 40 13 82 */	cror 2, 0, 2
/* 80688208  40 82 00 A8 */	bne lbl_806882B0
/* 8068820C  38 00 00 0F */	li r0, 0xf
/* 80688210  98 1E 06 8F */	stb r0, 0x68f(r30)
/* 80688214  38 00 00 04 */	li r0, 4
/* 80688218  90 1E 06 74 */	stw r0, 0x674(r30)
/* 8068821C  D0 3E 05 30 */	stfs f1, 0x530(r30)
/* 80688220  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80688224  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80688228  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 8068822C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80688230  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80688234  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80688238  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8068823C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80688240  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80688244  48 00 00 6C */	b lbl_806882B0
lbl_80688248:
/* 80688248  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 8068824C  38 80 08 00 */	li r4, 0x800
/* 80688250  38 A0 00 08 */	li r5, 8
/* 80688254  38 C0 04 00 */	li r6, 0x400
/* 80688258  38 E0 01 00 */	li r7, 0x100
/* 8068825C  4B BE 82 E5 */	bl cLib_addCalcAngleS__FPsssss
/* 80688260  7F C3 F3 78 */	mr r3, r30
/* 80688264  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80688268  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068826C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80688270  4B 99 24 A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80688274  7C 64 1B 78 */	mr r4, r3
/* 80688278  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8068827C  38 A0 01 00 */	li r5, 0x100
/* 80688280  4B BE 89 11 */	bl cLib_chaseAngleS__FPsss
/* 80688284  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80688288  38 80 00 00 */	li r4, 0
/* 8068828C  38 A0 01 00 */	li r5, 0x100
/* 80688290  4B BE 89 01 */	bl cLib_chaseAngleS__FPsss
/* 80688294  88 1E 06 8F */	lbz r0, 0x68f(r30)
/* 80688298  28 00 00 00 */	cmplwi r0, 0
/* 8068829C  40 82 00 14 */	bne lbl_806882B0
/* 806882A0  7F C3 F3 78 */	mr r3, r30
/* 806882A4  38 80 00 02 */	li r4, 2
/* 806882A8  38 A0 00 00 */	li r5, 0
/* 806882AC  4B FF D9 69 */	bl setActionMode__8daE_BG_cFii
lbl_806882B0:
/* 806882B0  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 806882B4  2C 00 00 01 */	cmpwi r0, 1
/* 806882B8  41 80 00 BC */	blt lbl_80688374
/* 806882BC  2C 00 00 03 */	cmpwi r0, 3
/* 806882C0  41 81 00 B4 */	bgt lbl_80688374
/* 806882C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806882C8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806882CC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806882D0  38 00 00 FF */	li r0, 0xff
/* 806882D4  90 01 00 08 */	stw r0, 8(r1)
/* 806882D8  38 80 00 00 */	li r4, 0
/* 806882DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 806882E0  38 00 FF FF */	li r0, -1
/* 806882E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806882E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806882EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806882F0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806882F4  80 9E 0B B0 */	lwz r4, 0xbb0(r30)
/* 806882F8  38 A0 00 00 */	li r5, 0
/* 806882FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084C4@ha */
/* 80688300  38 C6 84 C4 */	addi r6, r6, 0x84C4 /* 0x000084C4@l */
/* 80688304  38 FE 04 A8 */	addi r7, r30, 0x4a8
/* 80688308  39 00 00 00 */	li r8, 0
/* 8068830C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80688310  39 40 00 00 */	li r10, 0
/* 80688314  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80688318  4B 9C 51 B5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068831C  90 7E 0B B0 */	stw r3, 0xbb0(r30)
/* 80688320  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80688324  38 00 00 FF */	li r0, 0xff
/* 80688328  90 01 00 08 */	stw r0, 8(r1)
/* 8068832C  38 80 00 00 */	li r4, 0
/* 80688330  90 81 00 0C */	stw r4, 0xc(r1)
/* 80688334  38 00 FF FF */	li r0, -1
/* 80688338  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068833C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80688340  90 81 00 18 */	stw r4, 0x18(r1)
/* 80688344  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80688348  80 9E 0B B4 */	lwz r4, 0xbb4(r30)
/* 8068834C  38 A0 00 00 */	li r5, 0
/* 80688350  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084C5@ha */
/* 80688354  38 C6 84 C5 */	addi r6, r6, 0x84C5 /* 0x000084C5@l */
/* 80688358  38 FE 04 A8 */	addi r7, r30, 0x4a8
/* 8068835C  39 00 00 00 */	li r8, 0
/* 80688360  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80688364  39 40 00 00 */	li r10, 0
/* 80688368  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8068836C  4B 9C 51 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80688370  90 7E 0B B4 */	stw r3, 0xbb4(r30)
lbl_80688374:
/* 80688374  39 61 00 40 */	addi r11, r1, 0x40
/* 80688378  4B CD 9E B1 */	bl _restgpr_29
/* 8068837C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80688380  7C 08 03 A6 */	mtlr r0
/* 80688384  38 21 00 40 */	addi r1, r1, 0x40
/* 80688388  4E 80 00 20 */	blr 
