lbl_807040B0:
/* 807040B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807040B4  7C 08 02 A6 */	mflr r0
/* 807040B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807040BC  39 61 00 30 */	addi r11, r1, 0x30
/* 807040C0  4B C5 E1 18 */	b _savegpr_28
/* 807040C4  7C 7F 1B 78 */	mr r31, r3
/* 807040C8  38 00 00 03 */	li r0, 3
/* 807040CC  98 03 05 46 */	stb r0, 0x546(r3)
/* 807040D0  3B A0 00 00 */	li r29, 0
/* 807040D4  3B 80 00 01 */	li r28, 1
/* 807040D8  3B C0 00 01 */	li r30, 1
/* 807040DC  A8 03 06 68 */	lha r0, 0x668(r3)
/* 807040E0  28 00 00 0A */	cmplwi r0, 0xa
/* 807040E4  41 81 00 7C */	bgt lbl_80704160
/* 807040E8  3C 80 80 70 */	lis r4, lit_5528@ha
/* 807040EC  38 84 5D DC */	addi r4, r4, lit_5528@l
/* 807040F0  54 00 10 3A */	slwi r0, r0, 2
/* 807040F4  7C 04 00 2E */	lwzx r0, r4, r0
/* 807040F8  7C 09 03 A6 */	mtctr r0
/* 807040FC  4E 80 04 20 */	bctr 
lbl_80704100:
/* 80704100  4B FF C9 F9 */	bl e_kr_auto_move__FP10e_kr_class
/* 80704104  3B A0 00 01 */	li r29, 1
/* 80704108  48 00 00 58 */	b lbl_80704160
lbl_8070410C:
/* 8070410C  4B FF F2 81 */	bl e_kr_damage__FP10e_kr_class
/* 80704110  7C 7C 1B 78 */	mr r28, r3
/* 80704114  3B C0 00 00 */	li r30, 0
/* 80704118  48 00 00 48 */	b lbl_80704160
lbl_8070411C:
/* 8070411C  38 00 00 16 */	li r0, 0x16
/* 80704120  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80704124  4B FF DB D1 */	bl e_kr_horse_move__FP10e_kr_class
/* 80704128  3B A0 00 01 */	li r29, 1
/* 8070412C  48 00 00 34 */	b lbl_80704160
lbl_80704130:
/* 80704130  4B FF CD 0D */	bl e_kr_atack_move__FP10e_kr_class
/* 80704134  3B A0 00 01 */	li r29, 1
/* 80704138  48 00 00 28 */	b lbl_80704160
lbl_8070413C:
/* 8070413C  4B FF E4 7D */	bl e_kr_wait_move__FP10e_kr_class
/* 80704140  48 00 00 20 */	b lbl_80704160
lbl_80704144:
/* 80704144  4B FF EA C5 */	bl e_kr_su_wait_move__FP10e_kr_class
/* 80704148  48 00 00 18 */	b lbl_80704160
lbl_8070414C:
/* 8070414C  38 00 00 16 */	li r0, 0x16
/* 80704150  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80704154  4B FF C4 E5 */	bl e_kr_path_move__FP10e_kr_class
/* 80704158  7C 7C 1B 78 */	mr r28, r3
/* 8070415C  3B A0 00 01 */	li r29, 1
lbl_80704160:
/* 80704160  7F A0 07 75 */	extsb. r0, r29
/* 80704164  41 82 00 14 */	beq lbl_80704178
/* 80704168  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8070416C  38 80 00 01 */	li r4, 1
/* 80704170  4B BB DA 0C */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80704174  48 00 00 10 */	b lbl_80704184
lbl_80704178:
/* 80704178  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8070417C  38 80 00 00 */	li r4, 0
/* 80704180  4B BB D9 FC */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_80704184:
/* 80704184  7F 80 07 75 */	extsb. r0, r28
/* 80704188  41 82 00 10 */	beq lbl_80704198
/* 8070418C  38 00 00 04 */	li r0, 4
/* 80704190  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80704194  48 00 00 18 */	b lbl_807041AC
lbl_80704198:
/* 80704198  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8070419C  54 00 00 3E */	slwi r0, r0, 0
/* 807041A0  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 807041A4  38 00 00 00 */	li r0, 0
/* 807041A8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_807041AC:
/* 807041AC  7F C0 07 75 */	extsb. r0, r30
/* 807041B0  41 82 00 18 */	beq lbl_807041C8
/* 807041B4  38 7F 06 EA */	addi r3, r31, 0x6ea
/* 807041B8  38 80 00 00 */	li r4, 0
/* 807041BC  38 A0 00 04 */	li r5, 4
/* 807041C0  38 C0 08 00 */	li r6, 0x800
/* 807041C4  4B B6 C4 44 */	b cLib_addCalcAngleS2__FPssss
lbl_807041C8:
/* 807041C8  3C 60 80 70 */	lis r3, lit_5527@ha
/* 807041CC  C0 03 5C 14 */	lfs f0, lit_5527@l(r3)
/* 807041D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807041D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807041D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807041DC  7F E3 FB 78 */	mr r3, r31
/* 807041E0  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 807041E4  38 BF 05 38 */	addi r5, r31, 0x538
/* 807041E8  38 C1 00 08 */	addi r6, r1, 8
/* 807041EC  48 00 14 A9 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807041F0  39 61 00 30 */	addi r11, r1, 0x30
/* 807041F4  4B C5 E0 30 */	b _restgpr_28
/* 807041F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807041FC  7C 08 03 A6 */	mtlr r0
/* 80704200  38 21 00 30 */	addi r1, r1, 0x30
/* 80704204  4E 80 00 20 */	blr 
