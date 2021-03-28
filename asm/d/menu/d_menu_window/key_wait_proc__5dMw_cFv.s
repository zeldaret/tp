lbl_801FAA48:
/* 801FAA48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FAA4C  7C 08 02 A6 */	mflr r0
/* 801FAA50  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FAA54  39 61 00 20 */	addi r11, r1, 0x20
/* 801FAA58  48 16 77 85 */	bl _savegpr_29
/* 801FAA5C  7C 7D 1B 78 */	mr r29, r3
/* 801FAA60  88 03 01 4B */	lbz r0, 0x14b(r3)
/* 801FAA64  28 00 00 00 */	cmplwi r0, 0
/* 801FAA68  41 82 00 78 */	beq lbl_801FAAE0
/* 801FAA6C  2C 00 00 03 */	cmpwi r0, 3
/* 801FAA70  41 82 00 3C */	beq lbl_801FAAAC
/* 801FAA74  40 80 00 14 */	bge lbl_801FAA88
/* 801FAA78  2C 00 00 01 */	cmpwi r0, 1
/* 801FAA7C  41 82 00 18 */	beq lbl_801FAA94
/* 801FAA80  40 80 00 20 */	bge lbl_801FAAA0
/* 801FAA84  48 00 00 40 */	b lbl_801FAAC4
lbl_801FAA88:
/* 801FAA88  2C 00 00 05 */	cmpwi r0, 5
/* 801FAA8C  40 80 00 38 */	bge lbl_801FAAC4
/* 801FAA90  48 00 00 28 */	b lbl_801FAAB8
lbl_801FAA94:
/* 801FAA94  38 80 00 02 */	li r4, 2
/* 801FAA98  48 00 13 FD */	bl dMw_ring_create__5dMw_cFUc
/* 801FAA9C  48 00 00 34 */	b lbl_801FAAD0
lbl_801FAAA0:
/* 801FAAA0  38 80 00 00 */	li r4, 0
/* 801FAAA4  48 00 13 F1 */	bl dMw_ring_create__5dMw_cFUc
/* 801FAAA8  48 00 00 28 */	b lbl_801FAAD0
lbl_801FAAAC:
/* 801FAAAC  38 80 00 03 */	li r4, 3
/* 801FAAB0  48 00 13 E5 */	bl dMw_ring_create__5dMw_cFUc
/* 801FAAB4  48 00 00 1C */	b lbl_801FAAD0
lbl_801FAAB8:
/* 801FAAB8  38 80 00 01 */	li r4, 1
/* 801FAABC  48 00 13 D9 */	bl dMw_ring_create__5dMw_cFUc
/* 801FAAC0  48 00 00 10 */	b lbl_801FAAD0
lbl_801FAAC4:
/* 801FAAC4  7F A3 EB 78 */	mr r3, r29
/* 801FAAC8  38 80 00 FF */	li r4, 0xff
/* 801FAACC  48 00 13 C9 */	bl dMw_ring_create__5dMw_cFUc
lbl_801FAAD0:
/* 801FAAD0  38 00 00 01 */	li r0, 1
/* 801FAAD4  98 1D 01 46 */	stb r0, 0x146(r29)
/* 801FAAD8  38 00 00 00 */	li r0, 0
/* 801FAADC  98 1D 01 4B */	stb r0, 0x14b(r29)
lbl_801FAAE0:
/* 801FAAE0  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FAAE4  80 03 00 04 */	lwz r0, 4(r3)
/* 801FAAE8  2C 00 00 01 */	cmpwi r0, 1
/* 801FAAEC  40 82 04 D8 */	bne lbl_801FAFC4
/* 801FAAF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FAAF4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 801FAAF8  88 1E 5E 8F */	lbz r0, 0x5e8f(r30)
/* 801FAAFC  28 00 00 00 */	cmplwi r0, 0
/* 801FAB00  41 82 00 0C */	beq lbl_801FAB0C
/* 801FAB04  28 00 00 05 */	cmplwi r0, 5
/* 801FAB08  40 82 04 BC */	bne lbl_801FAFC4
lbl_801FAB0C:
/* 801FAB0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FAB10  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 801FAB14  88 1F 5E 1A */	lbz r0, 0x5e1a(r31)
/* 801FAB18  28 00 00 00 */	cmplwi r0, 0
/* 801FAB1C  40 82 04 A8 */	bne lbl_801FAFC4
/* 801FAB20  4B F8 6B 21 */	bl dCam_getBody__Fv
/* 801FAB24  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 801FAB28  2C 00 00 07 */	cmpwi r0, 7
/* 801FAB2C  41 82 04 98 */	beq lbl_801FAFC4
/* 801FAB30  4B F8 6B 11 */	bl dCam_getBody__Fv
/* 801FAB34  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 801FAB38  2C 00 00 08 */	cmpwi r0, 8
/* 801FAB3C  41 82 04 88 */	beq lbl_801FAFC4
/* 801FAB40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FAB44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FAB48  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 801FAB4C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801FAB50  40 82 04 74 */	bne lbl_801FAFC4
/* 801FAB54  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 801FAB58  28 00 00 00 */	cmplwi r0, 0
/* 801FAB5C  40 82 04 68 */	bne lbl_801FAFC4
/* 801FAB60  88 1D 01 54 */	lbz r0, 0x154(r29)
/* 801FAB64  28 00 00 00 */	cmplwi r0, 0
/* 801FAB68  41 82 04 5C */	beq lbl_801FAFC4
/* 801FAB6C  7F A3 EB 78 */	mr r3, r29
/* 801FAB70  48 00 22 69 */	bl isPauseReady__5dMw_cFv
/* 801FAB74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FAB78  41 82 04 4C */	beq lbl_801FAFC4
/* 801FAB7C  4B E2 3A 2D */	bl fopOvlpM_IsDoingReq__Fv
/* 801FAB80  2C 03 00 00 */	cmpwi r3, 0
/* 801FAB84  40 82 04 40 */	bne lbl_801FAFC4
/* 801FAB88  88 0D 86 66 */	lbz r0, struct_80450BE4+0x2(r13)
/* 801FAB8C  28 00 00 00 */	cmplwi r0, 0
/* 801FAB90  40 82 04 34 */	bne lbl_801FAFC4
/* 801FAB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FAB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FAB9C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801FABA0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801FABA4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 801FABA8  7D 89 03 A6 */	mtctr r12
/* 801FABAC  4E 80 04 21 */	bctrl 
/* 801FABB0  2C 03 00 00 */	cmpwi r3, 0
/* 801FABB4  40 82 04 10 */	bne lbl_801FAFC4
/* 801FABB8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801FABBC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801FABC0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801FABC4  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801FABC8  40 82 00 0C */	bne lbl_801FABD4
/* 801FABCC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801FABD0  41 82 00 18 */	beq lbl_801FABE8
lbl_801FABD4:
/* 801FABD4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FABD8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FABDC  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 801FABE0  28 00 00 04 */	cmplwi r0, 4
/* 801FABE4  40 82 03 E0 */	bne lbl_801FAFC4
lbl_801FABE8:
/* 801FABE8  7F A3 EB 78 */	mr r3, r29
/* 801FABEC  48 00 23 99 */	bl isEventCheck__5dMw_cFv
/* 801FABF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FABF4  40 82 03 D0 */	bne lbl_801FAFC4
/* 801FABF8  88 1F 5E 1A */	lbz r0, 0x5e1a(r31)
/* 801FABFC  28 00 00 00 */	cmplwi r0, 0
/* 801FAC00  40 82 03 C4 */	bne lbl_801FAFC4
/* 801FAC04  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAC08  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 801FAC0C  88 1F 00 C1 */	lbz r0, 0xc1(r31)
/* 801FAC10  28 00 00 08 */	cmplwi r0, 8
/* 801FAC14  40 82 00 40 */	bne lbl_801FAC54
/* 801FAC18  48 03 CD 95 */	bl setKillMessageFlag__12dMsgObject_cFv
/* 801FAC1C  88 1E 5E 8F */	lbz r0, 0x5e8f(r30)
/* 801FAC20  28 00 00 05 */	cmplwi r0, 5
/* 801FAC24  40 82 00 14 */	bne lbl_801FAC38
/* 801FAC28  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAC2C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAC30  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801FAC34  48 02 4A B9 */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_801FAC38:
/* 801FAC38  38 60 00 01 */	li r3, 1
/* 801FAC3C  4B E3 34 A5 */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FAC40  38 00 00 1F */	li r0, 0x1f
/* 801FAC44  98 1D 01 46 */	stb r0, 0x146(r29)
/* 801FAC48  38 00 00 00 */	li r0, 0
/* 801FAC4C  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 801FAC50  48 00 03 74 */	b lbl_801FAFC4
lbl_801FAC54:
/* 801FAC54  4B FF F4 25 */	bl dMw_START_TRIGGER__Fv
/* 801FAC58  2C 03 00 00 */	cmpwi r3, 0
/* 801FAC5C  41 82 00 88 */	beq lbl_801FACE4
/* 801FAC60  4B FF F3 DD */	bl dMw_A_TRIGGER__Fv
/* 801FAC64  2C 03 00 00 */	cmpwi r3, 0
/* 801FAC68  40 82 00 7C */	bne lbl_801FACE4
/* 801FAC6C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAC70  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAC74  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 801FAC78  28 00 00 00 */	cmplwi r0, 0
/* 801FAC7C  41 82 00 0C */	beq lbl_801FAC88
/* 801FAC80  28 00 00 01 */	cmplwi r0, 1
/* 801FAC84  40 82 00 60 */	bne lbl_801FACE4
lbl_801FAC88:
/* 801FAC88  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAC8C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAC90  A0 03 00 B4 */	lhz r0, 0xb4(r3)
/* 801FAC94  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801FAC98  41 82 00 4C */	beq lbl_801FACE4
/* 801FAC9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FACA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FACA4  88 03 4E 1C */	lbz r0, 0x4e1c(r3)
/* 801FACA8  7C 00 07 75 */	extsb. r0, r0
/* 801FACAC  40 82 00 38 */	bne lbl_801FACE4
/* 801FACB0  48 03 CC FD */	bl setKillMessageFlag__12dMsgObject_cFv
/* 801FACB4  88 1E 5E 8F */	lbz r0, 0x5e8f(r30)
/* 801FACB8  28 00 00 05 */	cmplwi r0, 5
/* 801FACBC  40 82 00 14 */	bne lbl_801FACD0
/* 801FACC0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FACC4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FACC8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801FACCC  48 02 4A 21 */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_801FACD0:
/* 801FACD0  38 60 00 01 */	li r3, 1
/* 801FACD4  4B E3 34 0D */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FACD8  38 00 00 04 */	li r0, 4
/* 801FACDC  98 1D 01 46 */	stb r0, 0x146(r29)
/* 801FACE0  48 00 02 E4 */	b lbl_801FAFC4
lbl_801FACE4:
/* 801FACE4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FACE8  3B E3 01 88 */	addi r31, r3, g_meter2_info@l
/* 801FACEC  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 801FACF0  28 00 00 02 */	cmplwi r0, 2
/* 801FACF4  41 82 00 50 */	beq lbl_801FAD44
/* 801FACF8  28 00 00 03 */	cmplwi r0, 3
/* 801FACFC  41 82 00 48 */	beq lbl_801FAD44
/* 801FAD00  28 00 00 04 */	cmplwi r0, 4
/* 801FAD04  41 82 00 40 */	beq lbl_801FAD44
/* 801FAD08  28 00 00 05 */	cmplwi r0, 5
/* 801FAD0C  41 82 00 38 */	beq lbl_801FAD44
/* 801FAD10  28 00 00 07 */	cmplwi r0, 7
/* 801FAD14  41 82 00 30 */	beq lbl_801FAD44
/* 801FAD18  28 00 00 08 */	cmplwi r0, 8
/* 801FAD1C  41 82 00 28 */	beq lbl_801FAD44
/* 801FAD20  28 00 00 09 */	cmplwi r0, 9
/* 801FAD24  41 82 00 20 */	beq lbl_801FAD44
/* 801FAD28  28 00 00 06 */	cmplwi r0, 6
/* 801FAD2C  41 82 00 18 */	beq lbl_801FAD44
/* 801FAD30  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801FAD34  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801FAD38  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801FAD3C  28 00 00 00 */	cmplwi r0, 0
/* 801FAD40  41 82 01 7C */	beq lbl_801FAEBC
lbl_801FAD44:
/* 801FAD44  48 03 CC 69 */	bl setKillMessageFlag__12dMsgObject_cFv
/* 801FAD48  88 1E 5E 8F */	lbz r0, 0x5e8f(r30)
/* 801FAD4C  28 00 00 05 */	cmplwi r0, 5
/* 801FAD50  40 82 00 14 */	bne lbl_801FAD64
/* 801FAD54  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAD58  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAD5C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801FAD60  48 02 49 8D */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_801FAD64:
/* 801FAD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FAD68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FAD6C  3B C3 4E 20 */	addi r30, r3, 0x4e20
/* 801FAD70  7F C3 F3 78 */	mr r3, r30
/* 801FAD74  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAD78  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801FAD7C  7D 89 03 A6 */	mtctr r12
/* 801FAD80  4E 80 04 21 */	bctrl 
/* 801FAD84  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801FAD88  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 801FAD8C  41 82 00 C8 */	beq lbl_801FAE54
/* 801FAD90  7F C3 F3 78 */	mr r3, r30
/* 801FAD94  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAD98  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801FAD9C  7D 89 03 A6 */	mtctr r12
/* 801FADA0  4E 80 04 21 */	bctrl 
/* 801FADA4  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801FADA8  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801FADAC  2C 00 00 05 */	cmpwi r0, 5
/* 801FADB0  41 82 00 A4 */	beq lbl_801FAE54
/* 801FADB4  7F C3 F3 78 */	mr r3, r30
/* 801FADB8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FADBC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801FADC0  7D 89 03 A6 */	mtctr r12
/* 801FADC4  4E 80 04 21 */	bctrl 
/* 801FADC8  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801FADCC  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801FADD0  2C 00 00 03 */	cmpwi r0, 3
/* 801FADD4  41 82 00 80 */	beq lbl_801FAE54
/* 801FADD8  7F C3 F3 78 */	mr r3, r30
/* 801FADDC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FADE0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801FADE4  7D 89 03 A6 */	mtctr r12
/* 801FADE8  4E 80 04 21 */	bctrl 
/* 801FADEC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801FADF0  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801FADF4  2C 00 00 04 */	cmpwi r0, 4
/* 801FADF8  41 82 00 5C */	beq lbl_801FAE54
/* 801FADFC  7F C3 F3 78 */	mr r3, r30
/* 801FAE00  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAE04  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801FAE08  7D 89 03 A6 */	mtctr r12
/* 801FAE0C  4E 80 04 21 */	bctrl 
/* 801FAE10  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801FAE14  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801FAE18  2C 00 00 06 */	cmpwi r0, 6
/* 801FAE1C  41 82 00 38 */	beq lbl_801FAE54
/* 801FAE20  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 801FAE24  28 00 00 03 */	cmplwi r0, 3
/* 801FAE28  41 82 00 2C */	beq lbl_801FAE54
/* 801FAE2C  28 00 00 04 */	cmplwi r0, 4
/* 801FAE30  41 82 00 24 */	beq lbl_801FAE54
/* 801FAE34  28 00 00 05 */	cmplwi r0, 5
/* 801FAE38  41 82 00 1C */	beq lbl_801FAE54
/* 801FAE3C  28 00 00 07 */	cmplwi r0, 7
/* 801FAE40  41 82 00 14 */	beq lbl_801FAE54
/* 801FAE44  28 00 00 08 */	cmplwi r0, 8
/* 801FAE48  41 82 00 0C */	beq lbl_801FAE54
/* 801FAE4C  28 00 00 09 */	cmplwi r0, 9
/* 801FAE50  40 82 00 20 */	bne lbl_801FAE70
lbl_801FAE54:
/* 801FAE54  38 60 00 02 */	li r3, 2
/* 801FAE58  4B E3 32 89 */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FAE5C  38 00 00 07 */	li r0, 7
/* 801FAE60  98 1D 01 46 */	stb r0, 0x146(r29)
/* 801FAE64  7F A3 EB 78 */	mr r3, r29
/* 801FAE68  48 00 12 95 */	bl dMw_fmap_create__5dMw_cFv
/* 801FAE6C  48 00 01 58 */	b lbl_801FAFC4
lbl_801FAE70:
/* 801FAE70  7F C3 F3 78 */	mr r3, r30
/* 801FAE74  81 9E 00 00 */	lwz r12, 0(r30)
/* 801FAE78  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801FAE7C  7D 89 03 A6 */	mtctr r12
/* 801FAE80  4E 80 04 21 */	bctrl 
/* 801FAE84  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801FAE88  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801FAE8C  2C 00 00 01 */	cmpwi r0, 1
/* 801FAE90  41 82 00 10 */	beq lbl_801FAEA0
/* 801FAE94  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 801FAE98  28 00 00 06 */	cmplwi r0, 6
/* 801FAE9C  40 82 01 28 */	bne lbl_801FAFC4
lbl_801FAEA0:
/* 801FAEA0  38 60 00 03 */	li r3, 3
/* 801FAEA4  4B E3 32 3D */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FAEA8  38 00 00 0A */	li r0, 0xa
/* 801FAEAC  98 1D 01 46 */	stb r0, 0x146(r29)
/* 801FAEB0  7F A3 EB 78 */	mr r3, r29
/* 801FAEB4  48 00 14 9D */	bl dMw_dmap_create__5dMw_cFv
/* 801FAEB8  48 00 01 0C */	b lbl_801FAFC4
lbl_801FAEBC:
/* 801FAEBC  4B FF F0 C9 */	bl dMw_UP_TRIGGER__Fv
/* 801FAEC0  2C 03 00 00 */	cmpwi r3, 0
/* 801FAEC4  40 82 00 10 */	bne lbl_801FAED4
/* 801FAEC8  4B FF F0 D1 */	bl dMw_DOWN_TRIGGER__Fv
/* 801FAECC  2C 03 00 00 */	cmpwi r3, 0
/* 801FAED0  41 82 00 1C */	beq lbl_801FAEEC
lbl_801FAED4:
/* 801FAED4  4B FF F0 D9 */	bl dMw_LEFT_TRIGGER__Fv
/* 801FAED8  2C 03 00 00 */	cmpwi r3, 0
/* 801FAEDC  40 82 00 10 */	bne lbl_801FAEEC
/* 801FAEE0  4B FF F1 15 */	bl dMw_RIGHT_TRIGGER__Fv
/* 801FAEE4  2C 03 00 00 */	cmpwi r3, 0
/* 801FAEE8  41 82 00 24 */	beq lbl_801FAF0C
lbl_801FAEEC:
/* 801FAEEC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAEF0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAEF4  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 801FAEF8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801FAEFC  40 82 00 10 */	bne lbl_801FAF0C
/* 801FAF00  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801FAF04  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801FAF08  41 82 00 BC */	beq lbl_801FAFC4
lbl_801FAF0C:
/* 801FAF0C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAF10  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAF14  A0 03 00 B4 */	lhz r0, 0xb4(r3)
/* 801FAF18  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801FAF1C  41 82 00 A8 */	beq lbl_801FAFC4
/* 801FAF20  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 801FAF24  28 00 00 00 */	cmplwi r0, 0
/* 801FAF28  41 82 00 0C */	beq lbl_801FAF34
/* 801FAF2C  28 00 00 01 */	cmplwi r0, 1
/* 801FAF30  40 82 00 94 */	bne lbl_801FAFC4
lbl_801FAF34:
/* 801FAF34  48 02 37 55 */	bl dMeter2Info_isItemOpenCheck__Fv
/* 801FAF38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FAF3C  41 82 00 88 */	beq lbl_801FAFC4
/* 801FAF40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FAF44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FAF48  88 03 4E 1C */	lbz r0, 0x4e1c(r3)
/* 801FAF4C  7C 00 07 75 */	extsb. r0, r0
/* 801FAF50  40 82 00 74 */	bne lbl_801FAFC4
/* 801FAF54  48 03 CA 59 */	bl setKillMessageFlag__12dMsgObject_cFv
/* 801FAF58  88 1E 5E 8F */	lbz r0, 0x5e8f(r30)
/* 801FAF5C  28 00 00 05 */	cmplwi r0, 5
/* 801FAF60  40 82 00 14 */	bne lbl_801FAF74
/* 801FAF64  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FAF68  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FAF6C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801FAF70  48 02 47 7D */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_801FAF74:
/* 801FAF74  4B FF F0 25 */	bl dMw_DOWN_TRIGGER__Fv
/* 801FAF78  2C 03 00 00 */	cmpwi r3, 0
/* 801FAF7C  41 82 00 1C */	beq lbl_801FAF98
/* 801FAF80  38 00 00 01 */	li r0, 1
/* 801FAF84  98 1D 01 4B */	stb r0, 0x14b(r29)
/* 801FAF88  7F A3 EB 78 */	mr r3, r29
/* 801FAF8C  38 80 00 02 */	li r4, 2
/* 801FAF90  48 00 0F 05 */	bl dMw_ring_create__5dMw_cFUc
/* 801FAF94  48 00 00 18 */	b lbl_801FAFAC
lbl_801FAF98:
/* 801FAF98  38 00 00 02 */	li r0, 2
/* 801FAF9C  98 1D 01 4B */	stb r0, 0x14b(r29)
/* 801FAFA0  7F A3 EB 78 */	mr r3, r29
/* 801FAFA4  38 80 00 00 */	li r4, 0
/* 801FAFA8  48 00 0E ED */	bl dMw_ring_create__5dMw_cFUc
lbl_801FAFAC:
/* 801FAFAC  38 00 00 01 */	li r0, 1
/* 801FAFB0  98 1D 01 46 */	stb r0, 0x146(r29)
/* 801FAFB4  38 00 00 00 */	li r0, 0
/* 801FAFB8  98 1D 01 4B */	stb r0, 0x14b(r29)
/* 801FAFBC  38 60 00 01 */	li r3, 1
/* 801FAFC0  4B E3 31 21 */	bl dComIfGp_setHeapLockFlag__FUc
lbl_801FAFC4:
/* 801FAFC4  39 61 00 20 */	addi r11, r1, 0x20
/* 801FAFC8  48 16 72 61 */	bl _restgpr_29
/* 801FAFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FAFD0  7C 08 03 A6 */	mtlr r0
/* 801FAFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 801FAFD8  4E 80 00 20 */	blr 
