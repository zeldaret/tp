lbl_8083FEB4:
/* 8083FEB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083FEB8  7C 08 02 A6 */	mflr r0
/* 8083FEBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083FEC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8083FEC4  4B B2 23 05 */	bl _savegpr_24
/* 8083FEC8  7C 7A 1B 78 */	mr r26, r3
/* 8083FECC  7C 9B 23 78 */	mr r27, r4
/* 8083FED0  4B FF FA DD */	bl setReinPosMoveInit__9daHorse_cFi
/* 8083FED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083FED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083FEDC  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 8083FEE0  A8 1A 17 12 */	lha r0, 0x1712(r26)
/* 8083FEE4  7C 00 00 D0 */	neg r0, r0
/* 8083FEE8  1C 00 00 05 */	mulli r0, r0, 5
/* 8083FEEC  7C 00 6E 70 */	srawi r0, r0, 0xd
/* 8083FEF0  7C 60 01 94 */	addze r3, r0
/* 8083FEF4  2C 1B 00 03 */	cmpwi r27, 3
/* 8083FEF8  41 82 00 08 */	beq lbl_8083FF00
/* 8083FEFC  54 63 08 3C */	slwi r3, r3, 1
lbl_8083FF00:
/* 8083FF00  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 8083FF04  38 03 00 18 */	addi r0, r3, 0x18
/* 8083FF08  41 82 00 08 */	beq lbl_8083FF10
/* 8083FF0C  38 03 00 14 */	addi r0, r3, 0x14
lbl_8083FF10:
/* 8083FF10  7C 1C 03 78 */	mr r28, r0
/* 8083FF14  57 60 07 BD */	rlwinm. r0, r27, 0, 0x1e, 0x1e
/* 8083FF18  23 E3 00 18 */	subfic r31, r3, 0x18
/* 8083FF1C  41 82 00 08 */	beq lbl_8083FF24
/* 8083FF20  23 E3 00 14 */	subfic r31, r3, 0x14
lbl_8083FF24:
/* 8083FF24  57 7D 07 7B */	rlwinm. r29, r27, 0, 0x1d, 0x1d
/* 8083FF28  41 82 00 5C */	beq lbl_8083FF84
/* 8083FF2C  83 3A 12 58 */	lwz r25, 0x1258(r26)
/* 8083FF30  80 79 05 70 */	lwz r3, 0x570(r25)
/* 8083FF34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083FF38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083FF3C  38 63 04 50 */	addi r3, r3, 0x450
/* 8083FF40  3C 80 80 84 */	lis r4, zeldaLocalLeft@ha /* 0x80845770@ha */
/* 8083FF44  38 84 57 70 */	addi r4, r4, zeldaLocalLeft@l /* 0x80845770@l */
/* 8083FF48  80 BA 11 50 */	lwz r5, 0x1150(r26)
/* 8083FF4C  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 8083FF50  7C A5 02 14 */	add r5, r5, r0
/* 8083FF54  4B B0 6E 19 */	bl PSMTXMultVec
/* 8083FF58  80 79 05 70 */	lwz r3, 0x570(r25)
/* 8083FF5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083FF60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083FF64  38 63 04 50 */	addi r3, r3, 0x450
/* 8083FF68  3C 80 80 84 */	lis r4, zeldaLocalRight@ha /* 0x8084577C@ha */
/* 8083FF6C  38 84 57 7C */	addi r4, r4, zeldaLocalRight@l /* 0x8084577C@l */
/* 8083FF70  80 BA 11 78 */	lwz r5, 0x1178(r26)
/* 8083FF74  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8083FF78  7C A5 02 14 */	add r5, r5, r0
/* 8083FF7C  4B B0 6D F1 */	bl PSMTXMultVec
/* 8083FF80  48 00 00 24 */	b lbl_8083FFA4
lbl_8083FF84:
/* 8083FF84  7F C3 F3 78 */	mr r3, r30
/* 8083FF88  80 9A 11 50 */	lwz r4, 0x1150(r26)
/* 8083FF8C  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 8083FF90  7C 84 02 14 */	add r4, r4, r0
/* 8083FF94  80 BA 11 78 */	lwz r5, 0x1178(r26)
/* 8083FF98  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8083FF9C  7C A5 02 14 */	add r5, r5, r0
/* 8083FFA0  4B 8A D1 35 */	bl getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz
lbl_8083FFA4:
/* 8083FFA4  38 7A 11 50 */	addi r3, r26, 0x1150
/* 8083FFA8  7F 84 E3 78 */	mr r4, r28
/* 8083FFAC  4B FF 83 FD */	bl setReinPosPart__13daHorseRein_cFi
/* 8083FFB0  38 7A 11 78 */	addi r3, r26, 0x1178
/* 8083FFB4  7F E4 FB 78 */	mr r4, r31
/* 8083FFB8  4B FF 83 F1 */	bl setReinPosPart__13daHorseRein_cFi
/* 8083FFBC  2C 1D 00 00 */	cmpwi r29, 0
/* 8083FFC0  41 82 00 14 */	beq lbl_8083FFD4
/* 8083FFC4  38 7A 11 A0 */	addi r3, r26, 0x11a0
/* 8083FFC8  38 80 00 00 */	li r4, 0
/* 8083FFCC  4B FF 83 DD */	bl setReinPosPart__13daHorseRein_cFi
/* 8083FFD0  48 00 01 1C */	b lbl_808400EC
lbl_8083FFD4:
/* 8083FFD4  83 3A 11 A0 */	lwz r25, 0x11a0(r26)
/* 8083FFD8  7F C3 F3 78 */	mr r3, r30
/* 8083FFDC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8083FFE0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8083FFE4  7D 89 03 A6 */	mtctr r12
/* 8083FFE8  4E 80 04 21 */	bctrl 
/* 8083FFEC  3C 80 80 39 */	lis r4, m_handLeftInSidePos__9daAlink_c@ha /* 0x80391900@ha */
/* 8083FFF0  38 84 19 00 */	addi r4, r4, m_handLeftInSidePos__9daAlink_c@l /* 0x80391900@l */
/* 8083FFF4  7F 25 CB 78 */	mr r5, r25
/* 8083FFF8  4B B0 6D 75 */	bl PSMTXMultVec
/* 8083FFFC  2C 1B 00 03 */	cmpwi r27, 3
/* 80840000  40 82 00 38 */	bne lbl_80840038
/* 80840004  7F C3 F3 78 */	mr r3, r30
/* 80840008  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8084000C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80840010  7D 89 03 A6 */	mtctr r12
/* 80840014  4E 80 04 21 */	bctrl 
/* 80840018  3C 80 80 39 */	lis r4, m_handRightInSidePos__9daAlink_c@ha /* 0x8039190C@ha */
/* 8084001C  38 84 19 0C */	addi r4, r4, m_handRightInSidePos__9daAlink_c@l /* 0x8039190C@l */
/* 80840020  38 B9 00 30 */	addi r5, r25, 0x30
/* 80840024  4B B0 6D 49 */	bl PSMTXMultVec
/* 80840028  38 7A 11 A0 */	addi r3, r26, 0x11a0
/* 8084002C  38 80 00 04 */	li r4, 4
/* 80840030  4B FF 83 79 */	bl setReinPosPart__13daHorseRein_cFi
/* 80840034  48 00 00 10 */	b lbl_80840044
lbl_80840038:
/* 80840038  38 7A 11 A0 */	addi r3, r26, 0x11a0
/* 8084003C  38 80 00 00 */	li r4, 0
/* 80840040  4B FF 83 69 */	bl setReinPosPart__13daHorseRein_cFi
lbl_80840044:
/* 80840044  80 1A 17 48 */	lwz r0, 0x1748(r26)
/* 80840048  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8084004C  41 82 00 A0 */	beq lbl_808400EC
/* 80840050  3B 00 00 00 */	li r24, 0
/* 80840054  3C 60 80 39 */	lis r3, m_handLeftInSidePos__9daAlink_c@ha /* 0x80391900@ha */
/* 80840058  3B A3 19 00 */	addi r29, r3, m_handLeftInSidePos__9daAlink_c@l /* 0x80391900@l */
lbl_8084005C:
/* 8084005C  38 7A 11 50 */	addi r3, r26, 0x1150
/* 80840060  7F 84 E3 78 */	mr r4, r28
/* 80840064  4B FF 83 45 */	bl setReinPosPart__13daHorseRein_cFi
/* 80840068  38 7A 11 78 */	addi r3, r26, 0x1178
/* 8084006C  7F E4 FB 78 */	mr r4, r31
/* 80840070  4B FF 83 39 */	bl setReinPosPart__13daHorseRein_cFi
/* 80840074  83 3A 11 A0 */	lwz r25, 0x11a0(r26)
/* 80840078  7F C3 F3 78 */	mr r3, r30
/* 8084007C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80840080  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80840084  7D 89 03 A6 */	mtctr r12
/* 80840088  4E 80 04 21 */	bctrl 
/* 8084008C  7F A4 EB 78 */	mr r4, r29
/* 80840090  7F 25 CB 78 */	mr r5, r25
/* 80840094  4B B0 6C D9 */	bl PSMTXMultVec
/* 80840098  2C 1B 00 03 */	cmpwi r27, 3
/* 8084009C  40 82 00 38 */	bne lbl_808400D4
/* 808400A0  7F C3 F3 78 */	mr r3, r30
/* 808400A4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 808400A8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 808400AC  7D 89 03 A6 */	mtctr r12
/* 808400B0  4E 80 04 21 */	bctrl 
/* 808400B4  3C 80 80 39 */	lis r4, m_handRightInSidePos__9daAlink_c@ha /* 0x8039190C@ha */
/* 808400B8  38 84 19 0C */	addi r4, r4, m_handRightInSidePos__9daAlink_c@l /* 0x8039190C@l */
/* 808400BC  38 B9 00 30 */	addi r5, r25, 0x30
/* 808400C0  4B B0 6C AD */	bl PSMTXMultVec
/* 808400C4  38 7A 11 A0 */	addi r3, r26, 0x11a0
/* 808400C8  38 80 00 04 */	li r4, 4
/* 808400CC  4B FF 82 DD */	bl setReinPosPart__13daHorseRein_cFi
/* 808400D0  48 00 00 10 */	b lbl_808400E0
lbl_808400D4:
/* 808400D4  38 7A 11 A0 */	addi r3, r26, 0x11a0
/* 808400D8  38 80 00 00 */	li r4, 0
/* 808400DC  4B FF 82 CD */	bl setReinPosPart__13daHorseRein_cFi
lbl_808400E0:
/* 808400E0  3B 18 00 01 */	addi r24, r24, 1
/* 808400E4  2C 18 00 05 */	cmpwi r24, 5
/* 808400E8  41 80 FF 74 */	blt lbl_8084005C
lbl_808400EC:
/* 808400EC  7F 43 D3 78 */	mr r3, r26
/* 808400F0  4B FF FC BD */	bl copyReinPos__9daHorse_cFv
/* 808400F4  39 61 00 30 */	addi r11, r1, 0x30
/* 808400F8  4B B2 21 1D */	bl _restgpr_24
/* 808400FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80840100  7C 08 03 A6 */	mtlr r0
/* 80840104  38 21 00 30 */	addi r1, r1, 0x30
/* 80840108  4E 80 00 20 */	blr 
