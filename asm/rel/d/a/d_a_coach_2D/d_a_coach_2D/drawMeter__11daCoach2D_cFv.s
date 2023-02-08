lbl_80656ED0:
/* 80656ED0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80656ED4  7C 08 02 A6 */	mflr r0
/* 80656ED8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80656EDC  39 61 00 50 */	addi r11, r1, 0x50
/* 80656EE0  4B D0 B2 ED */	bl _savegpr_25
/* 80656EE4  7C 7A 1B 78 */	mr r26, r3
/* 80656EE8  3C 80 80 65 */	lis r4, lit_4003@ha /* 0x80657924@ha */
/* 80656EEC  3B A4 79 24 */	addi r29, r4, lit_4003@l /* 0x80657924@l */
/* 80656EF0  48 00 03 71 */	bl update__11daCoach2D_cFv
/* 80656EF4  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x80657A9C@ha */
/* 80656EF8  38 63 7A 9C */	addi r3, r3, l_HOSTIO@l /* 0x80657A9C@l */
/* 80656EFC  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 80656F00  28 00 00 00 */	cmplwi r0, 0
/* 80656F04  41 82 00 28 */	beq lbl_80656F2C
/* 80656F08  80 7A 05 80 */	lwz r3, 0x580(r26)
/* 80656F0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80656F10  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80656F14  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80656F18  81 83 00 00 */	lwz r12, 0(r3)
/* 80656F1C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80656F20  7D 89 03 A6 */	mtctr r12
/* 80656F24  4E 80 04 21 */	bctrl 
/* 80656F28  48 00 00 24 */	b lbl_80656F4C
lbl_80656F2C:
/* 80656F2C  80 7A 05 80 */	lwz r3, 0x580(r26)
/* 80656F30  80 63 00 04 */	lwz r3, 4(r3)
/* 80656F34  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80656F38  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80656F3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80656F40  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80656F44  7D 89 03 A6 */	mtctr r12
/* 80656F48  4E 80 04 21 */	bctrl 
lbl_80656F4C:
/* 80656F4C  3B 60 00 00 */	li r27, 0
/* 80656F50  3B 20 00 00 */	li r25, 0
/* 80656F54  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x80657A9C@ha */
/* 80656F58  3B C3 7A 9C */	addi r30, r3, l_HOSTIO@l /* 0x80657A9C@l */
/* 80656F5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80656F60  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80656F64  48 00 01 94 */	b lbl_806570F8
lbl_80656F68:
/* 80656F68  7F 9A CA 14 */	add r28, r26, r25
/* 80656F6C  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80656F70  C0 3C 05 90 */	lfs f1, 0x590(r28)
/* 80656F74  C0 5C 05 94 */	lfs f2, 0x594(r28)
/* 80656F78  4B BF D6 39 */	bl paneTrans__8CPaneMgrFff
/* 80656F7C  80 7A 05 8C */	lwz r3, 0x58c(r26)
/* 80656F80  C0 3C 05 90 */	lfs f1, 0x590(r28)
/* 80656F84  C0 5C 05 94 */	lfs f2, 0x594(r28)
/* 80656F88  4B BF D6 29 */	bl paneTrans__8CPaneMgrFff
/* 80656F8C  88 1A 07 80 */	lbz r0, 0x780(r26)
/* 80656F90  7C 1B 00 00 */	cmpw r27, r0
/* 80656F94  40 80 00 F8 */	bge lbl_8065708C
/* 80656F98  80 7A 05 84 */	lwz r3, 0x584(r26)
/* 80656F9C  4B BF E6 6D */	bl hide__13CPaneMgrAlphaFv
/* 80656FA0  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80656FA4  4B BF E6 25 */	bl show__13CPaneMgrAlphaFv
/* 80656FA8  80 7A 05 8C */	lwz r3, 0x58c(r26)
/* 80656FAC  4B BF E6 5D */	bl hide__13CPaneMgrAlphaFv
/* 80656FB0  88 7A 07 80 */	lbz r3, 0x780(r26)
/* 80656FB4  38 03 FF FF */	addi r0, r3, -1
/* 80656FB8  7C 1B 00 00 */	cmpw r27, r0
/* 80656FBC  40 82 00 2C */	bne lbl_80656FE8
/* 80656FC0  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80656FC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80656FC8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80656FCC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80656FD0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80656FD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80656FD8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80656FDC  7D 89 03 A6 */	mtctr r12
/* 80656FE0  4E 80 04 21 */	bctrl 
/* 80656FE4  48 00 00 28 */	b lbl_8065700C
lbl_80656FE8:
/* 80656FE8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80656FEC  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80656FF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80656FF4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80656FF8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80656FFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80657000  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80657004  7D 89 03 A6 */	mtctr r12
/* 80657008  4E 80 04 21 */	bctrl 
lbl_8065700C:
/* 8065700C  80 7A 05 74 */	lwz r3, 0x574(r26)
/* 80657010  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80657014  FC 40 08 90 */	fmr f2, f1
/* 80657018  80 9F 5F 50 */	lwz r4, 0x5f50(r31)
/* 8065701C  4B CA 1E B9 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80657020  88 1C 05 A5 */	lbz r0, 0x5a5(r28)
/* 80657024  28 00 00 FF */	cmplwi r0, 0xff
/* 80657028  40 82 00 14 */	bne lbl_8065703C
/* 8065702C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80657030  D0 1C 05 A0 */	stfs f0, 0x5a0(r28)
/* 80657034  38 00 00 01 */	li r0, 1
/* 80657038  98 1C 05 A5 */	stb r0, 0x5a5(r28)
lbl_8065703C:
/* 8065703C  88 1C 05 A5 */	lbz r0, 0x5a5(r28)
/* 80657040  28 00 00 01 */	cmplwi r0, 1
/* 80657044  40 82 00 AC */	bne lbl_806570F0
/* 80657048  80 9A 05 88 */	lwz r4, 0x588(r26)
/* 8065704C  38 61 00 18 */	addi r3, r1, 0x18
/* 80657050  80 A4 00 04 */	lwz r5, 4(r4)
/* 80657054  38 C0 00 00 */	li r6, 0
/* 80657058  38 E0 00 00 */	li r7, 0
/* 8065705C  4B BF DE 61 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80657060  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80657064  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80657068  90 61 00 24 */	stw r3, 0x24(r1)
/* 8065706C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80657070  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80657074  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80657078  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8065707C  D0 1C 05 98 */	stfs f0, 0x598(r28)
/* 80657080  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80657084  D0 1C 05 9C */	stfs f0, 0x59c(r28)
/* 80657088  48 00 00 68 */	b lbl_806570F0
lbl_8065708C:
/* 8065708C  80 7A 05 84 */	lwz r3, 0x584(r26)
/* 80657090  4B BF E5 79 */	bl hide__13CPaneMgrAlphaFv
/* 80657094  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80657098  4B BF E5 71 */	bl hide__13CPaneMgrAlphaFv
/* 8065709C  80 7A 05 8C */	lwz r3, 0x58c(r26)
/* 806570A0  4B BF E5 29 */	bl show__13CPaneMgrAlphaFv
/* 806570A4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806570A8  80 7A 05 8C */	lwz r3, 0x58c(r26)
/* 806570AC  80 63 00 04 */	lwz r3, 4(r3)
/* 806570B0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 806570B4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 806570B8  81 83 00 00 */	lwz r12, 0(r3)
/* 806570BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806570C0  7D 89 03 A6 */	mtctr r12
/* 806570C4  4E 80 04 21 */	bctrl 
/* 806570C8  80 7A 05 74 */	lwz r3, 0x574(r26)
/* 806570CC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806570D0  FC 40 08 90 */	fmr f2, f1
/* 806570D4  80 9F 5F 50 */	lwz r4, 0x5f50(r31)
/* 806570D8  4B CA 1D FD */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 806570DC  88 1C 05 A5 */	lbz r0, 0x5a5(r28)
/* 806570E0  28 00 00 00 */	cmplwi r0, 0
/* 806570E4  40 82 00 0C */	bne lbl_806570F0
/* 806570E8  38 00 00 FF */	li r0, 0xff
/* 806570EC  98 1C 05 A5 */	stb r0, 0x5a5(r28)
lbl_806570F0:
/* 806570F0  3B 7B 00 01 */	addi r27, r27, 1
/* 806570F4  3B 39 00 18 */	addi r25, r25, 0x18
lbl_806570F8:
/* 806570F8  88 1A 07 81 */	lbz r0, 0x781(r26)
/* 806570FC  7C 1B 00 00 */	cmpw r27, r0
/* 80657100  41 80 FE 68 */	blt lbl_80656F68
/* 80657104  80 7A 05 84 */	lwz r3, 0x584(r26)
/* 80657108  4B BF E4 C1 */	bl show__13CPaneMgrAlphaFv
/* 8065710C  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 80657110  4B BF E4 F9 */	bl hide__13CPaneMgrAlphaFv
/* 80657114  80 7A 05 8C */	lwz r3, 0x58c(r26)
/* 80657118  4B BF E4 F1 */	bl hide__13CPaneMgrAlphaFv
/* 8065711C  80 7A 05 84 */	lwz r3, 0x584(r26)
/* 80657120  3C 80 80 65 */	lis r4, l_HOSTIO@ha /* 0x80657A9C@ha */
/* 80657124  38 84 7A 9C */	addi r4, r4, l_HOSTIO@l /* 0x80657A9C@l */
/* 80657128  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8065712C  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 80657130  4B BF D4 81 */	bl paneTrans__8CPaneMgrFff
/* 80657134  80 7A 05 74 */	lwz r3, 0x574(r26)
/* 80657138  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8065713C  FC 40 08 90 */	fmr f2, f1
/* 80657140  80 9F 5F 50 */	lwz r4, 0x5f50(r31)
/* 80657144  4B CA 1D 91 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80657148  3B 60 00 00 */	li r27, 0
/* 8065714C  3B C0 00 00 */	li r30, 0
/* 80657150  3C 60 80 65 */	lis r3, l_HOSTIO@ha /* 0x80657A9C@ha */
/* 80657154  3B 23 7A 9C */	addi r25, r3, l_HOSTIO@l /* 0x80657A9C@l */
/* 80657158  48 00 00 B0 */	b lbl_80657208
lbl_8065715C:
/* 8065715C  7F 9A F2 14 */	add r28, r26, r30
/* 80657160  88 1C 05 A5 */	lbz r0, 0x5a5(r28)
/* 80657164  28 00 00 01 */	cmplwi r0, 1
/* 80657168  40 82 00 98 */	bne lbl_80657200
/* 8065716C  88 19 00 48 */	lbz r0, 0x48(r25)
/* 80657170  98 01 00 08 */	stb r0, 8(r1)
/* 80657174  88 19 00 49 */	lbz r0, 0x49(r25)
/* 80657178  98 01 00 09 */	stb r0, 9(r1)
/* 8065717C  88 19 00 4A */	lbz r0, 0x4a(r25)
/* 80657180  98 01 00 0A */	stb r0, 0xa(r1)
/* 80657184  88 19 00 4B */	lbz r0, 0x4b(r25)
/* 80657188  98 01 00 0B */	stb r0, 0xb(r1)
/* 8065718C  80 01 00 08 */	lwz r0, 8(r1)
/* 80657190  90 01 00 0C */	stw r0, 0xc(r1)
/* 80657194  88 19 00 4C */	lbz r0, 0x4c(r25)
/* 80657198  98 01 00 10 */	stb r0, 0x10(r1)
/* 8065719C  88 19 00 4D */	lbz r0, 0x4d(r25)
/* 806571A0  98 01 00 11 */	stb r0, 0x11(r1)
/* 806571A4  88 19 00 4E */	lbz r0, 0x4e(r25)
/* 806571A8  98 01 00 12 */	stb r0, 0x12(r1)
/* 806571AC  88 19 00 4F */	lbz r0, 0x4f(r25)
/* 806571B0  98 01 00 13 */	stb r0, 0x13(r1)
/* 806571B4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 806571B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806571BC  C0 79 00 40 */	lfs f3, 0x40(r25)
/* 806571C0  80 7A 05 7C */	lwz r3, 0x57c(r26)
/* 806571C4  38 9C 05 A0 */	addi r4, r28, 0x5a0
/* 806571C8  C0 3C 05 98 */	lfs f1, 0x598(r28)
/* 806571CC  C0 5C 05 9C */	lfs f2, 0x59c(r28)
/* 806571D0  FC 80 18 90 */	fmr f4, f3
/* 806571D4  C0 BD 00 08 */	lfs f5, 8(r29)
/* 806571D8  C0 D9 00 44 */	lfs f6, 0x44(r25)
/* 806571DC  38 A1 00 14 */	addi r5, r1, 0x14
/* 806571E0  38 C1 00 0C */	addi r6, r1, 0xc
/* 806571E4  4B BE ED AD */	bl draw__15dMsgScrnLight_cFPfffffffQ28JUtility6TColorQ28JUtility6TColor
/* 806571E8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806571EC  C0 1C 05 A0 */	lfs f0, 0x5a0(r28)
/* 806571F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806571F4  40 82 00 0C */	bne lbl_80657200
/* 806571F8  38 00 00 00 */	li r0, 0
/* 806571FC  98 1C 05 A5 */	stb r0, 0x5a5(r28)
lbl_80657200:
/* 80657200  3B 7B 00 01 */	addi r27, r27, 1
/* 80657204  3B DE 00 18 */	addi r30, r30, 0x18
lbl_80657208:
/* 80657208  88 1A 07 81 */	lbz r0, 0x781(r26)
/* 8065720C  7C 1B 00 00 */	cmpw r27, r0
/* 80657210  41 80 FF 4C */	blt lbl_8065715C
/* 80657214  39 61 00 50 */	addi r11, r1, 0x50
/* 80657218  4B D0 B0 01 */	bl _restgpr_25
/* 8065721C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80657220  7C 08 03 A6 */	mtlr r0
/* 80657224  38 21 00 50 */	addi r1, r1, 0x50
/* 80657228  4E 80 00 20 */	blr 
