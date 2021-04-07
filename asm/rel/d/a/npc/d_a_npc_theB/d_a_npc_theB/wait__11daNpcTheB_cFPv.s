lbl_80AFEECC:
/* 80AFEECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFEED0  7C 08 02 A6 */	mflr r0
/* 80AFEED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFEED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFEEDC  4B 86 32 FD */	bl _savegpr_28
/* 80AFEEE0  7C 7D 1B 78 */	mr r29, r3
/* 80AFEEE4  3C 60 80 B0 */	lis r3, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFEEE8  3B E3 0D 6C */	addi r31, r3, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFEEEC  A0 1D 0E 02 */	lhz r0, 0xe02(r29)
/* 80AFEEF0  2C 00 00 02 */	cmpwi r0, 2
/* 80AFEEF4  41 82 00 74 */	beq lbl_80AFEF68
/* 80AFEEF8  40 80 05 48 */	bge lbl_80AFF440
/* 80AFEEFC  2C 00 00 00 */	cmpwi r0, 0
/* 80AFEF00  41 82 00 10 */	beq lbl_80AFEF10
/* 80AFEF04  40 80 00 14 */	bge lbl_80AFEF18
/* 80AFEF08  48 00 05 38 */	b lbl_80AFF440
/* 80AFEF0C  48 00 05 34 */	b lbl_80AFF440
lbl_80AFEF10:
/* 80AFEF10  38 00 00 00 */	li r0, 0
/* 80AFEF14  90 1D 09 38 */	stw r0, 0x938(r29)
lbl_80AFEF18:
/* 80AFEF18  7F A3 EB 78 */	mr r3, r29
/* 80AFEF1C  38 80 00 03 */	li r4, 3
/* 80AFEF20  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80AFEF24  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFEF28  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFEF2C  7D 89 03 A6 */	mtctr r12
/* 80AFEF30  4E 80 04 21 */	bctrl 
/* 80AFEF34  7F A3 EB 78 */	mr r3, r29
/* 80AFEF38  38 80 00 00 */	li r4, 0
/* 80AFEF3C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80AFEF40  38 A0 00 00 */	li r5, 0
/* 80AFEF44  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFEF48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFEF4C  7D 89 03 A6 */	mtctr r12
/* 80AFEF50  4E 80 04 21 */	bctrl 
/* 80AFEF54  38 00 00 00 */	li r0, 0
/* 80AFEF58  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80AFEF5C  38 00 00 02 */	li r0, 2
/* 80AFEF60  B0 1D 0E 02 */	sth r0, 0xe02(r29)
/* 80AFEF64  48 00 04 DC */	b lbl_80AFF440
lbl_80AFEF68:
/* 80AFEF68  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFEF6C  4B 65 17 81 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AFEF70  30 03 FF FF */	addic r0, r3, -1
/* 80AFEF74  7F 80 19 10 */	subfe r28, r0, r3
/* 80AFEF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFEF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFEF80  3B C3 09 78 */	addi r30, r3, 0x978
/* 80AFEF84  7F C3 F3 78 */	mr r3, r30
/* 80AFEF88  38 80 00 37 */	li r4, 0x37
/* 80AFEF8C  4B 53 5C 5D */	bl isSwitch__12dSv_danBit_cCFi
/* 80AFEF90  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEF94  40 82 00 98 */	bne lbl_80AFF02C
/* 80AFEF98  7F A3 EB 78 */	mr r3, r29
/* 80AFEF9C  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 80AFEFA0  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80AFEFA4  4B 65 5A 3D */	bl chkFindPlayer2__8daNpcF_cFis
/* 80AFEFA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEFAC  41 82 00 48 */	beq lbl_80AFEFF4
/* 80AFEFB0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80AFEFB4  40 82 00 20 */	bne lbl_80AFEFD4
/* 80AFEFB8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFEFBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFEFC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFEFC4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AFEFC8  4B 65 16 F5 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AFEFCC  38 00 00 00 */	li r0, 0
/* 80AFEFD0  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80AFEFD4:
/* 80AFEFD4  A8 1D 0E 00 */	lha r0, 0xe00(r29)
/* 80AFEFD8  2C 00 00 01 */	cmpwi r0, 1
/* 80AFEFDC  41 82 00 0C */	beq lbl_80AFEFE8
/* 80AFEFE0  38 00 00 01 */	li r0, 1
/* 80AFEFE4  B0 1D 0E 00 */	sth r0, 0xe00(r29)
lbl_80AFEFE8:
/* 80AFEFE8  38 00 00 00 */	li r0, 0
/* 80AFEFEC  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AFEFF0  48 00 00 30 */	b lbl_80AFF020
lbl_80AFEFF4:
/* 80AFEFF4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80AFEFF8  41 82 00 14 */	beq lbl_80AFF00C
/* 80AFEFFC  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFF000  4B 65 16 E1 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80AFF004  38 00 00 00 */	li r0, 0
/* 80AFF008  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80AFF00C:
/* 80AFF00C  A8 1D 0E 00 */	lha r0, 0xe00(r29)
/* 80AFF010  2C 00 00 00 */	cmpwi r0, 0
/* 80AFF014  41 82 00 0C */	beq lbl_80AFF020
/* 80AFF018  38 00 00 00 */	li r0, 0
/* 80AFF01C  B0 1D 0E 00 */	sth r0, 0xe00(r29)
lbl_80AFF020:
/* 80AFF020  38 00 00 00 */	li r0, 0
/* 80AFF024  98 1D 0E 11 */	stb r0, 0xe11(r29)
/* 80AFF028  48 00 00 6C */	b lbl_80AFF094
lbl_80AFF02C:
/* 80AFF02C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80AFF030  41 82 00 14 */	beq lbl_80AFF044
/* 80AFF034  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFF038  4B 65 16 A9 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80AFF03C  38 00 00 00 */	li r0, 0
/* 80AFF040  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80AFF044:
/* 80AFF044  A8 1D 0E 00 */	lha r0, 0xe00(r29)
/* 80AFF048  2C 00 00 00 */	cmpwi r0, 0
/* 80AFF04C  41 82 00 0C */	beq lbl_80AFF058
/* 80AFF050  38 00 00 00 */	li r0, 0
/* 80AFF054  B0 1D 0E 00 */	sth r0, 0xe00(r29)
lbl_80AFF058:
/* 80AFF058  88 1D 0E 11 */	lbz r0, 0xe11(r29)
/* 80AFF05C  28 00 00 00 */	cmplwi r0, 0
/* 80AFF060  40 82 00 2C */	bne lbl_80AFF08C
/* 80AFF064  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050105@ha */
/* 80AFF068  38 03 01 05 */	addi r0, r3, 0x0105 /* 0x00050105@l */
/* 80AFF06C  90 01 00 08 */	stw r0, 8(r1)
/* 80AFF070  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80AFF074  38 81 00 08 */	addi r4, r1, 8
/* 80AFF078  38 A0 FF FF */	li r5, -1
/* 80AFF07C  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80AFF080  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AFF084  7D 89 03 A6 */	mtctr r12
/* 80AFF088  4E 80 04 21 */	bctrl 
lbl_80AFF08C:
/* 80AFF08C  38 00 00 01 */	li r0, 1
/* 80AFF090  98 1D 0E 11 */	stb r0, 0xe11(r29)
lbl_80AFF094:
/* 80AFF094  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFF098  83 83 00 08 */	lwz r28, 8(r3)
/* 80AFF09C  7F A3 EB 78 */	mr r3, r29
/* 80AFF0A0  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFF0A4  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFF0A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFF0AC  3C A0 80 B0 */	lis r5, l_bckGetParamList@ha /* 0x80B0104C@ha */
/* 80AFF0B0  38 A5 10 4C */	addi r5, r5, l_bckGetParamList@l /* 0x80B0104C@l */
/* 80AFF0B4  80 A5 00 40 */	lwz r5, 0x40(r5)
/* 80AFF0B8  4B 65 3A 75 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFF0BC  7C 1C 18 40 */	cmplw r28, r3
/* 80AFF0C0  41 82 00 34 */	beq lbl_80AFF0F4
/* 80AFF0C4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFF0C8  83 83 00 08 */	lwz r28, 8(r3)
/* 80AFF0CC  7F A3 EB 78 */	mr r3, r29
/* 80AFF0D0  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFF0D4  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFF0D8  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFF0DC  3C A0 80 B0 */	lis r5, l_bckGetParamList@ha /* 0x80B0104C@ha */
/* 80AFF0E0  38 A5 10 4C */	addi r5, r5, l_bckGetParamList@l /* 0x80B0104C@l */
/* 80AFF0E4  80 A5 00 50 */	lwz r5, 0x50(r5)
/* 80AFF0E8  4B 65 3A 45 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFF0EC  7C 1C 18 40 */	cmplw r28, r3
/* 80AFF0F0  40 82 00 C0 */	bne lbl_80AFF1B0
lbl_80AFF0F4:
/* 80AFF0F4  7F C3 F3 78 */	mr r3, r30
/* 80AFF0F8  38 80 00 37 */	li r4, 0x37
/* 80AFF0FC  4B 53 5A ED */	bl isSwitch__12dSv_danBit_cCFi
/* 80AFF100  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF104  41 82 00 2C */	beq lbl_80AFF130
/* 80AFF108  7F A3 EB 78 */	mr r3, r29
/* 80AFF10C  38 80 00 05 */	li r4, 5
/* 80AFF110  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF114  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF118  38 A0 00 00 */	li r5, 0
/* 80AFF11C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF120  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF124  7D 89 03 A6 */	mtctr r12
/* 80AFF128  4E 80 04 21 */	bctrl 
/* 80AFF12C  48 00 03 14 */	b lbl_80AFF440
lbl_80AFF130:
/* 80AFF130  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFF134  4B 52 22 25 */	bl fpcEx_SearchByID__FUi
/* 80AFF138  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFF13C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFF140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFF144  40 81 00 44 */	ble lbl_80AFF188
/* 80AFF148  80 7D 0D FC */	lwz r3, 0xdfc(r29)
/* 80AFF14C  38 03 FF FF */	addi r0, r3, -1
/* 80AFF150  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 80AFF154  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF158  41 81 02 E8 */	bgt lbl_80AFF440
/* 80AFF15C  7F A3 EB 78 */	mr r3, r29
/* 80AFF160  38 80 00 03 */	li r4, 3
/* 80AFF164  C0 3F 02 20 */	lfs f1, 0x220(r31)
/* 80AFF168  38 A0 00 01 */	li r5, 1
/* 80AFF16C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF170  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF174  7D 89 03 A6 */	mtctr r12
/* 80AFF178  4E 80 04 21 */	bctrl 
/* 80AFF17C  38 00 00 C8 */	li r0, 0xc8
/* 80AFF180  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 80AFF184  48 00 02 BC */	b lbl_80AFF440
lbl_80AFF188:
/* 80AFF188  7F A3 EB 78 */	mr r3, r29
/* 80AFF18C  38 80 00 00 */	li r4, 0
/* 80AFF190  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF194  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF198  38 A0 00 00 */	li r5, 0
/* 80AFF19C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF1A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF1A4  7D 89 03 A6 */	mtctr r12
/* 80AFF1A8  4E 80 04 21 */	bctrl 
/* 80AFF1AC  48 00 02 94 */	b lbl_80AFF440
lbl_80AFF1B0:
/* 80AFF1B0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFF1B4  83 83 00 08 */	lwz r28, 8(r3)
/* 80AFF1B8  7F A3 EB 78 */	mr r3, r29
/* 80AFF1BC  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFF1C0  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFF1C4  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFF1C8  3C A0 80 B0 */	lis r5, l_bckGetParamList@ha /* 0x80B0104C@ha */
/* 80AFF1CC  38 A5 10 4C */	addi r5, r5, l_bckGetParamList@l /* 0x80B0104C@l */
/* 80AFF1D0  80 A5 00 48 */	lwz r5, 0x48(r5)
/* 80AFF1D4  4B 65 39 59 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFF1D8  7C 1C 18 40 */	cmplw r28, r3
/* 80AFF1DC  41 82 00 34 */	beq lbl_80AFF210
/* 80AFF1E0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFF1E4  83 83 00 08 */	lwz r28, 8(r3)
/* 80AFF1E8  7F A3 EB 78 */	mr r3, r29
/* 80AFF1EC  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFF1F0  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFF1F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFF1F8  3C A0 80 B0 */	lis r5, l_bckGetParamList@ha /* 0x80B0104C@ha */
/* 80AFF1FC  38 A5 10 4C */	addi r5, r5, l_bckGetParamList@l /* 0x80B0104C@l */
/* 80AFF200  80 A5 00 58 */	lwz r5, 0x58(r5)
/* 80AFF204  4B 65 39 29 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFF208  7C 1C 18 40 */	cmplw r28, r3
/* 80AFF20C  40 82 00 C0 */	bne lbl_80AFF2CC
lbl_80AFF210:
/* 80AFF210  7F C3 F3 78 */	mr r3, r30
/* 80AFF214  38 80 00 37 */	li r4, 0x37
/* 80AFF218  4B 53 59 D1 */	bl isSwitch__12dSv_danBit_cCFi
/* 80AFF21C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF220  41 82 00 2C */	beq lbl_80AFF24C
/* 80AFF224  7F A3 EB 78 */	mr r3, r29
/* 80AFF228  38 80 00 05 */	li r4, 5
/* 80AFF22C  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF230  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF234  38 A0 00 00 */	li r5, 0
/* 80AFF238  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF23C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF240  7D 89 03 A6 */	mtctr r12
/* 80AFF244  4E 80 04 21 */	bctrl 
/* 80AFF248  48 00 01 F8 */	b lbl_80AFF440
lbl_80AFF24C:
/* 80AFF24C  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFF250  4B 52 21 09 */	bl fpcEx_SearchByID__FUi
/* 80AFF254  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFF258  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFF25C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFF260  40 81 00 44 */	ble lbl_80AFF2A4
/* 80AFF264  80 7D 0D FC */	lwz r3, 0xdfc(r29)
/* 80AFF268  38 03 FF FF */	addi r0, r3, -1
/* 80AFF26C  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 80AFF270  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF274  41 81 01 CC */	bgt lbl_80AFF440
/* 80AFF278  7F A3 EB 78 */	mr r3, r29
/* 80AFF27C  38 80 00 04 */	li r4, 4
/* 80AFF280  C0 3F 02 20 */	lfs f1, 0x220(r31)
/* 80AFF284  38 A0 00 01 */	li r5, 1
/* 80AFF288  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF28C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF290  7D 89 03 A6 */	mtctr r12
/* 80AFF294  4E 80 04 21 */	bctrl 
/* 80AFF298  38 00 00 96 */	li r0, 0x96
/* 80AFF29C  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 80AFF2A0  48 00 01 A0 */	b lbl_80AFF440
lbl_80AFF2A4:
/* 80AFF2A4  7F A3 EB 78 */	mr r3, r29
/* 80AFF2A8  38 80 00 00 */	li r4, 0
/* 80AFF2AC  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF2B0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF2B4  38 A0 00 00 */	li r5, 0
/* 80AFF2B8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF2BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF2C0  7D 89 03 A6 */	mtctr r12
/* 80AFF2C4  4E 80 04 21 */	bctrl 
/* 80AFF2C8  48 00 01 78 */	b lbl_80AFF440
lbl_80AFF2CC:
/* 80AFF2CC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFF2D0  83 83 00 08 */	lwz r28, 8(r3)
/* 80AFF2D4  7F A3 EB 78 */	mr r3, r29
/* 80AFF2D8  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFF2DC  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFF2E0  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFF2E4  3C A0 80 B0 */	lis r5, l_bckGetParamList@ha /* 0x80B0104C@ha */
/* 80AFF2E8  38 A5 10 4C */	addi r5, r5, l_bckGetParamList@l /* 0x80B0104C@l */
/* 80AFF2EC  80 A5 00 60 */	lwz r5, 0x60(r5)
/* 80AFF2F0  4B 65 38 3D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFF2F4  7C 1C 18 40 */	cmplw r28, r3
/* 80AFF2F8  41 82 00 34 */	beq lbl_80AFF32C
/* 80AFF2FC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFF300  83 83 00 08 */	lwz r28, 8(r3)
/* 80AFF304  7F A3 EB 78 */	mr r3, r29
/* 80AFF308  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFF30C  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFF310  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFF314  3C A0 80 B0 */	lis r5, l_bckGetParamList@ha /* 0x80B0104C@ha */
/* 80AFF318  38 A5 10 4C */	addi r5, r5, l_bckGetParamList@l /* 0x80B0104C@l */
/* 80AFF31C  80 A5 00 68 */	lwz r5, 0x68(r5)
/* 80AFF320  4B 65 38 0D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFF324  7C 1C 18 40 */	cmplw r28, r3
/* 80AFF328  40 82 01 18 */	bne lbl_80AFF440
lbl_80AFF32C:
/* 80AFF32C  7F C3 F3 78 */	mr r3, r30
/* 80AFF330  38 80 00 37 */	li r4, 0x37
/* 80AFF334  4B 53 58 B5 */	bl isSwitch__12dSv_danBit_cCFi
/* 80AFF338  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF33C  40 82 00 AC */	bne lbl_80AFF3E8
/* 80AFF340  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFF344  4B 52 20 15 */	bl fpcEx_SearchByID__FUi
/* 80AFF348  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFF34C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFF350  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AFF354  40 82 00 2C */	bne lbl_80AFF380
/* 80AFF358  7F A3 EB 78 */	mr r3, r29
/* 80AFF35C  38 80 00 00 */	li r4, 0
/* 80AFF360  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF364  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF368  38 A0 00 00 */	li r5, 0
/* 80AFF36C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF370  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF374  7D 89 03 A6 */	mtctr r12
/* 80AFF378  4E 80 04 21 */	bctrl 
/* 80AFF37C  48 00 00 C4 */	b lbl_80AFF440
lbl_80AFF380:
/* 80AFF380  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFF384  4B 52 1F D5 */	bl fpcEx_SearchByID__FUi
/* 80AFF388  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFF38C  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80AFF390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFF394  40 80 00 2C */	bge lbl_80AFF3C0
/* 80AFF398  7F A3 EB 78 */	mr r3, r29
/* 80AFF39C  38 80 00 03 */	li r4, 3
/* 80AFF3A0  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF3A4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF3A8  38 A0 00 00 */	li r5, 0
/* 80AFF3AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF3B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF3B4  7D 89 03 A6 */	mtctr r12
/* 80AFF3B8  4E 80 04 21 */	bctrl 
/* 80AFF3BC  48 00 00 84 */	b lbl_80AFF440
lbl_80AFF3C0:
/* 80AFF3C0  7F A3 EB 78 */	mr r3, r29
/* 80AFF3C4  38 80 00 04 */	li r4, 4
/* 80AFF3C8  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF3CC  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF3D0  38 A0 00 00 */	li r5, 0
/* 80AFF3D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF3D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF3DC  7D 89 03 A6 */	mtctr r12
/* 80AFF3E0  4E 80 04 21 */	bctrl 
/* 80AFF3E4  48 00 00 5C */	b lbl_80AFF440
lbl_80AFF3E8:
/* 80AFF3E8  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFF3EC  4B 52 1F 6D */	bl fpcEx_SearchByID__FUi
/* 80AFF3F0  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFF3F4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFF3F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFF3FC  40 81 00 44 */	ble lbl_80AFF440
/* 80AFF400  80 7D 0D FC */	lwz r3, 0xdfc(r29)
/* 80AFF404  38 03 FF FF */	addi r0, r3, -1
/* 80AFF408  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 80AFF40C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF410  41 81 00 30 */	bgt lbl_80AFF440
/* 80AFF414  7F A3 EB 78 */	mr r3, r29
/* 80AFF418  38 80 00 05 */	li r4, 5
/* 80AFF41C  38 BF 00 00 */	addi r5, r31, 0
/* 80AFF420  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFF424  38 A0 00 01 */	li r5, 1
/* 80AFF428  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFF42C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF430  7D 89 03 A6 */	mtctr r12
/* 80AFF434  4E 80 04 21 */	bctrl 
/* 80AFF438  38 00 00 64 */	li r0, 0x64
/* 80AFF43C  90 1D 0D FC */	stw r0, 0xdfc(r29)
lbl_80AFF440:
/* 80AFF440  38 60 00 01 */	li r3, 1
/* 80AFF444  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFF448  4B 86 2D DD */	bl _restgpr_28
/* 80AFF44C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFF450  7C 08 03 A6 */	mtlr r0
/* 80AFF454  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFF458  4E 80 00 20 */	blr 
