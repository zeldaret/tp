lbl_8049E0B8:
/* 8049E0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E0BC  7C 08 02 A6 */	mflr r0
/* 8049E0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E0C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8049E0CC  7C 7E 1B 78 */	mr r30, r3
/* 8049E0D0  4B BF F7 B4 */	b getAlinkArcName__9daAlink_cFv
/* 8049E0D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8049E0D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8049E0DC  3C 84 00 02 */	addis r4, r4, 2
/* 8049E0E0  38 A0 00 80 */	li r5, 0x80
/* 8049E0E4  38 84 C2 F8 */	addi r4, r4, -15624
/* 8049E0E8  4B B9 E0 FC */	b getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8049E0EC  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 8049E0F0  38 60 01 18 */	li r3, 0x118
/* 8049E0F4  4B E3 0B 58 */	b __nw__FUl
/* 8049E0F8  7C 60 1B 79 */	or. r0, r3, r3
/* 8049E0FC  41 82 00 0C */	beq lbl_8049E108
/* 8049E100  4B E5 A3 98 */	b __ct__9J2DScreenFv
/* 8049E104  7C 60 1B 78 */	mr r0, r3
lbl_8049E108:
/* 8049E108  90 1E 00 04 */	stw r0, 4(r30)
/* 8049E10C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049E110  28 03 00 00 */	cmplwi r3, 0
/* 8049E114  40 82 00 0C */	bne lbl_8049E120
/* 8049E118  38 60 00 00 */	li r3, 0
/* 8049E11C  48 00 02 38 */	b lbl_8049E354
lbl_8049E120:
/* 8049E120  3C 80 80 4A */	lis r4, stringBase0@ha
/* 8049E124  38 84 29 90 */	addi r4, r4, stringBase0@l
/* 8049E128  3C A0 00 10 */	lis r5, 0x10
/* 8049E12C  7F E6 FB 78 */	mr r6, r31
/* 8049E130  4B E5 A5 18 */	b setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8049E134  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049E138  4B DB 6F B0 */	b dPaneClass_showNullPane__FP9J2DScreen
/* 8049E13C  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E140  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E144  38 63 00 1E */	addi r3, r3, 0x1e
/* 8049E148  7F E4 FB 78 */	mr r4, r31
/* 8049E14C  4B E3 61 24 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E150  4B E6 A9 1C */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E154  90 7E 00 58 */	stw r3, 0x58(r30)
/* 8049E158  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 8049E15C  28 00 00 00 */	cmplwi r0, 0
/* 8049E160  40 82 00 0C */	bne lbl_8049E16C
/* 8049E164  38 60 00 00 */	li r3, 0
/* 8049E168  48 00 01 EC */	b lbl_8049E354
lbl_8049E16C:
/* 8049E16C  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E170  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E174  38 63 00 3C */	addi r3, r3, 0x3c
/* 8049E178  7F E4 FB 78 */	mr r4, r31
/* 8049E17C  4B E3 60 F4 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E180  4B E6 A8 EC */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E184  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 8049E188  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 8049E18C  28 00 00 00 */	cmplwi r0, 0
/* 8049E190  40 82 00 0C */	bne lbl_8049E19C
/* 8049E194  38 60 00 00 */	li r3, 0
/* 8049E198  48 00 01 BC */	b lbl_8049E354
lbl_8049E19C:
/* 8049E19C  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E1A0  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E1A4  38 63 00 5A */	addi r3, r3, 0x5a
/* 8049E1A8  7F E4 FB 78 */	mr r4, r31
/* 8049E1AC  4B E3 60 C4 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E1B0  4B E6 A8 BC */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E1B4  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8049E1B8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8049E1BC  28 00 00 00 */	cmplwi r0, 0
/* 8049E1C0  40 82 00 0C */	bne lbl_8049E1CC
/* 8049E1C4  38 60 00 00 */	li r3, 0
/* 8049E1C8  48 00 01 8C */	b lbl_8049E354
lbl_8049E1CC:
/* 8049E1CC  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E1D0  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E1D4  38 63 00 7B */	addi r3, r3, 0x7b
/* 8049E1D8  7F E4 FB 78 */	mr r4, r31
/* 8049E1DC  4B E3 60 94 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E1E0  4B E6 A8 8C */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E1E4  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8049E1E8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8049E1EC  28 00 00 00 */	cmplwi r0, 0
/* 8049E1F0  40 82 00 0C */	bne lbl_8049E1FC
/* 8049E1F4  38 60 00 00 */	li r3, 0
/* 8049E1F8  48 00 01 5C */	b lbl_8049E354
lbl_8049E1FC:
/* 8049E1FC  38 60 01 18 */	li r3, 0x118
/* 8049E200  4B E3 0A 4C */	b __nw__FUl
/* 8049E204  7C 60 1B 79 */	or. r0, r3, r3
/* 8049E208  41 82 00 0C */	beq lbl_8049E214
/* 8049E20C  4B E5 A2 8C */	b __ct__9J2DScreenFv
/* 8049E210  7C 60 1B 78 */	mr r0, r3
lbl_8049E214:
/* 8049E214  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8049E218  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8049E21C  28 03 00 00 */	cmplwi r3, 0
/* 8049E220  40 82 00 0C */	bne lbl_8049E22C
/* 8049E224  38 60 00 00 */	li r3, 0
/* 8049E228  48 00 01 2C */	b lbl_8049E354
lbl_8049E22C:
/* 8049E22C  3C 80 80 4A */	lis r4, stringBase0@ha
/* 8049E230  38 84 29 90 */	addi r4, r4, stringBase0@l
/* 8049E234  38 84 00 99 */	addi r4, r4, 0x99
/* 8049E238  3C A0 00 10 */	lis r5, 0x10
/* 8049E23C  7F E6 FB 78 */	mr r6, r31
/* 8049E240  4B E5 A4 08 */	b setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8049E244  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8049E248  4B DB 6E A0 */	b dPaneClass_showNullPane__FP9J2DScreen
/* 8049E24C  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E250  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E254  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8049E258  7F E4 FB 78 */	mr r4, r31
/* 8049E25C  4B E3 60 14 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E260  4B E6 A8 0C */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E264  90 7E 00 34 */	stw r3, 0x34(r30)
/* 8049E268  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8049E26C  28 00 00 00 */	cmplwi r0, 0
/* 8049E270  40 82 00 0C */	bne lbl_8049E27C
/* 8049E274  38 60 00 00 */	li r3, 0
/* 8049E278  48 00 00 DC */	b lbl_8049E354
lbl_8049E27C:
/* 8049E27C  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E280  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E284  38 63 00 D2 */	addi r3, r3, 0xd2
/* 8049E288  7F E4 FB 78 */	mr r4, r31
/* 8049E28C  4B E3 5F E4 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E290  4B E6 A7 DC */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E294  90 7E 00 38 */	stw r3, 0x38(r30)
/* 8049E298  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8049E29C  28 00 00 00 */	cmplwi r0, 0
/* 8049E2A0  40 82 00 0C */	bne lbl_8049E2AC
/* 8049E2A4  38 60 00 00 */	li r3, 0
/* 8049E2A8  48 00 00 AC */	b lbl_8049E354
lbl_8049E2AC:
/* 8049E2AC  38 60 01 18 */	li r3, 0x118
/* 8049E2B0  4B E3 09 9C */	b __nw__FUl
/* 8049E2B4  7C 60 1B 79 */	or. r0, r3, r3
/* 8049E2B8  41 82 00 0C */	beq lbl_8049E2C4
/* 8049E2BC  4B E5 A1 DC */	b __ct__9J2DScreenFv
/* 8049E2C0  7C 60 1B 78 */	mr r0, r3
lbl_8049E2C4:
/* 8049E2C4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8049E2C8  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8049E2CC  28 03 00 00 */	cmplwi r3, 0
/* 8049E2D0  40 82 00 0C */	bne lbl_8049E2DC
/* 8049E2D4  38 60 00 00 */	li r3, 0
/* 8049E2D8  48 00 00 7C */	b lbl_8049E354
lbl_8049E2DC:
/* 8049E2DC  3C 80 80 4A */	lis r4, stringBase0@ha
/* 8049E2E0  38 84 29 90 */	addi r4, r4, stringBase0@l
/* 8049E2E4  38 84 00 ED */	addi r4, r4, 0xed
/* 8049E2E8  3C A0 00 10 */	lis r5, 0x10
/* 8049E2EC  7F E6 FB 78 */	mr r6, r31
/* 8049E2F0  4B E5 A3 58 */	b setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8049E2F4  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8049E2F8  4B DB 6D F0 */	b dPaneClass_showNullPane__FP9J2DScreen
/* 8049E2FC  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E300  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E304  38 63 01 0B */	addi r3, r3, 0x10b
/* 8049E308  7F E4 FB 78 */	mr r4, r31
/* 8049E30C  4B E3 5F 64 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E310  4B E6 A7 5C */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E314  90 7E 00 50 */	stw r3, 0x50(r30)
/* 8049E318  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 8049E31C  28 00 00 00 */	cmplwi r0, 0
/* 8049E320  40 82 00 0C */	bne lbl_8049E32C
/* 8049E324  38 60 00 00 */	li r3, 0
/* 8049E328  48 00 00 2C */	b lbl_8049E354
lbl_8049E32C:
/* 8049E32C  3C 60 80 4A */	lis r3, stringBase0@ha
/* 8049E330  38 63 29 90 */	addi r3, r3, stringBase0@l
/* 8049E334  38 63 01 2C */	addi r3, r3, 0x12c
/* 8049E338  7F E4 FB 78 */	mr r4, r31
/* 8049E33C  4B E3 5F 34 */	b getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8049E340  4B E6 A7 2C */	b load__20J2DAnmLoaderDataBaseFPCv
/* 8049E344  90 7E 00 54 */	stw r3, 0x54(r30)
/* 8049E348  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 8049E34C  30 03 FF FF */	addic r0, r3, -1
/* 8049E350  7C 60 19 10 */	subfe r3, r0, r3
lbl_8049E354:
/* 8049E354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E358  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049E35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E360  7C 08 03 A6 */	mtlr r0
/* 8049E364  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E368  4E 80 00 20 */	blr 
