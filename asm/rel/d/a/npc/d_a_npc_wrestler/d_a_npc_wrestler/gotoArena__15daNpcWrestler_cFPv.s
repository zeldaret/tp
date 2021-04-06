lbl_80B32058:
/* 80B32058  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B3205C  7C 08 02 A6 */	mflr r0
/* 80B32060  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B32064  39 61 00 50 */	addi r11, r1, 0x50
/* 80B32068  4B 83 01 75 */	bl _savegpr_29
/* 80B3206C  7C 7F 1B 78 */	mr r31, r3
/* 80B32070  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B32074  3B C3 1D F8 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B32078  4B 64 F5 C9 */	bl dCam_getBody__Fv
/* 80B3207C  7C 7D 1B 78 */	mr r29, r3
/* 80B32080  A0 1F 0E 96 */	lhz r0, 0xe96(r31)
/* 80B32084  2C 00 00 02 */	cmpwi r0, 2
/* 80B32088  41 82 00 88 */	beq lbl_80B32110
/* 80B3208C  40 80 03 9C */	bge lbl_80B32428
/* 80B32090  2C 00 00 00 */	cmpwi r0, 0
/* 80B32094  41 82 00 0C */	beq lbl_80B320A0
/* 80B32098  48 00 03 90 */	b lbl_80B32428
/* 80B3209C  48 00 03 8C */	b lbl_80B32428
lbl_80B320A0:
/* 80B320A0  88 1F 09 EC */	lbz r0, 0x9ec(r31)
/* 80B320A4  28 00 00 00 */	cmplwi r0, 0
/* 80B320A8  41 82 00 10 */	beq lbl_80B320B8
/* 80B320AC  38 00 00 01 */	li r0, 1
/* 80B320B0  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B320B4  48 00 00 0C */	b lbl_80B320C0
lbl_80B320B8:
/* 80B320B8  38 00 00 00 */	li r0, 0
/* 80B320BC  90 1F 0E 84 */	stw r0, 0xe84(r31)
lbl_80B320C0:
/* 80B320C0  3C 60 80 B4 */	lis r3, lit_4417@ha /* 0x80B41890@ha */
/* 80B320C4  C0 23 18 90 */	lfs f1, lit_4417@l(r3)  /* 0x80B41890@l */
/* 80B320C8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B320CC  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B320D0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B320D4  FC 00 00 1E */	fctiwz f0, f0
/* 80B320D8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B320DC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B320E0  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B320E4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B320E8  C0 23 00 88 */	lfs f1, 0x88(r3)
/* 80B320EC  4B 4D 5F E5 */	bl fadeOut__13mDoGph_gInf_cFf
/* 80B320F0  7F A3 EB 78 */	mr r3, r29
/* 80B320F4  4B 62 F3 DD */	bl Stop__9dCamera_cFv
/* 80B320F8  7F A3 EB 78 */	mr r3, r29
/* 80B320FC  38 80 00 02 */	li r4, 2
/* 80B32100  4B 63 0F 0D */	bl SetTrimSize__9dCamera_cFl
/* 80B32104  38 00 00 02 */	li r0, 2
/* 80B32108  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3210C  48 00 03 1C */	b lbl_80B32428
lbl_80B32110:
/* 80B32110  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B32114  2C 03 00 01 */	cmpwi r3, 1
/* 80B32118  41 82 00 64 */	beq lbl_80B3217C
/* 80B3211C  40 80 00 10 */	bge lbl_80B3212C
/* 80B32120  2C 03 00 00 */	cmpwi r3, 0
/* 80B32124  40 80 00 14 */	bge lbl_80B32138
/* 80B32128  48 00 03 00 */	b lbl_80B32428
lbl_80B3212C:
/* 80B3212C  2C 03 00 03 */	cmpwi r3, 3
/* 80B32130  40 80 02 F8 */	bge lbl_80B32428
/* 80B32134  48 00 00 84 */	b lbl_80B321B8
lbl_80B32138:
/* 80B32138  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80B3213C  28 00 00 02 */	cmplwi r0, 2
/* 80B32140  41 82 00 30 */	beq lbl_80B32170
/* 80B32144  7F E3 FB 78 */	mr r3, r31
/* 80B32148  38 80 00 01 */	li r4, 1
/* 80B3214C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B32150  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B32154  38 C0 00 00 */	li r6, 0
/* 80B32158  4B 4E 97 B1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3215C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80B32160  60 00 00 02 */	ori r0, r0, 2
/* 80B32164  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80B32168  38 60 00 00 */	li r3, 0
/* 80B3216C  48 00 02 C0 */	b lbl_80B3242C
lbl_80B32170:
/* 80B32170  38 03 00 01 */	addi r0, r3, 1
/* 80B32174  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B32178  48 00 02 B0 */	b lbl_80B32428
lbl_80B3217C:
/* 80B3217C  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B32180  38 03 FF FF */	addi r0, r3, -1
/* 80B32184  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B32188  2C 03 00 00 */	cmpwi r3, 0
/* 80B3218C  41 82 02 9C */	beq lbl_80B32428
/* 80B32190  38 00 00 01 */	li r0, 1
/* 80B32194  98 1F 0E 9A */	stb r0, 0xe9a(r31)
/* 80B32198  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3219C  A8 63 00 8C */	lha r3, 0x8c(r3)
/* 80B321A0  38 03 00 01 */	addi r0, r3, 1
/* 80B321A4  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B321A8  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B321AC  38 03 00 01 */	addi r0, r3, 1
/* 80B321B0  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B321B4  48 00 02 74 */	b lbl_80B32428
lbl_80B321B8:
/* 80B321B8  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B321BC  38 03 FF FF */	addi r0, r3, -1
/* 80B321C0  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B321C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B321C8  41 81 02 60 */	bgt lbl_80B32428
/* 80B321CC  80 1F 0E 7C */	lwz r0, 0xe7c(r31)
/* 80B321D0  2C 00 00 03 */	cmpwi r0, 3
/* 80B321D4  41 82 00 B4 */	beq lbl_80B32288
/* 80B321D8  40 80 00 14 */	bge lbl_80B321EC
/* 80B321DC  2C 00 00 01 */	cmpwi r0, 1
/* 80B321E0  41 82 02 48 */	beq lbl_80B32428
/* 80B321E4  40 80 00 18 */	bge lbl_80B321FC
/* 80B321E8  48 00 01 B8 */	b lbl_80B323A0
lbl_80B321EC:
/* 80B321EC  2C 00 00 05 */	cmpwi r0, 5
/* 80B321F0  41 82 02 38 */	beq lbl_80B32428
/* 80B321F4  40 80 01 AC */	bge lbl_80B323A0
/* 80B321F8  48 00 01 1C */	b lbl_80B32314
lbl_80B321FC:
/* 80B321FC  80 7E 09 88 */	lwz r3, 0x988(r30)
/* 80B32200  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 80B32204  90 61 00 08 */	stw r3, 8(r1)
/* 80B32208  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B3220C  80 1E 09 90 */	lwz r0, 0x990(r30)
/* 80B32210  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B32214  38 00 00 03 */	li r0, 3
/* 80B32218  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3221C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B32220  4B 82 FD F9 */	bl __ptmf_test
/* 80B32224  2C 03 00 00 */	cmpwi r3, 0
/* 80B32228  41 82 00 18 */	beq lbl_80B32240
/* 80B3222C  7F E3 FB 78 */	mr r3, r31
/* 80B32230  38 80 00 00 */	li r4, 0
/* 80B32234  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B32238  4B 82 FE 4D */	bl __ptmf_scall
/* 80B3223C  60 00 00 00 */	nop 
lbl_80B32240:
/* 80B32240  38 00 00 00 */	li r0, 0
/* 80B32244  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B32248  80 61 00 08 */	lwz r3, 8(r1)
/* 80B3224C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B32250  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B32254  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B32258  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B3225C  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B32260  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B32264  4B 82 FD B5 */	bl __ptmf_test
/* 80B32268  2C 03 00 00 */	cmpwi r3, 0
/* 80B3226C  41 82 01 BC */	beq lbl_80B32428
/* 80B32270  7F E3 FB 78 */	mr r3, r31
/* 80B32274  38 80 00 00 */	li r4, 0
/* 80B32278  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B3227C  4B 82 FE 09 */	bl __ptmf_scall
/* 80B32280  60 00 00 00 */	nop 
/* 80B32284  48 00 01 A4 */	b lbl_80B32428
lbl_80B32288:
/* 80B32288  80 7E 09 94 */	lwz r3, 0x994(r30)
/* 80B3228C  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 80B32290  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B32294  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B32298  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B3229C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B322A0  38 00 00 03 */	li r0, 3
/* 80B322A4  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B322A8  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B322AC  4B 82 FD 6D */	bl __ptmf_test
/* 80B322B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B322B4  41 82 00 18 */	beq lbl_80B322CC
/* 80B322B8  7F E3 FB 78 */	mr r3, r31
/* 80B322BC  38 80 00 00 */	li r4, 0
/* 80B322C0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B322C4  4B 82 FD C1 */	bl __ptmf_scall
/* 80B322C8  60 00 00 00 */	nop 
lbl_80B322CC:
/* 80B322CC  38 00 00 00 */	li r0, 0
/* 80B322D0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B322D4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B322D8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B322DC  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B322E0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B322E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B322E8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B322EC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B322F0  4B 82 FD 29 */	bl __ptmf_test
/* 80B322F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B322F8  41 82 01 30 */	beq lbl_80B32428
/* 80B322FC  7F E3 FB 78 */	mr r3, r31
/* 80B32300  38 80 00 00 */	li r4, 0
/* 80B32304  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B32308  4B 82 FD 7D */	bl __ptmf_scall
/* 80B3230C  60 00 00 00 */	nop 
/* 80B32310  48 00 01 18 */	b lbl_80B32428
lbl_80B32314:
/* 80B32314  80 7E 09 A0 */	lwz r3, 0x9a0(r30)
/* 80B32318  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 80B3231C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B32320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B32324  80 1E 09 A8 */	lwz r0, 0x9a8(r30)
/* 80B32328  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3232C  38 00 00 03 */	li r0, 3
/* 80B32330  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B32334  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B32338  4B 82 FC E1 */	bl __ptmf_test
/* 80B3233C  2C 03 00 00 */	cmpwi r3, 0
/* 80B32340  41 82 00 18 */	beq lbl_80B32358
/* 80B32344  7F E3 FB 78 */	mr r3, r31
/* 80B32348  38 80 00 00 */	li r4, 0
/* 80B3234C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B32350  4B 82 FD 35 */	bl __ptmf_scall
/* 80B32354  60 00 00 00 */	nop 
lbl_80B32358:
/* 80B32358  38 00 00 00 */	li r0, 0
/* 80B3235C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B32360  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B32364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B32368  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B3236C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B32370  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B32374  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B32378  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3237C  4B 82 FC 9D */	bl __ptmf_test
/* 80B32380  2C 03 00 00 */	cmpwi r3, 0
/* 80B32384  41 82 00 A4 */	beq lbl_80B32428
/* 80B32388  7F E3 FB 78 */	mr r3, r31
/* 80B3238C  38 80 00 00 */	li r4, 0
/* 80B32390  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B32394  4B 82 FC F1 */	bl __ptmf_scall
/* 80B32398  60 00 00 00 */	nop 
/* 80B3239C  48 00 00 8C */	b lbl_80B32428
lbl_80B323A0:
/* 80B323A0  80 7E 09 AC */	lwz r3, 0x9ac(r30)
/* 80B323A4  80 1E 09 B0 */	lwz r0, 0x9b0(r30)
/* 80B323A8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B323AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B323B0  80 1E 09 B4 */	lwz r0, 0x9b4(r30)
/* 80B323B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B323B8  38 00 00 03 */	li r0, 3
/* 80B323BC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B323C0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B323C4  4B 82 FC 55 */	bl __ptmf_test
/* 80B323C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B323CC  41 82 00 18 */	beq lbl_80B323E4
/* 80B323D0  7F E3 FB 78 */	mr r3, r31
/* 80B323D4  38 80 00 00 */	li r4, 0
/* 80B323D8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B323DC  4B 82 FC A9 */	bl __ptmf_scall
/* 80B323E0  60 00 00 00 */	nop 
lbl_80B323E4:
/* 80B323E4  38 00 00 00 */	li r0, 0
/* 80B323E8  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B323EC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B323F0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B323F4  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B323F8  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B323FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B32400  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B32404  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B32408  4B 82 FC 11 */	bl __ptmf_test
/* 80B3240C  2C 03 00 00 */	cmpwi r3, 0
/* 80B32410  41 82 00 18 */	beq lbl_80B32428
/* 80B32414  7F E3 FB 78 */	mr r3, r31
/* 80B32418  38 80 00 00 */	li r4, 0
/* 80B3241C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B32420  4B 82 FC 65 */	bl __ptmf_scall
/* 80B32424  60 00 00 00 */	nop 
lbl_80B32428:
/* 80B32428  38 60 00 01 */	li r3, 1
lbl_80B3242C:
/* 80B3242C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B32430  4B 82 FD F9 */	bl _restgpr_29
/* 80B32434  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B32438  7C 08 03 A6 */	mtlr r0
/* 80B3243C  38 21 00 50 */	addi r1, r1, 0x50
/* 80B32440  4E 80 00 20 */	blr 
