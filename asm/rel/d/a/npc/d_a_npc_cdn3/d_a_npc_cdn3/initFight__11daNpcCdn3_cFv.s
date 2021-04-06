lbl_8097A724:
/* 8097A724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097A728  7C 08 02 A6 */	mflr r0
/* 8097A72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097A730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097A734  93 C1 00 08 */	stw r30, 8(r1)
/* 8097A738  7C 7E 1B 78 */	mr r30, r3
/* 8097A73C  3C 80 80 98 */	lis r4, lit_4037@ha /* 0x8097F540@ha */
/* 8097A740  3B E4 F5 40 */	addi r31, r4, lit_4037@l /* 0x8097F540@l */
/* 8097A744  38 80 00 29 */	li r4, 0x29
/* 8097A748  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097A74C  4B 7D D9 A5 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A750  7C 64 1B 78 */	mr r4, r3
/* 8097A754  7F C3 F3 78 */	mr r3, r30
/* 8097A758  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A75C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8097A760  38 A0 00 00 */	li r5, 0
/* 8097A764  38 C0 00 00 */	li r6, 0
/* 8097A768  38 E0 FF FF */	li r7, -1
/* 8097A76C  4B 7D E7 95 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A770  38 7E 05 94 */	addi r3, r30, 0x594
/* 8097A774  38 80 00 01 */	li r4, 1
/* 8097A778  4B 94 66 A1 */	bl playVoice__17Z2CreatureCitizenFi
/* 8097A77C  38 00 00 00 */	li r0, 0
/* 8097A780  90 1E 0B 70 */	stw r0, 0xb70(r30)
/* 8097A784  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8097A788  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8097A78C  7F C3 F3 78 */	mr r3, r30
/* 8097A790  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8097A794  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8097A798  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 8097A79C  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 8097A7A0  C0 BF 00 3C */	lfs f5, 0x3c(r31)
/* 8097A7A4  C0 DF 00 40 */	lfs f6, 0x40(r31)
/* 8097A7A8  4B 69 FD A1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8097A7AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097A7B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097A7B4  38 63 09 78 */	addi r3, r3, 0x978
/* 8097A7B8  38 80 00 3C */	li r4, 0x3c
/* 8097A7BC  4B 6B A3 DD */	bl onSwitch__12dSv_danBit_cFi
/* 8097A7C0  38 00 00 00 */	li r0, 0
/* 8097A7C4  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 8097A7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097A7CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097A7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097A7D4  7C 08 03 A6 */	mtlr r0
/* 8097A7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8097A7DC  4E 80 00 20 */	blr 
